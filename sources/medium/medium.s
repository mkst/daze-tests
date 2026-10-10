	.file	"medium.c"
	.data

! Hitachi SH cc1 (cygnus-2.7-96q3 SOA-960904) arguments: -fpeephole
! -ffunction-cse -fkeep-static-consts -freg-struct-return -fcommon
! -fgnu-linker

gcc2_compiled.:
___gnu_compiled_c:
	.text
	.align 2
	.global	_sieve_count
_sieve_count:
	mov.l	r14,@-r15
	add	#-24,r15
	mov	r15,r14
	mov	#0,r1
	mov.l	r1,@(20,r14)
	mov	#0,r1
	mov.l	r1,@(16,r14)
L2:
	mov.l	@(16,r14),r1
	mov	#4,r2
	cmp/gt	r2,r1
	bf	L5
	bra	L3
	nop
L5:
	mov	#0,r1
	mov.l	r1,@(12,r14)
	mov	#0,r1
	mov.l	r1,@r14
L6:
	mov.l	@r14,r1
	mov.w	L19,r2
	cmp/gt	r2,r1
	bf	L9
	bra	L7
	nop
L9:
	mov.l	@r14,r1
	mov.l	L20,r2
	add	r2,r1
	mov	#1,r2
	mov.b	r2,@r1
L8:
	mov.l	@r14,r2
	mov	r2,r1
	add	#1,r1
	mov	r1,r2
	mov.l	r2,@r14
	bra	L6
	nop
L7:
	nop
	mov	#0,r1
	mov.l	r1,@r14
L10:
	mov.l	@r14,r1
	mov.w	L19,r2
	cmp/gt	r2,r1
	bf	L13
	bra	L11
	nop
L13:
	mov.l	@r14,r1
	mov.l	L20,r2
	add	r2,r1
	mov.b	@r1,r2
	tst	r2,r2
	bt	L12
	mov.l	@r14,r1
	mov.l	@r14,r2
	add	r2,r1
	mov	r1,r2
	add	#3,r2
	mov.l	r2,@(8,r14)
	mov.l	@r14,r1
	mov.l	@(8,r14),r2
	add	r2,r1
	mov.l	r1,@(4,r14)
L15:
	mov.l	@(4,r14),r1
	mov.w	L19,r2
	cmp/gt	r2,r1
	bf	L18
	bra	L16
	nop
L18:
	mov.l	@(4,r14),r1
	mov.l	L20,r2
	add	r2,r1
	mov	#0,r2
	mov.b	r2,@r1
L17:
	mov.l	@(4,r14),r1
	mov.l	@(8,r14),r2
	add	r2,r1
	mov.l	r1,@(4,r14)
	bra	L15
	nop
L16:
	mov.l	@(12,r14),r2
	mov	r2,r1
	add	#1,r1
	mov	r1,r2
	mov.l	r2,@(12,r14)
L14:
L12:
	mov.l	@r14,r2
	mov	r2,r1
	add	#1,r1
	mov	r1,r2
	mov.l	r2,@r14
	bra	L10
	nop
L11:
	mov.l	@(20,r14),r1
	mov.l	@(12,r14),r2
	add	r2,r1
	mov.l	r1,@(20,r14)
L4:
	mov.l	@(16,r14),r2
	mov	r2,r1
	add	#1,r1
	mov	r1,r2
	mov.l	r2,@(16,r14)
	bra	L2
	nop
L3:
	mov.l	@(20,r14),r0
	bra	L1
	nop
L1:
	add	#24,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 1
L19:
	.short	1000
L21:
	.align 2
L20:
	.long	_sieve_flags
	.align 2
	.global	_gcd
_gcd:
	mov.l	r8,@-r15
	mov.l	r14,@-r15
	sts.l	pr,@-r15
	add	#-12,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
L23:
	mov.l	@(4,r14),r1
	tst	r1,r1
	bf	L25
	bra	L24
	nop
