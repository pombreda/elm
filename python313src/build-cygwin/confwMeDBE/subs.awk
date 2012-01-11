BEGIN {
S["LTLIBOBJS"]=""
S["SRCDIRS"]="Parser Grammar Objects Python Modules Mac"
S["THREADHEADERS"]=" $(srcdir)/Python/thread_atheos.h $(srcdir)/Python/thread_cthread.h $(srcdir)/Python/thread_foobar.h $(srcdir)/Python/thread_lwp.h $(srcdir)/Python/"\
"thread_nt.h $(srcdir)/Python/thread_os2.h $(srcdir)/Python/thread_pth.h $(srcdir)/Python/thread_pthread.h $(srcdir)/Python/thread_sgi.h $(srcdir)/Py"\
"thon/thread_solaris.h $(srcdir)/Python/thread_wince.h"
S["LIBC"]=""
S["LIBM"]="-lm"
S["HAVE_GETHOSTBYNAME"]=""
S["HAVE_GETHOSTBYNAME_R"]=""
S["HAVE_GETHOSTBYNAME_R_3_ARG"]=""
S["HAVE_GETHOSTBYNAME_R_5_ARG"]=""
S["HAVE_GETHOSTBYNAME_R_6_ARG"]=""
S["LIBOBJS"]=""
S["TRUE"]="true"
S["MACHDEP_OBJS"]=""
S["DYNLOADFILE"]="dynload_shlib.o"
S["DLINCLDIR"]="."
S["THREADOBJ"]="Python/thread.o"
S["LDLAST"]=""
S["USE_THREAD_MODULE"]=""
S["SIGNAL_OBJS"]=""
S["USE_SIGNAL_MODULE"]=""
S["SHLIBS"]="$(LIBS)"
S["CFLAGSFORSHARED"]=""
S["LINKFORSHARED"]=""
S["CCSHARED"]=""
S["BLDSHARED"]="gcc -shared -Wl,--enable-auto-image-base"
S["LDSHARED"]="gcc -shared -Wl,--enable-auto-image-base"
S["SO"]=".dll"
S["LIBTOOL_CRUFT"]=""
S["OTHER_LIBTOOL_OPT"]=""
S["UNIVERSAL_ARCH_FLAGS"]=""
S["BASECFLAGS"]=""
S["OPT"]="-DNDEBUG -g -fwrapv -O3 -Wall -Wstrict-prototypes"
S["LN"]="ln -s"
S["INSTALL_DATA"]="${INSTALL} -m 644"
S["INSTALL_SCRIPT"]="${INSTALL}"
S["INSTALL_PROGRAM"]="${INSTALL}"
S["SVNVERSION"]="svnversion $(srcdir)"
S["ARFLAGS"]="rc"
S["AR"]="ar"
S["RANLIB"]="ranlib"
S["GNULD"]="yes"
S["LINKCC"]="$(PURIFY) $(MAINCC)"
S["RUNSHARED"]=""
S["INSTSONAME"]="$(LDLIBRARY)"
S["LDLIBRARYDIR"]=""
S["BLDLIBRARY"]="$(LDLIBRARY)"
S["DLLLIBRARY"]="libpython$(VERSION).dll"
S["LDLIBRARY"]="libpython$(VERSION).dll.a"
S["LIBRARY"]="libpython$(VERSION).a"
S["BUILDEXEEXT"]=".exe"
S["EGREP"]="/usr/bin/grep -E"
S["GREP"]="/usr/bin/grep"
S["CPP"]="gcc -E"
S["MAINCC"]="$(CC)"
S["CXX"]="g++"
S["OBJEXT"]="o"
S["EXEEXT"]=".exe"
S["ac_ct_CC"]="gcc"
S["CPPFLAGS"]=""
S["LDFLAGS"]=""
S["CFLAGS"]="-g -O2"
S["CC"]="gcc"
S["EXPORT_MACOSX_DEPLOYMENT_TARGET"]="#"
S["CONFIGURE_MACOSX_DEPLOYMENT_TARGET"]=""
S["SGI_ABI"]=""
S["MACHDEP"]="cygwin"
S["FRAMEWORKUNIXTOOLSPREFIX"]="/usr/local"
S["FRAMEWORKALTINSTALLLAST"]=""
S["FRAMEWORKALTINSTALLFIRST"]=""
S["FRAMEWORKINSTALLLAST"]=""
S["FRAMEWORKINSTALLFIRST"]=""
S["PYTHONFRAMEWORKINSTALLDIR"]=""
S["PYTHONFRAMEWORKPREFIX"]=""
S["PYTHONFRAMEWORKDIR"]="no-framework"
S["PYTHONFRAMEWORKIDENTIFIER"]="org.python.python"
S["PYTHONFRAMEWORK"]=""
S["LIPO_64BIT_FLAGS"]=""
S["LIPO_32BIT_FLAGS"]=""
S["ARCH_RUN_32BIT"]=""
S["UNIVERSALSDK"]=""
S["CONFIG_ARGS"]=" '--prefix=/usr/local'"
S["SOVERSION"]="1.0"
S["VERSION"]="3.1"
S["target_alias"]=""
S["host_alias"]=""
S["build_alias"]=""
S["LIBS"]="-lintl -ldl "
S["ECHO_T"]=""
S["ECHO_N"]="-n"
S["ECHO_C"]=""
S["DEFS"]="-DHAVE_CONFIG_H"
S["mandir"]="${datarootdir}/man"
S["localedir"]="${datarootdir}/locale"
S["libdir"]="${exec_prefix}/lib"
S["psdir"]="${docdir}"
S["pdfdir"]="${docdir}"
S["dvidir"]="${docdir}"
S["htmldir"]="${docdir}"
S["infodir"]="${datarootdir}/info"
S["docdir"]="${datarootdir}/doc/${PACKAGE_TARNAME}"
S["oldincludedir"]="/usr/include"
S["includedir"]="${prefix}/include"
S["localstatedir"]="${prefix}/var"
S["sharedstatedir"]="${prefix}/com"
S["sysconfdir"]="${prefix}/etc"
S["datadir"]="${datarootdir}"
S["datarootdir"]="${prefix}/share"
S["libexecdir"]="${exec_prefix}/libexec"
S["sbindir"]="${exec_prefix}/sbin"
S["bindir"]="${exec_prefix}/bin"
S["program_transform_name"]="s,x,x,"
S["prefix"]="/usr/local"
S["exec_prefix"]="${prefix}"
S["PACKAGE_URL"]=""
S["PACKAGE_BUGREPORT"]="http://bugs.python.org/"
S["PACKAGE_STRING"]="python 3.1"
S["PACKAGE_VERSION"]="3.1"
S["PACKAGE_TARNAME"]="python"
S["PACKAGE_NAME"]="python"
S["PATH_SEPARATOR"]=":"
S["SHELL"]="/bin/sh"
  for (key in S) S_is_set[key] = 1
  FS = ""

}
{
  line = $ 0
  nfields = split(line, field, "@")
  substed = 0
  len = length(field[1])
  for (i = 2; i < nfields; i++) {
    key = field[i]
    keylen = length(key)
    if (S_is_set[key]) {
      value = S[key]
      line = substr(line, 1, len) "" value "" substr(line, len + keylen + 3)
      len += length(value) + length(field[++i])
      substed = 1
    } else
      len += 1 + keylen
  }

  print line
}

