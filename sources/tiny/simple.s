	.file	"simple.c"
	.data

! Hitachi SH cc1 (cygnus-2.7-96q3 SOA-960904) arguments: -fpeephole
! -ffunction-cse -fkeep-static-consts -freg-struct-return -fcommon
! -fgnu-linker

gcc2_compiled.:
___gnu_compiled_c:
	.text
	.align 2
	.global	_answer
_answer:
	mov.l	r14,@-r15
	mov	r15,r14
	mov	#42,r0
	bra	L1
	nop
L1:
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
