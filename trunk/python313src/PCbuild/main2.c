#include "Python.h"
#define PATH_MAX 1024

int Py_Main2(int argc, wchar_t **argv){
    PyObject *m, *d, *v;
    int set_file_name = 0, ret, len;

    char filename[PATH_MAX];
    size_t r = wcstombs(filename, argv[1], PATH_MAX);
    FILE* fp;
    if ((fp = fopen(filename, "rb")) == NULL) {
        fprintf(stderr, "python: Can't open .pyc file\n");
    }
    Py_Initialize();//<--->Py_Finalize();
    m = PyImport_AddModule("__main__");
    if (m == NULL)
        return -1;
    d = PyModule_GetDict(m);
    if (PyDict_GetItemString(d, "__file__") == NULL) {
        PyObject *f;
        f = PyUnicode_DecodeFSDefault(filename);
        if (f == NULL)
            return -1;
        if (PyDict_SetItemString(d, "__file__", f) < 0) {
            Py_DECREF(f);
            return -1;
        }
        //int set_file_name = 1;
        Py_DECREF(f);
    }
    v = run_pyc_file(fp, filename, d, d, NULL);
    flush_io();
    if (v == NULL) {
        PyErr_Print();
        ret = -1;
        goto done;
    }
    Py_DECREF(v);
    ret = 0;
done:
    if (set_file_name && PyDict_DelItemString(d, "__file__"))
        PyErr_Clear();
    Py_Finalize();
    return ret;
}