L25:
	mov.l	@(4,r14),r1
	mov.l	r1,@(8,r14)
	mov.l	@r14,r8
	mov	r8,r4
	mov.l	@(4,r14),r5
	mov.l	L26,r7
	jsr	@r7
	nop
	mov.l	L27,r1
	mov.l	@(4,r14),r5
	mov	r0,r4
	jsr	@r1
	nop
	mov	r8,r1
	sub	r0,r1
	mov.l	r1,@(4,r14)
	mov.l	@(8,r14),r1
	mov.l	r1,@r14
	bra	L23
	nop
L24:
	mov.l	@r14,r0
	bra	L22
	nop
L22:
	add	#12,r14
	mov	r14,r15
	lds.l	@r15+,pr
	mov.l	@r15+,r14
	mov.l	@r15+,r8
	rts	
	nop
L28:
	.align 2
L26:
	.long	___sdivsi3
L27:
	.long	___mulsi3
	.align 2
	.global	_lcm
_lcm:
	mov.l	r8,@-r15
	mov.l	r14,@-r15
	sts.l	pr,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov.l	@(4,r14),r1
	mov	r1,r5
	mov.l	@r14,r4
	mov.l	L30,r8
	jsr	@r8
	nop
	mov.l	@r14,r4
	mov	r0,r5
	mov.l	L31,r7
	jsr	@r7
	nop
	mov.l	L32,r1
	mov.l	@(4,r14),r5
	mov	r0,r4
	jsr	@r1
	nop
	mov	r0,r1
	mov	r1,r0
	bra	L29
	nop
L29:
	add	#8,r14
	mov	r14,r15
	lds.l	@r15+,pr
	mov.l	@r15+,r14
	mov.l	@r15+,r8
	rts	
	nop
L33:
	.align 2
L30:
	.long	_gcd
L31:
	.long	___sdivsi3
L32:
	.long	___mulsi3
	.align 2
	.global	_factorial
_factorial:
	mov.l	r14,@-r15
	sts.l	pr,@-r15
	add	#-12,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov	#1,r1
	mov.l	r1,@(4,r14)
	mov	#2,r1
	mov.l	r1,@(8,r14)
L35:
	mov.l	@(8,r14),r1
	mov.l	@r14,r2
	cmp/gt	r2,r1
	bf	L38
	bra	L36
	nop
L38:
	mov.l	L39,r1
	mov.l	@(8,r14),r5
	mov.l	@(4,r14),r4
	jsr	@r1
	nop
	mov.l	r0,@(4,r14)
L37:
	mov.l	@(8,r14),r2
	mov	r2,r1
	add	#1,r1
	mov	r1,r2
	mov.l	r2,@(8,r14)
	bra	L35
	nop
L36:
	mov.l	@(4,r14),r0
	bra	L34
	nop
L34:
	add	#12,r14
	mov	r14,r15
	lds.l	@r15+,pr
	mov.l	@r15+,r14
	rts	
	nop
L40:
	.align 2
L39:
	.long	___mulsi3
	.align 2
	.global	_fibonacci
_fibonacci:
	mov.l	r14,@-r15
	add	#-20,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	@r14,r1
	mov	#1,r2
	cmp/gt	r2,r1
	bt	L42
	mov.l	@r14,r0
	bra	L41
	nop
L42:
	mov	#0,r1
	mov.l	r1,@(4,r14)
	mov	#1,r1
	mov.l	r1,@(8,r14)
	mov	#2,r1
	mov.l	r1,@(16,r14)
L43:
	mov.l	@(16,r14),r1
	mov.l	@r14,r2
	cmp/gt	r2,r1
	bf	L46
	bra	L44
	nop
L46:
	mov.l	@(4,r14),r1
	mov.l	@(8,r14),r2
	add	r2,r1
	mov.l	r1,@(12,r14)
	mov.l	@(8,r14),r1
	mov.l	r1,@(4,r14)
	mov.l	@(12,r14),r1
	mov.l	r1,@(8,r14)
