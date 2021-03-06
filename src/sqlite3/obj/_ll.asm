

;
; +-------------------------------------------------------------------------+
; |   This file	has been generated by The Interactive Disassembler (IDA)    |
; |	      Copyright	(c) 2011 Hex-Rays, <support@hex-rays.com>	    |
; |			 License info: 48-327F-7274-B7			    |
; |			       ESET spol. s r.o.			    |
; +-------------------------------------------------------------------------+
;
; Input	MD5   :	F58879E99A93681EB3F3ABA526B549FD
; Input	CRC32 :	791ADC52

; File Name   :	R:\obj\_ll.OBJ
; Format      :	Object Module Format (OMF/Microsoft)
; Module name	   : _ll.ASM


.686p
.mmx
.model flat


; Segment type:	Pure code
_TEXT segment dword public 'CODE' use32
assume cs:_TEXT
assume es:nothing, ss:nothing, ds:nothing, fs:nothing, gs:nothing



public _llmul
_llmul proc near

var_8= dword ptr -8
var_4= dword ptr -4
arg_0= dword ptr  4
arg_4= dword ptr  8

push	edx
push	eax
mov	eax, [esp+8+arg_4]
mul	[esp+8+var_8]
mov	ecx, eax
mov	eax, [esp+8+var_4]
mul	[esp+8+arg_0]
add	ecx, eax
mov	eax, [esp+8+var_8]
mul	[esp+8+arg_0]
add	edx, ecx
pop	ecx
pop	ecx
retn	8
_llmul endp




public _lldiv
_lldiv proc near

arg_0= dword ptr  4
arg_4= dword ptr  8

push	ebp
push	ebx
push	esi
push	edi
xor	edi, edi
mov	ebx, [esp+10h+arg_0]
mov	ecx, [esp+10h+arg_4]
or	ecx, ecx
jnz	short loc_1003D
or	edx, edx
jz	short loc_10095
or	ebx, ebx
jz	short loc_10095

loc_1003D:
or	edx, edx
jns	short loc_1004B
neg	edx
neg	eax
sbb	edx, 0
or	edi, 1

loc_1004B:
or	ecx, ecx
jns	short loc_10059
neg	ecx
neg	ebx
sbb	ecx, 0
xor	edi, 1

loc_10059:
mov	ebp, ecx
mov	ecx, 40h ; '@'
push	edi
xor	edi, edi
xor	esi, esi

loc_10065:
shl	eax, 1
rcl	edx, 1
rcl	esi, 1
rcl	edi, 1
cmp	edi, ebp
jb	short loc_1007C
ja	short loc_10077
cmp	esi, ebx
jb	short loc_1007C

loc_10077:
sub	esi, ebx
sbb	edi, ebp
inc	eax

loc_1007C:
loop	loc_10065
pop	ebx
test	ebx, 1
jz	short loc_1008E
neg	edx
neg	eax
sbb	edx, 0

loc_1008E:
pop	edi
pop	esi
pop	ebx
pop	ebp
retn	8

loc_10095:
div	ebx
xor	edx, edx
jmp	short loc_1008E
_lldiv endp




public _lludiv
_lludiv	proc near

arg_0= dword ptr  4
arg_4= dword ptr  8

push	ebp
push	ebx
push	esi
push	edi
mov	ebx, [esp+10h+arg_0]
mov	ecx, [esp+10h+arg_4]
or	ecx, ecx
jnz	short loc_100B3
or	edx, edx
jz	short loc_100DE
or	ebx, ebx
jz	short loc_100DE

loc_100B3:
mov	ebp, ecx
mov	ecx, 40h ; '@'
xor	edi, edi
xor	esi, esi

loc_100BE:
shl	eax, 1
rcl	edx, 1
rcl	esi, 1
rcl	edi, 1
cmp	edi, ebp
jb	short loc_100D5
ja	short loc_100D0
cmp	esi, ebx
jb	short loc_100D5

loc_100D0:
sub	esi, ebx
sbb	edi, ebp
inc	eax

loc_100D5:
loop	loc_100BE

loc_100D7:
pop	edi
pop	esi
pop	ebx
pop	ebp
retn	8

