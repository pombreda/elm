%ifidn __OUTPUT_FORMAT__,obj
section	code	use32 class=code align=64
%elifidn __OUTPUT_FORMAT__,win32
$@feat.00 equ 1
section	.text	code align=64
%else
section	.text	code
%endif
global	_whirlpool_block_mmx
align	16
_whirlpool_block_mmx:
L$_whirlpool_block_mmx_begin:
	push	ebp
	push	ebx
	push	esi
	push	edi
	mov	esi,DWORD [20+esp]
	mov	edi,DWORD [24+esp]
	mov	ebp,DWORD [28+esp]
	mov	eax,esp
	sub	esp,148
	and	esp,-64
	lea	ebx,[128+esp]
	mov	DWORD [ebx],esi
	mov	DWORD [4+ebx],edi
	mov	DWORD [8+ebx],ebp
	mov	DWORD [16+ebx],eax
	call	L$000pic_point
L$000pic_point:
	pop	ebp
	lea	ebp,[(L$001table-L$000pic_point)+ebp]
	xor	ecx,ecx
	xor	edx,edx
	movq	mm0,[esi]
	movq	mm1,[8+esi]
	movq	mm2,[16+esi]
	movq	mm3,[24+esi]
	movq	mm4,[32+esi]
	movq	mm5,[40+esi]
	movq	mm6,[48+esi]
	movq	mm7,[56+esi]
L$002outerloop:
	movq	[esp],mm0
	movq	[8+esp],mm1
	movq	[16+esp],mm2
	movq	[24+esp],mm3
	movq	[32+esp],mm4
	movq	[40+esp],mm5
	movq	[48+esp],mm6
	movq	[56+esp],mm7
	pxor	mm0,[edi]
	pxor	mm1,[8+edi]
	pxor	mm2,[16+edi]
	pxor	mm3,[24+edi]
	pxor	mm4,[32+edi]
	pxor	mm5,[40+edi]
	pxor	mm6,[48+edi]
	pxor	mm7,[56+edi]
	movq	[64+esp],mm0
	movq	[72+esp],mm1
	movq	[80+esp],mm2
	movq	[88+esp],mm3
	movq	[96+esp],mm4
	movq	[104+esp],mm5
	movq	[112+esp],mm6
	movq	[120+esp],mm7
	xor	esi,esi
	mov	DWORD [12+ebx],esi