L45:
	mov.l	@(16,r14),r2
	mov	r2,r1
	add	#1,r1
	mov	r1,r2
	mov.l	r2,@(16,r14)
	bra	L43
	nop
L44:
	mov.l	@(8,r14),r0
	bra	L41
	nop
L41:
	add	#20,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_dot_product
_dot_product:
	mov.l	r8,@-r15
	mov.l	r14,@-r15
	sts.l	pr,@-r15
	add	#-20,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov.l	r6,@(8,r14)
	mov	#0,r1
	mov.l	r1,@(12,r14)
	mov	#0,r1
	mov.l	r1,@(16,r14)
L48:
	mov.l	@(16,r14),r1
	mov.l	@(8,r14),r2
	cmp/ge	r2,r1
	bf	L51
	bra	L49
	nop
L51:
	mov.l	@(16,r14),r1
	mov	r1,r2
	mov	r2,r1
	shll2	r1
	add	r1,r1
	mov.l	@r14,r2
	add	r2,r1
	mov.l	@(16,r14),r2
	mov	r2,r3
	mov	r3,r2
	shll2	r2
	add	r2,r2
	mov.l	@(4,r14),r7
	mov	r2,r3
	add	r7,r3
	mov.l	L52,r2
	mov.l	@r3,r5
	mov.l	@r1,r4
	jsr	@r2
	nop
	mov	r0,r8
	mov.l	@(16,r14),r1
	mov	r1,r2
	mov	r2,r1
	shll2	r1
	add	r1,r1
	mov.l	@r14,r2
	add	r2,r1
	mov.l	@(16,r14),r2
	mov	r2,r3
	mov	r3,r2
	shll2	r2
	add	r2,r2
	mov.l	@(4,r14),r7
	mov	r2,r3
	add	r7,r3
	mov.l	L52,r2
	mov.l	@(4,r3),r5
	mov.l	@(4,r1),r4
	jsr	@r2
	nop
	mov	r8,r1
	add	r0,r1
	mov.l	@(12,r14),r2
	add	r2,r1
	mov.l	r1,@(12,r14)
L50:
	mov.l	@(16,r14),r2
	mov	r2,r1
	add	#1,r1
	mov	r1,r2
	mov.l	r2,@(16,r14)
	bra	L48
	nop
L49:
	mov.l	@(12,r14),r0
	bra	L47
	nop
L47:
	add	#20,r14
	mov	r14,r15
	lds.l	@r15+,pr
	mov.l	@r15+,r14
	mov.l	@r15+,r8
	rts	
	nop
L53:
	.align 2
L52:
	.long	___mulsi3
	.align 2
	.global	_reverse_array
_reverse_array:
	mov.l	r14,@-r15
	add	#-20,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov	#0,r1
	mov.l	r1,@(8,r14)
	mov.l	@(4,r14),r1
	mov	r1,r2
	add	#-1,r2
	mov.l	r2,@(12,r14)
L55:
	mov.l	@(8,r14),r1
	mov.l	@(12,r14),r2
	cmp/ge	r2,r1
	bf	L57
	bra	L56
	nop
L57:
	mov.l	@(8,r14),r1
	mov	r1,r2
	mov	r2,r1
	shll2	r1
	mov.l	@r14,r2
	add	r2,r1
	mov.l	@r1,r2
	mov.l	r2,@(16,r14)
	mov.l	@(8,r14),r1
	mov	r1,r2
	mov	r2,r1
	shll2	r1
	mov.l	@r14,r2
	add	r2,r1
	mov.l	@(12,r14),r2
	mov	r2,r3
	mov	r3,r2
	shll2	r2
	mov.l	@r14,r3
	add	r3,r2
	mov.l	@r2,r3
	mov.l	r3,@r1
	mov.l	@(12,r14),r1
	mov	r1,r2
	mov	r2,r1
	shll2	r1
	mov.l	@r14,r2
	add	r2,r1
	mov.l	@(16,r14),r2
	mov.l	r2,@r1
	mov.l	@(8,r14),r2
	mov	r2,r1
	add	#1,r1
	mov	r1,r2
	mov.l	r2,@(8,r14)
	mov.l	@(12,r14),r2
	mov	r2,r1
	add	#-1,r1
	mov	r1,r2
	mov.l	r2,@(12,r14)
	bra	L55
	nop
