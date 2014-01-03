%ifidn __OUTPUT_FORMAT__,obj
section	code	use32 class=code align=64
%elifidn __OUTPUT_FORMAT__,win32
$@feat.00 equ 1
section	.text	code align=64
%else
section	.text	code
%endif
global	_sha1_block_data_order
align	16
_sha1_block_data_order:
L$_sha1_block_data_order_begin:
	push	ebp
	push	ebx
	push	esi
	push	edi
	mov	ebp,DWORD [20+esp]
	mov	esi,DWORD [24+esp]
	mov	eax,DWORD [28+esp]
	sub	esp,64
	shl	eax,6
	add	eax,esi
	mov	DWORD [92+esp],eax
	mov	edi,DWORD [16+ebp]
align	16
L$000loop:
	mov	eax,DWORD [esi]
	mov	ebx,DWORD [4+esi]
	mov	ecx,DWORD [8+esi]
	mov	edx,DWORD [12+esi]
	bswap	eax
	bswap	ebx
	bswap	ecx
	bswap	edx
	mov	DWORD [esp],eax
	mov	DWORD [4+esp],ebx
	mov	DWORD [8+esp],ecx
	mov	DWORD [12+esp],edx
	mov	eax,DWORD [16+esi]
	mov	ebx,DWORD [20+esi]
	mov	ecx,DWORD [24+esi]
	mov	edx,DWORD [28+esi]
	bswap	eax
	bswap	ebx
	bswap	ecx
	bswap	edx
	mov	DWORD [16+esp],eax
	mov	DWORD [20+esp],ebx
	mov	DWORD [24+esp],ecx
	mov	DWORD [28+esp],edx
	mov	eax,DWORD [32+esi]
	mov	ebx,DWORD [36+esi]
	mov	ecx,DWORD [40+esi]
	mov	edx,DWORD [44+esi]
	bswap	eax
	bswap	ebx
	bswap	ecx
	bswap	edx
	mov	DWORD [32+esp],eax
	mov	DWORD [36+esp],ebx
	mov	DWORD [40+esp],ecx
	mov	DWORD [44+esp],edx
	mov	eax,DWORD [48+esi]
	mov	ebx,DWORD [52+esi]
	mov	ecx,DWORD [56+esi]
	mov	edx,DWORD [60+esi]
	bswap	eax
	bswap	ebx
	bswap	ecx
	bswap	edx
	mov	DWORD [48+esp],eax
	mov	DWORD [52+esp],ebx
	mov	DWORD [56+esp],ecx
	mov	DWORD [60+esp],edx
	mov	DWORD [88+esp],esi
	mov	eax,DWORD [ebp]
	mov	ebx,DWORD [4+ebp]
	mov	ecx,DWORD [8+ebp]
	mov	edx,DWORD [12+ebp]
	; 00_15 0
	mov	esi,ecx
	mov	ebp,eax
	rol	ebp,5
	xor	esi,edx
	add	ebp,edi
	and	esi,ebx
	mov	edi,DWORD [esp]
	xor	esi,edx
	ror	ebx,2
	lea	ebp,[1518500249+edi*1+ebp]
	add	ebp,esi
	; 00_15 1
	mov	edi,ebx
	mov	esi,ebp
	rol	ebp,5
	xor	edi,ecx
	add	ebp,edx
	and	edi,eax
	mov	edx,DWORD [4+esp]
	xor	edi,ecx
	ror	eax,2
	lea	ebp,[1518500249+edx*1+ebp]
	add	ebp,edi
	; 00_15 2
	mov	edx,eax
	mov	edi,ebp
	rol	ebp,5
	xor	edx,ebx
	add	ebp,ecx
	and	edx,esi
	mov	ecx,DWORD [8+esp]
	xor	edx,ebx
	ror	esi,2
	lea	ebp,[1518500249+ecx*1+ebp]
	add	ebp,edx
	; 00_15 3
	mov	ecx,esi
	mov	edx,ebp
	rol	ebp,5
	xor	ecx,eax
	add	ebp,ebx
	and	ecx,edi
	mov	ebx,DWORD [12+esp]
	xor	ecx,eax
	ror	edi,2
	lea	ebp,[1518500249+ebx*1+ebp]
	add	ebp,ecx
	; 00_15 4
	mov	ebx,edi
	mov	ecx,ebp
	rol	ebp,5
	xor	ebx,esi
	add	ebp,eax
	and	ebx,edx
	mov	eax,DWORD [16+esp]
	xor	ebx,esi
	ror	edx,2
	lea	ebp,[1518500249+eax*1+ebp]
	add	ebp,ebx
	; 00_15 5
	mov	eax,edx
	mov	ebx,ebp
	rol	ebp,5
	xor	eax,edi
	add	ebp,esi
	and	eax,ecx
	mov	esi,DWORD [20+esp]
	xor	eax,edi
	ror	ecx,2
	lea	ebp,[1518500249+esi*1+ebp]
	add	ebp,eax
	; 00_15 6
	mov	esi,ecx
	mov	eax,ebp
	rol	ebp,5
	xor	esi,edx
	add	ebp,edi
	and	esi,ebx
	mov	edi,DWORD [24+esp]
	xor	esi,edx
	ror	ebx,2
	lea	ebp,[1518500249+edi*1+ebp]
	add	ebp,esi
	; 00_15 7
	mov	edi,ebx
	mov	esi,ebp
	rol	ebp,5
	xor	edi,ecx
	add	ebp,edx
	and	edi,eax
	mov	edx,DWORD [28+esp]
	xor	edi,ecx
	ror	eax,2
	lea	ebp,[1518500249+edx*1+ebp]
	add	ebp,edi
	; 00_15 8
	mov	edx,eax
	mov	edi,ebp
	rol	ebp,5
	xor	edx,ebx
	add	ebp,ecx
	and	edx,esi
	mov	ecx,DWORD [32+esp]
	xor	edx,ebx
	ror	esi,2
	lea	ebp,[1518500249+ecx*1+ebp]
	add	ebp,edx
	; 00_15 9
	mov	ecx,esi
	mov	edx,ebp
	rol	ebp,5
	xor	ecx,eax
	add	ebp,ebx
	and	ecx,edi
	mov	ebx,DWORD [36+esp]
	xor	ecx,eax
	ror	edi,2
	lea	ebp,[1518500249+ebx*1+ebp]
	add	ebp,ecx
	; 00_15 10
	mov	ebx,edi
	mov	ecx,ebp
	rol	ebp,5
	xor	ebx,esi
	add	ebp,eax
	and	ebx,edx
	mov	eax,DWORD [40+esp]
	xor	ebx,esi
	ror	edx,2
	lea	ebp,[1518500249+eax*1+ebp]
	add	ebp,ebx
	; 00_15 11
	mov	eax,edx
	mov	ebx,ebp
	rol	ebp,5
	xor	eax,edi
	add	ebp,esi
	and	eax,ecx
	mov	esi,DWORD [44+esp]
	xor	eax,edi
	ror	ecx,2
	lea	ebp,[1518500249+esi*1+ebp]
	add	ebp,eax
	; 00_15 12
	mov	esi,ecx
	mov	eax,ebp
	rol	ebp,5
	xor	esi,edx
	add	ebp,edi
	and	esi,ebx
	mov	edi,DWORD [48+esp]
	xor	esi,edx
	ror	ebx,2
	lea	ebp,[1518500249+edi*1+ebp]
	add	ebp,esi
	; 00_15 13
	mov	edi,ebx
	mov	esi,ebp
	rol	ebp,5
	xor	edi,ecx
	add	ebp,edx
	and	edi,eax
	mov	edx,DWORD [52+esp]
	xor	edi,ecx
	ror	eax,2
	lea	ebp,[1518500249+edx*1+ebp]
	add	ebp,edi
	; 00_15 14
	mov	edx,eax
	mov	edi,ebp
	rol	ebp,5
	xor	edx,ebx
	add	ebp,ecx
	and	edx,esi
	mov	ecx,DWORD [56+esp]
	xor	edx,ebx
	ror	esi,2
	lea	ebp,[1518500249+ecx*1+ebp]
	add	ebp,edx
	; 00_15 15
	mov	ecx,esi
	mov	edx,ebp
	rol	ebp,5
	xor	ecx,eax
	add	ebp,ebx
	and	ecx,edi
	mov	ebx,DWORD [60+esp]
	xor	ecx,eax
	ror	edi,2
	lea	ebp,[1518500249+ebx*1+ebp]
	add	ecx,ebp
	; 16_19 16
	mov	ebx,DWORD [esp]
	mov	ebp,edi
	xor	ebx,DWORD [8+esp]
	xor	ebp,esi
	xor	ebx,DWORD [32+esp]
	and	ebp,edx
	ror	edx,2
	xor	ebx,DWORD [52+esp]
	rol	ebx,1
	xor	ebp,esi
	mov	DWORD [esp],ebx
	lea	ebx,[1518500249+eax*1+ebx]
	mov	eax,ecx
	rol	eax,5
	add	ebx,ebp
	add	ebx,eax
	; 16_19 17
	mov	eax,DWORD [4+esp]
	mov	ebp,edx
	xor	eax,DWORD [12+esp]
	xor	ebp,edi
	xor	eax,DWORD [36+esp]
	and	ebp,ecx
	ror	ecx,2
	xor	eax,DWORD [56+esp]
	rol	eax,1
	xor	ebp,edi
	mov	DWORD [4+esp],eax
	lea	eax,[1518500249+esi*1+eax]
	mov	esi,ebx
	rol	esi,5
	add	eax,ebp
	add	eax,esi
	; 16_19 18
	mov	esi,DWORD [8+esp]
	mov	ebp,ecx
	xor	esi,DWORD [16+esp]
	xor	ebp,edx
	xor	esi,DWORD [40+esp]
	and	ebp,ebx
	ror	ebx,2
	xor	esi,DWORD [60+esp]
	rol	esi,1
	xor	ebp,edx
	mov	DWORD [8+esp],esi
	lea	esi,[1518500249+edi*1+esi]
	mov	edi,eax
	rol	edi,5
	add	esi,ebp
	add	esi,edi
	; 16_19 19
	mov	edi,DWORD [12+esp]
	mov	ebp,ebx
	xor	edi,DWORD [20+esp]
	xor	ebp,ecx
	xor	edi,DWORD [44+esp]
	and	ebp,eax
	ror	eax,2
	xor	edi,DWORD [esp]
	rol	edi,1
	xor	ebp,ecx
	mov	DWORD [12+esp],edi
	lea	edi,[1518500249+edx*1+edi]
	mov	edx,esi
	rol	edx,5
	add	edi,ebp
	add	edi,edx
	; 20_39 20
	mov	ebp,esi
	mov	edx,DWORD [16+esp]
	ror	esi,2
	xor	edx,DWORD [24+esp]
	xor	ebp,eax
	xor	edx,DWORD [48+esp]
	xor	ebp,ebx
	xor	edx,DWORD [4+esp]
	rol	edx,1
	add	ebp,ecx
	mov	DWORD [16+esp],edx
	mov	ecx,edi
	rol	ecx,5
	lea	edx,[1859775393+ebp*1+edx]
	add	edx,ecx
	; 20_39 21
	mov	ebp,edi
	mov	ecx,DWORD [20+esp]
	ror	edi,2
	xor	ecx,DWORD [28+esp]
	xor	ebp,esi
	xor	ecx,DWORD [52+esp]
	xor	ebp,eax
	xor	ecx,DWORD [8+esp]
	rol	ecx,1
	add	ebp,ebx
	mov	DWORD [20+esp],ecx
	mov	ebx,edx
	rol	ebx,5
	lea	ecx,[1859775393+ebp*1+ecx]
	add	ecx,ebx
	; 20_39 22
	mov	ebp,edx
	mov	ebx,DWORD [24+esp]
	ror	edx,2
	xor	ebx,DWORD [32+esp]
	xor	ebp,edi
	xor	ebx,DWORD [56+esp]
	xor	ebp,esi
	xor	ebx,DWORD [12+esp]
	rol	ebx,1
	add	ebp,eax
	mov	DWORD [24+esp],ebx
	mov	eax,ecx
	rol	eax,5
	lea	ebx,[1859775393+ebp*1+ebx]
	add	ebx,eax
	; 20_39 23
	mov	ebp,ecx
	mov	eax,DWORD [28+esp]
	ror	ecx,2
	xor	eax,DWORD [36+esp]
	xor	ebp,edx
	xor	eax,DWORD [60+esp]
	xor	ebp,edi
	xor	eax,DWORD [16+esp]
	rol	eax,1
	add	ebp,esi
	mov	DWORD [28+esp],eax
	mov	esi,ebx
	rol	esi,5
	lea	eax,[1859775393+ebp*1+eax]
	add	eax,esi
	; 20_39 24
	mov	ebp,ebx
	mov	esi,DWORD [32+esp]
	ror	ebx,2
	xor	esi,DWORD [40+esp]
	xor	ebp,ecx
	xor	esi,DWORD [esp]
	xor	ebp,edx
	xor	esi,DWORD [20+esp]
	rol	esi,1
	add	ebp,edi
	mov	DWORD [32+esp],esi
	mov	edi,eax
	rol	edi,5
	lea	esi,[1859775393+ebp*1+esi]
	add	esi,edi
	; 20_39 25
	mov	ebp,eax
	mov	edi,DWORD [36+esp]
	ror	eax,2
	xor	edi,DWORD [44+esp]
	xor	ebp,ebx
	xor	edi,DWORD [4+esp]
	xor	ebp,ecx
	xor	edi,DWORD [24+esp]
	rol	edi,1
	add	ebp,edx
	mov	DWORD [36+esp],edi
	mov	edx,esi
	rol	edx,5
	lea	edi,[1859775393+ebp*1+edi]
	add	edi,edx
	; 20_39 26
	mov	ebp,esi
	mov	edx,DWORD [40+esp]
	ror	esi,2
	xor	edx,DWORD [48+esp]
	xor	ebp,eax
	xor	edx,DWORD [8+esp]
	xor	ebp,ebx
	xor	edx,DWORD [28+esp]
	rol	edx,1
	add	ebp,ecx
	mov	DWORD [40+esp],edx
	mov	ecx,edi
	rol	ecx,5
	lea	edx,[1859775393+ebp*1+edx]
	add	edx,ecx
	; 20_39 27
	mov	ebp,edi
	mov	ecx,DWORD [44+esp]
	ror	edi,2
	xor	ecx,DWORD [52+esp]
	xor	ebp,esi
	xor	ecx,DWORD [12+esp]
	xor	ebp,eax
	xor	ecx,DWORD [32+esp]
	rol	ecx,1
	add	ebp,ebx
	mov	DWORD [44+esp],ecx
	mov	ebx,edx
	rol	ebx,5
	lea	ecx,[1859775393+ebp*1+ecx]
	add	ecx,ebx
	; 20_39 28
	mov	ebp,edx
	mov	ebx,DWORD [48+esp]
	ror	edx,2
	xor	ebx,DWORD [56+esp]
	xor	ebp,edi
	xor	ebx,DWORD [16+esp]
	xor	ebp,esi
	xor	ebx,DWORD [36+esp]
	rol	ebx,1
	add	ebp,eax
	mov	DWORD [48+esp],ebx
	mov	eax,ecx
	rol	eax,5
	lea	ebx,[1859775393+ebp*1+ebx]
	add	ebx,eax
	; 20_39 29
	mov	ebp,ecx
	mov	eax,DWORD [52+esp]
	ror	ecx,2
	xor	eax,DWORD [60+esp]
	xor	ebp,edx
	xor	eax,DWORD [20+esp]
	xor	ebp,edi
	xor	eax,DWORD [40+esp]
	rol	eax,1
	add	ebp,esi
	mov	DWORD [52+esp],eax
	mov	esi,ebx
	rol	esi,5
	lea	eax,[1859775393+ebp*1+eax]
	add	eax,esi
	; 20_39 30
	mov	ebp,ebx
	mov	esi,DWORD [56+esp]
	ror	ebx,2
	xor	esi,DWORD [esp]
	xor	ebp,ecx
	xor	esi,DWORD [24+esp]
	xor	ebp,edx
	xor	esi,DWORD [44+esp]
	rol	esi,1
	add	ebp,edi
	mov	DWORD [56+esp],esi
	mov	edi,eax
	rol	edi,5
	lea	esi,[1859775393+ebp*1+esi]
	add	esi,edi
	; 20_39 31
	mov	ebp,eax
	mov	edi,DWORD [60+esp]
	ror	eax,2
	xor	edi,DWORD [4+esp]
	xor	ebp,ebx
	xor	edi,DWORD [28+esp]
	xor	ebp,ecx
	xor	edi,DWORD [48+esp]
	rol	edi,1
	add	ebp,edx
	mov	DWORD [60+esp],edi
	mov	edx,esi
	rol	edx,5
	lea	edi,[1859775393+ebp*1+edi]
	add	edi,edx
	; 20_39 32
	mov	ebp,esi
	mov	edx,DWORD [esp]
	ror	esi,2
	xor	edx,DWORD [8+esp]
	xor	ebp,eax
	xor	edx,DWORD [32+esp]
	xor	ebp,ebx
	xor	edx,DWORD [52+esp]
	rol	edx,1
	add	ebp,ecx
	mov	DWORD [esp],edx
	mov	ecx,edi
	rol	ecx,5
	lea	edx,[1859775393+ebp*1+edx]
	add	edx,ecx
	; 20_39 33
	mov	ebp,edi
	mov	ecx,DWORD [4+esp]
	ror	edi,2
	xor	ecx,DWORD [12+esp]
	xor	ebp,esi
	xor	ecx,DWORD [36+esp]
	xor	ebp,eax
	xor	ecx,DWORD [56+esp]
	rol	ecx,1
	add	ebp,ebx
	mov	DWORD [4+esp],ecx
	mov	ebx,edx
	rol	ebx,5
	lea	ecx,[1859775393+ebp*1+ecx]
	add	ecx,ebx
	; 20_39 34
	mov	ebp,edx
	mov	ebx,DWORD [8+esp]
	ror	edx,2
	xor	ebx,DWORD [16+esp]
	xor	ebp,edi
	xor	ebx,DWORD [40+esp]
	xor	ebp,esi
	xor	ebx,DWORD [60+esp]
	rol	ebx,1
	add	ebp,eax
	mov	DWORD [8+esp],ebx
	mov	eax,ecx
	rol	eax,5
	lea	ebx,[1859775393+ebp*1+ebx]
	add	ebx,eax
	; 20_39 35
	mov	ebp,ecx
	mov	eax,DWORD [12+esp]
	ror	ecx,2
	xor	eax,DWORD [20+esp]
	xor	ebp,edx
	xor	eax,DWORD [44+esp]
	xor	ebp,edi
	xor	eax,DWORD [esp]
	rol	eax,1
	add	ebp,esi
	mov	DWORD [12+esp],eax
	mov	esi,ebx
	rol	esi,5
	lea	eax,[1859775393+ebp*1+eax]
	add	eax,esi
	; 20_39 36
	mov	ebp,ebx
	mov	esi,DWORD [16+esp]
	ror	ebx,2
	xor	esi,DWORD [24+esp]
	xor	ebp,ecx
	xor	esi,DWORD [48+esp]
	xor	ebp,edx
	xor	esi,DWORD [4+esp]
	rol	esi,1
	add	ebp,edi
	mov	DWORD [16+esp],esi
	mov	edi,eax
	rol	edi,5
	lea	esi,[1859775393+ebp*1+esi]
	add	esi,edi
	; 20_39 37
	mov	ebp,eax
	mov	edi,DWORD [20+esp]
	ror	eax,2
	xor	edi,DWORD [28+esp]
	xor	ebp,ebx
	xor	edi,DWORD [52+esp]
	xor	ebp,ecx
	xor	edi,DWORD [8+esp]
	rol	edi,1
	add	ebp,edx
	mov	DWORD [20+esp],edi
	mov	edx,esi
	rol	edx,5
	lea	edi,[1859775393+ebp*1+edi]
	add	edi,edx
	; 20_39 38
	mov	ebp,esi
	mov	edx,DWORD [24+esp]
	ror	esi,2
	xor	edx,DWORD [32+esp]
	xor	ebp,eax
	xor	edx,DWORD [56+esp]
	xor	ebp,ebx
	xor	edx,DWORD [12+esp]
	rol	edx,1
	add	ebp,ecx
	mov	DWORD [24+esp],edx
	mov	ecx,edi
	rol	ecx,5
	lea	edx,[1859775393+ebp*1+edx]
	add	edx,ecx
	; 20_39 39
	mov	ebp,edi
	mov	ecx,DWORD [28+esp]
	ror	edi,2
	xor	ecx,DWORD [36+esp]
	xor	ebp,esi
	xor	ecx,DWORD [60+esp]
	xor	ebp,eax
	xor	ecx,DWORD [16+esp]
	rol	ecx,1
	add	ebp,ebx
	mov	DWORD [28+esp],ecx
	mov	ebx,edx
	rol	ebx,5
	lea	ecx,[1859775393+ebp*1+ecx]
	add	ecx,ebx
	; 40_59 40
	mov	ebx,DWORD [32+esp]
	mov	ebp,DWORD [40+esp]
	xor	ebx,ebp
	mov	ebp,DWORD [esp]
	xor	ebx,ebp
	mov	ebp,DWORD [20+esp]
	xor	ebx,ebp
	mov	ebp,edx
	rol	ebx,1
	or	ebp,edi
	mov	DWORD [32+esp],ebx
	and	ebp,esi
	lea	ebx,[2400959708+eax*1+ebx]
	mov	eax,edx
	ror	edx,2
	and	eax,edi
	or	ebp,eax
	mov	eax,ecx
	rol	eax,5
	add	ebx,ebp
	add	ebx,eax
	; 40_59 41
	mov	eax,DWORD [36+esp]
	mov	ebp,DWORD [44+esp]
	xor	eax,ebp
	mov	ebp,DWORD [4+esp]
	xor	eax,ebp
	mov	ebp,DWORD [24+esp]
	xor	eax,ebp
	mov	ebp,ecx
	rol	eax,1
	or	ebp,edx
	mov	DWORD [36+esp],eax
	and	ebp,edi
	lea	eax,[2400959708+esi*1+eax]
	mov	esi,ecx
	ror	ecx,2
	and	esi,edx
	or	ebp,esi
	mov	esi,ebx
	rol	esi,5
	add	eax,ebp
	add	eax,esi
	; 40_59 42
	mov	esi,DWORD [40+esp]
	mov	ebp,DWORD [48+esp]
	xor	esi,ebp
	mov	ebp,DWORD [8+esp]
	xor	esi,ebp
	mov	ebp,DWORD [28+esp]
	xor	esi,ebp
	mov	ebp,ebx
	rol	esi,1
	or	ebp,ecx
	mov	DWORD [40+esp],esi
	and	ebp,edx
	lea	esi,[2400959708+edi*1+esi]
	mov	edi,ebx
	ror	ebx,2
	and	edi,ecx
	or	ebp,edi
	mov	edi,eax
	rol	edi,5
	add	esi,ebp
	add	esi,edi
	; 40_59 43
	mov	edi,DWORD [44+esp]
	mov	ebp,DWORD [52+esp]
	xor	edi,ebp
	mov	ebp,DWORD [12+esp]
	xor	edi,ebp
	mov	ebp,DWORD [32+esp]
	xor	edi,ebp
	mov	ebp,eax
	rol	edi,1
	or	ebp,ebx
	mov	DWORD [44+esp],edi
	and	ebp,ecx
	lea	edi,[2400959708+edx*1+edi]
	mov	edx,eax
	ror	eax,2
	and	edx,ebx
	or	ebp,edx
	mov	edx,esi
	rol	edx,5
	add	edi,ebp
	add	edi,edx
	; 40_59 44
	mov	edx,DWORD [48+esp]
	mov	ebp,DWORD [56+esp]
	xor	edx,ebp
	mov	ebp,DWORD [16+esp]
	xor	edx,ebp
	mov	ebp,DWORD [36+esp]
	xor	edx,ebp
	mov	ebp,esi
	rol	edx,1
	or	ebp,eax
	mov	DWORD [48+esp],edx
	and	ebp,ebx
	lea	edx,[2400959708+ecx*1+edx]
	mov	ecx,esi
	ror	esi,2
	and	ecx,eax
	or	ebp,ecx
	mov	ecx,edi
	rol	ecx,5
	add	edx,ebp
	add	edx,ecx
	; 40_59 45
	mov	ecx,DWORD [52+esp]
	mov	ebp,DWORD [60+esp]
	xor	ecx,ebp
	mov	ebp,DWORD [20+esp]
	xor	ecx,ebp
	mov	ebp,DWORD [40+esp]
	xor	ecx,ebp
	mov	ebp,edi
	rol	ecx,1
	or	ebp,esi
	mov	DWORD [52+esp],ecx
	and	ebp,eax
	lea	ecx,[2400959708+ebx*1+ecx]
	mov	ebx,edi
	ror	edi,2
	and	ebx,esi
	or	ebp,ebx
	mov	ebx,edx
	rol	ebx,5
	add	ecx,ebp
	add	ecx,ebx
	; 40_59 46
	mov	ebx,DWORD [56+esp]
	mov	ebp,DWORD [esp]
	xor	ebx,ebp
	mov	ebp,DWORD [24+esp]
	xor	ebx,ebp
	mov	ebp,DWORD [44+esp]
	xor	ebx,ebp
	mov	ebp,edx
	rol	ebx,1
	or	ebp,edi
	mov	DWORD [56+esp],ebx
	and	ebp,esi
	lea	ebx,[2400959708+eax*1+ebx]
	mov	eax,edx
	ror	edx,2
	and	eax,edi
	or	ebp,eax
	mov	eax,ecx
	rol	eax,5
	add	ebx,ebp
	add	ebx,eax
	; 40_59 47
	mov	eax,DWORD [60+esp]
	mov	ebp,DWORD [4+esp]
	xor	eax,ebp
	mov	ebp,DWORD [28+esp]
	xor	eax,ebp
	mov	ebp,DWORD [48+esp]
	xor	eax,ebp
	mov	ebp,ecx
	rol	eax,1
	or	ebp,edx
	mov	DWORD [60+esp],eax
	and	ebp,edi
	lea	eax,[2400959708+esi*1+eax]
	mov	esi,ecx
	ror	ecx,2
	and	esi,edx
	or	ebp,esi
	mov	esi,ebx
	rol	esi,5
	add	eax,ebp
	add	eax,esi
	; 40_59 48
	mov	esi,DWORD [esp]
	mov	ebp,DWORD [8+esp]
	xor	esi,ebp
	mov	ebp,DWORD [32+esp]
	xor	esi,ebp
	mov	ebp,DWORD [52+esp]
	xor	esi,ebp
	mov	ebp,ebx
	rol	esi,1
	or	ebp,ecx
	mov	DWORD [esp],esi
	and	ebp,edx
	lea	esi,[2400959708+edi*1+esi]
	mov	edi,ebx
	ror	ebx,2
	and	edi,ecx
	or	ebp,edi
	mov	edi,eax
	rol	edi,5
	add	esi,ebp
	add	esi,edi
	; 40_59 49
	mov	edi,DWORD [4+esp]
	mov	ebp,DWORD [12+esp]
	xor	edi,ebp
	mov	ebp,DWORD [36+esp]
	xor	edi,ebp
	mov	ebp,DWORD [56+esp]
	xor	edi,ebp
	mov	ebp,eax
	rol	edi,1
	or	ebp,ebx
	mov	DWORD [4+esp],edi
	and	ebp,ecx
	lea	edi,[2400959708+edx*1+edi]
	mov	edx,eax
	ror	eax,2
	and	edx,ebx
	or	ebp,edx
	mov	edx,esi
	rol	edx,5
	add	edi,ebp
	add	edi,edx
	; 40_59 50
	mov	edx,DWORD [8+esp]
	mov	ebp,DWORD [16+esp]
	xor	edx,ebp
	mov	ebp,DWORD [40+esp]
	xor	edx,ebp
	mov	ebp,DWORD [60+esp]
	xor	edx,ebp
	mov	ebp,esi
	rol	edx,1
	or	ebp,eax
	mov	DWORD [8+esp],edx
	and	ebp,ebx
	lea	edx,[2400959708+ecx*1+edx]
	mov	ecx,esi
	ror	esi,2
	and	ecx,eax
	or	ebp,ecx
	mov	ecx,edi
	rol	ecx,5
	add	edx,ebp
	add	edx,ecx
	; 40_59 51
	mov	ecx,DWORD [12+esp]
	mov	ebp,DWORD [20+esp]
	xor	ecx,ebp
	mov	ebp,DWORD [44+esp]
	xor	ecx,ebp
	mov	ebp,DWORD [esp]
	xor	ecx,ebp
	mov	ebp,edi
	rol	ecx,1
	or	ebp,esi
	mov	DWORD [12+esp],ecx
	and	ebp,eax
	lea	ecx,[2400959708+ebx*1+ecx]
	mov	ebx,edi
	ror	edi,2
	and	ebx,esi
	or	ebp,ebx
	mov	ebx,edx
	rol	ebx,5
	add	ecx,ebp
	add	ecx,ebx
	; 40_59 52
	mov	ebx,DWORD [16+esp]
	mov	ebp,DWORD [24+esp]
	xor	ebx,ebp
	mov	ebp,DWORD [48+esp]
	xor	ebx,ebp
	mov	ebp,DWORD [4+esp]
	xor	ebx,ebp
	mov	ebp,edx
	rol	ebx,1
	or	ebp,edi
	mov	DWORD [16+esp],ebx
	and	ebp,esi
	lea	ebx,[2400959708+eax*1+ebx]
	mov	eax,edx
	ror	edx,2
	and	eax,edi
	or	ebp,eax
	mov	eax,ecx
	rol	eax,5
	add	ebx,ebp
	add	ebx,eax
	; 40_59 53
	mov	eax,DWORD [20+esp]
	mov	ebp,DWORD [28+esp]
	xor	eax,ebp
	mov	ebp,DWORD [52+esp]
	xor	eax,ebp
	mov	ebp,DWORD [8+esp]
	xor	eax,ebp
	mov	ebp,ecx
	rol	eax,1
	or	ebp,edx
	mov	DWORD [20+esp],eax
	and	ebp,edi
	lea	eax,[2400959708+esi*1+eax]
	mov	esi,ecx
	ror	ecx,2
	and	esi,edx
	or	ebp,esi
	mov	esi,ebx
	rol	esi,5
	add	eax,ebp
	add	eax,esi
	; 40_59 54
	mov	esi,DWORD [24+esp]
	mov	ebp,DWORD [32+esp]
	xor	esi,ebp
	mov	ebp,DWORD [56+esp]
	xor	esi,ebp
	mov	ebp,DWORD [12+esp]
	xor	esi,ebp
	mov	ebp,ebx
	rol	esi,1
	or	ebp,ecx
	mov	DWORD [24+esp],esi
	and	ebp,edx
	lea	esi,[2400959708+edi*1+esi]
	mov	edi,ebx
	ror	ebx,2
	and	edi,ecx
	or	ebp,edi
	mov	edi,eax
	rol	edi,5
	add	esi,ebp
	add	esi,edi
	; 40_59 55
	mov	edi,DWORD [28+esp]
	mov	ebp,DWORD [36+esp]
	xor	edi,ebp
	mov	ebp,DWORD [60+esp]
	xor	edi,ebp
	mov	ebp,DWORD [16+esp]
	xor	edi,ebp
	mov	ebp,eax
	rol	edi,1
	or	ebp,ebx
	mov	DWORD [28+esp],edi
	and	ebp,ecx
	lea	edi,[2400959708+edx*1+edi]
	mov	edx,eax
	ror	eax,2
	and	edx,ebx
	or	ebp,edx
	mov	edx,esi
	rol	edx,5
	add	edi,ebp
	add	edi,edx
	; 40_59 56
	mov	edx,DWORD [32+esp]
	mov	ebp,DWORD [40+esp]
	xor	edx,ebp
	mov	ebp,DWORD [esp]
	xor	edx,ebp
	mov	ebp,DWORD [20+esp]
	xor	edx,ebp
	mov	ebp,esi
	rol	edx,1
	or	ebp,eax
	mov	DWORD [32+esp],edx
	and	ebp,ebx
	lea	edx,[2400959708+ecx*1+edx]
	mov	ecx,esi
	ror	esi,2
	and	ecx,eax
	or	ebp,ecx
	mov	ecx,edi
	rol	ecx,5
	add	edx,ebp
	add	edx,ecx
	; 40_59 57
	mov	ecx,DWORD [36+esp]
	mov	ebp,DWORD [44+esp]
	xor	ecx,ebp
	mov	ebp,DWORD [4+esp]
	xor	ecx,ebp
	mov	ebp,DWORD [24+esp]
	xor	ecx,ebp
	mov	ebp,edi
	rol	ecx,1
	or	ebp,esi
	mov	DWORD [36+esp],ecx
	and	ebp,eax
	lea	ecx,[2400959708+ebx*1+ecx]
	mov	ebx,edi
	ror	edi,2
	and	ebx,esi
	or	ebp,ebx
	mov	ebx,edx
	rol	ebx,5
	add	ecx,ebp
	add	ecx,ebx
	; 40_59 58
	mov	ebx,DWORD [40+esp]
	mov	ebp,DWORD [48+esp]
	xor	ebx,ebp
	mov	ebp,DWORD [8+esp]
	xor	ebx,ebp
	mov	ebp,DWORD [28+esp]
	xor	ebx,ebp
	mov	ebp,edx
	rol	ebx,1
	or	ebp,edi
	mov	DWORD [40+esp],ebx
	and	ebp,esi
	lea	ebx,[2400959708+eax*1+ebx]
	mov	eax,edx
	ror	edx,2
	and	eax,edi
	or	ebp,eax
	mov	eax,ecx
	rol	eax,5
	add	ebx,ebp
	add	ebx,eax
	; 40_59 59
	mov	eax,DWORD [44+esp]
	mov	ebp,DWORD [52+esp]
	xor	eax,ebp
	mov	ebp,DWORD [12+esp]
	xor	eax,ebp
	mov	ebp,DWORD [32+esp]
	xor	eax,ebp
	mov	ebp,ecx
	rol	eax,1
	or	ebp,edx
	mov	DWORD [44+esp],eax
	and	ebp,edi
	lea	eax,[2400959708+esi*1+eax]
	mov	esi,ecx
	ror	ecx,2
	and	esi,edx
	or	ebp,esi
	mov	esi,ebx
	rol	esi,5
	add	eax,ebp
	add	eax,esi
	; 20_39 60
	mov	ebp,ebx
	mov	esi,DWORD [48+esp]
	ror	ebx,2
	xor	esi,DWORD [56+esp]
	xor	ebp,ecx
	xor	esi,DWORD [16+esp]
	xor	ebp,edx
	xor	esi,DWORD [36+esp]
	rol	esi,1
	add	ebp,edi
	mov	DWORD [48+esp],esi
	mov	edi,eax
	rol	edi,5
	lea	esi,[3395469782+ebp*1+esi]
	add	esi,edi
	; 20_39 61
	mov	ebp,eax
	mov	edi,DWORD [52+esp]
	ror	eax,2
	xor	edi,DWORD [60+esp]
	xor	ebp,ebx
	xor	edi,DWORD [20+esp]
	xor	ebp,ecx
	xor	edi,DWORD [40+esp]
	rol	edi,1
	add	ebp,edx
	mov	DWORD [52+esp],edi
	mov	edx,esi
	rol	edx,5
	lea	edi,[3395469782+ebp*1+edi]
	add	edi,edx
	; 20_39 62
	mov	ebp,esi
	mov	edx,DWORD [56+esp]
	ror	esi,2
	xor	edx,DWORD [esp]
	xor	ebp,eax
	xor	edx,DWORD [24+esp]
	xor	ebp,ebx
	xor	edx,DWORD [44+esp]
	rol	edx,1
	add	ebp,ecx
	mov	DWORD [56+esp],edx
	mov	ecx,edi
	rol	ecx,5
	lea	edx,[3395469782+ebp*1+edx]
	add	edx,ecx
	; 20_39 63
	mov	ebp,edi
	mov	ecx,DWORD [60+esp]
	ror	edi,2
	xor	ecx,DWORD [4+esp]
	xor	ebp,esi
	xor	ecx,DWORD [28+esp]
	xor	ebp,eax
	xor	ecx,DWORD [48+esp]
	rol	ecx,1
	add	ebp,ebx
	mov	DWORD [60+esp],ecx
	mov	ebx,edx
	rol	ebx,5
	lea	ecx,[3395469782+ebp*1+ecx]
	add	ecx,ebx
	; 20_39 64
	mov	ebp,edx
	mov	ebx,DWORD [esp]
	ror	edx,2
	xor	ebx,DWORD [8+esp]
	xor	ebp,edi
	xor	ebx,DWORD [32+esp]
	xor	ebp,esi
	xor	ebx,DWORD [52+esp]
	rol	ebx,1
	add	ebp,eax
	mov	DWORD [esp],ebx
	mov	eax,ecx
	rol	eax,5
	lea	ebx,[3395469782+ebp*1+ebx]
	add	ebx,eax
	; 20_39 65
	mov	ebp,ecx
	mov	eax,DWORD [4+esp]
	ror	ecx,2
	xor	eax,DWORD [12+esp]
	xor	ebp,edx
	xor	eax,DWORD [36+esp]
	xor	ebp,edi
	xor	eax,DWORD [56+esp]
	rol	eax,1
	add	ebp,esi
	mov	DWORD [4+esp],eax
	mov	esi,ebx
	rol	esi,5
	lea	eax,[3395469782+ebp*1+eax]
	add	eax,esi
	; 20_39 66
	mov	ebp,ebx
	mov	esi,DWORD [8+esp]
	ror	ebx,2
	xor	esi,DWORD [16+esp]
	xor	ebp,ecx
	xor	esi,DWORD [40+esp]
	xor	ebp,edx
	xor	esi,DWORD [60+esp]
	rol	esi,1
	add	ebp,edi
	mov	DWORD [8+esp],esi
	mov	edi,eax
	rol	edi,5
	lea	esi,[3395469782+ebp*1+esi]
	add	esi,edi
	; 20_39 67
	mov	ebp,eax
	mov	edi,DWORD [12+esp]
	ror	eax,2
	xor	edi,DWORD [20+esp]
	xor	ebp,ebx
	xor	edi,DWORD [44+esp]
	xor	ebp,ecx
	xor	edi,DWORD [esp]
	rol	edi,1
	add	ebp,edx
	mov	DWORD [12+esp],edi
	mov	edx,esi
	rol	edx,5
	lea	edi,[3395469782+ebp*1+edi]
	add	edi,edx
	; 20_39 68
	mov	ebp,esi
	mov	edx,DWORD [16+esp]
	ror	esi,2
	xor	edx,DWORD [24+esp]
	xor	ebp,eax
	xor	edx,DWORD [48+esp]
	xor	ebp,ebx
	xor	edx,DWORD [4+esp]
	rol	edx,1
	add	ebp,ecx
	mov	DWORD [16+esp],edx
	mov	ecx,edi
	rol	ecx,5
	lea	edx,[3395469782+ebp*1+edx]
	add	edx,ecx
	; 20_39 69
	mov	ebp,edi
	mov	ecx,DWORD [20+esp]
	ror	edi,2
	xor	ecx,DWORD [28+esp]
	xor	ebp,esi
	xor	ecx,DWORD [52+esp]
	xor	ebp,eax
	xor	ecx,DWORD [8+esp]
	rol	ecx,1
	add	ebp,ebx
	mov	DWORD [20+esp],ecx
	mov	ebx,edx
	rol	ebx,5
	lea	ecx,[3395469782+ebp*1+ecx]
	add	ecx,ebx
	; 20_39 70
	mov	ebp,edx
	mov	ebx,DWORD [24+esp]
	ror	edx,2
	xor	ebx,DWORD [32+esp]
	xor	ebp,edi
	xor	ebx,DWORD [56+esp]
	xor	ebp,esi
	xor	ebx,DWORD [12+esp]
	rol	ebx,1
	add	ebp,eax
	mov	DWORD [24+esp],ebx
	mov	eax,ecx
	rol	eax,5
	lea	ebx,[3395469782+ebp*1+ebx]
	add	ebx,eax
	; 20_39 71
	mov	ebp,ecx
	mov	eax,DWORD [28+esp]
	ror	ecx,2
	xor	eax,DWORD [36+esp]
	xor	ebp,edx
	xor	eax,DWORD [60+esp]
	xor	ebp,edi
	xor	eax,DWORD [16+esp]
	rol	eax,1
	add	ebp,esi
	mov	DWORD [28+esp],eax
	mov	esi,ebx
	rol	esi,5
	lea	eax,[3395469782+ebp*1+eax]
	add	eax,esi
	; 20_39 72
	mov	ebp,ebx
	mov	esi,DWORD [32+esp]
	ror	ebx,2
	xor	esi,DWORD [40+esp]
	xor	ebp,ecx
	xor	esi,DWORD [esp]
	xor	ebp,edx
	xor	esi,DWORD [20+esp]
	rol	esi,1
	add	ebp,edi
	mov	DWORD [32+esp],esi
	mov	edi,eax
	rol	edi,5
	lea	esi,[3395469782+ebp*1+esi]
	add	esi,edi
	; 20_39 73
	mov	ebp,eax
	mov	edi,DWORD [36+esp]
	ror	eax,2
	xor	edi,DWORD [44+esp]
	xor	ebp,ebx
	xor	edi,DWORD [4+esp]
	xor	ebp,ecx
	xor	edi,DWORD [24+esp]
	rol	edi,1
	add	ebp,edx
	mov	DWORD [36+esp],edi
	mov	edx,esi
	rol	edx,5
	lea	edi,[3395469782+ebp*1+edi]
	add	edi,edx
	; 20_39 74
	mov	ebp,esi
	mov	edx,DWORD [40+esp]
	ror	esi,2
	xor	edx,DWORD [48+esp]
	xor	ebp,eax
	xor	edx,DWORD [8+esp]
	xor	ebp,ebx
	xor	edx,DWORD [28+esp]
	rol	edx,1
	add	ebp,ecx
	mov	DWORD [40+esp],edx
	mov	ecx,edi
	rol	ecx,5
	lea	edx,[3395469782+ebp*1+edx]
	add	edx,ecx
	; 20_39 75
	mov	ebp,edi
	mov	ecx,DWORD [44+esp]
	ror	edi,2
	xor	ecx,DWORD [52+esp]
	xor	ebp,esi
	xor	ecx,DWORD [12+esp]
	xor	ebp,eax
	xor	ecx,DWORD [32+esp]
	rol	ecx,1
	add	ebp,ebx
	mov	DWORD [44+esp],ecx
	mov	ebx,edx
	rol	ebx,5
	lea	ecx,[3395469782+ebp*1+ecx]
	add	ecx,ebx
	; 20_39 76
	mov	ebp,edx
	mov	ebx,DWORD [48+esp]
	ror	edx,2
	xor	ebx,DWORD [56+esp]
	xor	ebp,edi
	xor	ebx,DWORD [16+esp]
	xor	ebp,esi
	xor	ebx,DWORD [36+esp]
	rol	ebx,1
	add	ebp,eax
	mov	DWORD [48+esp],ebx
	mov	eax,ecx
	rol	eax,5
	lea	ebx,[3395469782+ebp*1+ebx]
	add	ebx,eax
	; 20_39 77
	mov	ebp,ecx
	mov	eax,DWORD [52+esp]
	ror	ecx,2
	xor	eax,DWORD [60+esp]
	xor	ebp,edx
	xor	eax,DWORD [20+esp]
	xor	ebp,edi
	xor	eax,DWORD [40+esp]
	rol	eax,1
	add	ebp,esi
	mov	DWORD [52+esp],eax
	mov	esi,ebx
	rol	esi,5
	lea	eax,[3395469782+ebp*1+eax]
	add	eax,esi
	; 20_39 78
	mov	ebp,ebx
	mov	esi,DWORD [56+esp]
	ror	ebx,2
	xor	esi,DWORD [esp]
	xor	ebp,ecx
	xor	esi,DWORD [24+esp]
	xor	ebp,edx
	xor	esi,DWORD [44+esp]
	rol	esi,1
	add	ebp,edi
	mov	DWORD [56+esp],esi
	mov	edi,eax
	rol	edi,5
	lea	esi,[3395469782+ebp*1+esi]
	add	esi,edi
	; 20_39 79
	mov	ebp,eax
	mov	edi,DWORD [60+esp]
	ror	eax,2
	xor	edi,DWORD [4+esp]
	xor	ebp,ebx
	xor	edi,DWORD [28+esp]
	xor	ebp,ecx
	xor	edi,DWORD [48+esp]
	rol	edi,1
	add	ebp,edx
	mov	DWORD [60+esp],edi
	mov	edx,esi
	rol	edx,5
	lea	edi,[3395469782+ebp*1+edi]
	add	edi,edx
	mov	ebp,DWORD [84+esp]
	mov	edx,DWORD [88+esp]
	add	edi,DWORD [ebp]
	add	esi,DWORD [4+ebp]
	add	eax,DWORD [8+ebp]
	add	ebx,DWORD [12+ebp]
	add	ecx,DWORD [16+ebp]
	mov	DWORD [ebp],edi
	add	edx,64
	mov	DWORD [4+ebp],esi
	cmp	edx,DWORD [92+esp]
	mov	DWORD [8+ebp],eax
	mov	edi,ecx
	mov	DWORD [12+ebp],ebx
	mov	esi,edx
	mov	DWORD [16+ebp],ecx
	jb	NEAR L$000loop
	add	esp,64
	pop	edi
	pop	esi
	pop	ebx
	pop	ebp
	ret
db	83,72,65,49,32,98,108,111,99,107,32,116,114,97,110,115
db	102,111,114,109,32,102,111,114,32,120,56,54,44,32,67,82
db	89,80,84,79,71,65,77,83,32,98,121,32,60,97,112,112
db	114,111,64,111,112,101,110,115,115,108,46,111,114,103,62,0