align	16
L$003round:
	movq	mm0,[4096+esi*8+ebp]
	mov	eax,DWORD [esp]
	mov	ebx,DWORD [4+esp]
	mov	cl,al
	mov	dl,ah
	lea	esi,[ecx*1+ecx]
	lea	edi,[edx*1+edx]
	shr	eax,16
	pxor	mm0,[esi*8+ebp]
	movq	mm1,[7+edi*8+ebp]
	mov	cl,al
	mov	dl,ah
	mov	eax,DWORD [8+esp]
	lea	esi,[ecx*1+ecx]
	lea	edi,[edx*1+edx]
	movq	mm2,[6+esi*8+ebp]
	movq	mm3,[5+edi*8+ebp]
	mov	cl,bl
	mov	dl,bh
	lea	esi,[ecx*1+ecx]
	lea	edi,[edx*1+edx]
	shr	ebx,16
	movq	mm4,[4+esi*8+ebp]
	movq	mm5,[3+edi*8+ebp]
	mov	cl,bl
	mov	dl,bh
	mov	ebx,DWORD [12+esp]
	lea	esi,[ecx*1+ecx]
	lea	edi,[edx*1+edx]
	movq	mm6,[2+esi*8+ebp]
	movq	mm7,[1+edi*8+ebp]
	mov	cl,al
	mov	dl,ah
	lea	esi,[ecx*1+ecx]
	lea	edi,[edx*1+edx]
	shr	eax,16
	pxor	mm1,[esi*8+ebp]
	pxor	mm2,[7+edi*8+ebp]
	mov	cl,al
	mov	dl,ah
	mov	eax,DWORD [16+esp]
	lea	esi,[ecx*1+ecx]
	lea	edi,[edx*1+edx]
	pxor	mm3,[6+esi*8+ebp]
	pxor	mm4,[5+edi*8+ebp]
	mov	cl,bl
	mov	dl,bh
	lea	esi,[ecx*1+ecx]
	lea	edi,[edx*1+edx]
	shr	ebx,16
	pxor	mm5,[4+esi*8+ebp]
	pxor	mm6,[3+edi*8+ebp]
	mov	cl,bl
	mov	dl,bh
	mov	ebx,DWORD [20+esp]
	lea	esi,[ecx*1+ecx]
	lea	edi,[edx*1+edx]
	pxor	mm7,[2+esi*8+ebp]
	pxor	mm0,[1+edi*8+ebp]
	mov	cl,al
	mov	dl,ah
	lea	esi,[ecx*1+ecx]
	lea	edi,[edx*1+edx]
	shr	eax,16
	pxor	mm2,[esi*8+ebp]
	pxor	mm3,[7+edi*8+ebp]
	mov	cl,al
	mov	dl,ah
	mov	eax,DWORD [24+esp]
	lea	esi,[ecx*1+ecx]
	lea	edi,[edx*1+edx]
	pxor	mm4,[6+esi*8+ebp]
	pxor	mm5,[5+edi*8+ebp]
	mov	cl,bl
	mov	dl,bh
	lea	esi,[ecx*1+ecx]
	lea	edi,[edx*1+edx]
	shr	ebx,16
	pxor	mm6,[4+esi*8+ebp]
	pxor	mm7,[3+edi*8+ebp]
	mov	cl,bl
	mov	dl,bh
	mov	ebx,DWORD [28+esp]
	lea	esi,[ecx*1+ecx]
	lea	edi,[edx*1+edx]
	pxor	mm0,[2+esi*8+ebp]
	pxor	mm1,[1+edi*8+ebp]
	mov	cl,al
	mov	dl,ah
	lea	esi,[ecx*1+ecx]
	lea	edi,[edx*1+edx]
	shr	eax,16
	pxor	mm3,[esi*8+ebp]
	pxor	mm4,[7+edi*8+ebp]
	mov	cl,al
	mov	dl,ah
	mov	eax,DWORD [32+esp]
	lea	esi,[ecx*1+ecx]
	lea	edi,[edx*1+edx]
	pxor	mm5,[6+esi*8+ebp]
	pxor	mm6,[5+edi*8+ebp]
	mov	cl,bl
	mov	dl,bh
	lea	esi,[ecx*1+ecx]
	lea	edi,[edx*1+edx]
	shr	ebx,16
	pxor	mm7,[4+esi*8+ebp]
	pxor	mm0,[3+edi*8+ebp]
	mov	cl,bl
	mov	dl,bh
	mov	ebx,DWORD [36+esp]
	lea	esi,[ecx*1+ecx]
	lea	edi,[edx*1+edx]
	pxor	mm1,[2+esi*8+ebp]
	pxor	mm2,[1+edi*8+ebp]
	mov	cl,al
	mov	dl,ah
	lea	esi,[ecx*1+ecx]
	lea	edi,[edx*1+edx]
	shr	eax,16
	pxor	mm4,[esi*8+ebp]
	pxor	mm5,[7+edi*8+ebp]
	mov	cl,al
	mov	dl,ah
	mov	eax,DWORD [40+esp]
	lea	esi,[ecx*1+ecx]
	lea	edi,[edx*1+edx]
	pxor	mm6,[6+esi*8+ebp]
	pxor	mm7,[5+edi*8+ebp]
	mov	cl,bl
	mov	dl,bh
	lea	esi,[ecx*1+ecx]
	lea	edi,[edx*1+edx]
	shr	ebx,16
	pxor	mm0,[4+esi*8+ebp]
	pxor	mm1,[3+edi*8+ebp]
	mov	cl,bl
	mov	dl,bh
	mov	ebx,DWORD [44+esp]
	lea	esi,[ecx*1+ecx]
	lea	edi,[edx*1+edx]
	pxor	mm2,[2+esi*8+ebp]
	pxor	mm3,[1+edi*8+ebp]
	mov	cl,al
	mov	dl,ah
	lea	esi,[ecx*1+ecx]
	lea	edi,[edx*1+edx]
	shr	eax,16
	pxor	mm5,[esi*8+ebp]
	pxor	mm6,[7+edi*8+ebp]
	mov	cl,al
	mov	dl,ah
	mov	eax,DWORD [48+esp]
	lea	esi,[ecx*1+ecx]
	lea	edi,[edx*1+edx]
	pxor	mm7,[6+esi*8+ebp]
	pxor	mm0,[5+edi*8+ebp]
	mov	cl,bl
	mov	dl,bh
	lea	esi,[ecx*1+ecx]
	lea	edi,[edx*1+edx]
	shr	ebx,16
	pxor	mm1,[4+esi*8+ebp]
	pxor	mm2,[3+edi*8+ebp]
	mov	cl,bl
	mov	dl,bh
	mov	ebx,DWORD [52+esp]
	lea	esi,[ecx*1+ecx]
	lea	edi,[edx*1+edx]
	pxor	mm3,[2+esi*8+ebp]
	pxor	mm4,[1+edi*8+ebp]
	mov	cl,al
	mov	dl,ah
	lea	esi,[ecx*1+ecx]
	lea	edi,[edx*1+edx]
	shr	eax,16
	pxor	mm6,[esi*8+ebp]
	pxor	mm7,[7+edi*8+ebp]
	mov	cl,al
	mov	dl,ah
	mov	eax,DWORD [56+esp]
	lea	esi,[ecx*1+ecx]
	lea	edi,[edx*1+edx]
	pxor	mm0,[6+esi*8+ebp]
	pxor	mm1,[5+edi*8+ebp]
	mov	cl,bl
	mov	dl,bh
	lea	esi,[ecx*1+ecx]
	lea	edi,[edx*1+edx]
	shr	ebx,16
	pxor	mm2,[4+esi*8+ebp]
	pxor	mm3,[3+edi*8+ebp]
	mov	cl,bl
	mov	dl,bh
	mov	ebx,DWORD [60+esp]
	lea	esi,[ecx*1+ecx]
	lea	edi,[edx*1+edx]
	pxor	mm4,[2+esi*8+ebp]
	pxor	mm5,[1+edi*8+ebp]
	mov	cl,al
	mov	dl,ah
	lea	esi,[ecx*1+ecx]
	lea	edi,[edx*1+edx]
	shr	eax,16
	pxor	mm7,[esi*8+ebp]
	pxor	mm0,[7+edi*8+ebp]
	mov	cl,al
	mov	dl,ah
	mov	eax,DWORD [64+esp]
	lea	esi,[ecx*1+ecx]
	lea	edi,[edx*1+edx]
	pxor	mm1,[6+esi*8+ebp]
	pxor	mm2,[5+edi*8+ebp]
	mov	cl,bl
	mov	dl,bh
	lea	esi,[ecx*1+ecx]
	lea	edi,[edx*1+edx]
	shr	ebx,16
	pxor	mm3,[4+esi*8+ebp]
	pxor	mm4,[3+edi*8+ebp]
	mov	cl,bl
	mov	dl,bh
	mov	ebx,DWORD [68+esp]
	lea	esi,[ecx*1+ecx]
	lea	edi,[edx*1+edx]
	pxor	mm5,[2+esi*8+ebp]
	pxor	mm6,[1+edi*8+ebp]
	movq	[esp],mm0
	movq	[8+esp],mm1
	movq	[16+esp],mm2
	movq	[24+esp],mm3
	movq	[32+esp],mm4
	movq	[40+esp],mm5
	movq	[48+esp],mm6
	movq	[56+esp],mm7
	mov	cl,al
	mov	dl,ah
	lea	esi,[ecx*1+ecx]
	lea	edi,[edx*1+edx]
	shr	eax,16
	pxor	mm0,[esi*8+ebp]
	pxor	mm1,[7+edi*8+ebp]
	mov	cl,al
	mov	dl,ah
	mov	eax,DWORD [72+esp]
	lea	esi,[ecx*1+ecx]
	lea	edi,[edx*1+edx]
	pxor	mm2,[6+esi*8+ebp]
	pxor	mm3,[5+edi*8+ebp]
	mov	cl,bl
	mov	dl,bh
	lea	esi,[ecx*1+ecx]
	lea	edi,[edx*1+edx]
	shr	ebx,16
	pxor	mm4,[4+esi*8+ebp]
	pxor	mm5,[3+edi*8+ebp]
	mov	cl,bl
	mov	dl,bh
	mov	ebx,DWORD [76+esp]
	lea	esi,[ecx*1+ecx]
	lea	edi,[edx*1+edx]
	pxor	mm6,[2+esi*8+ebp]
	pxor	mm7,[1+edi*8+ebp]
	mov	cl,al
	mov	dl,ah
	lea	esi,[ecx*1+ecx]
	lea	edi,[edx*1+edx]
	shr	eax,16
	pxor	mm1,[esi*8+ebp]
	pxor	mm2,[7+edi*8+ebp]
	mov	cl,al
	mov	dl,ah
	mov	eax,DWORD [80+esp]
	lea	esi,[ecx*1+ecx]
	lea	edi,[edx*1+edx]
	pxor	mm3,[6+esi*8+ebp]
	pxor	mm4,[5+edi*8+ebp]
	mov	cl,bl
	mov	dl,bh
	lea	esi,[ecx*1+ecx]
	lea	edi,[edx*1+edx]
	shr	ebx,16
	pxor	mm5,[4+esi*8+ebp]
	pxor	mm6,[3+edi*8+ebp]
	mov	cl,bl
	mov	dl,bh
	mov	ebx,DWORD [84+esp]
	lea	esi,[ecx*1+ecx]
	lea	edi,[edx*1+edx]
	pxor	mm7,[2+esi*8+ebp]
	pxor	mm0,[1+edi*8+ebp]
	mov	cl,al
	mov	dl,ah
	lea	esi,[ecx*1+ecx]
	lea	edi,[edx*1+edx]
	shr	eax,16
	pxor	mm2,[esi*8+ebp]
	pxor	mm3,[7+edi*8+ebp]
	mov	cl,al
	mov	dl,ah
	mov	eax,DWORD [88+esp]
	lea	esi,[ecx*1+ecx]
	lea	edi,[edx*1+edx]
	pxor	mm4,[6+esi*8+ebp]
	pxor	mm5,[5+edi*8+ebp]
	mov	cl,bl
	mov	dl,bh
	lea	esi,[ecx*1+ecx]
	lea	edi,[edx*1+edx]
	shr	ebx,16
	pxor	mm6,[4+esi*8+ebp]
	pxor	mm7,[3+edi*8+ebp]
	mov	cl,bl
	mov	dl,bh
	mov	ebx,DWORD [92+esp]
	lea	esi,[ecx*1+ecx]
	lea	edi,[edx*1+edx]
	pxor	mm0,[2+esi*8+ebp]
	pxor	mm1,[1+edi*8+ebp]
	mov	cl,al
	mov	dl,ah
	lea	esi,[ecx*1+ecx]
	lea	edi,[edx*1+edx]
	shr	eax,16
	pxor	mm3,[esi*8+ebp]
	pxor	mm4,[7+edi*8+ebp]
	mov	cl,al
	mov	dl,ah
	mov	eax,DWORD [96+esp]
	lea	esi,[ecx*1+ecx]
	lea	edi,[edx*1+edx]
	pxor	mm5,[6+esi*8+ebp]
	pxor	mm6,[5+edi*8+ebp]
	mov	cl,bl
	mov	dl,bh
	lea	esi,[ecx*1+ecx]
	lea	edi,[edx*1+edx]
	shr	ebx,16
	pxor	mm7,[4+esi*8+ebp]
	pxor	mm0,[3+edi*8+ebp]
	mov	cl,bl
	mov	dl,bh
	mov	ebx,DWORD [100+esp]
	lea	esi,[ecx*1+ecx]
	lea	edi,[edx*1+edx]
	pxor	mm1,[2+esi*8+ebp]
	pxor	mm2,[1+edi*8+ebp]
	mov	cl,al
	mov	dl,ah
	lea	esi,[ecx*1+ecx]
	lea	edi,[edx*1+edx]
	shr	eax,16
	pxor	mm4,[esi*8+ebp]
	pxor	mm5,[7+edi*8+ebp]
	mov	cl,al
	mov	dl,ah
	mov	eax,DWORD [104+esp]
	lea	esi,[ecx*1+ecx]
	lea	edi,[edx*1+edx]
	pxor	mm6,[6+esi*8+ebp]
	pxor	mm7,[5+edi*8+ebp]
	mov	cl,bl
	mov	dl,bh
	lea	esi,[ecx*1+ecx]
	lea	edi,[edx*1+edx]
	shr	ebx,16
	pxor	mm0,[4+esi*8+ebp]
	pxor	mm1,[3+edi*8+ebp]
	mov	cl,bl
	mov	dl,bh
	mov	ebx,DWORD [108+esp]
	lea	esi,[ecx*1+ecx]
	lea	edi,[edx*1+edx]
	pxor	mm2,[2+esi*8+ebp]
	pxor	mm3,[1+edi*8+ebp]
	mov	cl,al
	mov	dl,ah
	lea	esi,[ecx*1+ecx]
	lea	edi,[edx*1+edx]
	shr	eax,16
	pxor	mm5,[esi*8+ebp]
	pxor	mm6,[7+edi*8+ebp]
	mov	cl,al
	mov	dl,ah
	mov	eax,DWORD [112+esp]
	lea	esi,[ecx*1+ecx]
	lea	edi,[edx*1+edx]
	pxor	mm7,[6+esi*8+ebp]
	pxor	mm0,[5+edi*8+ebp]
	mov	cl,bl
	mov	dl,bh
	lea	esi,[ecx*1+ecx]
	lea	edi,[edx*1+edx]
	shr	ebx,16
	pxor	mm1,[4+esi*8+ebp]
	pxor	mm2,[3+edi*8+ebp]
	mov	cl,bl
	mov	dl,bh
	mov	ebx,DWORD [116+esp]
	lea	esi,[ecx*1+ecx]
	lea	edi,[edx*1+edx]
	pxor	mm3,[2+esi*8+ebp]
	pxor	mm4,[1+edi*8+ebp]
	mov	cl,al
	mov	dl,ah
	lea	esi,[ecx*1+ecx]
	lea	edi,[edx*1+edx]
	shr	eax,16
	pxor	mm6,[esi*8+ebp]
	pxor	mm7,[7+edi*8+ebp]
	mov	cl,al
	mov	dl,ah
	mov	eax,DWORD [120+esp]
	lea	esi,[ecx*1+ecx]
	lea	edi,[edx*1+edx]
	pxor	mm0,[6+esi*8+ebp]
	pxor	mm1,[5+edi*8+ebp]
	mov	cl,bl
	mov	dl,bh
	lea	esi,[ecx*1+ecx]
	lea	edi,[edx*1+edx]
	shr	ebx,16
	pxor	mm2,[4+esi*8+ebp]
	pxor	mm3,[3+edi*8+ebp]
	mov	cl,bl
	mov	dl,bh
	mov	ebx,DWORD [124+esp]
	lea	esi,[ecx*1+ecx]
	lea	edi,[edx*1+edx]
	pxor	mm4,[2+esi*8+ebp]
	pxor	mm5,[1+edi*8+ebp]
	mov	cl,al
	mov	dl,ah
	lea	esi,[ecx*1+ecx]
	lea	edi,[edx*1+edx]
	shr	eax,16
	pxor	mm7,[esi*8+ebp]
	pxor	mm0,[7+edi*8+ebp]
	mov	cl,al
	mov	dl,ah
	lea	esi,[ecx*1+ecx]
	lea	edi,[edx*1+edx]
	pxor	mm1,[6+esi*8+ebp]
	pxor	mm2,[5+edi*8+ebp]
	mov	cl,bl
	mov	dl,bh
	lea	esi,[ecx*1+ecx]
	lea	edi,[edx*1+edx]
	shr	ebx,16
	pxor	mm3,[4+esi*8+ebp]
	pxor	mm4,[3+edi*8+ebp]
	mov	cl,bl
	mov	dl,bh
	lea	esi,[ecx*1+ecx]
	lea	edi,[edx*1+edx]
	pxor	mm5,[2+esi*8+ebp]
	pxor	mm6,[1+edi*8+ebp]
	lea	ebx,[128+esp]
	mov	esi,DWORD [12+ebx]
	add	esi,1
	cmp	esi,10
	je	NEAR L$004roundsdone
	mov	DWORD [12+ebx],esi
	movq	[64+esp],mm0
	movq	[72+esp],mm1
	movq	[80+esp],mm2
	movq	[88+esp],mm3
	movq	[96+esp],mm4
	movq	[104+esp],mm5
	movq	[112+esp],mm6
	movq	[120+esp],mm7
	jmp	NEAR L$003round