L56:
L54:
	add	#20,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_checksum_array
_checksum_array:
	mov.l	r14,@-r15
	add	#-16,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov	#0,r1
	mov.l	r1,@(8,r14)
	mov	#0,r1
	mov.l	r1,@(12,r14)
L59:
	mov.l	@(12,r14),r1
	mov.l	@(4,r14),r2
	cmp/ge	r2,r1
	bf	L62
	bra	L60
	nop
L62:
	mov.l	@(8,r14),r2
	mov	r2,r3
	mov	r3,r1
	shll2	r1
	add	r1,r1
	shll2	r1
	sub	r2,r1
	mov.l	@(12,r14),r2
	mov	r2,r3
	mov	r3,r2
	shll2	r2
	mov.l	@r14,r3
	add	r3,r2
	mov.l	@r2,r3
	add	r3,r1
	mov.l	r1,@(8,r14)
L61:
	mov.l	@(12,r14),r2
	mov	r2,r1
	add	#1,r1
	mov	r1,r2
	mov.l	r2,@(12,r14)
	bra	L59
	nop
L60:
	mov.l	@(8,r14),r0
	bra	L58
	nop
L58:
	add	#16,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_classify
_classify:
	mov.l	r14,@-r15
	add	#-4,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	@r14,r1
	cmp/pz	r1
	bt	L64
	mov	#-1,r0
	bra	L63
	nop
L64:
	mov.l	@r14,r1
	mov	r1,r2
	cmp/pz	r2
	bt	L71
	add	#3,r2
L71:
	shar	r2
	shar	r2
	mov	r2,r3
	mov	r3,r2
	mov	r2,r3
	shll2	r3
	mov	r1,r0
	sub	r3,r0
	cmp/eq	#1,r0
	bt	L67
	mov	#1,r1
	cmp/gt	r1,r0
	bt	L72
	tst	r0,r0
	bt	L66
	bra	L69
	nop
L72:
	cmp/eq	#2,r0
	bt	L68
	bra	L69
	nop
L66:
	mov	#0,r0
	bra	L63
	nop
L67:
	mov	#10,r0
	bra	L63
	nop
L68:
	mov	#20,r0
	bra	L63
	nop
L69:
	bra	L65
	nop
L65:
	mov	#30,r0
	bra	L63
	nop
L63:
	add	#4,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.data
	.align 2
_pts.20:
	.long	1
	.long	2
	.long	3
	.long	4
	.long	5
	.long	6
	.long	7
	.long	8
	.align 2
_qs.21:
	.long	8
	.long	7
	.long	6
	.long	5
	.long	4
	.long	3
	.long	2
	.long	1
	.text
	.align 2
	.global	_main
_main:
	mov.l	r8,@-r15
	mov.l	r9,@-r15
	mov.l	r10,@-r15
	mov.l	r14,@-r15
	sts.l	pr,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	L78,r8
	jsr	@r8
	nop
	mov	#0,r1
	mov.l	r1,@r14
L74:
	mov.l	@r14,r1
	mov	#63,r2
	cmp/gt	r2,r1
	bf	L77
	bra	L75
	nop
L77:
	mov.l	@r14,r1
	mov	r1,r2
	mov	r2,r1
	shll2	r1
	mov.l	L79,r2
	mov	r1,r7
	add	r2,r7
	mov.l	@r14,r1
	mov	r1,r3
	mov	r3,r2
	shll2	r2
	add	r2,r2
	sub	r1,r2
	mov	r2,r6
	add	#3,r6
	mov	r6,r4
	mov	#100,r5
	mov.l	L80,r8
	jsr	@r8
	nop
	mov	r0,r2
	mov	r2,r1
	shll2	r1
	add	r0,r1
	mov	r1,r2
	shll2	r2
	add	r2,r1
	mov	r1,r2
	shll2	r2
	mov	r6,r1
	sub	r2,r1
	mov.l	r1,@r7
