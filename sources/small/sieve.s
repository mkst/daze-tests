	.file	"sieve.c"
	.data

! Hitachi SH cc1 (cygnus-2.7-96q3 SOA-960904) arguments: -fpeephole
! -ffunction-cse -fkeep-static-consts -freg-struct-return -fcommon
! -fgnu-linker

gcc2_compiled.:
___gnu_compiled_c:
	.text
	.align 2
LC0:
	.ascii "10 iterations\12\0"
	.align 2
LC1:
	.ascii "%d primes.\12\0"
	.align 2
LC2:
	.ascii "sieve.c finished\12\0"
	.align 2
	.global	_main
_main:
	mov.l	r8,@-r15
	mov.l	r9,@-r15
	mov.l	r10,@-r15
	mov.l	r14,@-r15
	sts.l	pr,@-r15
	add	#-12,r15
	mov	r15,r14
	mov.l	L19,r8
	jsr	@r8
	nop
	mov.l	L20,r1
	mov	r1,r4
	mov.l	L21,r10
	jsr	@r10
	nop
	mov	#1,r1
	mov.l	r1,@(8,r14)
L2:
	mov.l	@(8,r14),r1
	mov	#10,r2
	cmp/gt	r2,r1
	bf	L5
	bra	L3
	nop
L5:
	mov	#0,r1
	mov.l	r1,@(4,r14)
	mov	#0,r8
L6:
	mov.w	L22,r1
	cmp/gt	r1,r8
	bf	L9
	bra	L7
	nop
L9:
	mov.l	L23,r2
	mov	r8,r1
	add	r2,r1
	mov	#1,r2
	mov.b	r2,@r1
L8:
	add	#1,r8
	bra	L6
	nop
L7:
	nop
	mov	#0,r8
L10:
	mov.w	L22,r1
	cmp/gt	r1,r8
	bf	L13
	bra	L4
	nop
L13:
	mov.l	L23,r2
	mov	r8,r1
	add	r2,r1
	mov.b	@r1,r2
	tst	r2,r2
	bt	L12
	mov	r8,r1
	add	r8,r1
	mov	r1,r2
	add	#3,r2
	mov.l	r2,@r14
	mov.l	@r14,r1
	mov	r8,r9
	add	r1,r9
L15:
	mov.w	L22,r1
	cmp/gt	r1,r9
	bf	L18
	bra	L16
	nop
L18:
	mov.l	L23,r2
	mov	r9,r1
	add	r2,r1
	mov	#0,r2
	mov.b	r2,@r1
L17:
	mov.l	@r14,r1
	add	r1,r9
	bra	L15
	nop
L16:
	mov.l	@(4,r14),r2
	mov	r2,r1
	add	#1,r1
	mov	r1,r2
	mov.l	r2,@(4,r14)
L14:
L12:
	add	#1,r8
	bra	L10
	nop
L11:
L4:
	mov.l	@(8,r14),r2
	mov	r2,r1
	add	#1,r1
	mov	r1,r2
	mov.l	r2,@(8,r14)
	bra	L2
	nop
L3:
	mov.l	@(4,r14),r1
	mov.l	L24,r2
	mov	r1,r5
	mov	r2,r4
	mov.l	L21,r10
	jsr	@r10
	nop
	mov.l	L25,r1
	mov	r1,r4
	mov.l	L21,r10
	jsr	@r10
	nop
	mov	#0,r0
	bra	L1
	nop
L1:
	add	#12,r14
	mov	r14,r15
	lds.l	@r15+,pr
	mov.l	@r15+,r14
	mov.l	@r15+,r10
	mov.l	@r15+,r9
	mov.l	@r15+,r8
	rts	
	nop
	.align 1
L22:
	.short	8190
L26:
	.align 2
L19:
	.long	___main
L20:
	.long	LC0
L21:
	.long	_printf
L23:
	.long	_flags
L24:
	.long	LC1
L25:
	.long	LC2
	.comm _flags,8191