align	16
L$004roundsdone:
	mov	esi,DWORD [ebx]
	mov	edi,DWORD [4+ebx]
	mov	eax,DWORD [8+ebx]
	pxor	mm0,[edi]
	pxor	mm1,[8+edi]
	pxor	mm2,[16+edi]
	pxor	mm3,[24+edi]
	pxor	mm4,[32+edi]
	pxor	mm5,[40+edi]
	pxor	mm6,[48+edi]
	pxor	mm7,[56+edi]
	pxor	mm0,[esi]
	pxor	mm1,[8+esi]
	pxor	mm2,[16+esi]
	pxor	mm3,[24+esi]
	pxor	mm4,[32+esi]
	pxor	mm5,[40+esi]
	pxor	mm6,[48+esi]
	pxor	mm7,[56+esi]
	movq	[esi],mm0
	movq	[8+esi],mm1
	movq	[16+esi],mm2
	movq	[24+esi],mm3
	movq	[32+esi],mm4
	movq	[40+esi],mm5
	movq	[48+esi],mm6
	movq	[56+esi],mm7
	lea	edi,[64+edi]
	sub	eax,1
	jz	NEAR L$005alldone
	mov	DWORD [4+ebx],edi
	mov	DWORD [8+ebx],eax
	jmp	NEAR L$002outerloop