loc_100DE:
div	ebx
xor	edx, edx
jmp	short loc_100D7
_lludiv	endp




public _llmod
_llmod proc near

arg_0= dword ptr  4
arg_4= dword ptr  8

push	ebp
push	ebx
push	esi
push	edi
xor	edi, edi
mov	ebx, [esp+10h+arg_0]
mov	ecx, [esp+10h+arg_4]
or	ecx, ecx
jnz	short loc_100FE
or	edx, edx
jz	short loc_10157
or	ebx, ebx
jz	short loc_10157

loc_100FE:
or	edx, edx
jns	short loc_1010C
neg	edx
neg	eax
sbb	edx, 0
or	edi, 1

loc_1010C:
or	ecx, ecx
jns	short loc_10117
neg	ecx
neg	ebx
sbb	ecx, 0

loc_10117:
mov	ebp, ecx
mov	ecx, 40h ; '@'
push	edi
xor	edi, edi
xor	esi, esi

loc_10123:
shl	eax, 1
rcl	edx, 1
rcl	esi, 1
rcl	edi, 1
cmp	edi, ebp
jb	short loc_1013A
ja	short loc_10135
cmp	esi, ebx
jb	short loc_1013A

loc_10135:
sub	esi, ebx
sbb	edi, ebp
inc	eax

loc_1013A:
loop	loc_10123
mov	eax, esi
mov	edx, edi
pop	ebx
test	ebx, 1
jz	short loc_10150
neg	edx
neg	eax
sbb	edx, 0

loc_10150:
pop	edi
pop	esi
pop	ebx
pop	ebp
retn	8

loc_10157:
div	ebx
xchg	eax, edx
xor	edx, edx
jmp	short loc_10150
_llmod endp




public _llumod
_llumod	proc near

arg_0= dword ptr  4
arg_4= dword ptr  8

push	ebp
push	ebx
push	esi
push	edi
mov	ebx, [esp+10h+arg_0]
mov	ecx, [esp+10h+arg_4]
or	ecx, ecx
jnz	short loc_10176
or	edx, edx
jz	short loc_101A5
or	ebx, ebx
jz	short loc_101A5

loc_10176:
mov	ebp, ecx
mov	ecx, 40h ; '@'
xor	edi, edi
xor	esi, esi

loc_10181:
shl	eax, 1
rcl	edx, 1
rcl	esi, 1
rcl	edi, 1
cmp	edi, ebp
jb	short loc_10198
ja	short loc_10193
cmp	esi, ebx
jb	short loc_10198

loc_10193:
sub	esi, ebx
sbb	edi, ebp
inc	eax

loc_10198:
loop	loc_10181
mov	eax, esi
mov	edx, edi

loc_1019E:
pop	edi
pop	esi
pop	ebx
pop	ebp
retn	8

loc_101A5:
div	ebx
xchg	eax, edx
xor	edx, edx
jmp	short loc_1019E
_llumod	endp




public _llshl
_llshl proc near
cmp	cl, 20h	; ' '
jl	short loc_101C2
cmp	cl, 40h	; '@'
jl	short loc_101BB
xor	edx, edx
xor	eax, eax
retn

loc_101BB:
mov	edx, eax
shl	edx, cl
xor	eax, eax
retn

loc_101C2:
shld	edx, eax, cl
shl	eax, cl
retn
_llshl endp




public _llshr
_llshr proc near
cmp	cl, 20h	; ' '
jl	short loc_101DE
cmp	cl, 40h	; '@'
jl	short loc_101D8
sar	edx, 1Fh
mov	eax, edx
retn

loc_101D8:
mov	eax, edx
cdq
sar	eax, cl
retn

loc_101DE:
shrd	eax, edx, cl
sar	edx, cl
retn
_llshr endp




public _llushr
_llushr	proc near
cmp	cl, 20h	; ' '
jl	short loc_101FA
cmp	cl, 40h	; '@'
jl	short loc_101F3
xor	edx, edx
xor	eax, eax
retn

loc_101F3:
mov	eax, edx
xor	edx, edx
shr	eax, cl
retn

loc_101FA:
shrd	eax, edx, cl
shr	edx, cl
retn
_llushr	endp

_TEXT ends


end