L76:
	mov.l	@r14,r2
	mov	r2,r1
	add	#1,r1
	mov	r1,r2
	mov.l	r2,@r14
	bra	L74
	nop
L75:
	mov.l	L79,r1
	mov	#64,r5
	mov	r1,r4
	mov.l	L81,r8
	jsr	@r8
	nop
	mov.l	L82,r8
	jsr	@r8
	nop
	mov.l	r0,@(4,r14)
	mov.w	L83,r1
	mov.w	L84,r2
	mov	r1,r5
	mov	r2,r4
	mov.l	L85,r8
	jsr	@r8
	nop
	mov.l	@(4,r14),r1
	mov	r1,r2
	add	r0,r2
	mov.l	r2,@(4,r14)
	mov	#18,r5
	mov	#12,r4
	mov.l	L86,r8
	jsr	@r8
	nop
	mov.l	@(4,r14),r1
	mov	r1,r2
	add	r0,r2
	mov.l	r2,@(4,r14)
	mov	#10,r4
	mov.l	L87,r8
	jsr	@r8
	nop
	mov.l	@(4,r14),r1
	mov	r1,r2
	add	r0,r2
	mov.l	r2,@(4,r14)
	mov	#20,r4
	mov.l	L88,r8
	jsr	@r8
	nop
	mov.l	@(4,r14),r1
	mov	r1,r2
	add	r0,r2
	mov.l	r2,@(4,r14)
	mov.l	L89,r1
	mov.l	L90,r2
	mov	#4,r6
	mov	r1,r5
	mov	r2,r4
	mov.l	L91,r8
	jsr	@r8
	nop
	mov.l	@(4,r14),r1
	mov	r1,r2
	add	r0,r2
	mov.l	r2,@(4,r14)
	mov.l	L79,r1
	mov	#64,r5
	mov	r1,r4
	mov.l	L92,r8
	jsr	@r8
	nop
	mov.l	@(4,r14),r1
	mov	r1,r2
	add	r0,r2
	mov.l	r2,@(4,r14)
	mov	#-5,r4
	mov.l	L93,r8
	jsr	@r8
	nop
	mov	r0,r8
	mov	#0,r4
	mov.l	L93,r9
	jsr	@r9
	nop
	mov	r0,r9
	mov	#7,r4
	mov.l	L93,r10
	jsr	@r10
	nop
	mov	r8,r1
	add	r9,r1
	mov	r1,r2
	add	r0,r2
	mov.l	@(4,r14),r1
	add	r1,r2
	mov.l	r2,@(4,r14)
	mov.l	@(4,r14),r1
	tst	r1,r1
	movt	r1
	mov	r1,r0
	bra	L73
	nop
L73:
	add	#8,r14
	mov	r14,r15
	lds.l	@r15+,pr
	mov.l	@r15+,r14
	mov.l	@r15+,r10
	mov.l	@r15+,r9
	mov.l	@r15+,r8
	rts	
	nop
	.align 1
L83:
	.short	462
L84:
	.short	1071
L94:
	.align 2
L78:
	.long	___main
L79:
	.long	_work_array
L80:
	.long	___sdivsi3
L81:
	.long	_reverse_array
L82:
	.long	_sieve_count
L85:
	.long	_gcd
L86:
	.long	_lcm
L87:
	.long	_factorial
L88:
	.long	_fibonacci
L89:
	.long	_qs.21
L90:
	.long	_pts.20
L91:
	.long	_dot_product
L92:
	.long	_checksum_array
L93:
	.long	_classify
	.lcomm _sieve_flags,1001
	.lcomm _work_array,256