L$005alldone:
	emms
	mov	esp,DWORD [16+ebx]
	pop	edi
	pop	esi
	pop	ebx
	pop	ebp
	ret
align	64
L$001table:
db	24,24,96,24,192,120,48,216
db	24,24,96,24,192,120,48,216
db	35,35,140,35,5,175,70,38
db	35,35,140,35,5,175,70,38
db	198,198,63,198,126,249,145,184
db	198,198,63,198,126,249,145,184
db	232,232,135,232,19,111,205,251
db	232,232,135,232,19,111,205,251
db	135,135,38,135,76,161,19,203
db	135,135,38,135,76,161,19,203
db	184,184,218,184,169,98,109,17
db	184,184,218,184,169,98,109,17
db	1,1,4,1,8,5,2,9
db	1,1,4,1,8,5,2,9
db	79,79,33,79,66,110,158,13
db	79,79,33,79,66,110,158,13
db	54,54,216,54,173,238,108,155
db	54,54,216,54,173,238,108,155
db	166,166,162,166,89,4,81,255
db	166,166,162,166,89,4,81,255
db	210,210,111,210,222,189,185,12
db	210,210,111,210,222,189,185,12
db	245,245,243,245,251,6,247,14
db	245,245,243,245,251,6,247,14
db	121,121,249,121,239,128,242,150
db	121,121,249,121,239,128,242,150
db	111,111,161,111,95,206,222,48
db	111,111,161,111,95,206,222,48
db	145,145,126,145,252,239,63,109
db	145,145,126,145,252,239,63,109
db	82,82,85,82,170,7,164,248
db	82,82,85,82,170,7,164,248
db	96,96,157,96,39,253,192,71
db	96,96,157,96,39,253,192,71
db	188,188,202,188,137,118,101,53
db	188,188,202,188,137,118,101,53
db	155,155,86,155,172,205,43,55
db	155,155,86,155,172,205,43,55
db	142,142,2,142,4,140,1,138
db	142,142,2,142,4,140,1,138
db	163,163,182,163,113,21,91,210
db	163,163,182,163,113,21,91,210
db	12,12,48,12,96,60,24,108
db	12,12,48,12,96,60,24,108
db	123,123,241,123,255,138,246,132
db	123,123,241,123,255,138,246,132
db	53,53,212,53,181,225,106,128
db	53,53,212,53,181,225,106,128
db	29,29,116,29,232,105,58,245
db	29,29,116,29,232,105,58,245
db	224,224,167,224,83,71,221,179
db	224,224,167,224,83,71,221,179
db	215,215,123,215,246,172,179,33
db	215,215,123,215,246,172,179,33
db	194,194,47,194,94,237,153,156
db	194,194,47,194,94,237,153,156
db	46,46,184,46,109,150,92,67
db	46,46,184,46,109,150,92,67
db	75,75,49,75,98,122,150,41
db	75,75,49,75,98,122,150,41
db	254,254,223,254,163,33,225,93
db	254,254,223,254,163,33,225,93
db	87,87,65,87,130,22,174,213
db	87,87,65,87,130,22,174,213
db	21,21,84,21,168,65,42,189
db	21,21,84,21,168,65,42,189
db	119,119,193,119,159,182,238,232
db	119,119,193,119,159,182,238,232
db	55,55,220,55,165,235,110,146
db	55,55,220,55,165,235,110,146
db	229,229,179,229,123,86,215,158
db	229,229,179,229,123,86,215,158
db	159,159,70,159,140,217,35,19
db	159,159,70,159,140,217,35,19
db	240,240,231,240,211,23,253,35
db	240,240,231,240,211,23,253,35
db	74,74,53,74,106,127,148,32
db	74,74,53,74,106,127,148,32
db	218,218,79,218,158,149,169,68
db	218,218,79,218,158,149,169,68
db	88,88,125,88,250,37,176,162
db	88,88,125,88,250,37,176,162
db	201,201,3,201,6,202,143,207
db	201,201,3,201,6,202,143,207
db	41,41,164,41,85,141,82,124
db	41,41,164,41,85,141,82,124
db	10,10,40,10,80,34,20,90
db	10,10,40,10,80,34,20,90
db	177,177,254,177,225,79,127,80
db	177,177,254,177,225,79,127,80
db	160,160,186,160,105,26,93,201
db	160,160,186,160,105,26,93,201
db	107,107,177,107,127,218,214,20
db	107,107,177,107,127,218,214,20
db	133,133,46,133,92,171,23,217
db	133,133,46,133,92,171,23,217
db	189,189,206,189,129,115,103,60
db	189,189,206,189,129,115,103,60
db	93,93,105,93,210,52,186,143
db	93,93,105,93,210,52,186,143
db	16,16,64,16,128,80,32,144
db	16,16,64,16,128,80,32,144
db	244,244,247,244,243,3,245,7
db	244,244,247,244,243,3,245,7
db	203,203,11,203,22,192,139,221
db	203,203,11,203,22,192,139,221
db	62,62,248,62,237,198,124,211
db	62,62,248,62,237,198,124,211
db	5,5,20,5,40,17,10,45
db	5,5,20,5,40,17,10,45
db	103,103,129,103,31,230,206,120
db	103,103,129,103,31,230,206,120
db	228,228,183,228,115,83,213,151
db	228,228,183,228,115,83,213,151
db	39,39,156,39,37,187,78,2
db	39,39,156,39,37,187,78,2
db	65,65,25,65,50,88,130,115
db	65,65,25,65,50,88,130,115
db	139,139,22,139,44,157,11,167
db	139,139,22,139,44,157,11,167
db	167,167,166,167,81,1,83,246
db	167,167,166,167,81,1,83,246
db	125,125,233,125,207,148,250,178
db	125,125,233,125,207,148,250,178
db	149,149,110,149,220,251,55,73
db	149,149,110,149,220,251,55,73
db	216,216,71,216,142,159,173,86
db	216,216,71,216,142,159,173,86
db	251,251,203,251,139,48,235,112
db	251,251,203,251,139,48,235,112
db	238,238,159,238,35,113,193,205
db	238,238,159,238,35,113,193,205
db	124,124,237,124,199,145,248,187
db	124,124,237,124,199,145,248,187
db	102,102,133,102,23,227,204,113
db	102,102,133,102,23,227,204,113
db	221,221,83,221,166,142,167,123
db	221,221,83,221,166,142,167,123
db	23,23,92,23,184,75,46,175
db	23,23,92,23,184,75,46,175
db	71,71,1,71,2,70,142,69
db	71,71,1,71,2,70,142,69
db	158,158,66,158,132,220,33,26
db	158,158,66,158,132,220,33,26
db	202,202,15,202,30,197,137,212
db	202,202,15,202,30,197,137,212
db	45,45,180,45,117,153,90,88
db	45,45,180,45,117,153,90,88
db	191,191,198,191,145,121,99,46
db	191,191,198,191,145,121,99,46
db	7,7,28,7,56,27,14,63
db	7,7,28,7,56,27,14,63
db	173,173,142,173,1,35,71,172
db	173,173,142,173,1,35,71,172
db	90,90,117,90,234,47,180,176
db	90,90,117,90,234,47,180,176
db	131,131,54,131,108,181,27,239
db	131,131,54,131,108,181,27,239
db	51,51,204,51,133,255,102,182
db	51,51,204,51,133,255,102,182
db	99,99,145,99,63,242,198,92
db	99,99,145,99,63,242,198,92
db	2,2,8,2,16,10,4,18
db	2,2,8,2,16,10,4,18
db	170,170,146,170,57,56,73,147
db	170,170,146,170,57,56,73,147
db	113,113,217,113,175,168,226,222
db	113,113,217,113,175,168,226,222
db	200,200,7,200,14,207,141,198
db	200,200,7,200,14,207,141,198
db	25,25,100,25,200,125,50,209
db	25,25,100,25,200,125,50,209
db	73,73,57,73,114,112,146,59
db	73,73,57,73,114,112,146,59
db	217,217,67,217,134,154,175,95
db	217,217,67,217,134,154,175,95
db	242,242,239,242,195,29,249,49
db	242,242,239,242,195,29,249,49
db	227,227,171,227,75,72,219,168
db	227,227,171,227,75,72,219,168
db	91,91,113,91,226,42,182,185
db	91,91,113,91,226,42,182,185
db	136,136,26,136,52,146,13,188
db	136,136,26,136,52,146,13,188
db	154,154,82,154,164,200,41,62
db	154,154,82,154,164,200,41,62
db	38,38,152,38,45,190,76,11
db	38,38,152,38,45,190,76,11
db	50,50,200,50,141,250,100,191
db	50,50,200,50,141,250,100,191
db	176,176,250,176,233,74,125,89
db	176,176,250,176,233,74,125,89
db	233,233,131,233,27,106,207,242
db	233,233,131,233,27,106,207,242
db	15,15,60,15,120,51,30,119
db	15,15,60,15,120,51,30,119
db	213,213,115,213,230,166,183,51
db	213,213,115,213,230,166,183,51
db	128,128,58,128,116,186,29,244
db	128,128,58,128,116,186,29,244
db	190,190,194,190,153,124,97,39
db	190,190,194,190,153,124,97,39
db	205,205,19,205,38,222,135,235
db	205,205,19,205,38,222,135,235
db	52,52,208,52,189,228,104,137
db	52,52,208,52,189,228,104,137
db	72,72,61,72,122,117,144,50
db	72,72,61,72,122,117,144,50
db	255,255,219,255,171,36,227,84
db	255,255,219,255,171,36,227,84
db	122,122,245,122,247,143,244,141
db	122,122,245,122,247,143,244,141
db	144,144,122,144,244,234,61,100
db	144,144,122,144,244,234,61,100
db	95,95,97,95,194,62,190,157
db	95,95,97,95,194,62,190,157
db	32,32,128,32,29,160,64,61
db	32,32,128,32,29,160,64,61
db	104,104,189,104,103,213,208,15
db	104,104,189,104,103,213,208,15
db	26,26,104,26,208,114,52,202
db	26,26,104,26,208,114,52,202
db	174,174,130,174,25,44,65,183
db	174,174,130,174,25,44,65,183
db	180,180,234,180,201,94,117,125
db	180,180,234,180,201,94,117,125
db	84,84,77,84,154,25,168,206
db	84,84,77,84,154,25,168,206
db	147,147,118,147,236,229,59,127
db	147,147,118,147,236,229,59,127
db	34,34,136,34,13,170,68,47
db	34,34,136,34,13,170,68,47
db	100,100,141,100,7,233,200,99
db	100,100,141,100,7,233,200,99
db	241,241,227,241,219,18,255,42
db	241,241,227,241,219,18,255,42
db	115,115,209,115,191,162,230,204
db	115,115,209,115,191,162,230,204
db	18,18,72,18,144,90,36,130
db	18,18,72,18,144,90,36,130
db	64,64,29,64,58,93,128,122
db	64,64,29,64,58,93,128,122
db	8,8,32,8,64,40,16,72
db	8,8,32,8,64,40,16,72
db	195,195,43,195,86,232,155,149
db	195,195,43,195,86,232,155,149
db	236,236,151,236,51,123,197,223
db	236,236,151,236,51,123,197,223
db	219,219,75,219,150,144,171,77
db	219,219,75,219,150,144,171,77
db	161,161,190,161,97,31,95,192
db	161,161,190,161,97,31,95,192
db	141,141,14,141,28,131,7,145
db	141,141,14,141,28,131,7,145
db	61,61,244,61,245,201,122,200
db	61,61,244,61,245,201,122,200
db	151,151,102,151,204,241,51,91
db	151,151,102,151,204,241,51,91
db	0,0,0,0,0,0,0,0
db	0,0,0,0,0,0,0,0
db	207,207,27,207,54,212,131,249
db	207,207,27,207,54,212,131,249
db	43,43,172,43,69,135,86,110
db	43,43,172,43,69,135,86,110
db	118,118,197,118,151,179,236,225
db	118,118,197,118,151,179,236,225
db	130,130,50,130,100,176,25,230
db	130,130,50,130,100,176,25,230
db	214,214,127,214,254,169,177,40
db	214,214,127,214,254,169,177,40
db	27,27,108,27,216,119,54,195
db	27,27,108,27,216,119,54,195
db	181,181,238,181,193,91,119,116
db	181,181,238,181,193,91,119,116
db	175,175,134,175,17,41,67,190
db	175,175,134,175,17,41,67,190
db	106,106,181,106,119,223,212,29
db	106,106,181,106,119,223,212,29
db	80,80,93,80,186,13,160,234
db	80,80,93,80,186,13,160,234
db	69,69,9,69,18,76,138,87
db	69,69,9,69,18,76,138,87
db	243,243,235,243,203,24,251,56
db	243,243,235,243,203,24,251,56
db	48,48,192,48,157,240,96,173
db	48,48,192,48,157,240,96,173
db	239,239,155,239,43,116,195,196
db	239,239,155,239,43,116,195,196
db	63,63,252,63,229,195,126,218
db	63,63,252,63,229,195,126,218
db	85,85,73,85,146,28,170,199
db	85,85,73,85,146,28,170,199
db	162,162,178,162,121,16,89,219
db	162,162,178,162,121,16,89,219
db	234,234,143,234,3,101,201,233
db	234,234,143,234,3,101,201,233
db	101,101,137,101,15,236,202,106
db	101,101,137,101,15,236,202,106
db	186,186,210,186,185,104,105,3
db	186,186,210,186,185,104,105,3
db	47,47,188,47,101,147,94,74
db	47,47,188,47,101,147,94,74
db	192,192,39,192,78,231,157,142
db	192,192,39,192,78,231,157,142
db	222,222,95,222,190,129,161,96
db	222,222,95,222,190,129,161,96
db	28,28,112,28,224,108,56,252
db	28,28,112,28,224,108,56,252
db	253,253,211,253,187,46,231,70
db	253,253,211,253,187,46,231,70
db	77,77,41,77,82,100,154,31
db	77,77,41,77,82,100,154,31
db	146,146,114,146,228,224,57,118
db	146,146,114,146,228,224,57,118
db	117,117,201,117,143,188,234,250
db	117,117,201,117,143,188,234,250
db	6,6,24,6,48,30,12,54
db	6,6,24,6,48,30,12,54
db	138,138,18,138,36,152,9,174
db	138,138,18,138,36,152,9,174
db	178,178,242,178,249,64,121,75
db	178,178,242,178,249,64,121,75
db	230,230,191,230,99,89,209,133
db	230,230,191,230,99,89,209,133
db	14,14,56,14,112,54,28,126
db	14,14,56,14,112,54,28,126
db	31,31,124,31,248,99,62,231
db	31,31,124,31,248,99,62,231
db	98,98,149,98,55,247,196,85
db	98,98,149,98,55,247,196,85
db	212,212,119,212,238,163,181,58
db	212,212,119,212,238,163,181,58
db	168,168,154,168,41,50,77,129
db	168,168,154,168,41,50,77,129
db	150,150,98,150,196,244,49,82
db	150,150,98,150,196,244,49,82
db	249,249,195,249,155,58,239,98
db	249,249,195,249,155,58,239,98
db	197,197,51,197,102,246,151,163
db	197,197,51,197,102,246,151,163
db	37,37,148,37,53,177,74,16
db	37,37,148,37,53,177,74,16
db	89,89,121,89,242,32,178,171
db	89,89,121,89,242,32,178,171
db	132,132,42,132,84,174,21,208
db	132,132,42,132,84,174,21,208
db	114,114,213,114,183,167,228,197
db	114,114,213,114,183,167,228,197
db	57,57,228,57,213,221,114,236
db	57,57,228,57,213,221,114,236
db	76,76,45,76,90,97,152,22
db	76,76,45,76,90,97,152,22
db	94,94,101,94,202,59,188,148
db	94,94,101,94,202,59,188,148
db	120,120,253,120,231,133,240,159
db	120,120,253,120,231,133,240,159
db	56,56,224,56,221,216,112,229
db	56,56,224,56,221,216,112,229
db	140,140,10,140,20,134,5,152
db	140,140,10,140,20,134,5,152
db	209,209,99,209,198,178,191,23
db	209,209,99,209,198,178,191,23
db	165,165,174,165,65,11,87,228
db	165,165,174,165,65,11,87,228
db	226,226,175,226,67,77,217,161
db	226,226,175,226,67,77,217,161
db	97,97,153,97,47,248,194,78
db	97,97,153,97,47,248,194,78
db	179,179,246,179,241,69,123,66
db	179,179,246,179,241,69,123,66
db	33,33,132,33,21,165,66,52
db	33,33,132,33,21,165,66,52
db	156,156,74,156,148,214,37,8
db	156,156,74,156,148,214,37,8
db	30,30,120,30,240,102,60,238
db	30,30,120,30,240,102,60,238
db	67,67,17,67,34,82,134,97
db	67,67,17,67,34,82,134,97
db	199,199,59,199,118,252,147,177
db	199,199,59,199,118,252,147,177
db	252,252,215,252,179,43,229,79
db	252,252,215,252,179,43,229,79
db	4,4,16,4,32,20,8,36
db	4,4,16,4,32,20,8,36
db	81,81,89,81,178,8,162,227
db	81,81,89,81,178,8,162,227
db	153,153,94,153,188,199,47,37
db	153,153,94,153,188,199,47,37
db	109,109,169,109,79,196,218,34
db	109,109,169,109,79,196,218,34
db	13,13,52,13,104,57,26,101
db	13,13,52,13,104,57,26,101
db	250,250,207,250,131,53,233,121
db	250,250,207,250,131,53,233,121
db	223,223,91,223,182,132,163,105
db	223,223,91,223,182,132,163,105
db	126,126,229,126,215,155,252,169
db	126,126,229,126,215,155,252,169
db	36,36,144,36,61,180,72,25
db	36,36,144,36,61,180,72,25
db	59,59,236,59,197,215,118,254
db	59,59,236,59,197,215,118,254
db	171,171,150,171,49,61,75,154
db	171,171,150,171,49,61,75,154
db	206,206,31,206,62,209,129,240
db	206,206,31,206,62,209,129,240
db	17,17,68,17,136,85,34,153
db	17,17,68,17,136,85,34,153
db	143,143,6,143,12,137,3,131
db	143,143,6,143,12,137,3,131
db	78,78,37,78,74,107,156,4
db	78,78,37,78,74,107,156,4
db	183,183,230,183,209,81,115,102
db	183,183,230,183,209,81,115,102
db	235,235,139,235,11,96,203,224
db	235,235,139,235,11,96,203,224
db	60,60,240,60,253,204,120,193
db	60,60,240,60,253,204,120,193
db	129,129,62,129,124,191,31,253
db	129,129,62,129,124,191,31,253
db	148,148,106,148,212,254,53,64
db	148,148,106,148,212,254,53,64
db	247,247,251,247,235,12,243,28
db	247,247,251,247,235,12,243,28
db	185,185,222,185,161,103,111,24
db	185,185,222,185,161,103,111,24
db	19,19,76,19,152,95,38,139
db	19,19,76,19,152,95,38,139
db	44,44,176,44,125,156,88,81
db	44,44,176,44,125,156,88,81
db	211,211,107,211,214,184,187,5
db	211,211,107,211,214,184,187,5
db	231,231,187,231,107,92,211,140
db	231,231,187,231,107,92,211,140
db	110,110,165,110,87,203,220,57
db	110,110,165,110,87,203,220,57
db	196,196,55,196,110,243,149,170
db	196,196,55,196,110,243,149,170
db	3,3,12,3,24,15,6,27
db	3,3,12,3,24,15,6,27
db	86,86,69,86,138,19,172,220
db	86,86,69,86,138,19,172,220
db	68,68,13,68,26,73,136,94
db	68,68,13,68,26,73,136,94
db	127,127,225,127,223,158,254,160
db	127,127,225,127,223,158,254,160
db	169,169,158,169,33,55,79,136
db	169,169,158,169,33,55,79,136
db	42,42,168,42,77,130,84,103
db	42,42,168,42,77,130,84,103
db	187,187,214,187,177,109,107,10
db	187,187,214,187,177,109,107,10
db	193,193,35,193,70,226,159,135
db	193,193,35,193,70,226,159,135
db	83,83,81,83,162,2,166,241
db	83,83,81,83,162,2,166,241
db	220,220,87,220,174,139,165,114
db	220,220,87,220,174,139,165,114
db	11,11,44,11,88,39,22,83
db	11,11,44,11,88,39,22,83
db	157,157,78,157,156,211,39,1
db	157,157,78,157,156,211,39,1
db	108,108,173,108,71,193,216,43
db	108,108,173,108,71,193,216,43
db	49,49,196,49,149,245,98,164
db	49,49,196,49,149,245,98,164
db	116,116,205,116,135,185,232,243
db	116,116,205,116,135,185,232,243
db	246,246,255,246,227,9,241,21
db	246,246,255,246,227,9,241,21
db	70,70,5,70,10,67,140,76
db	70,70,5,70,10,67,140,76
db	172,172,138,172,9,38,69,165
db	172,172,138,172,9,38,69,165
db	137,137,30,137,60,151,15,181
db	137,137,30,137,60,151,15,181
db	20,20,80,20,160,68,40,180
db	20,20,80,20,160,68,40,180
db	225,225,163,225,91,66,223,186
db	225,225,163,225,91,66,223,186
db	22,22,88,22,176,78,44,166
db	22,22,88,22,176,78,44,166
db	58,58,232,58,205,210,116,247
db	58,58,232,58,205,210,116,247
db	105,105,185,105,111,208,210,6
db	105,105,185,105,111,208,210,6
db	9,9,36,9,72,45,18,65
db	9,9,36,9,72,45,18,65
db	112,112,221,112,167,173,224,215
db	112,112,221,112,167,173,224,215
db	182,182,226,182,217,84,113,111
db	182,182,226,182,217,84,113,111
db	208,208,103,208,206,183,189,30
db	208,208,103,208,206,183,189,30
db	237,237,147,237,59,126,199,214
db	237,237,147,237,59,126,199,214
db	204,204,23,204,46,219,133,226
db	204,204,23,204,46,219,133,226
db	66,66,21,66,42,87,132,104
db	66,66,21,66,42,87,132,104
db	152,152,90,152,180,194,45,44
db	152,152,90,152,180,194,45,44
db	164,164,170,164,73,14,85,237
db	164,164,170,164,73,14,85,237
db	40,40,160,40,93,136,80,117
db	40,40,160,40,93,136,80,117
db	92,92,109,92,218,49,184,134
db	92,92,109,92,218,49,184,134
db	248,248,199,248,147,63,237,107
db	248,248,199,248,147,63,237,107
db	134,134,34,134,68,164,17,194
db	134,134,34,134,68,164,17,194
db	24,35,198,232,135,184,1,79
db	54,166,210,245,121,111,145,82
db	96,188,155,142,163,12,123,53
db	29,224,215,194,46,75,254,87
db	21,119,55,229,159,240,74,218
db	88,201,41,10,177,160,107,133
db	189,93,16,244,203,62,5,103
db	228,39,65,139,167,125,149,216
db	251,238,124,102,221,23,71,158
db	202,45,191,7,173,90,131,51
