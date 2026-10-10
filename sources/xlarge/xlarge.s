	.file	"xlarge.c"
	.data

! Hitachi SH cc1 (cygnus-2.7-96q3 SOA-960904) arguments: -fpeephole
! -ffunction-cse -fkeep-static-consts -freg-struct-return -fcommon
! -fgnu-linker

gcc2_compiled.:
___gnu_compiled_c:
	.text
	.align 2
	.global	_wl_0
_wl_0:
	mov.l	r14,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov.l	@r14,r1
	mov	r1,r3
	mov	r3,r2
	add	r2,r2
	add	r1,r2
	mov.l	@(4,r14),r3
	mov	r2,r1
	add	r3,r1
	mov.l	@r14,r2
	mov.l	@(4,r14),r3
	sub	r3,r2
	sub	r2,r1
	mov	r1,r0
	bra	L1
	nop
L1:
	add	#8,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_1
_wl_1:
	mov.l	r14,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	cmp/gt	r2,r1
	bf	L3
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	sub	r2,r1
	mov	r1,r0
	bra	L2
	nop
L3:
	mov.l	@(4,r14),r1
	mov.l	@r14,r2
	sub	r2,r1
	mov	r1,r0
	bra	L2
	nop
L2:
	add	#8,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_2
_wl_2:
	mov.l	r14,@-r15
	add	#-16,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov	#0,r1
	mov.l	r1,@(12,r14)
	mov	#0,r1
	mov.l	r1,@(8,r14)
L5:
	mov.l	@(8,r14),r1
	mov.l	@(4,r14),r2
	cmp/ge	r2,r1
	bf	L8
	bra	L6
	nop
L8:
	mov.l	@r14,r1
	mov.l	@(8,r14),r2
	add	r2,r1
	mov.l	@(12,r14),r2
	add	r2,r1
	mov.l	r1,@(12,r14)
L7:
	mov.l	@(8,r14),r2
	mov	r2,r1
	add	#1,r1
	mov	r1,r2
	mov.l	r2,@(8,r14)
	bra	L5
	nop
L6:
	mov.l	@(12,r14),r0
	bra	L4
	nop
L4:
	add	#16,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_3
_wl_3:
	mov.l	r14,@-r15
	sts.l	pr,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov.l	@r14,r1
	mov	r1,r2
	cmp/pz	r2
	bt	L16
	add	#3,r2
L16:
	shar	r2
	shar	r2
	mov	r2,r3
	mov	r3,r2
	mov	r2,r3
	shll2	r3
	mov	r1,r0
	sub	r3,r0
	cmp/eq	#1,r0
	bt	L12
	mov	#1,r1
	cmp/gt	r1,r0
	bt	L17
	tst	r0,r0
	bt	L11
	bra	L14
	nop
L17:
	cmp/eq	#2,r0
	bt	L13
	bra	L14
	nop
L11:
	mov.l	@(4,r14),r0
	bra	L9
	nop
L12:
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	add	r2,r1
	mov	r1,r0
	bra	L9
	nop
L13:
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	sub	r2,r1
	mov	r1,r0
	bra	L9
	nop
L14:
	bra	L10
	nop
L10:
	mov.l	L18,r1
	mov.l	@(4,r14),r5
	mov.l	@r14,r4
	jsr	@r1
	nop
	mov	r0,r1
	mov	r1,r0
	bra	L9
	nop
L9:
	add	#8,r14
	mov	r14,r15
	lds.l	@r15+,pr
	mov.l	@r15+,r14
	rts	
	nop
L19:
	.align 2
L18:
	.long	___mulsi3
	.align 2
	.global	_wl_4
_wl_4:
	mov.l	r14,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
L21:
	mov.l	@r14,r1
	cmp/pl	r1
	bt	L23
	bra	L22
	nop
L23:
	mov.l	@r14,r2
	mov	#7,r1
	and	r2,r1
	mov.l	@(4,r14),r2
	add	r2,r1
	mov.l	r1,@(4,r14)
	mov.l	@r14,r2
	mov	r2,r1
	shar	r1
	shar	r1
	mov	r1,r2
	mov.l	r2,@r14
	bra	L21
	nop
L22:
	mov.l	@(4,r14),r0
	bra	L20
	nop
L20:
	add	#8,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_5
_wl_5:
	mov.l	r14,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov.l	@r14,r1
	mov	r1,r3
	mov	r3,r2
	add	r2,r2
	add	r1,r2
	mov.l	@(4,r14),r3
	mov	r2,r1
	add	r3,r1
	mov.l	@r14,r2
	mov.l	@(4,r14),r3
	sub	r3,r2
	sub	r2,r1
	mov	r1,r0
	bra	L24
	nop
L24:
	add	#8,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_6
_wl_6:
	mov.l	r14,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	cmp/gt	r2,r1
	bf	L26
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	sub	r2,r1
	mov	r1,r0
	bra	L25
	nop
L26:
	mov.l	@(4,r14),r1
	mov.l	@r14,r2
	sub	r2,r1
	mov	r1,r0
	bra	L25
	nop
L25:
	add	#8,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_7
_wl_7:
	mov.l	r14,@-r15
	add	#-16,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov	#0,r1
	mov.l	r1,@(12,r14)
	mov	#0,r1
	mov.l	r1,@(8,r14)
L28:
	mov.l	@(8,r14),r1
	mov.l	@(4,r14),r2
	cmp/ge	r2,r1
	bf	L31
	bra	L29
	nop
L31:
	mov.l	@r14,r1
	mov.l	@(8,r14),r2
	add	r2,r1
	mov.l	@(12,r14),r2
	add	r2,r1
	mov.l	r1,@(12,r14)
L30:
	mov.l	@(8,r14),r2
	mov	r2,r1
	add	#1,r1
	mov	r1,r2
	mov.l	r2,@(8,r14)
	bra	L28
	nop
L29:
	mov.l	@(12,r14),r0
	bra	L27
	nop
L27:
	add	#16,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_8
_wl_8:
	mov.l	r14,@-r15
	sts.l	pr,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov.l	@r14,r1
	mov	r1,r2
	cmp/pz	r2
	bt	L39
	add	#3,r2
L39:
	shar	r2
	shar	r2
	mov	r2,r3
	mov	r3,r2
	mov	r2,r3
	shll2	r3
	mov	r1,r0
	sub	r3,r0
	cmp/eq	#1,r0
	bt	L35
	mov	#1,r1
	cmp/gt	r1,r0
	bt	L40
	tst	r0,r0
	bt	L34
	bra	L37
	nop
L40:
	cmp/eq	#2,r0
	bt	L36
	bra	L37
	nop
L34:
	mov.l	@(4,r14),r0
	bra	L32
	nop
L35:
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	add	r2,r1
	mov	r1,r0
	bra	L32
	nop
L36:
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	sub	r2,r1
	mov	r1,r0
	bra	L32
	nop
L37:
	bra	L33
	nop
L33:
	mov.l	L41,r1
	mov.l	@(4,r14),r5
	mov.l	@r14,r4
	jsr	@r1
	nop
	mov	r0,r1
	mov	r1,r0
	bra	L32
	nop
L32:
	add	#8,r14
	mov	r14,r15
	lds.l	@r15+,pr
	mov.l	@r15+,r14
	rts	
	nop
L42:
	.align 2
L41:
	.long	___mulsi3
	.align 2
	.global	_wl_9
_wl_9:
	mov.l	r14,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
L44:
	mov.l	@r14,r1
	cmp/pl	r1
	bt	L46
	bra	L45
	nop
L46:
	mov.l	@r14,r2
	mov	#7,r1
	and	r2,r1
	mov.l	@(4,r14),r2
	add	r2,r1
	mov.l	r1,@(4,r14)
	mov.l	@r14,r2
	mov	r2,r1
	shar	r1
	shar	r1
	mov	r1,r2
	mov.l	r2,@r14
	bra	L44
	nop
L45:
	mov.l	@(4,r14),r0
	bra	L43
	nop
L43:
	add	#8,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_10
_wl_10:
	mov.l	r14,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov.l	@r14,r1
	mov	r1,r3
	mov	r3,r2
	add	r2,r2
	add	r1,r2
	mov.l	@(4,r14),r3
	mov	r2,r1
	add	r3,r1
	mov.l	@r14,r2
	mov.l	@(4,r14),r3
	sub	r3,r2
	sub	r2,r1
	mov	r1,r0
	bra	L47
	nop
L47:
	add	#8,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_11
_wl_11:
	mov.l	r14,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	cmp/gt	r2,r1
	bf	L49
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	sub	r2,r1
	mov	r1,r0
	bra	L48
	nop
L49:
	mov.l	@(4,r14),r1
	mov.l	@r14,r2
	sub	r2,r1
	mov	r1,r0
	bra	L48
	nop
L48:
	add	#8,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_12
_wl_12:
	mov.l	r14,@-r15
	add	#-16,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov	#0,r1
	mov.l	r1,@(12,r14)
	mov	#0,r1
	mov.l	r1,@(8,r14)
L51:
	mov.l	@(8,r14),r1
	mov.l	@(4,r14),r2
	cmp/ge	r2,r1
	bf	L54
	bra	L52
	nop
L54:
	mov.l	@r14,r1
	mov.l	@(8,r14),r2
	add	r2,r1
	mov.l	@(12,r14),r2
	add	r2,r1
	mov.l	r1,@(12,r14)
L53:
	mov.l	@(8,r14),r2
	mov	r2,r1
	add	#1,r1
	mov	r1,r2
	mov.l	r2,@(8,r14)
	bra	L51
	nop
L52:
	mov.l	@(12,r14),r0
	bra	L50
	nop
L50:
	add	#16,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_13
_wl_13:
	mov.l	r14,@-r15
	sts.l	pr,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov.l	@r14,r1
	mov	r1,r2
	cmp/pz	r2
	bt	L62
	add	#3,r2
L62:
	shar	r2
	shar	r2
	mov	r2,r3
	mov	r3,r2
	mov	r2,r3
	shll2	r3
	mov	r1,r0
	sub	r3,r0
	cmp/eq	#1,r0
	bt	L58
	mov	#1,r1
	cmp/gt	r1,r0
	bt	L63
	tst	r0,r0
	bt	L57
	bra	L60
	nop
L63:
	cmp/eq	#2,r0
	bt	L59
	bra	L60
	nop
L57:
	mov.l	@(4,r14),r0
	bra	L55
	nop
L58:
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	add	r2,r1
	mov	r1,r0
	bra	L55
	nop
L59:
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	sub	r2,r1
	mov	r1,r0
	bra	L55
	nop
L60:
	bra	L56
	nop
L56:
	mov.l	L64,r1
	mov.l	@(4,r14),r5
	mov.l	@r14,r4
	jsr	@r1
	nop
	mov	r0,r1
	mov	r1,r0
	bra	L55
	nop
L55:
	add	#8,r14
	mov	r14,r15
	lds.l	@r15+,pr
	mov.l	@r15+,r14
	rts	
	nop
L65:
	.align 2
L64:
	.long	___mulsi3
	.align 2
	.global	_wl_14
_wl_14:
	mov.l	r14,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
L67:
	mov.l	@r14,r1
	cmp/pl	r1
	bt	L69
	bra	L68
	nop
L69:
	mov.l	@r14,r2
	mov	#7,r1
	and	r2,r1
	mov.l	@(4,r14),r2
	add	r2,r1
	mov.l	r1,@(4,r14)
	mov.l	@r14,r2
	mov	r2,r1
	shar	r1
	shar	r1
	mov	r1,r2
	mov.l	r2,@r14
	bra	L67
	nop
L68:
	mov.l	@(4,r14),r0
	bra	L66
	nop
L66:
	add	#8,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_15
_wl_15:
	mov.l	r14,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov.l	@r14,r1
	mov	r1,r3
	mov	r3,r2
	add	r2,r2
	add	r1,r2
	mov.l	@(4,r14),r3
	mov	r2,r1
	add	r3,r1
	mov.l	@r14,r2
	mov.l	@(4,r14),r3
	sub	r3,r2
	sub	r2,r1
	mov	r1,r0
	bra	L70
	nop
L70:
	add	#8,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_16
_wl_16:
	mov.l	r14,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	cmp/gt	r2,r1
	bf	L72
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	sub	r2,r1
	mov	r1,r0
	bra	L71
	nop
L72:
	mov.l	@(4,r14),r1
	mov.l	@r14,r2
	sub	r2,r1
	mov	r1,r0
	bra	L71
	nop
L71:
	add	#8,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_17
_wl_17:
	mov.l	r14,@-r15
	add	#-16,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov	#0,r1
	mov.l	r1,@(12,r14)
	mov	#0,r1
	mov.l	r1,@(8,r14)
L74:
	mov.l	@(8,r14),r1
	mov.l	@(4,r14),r2
	cmp/ge	r2,r1
	bf	L77
	bra	L75
	nop
L77:
	mov.l	@r14,r1
	mov.l	@(8,r14),r2
	add	r2,r1
	mov.l	@(12,r14),r2
	add	r2,r1
	mov.l	r1,@(12,r14)
L76:
	mov.l	@(8,r14),r2
	mov	r2,r1
	add	#1,r1
	mov	r1,r2
	mov.l	r2,@(8,r14)
	bra	L74
	nop
L75:
	mov.l	@(12,r14),r0
	bra	L73
	nop
L73:
	add	#16,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_18
_wl_18:
	mov.l	r14,@-r15
	sts.l	pr,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov.l	@r14,r1
	mov	r1,r2
	cmp/pz	r2
	bt	L85
	add	#3,r2
L85:
	shar	r2
	shar	r2
	mov	r2,r3
	mov	r3,r2
	mov	r2,r3
	shll2	r3
	mov	r1,r0
	sub	r3,r0
	cmp/eq	#1,r0
	bt	L81
	mov	#1,r1
	cmp/gt	r1,r0
	bt	L86
	tst	r0,r0
	bt	L80
	bra	L83
	nop
L86:
	cmp/eq	#2,r0
	bt	L82
	bra	L83
	nop
L80:
	mov.l	@(4,r14),r0
	bra	L78
	nop
L81:
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	add	r2,r1
	mov	r1,r0
	bra	L78
	nop
L82:
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	sub	r2,r1
	mov	r1,r0
	bra	L78
	nop
L83:
	bra	L79
	nop
L79:
	mov.l	L87,r1
	mov.l	@(4,r14),r5
	mov.l	@r14,r4
	jsr	@r1
	nop
	mov	r0,r1
	mov	r1,r0
	bra	L78
	nop
L78:
	add	#8,r14
	mov	r14,r15
	lds.l	@r15+,pr
	mov.l	@r15+,r14
	rts	
	nop
L88:
	.align 2
L87:
	.long	___mulsi3
	.align 2
	.global	_wl_19
_wl_19:
	mov.l	r14,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
L90:
	mov.l	@r14,r1
	cmp/pl	r1
	bt	L92
	bra	L91
	nop
L92:
	mov.l	@r14,r2
	mov	#7,r1
	and	r2,r1
	mov.l	@(4,r14),r2
	add	r2,r1
	mov.l	r1,@(4,r14)
	mov.l	@r14,r2
	mov	r2,r1
	shar	r1
	shar	r1
	mov	r1,r2
	mov.l	r2,@r14
	bra	L90
	nop
L91:
	mov.l	@(4,r14),r0
	bra	L89
	nop
L89:
	add	#8,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_20
_wl_20:
	mov.l	r14,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov.l	@r14,r1
	mov	r1,r3
	mov	r3,r2
	add	r2,r2
	add	r1,r2
	mov.l	@(4,r14),r3
	mov	r2,r1
	add	r3,r1
	mov.l	@r14,r2
	mov.l	@(4,r14),r3
	sub	r3,r2
	sub	r2,r1
	mov	r1,r0
	bra	L93
	nop
L93:
	add	#8,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_21
_wl_21:
	mov.l	r14,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	cmp/gt	r2,r1
	bf	L95
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	sub	r2,r1
	mov	r1,r0
	bra	L94
	nop
L95:
	mov.l	@(4,r14),r1
	mov.l	@r14,r2
	sub	r2,r1
	mov	r1,r0
	bra	L94
	nop
L94:
	add	#8,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_22
_wl_22:
	mov.l	r14,@-r15
	add	#-16,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov	#0,r1
	mov.l	r1,@(12,r14)
	mov	#0,r1
	mov.l	r1,@(8,r14)
L97:
	mov.l	@(8,r14),r1
	mov.l	@(4,r14),r2
	cmp/ge	r2,r1
	bf	L100
	bra	L98
	nop
L100:
	mov.l	@r14,r1
	mov.l	@(8,r14),r2
	add	r2,r1
	mov.l	@(12,r14),r2
	add	r2,r1
	mov.l	r1,@(12,r14)
L99:
	mov.l	@(8,r14),r2
	mov	r2,r1
	add	#1,r1
	mov	r1,r2
	mov.l	r2,@(8,r14)
	bra	L97
	nop
L98:
	mov.l	@(12,r14),r0
	bra	L96
	nop
L96:
	add	#16,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_23
_wl_23:
	mov.l	r14,@-r15
	sts.l	pr,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov.l	@r14,r1
	mov	r1,r2
	cmp/pz	r2
	bt	L108
	add	#3,r2
L108:
	shar	r2
	shar	r2
	mov	r2,r3
	mov	r3,r2
	mov	r2,r3
	shll2	r3
	mov	r1,r0
	sub	r3,r0
	cmp/eq	#1,r0
	bt	L104
	mov	#1,r1
	cmp/gt	r1,r0
	bt	L109
	tst	r0,r0
	bt	L103
	bra	L106
	nop
L109:
	cmp/eq	#2,r0
	bt	L105
	bra	L106
	nop
L103:
	mov.l	@(4,r14),r0
	bra	L101
	nop
L104:
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	add	r2,r1
	mov	r1,r0
	bra	L101
	nop
L105:
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	sub	r2,r1
	mov	r1,r0
	bra	L101
	nop
L106:
	bra	L102
	nop
L102:
	mov.l	L110,r1
	mov.l	@(4,r14),r5
	mov.l	@r14,r4
	jsr	@r1
	nop
	mov	r0,r1
	mov	r1,r0
	bra	L101
	nop
L101:
	add	#8,r14
	mov	r14,r15
	lds.l	@r15+,pr
	mov.l	@r15+,r14
	rts	
	nop
L111:
	.align 2
L110:
	.long	___mulsi3
	.align 2
	.global	_wl_24
_wl_24:
	mov.l	r14,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
L113:
	mov.l	@r14,r1
	cmp/pl	r1
	bt	L115
	bra	L114
	nop
L115:
	mov.l	@r14,r2
	mov	#7,r1
	and	r2,r1
	mov.l	@(4,r14),r2
	add	r2,r1
	mov.l	r1,@(4,r14)
	mov.l	@r14,r2
	mov	r2,r1
	shar	r1
	shar	r1
	mov	r1,r2
	mov.l	r2,@r14
	bra	L113
	nop
L114:
	mov.l	@(4,r14),r0
	bra	L112
	nop
L112:
	add	#8,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_25
_wl_25:
	mov.l	r14,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov.l	@r14,r1
	mov	r1,r3
	mov	r3,r2
	add	r2,r2
	add	r1,r2
	mov.l	@(4,r14),r3
	mov	r2,r1
	add	r3,r1
	mov.l	@r14,r2
	mov.l	@(4,r14),r3
	sub	r3,r2
	sub	r2,r1
	mov	r1,r0
	bra	L116
	nop
L116:
	add	#8,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_26
_wl_26:
	mov.l	r14,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	cmp/gt	r2,r1
	bf	L118
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	sub	r2,r1
	mov	r1,r0
	bra	L117
	nop
L118:
	mov.l	@(4,r14),r1
	mov.l	@r14,r2
	sub	r2,r1
	mov	r1,r0
	bra	L117
	nop
L117:
	add	#8,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_27
_wl_27:
	mov.l	r14,@-r15
	add	#-16,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov	#0,r1
	mov.l	r1,@(12,r14)
	mov	#0,r1
	mov.l	r1,@(8,r14)
L120:
	mov.l	@(8,r14),r1
	mov.l	@(4,r14),r2
	cmp/ge	r2,r1
	bf	L123
	bra	L121
	nop
L123:
	mov.l	@r14,r1
	mov.l	@(8,r14),r2
	add	r2,r1
	mov.l	@(12,r14),r2
	add	r2,r1
	mov.l	r1,@(12,r14)
L122:
	mov.l	@(8,r14),r2
	mov	r2,r1
	add	#1,r1
	mov	r1,r2
	mov.l	r2,@(8,r14)
	bra	L120
	nop
L121:
	mov.l	@(12,r14),r0
	bra	L119
	nop
L119:
	add	#16,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_28
_wl_28:
	mov.l	r14,@-r15
	sts.l	pr,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov.l	@r14,r1
	mov	r1,r2
	cmp/pz	r2
	bt	L131
	add	#3,r2
L131:
	shar	r2
	shar	r2
	mov	r2,r3
	mov	r3,r2
	mov	r2,r3
	shll2	r3
	mov	r1,r0
	sub	r3,r0
	cmp/eq	#1,r0
	bt	L127
	mov	#1,r1
	cmp/gt	r1,r0
	bt	L132
	tst	r0,r0
	bt	L126
	bra	L129
	nop
L132:
	cmp/eq	#2,r0
	bt	L128
	bra	L129
	nop
L126:
	mov.l	@(4,r14),r0
	bra	L124
	nop
L127:
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	add	r2,r1
	mov	r1,r0
	bra	L124
	nop
L128:
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	sub	r2,r1
	mov	r1,r0
	bra	L124
	nop
L129:
	bra	L125
	nop
L125:
	mov.l	L133,r1
	mov.l	@(4,r14),r5
	mov.l	@r14,r4
	jsr	@r1
	nop
	mov	r0,r1
	mov	r1,r0
	bra	L124
	nop
L124:
	add	#8,r14
	mov	r14,r15
	lds.l	@r15+,pr
	mov.l	@r15+,r14
	rts	
	nop
L134:
	.align 2
L133:
	.long	___mulsi3
	.align 2
	.global	_wl_29
_wl_29:
	mov.l	r14,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
L136:
	mov.l	@r14,r1
	cmp/pl	r1
	bt	L138
	bra	L137
	nop
L138:
	mov.l	@r14,r2
	mov	#7,r1
	and	r2,r1
	mov.l	@(4,r14),r2
	add	r2,r1
	mov.l	r1,@(4,r14)
	mov.l	@r14,r2
	mov	r2,r1
	shar	r1
	shar	r1
	mov	r1,r2
	mov.l	r2,@r14
	bra	L136
	nop
L137:
	mov.l	@(4,r14),r0
	bra	L135
	nop
L135:
	add	#8,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_30
_wl_30:
	mov.l	r14,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov.l	@r14,r1
	mov	r1,r3
	mov	r3,r2
	add	r2,r2
	add	r1,r2
	mov.l	@(4,r14),r3
	mov	r2,r1
	add	r3,r1
	mov.l	@r14,r2
	mov.l	@(4,r14),r3
	sub	r3,r2
	sub	r2,r1
	mov	r1,r0
	bra	L139
	nop
L139:
	add	#8,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_31
_wl_31:
	mov.l	r14,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	cmp/gt	r2,r1
	bf	L141
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	sub	r2,r1
	mov	r1,r0
	bra	L140
	nop
L141:
	mov.l	@(4,r14),r1
	mov.l	@r14,r2
	sub	r2,r1
	mov	r1,r0
	bra	L140
	nop
L140:
	add	#8,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_32
_wl_32:
	mov.l	r14,@-r15
	add	#-16,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov	#0,r1
	mov.l	r1,@(12,r14)
	mov	#0,r1
	mov.l	r1,@(8,r14)
L143:
	mov.l	@(8,r14),r1
	mov.l	@(4,r14),r2
	cmp/ge	r2,r1
	bf	L146
	bra	L144
	nop
L146:
	mov.l	@r14,r1
	mov.l	@(8,r14),r2
	add	r2,r1
	mov.l	@(12,r14),r2
	add	r2,r1
	mov.l	r1,@(12,r14)
L145:
	mov.l	@(8,r14),r2
	mov	r2,r1
	add	#1,r1
	mov	r1,r2
	mov.l	r2,@(8,r14)
	bra	L143
	nop
L144:
	mov.l	@(12,r14),r0
	bra	L142
	nop
L142:
	add	#16,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_33
_wl_33:
	mov.l	r14,@-r15
	sts.l	pr,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov.l	@r14,r1
	mov	r1,r2
	cmp/pz	r2
	bt	L154
	add	#3,r2
L154:
	shar	r2
	shar	r2
	mov	r2,r3
	mov	r3,r2
	mov	r2,r3
	shll2	r3
	mov	r1,r0
	sub	r3,r0
	cmp/eq	#1,r0
	bt	L150
	mov	#1,r1
	cmp/gt	r1,r0
	bt	L155
	tst	r0,r0
	bt	L149
	bra	L152
	nop
L155:
	cmp/eq	#2,r0
	bt	L151
	bra	L152
	nop
L149:
	mov.l	@(4,r14),r0
	bra	L147
	nop
L150:
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	add	r2,r1
	mov	r1,r0
	bra	L147
	nop
L151:
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	sub	r2,r1
	mov	r1,r0
	bra	L147
	nop
L152:
	bra	L148
	nop
L148:
	mov.l	L156,r1
	mov.l	@(4,r14),r5
	mov.l	@r14,r4
	jsr	@r1
	nop
	mov	r0,r1
	mov	r1,r0
	bra	L147
	nop
L147:
	add	#8,r14
	mov	r14,r15
	lds.l	@r15+,pr
	mov.l	@r15+,r14
	rts	
	nop
L157:
	.align 2
L156:
	.long	___mulsi3
	.align 2
	.global	_wl_34
_wl_34:
	mov.l	r14,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
L159:
	mov.l	@r14,r1
	cmp/pl	r1
	bt	L161
	bra	L160
	nop
L161:
	mov.l	@r14,r2
	mov	#7,r1
	and	r2,r1
	mov.l	@(4,r14),r2
	add	r2,r1
	mov.l	r1,@(4,r14)
	mov.l	@r14,r2
	mov	r2,r1
	shar	r1
	shar	r1
	mov	r1,r2
	mov.l	r2,@r14
	bra	L159
	nop
L160:
	mov.l	@(4,r14),r0
	bra	L158
	nop
L158:
	add	#8,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_35
_wl_35:
	mov.l	r14,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov.l	@r14,r1
	mov	r1,r3
	mov	r3,r2
	add	r2,r2
	add	r1,r2
	mov.l	@(4,r14),r3
	mov	r2,r1
	add	r3,r1
	mov.l	@r14,r2
	mov.l	@(4,r14),r3
	sub	r3,r2
	sub	r2,r1
	mov	r1,r0
	bra	L162
	nop
L162:
	add	#8,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_36
_wl_36:
	mov.l	r14,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	cmp/gt	r2,r1
	bf	L164
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	sub	r2,r1
	mov	r1,r0
	bra	L163
	nop
L164:
	mov.l	@(4,r14),r1
	mov.l	@r14,r2
	sub	r2,r1
	mov	r1,r0
	bra	L163
	nop
L163:
	add	#8,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_37
_wl_37:
	mov.l	r14,@-r15
	add	#-16,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov	#0,r1
	mov.l	r1,@(12,r14)
	mov	#0,r1
	mov.l	r1,@(8,r14)
L166:
	mov.l	@(8,r14),r1
	mov.l	@(4,r14),r2
	cmp/ge	r2,r1
	bf	L169
	bra	L167
	nop
L169:
	mov.l	@r14,r1
	mov.l	@(8,r14),r2
	add	r2,r1
	mov.l	@(12,r14),r2
	add	r2,r1
	mov.l	r1,@(12,r14)
L168:
	mov.l	@(8,r14),r2
	mov	r2,r1
	add	#1,r1
	mov	r1,r2
	mov.l	r2,@(8,r14)
	bra	L166
	nop
L167:
	mov.l	@(12,r14),r0
	bra	L165
	nop
L165:
	add	#16,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_38
_wl_38:
	mov.l	r14,@-r15
	sts.l	pr,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov.l	@r14,r1
	mov	r1,r2
	cmp/pz	r2
	bt	L177
	add	#3,r2
L177:
	shar	r2
	shar	r2
	mov	r2,r3
	mov	r3,r2
	mov	r2,r3
	shll2	r3
	mov	r1,r0
	sub	r3,r0
	cmp/eq	#1,r0
	bt	L173
	mov	#1,r1
	cmp/gt	r1,r0
	bt	L178
	tst	r0,r0
	bt	L172
	bra	L175
	nop
L178:
	cmp/eq	#2,r0
	bt	L174
	bra	L175
	nop
L172:
	mov.l	@(4,r14),r0
	bra	L170
	nop
L173:
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	add	r2,r1
	mov	r1,r0
	bra	L170
	nop
L174:
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	sub	r2,r1
	mov	r1,r0
	bra	L170
	nop
L175:
	bra	L171
	nop
L171:
	mov.l	L179,r1
	mov.l	@(4,r14),r5
	mov.l	@r14,r4
	jsr	@r1
	nop
	mov	r0,r1
	mov	r1,r0
	bra	L170
	nop
L170:
	add	#8,r14
	mov	r14,r15
	lds.l	@r15+,pr
	mov.l	@r15+,r14
	rts	
	nop
L180:
	.align 2
L179:
	.long	___mulsi3
	.align 2
	.global	_wl_39
_wl_39:
	mov.l	r14,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
L182:
	mov.l	@r14,r1
	cmp/pl	r1
	bt	L184
	bra	L183
	nop
L184:
	mov.l	@r14,r2
	mov	#7,r1
	and	r2,r1
	mov.l	@(4,r14),r2
	add	r2,r1
	mov.l	r1,@(4,r14)
	mov.l	@r14,r2
	mov	r2,r1
	shar	r1
	shar	r1
	mov	r1,r2
	mov.l	r2,@r14
	bra	L182
	nop
L183:
	mov.l	@(4,r14),r0
	bra	L181
	nop
L181:
	add	#8,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_40
_wl_40:
	mov.l	r14,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov.l	@r14,r1
	mov	r1,r3
	mov	r3,r2
	add	r2,r2
	add	r1,r2
	mov.l	@(4,r14),r3
	mov	r2,r1
	add	r3,r1
	mov.l	@r14,r2
	mov.l	@(4,r14),r3
	sub	r3,r2
	sub	r2,r1
	mov	r1,r0
	bra	L185
	nop
L185:
	add	#8,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_41
_wl_41:
	mov.l	r14,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	cmp/gt	r2,r1
	bf	L187
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	sub	r2,r1
	mov	r1,r0
	bra	L186
	nop
L187:
	mov.l	@(4,r14),r1
	mov.l	@r14,r2
	sub	r2,r1
	mov	r1,r0
	bra	L186
	nop
L186:
	add	#8,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_42
_wl_42:
	mov.l	r14,@-r15
	add	#-16,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov	#0,r1
	mov.l	r1,@(12,r14)
	mov	#0,r1
	mov.l	r1,@(8,r14)
L189:
	mov.l	@(8,r14),r1
	mov.l	@(4,r14),r2
	cmp/ge	r2,r1
	bf	L192
	bra	L190
	nop
L192:
	mov.l	@r14,r1
	mov.l	@(8,r14),r2
	add	r2,r1
	mov.l	@(12,r14),r2
	add	r2,r1
	mov.l	r1,@(12,r14)
L191:
	mov.l	@(8,r14),r2
	mov	r2,r1
	add	#1,r1
	mov	r1,r2
	mov.l	r2,@(8,r14)
	bra	L189
	nop
L190:
	mov.l	@(12,r14),r0
	bra	L188
	nop
L188:
	add	#16,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_43
_wl_43:
	mov.l	r14,@-r15
	sts.l	pr,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov.l	@r14,r1
	mov	r1,r2
	cmp/pz	r2
	bt	L200
	add	#3,r2
L200:
	shar	r2
	shar	r2
	mov	r2,r3
	mov	r3,r2
	mov	r2,r3
	shll2	r3
	mov	r1,r0
	sub	r3,r0
	cmp/eq	#1,r0
	bt	L196
	mov	#1,r1
	cmp/gt	r1,r0
	bt	L201
	tst	r0,r0
	bt	L195
	bra	L198
	nop
L201:
	cmp/eq	#2,r0
	bt	L197
	bra	L198
	nop
L195:
	mov.l	@(4,r14),r0
	bra	L193
	nop
L196:
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	add	r2,r1
	mov	r1,r0
	bra	L193
	nop
L197:
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	sub	r2,r1
	mov	r1,r0
	bra	L193
	nop
L198:
	bra	L194
	nop
L194:
	mov.l	L202,r1
	mov.l	@(4,r14),r5
	mov.l	@r14,r4
	jsr	@r1
	nop
	mov	r0,r1
	mov	r1,r0
	bra	L193
	nop
L193:
	add	#8,r14
	mov	r14,r15
	lds.l	@r15+,pr
	mov.l	@r15+,r14
	rts	
	nop
L203:
	.align 2
L202:
	.long	___mulsi3
	.align 2
	.global	_wl_44
_wl_44:
	mov.l	r14,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
L205:
	mov.l	@r14,r1
	cmp/pl	r1
	bt	L207
	bra	L206
	nop
L207:
	mov.l	@r14,r2
	mov	#7,r1
	and	r2,r1
	mov.l	@(4,r14),r2
	add	r2,r1
	mov.l	r1,@(4,r14)
	mov.l	@r14,r2
	mov	r2,r1
	shar	r1
	shar	r1
	mov	r1,r2
	mov.l	r2,@r14
	bra	L205
	nop
L206:
	mov.l	@(4,r14),r0
	bra	L204
	nop
L204:
	add	#8,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_45
_wl_45:
	mov.l	r14,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov.l	@r14,r1
	mov	r1,r3
	mov	r3,r2
	add	r2,r2
	add	r1,r2
	mov.l	@(4,r14),r3
	mov	r2,r1
	add	r3,r1
	mov.l	@r14,r2
	mov.l	@(4,r14),r3
	sub	r3,r2
	sub	r2,r1
	mov	r1,r0
	bra	L208
	nop
L208:
	add	#8,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_46
_wl_46:
	mov.l	r14,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	cmp/gt	r2,r1
	bf	L210
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	sub	r2,r1
	mov	r1,r0
	bra	L209
	nop
L210:
	mov.l	@(4,r14),r1
	mov.l	@r14,r2
	sub	r2,r1
	mov	r1,r0
	bra	L209
	nop
L209:
	add	#8,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_47
_wl_47:
	mov.l	r14,@-r15
	add	#-16,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov	#0,r1
	mov.l	r1,@(12,r14)
	mov	#0,r1
	mov.l	r1,@(8,r14)
L212:
	mov.l	@(8,r14),r1
	mov.l	@(4,r14),r2
	cmp/ge	r2,r1
	bf	L215
	bra	L213
	nop
L215:
	mov.l	@r14,r1
	mov.l	@(8,r14),r2
	add	r2,r1
	mov.l	@(12,r14),r2
	add	r2,r1
	mov.l	r1,@(12,r14)
L214:
	mov.l	@(8,r14),r2
	mov	r2,r1
	add	#1,r1
	mov	r1,r2
	mov.l	r2,@(8,r14)
	bra	L212
	nop
L213:
	mov.l	@(12,r14),r0
	bra	L211
	nop
L211:
	add	#16,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_48
_wl_48:
	mov.l	r14,@-r15
	sts.l	pr,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov.l	@r14,r1
	mov	r1,r2
	cmp/pz	r2
	bt	L223
	add	#3,r2
L223:
	shar	r2
	shar	r2
	mov	r2,r3
	mov	r3,r2
	mov	r2,r3
	shll2	r3
	mov	r1,r0
	sub	r3,r0
	cmp/eq	#1,r0
	bt	L219
	mov	#1,r1
	cmp/gt	r1,r0
	bt	L224
	tst	r0,r0
	bt	L218
	bra	L221
	nop
L224:
	cmp/eq	#2,r0
	bt	L220
	bra	L221
	nop
L218:
	mov.l	@(4,r14),r0
	bra	L216
	nop
L219:
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	add	r2,r1
	mov	r1,r0
	bra	L216
	nop
L220:
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	sub	r2,r1
	mov	r1,r0
	bra	L216
	nop
L221:
	bra	L217
	nop
L217:
	mov.l	L225,r1
	mov.l	@(4,r14),r5
	mov.l	@r14,r4
	jsr	@r1
	nop
	mov	r0,r1
	mov	r1,r0
	bra	L216
	nop
L216:
	add	#8,r14
	mov	r14,r15
	lds.l	@r15+,pr
	mov.l	@r15+,r14
	rts	
	nop
L226:
	.align 2
L225:
	.long	___mulsi3
	.align 2
	.global	_wl_49
_wl_49:
	mov.l	r14,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
L228:
	mov.l	@r14,r1
	cmp/pl	r1
	bt	L230
	bra	L229
	nop
L230:
	mov.l	@r14,r2
	mov	#7,r1
	and	r2,r1
	mov.l	@(4,r14),r2
	add	r2,r1
	mov.l	r1,@(4,r14)
	mov.l	@r14,r2
	mov	r2,r1
	shar	r1
	shar	r1
	mov	r1,r2
	mov.l	r2,@r14
	bra	L228
	nop
L229:
	mov.l	@(4,r14),r0
	bra	L227
	nop
L227:
	add	#8,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_50
_wl_50:
	mov.l	r14,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov.l	@r14,r1
	mov	r1,r3
	mov	r3,r2
	add	r2,r2
	add	r1,r2
	mov.l	@(4,r14),r3
	mov	r2,r1
	add	r3,r1
	mov.l	@r14,r2
	mov.l	@(4,r14),r3
	sub	r3,r2
	sub	r2,r1
	mov	r1,r0
	bra	L231
	nop
L231:
	add	#8,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_51
_wl_51:
	mov.l	r14,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	cmp/gt	r2,r1
	bf	L233
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	sub	r2,r1
	mov	r1,r0
	bra	L232
	nop
L233:
	mov.l	@(4,r14),r1
	mov.l	@r14,r2
	sub	r2,r1
	mov	r1,r0
	bra	L232
	nop
L232:
	add	#8,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_52
_wl_52:
	mov.l	r14,@-r15
	add	#-16,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov	#0,r1
	mov.l	r1,@(12,r14)
	mov	#0,r1
	mov.l	r1,@(8,r14)
L235:
	mov.l	@(8,r14),r1
	mov.l	@(4,r14),r2
	cmp/ge	r2,r1
	bf	L238
	bra	L236
	nop
L238:
	mov.l	@r14,r1
	mov.l	@(8,r14),r2
	add	r2,r1
	mov.l	@(12,r14),r2
	add	r2,r1
	mov.l	r1,@(12,r14)
L237:
	mov.l	@(8,r14),r2
	mov	r2,r1
	add	#1,r1
	mov	r1,r2
	mov.l	r2,@(8,r14)
	bra	L235
	nop
L236:
	mov.l	@(12,r14),r0
	bra	L234
	nop
L234:
	add	#16,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_53
_wl_53:
	mov.l	r14,@-r15
	sts.l	pr,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov.l	@r14,r1
	mov	r1,r2
	cmp/pz	r2
	bt	L246
	add	#3,r2
L246:
	shar	r2
	shar	r2
	mov	r2,r3
	mov	r3,r2
	mov	r2,r3
	shll2	r3
	mov	r1,r0
	sub	r3,r0
	cmp/eq	#1,r0
	bt	L242
	mov	#1,r1
	cmp/gt	r1,r0
	bt	L247
	tst	r0,r0
	bt	L241
	bra	L244
	nop
L247:
	cmp/eq	#2,r0
	bt	L243
	bra	L244
	nop
L241:
	mov.l	@(4,r14),r0
	bra	L239
	nop
L242:
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	add	r2,r1
	mov	r1,r0
	bra	L239
	nop
L243:
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	sub	r2,r1
	mov	r1,r0
	bra	L239
	nop
L244:
	bra	L240
	nop
L240:
	mov.l	L248,r1
	mov.l	@(4,r14),r5
	mov.l	@r14,r4
	jsr	@r1
	nop
	mov	r0,r1
	mov	r1,r0
	bra	L239
	nop
L239:
	add	#8,r14
	mov	r14,r15
	lds.l	@r15+,pr
	mov.l	@r15+,r14
	rts	
	nop
L249:
	.align 2
L248:
	.long	___mulsi3
	.align 2
	.global	_wl_54
_wl_54:
	mov.l	r14,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
L251:
	mov.l	@r14,r1
	cmp/pl	r1
	bt	L253
	bra	L252
	nop
L253:
	mov.l	@r14,r2
	mov	#7,r1
	and	r2,r1
	mov.l	@(4,r14),r2
	add	r2,r1
	mov.l	r1,@(4,r14)
	mov.l	@r14,r2
	mov	r2,r1
	shar	r1
	shar	r1
	mov	r1,r2
	mov.l	r2,@r14
	bra	L251
	nop
L252:
	mov.l	@(4,r14),r0
	bra	L250
	nop
L250:
	add	#8,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_55
_wl_55:
	mov.l	r14,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov.l	@r14,r1
	mov	r1,r3
	mov	r3,r2
	add	r2,r2
	add	r1,r2
	mov.l	@(4,r14),r3
	mov	r2,r1
	add	r3,r1
	mov.l	@r14,r2
	mov.l	@(4,r14),r3
	sub	r3,r2
	sub	r2,r1
	mov	r1,r0
	bra	L254
	nop
L254:
	add	#8,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_56
_wl_56:
	mov.l	r14,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	cmp/gt	r2,r1
	bf	L256
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	sub	r2,r1
	mov	r1,r0
	bra	L255
	nop
L256:
	mov.l	@(4,r14),r1
	mov.l	@r14,r2
	sub	r2,r1
	mov	r1,r0
	bra	L255
	nop
L255:
	add	#8,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_57
_wl_57:
	mov.l	r14,@-r15
	add	#-16,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov	#0,r1
	mov.l	r1,@(12,r14)
	mov	#0,r1
	mov.l	r1,@(8,r14)
L258:
	mov.l	@(8,r14),r1
	mov.l	@(4,r14),r2
	cmp/ge	r2,r1
	bf	L261
	bra	L259
	nop
L261:
	mov.l	@r14,r1
	mov.l	@(8,r14),r2
	add	r2,r1
	mov.l	@(12,r14),r2
	add	r2,r1
	mov.l	r1,@(12,r14)
L260:
	mov.l	@(8,r14),r2
	mov	r2,r1
	add	#1,r1
	mov	r1,r2
	mov.l	r2,@(8,r14)
	bra	L258
	nop
L259:
	mov.l	@(12,r14),r0
	bra	L257
	nop
L257:
	add	#16,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_58
_wl_58:
	mov.l	r14,@-r15
	sts.l	pr,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov.l	@r14,r1
	mov	r1,r2
	cmp/pz	r2
	bt	L269
	add	#3,r2
L269:
	shar	r2
	shar	r2
	mov	r2,r3
	mov	r3,r2
	mov	r2,r3
	shll2	r3
	mov	r1,r0
	sub	r3,r0
	cmp/eq	#1,r0
	bt	L265
	mov	#1,r1
	cmp/gt	r1,r0
	bt	L270
	tst	r0,r0
	bt	L264
	bra	L267
	nop
L270:
	cmp/eq	#2,r0
	bt	L266
	bra	L267
	nop
L264:
	mov.l	@(4,r14),r0
	bra	L262
	nop
L265:
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	add	r2,r1
	mov	r1,r0
	bra	L262
	nop
L266:
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	sub	r2,r1
	mov	r1,r0
	bra	L262
	nop
L267:
	bra	L263
	nop
L263:
	mov.l	L271,r1
	mov.l	@(4,r14),r5
	mov.l	@r14,r4
	jsr	@r1
	nop
	mov	r0,r1
	mov	r1,r0
	bra	L262
	nop
L262:
	add	#8,r14
	mov	r14,r15
	lds.l	@r15+,pr
	mov.l	@r15+,r14
	rts	
	nop
L272:
	.align 2
L271:
	.long	___mulsi3
	.align 2
	.global	_wl_59
_wl_59:
	mov.l	r14,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
L274:
	mov.l	@r14,r1
	cmp/pl	r1
	bt	L276
	bra	L275
	nop
L276:
	mov.l	@r14,r2
	mov	#7,r1
	and	r2,r1
	mov.l	@(4,r14),r2
	add	r2,r1
	mov.l	r1,@(4,r14)
	mov.l	@r14,r2
	mov	r2,r1
	shar	r1
	shar	r1
	mov	r1,r2
	mov.l	r2,@r14
	bra	L274
	nop
L275:
	mov.l	@(4,r14),r0
	bra	L273
	nop
L273:
	add	#8,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_60
_wl_60:
	mov.l	r14,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov.l	@r14,r1
	mov	r1,r3
	mov	r3,r2
	add	r2,r2
	add	r1,r2
	mov.l	@(4,r14),r3
	mov	r2,r1
	add	r3,r1
	mov.l	@r14,r2
	mov.l	@(4,r14),r3
	sub	r3,r2
	sub	r2,r1
	mov	r1,r0
	bra	L277
	nop
L277:
	add	#8,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_61
_wl_61:
	mov.l	r14,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	cmp/gt	r2,r1
	bf	L279
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	sub	r2,r1
	mov	r1,r0
	bra	L278
	nop
L279:
	mov.l	@(4,r14),r1
	mov.l	@r14,r2
	sub	r2,r1
	mov	r1,r0
	bra	L278
	nop
L278:
	add	#8,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_62
_wl_62:
	mov.l	r14,@-r15
	add	#-16,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov	#0,r1
	mov.l	r1,@(12,r14)
	mov	#0,r1
	mov.l	r1,@(8,r14)
L281:
	mov.l	@(8,r14),r1
	mov.l	@(4,r14),r2
	cmp/ge	r2,r1
	bf	L284
	bra	L282
	nop
L284:
	mov.l	@r14,r1
	mov.l	@(8,r14),r2
	add	r2,r1
	mov.l	@(12,r14),r2
	add	r2,r1
	mov.l	r1,@(12,r14)
L283:
	mov.l	@(8,r14),r2
	mov	r2,r1
	add	#1,r1
	mov	r1,r2
	mov.l	r2,@(8,r14)
	bra	L281
	nop
L282:
	mov.l	@(12,r14),r0
	bra	L280
	nop
L280:
	add	#16,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_63
_wl_63:
	mov.l	r14,@-r15
	sts.l	pr,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov.l	@r14,r1
	mov	r1,r2
	cmp/pz	r2
	bt	L292
	add	#3,r2
L292:
	shar	r2
	shar	r2
	mov	r2,r3
	mov	r3,r2
	mov	r2,r3
	shll2	r3
	mov	r1,r0
	sub	r3,r0
	cmp/eq	#1,r0
	bt	L288
	mov	#1,r1
	cmp/gt	r1,r0
	bt	L293
	tst	r0,r0
	bt	L287
	bra	L290
	nop
L293:
	cmp/eq	#2,r0
	bt	L289
	bra	L290
	nop
L287:
	mov.l	@(4,r14),r0
	bra	L285
	nop
L288:
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	add	r2,r1
	mov	r1,r0
	bra	L285
	nop
L289:
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	sub	r2,r1
	mov	r1,r0
	bra	L285
	nop
L290:
	bra	L286
	nop
L286:
	mov.l	L294,r1
	mov.l	@(4,r14),r5
	mov.l	@r14,r4
	jsr	@r1
	nop
	mov	r0,r1
	mov	r1,r0
	bra	L285
	nop
L285:
	add	#8,r14
	mov	r14,r15
	lds.l	@r15+,pr
	mov.l	@r15+,r14
	rts	
	nop
L295:
	.align 2
L294:
	.long	___mulsi3
	.align 2
	.global	_wl_64
_wl_64:
	mov.l	r14,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
L297:
	mov.l	@r14,r1
	cmp/pl	r1
	bt	L299
	bra	L298
	nop
L299:
	mov.l	@r14,r2
	mov	#7,r1
	and	r2,r1
	mov.l	@(4,r14),r2
	add	r2,r1
	mov.l	r1,@(4,r14)
	mov.l	@r14,r2
	mov	r2,r1
	shar	r1
	shar	r1
	mov	r1,r2
	mov.l	r2,@r14
	bra	L297
	nop
L298:
	mov.l	@(4,r14),r0
	bra	L296
	nop
L296:
	add	#8,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_65
_wl_65:
	mov.l	r14,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov.l	@r14,r1
	mov	r1,r3
	mov	r3,r2
	add	r2,r2
	add	r1,r2
	mov.l	@(4,r14),r3
	mov	r2,r1
	add	r3,r1
	mov.l	@r14,r2
	mov.l	@(4,r14),r3
	sub	r3,r2
	sub	r2,r1
	mov	r1,r0
	bra	L300
	nop
L300:
	add	#8,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_66
_wl_66:
	mov.l	r14,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	cmp/gt	r2,r1
	bf	L302
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	sub	r2,r1
	mov	r1,r0
	bra	L301
	nop
L302:
	mov.l	@(4,r14),r1
	mov.l	@r14,r2
	sub	r2,r1
	mov	r1,r0
	bra	L301
	nop
L301:
	add	#8,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_67
_wl_67:
	mov.l	r14,@-r15
	add	#-16,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov	#0,r1
	mov.l	r1,@(12,r14)
	mov	#0,r1
	mov.l	r1,@(8,r14)
L304:
	mov.l	@(8,r14),r1
	mov.l	@(4,r14),r2
	cmp/ge	r2,r1
	bf	L307
	bra	L305
	nop
L307:
	mov.l	@r14,r1
	mov.l	@(8,r14),r2
	add	r2,r1
	mov.l	@(12,r14),r2
	add	r2,r1
	mov.l	r1,@(12,r14)
L306:
	mov.l	@(8,r14),r2
	mov	r2,r1
	add	#1,r1
	mov	r1,r2
	mov.l	r2,@(8,r14)
	bra	L304
	nop
L305:
	mov.l	@(12,r14),r0
	bra	L303
	nop
L303:
	add	#16,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_68
_wl_68:
	mov.l	r14,@-r15
	sts.l	pr,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov.l	@r14,r1
	mov	r1,r2
	cmp/pz	r2
	bt	L315
	add	#3,r2
L315:
	shar	r2
	shar	r2
	mov	r2,r3
	mov	r3,r2
	mov	r2,r3
	shll2	r3
	mov	r1,r0
	sub	r3,r0
	cmp/eq	#1,r0
	bt	L311
	mov	#1,r1
	cmp/gt	r1,r0
	bt	L316
	tst	r0,r0
	bt	L310
	bra	L313
	nop
L316:
	cmp/eq	#2,r0
	bt	L312
	bra	L313
	nop
L310:
	mov.l	@(4,r14),r0
	bra	L308
	nop
L311:
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	add	r2,r1
	mov	r1,r0
	bra	L308
	nop
L312:
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	sub	r2,r1
	mov	r1,r0
	bra	L308
	nop
L313:
	bra	L309
	nop
L309:
	mov.l	L317,r1
	mov.l	@(4,r14),r5
	mov.l	@r14,r4
	jsr	@r1
	nop
	mov	r0,r1
	mov	r1,r0
	bra	L308
	nop
L308:
	add	#8,r14
	mov	r14,r15
	lds.l	@r15+,pr
	mov.l	@r15+,r14
	rts	
	nop
L318:
	.align 2
L317:
	.long	___mulsi3
	.align 2
	.global	_wl_69
_wl_69:
	mov.l	r14,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
L320:
	mov.l	@r14,r1
	cmp/pl	r1
	bt	L322
	bra	L321
	nop
L322:
	mov.l	@r14,r2
	mov	#7,r1
	and	r2,r1
	mov.l	@(4,r14),r2
	add	r2,r1
	mov.l	r1,@(4,r14)
	mov.l	@r14,r2
	mov	r2,r1
	shar	r1
	shar	r1
	mov	r1,r2
	mov.l	r2,@r14
	bra	L320
	nop
L321:
	mov.l	@(4,r14),r0
	bra	L319
	nop
L319:
	add	#8,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_70
_wl_70:
	mov.l	r14,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov.l	@r14,r1
	mov	r1,r3
	mov	r3,r2
	add	r2,r2
	add	r1,r2
	mov.l	@(4,r14),r3
	mov	r2,r1
	add	r3,r1
	mov.l	@r14,r2
	mov.l	@(4,r14),r3
	sub	r3,r2
	sub	r2,r1
	mov	r1,r0
	bra	L323
	nop
L323:
	add	#8,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_71
_wl_71:
	mov.l	r14,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	cmp/gt	r2,r1
	bf	L325
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	sub	r2,r1
	mov	r1,r0
	bra	L324
	nop
L325:
	mov.l	@(4,r14),r1
	mov.l	@r14,r2
	sub	r2,r1
	mov	r1,r0
	bra	L324
	nop
L324:
	add	#8,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_72
_wl_72:
	mov.l	r14,@-r15
	add	#-16,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov	#0,r1
	mov.l	r1,@(12,r14)
	mov	#0,r1
	mov.l	r1,@(8,r14)
L327:
	mov.l	@(8,r14),r1
	mov.l	@(4,r14),r2
	cmp/ge	r2,r1
	bf	L330
	bra	L328
	nop
L330:
	mov.l	@r14,r1
	mov.l	@(8,r14),r2
	add	r2,r1
	mov.l	@(12,r14),r2
	add	r2,r1
	mov.l	r1,@(12,r14)
L329:
	mov.l	@(8,r14),r2
	mov	r2,r1
	add	#1,r1
	mov	r1,r2
	mov.l	r2,@(8,r14)
	bra	L327
	nop
L328:
	mov.l	@(12,r14),r0
	bra	L326
	nop
L326:
	add	#16,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_73
_wl_73:
	mov.l	r14,@-r15
	sts.l	pr,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov.l	@r14,r1
	mov	r1,r2
	cmp/pz	r2
	bt	L338
	add	#3,r2
L338:
	shar	r2
	shar	r2
	mov	r2,r3
	mov	r3,r2
	mov	r2,r3
	shll2	r3
	mov	r1,r0
	sub	r3,r0
	cmp/eq	#1,r0
	bt	L334
	mov	#1,r1
	cmp/gt	r1,r0
	bt	L339
	tst	r0,r0
	bt	L333
	bra	L336
	nop
L339:
	cmp/eq	#2,r0
	bt	L335
	bra	L336
	nop
L333:
	mov.l	@(4,r14),r0
	bra	L331
	nop
L334:
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	add	r2,r1
	mov	r1,r0
	bra	L331
	nop
L335:
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	sub	r2,r1
	mov	r1,r0
	bra	L331
	nop
L336:
	bra	L332
	nop
L332:
	mov.l	L340,r1
	mov.l	@(4,r14),r5
	mov.l	@r14,r4
	jsr	@r1
	nop
	mov	r0,r1
	mov	r1,r0
	bra	L331
	nop
L331:
	add	#8,r14
	mov	r14,r15
	lds.l	@r15+,pr
	mov.l	@r15+,r14
	rts	
	nop
L341:
	.align 2
L340:
	.long	___mulsi3
	.align 2
	.global	_wl_74
_wl_74:
	mov.l	r14,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
L343:
	mov.l	@r14,r1
	cmp/pl	r1
	bt	L345
	bra	L344
	nop
L345:
	mov.l	@r14,r2
	mov	#7,r1
	and	r2,r1
	mov.l	@(4,r14),r2
	add	r2,r1
	mov.l	r1,@(4,r14)
	mov.l	@r14,r2
	mov	r2,r1
	shar	r1
	shar	r1
	mov	r1,r2
	mov.l	r2,@r14
	bra	L343
	nop
L344:
	mov.l	@(4,r14),r0
	bra	L342
	nop
L342:
	add	#8,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_75
_wl_75:
	mov.l	r14,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov.l	@r14,r1
	mov	r1,r3
	mov	r3,r2
	add	r2,r2
	add	r1,r2
	mov.l	@(4,r14),r3
	mov	r2,r1
	add	r3,r1
	mov.l	@r14,r2
	mov.l	@(4,r14),r3
	sub	r3,r2
	sub	r2,r1
	mov	r1,r0
	bra	L346
	nop
L346:
	add	#8,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_76
_wl_76:
	mov.l	r14,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	cmp/gt	r2,r1
	bf	L348
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	sub	r2,r1
	mov	r1,r0
	bra	L347
	nop
L348:
	mov.l	@(4,r14),r1
	mov.l	@r14,r2
	sub	r2,r1
	mov	r1,r0
	bra	L347
	nop
L347:
	add	#8,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_77
_wl_77:
	mov.l	r14,@-r15
	add	#-16,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov	#0,r1
	mov.l	r1,@(12,r14)
	mov	#0,r1
	mov.l	r1,@(8,r14)
L350:
	mov.l	@(8,r14),r1
	mov.l	@(4,r14),r2
	cmp/ge	r2,r1
	bf	L353
	bra	L351
	nop
L353:
	mov.l	@r14,r1
	mov.l	@(8,r14),r2
	add	r2,r1
	mov.l	@(12,r14),r2
	add	r2,r1
	mov.l	r1,@(12,r14)
L352:
	mov.l	@(8,r14),r2
	mov	r2,r1
	add	#1,r1
	mov	r1,r2
	mov.l	r2,@(8,r14)
	bra	L350
	nop
L351:
	mov.l	@(12,r14),r0
	bra	L349
	nop
L349:
	add	#16,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_78
_wl_78:
	mov.l	r14,@-r15
	sts.l	pr,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov.l	@r14,r1
	mov	r1,r2
	cmp/pz	r2
	bt	L361
	add	#3,r2
L361:
	shar	r2
	shar	r2
	mov	r2,r3
	mov	r3,r2
	mov	r2,r3
	shll2	r3
	mov	r1,r0
	sub	r3,r0
	cmp/eq	#1,r0
	bt	L357
	mov	#1,r1
	cmp/gt	r1,r0
	bt	L362
	tst	r0,r0
	bt	L356
	bra	L359
	nop
L362:
	cmp/eq	#2,r0
	bt	L358
	bra	L359
	nop
L356:
	mov.l	@(4,r14),r0
	bra	L354
	nop
L357:
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	add	r2,r1
	mov	r1,r0
	bra	L354
	nop
L358:
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	sub	r2,r1
	mov	r1,r0
	bra	L354
	nop
L359:
	bra	L355
	nop
L355:
	mov.l	L363,r1
	mov.l	@(4,r14),r5
	mov.l	@r14,r4
	jsr	@r1
	nop
	mov	r0,r1
	mov	r1,r0
	bra	L354
	nop
L354:
	add	#8,r14
	mov	r14,r15
	lds.l	@r15+,pr
	mov.l	@r15+,r14
	rts	
	nop
L364:
	.align 2
L363:
	.long	___mulsi3
	.align 2
	.global	_wl_79
_wl_79:
	mov.l	r14,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
L366:
	mov.l	@r14,r1
	cmp/pl	r1
	bt	L368
	bra	L367
	nop
L368:
	mov.l	@r14,r2
	mov	#7,r1
	and	r2,r1
	mov.l	@(4,r14),r2
	add	r2,r1
	mov.l	r1,@(4,r14)
	mov.l	@r14,r2
	mov	r2,r1
	shar	r1
	shar	r1
	mov	r1,r2
	mov.l	r2,@r14
	bra	L366
	nop
L367:
	mov.l	@(4,r14),r0
	bra	L365
	nop
L365:
	add	#8,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_80
_wl_80:
	mov.l	r14,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov.l	@r14,r1
	mov	r1,r3
	mov	r3,r2
	add	r2,r2
	add	r1,r2
	mov.l	@(4,r14),r3
	mov	r2,r1
	add	r3,r1
	mov.l	@r14,r2
	mov.l	@(4,r14),r3
	sub	r3,r2
	sub	r2,r1
	mov	r1,r0
	bra	L369
	nop
L369:
	add	#8,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_81
_wl_81:
	mov.l	r14,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	cmp/gt	r2,r1
	bf	L371
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	sub	r2,r1
	mov	r1,r0
	bra	L370
	nop
L371:
	mov.l	@(4,r14),r1
	mov.l	@r14,r2
	sub	r2,r1
	mov	r1,r0
	bra	L370
	nop
L370:
	add	#8,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_82
_wl_82:
	mov.l	r14,@-r15
	add	#-16,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov	#0,r1
	mov.l	r1,@(12,r14)
	mov	#0,r1
	mov.l	r1,@(8,r14)
L373:
	mov.l	@(8,r14),r1
	mov.l	@(4,r14),r2
	cmp/ge	r2,r1
	bf	L376
	bra	L374
	nop
L376:
	mov.l	@r14,r1
	mov.l	@(8,r14),r2
	add	r2,r1
	mov.l	@(12,r14),r2
	add	r2,r1
	mov.l	r1,@(12,r14)
L375:
	mov.l	@(8,r14),r2
	mov	r2,r1
	add	#1,r1
	mov	r1,r2
	mov.l	r2,@(8,r14)
	bra	L373
	nop
L374:
	mov.l	@(12,r14),r0
	bra	L372
	nop
L372:
	add	#16,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_83
_wl_83:
	mov.l	r14,@-r15
	sts.l	pr,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov.l	@r14,r1
	mov	r1,r2
	cmp/pz	r2
	bt	L384
	add	#3,r2
L384:
	shar	r2
	shar	r2
	mov	r2,r3
	mov	r3,r2
	mov	r2,r3
	shll2	r3
	mov	r1,r0
	sub	r3,r0
	cmp/eq	#1,r0
	bt	L380
	mov	#1,r1
	cmp/gt	r1,r0
	bt	L385
	tst	r0,r0
	bt	L379
	bra	L382
	nop
L385:
	cmp/eq	#2,r0
	bt	L381
	bra	L382
	nop
L379:
	mov.l	@(4,r14),r0
	bra	L377
	nop
L380:
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	add	r2,r1
	mov	r1,r0
	bra	L377
	nop
L381:
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	sub	r2,r1
	mov	r1,r0
	bra	L377
	nop
L382:
	bra	L378
	nop
L378:
	mov.l	L386,r1
	mov.l	@(4,r14),r5
	mov.l	@r14,r4
	jsr	@r1
	nop
	mov	r0,r1
	mov	r1,r0
	bra	L377
	nop
L377:
	add	#8,r14
	mov	r14,r15
	lds.l	@r15+,pr
	mov.l	@r15+,r14
	rts	
	nop
L387:
	.align 2
L386:
	.long	___mulsi3
	.align 2
	.global	_wl_84
_wl_84:
	mov.l	r14,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
L389:
	mov.l	@r14,r1
	cmp/pl	r1
	bt	L391
	bra	L390
	nop
L391:
	mov.l	@r14,r2
	mov	#7,r1
	and	r2,r1
	mov.l	@(4,r14),r2
	add	r2,r1
	mov.l	r1,@(4,r14)
	mov.l	@r14,r2
	mov	r2,r1
	shar	r1
	shar	r1
	mov	r1,r2
	mov.l	r2,@r14
	bra	L389
	nop
L390:
	mov.l	@(4,r14),r0
	bra	L388
	nop
L388:
	add	#8,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_85
_wl_85:
	mov.l	r14,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov.l	@r14,r1
	mov	r1,r3
	mov	r3,r2
	add	r2,r2
	add	r1,r2
	mov.l	@(4,r14),r3
	mov	r2,r1
	add	r3,r1
	mov.l	@r14,r2
	mov.l	@(4,r14),r3
	sub	r3,r2
	sub	r2,r1
	mov	r1,r0
	bra	L392
	nop
L392:
	add	#8,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_86
_wl_86:
	mov.l	r14,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	cmp/gt	r2,r1
	bf	L394
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	sub	r2,r1
	mov	r1,r0
	bra	L393
	nop
L394:
	mov.l	@(4,r14),r1
	mov.l	@r14,r2
	sub	r2,r1
	mov	r1,r0
	bra	L393
	nop
L393:
	add	#8,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_87
_wl_87:
	mov.l	r14,@-r15
	add	#-16,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov	#0,r1
	mov.l	r1,@(12,r14)
	mov	#0,r1
	mov.l	r1,@(8,r14)
L396:
	mov.l	@(8,r14),r1
	mov.l	@(4,r14),r2
	cmp/ge	r2,r1
	bf	L399
	bra	L397
	nop
L399:
	mov.l	@r14,r1
	mov.l	@(8,r14),r2
	add	r2,r1
	mov.l	@(12,r14),r2
	add	r2,r1
	mov.l	r1,@(12,r14)
L398:
	mov.l	@(8,r14),r2
	mov	r2,r1
	add	#1,r1
	mov	r1,r2
	mov.l	r2,@(8,r14)
	bra	L396
	nop
L397:
	mov.l	@(12,r14),r0
	bra	L395
	nop
L395:
	add	#16,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_88
_wl_88:
	mov.l	r14,@-r15
	sts.l	pr,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov.l	@r14,r1
	mov	r1,r2
	cmp/pz	r2
	bt	L407
	add	#3,r2
L407:
	shar	r2
	shar	r2
	mov	r2,r3
	mov	r3,r2
	mov	r2,r3
	shll2	r3
	mov	r1,r0
	sub	r3,r0
	cmp/eq	#1,r0
	bt	L403
	mov	#1,r1
	cmp/gt	r1,r0
	bt	L408
	tst	r0,r0
	bt	L402
	bra	L405
	nop
L408:
	cmp/eq	#2,r0
	bt	L404
	bra	L405
	nop
L402:
	mov.l	@(4,r14),r0
	bra	L400
	nop
L403:
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	add	r2,r1
	mov	r1,r0
	bra	L400
	nop
L404:
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	sub	r2,r1
	mov	r1,r0
	bra	L400
	nop
L405:
	bra	L401
	nop
L401:
	mov.l	L409,r1
	mov.l	@(4,r14),r5
	mov.l	@r14,r4
	jsr	@r1
	nop
	mov	r0,r1
	mov	r1,r0
	bra	L400
	nop
L400:
	add	#8,r14
	mov	r14,r15
	lds.l	@r15+,pr
	mov.l	@r15+,r14
	rts	
	nop
L410:
	.align 2
L409:
	.long	___mulsi3
	.align 2
	.global	_wl_89
_wl_89:
	mov.l	r14,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
L412:
	mov.l	@r14,r1
	cmp/pl	r1
	bt	L414
	bra	L413
	nop
L414:
	mov.l	@r14,r2
	mov	#7,r1
	and	r2,r1
	mov.l	@(4,r14),r2
	add	r2,r1
	mov.l	r1,@(4,r14)
	mov.l	@r14,r2
	mov	r2,r1
	shar	r1
	shar	r1
	mov	r1,r2
	mov.l	r2,@r14
	bra	L412
	nop
L413:
	mov.l	@(4,r14),r0
	bra	L411
	nop
L411:
	add	#8,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_90
_wl_90:
	mov.l	r14,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov.l	@r14,r1
	mov	r1,r3
	mov	r3,r2
	add	r2,r2
	add	r1,r2
	mov.l	@(4,r14),r3
	mov	r2,r1
	add	r3,r1
	mov.l	@r14,r2
	mov.l	@(4,r14),r3
	sub	r3,r2
	sub	r2,r1
	mov	r1,r0
	bra	L415
	nop
L415:
	add	#8,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_91
_wl_91:
	mov.l	r14,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	cmp/gt	r2,r1
	bf	L417
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	sub	r2,r1
	mov	r1,r0
	bra	L416
	nop
L417:
	mov.l	@(4,r14),r1
	mov.l	@r14,r2
	sub	r2,r1
	mov	r1,r0
	bra	L416
	nop
L416:
	add	#8,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_92
_wl_92:
	mov.l	r14,@-r15
	add	#-16,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov	#0,r1
	mov.l	r1,@(12,r14)
	mov	#0,r1
	mov.l	r1,@(8,r14)
L419:
	mov.l	@(8,r14),r1
	mov.l	@(4,r14),r2
	cmp/ge	r2,r1
	bf	L422
	bra	L420
	nop
L422:
	mov.l	@r14,r1
	mov.l	@(8,r14),r2
	add	r2,r1
	mov.l	@(12,r14),r2
	add	r2,r1
	mov.l	r1,@(12,r14)
L421:
	mov.l	@(8,r14),r2
	mov	r2,r1
	add	#1,r1
	mov	r1,r2
	mov.l	r2,@(8,r14)
	bra	L419
	nop
L420:
	mov.l	@(12,r14),r0
	bra	L418
	nop
L418:
	add	#16,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_93
_wl_93:
	mov.l	r14,@-r15
	sts.l	pr,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov.l	@r14,r1
	mov	r1,r2
	cmp/pz	r2
	bt	L430
	add	#3,r2
L430:
	shar	r2
	shar	r2
	mov	r2,r3
	mov	r3,r2
	mov	r2,r3
	shll2	r3
	mov	r1,r0
	sub	r3,r0
	cmp/eq	#1,r0
	bt	L426
	mov	#1,r1
	cmp/gt	r1,r0
	bt	L431
	tst	r0,r0
	bt	L425
	bra	L428
	nop
L431:
	cmp/eq	#2,r0
	bt	L427
	bra	L428
	nop
L425:
	mov.l	@(4,r14),r0
	bra	L423
	nop
L426:
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	add	r2,r1
	mov	r1,r0
	bra	L423
	nop
L427:
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	sub	r2,r1
	mov	r1,r0
	bra	L423
	nop
L428:
	bra	L424
	nop
L424:
	mov.l	L432,r1
	mov.l	@(4,r14),r5
	mov.l	@r14,r4
	jsr	@r1
	nop
	mov	r0,r1
	mov	r1,r0
	bra	L423
	nop
L423:
	add	#8,r14
	mov	r14,r15
	lds.l	@r15+,pr
	mov.l	@r15+,r14
	rts	
	nop
L433:
	.align 2
L432:
	.long	___mulsi3
	.align 2
	.global	_wl_94
_wl_94:
	mov.l	r14,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
L435:
	mov.l	@r14,r1
	cmp/pl	r1
	bt	L437
	bra	L436
	nop
L437:
	mov.l	@r14,r2
	mov	#7,r1
	and	r2,r1
	mov.l	@(4,r14),r2
	add	r2,r1
	mov.l	r1,@(4,r14)
	mov.l	@r14,r2
	mov	r2,r1
	shar	r1
	shar	r1
	mov	r1,r2
	mov.l	r2,@r14
	bra	L435
	nop
L436:
	mov.l	@(4,r14),r0
	bra	L434
	nop
L434:
	add	#8,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_95
_wl_95:
	mov.l	r14,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov.l	@r14,r1
	mov	r1,r3
	mov	r3,r2
	add	r2,r2
	add	r1,r2
	mov.l	@(4,r14),r3
	mov	r2,r1
	add	r3,r1
	mov.l	@r14,r2
	mov.l	@(4,r14),r3
	sub	r3,r2
	sub	r2,r1
	mov	r1,r0
	bra	L438
	nop
L438:
	add	#8,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_96
_wl_96:
	mov.l	r14,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	cmp/gt	r2,r1
	bf	L440
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	sub	r2,r1
	mov	r1,r0
	bra	L439
	nop
L440:
	mov.l	@(4,r14),r1
	mov.l	@r14,r2
	sub	r2,r1
	mov	r1,r0
	bra	L439
	nop
L439:
	add	#8,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_97
_wl_97:
	mov.l	r14,@-r15
	add	#-16,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov	#0,r1
	mov.l	r1,@(12,r14)
	mov	#0,r1
	mov.l	r1,@(8,r14)
L442:
	mov.l	@(8,r14),r1
	mov.l	@(4,r14),r2
	cmp/ge	r2,r1
	bf	L445
	bra	L443
	nop
L445:
	mov.l	@r14,r1
	mov.l	@(8,r14),r2
	add	r2,r1
	mov.l	@(12,r14),r2
	add	r2,r1
	mov.l	r1,@(12,r14)
L444:
	mov.l	@(8,r14),r2
	mov	r2,r1
	add	#1,r1
	mov	r1,r2
	mov.l	r2,@(8,r14)
	bra	L442
	nop
L443:
	mov.l	@(12,r14),r0
	bra	L441
	nop
L441:
	add	#16,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_98
_wl_98:
	mov.l	r14,@-r15
	sts.l	pr,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov.l	@r14,r1
	mov	r1,r2
	cmp/pz	r2
	bt	L453
	add	#3,r2
L453:
	shar	r2
	shar	r2
	mov	r2,r3
	mov	r3,r2
	mov	r2,r3
	shll2	r3
	mov	r1,r0
	sub	r3,r0
	cmp/eq	#1,r0
	bt	L449
	mov	#1,r1
	cmp/gt	r1,r0
	bt	L454
	tst	r0,r0
	bt	L448
	bra	L451
	nop
L454:
	cmp/eq	#2,r0
	bt	L450
	bra	L451
	nop
L448:
	mov.l	@(4,r14),r0
	bra	L446
	nop
L449:
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	add	r2,r1
	mov	r1,r0
	bra	L446
	nop
L450:
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	sub	r2,r1
	mov	r1,r0
	bra	L446
	nop
L451:
	bra	L447
	nop
L447:
	mov.l	L455,r1
	mov.l	@(4,r14),r5
	mov.l	@r14,r4
	jsr	@r1
	nop
	mov	r0,r1
	mov	r1,r0
	bra	L446
	nop
L446:
	add	#8,r14
	mov	r14,r15
	lds.l	@r15+,pr
	mov.l	@r15+,r14
	rts	
	nop
L456:
	.align 2
L455:
	.long	___mulsi3
	.align 2
	.global	_wl_99
_wl_99:
	mov.l	r14,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
L458:
	mov.l	@r14,r1
	cmp/pl	r1
	bt	L460
	bra	L459
	nop
L460:
	mov.l	@r14,r2
	mov	#7,r1
	and	r2,r1
	mov.l	@(4,r14),r2
	add	r2,r1
	mov.l	r1,@(4,r14)
	mov.l	@r14,r2
	mov	r2,r1
	shar	r1
	shar	r1
	mov	r1,r2
	mov.l	r2,@r14
	bra	L458
	nop
L459:
	mov.l	@(4,r14),r0
	bra	L457
	nop
L457:
	add	#8,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_100
_wl_100:
	mov.l	r14,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov.l	@r14,r1
	mov	r1,r3
	mov	r3,r2
	add	r2,r2
	add	r1,r2
	mov.l	@(4,r14),r3
	mov	r2,r1
	add	r3,r1
	mov.l	@r14,r2
	mov.l	@(4,r14),r3
	sub	r3,r2
	sub	r2,r1
	mov	r1,r0
	bra	L461
	nop
L461:
	add	#8,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_101
_wl_101:
	mov.l	r14,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	cmp/gt	r2,r1
	bf	L463
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	sub	r2,r1
	mov	r1,r0
	bra	L462
	nop
L463:
	mov.l	@(4,r14),r1
	mov.l	@r14,r2
	sub	r2,r1
	mov	r1,r0
	bra	L462
	nop
L462:
	add	#8,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_102
_wl_102:
	mov.l	r14,@-r15
	add	#-16,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov	#0,r1
	mov.l	r1,@(12,r14)
	mov	#0,r1
	mov.l	r1,@(8,r14)
L465:
	mov.l	@(8,r14),r1
	mov.l	@(4,r14),r2
	cmp/ge	r2,r1
	bf	L468
	bra	L466
	nop
L468:
	mov.l	@r14,r1
	mov.l	@(8,r14),r2
	add	r2,r1
	mov.l	@(12,r14),r2
	add	r2,r1
	mov.l	r1,@(12,r14)
L467:
	mov.l	@(8,r14),r2
	mov	r2,r1
	add	#1,r1
	mov	r1,r2
	mov.l	r2,@(8,r14)
	bra	L465
	nop
L466:
	mov.l	@(12,r14),r0
	bra	L464
	nop
L464:
	add	#16,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_103
_wl_103:
	mov.l	r14,@-r15
	sts.l	pr,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov.l	@r14,r1
	mov	r1,r2
	cmp/pz	r2
	bt	L476
	add	#3,r2
L476:
	shar	r2
	shar	r2
	mov	r2,r3
	mov	r3,r2
	mov	r2,r3
	shll2	r3
	mov	r1,r0
	sub	r3,r0
	cmp/eq	#1,r0
	bt	L472
	mov	#1,r1
	cmp/gt	r1,r0
	bt	L477
	tst	r0,r0
	bt	L471
	bra	L474
	nop
L477:
	cmp/eq	#2,r0
	bt	L473
	bra	L474
	nop
L471:
	mov.l	@(4,r14),r0
	bra	L469
	nop
L472:
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	add	r2,r1
	mov	r1,r0
	bra	L469
	nop
L473:
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	sub	r2,r1
	mov	r1,r0
	bra	L469
	nop
L474:
	bra	L470
	nop
L470:
	mov.l	L478,r1
	mov.l	@(4,r14),r5
	mov.l	@r14,r4
	jsr	@r1
	nop
	mov	r0,r1
	mov	r1,r0
	bra	L469
	nop
L469:
	add	#8,r14
	mov	r14,r15
	lds.l	@r15+,pr
	mov.l	@r15+,r14
	rts	
	nop
L479:
	.align 2
L478:
	.long	___mulsi3
	.align 2
	.global	_wl_104
_wl_104:
	mov.l	r14,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
L481:
	mov.l	@r14,r1
	cmp/pl	r1
	bt	L483
	bra	L482
	nop
L483:
	mov.l	@r14,r2
	mov	#7,r1
	and	r2,r1
	mov.l	@(4,r14),r2
	add	r2,r1
	mov.l	r1,@(4,r14)
	mov.l	@r14,r2
	mov	r2,r1
	shar	r1
	shar	r1
	mov	r1,r2
	mov.l	r2,@r14
	bra	L481
	nop
L482:
	mov.l	@(4,r14),r0
	bra	L480
	nop
L480:
	add	#8,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_105
_wl_105:
	mov.l	r14,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov.l	@r14,r1
	mov	r1,r3
	mov	r3,r2
	add	r2,r2
	add	r1,r2
	mov.l	@(4,r14),r3
	mov	r2,r1
	add	r3,r1
	mov.l	@r14,r2
	mov.l	@(4,r14),r3
	sub	r3,r2
	sub	r2,r1
	mov	r1,r0
	bra	L484
	nop
L484:
	add	#8,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_106
_wl_106:
	mov.l	r14,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	cmp/gt	r2,r1
	bf	L486
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	sub	r2,r1
	mov	r1,r0
	bra	L485
	nop
L486:
	mov.l	@(4,r14),r1
	mov.l	@r14,r2
	sub	r2,r1
	mov	r1,r0
	bra	L485
	nop
L485:
	add	#8,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_107
_wl_107:
	mov.l	r14,@-r15
	add	#-16,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov	#0,r1
	mov.l	r1,@(12,r14)
	mov	#0,r1
	mov.l	r1,@(8,r14)
L488:
	mov.l	@(8,r14),r1
	mov.l	@(4,r14),r2
	cmp/ge	r2,r1
	bf	L491
	bra	L489
	nop
L491:
	mov.l	@r14,r1
	mov.l	@(8,r14),r2
	add	r2,r1
	mov.l	@(12,r14),r2
	add	r2,r1
	mov.l	r1,@(12,r14)
L490:
	mov.l	@(8,r14),r2
	mov	r2,r1
	add	#1,r1
	mov	r1,r2
	mov.l	r2,@(8,r14)
	bra	L488
	nop
L489:
	mov.l	@(12,r14),r0
	bra	L487
	nop
L487:
	add	#16,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_108
_wl_108:
	mov.l	r14,@-r15
	sts.l	pr,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov.l	@r14,r1
	mov	r1,r2
	cmp/pz	r2
	bt	L499
	add	#3,r2
L499:
	shar	r2
	shar	r2
	mov	r2,r3
	mov	r3,r2
	mov	r2,r3
	shll2	r3
	mov	r1,r0
	sub	r3,r0
	cmp/eq	#1,r0
	bt	L495
	mov	#1,r1
	cmp/gt	r1,r0
	bt	L500
	tst	r0,r0
	bt	L494
	bra	L497
	nop
L500:
	cmp/eq	#2,r0
	bt	L496
	bra	L497
	nop
L494:
	mov.l	@(4,r14),r0
	bra	L492
	nop
L495:
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	add	r2,r1
	mov	r1,r0
	bra	L492
	nop
L496:
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	sub	r2,r1
	mov	r1,r0
	bra	L492
	nop
L497:
	bra	L493
	nop
L493:
	mov.l	L501,r1
	mov.l	@(4,r14),r5
	mov.l	@r14,r4
	jsr	@r1
	nop
	mov	r0,r1
	mov	r1,r0
	bra	L492
	nop
L492:
	add	#8,r14
	mov	r14,r15
	lds.l	@r15+,pr
	mov.l	@r15+,r14
	rts	
	nop
L502:
	.align 2
L501:
	.long	___mulsi3
	.align 2
	.global	_wl_109
_wl_109:
	mov.l	r14,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
L504:
	mov.l	@r14,r1
	cmp/pl	r1
	bt	L506
	bra	L505
	nop
L506:
	mov.l	@r14,r2
	mov	#7,r1
	and	r2,r1
	mov.l	@(4,r14),r2
	add	r2,r1
	mov.l	r1,@(4,r14)
	mov.l	@r14,r2
	mov	r2,r1
	shar	r1
	shar	r1
	mov	r1,r2
	mov.l	r2,@r14
	bra	L504
	nop
L505:
	mov.l	@(4,r14),r0
	bra	L503
	nop
L503:
	add	#8,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_110
_wl_110:
	mov.l	r14,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov.l	@r14,r1
	mov	r1,r3
	mov	r3,r2
	add	r2,r2
	add	r1,r2
	mov.l	@(4,r14),r3
	mov	r2,r1
	add	r3,r1
	mov.l	@r14,r2
	mov.l	@(4,r14),r3
	sub	r3,r2
	sub	r2,r1
	mov	r1,r0
	bra	L507
	nop
L507:
	add	#8,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_111
_wl_111:
	mov.l	r14,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	cmp/gt	r2,r1
	bf	L509
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	sub	r2,r1
	mov	r1,r0
	bra	L508
	nop
L509:
	mov.l	@(4,r14),r1
	mov.l	@r14,r2
	sub	r2,r1
	mov	r1,r0
	bra	L508
	nop
L508:
	add	#8,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_112
_wl_112:
	mov.l	r14,@-r15
	add	#-16,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov	#0,r1
	mov.l	r1,@(12,r14)
	mov	#0,r1
	mov.l	r1,@(8,r14)
L511:
	mov.l	@(8,r14),r1
	mov.l	@(4,r14),r2
	cmp/ge	r2,r1
	bf	L514
	bra	L512
	nop
L514:
	mov.l	@r14,r1
	mov.l	@(8,r14),r2
	add	r2,r1
	mov.l	@(12,r14),r2
	add	r2,r1
	mov.l	r1,@(12,r14)
L513:
	mov.l	@(8,r14),r2
	mov	r2,r1
	add	#1,r1
	mov	r1,r2
	mov.l	r2,@(8,r14)
	bra	L511
	nop
L512:
	mov.l	@(12,r14),r0
	bra	L510
	nop
L510:
	add	#16,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_113
_wl_113:
	mov.l	r14,@-r15
	sts.l	pr,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov.l	@r14,r1
	mov	r1,r2
	cmp/pz	r2
	bt	L522
	add	#3,r2
L522:
	shar	r2
	shar	r2
	mov	r2,r3
	mov	r3,r2
	mov	r2,r3
	shll2	r3
	mov	r1,r0
	sub	r3,r0
	cmp/eq	#1,r0
	bt	L518
	mov	#1,r1
	cmp/gt	r1,r0
	bt	L523
	tst	r0,r0
	bt	L517
	bra	L520
	nop
L523:
	cmp/eq	#2,r0
	bt	L519
	bra	L520
	nop
L517:
	mov.l	@(4,r14),r0
	bra	L515
	nop
L518:
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	add	r2,r1
	mov	r1,r0
	bra	L515
	nop
L519:
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	sub	r2,r1
	mov	r1,r0
	bra	L515
	nop
L520:
	bra	L516
	nop
L516:
	mov.l	L524,r1
	mov.l	@(4,r14),r5
	mov.l	@r14,r4
	jsr	@r1
	nop
	mov	r0,r1
	mov	r1,r0
	bra	L515
	nop
L515:
	add	#8,r14
	mov	r14,r15
	lds.l	@r15+,pr
	mov.l	@r15+,r14
	rts	
	nop
L525:
	.align 2
L524:
	.long	___mulsi3
	.align 2
	.global	_wl_114
_wl_114:
	mov.l	r14,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
L527:
	mov.l	@r14,r1
	cmp/pl	r1
	bt	L529
	bra	L528
	nop
L529:
	mov.l	@r14,r2
	mov	#7,r1
	and	r2,r1
	mov.l	@(4,r14),r2
	add	r2,r1
	mov.l	r1,@(4,r14)
	mov.l	@r14,r2
	mov	r2,r1
	shar	r1
	shar	r1
	mov	r1,r2
	mov.l	r2,@r14
	bra	L527
	nop
L528:
	mov.l	@(4,r14),r0
	bra	L526
	nop
L526:
	add	#8,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_115
_wl_115:
	mov.l	r14,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov.l	@r14,r1
	mov	r1,r3
	mov	r3,r2
	add	r2,r2
	add	r1,r2
	mov.l	@(4,r14),r3
	mov	r2,r1
	add	r3,r1
	mov.l	@r14,r2
	mov.l	@(4,r14),r3
	sub	r3,r2
	sub	r2,r1
	mov	r1,r0
	bra	L530
	nop
L530:
	add	#8,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_116
_wl_116:
	mov.l	r14,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	cmp/gt	r2,r1
	bf	L532
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	sub	r2,r1
	mov	r1,r0
	bra	L531
	nop
L532:
	mov.l	@(4,r14),r1
	mov.l	@r14,r2
	sub	r2,r1
	mov	r1,r0
	bra	L531
	nop
L531:
	add	#8,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_117
_wl_117:
	mov.l	r14,@-r15
	add	#-16,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov	#0,r1
	mov.l	r1,@(12,r14)
	mov	#0,r1
	mov.l	r1,@(8,r14)
L534:
	mov.l	@(8,r14),r1
	mov.l	@(4,r14),r2
	cmp/ge	r2,r1
	bf	L537
	bra	L535
	nop
L537:
	mov.l	@r14,r1
	mov.l	@(8,r14),r2
	add	r2,r1
	mov.l	@(12,r14),r2
	add	r2,r1
	mov.l	r1,@(12,r14)
L536:
	mov.l	@(8,r14),r2
	mov	r2,r1
	add	#1,r1
	mov	r1,r2
	mov.l	r2,@(8,r14)
	bra	L534
	nop
L535:
	mov.l	@(12,r14),r0
	bra	L533
	nop
L533:
	add	#16,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_118
_wl_118:
	mov.l	r14,@-r15
	sts.l	pr,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov.l	@r14,r1
	mov	r1,r2
	cmp/pz	r2
	bt	L545
	add	#3,r2
L545:
	shar	r2
	shar	r2
	mov	r2,r3
	mov	r3,r2
	mov	r2,r3
	shll2	r3
	mov	r1,r0
	sub	r3,r0
	cmp/eq	#1,r0
	bt	L541
	mov	#1,r1
	cmp/gt	r1,r0
	bt	L546
	tst	r0,r0
	bt	L540
	bra	L543
	nop
L546:
	cmp/eq	#2,r0
	bt	L542
	bra	L543
	nop
L540:
	mov.l	@(4,r14),r0
	bra	L538
	nop
L541:
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	add	r2,r1
	mov	r1,r0
	bra	L538
	nop
L542:
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	sub	r2,r1
	mov	r1,r0
	bra	L538
	nop
L543:
	bra	L539
	nop
L539:
	mov.l	L547,r1
	mov.l	@(4,r14),r5
	mov.l	@r14,r4
	jsr	@r1
	nop
	mov	r0,r1
	mov	r1,r0
	bra	L538
	nop
L538:
	add	#8,r14
	mov	r14,r15
	lds.l	@r15+,pr
	mov.l	@r15+,r14
	rts	
	nop
L548:
	.align 2
L547:
	.long	___mulsi3
	.align 2
	.global	_wl_119
_wl_119:
	mov.l	r14,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
L550:
	mov.l	@r14,r1
	cmp/pl	r1
	bt	L552
	bra	L551
	nop
L552:
	mov.l	@r14,r2
	mov	#7,r1
	and	r2,r1
	mov.l	@(4,r14),r2
	add	r2,r1
	mov.l	r1,@(4,r14)
	mov.l	@r14,r2
	mov	r2,r1
	shar	r1
	shar	r1
	mov	r1,r2
	mov.l	r2,@r14
	bra	L550
	nop
L551:
	mov.l	@(4,r14),r0
	bra	L549
	nop
L549:
	add	#8,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_120
_wl_120:
	mov.l	r14,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov.l	@r14,r1
	mov	r1,r3
	mov	r3,r2
	add	r2,r2
	add	r1,r2
	mov.l	@(4,r14),r3
	mov	r2,r1
	add	r3,r1
	mov.l	@r14,r2
	mov.l	@(4,r14),r3
	sub	r3,r2
	sub	r2,r1
	mov	r1,r0
	bra	L553
	nop
L553:
	add	#8,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_121
_wl_121:
	mov.l	r14,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	cmp/gt	r2,r1
	bf	L555
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	sub	r2,r1
	mov	r1,r0
	bra	L554
	nop
L555:
	mov.l	@(4,r14),r1
	mov.l	@r14,r2
	sub	r2,r1
	mov	r1,r0
	bra	L554
	nop
L554:
	add	#8,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_122
_wl_122:
	mov.l	r14,@-r15
	add	#-16,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov	#0,r1
	mov.l	r1,@(12,r14)
	mov	#0,r1
	mov.l	r1,@(8,r14)
L557:
	mov.l	@(8,r14),r1
	mov.l	@(4,r14),r2
	cmp/ge	r2,r1
	bf	L560
	bra	L558
	nop
L560:
	mov.l	@r14,r1
	mov.l	@(8,r14),r2
	add	r2,r1
	mov.l	@(12,r14),r2
	add	r2,r1
	mov.l	r1,@(12,r14)
L559:
	mov.l	@(8,r14),r2
	mov	r2,r1
	add	#1,r1
	mov	r1,r2
	mov.l	r2,@(8,r14)
	bra	L557
	nop
L558:
	mov.l	@(12,r14),r0
	bra	L556
	nop
L556:
	add	#16,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_123
_wl_123:
	mov.l	r14,@-r15
	sts.l	pr,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov.l	@r14,r1
	mov	r1,r2
	cmp/pz	r2
	bt	L568
	add	#3,r2
L568:
	shar	r2
	shar	r2
	mov	r2,r3
	mov	r3,r2
	mov	r2,r3
	shll2	r3
	mov	r1,r0
	sub	r3,r0
	cmp/eq	#1,r0
	bt	L564
	mov	#1,r1
	cmp/gt	r1,r0
	bt	L569
	tst	r0,r0
	bt	L563
	bra	L566
	nop
L569:
	cmp/eq	#2,r0
	bt	L565
	bra	L566
	nop
L563:
	mov.l	@(4,r14),r0
	bra	L561
	nop
L564:
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	add	r2,r1
	mov	r1,r0
	bra	L561
	nop
L565:
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	sub	r2,r1
	mov	r1,r0
	bra	L561
	nop
L566:
	bra	L562
	nop
L562:
	mov.l	L570,r1
	mov.l	@(4,r14),r5
	mov.l	@r14,r4
	jsr	@r1
	nop
	mov	r0,r1
	mov	r1,r0
	bra	L561
	nop
L561:
	add	#8,r14
	mov	r14,r15
	lds.l	@r15+,pr
	mov.l	@r15+,r14
	rts	
	nop
L571:
	.align 2
L570:
	.long	___mulsi3
	.align 2
	.global	_wl_124
_wl_124:
	mov.l	r14,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
L573:
	mov.l	@r14,r1
	cmp/pl	r1
	bt	L575
	bra	L574
	nop
L575:
	mov.l	@r14,r2
	mov	#7,r1
	and	r2,r1
	mov.l	@(4,r14),r2
	add	r2,r1
	mov.l	r1,@(4,r14)
	mov.l	@r14,r2
	mov	r2,r1
	shar	r1
	shar	r1
	mov	r1,r2
	mov.l	r2,@r14
	bra	L573
	nop
L574:
	mov.l	@(4,r14),r0
	bra	L572
	nop
L572:
	add	#8,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_125
_wl_125:
	mov.l	r14,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov.l	@r14,r1
	mov	r1,r3
	mov	r3,r2
	add	r2,r2
	add	r1,r2
	mov.l	@(4,r14),r3
	mov	r2,r1
	add	r3,r1
	mov.l	@r14,r2
	mov.l	@(4,r14),r3
	sub	r3,r2
	sub	r2,r1
	mov	r1,r0
	bra	L576
	nop
L576:
	add	#8,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_126
_wl_126:
	mov.l	r14,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	cmp/gt	r2,r1
	bf	L578
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	sub	r2,r1
	mov	r1,r0
	bra	L577
	nop
L578:
	mov.l	@(4,r14),r1
	mov.l	@r14,r2
	sub	r2,r1
	mov	r1,r0
	bra	L577
	nop
L577:
	add	#8,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_127
_wl_127:
	mov.l	r14,@-r15
	add	#-16,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov	#0,r1
	mov.l	r1,@(12,r14)
	mov	#0,r1
	mov.l	r1,@(8,r14)
L580:
	mov.l	@(8,r14),r1
	mov.l	@(4,r14),r2
	cmp/ge	r2,r1
	bf	L583
	bra	L581
	nop
L583:
	mov.l	@r14,r1
	mov.l	@(8,r14),r2
	add	r2,r1
	mov.l	@(12,r14),r2
	add	r2,r1
	mov.l	r1,@(12,r14)
L582:
	mov.l	@(8,r14),r2
	mov	r2,r1
	add	#1,r1
	mov	r1,r2
	mov.l	r2,@(8,r14)
	bra	L580
	nop
L581:
	mov.l	@(12,r14),r0
	bra	L579
	nop
L579:
	add	#16,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_128
_wl_128:
	mov.l	r14,@-r15
	sts.l	pr,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov.l	@r14,r1
	mov	r1,r2
	cmp/pz	r2
	bt	L591
	add	#3,r2
L591:
	shar	r2
	shar	r2
	mov	r2,r3
	mov	r3,r2
	mov	r2,r3
	shll2	r3
	mov	r1,r0
	sub	r3,r0
	cmp/eq	#1,r0
	bt	L587
	mov	#1,r1
	cmp/gt	r1,r0
	bt	L592
	tst	r0,r0
	bt	L586
	bra	L589
	nop
L592:
	cmp/eq	#2,r0
	bt	L588
	bra	L589
	nop
L586:
	mov.l	@(4,r14),r0
	bra	L584
	nop
L587:
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	add	r2,r1
	mov	r1,r0
	bra	L584
	nop
L588:
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	sub	r2,r1
	mov	r1,r0
	bra	L584
	nop
L589:
	bra	L585
	nop
L585:
	mov.l	L593,r1
	mov.l	@(4,r14),r5
	mov.l	@r14,r4
	jsr	@r1
	nop
	mov	r0,r1
	mov	r1,r0
	bra	L584
	nop
L584:
	add	#8,r14
	mov	r14,r15
	lds.l	@r15+,pr
	mov.l	@r15+,r14
	rts	
	nop
L594:
	.align 2
L593:
	.long	___mulsi3
	.align 2
	.global	_wl_129
_wl_129:
	mov.l	r14,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
L596:
	mov.l	@r14,r1
	cmp/pl	r1
	bt	L598
	bra	L597
	nop
L598:
	mov.l	@r14,r2
	mov	#7,r1
	and	r2,r1
	mov.l	@(4,r14),r2
	add	r2,r1
	mov.l	r1,@(4,r14)
	mov.l	@r14,r2
	mov	r2,r1
	shar	r1
	shar	r1
	mov	r1,r2
	mov.l	r2,@r14
	bra	L596
	nop
L597:
	mov.l	@(4,r14),r0
	bra	L595
	nop
L595:
	add	#8,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_130
_wl_130:
	mov.l	r14,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov.l	@r14,r1
	mov	r1,r3
	mov	r3,r2
	add	r2,r2
	add	r1,r2
	mov.l	@(4,r14),r3
	mov	r2,r1
	add	r3,r1
	mov.l	@r14,r2
	mov.l	@(4,r14),r3
	sub	r3,r2
	sub	r2,r1
	mov	r1,r0
	bra	L599
	nop
L599:
	add	#8,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_131
_wl_131:
	mov.l	r14,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	cmp/gt	r2,r1
	bf	L601
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	sub	r2,r1
	mov	r1,r0
	bra	L600
	nop
L601:
	mov.l	@(4,r14),r1
	mov.l	@r14,r2
	sub	r2,r1
	mov	r1,r0
	bra	L600
	nop
L600:
	add	#8,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_132
_wl_132:
	mov.l	r14,@-r15
	add	#-16,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov	#0,r1
	mov.l	r1,@(12,r14)
	mov	#0,r1
	mov.l	r1,@(8,r14)
L603:
	mov.l	@(8,r14),r1
	mov.l	@(4,r14),r2
	cmp/ge	r2,r1
	bf	L606
	bra	L604
	nop
L606:
	mov.l	@r14,r1
	mov.l	@(8,r14),r2
	add	r2,r1
	mov.l	@(12,r14),r2
	add	r2,r1
	mov.l	r1,@(12,r14)
L605:
	mov.l	@(8,r14),r2
	mov	r2,r1
	add	#1,r1
	mov	r1,r2
	mov.l	r2,@(8,r14)
	bra	L603
	nop
L604:
	mov.l	@(12,r14),r0
	bra	L602
	nop
L602:
	add	#16,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_133
_wl_133:
	mov.l	r14,@-r15
	sts.l	pr,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov.l	@r14,r1
	mov	r1,r2
	cmp/pz	r2
	bt	L614
	add	#3,r2
L614:
	shar	r2
	shar	r2
	mov	r2,r3
	mov	r3,r2
	mov	r2,r3
	shll2	r3
	mov	r1,r0
	sub	r3,r0
	cmp/eq	#1,r0
	bt	L610
	mov	#1,r1
	cmp/gt	r1,r0
	bt	L615
	tst	r0,r0
	bt	L609
	bra	L612
	nop
L615:
	cmp/eq	#2,r0
	bt	L611
	bra	L612
	nop
L609:
	mov.l	@(4,r14),r0
	bra	L607
	nop
L610:
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	add	r2,r1
	mov	r1,r0
	bra	L607
	nop
L611:
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	sub	r2,r1
	mov	r1,r0
	bra	L607
	nop
L612:
	bra	L608
	nop
L608:
	mov.l	L616,r1
	mov.l	@(4,r14),r5
	mov.l	@r14,r4
	jsr	@r1
	nop
	mov	r0,r1
	mov	r1,r0
	bra	L607
	nop
L607:
	add	#8,r14
	mov	r14,r15
	lds.l	@r15+,pr
	mov.l	@r15+,r14
	rts	
	nop
L617:
	.align 2
L616:
	.long	___mulsi3
	.align 2
	.global	_wl_134
_wl_134:
	mov.l	r14,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
L619:
	mov.l	@r14,r1
	cmp/pl	r1
	bt	L621
	bra	L620
	nop
L621:
	mov.l	@r14,r2
	mov	#7,r1
	and	r2,r1
	mov.l	@(4,r14),r2
	add	r2,r1
	mov.l	r1,@(4,r14)
	mov.l	@r14,r2
	mov	r2,r1
	shar	r1
	shar	r1
	mov	r1,r2
	mov.l	r2,@r14
	bra	L619
	nop
L620:
	mov.l	@(4,r14),r0
	bra	L618
	nop
L618:
	add	#8,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_135
_wl_135:
	mov.l	r14,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov.l	@r14,r1
	mov	r1,r3
	mov	r3,r2
	add	r2,r2
	add	r1,r2
	mov.l	@(4,r14),r3
	mov	r2,r1
	add	r3,r1
	mov.l	@r14,r2
	mov.l	@(4,r14),r3
	sub	r3,r2
	sub	r2,r1
	mov	r1,r0
	bra	L622
	nop
L622:
	add	#8,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_136
_wl_136:
	mov.l	r14,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	cmp/gt	r2,r1
	bf	L624
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	sub	r2,r1
	mov	r1,r0
	bra	L623
	nop
L624:
	mov.l	@(4,r14),r1
	mov.l	@r14,r2
	sub	r2,r1
	mov	r1,r0
	bra	L623
	nop
L623:
	add	#8,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_137
_wl_137:
	mov.l	r14,@-r15
	add	#-16,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov	#0,r1
	mov.l	r1,@(12,r14)
	mov	#0,r1
	mov.l	r1,@(8,r14)
L626:
	mov.l	@(8,r14),r1
	mov.l	@(4,r14),r2
	cmp/ge	r2,r1
	bf	L629
	bra	L627
	nop
L629:
	mov.l	@r14,r1
	mov.l	@(8,r14),r2
	add	r2,r1
	mov.l	@(12,r14),r2
	add	r2,r1
	mov.l	r1,@(12,r14)
L628:
	mov.l	@(8,r14),r2
	mov	r2,r1
	add	#1,r1
	mov	r1,r2
	mov.l	r2,@(8,r14)
	bra	L626
	nop
L627:
	mov.l	@(12,r14),r0
	bra	L625
	nop
L625:
	add	#16,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_138
_wl_138:
	mov.l	r14,@-r15
	sts.l	pr,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov.l	@r14,r1
	mov	r1,r2
	cmp/pz	r2
	bt	L637
	add	#3,r2
L637:
	shar	r2
	shar	r2
	mov	r2,r3
	mov	r3,r2
	mov	r2,r3
	shll2	r3
	mov	r1,r0
	sub	r3,r0
	cmp/eq	#1,r0
	bt	L633
	mov	#1,r1
	cmp/gt	r1,r0
	bt	L638
	tst	r0,r0
	bt	L632
	bra	L635
	nop
L638:
	cmp/eq	#2,r0
	bt	L634
	bra	L635
	nop
L632:
	mov.l	@(4,r14),r0
	bra	L630
	nop
L633:
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	add	r2,r1
	mov	r1,r0
	bra	L630
	nop
L634:
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	sub	r2,r1
	mov	r1,r0
	bra	L630
	nop
L635:
	bra	L631
	nop
L631:
	mov.l	L639,r1
	mov.l	@(4,r14),r5
	mov.l	@r14,r4
	jsr	@r1
	nop
	mov	r0,r1
	mov	r1,r0
	bra	L630
	nop
L630:
	add	#8,r14
	mov	r14,r15
	lds.l	@r15+,pr
	mov.l	@r15+,r14
	rts	
	nop
L640:
	.align 2
L639:
	.long	___mulsi3
	.align 2
	.global	_wl_139
_wl_139:
	mov.l	r14,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
L642:
	mov.l	@r14,r1
	cmp/pl	r1
	bt	L644
	bra	L643
	nop
L644:
	mov.l	@r14,r2
	mov	#7,r1
	and	r2,r1
	mov.l	@(4,r14),r2
	add	r2,r1
	mov.l	r1,@(4,r14)
	mov.l	@r14,r2
	mov	r2,r1
	shar	r1
	shar	r1
	mov	r1,r2
	mov.l	r2,@r14
	bra	L642
	nop
L643:
	mov.l	@(4,r14),r0
	bra	L641
	nop
L641:
	add	#8,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_140
_wl_140:
	mov.l	r14,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov.l	@r14,r1
	mov	r1,r3
	mov	r3,r2
	add	r2,r2
	add	r1,r2
	mov.l	@(4,r14),r3
	mov	r2,r1
	add	r3,r1
	mov.l	@r14,r2
	mov.l	@(4,r14),r3
	sub	r3,r2
	sub	r2,r1
	mov	r1,r0
	bra	L645
	nop
L645:
	add	#8,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_141
_wl_141:
	mov.l	r14,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	cmp/gt	r2,r1
	bf	L647
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	sub	r2,r1
	mov	r1,r0
	bra	L646
	nop
L647:
	mov.l	@(4,r14),r1
	mov.l	@r14,r2
	sub	r2,r1
	mov	r1,r0
	bra	L646
	nop
L646:
	add	#8,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_142
_wl_142:
	mov.l	r14,@-r15
	add	#-16,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov	#0,r1
	mov.l	r1,@(12,r14)
	mov	#0,r1
	mov.l	r1,@(8,r14)
L649:
	mov.l	@(8,r14),r1
	mov.l	@(4,r14),r2
	cmp/ge	r2,r1
	bf	L652
	bra	L650
	nop
L652:
	mov.l	@r14,r1
	mov.l	@(8,r14),r2
	add	r2,r1
	mov.l	@(12,r14),r2
	add	r2,r1
	mov.l	r1,@(12,r14)
L651:
	mov.l	@(8,r14),r2
	mov	r2,r1
	add	#1,r1
	mov	r1,r2
	mov.l	r2,@(8,r14)
	bra	L649
	nop
L650:
	mov.l	@(12,r14),r0
	bra	L648
	nop
L648:
	add	#16,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_143
_wl_143:
	mov.l	r14,@-r15
	sts.l	pr,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov.l	@r14,r1
	mov	r1,r2
	cmp/pz	r2
	bt	L660
	add	#3,r2
L660:
	shar	r2
	shar	r2
	mov	r2,r3
	mov	r3,r2
	mov	r2,r3
	shll2	r3
	mov	r1,r0
	sub	r3,r0
	cmp/eq	#1,r0
	bt	L656
	mov	#1,r1
	cmp/gt	r1,r0
	bt	L661
	tst	r0,r0
	bt	L655
	bra	L658
	nop
L661:
	cmp/eq	#2,r0
	bt	L657
	bra	L658
	nop
L655:
	mov.l	@(4,r14),r0
	bra	L653
	nop
L656:
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	add	r2,r1
	mov	r1,r0
	bra	L653
	nop
L657:
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	sub	r2,r1
	mov	r1,r0
	bra	L653
	nop
L658:
	bra	L654
	nop
L654:
	mov.l	L662,r1
	mov.l	@(4,r14),r5
	mov.l	@r14,r4
	jsr	@r1
	nop
	mov	r0,r1
	mov	r1,r0
	bra	L653
	nop
L653:
	add	#8,r14
	mov	r14,r15
	lds.l	@r15+,pr
	mov.l	@r15+,r14
	rts	
	nop
L663:
	.align 2
L662:
	.long	___mulsi3
	.align 2
	.global	_wl_144
_wl_144:
	mov.l	r14,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
L665:
	mov.l	@r14,r1
	cmp/pl	r1
	bt	L667
	bra	L666
	nop
L667:
	mov.l	@r14,r2
	mov	#7,r1
	and	r2,r1
	mov.l	@(4,r14),r2
	add	r2,r1
	mov.l	r1,@(4,r14)
	mov.l	@r14,r2
	mov	r2,r1
	shar	r1
	shar	r1
	mov	r1,r2
	mov.l	r2,@r14
	bra	L665
	nop
L666:
	mov.l	@(4,r14),r0
	bra	L664
	nop
L664:
	add	#8,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_145
_wl_145:
	mov.l	r14,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov.l	@r14,r1
	mov	r1,r3
	mov	r3,r2
	add	r2,r2
	add	r1,r2
	mov.l	@(4,r14),r3
	mov	r2,r1
	add	r3,r1
	mov.l	@r14,r2
	mov.l	@(4,r14),r3
	sub	r3,r2
	sub	r2,r1
	mov	r1,r0
	bra	L668
	nop
L668:
	add	#8,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_146
_wl_146:
	mov.l	r14,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	cmp/gt	r2,r1
	bf	L670
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	sub	r2,r1
	mov	r1,r0
	bra	L669
	nop
L670:
	mov.l	@(4,r14),r1
	mov.l	@r14,r2
	sub	r2,r1
	mov	r1,r0
	bra	L669
	nop
L669:
	add	#8,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_147
_wl_147:
	mov.l	r14,@-r15
	add	#-16,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov	#0,r1
	mov.l	r1,@(12,r14)
	mov	#0,r1
	mov.l	r1,@(8,r14)
L672:
	mov.l	@(8,r14),r1
	mov.l	@(4,r14),r2
	cmp/ge	r2,r1
	bf	L675
	bra	L673
	nop
L675:
	mov.l	@r14,r1
	mov.l	@(8,r14),r2
	add	r2,r1
	mov.l	@(12,r14),r2
	add	r2,r1
	mov.l	r1,@(12,r14)
L674:
	mov.l	@(8,r14),r2
	mov	r2,r1
	add	#1,r1
	mov	r1,r2
	mov.l	r2,@(8,r14)
	bra	L672
	nop
L673:
	mov.l	@(12,r14),r0
	bra	L671
	nop
L671:
	add	#16,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_148
_wl_148:
	mov.l	r14,@-r15
	sts.l	pr,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov.l	@r14,r1
	mov	r1,r2
	cmp/pz	r2
	bt	L683
	add	#3,r2
L683:
	shar	r2
	shar	r2
	mov	r2,r3
	mov	r3,r2
	mov	r2,r3
	shll2	r3
	mov	r1,r0
	sub	r3,r0
	cmp/eq	#1,r0
	bt	L679
	mov	#1,r1
	cmp/gt	r1,r0
	bt	L684
	tst	r0,r0
	bt	L678
	bra	L681
	nop
L684:
	cmp/eq	#2,r0
	bt	L680
	bra	L681
	nop
L678:
	mov.l	@(4,r14),r0
	bra	L676
	nop
L679:
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	add	r2,r1
	mov	r1,r0
	bra	L676
	nop
L680:
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	sub	r2,r1
	mov	r1,r0
	bra	L676
	nop
L681:
	bra	L677
	nop
L677:
	mov.l	L685,r1
	mov.l	@(4,r14),r5
	mov.l	@r14,r4
	jsr	@r1
	nop
	mov	r0,r1
	mov	r1,r0
	bra	L676
	nop
L676:
	add	#8,r14
	mov	r14,r15
	lds.l	@r15+,pr
	mov.l	@r15+,r14
	rts	
	nop
L686:
	.align 2
L685:
	.long	___mulsi3
	.align 2
	.global	_wl_149
_wl_149:
	mov.l	r14,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
L688:
	mov.l	@r14,r1
	cmp/pl	r1
	bt	L690
	bra	L689
	nop
L690:
	mov.l	@r14,r2
	mov	#7,r1
	and	r2,r1
	mov.l	@(4,r14),r2
	add	r2,r1
	mov.l	r1,@(4,r14)
	mov.l	@r14,r2
	mov	r2,r1
	shar	r1
	shar	r1
	mov	r1,r2
	mov.l	r2,@r14
	bra	L688
	nop
L689:
	mov.l	@(4,r14),r0
	bra	L687
	nop
L687:
	add	#8,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_150
_wl_150:
	mov.l	r14,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov.l	@r14,r1
	mov	r1,r3
	mov	r3,r2
	add	r2,r2
	add	r1,r2
	mov.l	@(4,r14),r3
	mov	r2,r1
	add	r3,r1
	mov.l	@r14,r2
	mov.l	@(4,r14),r3
	sub	r3,r2
	sub	r2,r1
	mov	r1,r0
	bra	L691
	nop
L691:
	add	#8,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_151
_wl_151:
	mov.l	r14,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	cmp/gt	r2,r1
	bf	L693
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	sub	r2,r1
	mov	r1,r0
	bra	L692
	nop
L693:
	mov.l	@(4,r14),r1
	mov.l	@r14,r2
	sub	r2,r1
	mov	r1,r0
	bra	L692
	nop
L692:
	add	#8,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_152
_wl_152:
	mov.l	r14,@-r15
	add	#-16,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov	#0,r1
	mov.l	r1,@(12,r14)
	mov	#0,r1
	mov.l	r1,@(8,r14)
L695:
	mov.l	@(8,r14),r1
	mov.l	@(4,r14),r2
	cmp/ge	r2,r1
	bf	L698
	bra	L696
	nop
L698:
	mov.l	@r14,r1
	mov.l	@(8,r14),r2
	add	r2,r1
	mov.l	@(12,r14),r2
	add	r2,r1
	mov.l	r1,@(12,r14)
L697:
	mov.l	@(8,r14),r2
	mov	r2,r1
	add	#1,r1
	mov	r1,r2
	mov.l	r2,@(8,r14)
	bra	L695
	nop
L696:
	mov.l	@(12,r14),r0
	bra	L694
	nop
L694:
	add	#16,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_153
_wl_153:
	mov.l	r14,@-r15
	sts.l	pr,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov.l	@r14,r1
	mov	r1,r2
	cmp/pz	r2
	bt	L706
	add	#3,r2
L706:
	shar	r2
	shar	r2
	mov	r2,r3
	mov	r3,r2
	mov	r2,r3
	shll2	r3
	mov	r1,r0
	sub	r3,r0
	cmp/eq	#1,r0
	bt	L702
	mov	#1,r1
	cmp/gt	r1,r0
	bt	L707
	tst	r0,r0
	bt	L701
	bra	L704
	nop
L707:
	cmp/eq	#2,r0
	bt	L703
	bra	L704
	nop
L701:
	mov.l	@(4,r14),r0
	bra	L699
	nop
L702:
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	add	r2,r1
	mov	r1,r0
	bra	L699
	nop
L703:
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	sub	r2,r1
	mov	r1,r0
	bra	L699
	nop
L704:
	bra	L700
	nop
L700:
	mov.l	L708,r1
	mov.l	@(4,r14),r5
	mov.l	@r14,r4
	jsr	@r1
	nop
	mov	r0,r1
	mov	r1,r0
	bra	L699
	nop
L699:
	add	#8,r14
	mov	r14,r15
	lds.l	@r15+,pr
	mov.l	@r15+,r14
	rts	
	nop
L709:
	.align 2
L708:
	.long	___mulsi3
	.align 2
	.global	_wl_154
_wl_154:
	mov.l	r14,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
L711:
	mov.l	@r14,r1
	cmp/pl	r1
	bt	L713
	bra	L712
	nop
L713:
	mov.l	@r14,r2
	mov	#7,r1
	and	r2,r1
	mov.l	@(4,r14),r2
	add	r2,r1
	mov.l	r1,@(4,r14)
	mov.l	@r14,r2
	mov	r2,r1
	shar	r1
	shar	r1
	mov	r1,r2
	mov.l	r2,@r14
	bra	L711
	nop
L712:
	mov.l	@(4,r14),r0
	bra	L710
	nop
L710:
	add	#8,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_155
_wl_155:
	mov.l	r14,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov.l	@r14,r1
	mov	r1,r3
	mov	r3,r2
	add	r2,r2
	add	r1,r2
	mov.l	@(4,r14),r3
	mov	r2,r1
	add	r3,r1
	mov.l	@r14,r2
	mov.l	@(4,r14),r3
	sub	r3,r2
	sub	r2,r1
	mov	r1,r0
	bra	L714
	nop
L714:
	add	#8,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_156
_wl_156:
	mov.l	r14,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	cmp/gt	r2,r1
	bf	L716
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	sub	r2,r1
	mov	r1,r0
	bra	L715
	nop
L716:
	mov.l	@(4,r14),r1
	mov.l	@r14,r2
	sub	r2,r1
	mov	r1,r0
	bra	L715
	nop
L715:
	add	#8,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_157
_wl_157:
	mov.l	r14,@-r15
	add	#-16,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov	#0,r1
	mov.l	r1,@(12,r14)
	mov	#0,r1
	mov.l	r1,@(8,r14)
L718:
	mov.l	@(8,r14),r1
	mov.l	@(4,r14),r2
	cmp/ge	r2,r1
	bf	L721
	bra	L719
	nop
L721:
	mov.l	@r14,r1
	mov.l	@(8,r14),r2
	add	r2,r1
	mov.l	@(12,r14),r2
	add	r2,r1
	mov.l	r1,@(12,r14)
L720:
	mov.l	@(8,r14),r2
	mov	r2,r1
	add	#1,r1
	mov	r1,r2
	mov.l	r2,@(8,r14)
	bra	L718
	nop
L719:
	mov.l	@(12,r14),r0
	bra	L717
	nop
L717:
	add	#16,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_158
_wl_158:
	mov.l	r14,@-r15
	sts.l	pr,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov.l	@r14,r1
	mov	r1,r2
	cmp/pz	r2
	bt	L729
	add	#3,r2
L729:
	shar	r2
	shar	r2
	mov	r2,r3
	mov	r3,r2
	mov	r2,r3
	shll2	r3
	mov	r1,r0
	sub	r3,r0
	cmp/eq	#1,r0
	bt	L725
	mov	#1,r1
	cmp/gt	r1,r0
	bt	L730
	tst	r0,r0
	bt	L724
	bra	L727
	nop
L730:
	cmp/eq	#2,r0
	bt	L726
	bra	L727
	nop
L724:
	mov.l	@(4,r14),r0
	bra	L722
	nop
L725:
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	add	r2,r1
	mov	r1,r0
	bra	L722
	nop
L726:
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	sub	r2,r1
	mov	r1,r0
	bra	L722
	nop
L727:
	bra	L723
	nop
L723:
	mov.l	L731,r1
	mov.l	@(4,r14),r5
	mov.l	@r14,r4
	jsr	@r1
	nop
	mov	r0,r1
	mov	r1,r0
	bra	L722
	nop
L722:
	add	#8,r14
	mov	r14,r15
	lds.l	@r15+,pr
	mov.l	@r15+,r14
	rts	
	nop
L732:
	.align 2
L731:
	.long	___mulsi3
	.align 2
	.global	_wl_159
_wl_159:
	mov.l	r14,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
L734:
	mov.l	@r14,r1
	cmp/pl	r1
	bt	L736
	bra	L735
	nop
L736:
	mov.l	@r14,r2
	mov	#7,r1
	and	r2,r1
	mov.l	@(4,r14),r2
	add	r2,r1
	mov.l	r1,@(4,r14)
	mov.l	@r14,r2
	mov	r2,r1
	shar	r1
	shar	r1
	mov	r1,r2
	mov.l	r2,@r14
	bra	L734
	nop
L735:
	mov.l	@(4,r14),r0
	bra	L733
	nop
L733:
	add	#8,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_160
_wl_160:
	mov.l	r14,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov.l	@r14,r1
	mov	r1,r3
	mov	r3,r2
	add	r2,r2
	add	r1,r2
	mov.l	@(4,r14),r3
	mov	r2,r1
	add	r3,r1
	mov.l	@r14,r2
	mov.l	@(4,r14),r3
	sub	r3,r2
	sub	r2,r1
	mov	r1,r0
	bra	L737
	nop
L737:
	add	#8,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_161
_wl_161:
	mov.l	r14,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	cmp/gt	r2,r1
	bf	L739
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	sub	r2,r1
	mov	r1,r0
	bra	L738
	nop
L739:
	mov.l	@(4,r14),r1
	mov.l	@r14,r2
	sub	r2,r1
	mov	r1,r0
	bra	L738
	nop
L738:
	add	#8,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_162
_wl_162:
	mov.l	r14,@-r15
	add	#-16,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov	#0,r1
	mov.l	r1,@(12,r14)
	mov	#0,r1
	mov.l	r1,@(8,r14)
L741:
	mov.l	@(8,r14),r1
	mov.l	@(4,r14),r2
	cmp/ge	r2,r1
	bf	L744
	bra	L742
	nop
L744:
	mov.l	@r14,r1
	mov.l	@(8,r14),r2
	add	r2,r1
	mov.l	@(12,r14),r2
	add	r2,r1
	mov.l	r1,@(12,r14)
L743:
	mov.l	@(8,r14),r2
	mov	r2,r1
	add	#1,r1
	mov	r1,r2
	mov.l	r2,@(8,r14)
	bra	L741
	nop
L742:
	mov.l	@(12,r14),r0
	bra	L740
	nop
L740:
	add	#16,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_163
_wl_163:
	mov.l	r14,@-r15
	sts.l	pr,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov.l	@r14,r1
	mov	r1,r2
	cmp/pz	r2
	bt	L752
	add	#3,r2
L752:
	shar	r2
	shar	r2
	mov	r2,r3
	mov	r3,r2
	mov	r2,r3
	shll2	r3
	mov	r1,r0
	sub	r3,r0
	cmp/eq	#1,r0
	bt	L748
	mov	#1,r1
	cmp/gt	r1,r0
	bt	L753
	tst	r0,r0
	bt	L747
	bra	L750
	nop
L753:
	cmp/eq	#2,r0
	bt	L749
	bra	L750
	nop
L747:
	mov.l	@(4,r14),r0
	bra	L745
	nop
L748:
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	add	r2,r1
	mov	r1,r0
	bra	L745
	nop
L749:
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	sub	r2,r1
	mov	r1,r0
	bra	L745
	nop
L750:
	bra	L746
	nop
L746:
	mov.l	L754,r1
	mov.l	@(4,r14),r5
	mov.l	@r14,r4
	jsr	@r1
	nop
	mov	r0,r1
	mov	r1,r0
	bra	L745
	nop
L745:
	add	#8,r14
	mov	r14,r15
	lds.l	@r15+,pr
	mov.l	@r15+,r14
	rts	
	nop
L755:
	.align 2
L754:
	.long	___mulsi3
	.align 2
	.global	_wl_164
_wl_164:
	mov.l	r14,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
L757:
	mov.l	@r14,r1
	cmp/pl	r1
	bt	L759
	bra	L758
	nop
L759:
	mov.l	@r14,r2
	mov	#7,r1
	and	r2,r1
	mov.l	@(4,r14),r2
	add	r2,r1
	mov.l	r1,@(4,r14)
	mov.l	@r14,r2
	mov	r2,r1
	shar	r1
	shar	r1
	mov	r1,r2
	mov.l	r2,@r14
	bra	L757
	nop
L758:
	mov.l	@(4,r14),r0
	bra	L756
	nop
L756:
	add	#8,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_165
_wl_165:
	mov.l	r14,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov.l	@r14,r1
	mov	r1,r3
	mov	r3,r2
	add	r2,r2
	add	r1,r2
	mov.l	@(4,r14),r3
	mov	r2,r1
	add	r3,r1
	mov.l	@r14,r2
	mov.l	@(4,r14),r3
	sub	r3,r2
	sub	r2,r1
	mov	r1,r0
	bra	L760
	nop
L760:
	add	#8,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_166
_wl_166:
	mov.l	r14,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	cmp/gt	r2,r1
	bf	L762
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	sub	r2,r1
	mov	r1,r0
	bra	L761
	nop
L762:
	mov.l	@(4,r14),r1
	mov.l	@r14,r2
	sub	r2,r1
	mov	r1,r0
	bra	L761
	nop
L761:
	add	#8,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_167
_wl_167:
	mov.l	r14,@-r15
	add	#-16,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov	#0,r1
	mov.l	r1,@(12,r14)
	mov	#0,r1
	mov.l	r1,@(8,r14)
L764:
	mov.l	@(8,r14),r1
	mov.l	@(4,r14),r2
	cmp/ge	r2,r1
	bf	L767
	bra	L765
	nop
L767:
	mov.l	@r14,r1
	mov.l	@(8,r14),r2
	add	r2,r1
	mov.l	@(12,r14),r2
	add	r2,r1
	mov.l	r1,@(12,r14)
L766:
	mov.l	@(8,r14),r2
	mov	r2,r1
	add	#1,r1
	mov	r1,r2
	mov.l	r2,@(8,r14)
	bra	L764
	nop
L765:
	mov.l	@(12,r14),r0
	bra	L763
	nop
L763:
	add	#16,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_168
_wl_168:
	mov.l	r14,@-r15
	sts.l	pr,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov.l	@r14,r1
	mov	r1,r2
	cmp/pz	r2
	bt	L775
	add	#3,r2
L775:
	shar	r2
	shar	r2
	mov	r2,r3
	mov	r3,r2
	mov	r2,r3
	shll2	r3
	mov	r1,r0
	sub	r3,r0
	cmp/eq	#1,r0
	bt	L771
	mov	#1,r1
	cmp/gt	r1,r0
	bt	L776
	tst	r0,r0
	bt	L770
	bra	L773
	nop
L776:
	cmp/eq	#2,r0
	bt	L772
	bra	L773
	nop
L770:
	mov.l	@(4,r14),r0
	bra	L768
	nop
L771:
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	add	r2,r1
	mov	r1,r0
	bra	L768
	nop
L772:
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	sub	r2,r1
	mov	r1,r0
	bra	L768
	nop
L773:
	bra	L769
	nop
L769:
	mov.l	L777,r1
	mov.l	@(4,r14),r5
	mov.l	@r14,r4
	jsr	@r1
	nop
	mov	r0,r1
	mov	r1,r0
	bra	L768
	nop
L768:
	add	#8,r14
	mov	r14,r15
	lds.l	@r15+,pr
	mov.l	@r15+,r14
	rts	
	nop
L778:
	.align 2
L777:
	.long	___mulsi3
	.align 2
	.global	_wl_169
_wl_169:
	mov.l	r14,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
L780:
	mov.l	@r14,r1
	cmp/pl	r1
	bt	L782
	bra	L781
	nop
L782:
	mov.l	@r14,r2
	mov	#7,r1
	and	r2,r1
	mov.l	@(4,r14),r2
	add	r2,r1
	mov.l	r1,@(4,r14)
	mov.l	@r14,r2
	mov	r2,r1
	shar	r1
	shar	r1
	mov	r1,r2
	mov.l	r2,@r14
	bra	L780
	nop
L781:
	mov.l	@(4,r14),r0
	bra	L779
	nop
L779:
	add	#8,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_170
_wl_170:
	mov.l	r14,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov.l	@r14,r1
	mov	r1,r3
	mov	r3,r2
	add	r2,r2
	add	r1,r2
	mov.l	@(4,r14),r3
	mov	r2,r1
	add	r3,r1
	mov.l	@r14,r2
	mov.l	@(4,r14),r3
	sub	r3,r2
	sub	r2,r1
	mov	r1,r0
	bra	L783
	nop
L783:
	add	#8,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_171
_wl_171:
	mov.l	r14,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	cmp/gt	r2,r1
	bf	L785
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	sub	r2,r1
	mov	r1,r0
	bra	L784
	nop
L785:
	mov.l	@(4,r14),r1
	mov.l	@r14,r2
	sub	r2,r1
	mov	r1,r0
	bra	L784
	nop
L784:
	add	#8,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_172
_wl_172:
	mov.l	r14,@-r15
	add	#-16,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov	#0,r1
	mov.l	r1,@(12,r14)
	mov	#0,r1
	mov.l	r1,@(8,r14)
L787:
	mov.l	@(8,r14),r1
	mov.l	@(4,r14),r2
	cmp/ge	r2,r1
	bf	L790
	bra	L788
	nop
L790:
	mov.l	@r14,r1
	mov.l	@(8,r14),r2
	add	r2,r1
	mov.l	@(12,r14),r2
	add	r2,r1
	mov.l	r1,@(12,r14)
L789:
	mov.l	@(8,r14),r2
	mov	r2,r1
	add	#1,r1
	mov	r1,r2
	mov.l	r2,@(8,r14)
	bra	L787
	nop
L788:
	mov.l	@(12,r14),r0
	bra	L786
	nop
L786:
	add	#16,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_173
_wl_173:
	mov.l	r14,@-r15
	sts.l	pr,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov.l	@r14,r1
	mov	r1,r2
	cmp/pz	r2
	bt	L798
	add	#3,r2
L798:
	shar	r2
	shar	r2
	mov	r2,r3
	mov	r3,r2
	mov	r2,r3
	shll2	r3
	mov	r1,r0
	sub	r3,r0
	cmp/eq	#1,r0
	bt	L794
	mov	#1,r1
	cmp/gt	r1,r0
	bt	L799
	tst	r0,r0
	bt	L793
	bra	L796
	nop
L799:
	cmp/eq	#2,r0
	bt	L795
	bra	L796
	nop
L793:
	mov.l	@(4,r14),r0
	bra	L791
	nop
L794:
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	add	r2,r1
	mov	r1,r0
	bra	L791
	nop
L795:
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	sub	r2,r1
	mov	r1,r0
	bra	L791
	nop
L796:
	bra	L792
	nop
L792:
	mov.l	L800,r1
	mov.l	@(4,r14),r5
	mov.l	@r14,r4
	jsr	@r1
	nop
	mov	r0,r1
	mov	r1,r0
	bra	L791
	nop
L791:
	add	#8,r14
	mov	r14,r15
	lds.l	@r15+,pr
	mov.l	@r15+,r14
	rts	
	nop
L801:
	.align 2
L800:
	.long	___mulsi3
	.align 2
	.global	_wl_174
_wl_174:
	mov.l	r14,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
L803:
	mov.l	@r14,r1
	cmp/pl	r1
	bt	L805
	bra	L804
	nop
L805:
	mov.l	@r14,r2
	mov	#7,r1
	and	r2,r1
	mov.l	@(4,r14),r2
	add	r2,r1
	mov.l	r1,@(4,r14)
	mov.l	@r14,r2
	mov	r2,r1
	shar	r1
	shar	r1
	mov	r1,r2
	mov.l	r2,@r14
	bra	L803
	nop
L804:
	mov.l	@(4,r14),r0
	bra	L802
	nop
L802:
	add	#8,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_175
_wl_175:
	mov.l	r14,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov.l	@r14,r1
	mov	r1,r3
	mov	r3,r2
	add	r2,r2
	add	r1,r2
	mov.l	@(4,r14),r3
	mov	r2,r1
	add	r3,r1
	mov.l	@r14,r2
	mov.l	@(4,r14),r3
	sub	r3,r2
	sub	r2,r1
	mov	r1,r0
	bra	L806
	nop
L806:
	add	#8,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_176
_wl_176:
	mov.l	r14,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	cmp/gt	r2,r1
	bf	L808
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	sub	r2,r1
	mov	r1,r0
	bra	L807
	nop
L808:
	mov.l	@(4,r14),r1
	mov.l	@r14,r2
	sub	r2,r1
	mov	r1,r0
	bra	L807
	nop
L807:
	add	#8,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_177
_wl_177:
	mov.l	r14,@-r15
	add	#-16,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov	#0,r1
	mov.l	r1,@(12,r14)
	mov	#0,r1
	mov.l	r1,@(8,r14)
L810:
	mov.l	@(8,r14),r1
	mov.l	@(4,r14),r2
	cmp/ge	r2,r1
	bf	L813
	bra	L811
	nop
L813:
	mov.l	@r14,r1
	mov.l	@(8,r14),r2
	add	r2,r1
	mov.l	@(12,r14),r2
	add	r2,r1
	mov.l	r1,@(12,r14)
L812:
	mov.l	@(8,r14),r2
	mov	r2,r1
	add	#1,r1
	mov	r1,r2
	mov.l	r2,@(8,r14)
	bra	L810
	nop
L811:
	mov.l	@(12,r14),r0
	bra	L809
	nop
L809:
	add	#16,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_178
_wl_178:
	mov.l	r14,@-r15
	sts.l	pr,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov.l	@r14,r1
	mov	r1,r2
	cmp/pz	r2
	bt	L821
	add	#3,r2
L821:
	shar	r2
	shar	r2
	mov	r2,r3
	mov	r3,r2
	mov	r2,r3
	shll2	r3
	mov	r1,r0
	sub	r3,r0
	cmp/eq	#1,r0
	bt	L817
	mov	#1,r1
	cmp/gt	r1,r0
	bt	L822
	tst	r0,r0
	bt	L816
	bra	L819
	nop
L822:
	cmp/eq	#2,r0
	bt	L818
	bra	L819
	nop
L816:
	mov.l	@(4,r14),r0
	bra	L814
	nop
L817:
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	add	r2,r1
	mov	r1,r0
	bra	L814
	nop
L818:
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	sub	r2,r1
	mov	r1,r0
	bra	L814
	nop
L819:
	bra	L815
	nop
L815:
	mov.l	L823,r1
	mov.l	@(4,r14),r5
	mov.l	@r14,r4
	jsr	@r1
	nop
	mov	r0,r1
	mov	r1,r0
	bra	L814
	nop
L814:
	add	#8,r14
	mov	r14,r15
	lds.l	@r15+,pr
	mov.l	@r15+,r14
	rts	
	nop
L824:
	.align 2
L823:
	.long	___mulsi3
	.align 2
	.global	_wl_179
_wl_179:
	mov.l	r14,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
L826:
	mov.l	@r14,r1
	cmp/pl	r1
	bt	L828
	bra	L827
	nop
L828:
	mov.l	@r14,r2
	mov	#7,r1
	and	r2,r1
	mov.l	@(4,r14),r2
	add	r2,r1
	mov.l	r1,@(4,r14)
	mov.l	@r14,r2
	mov	r2,r1
	shar	r1
	shar	r1
	mov	r1,r2
	mov.l	r2,@r14
	bra	L826
	nop
L827:
	mov.l	@(4,r14),r0
	bra	L825
	nop
L825:
	add	#8,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_180
_wl_180:
	mov.l	r14,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov.l	@r14,r1
	mov	r1,r3
	mov	r3,r2
	add	r2,r2
	add	r1,r2
	mov.l	@(4,r14),r3
	mov	r2,r1
	add	r3,r1
	mov.l	@r14,r2
	mov.l	@(4,r14),r3
	sub	r3,r2
	sub	r2,r1
	mov	r1,r0
	bra	L829
	nop
L829:
	add	#8,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_181
_wl_181:
	mov.l	r14,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	cmp/gt	r2,r1
	bf	L831
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	sub	r2,r1
	mov	r1,r0
	bra	L830
	nop
L831:
	mov.l	@(4,r14),r1
	mov.l	@r14,r2
	sub	r2,r1
	mov	r1,r0
	bra	L830
	nop
L830:
	add	#8,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_182
_wl_182:
	mov.l	r14,@-r15
	add	#-16,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov	#0,r1
	mov.l	r1,@(12,r14)
	mov	#0,r1
	mov.l	r1,@(8,r14)
L833:
	mov.l	@(8,r14),r1
	mov.l	@(4,r14),r2
	cmp/ge	r2,r1
	bf	L836
	bra	L834
	nop
L836:
	mov.l	@r14,r1
	mov.l	@(8,r14),r2
	add	r2,r1
	mov.l	@(12,r14),r2
	add	r2,r1
	mov.l	r1,@(12,r14)
L835:
	mov.l	@(8,r14),r2
	mov	r2,r1
	add	#1,r1
	mov	r1,r2
	mov.l	r2,@(8,r14)
	bra	L833
	nop
L834:
	mov.l	@(12,r14),r0
	bra	L832
	nop
L832:
	add	#16,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_183
_wl_183:
	mov.l	r14,@-r15
	sts.l	pr,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov.l	@r14,r1
	mov	r1,r2
	cmp/pz	r2
	bt	L844
	add	#3,r2
L844:
	shar	r2
	shar	r2
	mov	r2,r3
	mov	r3,r2
	mov	r2,r3
	shll2	r3
	mov	r1,r0
	sub	r3,r0
	cmp/eq	#1,r0
	bt	L840
	mov	#1,r1
	cmp/gt	r1,r0
	bt	L845
	tst	r0,r0
	bt	L839
	bra	L842
	nop
L845:
	cmp/eq	#2,r0
	bt	L841
	bra	L842
	nop
L839:
	mov.l	@(4,r14),r0
	bra	L837
	nop
L840:
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	add	r2,r1
	mov	r1,r0
	bra	L837
	nop
L841:
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	sub	r2,r1
	mov	r1,r0
	bra	L837
	nop
L842:
	bra	L838
	nop
L838:
	mov.l	L846,r1
	mov.l	@(4,r14),r5
	mov.l	@r14,r4
	jsr	@r1
	nop
	mov	r0,r1
	mov	r1,r0
	bra	L837
	nop
L837:
	add	#8,r14
	mov	r14,r15
	lds.l	@r15+,pr
	mov.l	@r15+,r14
	rts	
	nop
L847:
	.align 2
L846:
	.long	___mulsi3
	.align 2
	.global	_wl_184
_wl_184:
	mov.l	r14,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
L849:
	mov.l	@r14,r1
	cmp/pl	r1
	bt	L851
	bra	L850
	nop
L851:
	mov.l	@r14,r2
	mov	#7,r1
	and	r2,r1
	mov.l	@(4,r14),r2
	add	r2,r1
	mov.l	r1,@(4,r14)
	mov.l	@r14,r2
	mov	r2,r1
	shar	r1
	shar	r1
	mov	r1,r2
	mov.l	r2,@r14
	bra	L849
	nop
L850:
	mov.l	@(4,r14),r0
	bra	L848
	nop
L848:
	add	#8,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_185
_wl_185:
	mov.l	r14,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov.l	@r14,r1
	mov	r1,r3
	mov	r3,r2
	add	r2,r2
	add	r1,r2
	mov.l	@(4,r14),r3
	mov	r2,r1
	add	r3,r1
	mov.l	@r14,r2
	mov.l	@(4,r14),r3
	sub	r3,r2
	sub	r2,r1
	mov	r1,r0
	bra	L852
	nop
L852:
	add	#8,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_186
_wl_186:
	mov.l	r14,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	cmp/gt	r2,r1
	bf	L854
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	sub	r2,r1
	mov	r1,r0
	bra	L853
	nop
L854:
	mov.l	@(4,r14),r1
	mov.l	@r14,r2
	sub	r2,r1
	mov	r1,r0
	bra	L853
	nop
L853:
	add	#8,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_187
_wl_187:
	mov.l	r14,@-r15
	add	#-16,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov	#0,r1
	mov.l	r1,@(12,r14)
	mov	#0,r1
	mov.l	r1,@(8,r14)
L856:
	mov.l	@(8,r14),r1
	mov.l	@(4,r14),r2
	cmp/ge	r2,r1
	bf	L859
	bra	L857
	nop
L859:
	mov.l	@r14,r1
	mov.l	@(8,r14),r2
	add	r2,r1
	mov.l	@(12,r14),r2
	add	r2,r1
	mov.l	r1,@(12,r14)
L858:
	mov.l	@(8,r14),r2
	mov	r2,r1
	add	#1,r1
	mov	r1,r2
	mov.l	r2,@(8,r14)
	bra	L856
	nop
L857:
	mov.l	@(12,r14),r0
	bra	L855
	nop
L855:
	add	#16,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_188
_wl_188:
	mov.l	r14,@-r15
	sts.l	pr,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov.l	@r14,r1
	mov	r1,r2
	cmp/pz	r2
	bt	L867
	add	#3,r2
L867:
	shar	r2
	shar	r2
	mov	r2,r3
	mov	r3,r2
	mov	r2,r3
	shll2	r3
	mov	r1,r0
	sub	r3,r0
	cmp/eq	#1,r0
	bt	L863
	mov	#1,r1
	cmp/gt	r1,r0
	bt	L868
	tst	r0,r0
	bt	L862
	bra	L865
	nop
L868:
	cmp/eq	#2,r0
	bt	L864
	bra	L865
	nop
L862:
	mov.l	@(4,r14),r0
	bra	L860
	nop
L863:
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	add	r2,r1
	mov	r1,r0
	bra	L860
	nop
L864:
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	sub	r2,r1
	mov	r1,r0
	bra	L860
	nop
L865:
	bra	L861
	nop
L861:
	mov.l	L869,r1
	mov.l	@(4,r14),r5
	mov.l	@r14,r4
	jsr	@r1
	nop
	mov	r0,r1
	mov	r1,r0
	bra	L860
	nop
L860:
	add	#8,r14
	mov	r14,r15
	lds.l	@r15+,pr
	mov.l	@r15+,r14
	rts	
	nop
L870:
	.align 2
L869:
	.long	___mulsi3
	.align 2
	.global	_wl_189
_wl_189:
	mov.l	r14,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
L872:
	mov.l	@r14,r1
	cmp/pl	r1
	bt	L874
	bra	L873
	nop
L874:
	mov.l	@r14,r2
	mov	#7,r1
	and	r2,r1
	mov.l	@(4,r14),r2
	add	r2,r1
	mov.l	r1,@(4,r14)
	mov.l	@r14,r2
	mov	r2,r1
	shar	r1
	shar	r1
	mov	r1,r2
	mov.l	r2,@r14
	bra	L872
	nop
L873:
	mov.l	@(4,r14),r0
	bra	L871
	nop
L871:
	add	#8,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_190
_wl_190:
	mov.l	r14,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov.l	@r14,r1
	mov	r1,r3
	mov	r3,r2
	add	r2,r2
	add	r1,r2
	mov.l	@(4,r14),r3
	mov	r2,r1
	add	r3,r1
	mov.l	@r14,r2
	mov.l	@(4,r14),r3
	sub	r3,r2
	sub	r2,r1
	mov	r1,r0
	bra	L875
	nop
L875:
	add	#8,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_191
_wl_191:
	mov.l	r14,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	cmp/gt	r2,r1
	bf	L877
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	sub	r2,r1
	mov	r1,r0
	bra	L876
	nop
L877:
	mov.l	@(4,r14),r1
	mov.l	@r14,r2
	sub	r2,r1
	mov	r1,r0
	bra	L876
	nop
L876:
	add	#8,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_192
_wl_192:
	mov.l	r14,@-r15
	add	#-16,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov	#0,r1
	mov.l	r1,@(12,r14)
	mov	#0,r1
	mov.l	r1,@(8,r14)
L879:
	mov.l	@(8,r14),r1
	mov.l	@(4,r14),r2
	cmp/ge	r2,r1
	bf	L882
	bra	L880
	nop
L882:
	mov.l	@r14,r1
	mov.l	@(8,r14),r2
	add	r2,r1
	mov.l	@(12,r14),r2
	add	r2,r1
	mov.l	r1,@(12,r14)
L881:
	mov.l	@(8,r14),r2
	mov	r2,r1
	add	#1,r1
	mov	r1,r2
	mov.l	r2,@(8,r14)
	bra	L879
	nop
L880:
	mov.l	@(12,r14),r0
	bra	L878
	nop
L878:
	add	#16,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_193
_wl_193:
	mov.l	r14,@-r15
	sts.l	pr,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov.l	@r14,r1
	mov	r1,r2
	cmp/pz	r2
	bt	L890
	add	#3,r2
L890:
	shar	r2
	shar	r2
	mov	r2,r3
	mov	r3,r2
	mov	r2,r3
	shll2	r3
	mov	r1,r0
	sub	r3,r0
	cmp/eq	#1,r0
	bt	L886
	mov	#1,r1
	cmp/gt	r1,r0
	bt	L891
	tst	r0,r0
	bt	L885
	bra	L888
	nop
L891:
	cmp/eq	#2,r0
	bt	L887
	bra	L888
	nop
L885:
	mov.l	@(4,r14),r0
	bra	L883
	nop
L886:
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	add	r2,r1
	mov	r1,r0
	bra	L883
	nop
L887:
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	sub	r2,r1
	mov	r1,r0
	bra	L883
	nop
L888:
	bra	L884
	nop
L884:
	mov.l	L892,r1
	mov.l	@(4,r14),r5
	mov.l	@r14,r4
	jsr	@r1
	nop
	mov	r0,r1
	mov	r1,r0
	bra	L883
	nop
L883:
	add	#8,r14
	mov	r14,r15
	lds.l	@r15+,pr
	mov.l	@r15+,r14
	rts	
	nop
L893:
	.align 2
L892:
	.long	___mulsi3
	.align 2
	.global	_wl_194
_wl_194:
	mov.l	r14,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
L895:
	mov.l	@r14,r1
	cmp/pl	r1
	bt	L897
	bra	L896
	nop
L897:
	mov.l	@r14,r2
	mov	#7,r1
	and	r2,r1
	mov.l	@(4,r14),r2
	add	r2,r1
	mov.l	r1,@(4,r14)
	mov.l	@r14,r2
	mov	r2,r1
	shar	r1
	shar	r1
	mov	r1,r2
	mov.l	r2,@r14
	bra	L895
	nop
L896:
	mov.l	@(4,r14),r0
	bra	L894
	nop
L894:
	add	#8,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_195
_wl_195:
	mov.l	r14,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov.l	@r14,r1
	mov	r1,r3
	mov	r3,r2
	add	r2,r2
	add	r1,r2
	mov.l	@(4,r14),r3
	mov	r2,r1
	add	r3,r1
	mov.l	@r14,r2
	mov.l	@(4,r14),r3
	sub	r3,r2
	sub	r2,r1
	mov	r1,r0
	bra	L898
	nop
L898:
	add	#8,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_196
_wl_196:
	mov.l	r14,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	cmp/gt	r2,r1
	bf	L900
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	sub	r2,r1
	mov	r1,r0
	bra	L899
	nop
L900:
	mov.l	@(4,r14),r1
	mov.l	@r14,r2
	sub	r2,r1
	mov	r1,r0
	bra	L899
	nop
L899:
	add	#8,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_197
_wl_197:
	mov.l	r14,@-r15
	add	#-16,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov	#0,r1
	mov.l	r1,@(12,r14)
	mov	#0,r1
	mov.l	r1,@(8,r14)
L902:
	mov.l	@(8,r14),r1
	mov.l	@(4,r14),r2
	cmp/ge	r2,r1
	bf	L905
	bra	L903
	nop
L905:
	mov.l	@r14,r1
	mov.l	@(8,r14),r2
	add	r2,r1
	mov.l	@(12,r14),r2
	add	r2,r1
	mov.l	r1,@(12,r14)
L904:
	mov.l	@(8,r14),r2
	mov	r2,r1
	add	#1,r1
	mov	r1,r2
	mov.l	r2,@(8,r14)
	bra	L902
	nop
L903:
	mov.l	@(12,r14),r0
	bra	L901
	nop
L901:
	add	#16,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_198
_wl_198:
	mov.l	r14,@-r15
	sts.l	pr,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov.l	@r14,r1
	mov	r1,r2
	cmp/pz	r2
	bt	L913
	add	#3,r2
L913:
	shar	r2
	shar	r2
	mov	r2,r3
	mov	r3,r2
	mov	r2,r3
	shll2	r3
	mov	r1,r0
	sub	r3,r0
	cmp/eq	#1,r0
	bt	L909
	mov	#1,r1
	cmp/gt	r1,r0
	bt	L914
	tst	r0,r0
	bt	L908
	bra	L911
	nop
L914:
	cmp/eq	#2,r0
	bt	L910
	bra	L911
	nop
L908:
	mov.l	@(4,r14),r0
	bra	L906
	nop
L909:
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	add	r2,r1
	mov	r1,r0
	bra	L906
	nop
L910:
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	sub	r2,r1
	mov	r1,r0
	bra	L906
	nop
L911:
	bra	L907
	nop
L907:
	mov.l	L915,r1
	mov.l	@(4,r14),r5
	mov.l	@r14,r4
	jsr	@r1
	nop
	mov	r0,r1
	mov	r1,r0
	bra	L906
	nop
L906:
	add	#8,r14
	mov	r14,r15
	lds.l	@r15+,pr
	mov.l	@r15+,r14
	rts	
	nop
L916:
	.align 2
L915:
	.long	___mulsi3
	.align 2
	.global	_wl_199
_wl_199:
	mov.l	r14,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
L918:
	mov.l	@r14,r1
	cmp/pl	r1
	bt	L920
	bra	L919
	nop
L920:
	mov.l	@r14,r2
	mov	#7,r1
	and	r2,r1
	mov.l	@(4,r14),r2
	add	r2,r1
	mov.l	r1,@(4,r14)
	mov.l	@r14,r2
	mov	r2,r1
	shar	r1
	shar	r1
	mov	r1,r2
	mov.l	r2,@r14
	bra	L918
	nop
L919:
	mov.l	@(4,r14),r0
	bra	L917
	nop
L917:
	add	#8,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_200
_wl_200:
	mov.l	r14,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov.l	@r14,r1
	mov	r1,r3
	mov	r3,r2
	add	r2,r2
	add	r1,r2
	mov.l	@(4,r14),r3
	mov	r2,r1
	add	r3,r1
	mov.l	@r14,r2
	mov.l	@(4,r14),r3
	sub	r3,r2
	sub	r2,r1
	mov	r1,r0
	bra	L921
	nop
L921:
	add	#8,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_201
_wl_201:
	mov.l	r14,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	cmp/gt	r2,r1
	bf	L923
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	sub	r2,r1
	mov	r1,r0
	bra	L922
	nop
L923:
	mov.l	@(4,r14),r1
	mov.l	@r14,r2
	sub	r2,r1
	mov	r1,r0
	bra	L922
	nop
L922:
	add	#8,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_202
_wl_202:
	mov.l	r14,@-r15
	add	#-16,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov	#0,r1
	mov.l	r1,@(12,r14)
	mov	#0,r1
	mov.l	r1,@(8,r14)
L925:
	mov.l	@(8,r14),r1
	mov.l	@(4,r14),r2
	cmp/ge	r2,r1
	bf	L928
	bra	L926
	nop
L928:
	mov.l	@r14,r1
	mov.l	@(8,r14),r2
	add	r2,r1
	mov.l	@(12,r14),r2
	add	r2,r1
	mov.l	r1,@(12,r14)
L927:
	mov.l	@(8,r14),r2
	mov	r2,r1
	add	#1,r1
	mov	r1,r2
	mov.l	r2,@(8,r14)
	bra	L925
	nop
L926:
	mov.l	@(12,r14),r0
	bra	L924
	nop
L924:
	add	#16,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_203
_wl_203:
	mov.l	r14,@-r15
	sts.l	pr,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov.l	@r14,r1
	mov	r1,r2
	cmp/pz	r2
	bt	L936
	add	#3,r2
L936:
	shar	r2
	shar	r2
	mov	r2,r3
	mov	r3,r2
	mov	r2,r3
	shll2	r3
	mov	r1,r0
	sub	r3,r0
	cmp/eq	#1,r0
	bt	L932
	mov	#1,r1
	cmp/gt	r1,r0
	bt	L937
	tst	r0,r0
	bt	L931
	bra	L934
	nop
L937:
	cmp/eq	#2,r0
	bt	L933
	bra	L934
	nop
L931:
	mov.l	@(4,r14),r0
	bra	L929
	nop
L932:
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	add	r2,r1
	mov	r1,r0
	bra	L929
	nop
L933:
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	sub	r2,r1
	mov	r1,r0
	bra	L929
	nop
L934:
	bra	L930
	nop
L930:
	mov.l	L938,r1
	mov.l	@(4,r14),r5
	mov.l	@r14,r4
	jsr	@r1
	nop
	mov	r0,r1
	mov	r1,r0
	bra	L929
	nop
L929:
	add	#8,r14
	mov	r14,r15
	lds.l	@r15+,pr
	mov.l	@r15+,r14
	rts	
	nop
L939:
	.align 2
L938:
	.long	___mulsi3
	.align 2
	.global	_wl_204
_wl_204:
	mov.l	r14,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
L941:
	mov.l	@r14,r1
	cmp/pl	r1
	bt	L943
	bra	L942
	nop
L943:
	mov.l	@r14,r2
	mov	#7,r1
	and	r2,r1
	mov.l	@(4,r14),r2
	add	r2,r1
	mov.l	r1,@(4,r14)
	mov.l	@r14,r2
	mov	r2,r1
	shar	r1
	shar	r1
	mov	r1,r2
	mov.l	r2,@r14
	bra	L941
	nop
L942:
	mov.l	@(4,r14),r0
	bra	L940
	nop
L940:
	add	#8,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_205
_wl_205:
	mov.l	r14,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov.l	@r14,r1
	mov	r1,r3
	mov	r3,r2
	add	r2,r2
	add	r1,r2
	mov.l	@(4,r14),r3
	mov	r2,r1
	add	r3,r1
	mov.l	@r14,r2
	mov.l	@(4,r14),r3
	sub	r3,r2
	sub	r2,r1
	mov	r1,r0
	bra	L944
	nop
L944:
	add	#8,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_206
_wl_206:
	mov.l	r14,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	cmp/gt	r2,r1
	bf	L946
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	sub	r2,r1
	mov	r1,r0
	bra	L945
	nop
L946:
	mov.l	@(4,r14),r1
	mov.l	@r14,r2
	sub	r2,r1
	mov	r1,r0
	bra	L945
	nop
L945:
	add	#8,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_207
_wl_207:
	mov.l	r14,@-r15
	add	#-16,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov	#0,r1
	mov.l	r1,@(12,r14)
	mov	#0,r1
	mov.l	r1,@(8,r14)
L948:
	mov.l	@(8,r14),r1
	mov.l	@(4,r14),r2
	cmp/ge	r2,r1
	bf	L951
	bra	L949
	nop
L951:
	mov.l	@r14,r1
	mov.l	@(8,r14),r2
	add	r2,r1
	mov.l	@(12,r14),r2
	add	r2,r1
	mov.l	r1,@(12,r14)
L950:
	mov.l	@(8,r14),r2
	mov	r2,r1
	add	#1,r1
	mov	r1,r2
	mov.l	r2,@(8,r14)
	bra	L948
	nop
L949:
	mov.l	@(12,r14),r0
	bra	L947
	nop
L947:
	add	#16,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_208
_wl_208:
	mov.l	r14,@-r15
	sts.l	pr,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov.l	@r14,r1
	mov	r1,r2
	cmp/pz	r2
	bt	L959
	add	#3,r2
L959:
	shar	r2
	shar	r2
	mov	r2,r3
	mov	r3,r2
	mov	r2,r3
	shll2	r3
	mov	r1,r0
	sub	r3,r0
	cmp/eq	#1,r0
	bt	L955
	mov	#1,r1
	cmp/gt	r1,r0
	bt	L960
	tst	r0,r0
	bt	L954
	bra	L957
	nop
L960:
	cmp/eq	#2,r0
	bt	L956
	bra	L957
	nop
L954:
	mov.l	@(4,r14),r0
	bra	L952
	nop
L955:
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	add	r2,r1
	mov	r1,r0
	bra	L952
	nop
L956:
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	sub	r2,r1
	mov	r1,r0
	bra	L952
	nop
L957:
	bra	L953
	nop
L953:
	mov.l	L961,r1
	mov.l	@(4,r14),r5
	mov.l	@r14,r4
	jsr	@r1
	nop
	mov	r0,r1
	mov	r1,r0
	bra	L952
	nop
L952:
	add	#8,r14
	mov	r14,r15
	lds.l	@r15+,pr
	mov.l	@r15+,r14
	rts	
	nop
L962:
	.align 2
L961:
	.long	___mulsi3
	.align 2
	.global	_wl_209
_wl_209:
	mov.l	r14,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
L964:
	mov.l	@r14,r1
	cmp/pl	r1
	bt	L966
	bra	L965
	nop
L966:
	mov.l	@r14,r2
	mov	#7,r1
	and	r2,r1
	mov.l	@(4,r14),r2
	add	r2,r1
	mov.l	r1,@(4,r14)
	mov.l	@r14,r2
	mov	r2,r1
	shar	r1
	shar	r1
	mov	r1,r2
	mov.l	r2,@r14
	bra	L964
	nop
L965:
	mov.l	@(4,r14),r0
	bra	L963
	nop
L963:
	add	#8,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_210
_wl_210:
	mov.l	r14,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov.l	@r14,r1
	mov	r1,r3
	mov	r3,r2
	add	r2,r2
	add	r1,r2
	mov.l	@(4,r14),r3
	mov	r2,r1
	add	r3,r1
	mov.l	@r14,r2
	mov.l	@(4,r14),r3
	sub	r3,r2
	sub	r2,r1
	mov	r1,r0
	bra	L967
	nop
L967:
	add	#8,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_211
_wl_211:
	mov.l	r14,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	cmp/gt	r2,r1
	bf	L969
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	sub	r2,r1
	mov	r1,r0
	bra	L968
	nop
L969:
	mov.l	@(4,r14),r1
	mov.l	@r14,r2
	sub	r2,r1
	mov	r1,r0
	bra	L968
	nop
L968:
	add	#8,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_212
_wl_212:
	mov.l	r14,@-r15
	add	#-16,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov	#0,r1
	mov.l	r1,@(12,r14)
	mov	#0,r1
	mov.l	r1,@(8,r14)
L971:
	mov.l	@(8,r14),r1
	mov.l	@(4,r14),r2
	cmp/ge	r2,r1
	bf	L974
	bra	L972
	nop
L974:
	mov.l	@r14,r1
	mov.l	@(8,r14),r2
	add	r2,r1
	mov.l	@(12,r14),r2
	add	r2,r1
	mov.l	r1,@(12,r14)
L973:
	mov.l	@(8,r14),r2
	mov	r2,r1
	add	#1,r1
	mov	r1,r2
	mov.l	r2,@(8,r14)
	bra	L971
	nop
L972:
	mov.l	@(12,r14),r0
	bra	L970
	nop
L970:
	add	#16,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_213
_wl_213:
	mov.l	r14,@-r15
	sts.l	pr,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov.l	@r14,r1
	mov	r1,r2
	cmp/pz	r2
	bt	L982
	add	#3,r2
L982:
	shar	r2
	shar	r2
	mov	r2,r3
	mov	r3,r2
	mov	r2,r3
	shll2	r3
	mov	r1,r0
	sub	r3,r0
	cmp/eq	#1,r0
	bt	L978
	mov	#1,r1
	cmp/gt	r1,r0
	bt	L983
	tst	r0,r0
	bt	L977
	bra	L980
	nop
L983:
	cmp/eq	#2,r0
	bt	L979
	bra	L980
	nop
L977:
	mov.l	@(4,r14),r0
	bra	L975
	nop
L978:
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	add	r2,r1
	mov	r1,r0
	bra	L975
	nop
L979:
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	sub	r2,r1
	mov	r1,r0
	bra	L975
	nop
L980:
	bra	L976
	nop
L976:
	mov.l	L984,r1
	mov.l	@(4,r14),r5
	mov.l	@r14,r4
	jsr	@r1
	nop
	mov	r0,r1
	mov	r1,r0
	bra	L975
	nop
L975:
	add	#8,r14
	mov	r14,r15
	lds.l	@r15+,pr
	mov.l	@r15+,r14
	rts	
	nop
L985:
	.align 2
L984:
	.long	___mulsi3
	.align 2
	.global	_wl_214
_wl_214:
	mov.l	r14,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
L987:
	mov.l	@r14,r1
	cmp/pl	r1
	bt	L989
	bra	L988
	nop
L989:
	mov.l	@r14,r2
	mov	#7,r1
	and	r2,r1
	mov.l	@(4,r14),r2
	add	r2,r1
	mov.l	r1,@(4,r14)
	mov.l	@r14,r2
	mov	r2,r1
	shar	r1
	shar	r1
	mov	r1,r2
	mov.l	r2,@r14
	bra	L987
	nop
L988:
	mov.l	@(4,r14),r0
	bra	L986
	nop
L986:
	add	#8,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_215
_wl_215:
	mov.l	r14,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov.l	@r14,r1
	mov	r1,r3
	mov	r3,r2
	add	r2,r2
	add	r1,r2
	mov.l	@(4,r14),r3
	mov	r2,r1
	add	r3,r1
	mov.l	@r14,r2
	mov.l	@(4,r14),r3
	sub	r3,r2
	sub	r2,r1
	mov	r1,r0
	bra	L990
	nop
L990:
	add	#8,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_216
_wl_216:
	mov.l	r14,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	cmp/gt	r2,r1
	bf	L992
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	sub	r2,r1
	mov	r1,r0
	bra	L991
	nop
L992:
	mov.l	@(4,r14),r1
	mov.l	@r14,r2
	sub	r2,r1
	mov	r1,r0
	bra	L991
	nop
L991:
	add	#8,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_217
_wl_217:
	mov.l	r14,@-r15
	add	#-16,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov	#0,r1
	mov.l	r1,@(12,r14)
	mov	#0,r1
	mov.l	r1,@(8,r14)
L994:
	mov.l	@(8,r14),r1
	mov.l	@(4,r14),r2
	cmp/ge	r2,r1
	bf	L997
	bra	L995
	nop
L997:
	mov.l	@r14,r1
	mov.l	@(8,r14),r2
	add	r2,r1
	mov.l	@(12,r14),r2
	add	r2,r1
	mov.l	r1,@(12,r14)
L996:
	mov.l	@(8,r14),r2
	mov	r2,r1
	add	#1,r1
	mov	r1,r2
	mov.l	r2,@(8,r14)
	bra	L994
	nop
L995:
	mov.l	@(12,r14),r0
	bra	L993
	nop
L993:
	add	#16,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_218
_wl_218:
	mov.l	r14,@-r15
	sts.l	pr,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov.l	@r14,r1
	mov	r1,r2
	cmp/pz	r2
	bt	L1005
	add	#3,r2
L1005:
	shar	r2
	shar	r2
	mov	r2,r3
	mov	r3,r2
	mov	r2,r3
	shll2	r3
	mov	r1,r0
	sub	r3,r0
	cmp/eq	#1,r0
	bt	L1001
	mov	#1,r1
	cmp/gt	r1,r0
	bt	L1006
	tst	r0,r0
	bt	L1000
	bra	L1003
	nop
L1006:
	cmp/eq	#2,r0
	bt	L1002
	bra	L1003
	nop
L1000:
	mov.l	@(4,r14),r0
	bra	L998
	nop
L1001:
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	add	r2,r1
	mov	r1,r0
	bra	L998
	nop
L1002:
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	sub	r2,r1
	mov	r1,r0
	bra	L998
	nop
L1003:
	bra	L999
	nop
L999:
	mov.l	L1007,r1
	mov.l	@(4,r14),r5
	mov.l	@r14,r4
	jsr	@r1
	nop
	mov	r0,r1
	mov	r1,r0
	bra	L998
	nop
L998:
	add	#8,r14
	mov	r14,r15
	lds.l	@r15+,pr
	mov.l	@r15+,r14
	rts	
	nop
L1008:
	.align 2
L1007:
	.long	___mulsi3
	.align 2
	.global	_wl_219
_wl_219:
	mov.l	r14,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
L1010:
	mov.l	@r14,r1
	cmp/pl	r1
	bt	L1012
	bra	L1011
	nop
L1012:
	mov.l	@r14,r2
	mov	#7,r1
	and	r2,r1
	mov.l	@(4,r14),r2
	add	r2,r1
	mov.l	r1,@(4,r14)
	mov.l	@r14,r2
	mov	r2,r1
	shar	r1
	shar	r1
	mov	r1,r2
	mov.l	r2,@r14
	bra	L1010
	nop
L1011:
	mov.l	@(4,r14),r0
	bra	L1009
	nop
L1009:
	add	#8,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_220
_wl_220:
	mov.l	r14,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov.l	@r14,r1
	mov	r1,r3
	mov	r3,r2
	add	r2,r2
	add	r1,r2
	mov.l	@(4,r14),r3
	mov	r2,r1
	add	r3,r1
	mov.l	@r14,r2
	mov.l	@(4,r14),r3
	sub	r3,r2
	sub	r2,r1
	mov	r1,r0
	bra	L1013
	nop
L1013:
	add	#8,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_221
_wl_221:
	mov.l	r14,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	cmp/gt	r2,r1
	bf	L1015
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	sub	r2,r1
	mov	r1,r0
	bra	L1014
	nop
L1015:
	mov.l	@(4,r14),r1
	mov.l	@r14,r2
	sub	r2,r1
	mov	r1,r0
	bra	L1014
	nop
L1014:
	add	#8,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_222
_wl_222:
	mov.l	r14,@-r15
	add	#-16,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov	#0,r1
	mov.l	r1,@(12,r14)
	mov	#0,r1
	mov.l	r1,@(8,r14)
L1017:
	mov.l	@(8,r14),r1
	mov.l	@(4,r14),r2
	cmp/ge	r2,r1
	bf	L1020
	bra	L1018
	nop
L1020:
	mov.l	@r14,r1
	mov.l	@(8,r14),r2
	add	r2,r1
	mov.l	@(12,r14),r2
	add	r2,r1
	mov.l	r1,@(12,r14)
L1019:
	mov.l	@(8,r14),r2
	mov	r2,r1
	add	#1,r1
	mov	r1,r2
	mov.l	r2,@(8,r14)
	bra	L1017
	nop
L1018:
	mov.l	@(12,r14),r0
	bra	L1016
	nop
L1016:
	add	#16,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_223
_wl_223:
	mov.l	r14,@-r15
	sts.l	pr,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov.l	@r14,r1
	mov	r1,r2
	cmp/pz	r2
	bt	L1028
	add	#3,r2
L1028:
	shar	r2
	shar	r2
	mov	r2,r3
	mov	r3,r2
	mov	r2,r3
	shll2	r3
	mov	r1,r0
	sub	r3,r0
	cmp/eq	#1,r0
	bt	L1024
	mov	#1,r1
	cmp/gt	r1,r0
	bt	L1029
	tst	r0,r0
	bt	L1023
	bra	L1026
	nop
L1029:
	cmp/eq	#2,r0
	bt	L1025
	bra	L1026
	nop
L1023:
	mov.l	@(4,r14),r0
	bra	L1021
	nop
L1024:
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	add	r2,r1
	mov	r1,r0
	bra	L1021
	nop
L1025:
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	sub	r2,r1
	mov	r1,r0
	bra	L1021
	nop
L1026:
	bra	L1022
	nop
L1022:
	mov.l	L1030,r1
	mov.l	@(4,r14),r5
	mov.l	@r14,r4
	jsr	@r1
	nop
	mov	r0,r1
	mov	r1,r0
	bra	L1021
	nop
L1021:
	add	#8,r14
	mov	r14,r15
	lds.l	@r15+,pr
	mov.l	@r15+,r14
	rts	
	nop
L1031:
	.align 2
L1030:
	.long	___mulsi3
	.align 2
	.global	_wl_224
_wl_224:
	mov.l	r14,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
L1033:
	mov.l	@r14,r1
	cmp/pl	r1
	bt	L1035
	bra	L1034
	nop
L1035:
	mov.l	@r14,r2
	mov	#7,r1
	and	r2,r1
	mov.l	@(4,r14),r2
	add	r2,r1
	mov.l	r1,@(4,r14)
	mov.l	@r14,r2
	mov	r2,r1
	shar	r1
	shar	r1
	mov	r1,r2
	mov.l	r2,@r14
	bra	L1033
	nop
L1034:
	mov.l	@(4,r14),r0
	bra	L1032
	nop
L1032:
	add	#8,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_225
_wl_225:
	mov.l	r14,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov.l	@r14,r1
	mov	r1,r3
	mov	r3,r2
	add	r2,r2
	add	r1,r2
	mov.l	@(4,r14),r3
	mov	r2,r1
	add	r3,r1
	mov.l	@r14,r2
	mov.l	@(4,r14),r3
	sub	r3,r2
	sub	r2,r1
	mov	r1,r0
	bra	L1036
	nop
L1036:
	add	#8,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_226
_wl_226:
	mov.l	r14,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	cmp/gt	r2,r1
	bf	L1038
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	sub	r2,r1
	mov	r1,r0
	bra	L1037
	nop
L1038:
	mov.l	@(4,r14),r1
	mov.l	@r14,r2
	sub	r2,r1
	mov	r1,r0
	bra	L1037
	nop
L1037:
	add	#8,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_227
_wl_227:
	mov.l	r14,@-r15
	add	#-16,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov	#0,r1
	mov.l	r1,@(12,r14)
	mov	#0,r1
	mov.l	r1,@(8,r14)
L1040:
	mov.l	@(8,r14),r1
	mov.l	@(4,r14),r2
	cmp/ge	r2,r1
	bf	L1043
	bra	L1041
	nop
L1043:
	mov.l	@r14,r1
	mov.l	@(8,r14),r2
	add	r2,r1
	mov.l	@(12,r14),r2
	add	r2,r1
	mov.l	r1,@(12,r14)
L1042:
	mov.l	@(8,r14),r2
	mov	r2,r1
	add	#1,r1
	mov	r1,r2
	mov.l	r2,@(8,r14)
	bra	L1040
	nop
L1041:
	mov.l	@(12,r14),r0
	bra	L1039
	nop
L1039:
	add	#16,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_228
_wl_228:
	mov.l	r14,@-r15
	sts.l	pr,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov.l	@r14,r1
	mov	r1,r2
	cmp/pz	r2
	bt	L1051
	add	#3,r2
L1051:
	shar	r2
	shar	r2
	mov	r2,r3
	mov	r3,r2
	mov	r2,r3
	shll2	r3
	mov	r1,r0
	sub	r3,r0
	cmp/eq	#1,r0
	bt	L1047
	mov	#1,r1
	cmp/gt	r1,r0
	bt	L1052
	tst	r0,r0
	bt	L1046
	bra	L1049
	nop
L1052:
	cmp/eq	#2,r0
	bt	L1048
	bra	L1049
	nop
L1046:
	mov.l	@(4,r14),r0
	bra	L1044
	nop
L1047:
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	add	r2,r1
	mov	r1,r0
	bra	L1044
	nop
L1048:
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	sub	r2,r1
	mov	r1,r0
	bra	L1044
	nop
L1049:
	bra	L1045
	nop
L1045:
	mov.l	L1053,r1
	mov.l	@(4,r14),r5
	mov.l	@r14,r4
	jsr	@r1
	nop
	mov	r0,r1
	mov	r1,r0
	bra	L1044
	nop
L1044:
	add	#8,r14
	mov	r14,r15
	lds.l	@r15+,pr
	mov.l	@r15+,r14
	rts	
	nop
L1054:
	.align 2
L1053:
	.long	___mulsi3
	.align 2
	.global	_wl_229
_wl_229:
	mov.l	r14,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
L1056:
	mov.l	@r14,r1
	cmp/pl	r1
	bt	L1058
	bra	L1057
	nop
L1058:
	mov.l	@r14,r2
	mov	#7,r1
	and	r2,r1
	mov.l	@(4,r14),r2
	add	r2,r1
	mov.l	r1,@(4,r14)
	mov.l	@r14,r2
	mov	r2,r1
	shar	r1
	shar	r1
	mov	r1,r2
	mov.l	r2,@r14
	bra	L1056
	nop
L1057:
	mov.l	@(4,r14),r0
	bra	L1055
	nop
L1055:
	add	#8,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_230
_wl_230:
	mov.l	r14,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov.l	@r14,r1
	mov	r1,r3
	mov	r3,r2
	add	r2,r2
	add	r1,r2
	mov.l	@(4,r14),r3
	mov	r2,r1
	add	r3,r1
	mov.l	@r14,r2
	mov.l	@(4,r14),r3
	sub	r3,r2
	sub	r2,r1
	mov	r1,r0
	bra	L1059
	nop
L1059:
	add	#8,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_231
_wl_231:
	mov.l	r14,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	cmp/gt	r2,r1
	bf	L1061
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	sub	r2,r1
	mov	r1,r0
	bra	L1060
	nop
L1061:
	mov.l	@(4,r14),r1
	mov.l	@r14,r2
	sub	r2,r1
	mov	r1,r0
	bra	L1060
	nop
L1060:
	add	#8,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_232
_wl_232:
	mov.l	r14,@-r15
	add	#-16,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov	#0,r1
	mov.l	r1,@(12,r14)
	mov	#0,r1
	mov.l	r1,@(8,r14)
L1063:
	mov.l	@(8,r14),r1
	mov.l	@(4,r14),r2
	cmp/ge	r2,r1
	bf	L1066
	bra	L1064
	nop
L1066:
	mov.l	@r14,r1
	mov.l	@(8,r14),r2
	add	r2,r1
	mov.l	@(12,r14),r2
	add	r2,r1
	mov.l	r1,@(12,r14)
L1065:
	mov.l	@(8,r14),r2
	mov	r2,r1
	add	#1,r1
	mov	r1,r2
	mov.l	r2,@(8,r14)
	bra	L1063
	nop
L1064:
	mov.l	@(12,r14),r0
	bra	L1062
	nop
L1062:
	add	#16,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_233
_wl_233:
	mov.l	r14,@-r15
	sts.l	pr,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov.l	@r14,r1
	mov	r1,r2
	cmp/pz	r2
	bt	L1074
	add	#3,r2
L1074:
	shar	r2
	shar	r2
	mov	r2,r3
	mov	r3,r2
	mov	r2,r3
	shll2	r3
	mov	r1,r0
	sub	r3,r0
	cmp/eq	#1,r0
	bt	L1070
	mov	#1,r1
	cmp/gt	r1,r0
	bt	L1075
	tst	r0,r0
	bt	L1069
	bra	L1072
	nop
L1075:
	cmp/eq	#2,r0
	bt	L1071
	bra	L1072
	nop
L1069:
	mov.l	@(4,r14),r0
	bra	L1067
	nop
L1070:
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	add	r2,r1
	mov	r1,r0
	bra	L1067
	nop
L1071:
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	sub	r2,r1
	mov	r1,r0
	bra	L1067
	nop
L1072:
	bra	L1068
	nop
L1068:
	mov.l	L1076,r1
	mov.l	@(4,r14),r5
	mov.l	@r14,r4
	jsr	@r1
	nop
	mov	r0,r1
	mov	r1,r0
	bra	L1067
	nop
L1067:
	add	#8,r14
	mov	r14,r15
	lds.l	@r15+,pr
	mov.l	@r15+,r14
	rts	
	nop
L1077:
	.align 2
L1076:
	.long	___mulsi3
	.align 2
	.global	_wl_234
_wl_234:
	mov.l	r14,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
L1079:
	mov.l	@r14,r1
	cmp/pl	r1
	bt	L1081
	bra	L1080
	nop
L1081:
	mov.l	@r14,r2
	mov	#7,r1
	and	r2,r1
	mov.l	@(4,r14),r2
	add	r2,r1
	mov.l	r1,@(4,r14)
	mov.l	@r14,r2
	mov	r2,r1
	shar	r1
	shar	r1
	mov	r1,r2
	mov.l	r2,@r14
	bra	L1079
	nop
L1080:
	mov.l	@(4,r14),r0
	bra	L1078
	nop
L1078:
	add	#8,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_235
_wl_235:
	mov.l	r14,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov.l	@r14,r1
	mov	r1,r3
	mov	r3,r2
	add	r2,r2
	add	r1,r2
	mov.l	@(4,r14),r3
	mov	r2,r1
	add	r3,r1
	mov.l	@r14,r2
	mov.l	@(4,r14),r3
	sub	r3,r2
	sub	r2,r1
	mov	r1,r0
	bra	L1082
	nop
L1082:
	add	#8,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_236
_wl_236:
	mov.l	r14,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	cmp/gt	r2,r1
	bf	L1084
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	sub	r2,r1
	mov	r1,r0
	bra	L1083
	nop
L1084:
	mov.l	@(4,r14),r1
	mov.l	@r14,r2
	sub	r2,r1
	mov	r1,r0
	bra	L1083
	nop
L1083:
	add	#8,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_237
_wl_237:
	mov.l	r14,@-r15
	add	#-16,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov	#0,r1
	mov.l	r1,@(12,r14)
	mov	#0,r1
	mov.l	r1,@(8,r14)
L1086:
	mov.l	@(8,r14),r1
	mov.l	@(4,r14),r2
	cmp/ge	r2,r1
	bf	L1089
	bra	L1087
	nop
L1089:
	mov.l	@r14,r1
	mov.l	@(8,r14),r2
	add	r2,r1
	mov.l	@(12,r14),r2
	add	r2,r1
	mov.l	r1,@(12,r14)
L1088:
	mov.l	@(8,r14),r2
	mov	r2,r1
	add	#1,r1
	mov	r1,r2
	mov.l	r2,@(8,r14)
	bra	L1086
	nop
L1087:
	mov.l	@(12,r14),r0
	bra	L1085
	nop
L1085:
	add	#16,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_238
_wl_238:
	mov.l	r14,@-r15
	sts.l	pr,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov.l	@r14,r1
	mov	r1,r2
	cmp/pz	r2
	bt	L1097
	add	#3,r2
L1097:
	shar	r2
	shar	r2
	mov	r2,r3
	mov	r3,r2
	mov	r2,r3
	shll2	r3
	mov	r1,r0
	sub	r3,r0
	cmp/eq	#1,r0
	bt	L1093
	mov	#1,r1
	cmp/gt	r1,r0
	bt	L1098
	tst	r0,r0
	bt	L1092
	bra	L1095
	nop
L1098:
	cmp/eq	#2,r0
	bt	L1094
	bra	L1095
	nop
L1092:
	mov.l	@(4,r14),r0
	bra	L1090
	nop
L1093:
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	add	r2,r1
	mov	r1,r0
	bra	L1090
	nop
L1094:
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	sub	r2,r1
	mov	r1,r0
	bra	L1090
	nop
L1095:
	bra	L1091
	nop
L1091:
	mov.l	L1099,r1
	mov.l	@(4,r14),r5
	mov.l	@r14,r4
	jsr	@r1
	nop
	mov	r0,r1
	mov	r1,r0
	bra	L1090
	nop
L1090:
	add	#8,r14
	mov	r14,r15
	lds.l	@r15+,pr
	mov.l	@r15+,r14
	rts	
	nop
L1100:
	.align 2
L1099:
	.long	___mulsi3
	.align 2
	.global	_wl_239
_wl_239:
	mov.l	r14,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
L1102:
	mov.l	@r14,r1
	cmp/pl	r1
	bt	L1104
	bra	L1103
	nop
L1104:
	mov.l	@r14,r2
	mov	#7,r1
	and	r2,r1
	mov.l	@(4,r14),r2
	add	r2,r1
	mov.l	r1,@(4,r14)
	mov.l	@r14,r2
	mov	r2,r1
	shar	r1
	shar	r1
	mov	r1,r2
	mov.l	r2,@r14
	bra	L1102
	nop
L1103:
	mov.l	@(4,r14),r0
	bra	L1101
	nop
L1101:
	add	#8,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_240
_wl_240:
	mov.l	r14,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov.l	@r14,r1
	mov	r1,r3
	mov	r3,r2
	add	r2,r2
	add	r1,r2
	mov.l	@(4,r14),r3
	mov	r2,r1
	add	r3,r1
	mov.l	@r14,r2
	mov.l	@(4,r14),r3
	sub	r3,r2
	sub	r2,r1
	mov	r1,r0
	bra	L1105
	nop
L1105:
	add	#8,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_241
_wl_241:
	mov.l	r14,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	cmp/gt	r2,r1
	bf	L1107
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	sub	r2,r1
	mov	r1,r0
	bra	L1106
	nop
L1107:
	mov.l	@(4,r14),r1
	mov.l	@r14,r2
	sub	r2,r1
	mov	r1,r0
	bra	L1106
	nop
L1106:
	add	#8,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_242
_wl_242:
	mov.l	r14,@-r15
	add	#-16,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov	#0,r1
	mov.l	r1,@(12,r14)
	mov	#0,r1
	mov.l	r1,@(8,r14)
L1109:
	mov.l	@(8,r14),r1
	mov.l	@(4,r14),r2
	cmp/ge	r2,r1
	bf	L1112
	bra	L1110
	nop
L1112:
	mov.l	@r14,r1
	mov.l	@(8,r14),r2
	add	r2,r1
	mov.l	@(12,r14),r2
	add	r2,r1
	mov.l	r1,@(12,r14)
L1111:
	mov.l	@(8,r14),r2
	mov	r2,r1
	add	#1,r1
	mov	r1,r2
	mov.l	r2,@(8,r14)
	bra	L1109
	nop
L1110:
	mov.l	@(12,r14),r0
	bra	L1108
	nop
L1108:
	add	#16,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_243
_wl_243:
	mov.l	r14,@-r15
	sts.l	pr,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov.l	@r14,r1
	mov	r1,r2
	cmp/pz	r2
	bt	L1120
	add	#3,r2
L1120:
	shar	r2
	shar	r2
	mov	r2,r3
	mov	r3,r2
	mov	r2,r3
	shll2	r3
	mov	r1,r0
	sub	r3,r0
	cmp/eq	#1,r0
	bt	L1116
	mov	#1,r1
	cmp/gt	r1,r0
	bt	L1121
	tst	r0,r0
	bt	L1115
	bra	L1118
	nop
L1121:
	cmp/eq	#2,r0
	bt	L1117
	bra	L1118
	nop
L1115:
	mov.l	@(4,r14),r0
	bra	L1113
	nop
L1116:
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	add	r2,r1
	mov	r1,r0
	bra	L1113
	nop
L1117:
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	sub	r2,r1
	mov	r1,r0
	bra	L1113
	nop
L1118:
	bra	L1114
	nop
L1114:
	mov.l	L1122,r1
	mov.l	@(4,r14),r5
	mov.l	@r14,r4
	jsr	@r1
	nop
	mov	r0,r1
	mov	r1,r0
	bra	L1113
	nop
L1113:
	add	#8,r14
	mov	r14,r15
	lds.l	@r15+,pr
	mov.l	@r15+,r14
	rts	
	nop
L1123:
	.align 2
L1122:
	.long	___mulsi3
	.align 2
	.global	_wl_244
_wl_244:
	mov.l	r14,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
L1125:
	mov.l	@r14,r1
	cmp/pl	r1
	bt	L1127
	bra	L1126
	nop
L1127:
	mov.l	@r14,r2
	mov	#7,r1
	and	r2,r1
	mov.l	@(4,r14),r2
	add	r2,r1
	mov.l	r1,@(4,r14)
	mov.l	@r14,r2
	mov	r2,r1
	shar	r1
	shar	r1
	mov	r1,r2
	mov.l	r2,@r14
	bra	L1125
	nop
L1126:
	mov.l	@(4,r14),r0
	bra	L1124
	nop
L1124:
	add	#8,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_245
_wl_245:
	mov.l	r14,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov.l	@r14,r1
	mov	r1,r3
	mov	r3,r2
	add	r2,r2
	add	r1,r2
	mov.l	@(4,r14),r3
	mov	r2,r1
	add	r3,r1
	mov.l	@r14,r2
	mov.l	@(4,r14),r3
	sub	r3,r2
	sub	r2,r1
	mov	r1,r0
	bra	L1128
	nop
L1128:
	add	#8,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_246
_wl_246:
	mov.l	r14,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	cmp/gt	r2,r1
	bf	L1130
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	sub	r2,r1
	mov	r1,r0
	bra	L1129
	nop
L1130:
	mov.l	@(4,r14),r1
	mov.l	@r14,r2
	sub	r2,r1
	mov	r1,r0
	bra	L1129
	nop
L1129:
	add	#8,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_247
_wl_247:
	mov.l	r14,@-r15
	add	#-16,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov	#0,r1
	mov.l	r1,@(12,r14)
	mov	#0,r1
	mov.l	r1,@(8,r14)
L1132:
	mov.l	@(8,r14),r1
	mov.l	@(4,r14),r2
	cmp/ge	r2,r1
	bf	L1135
	bra	L1133
	nop
L1135:
	mov.l	@r14,r1
	mov.l	@(8,r14),r2
	add	r2,r1
	mov.l	@(12,r14),r2
	add	r2,r1
	mov.l	r1,@(12,r14)
L1134:
	mov.l	@(8,r14),r2
	mov	r2,r1
	add	#1,r1
	mov	r1,r2
	mov.l	r2,@(8,r14)
	bra	L1132
	nop
L1133:
	mov.l	@(12,r14),r0
	bra	L1131
	nop
L1131:
	add	#16,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_248
_wl_248:
	mov.l	r14,@-r15
	sts.l	pr,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov.l	@r14,r1
	mov	r1,r2
	cmp/pz	r2
	bt	L1143
	add	#3,r2
L1143:
	shar	r2
	shar	r2
	mov	r2,r3
	mov	r3,r2
	mov	r2,r3
	shll2	r3
	mov	r1,r0
	sub	r3,r0
	cmp/eq	#1,r0
	bt	L1139
	mov	#1,r1
	cmp/gt	r1,r0
	bt	L1144
	tst	r0,r0
	bt	L1138
	bra	L1141
	nop
L1144:
	cmp/eq	#2,r0
	bt	L1140
	bra	L1141
	nop
L1138:
	mov.l	@(4,r14),r0
	bra	L1136
	nop
L1139:
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	add	r2,r1
	mov	r1,r0
	bra	L1136
	nop
L1140:
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	sub	r2,r1
	mov	r1,r0
	bra	L1136
	nop
L1141:
	bra	L1137
	nop
L1137:
	mov.l	L1145,r1
	mov.l	@(4,r14),r5
	mov.l	@r14,r4
	jsr	@r1
	nop
	mov	r0,r1
	mov	r1,r0
	bra	L1136
	nop
L1136:
	add	#8,r14
	mov	r14,r15
	lds.l	@r15+,pr
	mov.l	@r15+,r14
	rts	
	nop
L1146:
	.align 2
L1145:
	.long	___mulsi3
	.align 2
	.global	_wl_249
_wl_249:
	mov.l	r14,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
L1148:
	mov.l	@r14,r1
	cmp/pl	r1
	bt	L1150
	bra	L1149
	nop
L1150:
	mov.l	@r14,r2
	mov	#7,r1
	and	r2,r1
	mov.l	@(4,r14),r2
	add	r2,r1
	mov.l	r1,@(4,r14)
	mov.l	@r14,r2
	mov	r2,r1
	shar	r1
	shar	r1
	mov	r1,r2
	mov.l	r2,@r14
	bra	L1148
	nop
L1149:
	mov.l	@(4,r14),r0
	bra	L1147
	nop
L1147:
	add	#8,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_250
_wl_250:
	mov.l	r14,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov.l	@r14,r1
	mov	r1,r3
	mov	r3,r2
	add	r2,r2
	add	r1,r2
	mov.l	@(4,r14),r3
	mov	r2,r1
	add	r3,r1
	mov.l	@r14,r2
	mov.l	@(4,r14),r3
	sub	r3,r2
	sub	r2,r1
	mov	r1,r0
	bra	L1151
	nop
L1151:
	add	#8,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_251
_wl_251:
	mov.l	r14,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	cmp/gt	r2,r1
	bf	L1153
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	sub	r2,r1
	mov	r1,r0
	bra	L1152
	nop
L1153:
	mov.l	@(4,r14),r1
	mov.l	@r14,r2
	sub	r2,r1
	mov	r1,r0
	bra	L1152
	nop
L1152:
	add	#8,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_252
_wl_252:
	mov.l	r14,@-r15
	add	#-16,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov	#0,r1
	mov.l	r1,@(12,r14)
	mov	#0,r1
	mov.l	r1,@(8,r14)
L1155:
	mov.l	@(8,r14),r1
	mov.l	@(4,r14),r2
	cmp/ge	r2,r1
	bf	L1158
	bra	L1156
	nop
L1158:
	mov.l	@r14,r1
	mov.l	@(8,r14),r2
	add	r2,r1
	mov.l	@(12,r14),r2
	add	r2,r1
	mov.l	r1,@(12,r14)
L1157:
	mov.l	@(8,r14),r2
	mov	r2,r1
	add	#1,r1
	mov	r1,r2
	mov.l	r2,@(8,r14)
	bra	L1155
	nop
L1156:
	mov.l	@(12,r14),r0
	bra	L1154
	nop
L1154:
	add	#16,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_253
_wl_253:
	mov.l	r14,@-r15
	sts.l	pr,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov.l	@r14,r1
	mov	r1,r2
	cmp/pz	r2
	bt	L1166
	add	#3,r2
L1166:
	shar	r2
	shar	r2
	mov	r2,r3
	mov	r3,r2
	mov	r2,r3
	shll2	r3
	mov	r1,r0
	sub	r3,r0
	cmp/eq	#1,r0
	bt	L1162
	mov	#1,r1
	cmp/gt	r1,r0
	bt	L1167
	tst	r0,r0
	bt	L1161
	bra	L1164
	nop
L1167:
	cmp/eq	#2,r0
	bt	L1163
	bra	L1164
	nop
L1161:
	mov.l	@(4,r14),r0
	bra	L1159
	nop
L1162:
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	add	r2,r1
	mov	r1,r0
	bra	L1159
	nop
L1163:
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	sub	r2,r1
	mov	r1,r0
	bra	L1159
	nop
L1164:
	bra	L1160
	nop
L1160:
	mov.l	L1168,r1
	mov.l	@(4,r14),r5
	mov.l	@r14,r4
	jsr	@r1
	nop
	mov	r0,r1
	mov	r1,r0
	bra	L1159
	nop
L1159:
	add	#8,r14
	mov	r14,r15
	lds.l	@r15+,pr
	mov.l	@r15+,r14
	rts	
	nop
L1169:
	.align 2
L1168:
	.long	___mulsi3
	.align 2
	.global	_wl_254
_wl_254:
	mov.l	r14,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
L1171:
	mov.l	@r14,r1
	cmp/pl	r1
	bt	L1173
	bra	L1172
	nop
L1173:
	mov.l	@r14,r2
	mov	#7,r1
	and	r2,r1
	mov.l	@(4,r14),r2
	add	r2,r1
	mov.l	r1,@(4,r14)
	mov.l	@r14,r2
	mov	r2,r1
	shar	r1
	shar	r1
	mov	r1,r2
	mov.l	r2,@r14
	bra	L1171
	nop
L1172:
	mov.l	@(4,r14),r0
	bra	L1170
	nop
L1170:
	add	#8,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_255
_wl_255:
	mov.l	r14,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov.l	@r14,r1
	mov	r1,r3
	mov	r3,r2
	add	r2,r2
	add	r1,r2
	mov.l	@(4,r14),r3
	mov	r2,r1
	add	r3,r1
	mov.l	@r14,r2
	mov.l	@(4,r14),r3
	sub	r3,r2
	sub	r2,r1
	mov	r1,r0
	bra	L1174
	nop
L1174:
	add	#8,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_256
_wl_256:
	mov.l	r14,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	cmp/gt	r2,r1
	bf	L1176
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	sub	r2,r1
	mov	r1,r0
	bra	L1175
	nop
L1176:
	mov.l	@(4,r14),r1
	mov.l	@r14,r2
	sub	r2,r1
	mov	r1,r0
	bra	L1175
	nop
L1175:
	add	#8,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_257
_wl_257:
	mov.l	r14,@-r15
	add	#-16,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov	#0,r1
	mov.l	r1,@(12,r14)
	mov	#0,r1
	mov.l	r1,@(8,r14)
L1178:
	mov.l	@(8,r14),r1
	mov.l	@(4,r14),r2
	cmp/ge	r2,r1
	bf	L1181
	bra	L1179
	nop
L1181:
	mov.l	@r14,r1
	mov.l	@(8,r14),r2
	add	r2,r1
	mov.l	@(12,r14),r2
	add	r2,r1
	mov.l	r1,@(12,r14)
L1180:
	mov.l	@(8,r14),r2
	mov	r2,r1
	add	#1,r1
	mov	r1,r2
	mov.l	r2,@(8,r14)
	bra	L1178
	nop
L1179:
	mov.l	@(12,r14),r0
	bra	L1177
	nop
L1177:
	add	#16,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_258
_wl_258:
	mov.l	r14,@-r15
	sts.l	pr,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov.l	@r14,r1
	mov	r1,r2
	cmp/pz	r2
	bt	L1189
	add	#3,r2
L1189:
	shar	r2
	shar	r2
	mov	r2,r3
	mov	r3,r2
	mov	r2,r3
	shll2	r3
	mov	r1,r0
	sub	r3,r0
	cmp/eq	#1,r0
	bt	L1185
	mov	#1,r1
	cmp/gt	r1,r0
	bt	L1190
	tst	r0,r0
	bt	L1184
	bra	L1187
	nop
L1190:
	cmp/eq	#2,r0
	bt	L1186
	bra	L1187
	nop
L1184:
	mov.l	@(4,r14),r0
	bra	L1182
	nop
L1185:
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	add	r2,r1
	mov	r1,r0
	bra	L1182
	nop
L1186:
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	sub	r2,r1
	mov	r1,r0
	bra	L1182
	nop
L1187:
	bra	L1183
	nop
L1183:
	mov.l	L1191,r1
	mov.l	@(4,r14),r5
	mov.l	@r14,r4
	jsr	@r1
	nop
	mov	r0,r1
	mov	r1,r0
	bra	L1182
	nop
L1182:
	add	#8,r14
	mov	r14,r15
	lds.l	@r15+,pr
	mov.l	@r15+,r14
	rts	
	nop
L1192:
	.align 2
L1191:
	.long	___mulsi3
	.align 2
	.global	_wl_259
_wl_259:
	mov.l	r14,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
L1194:
	mov.l	@r14,r1
	cmp/pl	r1
	bt	L1196
	bra	L1195
	nop
L1196:
	mov.l	@r14,r2
	mov	#7,r1
	and	r2,r1
	mov.l	@(4,r14),r2
	add	r2,r1
	mov.l	r1,@(4,r14)
	mov.l	@r14,r2
	mov	r2,r1
	shar	r1
	shar	r1
	mov	r1,r2
	mov.l	r2,@r14
	bra	L1194
	nop
L1195:
	mov.l	@(4,r14),r0
	bra	L1193
	nop
L1193:
	add	#8,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_260
_wl_260:
	mov.l	r14,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov.l	@r14,r1
	mov	r1,r3
	mov	r3,r2
	add	r2,r2
	add	r1,r2
	mov.l	@(4,r14),r3
	mov	r2,r1
	add	r3,r1
	mov.l	@r14,r2
	mov.l	@(4,r14),r3
	sub	r3,r2
	sub	r2,r1
	mov	r1,r0
	bra	L1197
	nop
L1197:
	add	#8,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_261
_wl_261:
	mov.l	r14,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	cmp/gt	r2,r1
	bf	L1199
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	sub	r2,r1
	mov	r1,r0
	bra	L1198
	nop
L1199:
	mov.l	@(4,r14),r1
	mov.l	@r14,r2
	sub	r2,r1
	mov	r1,r0
	bra	L1198
	nop
L1198:
	add	#8,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_262
_wl_262:
	mov.l	r14,@-r15
	add	#-16,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov	#0,r1
	mov.l	r1,@(12,r14)
	mov	#0,r1
	mov.l	r1,@(8,r14)
L1201:
	mov.l	@(8,r14),r1
	mov.l	@(4,r14),r2
	cmp/ge	r2,r1
	bf	L1204
	bra	L1202
	nop
L1204:
	mov.l	@r14,r1
	mov.l	@(8,r14),r2
	add	r2,r1
	mov.l	@(12,r14),r2
	add	r2,r1
	mov.l	r1,@(12,r14)
L1203:
	mov.l	@(8,r14),r2
	mov	r2,r1
	add	#1,r1
	mov	r1,r2
	mov.l	r2,@(8,r14)
	bra	L1201
	nop
L1202:
	mov.l	@(12,r14),r0
	bra	L1200
	nop
L1200:
	add	#16,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_263
_wl_263:
	mov.l	r14,@-r15
	sts.l	pr,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov.l	@r14,r1
	mov	r1,r2
	cmp/pz	r2
	bt	L1212
	add	#3,r2
L1212:
	shar	r2
	shar	r2
	mov	r2,r3
	mov	r3,r2
	mov	r2,r3
	shll2	r3
	mov	r1,r0
	sub	r3,r0
	cmp/eq	#1,r0
	bt	L1208
	mov	#1,r1
	cmp/gt	r1,r0
	bt	L1213
	tst	r0,r0
	bt	L1207
	bra	L1210
	nop
L1213:
	cmp/eq	#2,r0
	bt	L1209
	bra	L1210
	nop
L1207:
	mov.l	@(4,r14),r0
	bra	L1205
	nop
L1208:
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	add	r2,r1
	mov	r1,r0
	bra	L1205
	nop
L1209:
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	sub	r2,r1
	mov	r1,r0
	bra	L1205
	nop
L1210:
	bra	L1206
	nop
L1206:
	mov.l	L1214,r1
	mov.l	@(4,r14),r5
	mov.l	@r14,r4
	jsr	@r1
	nop
	mov	r0,r1
	mov	r1,r0
	bra	L1205
	nop
L1205:
	add	#8,r14
	mov	r14,r15
	lds.l	@r15+,pr
	mov.l	@r15+,r14
	rts	
	nop
L1215:
	.align 2
L1214:
	.long	___mulsi3
	.align 2
	.global	_wl_264
_wl_264:
	mov.l	r14,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
L1217:
	mov.l	@r14,r1
	cmp/pl	r1
	bt	L1219
	bra	L1218
	nop
L1219:
	mov.l	@r14,r2
	mov	#7,r1
	and	r2,r1
	mov.l	@(4,r14),r2
	add	r2,r1
	mov.l	r1,@(4,r14)
	mov.l	@r14,r2
	mov	r2,r1
	shar	r1
	shar	r1
	mov	r1,r2
	mov.l	r2,@r14
	bra	L1217
	nop
L1218:
	mov.l	@(4,r14),r0
	bra	L1216
	nop
L1216:
	add	#8,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_265
_wl_265:
	mov.l	r14,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov.l	@r14,r1
	mov	r1,r3
	mov	r3,r2
	add	r2,r2
	add	r1,r2
	mov.l	@(4,r14),r3
	mov	r2,r1
	add	r3,r1
	mov.l	@r14,r2
	mov.l	@(4,r14),r3
	sub	r3,r2
	sub	r2,r1
	mov	r1,r0
	bra	L1220
	nop
L1220:
	add	#8,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_266
_wl_266:
	mov.l	r14,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	cmp/gt	r2,r1
	bf	L1222
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	sub	r2,r1
	mov	r1,r0
	bra	L1221
	nop
L1222:
	mov.l	@(4,r14),r1
	mov.l	@r14,r2
	sub	r2,r1
	mov	r1,r0
	bra	L1221
	nop
L1221:
	add	#8,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_267
_wl_267:
	mov.l	r14,@-r15
	add	#-16,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov	#0,r1
	mov.l	r1,@(12,r14)
	mov	#0,r1
	mov.l	r1,@(8,r14)
L1224:
	mov.l	@(8,r14),r1
	mov.l	@(4,r14),r2
	cmp/ge	r2,r1
	bf	L1227
	bra	L1225
	nop
L1227:
	mov.l	@r14,r1
	mov.l	@(8,r14),r2
	add	r2,r1
	mov.l	@(12,r14),r2
	add	r2,r1
	mov.l	r1,@(12,r14)
L1226:
	mov.l	@(8,r14),r2
	mov	r2,r1
	add	#1,r1
	mov	r1,r2
	mov.l	r2,@(8,r14)
	bra	L1224
	nop
L1225:
	mov.l	@(12,r14),r0
	bra	L1223
	nop
L1223:
	add	#16,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_268
_wl_268:
	mov.l	r14,@-r15
	sts.l	pr,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov.l	@r14,r1
	mov	r1,r2
	cmp/pz	r2
	bt	L1235
	add	#3,r2
L1235:
	shar	r2
	shar	r2
	mov	r2,r3
	mov	r3,r2
	mov	r2,r3
	shll2	r3
	mov	r1,r0
	sub	r3,r0
	cmp/eq	#1,r0
	bt	L1231
	mov	#1,r1
	cmp/gt	r1,r0
	bt	L1236
	tst	r0,r0
	bt	L1230
	bra	L1233
	nop
L1236:
	cmp/eq	#2,r0
	bt	L1232
	bra	L1233
	nop
L1230:
	mov.l	@(4,r14),r0
	bra	L1228
	nop
L1231:
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	add	r2,r1
	mov	r1,r0
	bra	L1228
	nop
L1232:
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	sub	r2,r1
	mov	r1,r0
	bra	L1228
	nop
L1233:
	bra	L1229
	nop
L1229:
	mov.l	L1237,r1
	mov.l	@(4,r14),r5
	mov.l	@r14,r4
	jsr	@r1
	nop
	mov	r0,r1
	mov	r1,r0
	bra	L1228
	nop
L1228:
	add	#8,r14
	mov	r14,r15
	lds.l	@r15+,pr
	mov.l	@r15+,r14
	rts	
	nop
L1238:
	.align 2
L1237:
	.long	___mulsi3
	.align 2
	.global	_wl_269
_wl_269:
	mov.l	r14,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
L1240:
	mov.l	@r14,r1
	cmp/pl	r1
	bt	L1242
	bra	L1241
	nop
L1242:
	mov.l	@r14,r2
	mov	#7,r1
	and	r2,r1
	mov.l	@(4,r14),r2
	add	r2,r1
	mov.l	r1,@(4,r14)
	mov.l	@r14,r2
	mov	r2,r1
	shar	r1
	shar	r1
	mov	r1,r2
	mov.l	r2,@r14
	bra	L1240
	nop
L1241:
	mov.l	@(4,r14),r0
	bra	L1239
	nop
L1239:
	add	#8,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_270
_wl_270:
	mov.l	r14,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov.l	@r14,r1
	mov	r1,r3
	mov	r3,r2
	add	r2,r2
	add	r1,r2
	mov.l	@(4,r14),r3
	mov	r2,r1
	add	r3,r1
	mov.l	@r14,r2
	mov.l	@(4,r14),r3
	sub	r3,r2
	sub	r2,r1
	mov	r1,r0
	bra	L1243
	nop
L1243:
	add	#8,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_271
_wl_271:
	mov.l	r14,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	cmp/gt	r2,r1
	bf	L1245
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	sub	r2,r1
	mov	r1,r0
	bra	L1244
	nop
L1245:
	mov.l	@(4,r14),r1
	mov.l	@r14,r2
	sub	r2,r1
	mov	r1,r0
	bra	L1244
	nop
L1244:
	add	#8,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_272
_wl_272:
	mov.l	r14,@-r15
	add	#-16,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov	#0,r1
	mov.l	r1,@(12,r14)
	mov	#0,r1
	mov.l	r1,@(8,r14)
L1247:
	mov.l	@(8,r14),r1
	mov.l	@(4,r14),r2
	cmp/ge	r2,r1
	bf	L1250
	bra	L1248
	nop
L1250:
	mov.l	@r14,r1
	mov.l	@(8,r14),r2
	add	r2,r1
	mov.l	@(12,r14),r2
	add	r2,r1
	mov.l	r1,@(12,r14)
L1249:
	mov.l	@(8,r14),r2
	mov	r2,r1
	add	#1,r1
	mov	r1,r2
	mov.l	r2,@(8,r14)
	bra	L1247
	nop
L1248:
	mov.l	@(12,r14),r0
	bra	L1246
	nop
L1246:
	add	#16,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_273
_wl_273:
	mov.l	r14,@-r15
	sts.l	pr,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov.l	@r14,r1
	mov	r1,r2
	cmp/pz	r2
	bt	L1258
	add	#3,r2
L1258:
	shar	r2
	shar	r2
	mov	r2,r3
	mov	r3,r2
	mov	r2,r3
	shll2	r3
	mov	r1,r0
	sub	r3,r0
	cmp/eq	#1,r0
	bt	L1254
	mov	#1,r1
	cmp/gt	r1,r0
	bt	L1259
	tst	r0,r0
	bt	L1253
	bra	L1256
	nop
L1259:
	cmp/eq	#2,r0
	bt	L1255
	bra	L1256
	nop
L1253:
	mov.l	@(4,r14),r0
	bra	L1251
	nop
L1254:
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	add	r2,r1
	mov	r1,r0
	bra	L1251
	nop
L1255:
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	sub	r2,r1
	mov	r1,r0
	bra	L1251
	nop
L1256:
	bra	L1252
	nop
L1252:
	mov.l	L1260,r1
	mov.l	@(4,r14),r5
	mov.l	@r14,r4
	jsr	@r1
	nop
	mov	r0,r1
	mov	r1,r0
	bra	L1251
	nop
L1251:
	add	#8,r14
	mov	r14,r15
	lds.l	@r15+,pr
	mov.l	@r15+,r14
	rts	
	nop
L1261:
	.align 2
L1260:
	.long	___mulsi3
	.align 2
	.global	_wl_274
_wl_274:
	mov.l	r14,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
L1263:
	mov.l	@r14,r1
	cmp/pl	r1
	bt	L1265
	bra	L1264
	nop
L1265:
	mov.l	@r14,r2
	mov	#7,r1
	and	r2,r1
	mov.l	@(4,r14),r2
	add	r2,r1
	mov.l	r1,@(4,r14)
	mov.l	@r14,r2
	mov	r2,r1
	shar	r1
	shar	r1
	mov	r1,r2
	mov.l	r2,@r14
	bra	L1263
	nop
L1264:
	mov.l	@(4,r14),r0
	bra	L1262
	nop
L1262:
	add	#8,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_275
_wl_275:
	mov.l	r14,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov.l	@r14,r1
	mov	r1,r3
	mov	r3,r2
	add	r2,r2
	add	r1,r2
	mov.l	@(4,r14),r3
	mov	r2,r1
	add	r3,r1
	mov.l	@r14,r2
	mov.l	@(4,r14),r3
	sub	r3,r2
	sub	r2,r1
	mov	r1,r0
	bra	L1266
	nop
L1266:
	add	#8,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_276
_wl_276:
	mov.l	r14,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	cmp/gt	r2,r1
	bf	L1268
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	sub	r2,r1
	mov	r1,r0
	bra	L1267
	nop
L1268:
	mov.l	@(4,r14),r1
	mov.l	@r14,r2
	sub	r2,r1
	mov	r1,r0
	bra	L1267
	nop
L1267:
	add	#8,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_277
_wl_277:
	mov.l	r14,@-r15
	add	#-16,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov	#0,r1
	mov.l	r1,@(12,r14)
	mov	#0,r1
	mov.l	r1,@(8,r14)
L1270:
	mov.l	@(8,r14),r1
	mov.l	@(4,r14),r2
	cmp/ge	r2,r1
	bf	L1273
	bra	L1271
	nop
L1273:
	mov.l	@r14,r1
	mov.l	@(8,r14),r2
	add	r2,r1
	mov.l	@(12,r14),r2
	add	r2,r1
	mov.l	r1,@(12,r14)
L1272:
	mov.l	@(8,r14),r2
	mov	r2,r1
	add	#1,r1
	mov	r1,r2
	mov.l	r2,@(8,r14)
	bra	L1270
	nop
L1271:
	mov.l	@(12,r14),r0
	bra	L1269
	nop
L1269:
	add	#16,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_278
_wl_278:
	mov.l	r14,@-r15
	sts.l	pr,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov.l	@r14,r1
	mov	r1,r2
	cmp/pz	r2
	bt	L1281
	add	#3,r2
L1281:
	shar	r2
	shar	r2
	mov	r2,r3
	mov	r3,r2
	mov	r2,r3
	shll2	r3
	mov	r1,r0
	sub	r3,r0
	cmp/eq	#1,r0
	bt	L1277
	mov	#1,r1
	cmp/gt	r1,r0
	bt	L1282
	tst	r0,r0
	bt	L1276
	bra	L1279
	nop
L1282:
	cmp/eq	#2,r0
	bt	L1278
	bra	L1279
	nop
L1276:
	mov.l	@(4,r14),r0
	bra	L1274
	nop
L1277:
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	add	r2,r1
	mov	r1,r0
	bra	L1274
	nop
L1278:
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	sub	r2,r1
	mov	r1,r0
	bra	L1274
	nop
L1279:
	bra	L1275
	nop
L1275:
	mov.l	L1283,r1
	mov.l	@(4,r14),r5
	mov.l	@r14,r4
	jsr	@r1
	nop
	mov	r0,r1
	mov	r1,r0
	bra	L1274
	nop
L1274:
	add	#8,r14
	mov	r14,r15
	lds.l	@r15+,pr
	mov.l	@r15+,r14
	rts	
	nop
L1284:
	.align 2
L1283:
	.long	___mulsi3
	.align 2
	.global	_wl_279
_wl_279:
	mov.l	r14,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
L1286:
	mov.l	@r14,r1
	cmp/pl	r1
	bt	L1288
	bra	L1287
	nop
L1288:
	mov.l	@r14,r2
	mov	#7,r1
	and	r2,r1
	mov.l	@(4,r14),r2
	add	r2,r1
	mov.l	r1,@(4,r14)
	mov.l	@r14,r2
	mov	r2,r1
	shar	r1
	shar	r1
	mov	r1,r2
	mov.l	r2,@r14
	bra	L1286
	nop
L1287:
	mov.l	@(4,r14),r0
	bra	L1285
	nop
L1285:
	add	#8,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_280
_wl_280:
	mov.l	r14,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov.l	@r14,r1
	mov	r1,r3
	mov	r3,r2
	add	r2,r2
	add	r1,r2
	mov.l	@(4,r14),r3
	mov	r2,r1
	add	r3,r1
	mov.l	@r14,r2
	mov.l	@(4,r14),r3
	sub	r3,r2
	sub	r2,r1
	mov	r1,r0
	bra	L1289
	nop
L1289:
	add	#8,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_281
_wl_281:
	mov.l	r14,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	cmp/gt	r2,r1
	bf	L1291
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	sub	r2,r1
	mov	r1,r0
	bra	L1290
	nop
L1291:
	mov.l	@(4,r14),r1
	mov.l	@r14,r2
	sub	r2,r1
	mov	r1,r0
	bra	L1290
	nop
L1290:
	add	#8,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_282
_wl_282:
	mov.l	r14,@-r15
	add	#-16,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov	#0,r1
	mov.l	r1,@(12,r14)
	mov	#0,r1
	mov.l	r1,@(8,r14)
L1293:
	mov.l	@(8,r14),r1
	mov.l	@(4,r14),r2
	cmp/ge	r2,r1
	bf	L1296
	bra	L1294
	nop
L1296:
	mov.l	@r14,r1
	mov.l	@(8,r14),r2
	add	r2,r1
	mov.l	@(12,r14),r2
	add	r2,r1
	mov.l	r1,@(12,r14)
L1295:
	mov.l	@(8,r14),r2
	mov	r2,r1
	add	#1,r1
	mov	r1,r2
	mov.l	r2,@(8,r14)
	bra	L1293
	nop
L1294:
	mov.l	@(12,r14),r0
	bra	L1292
	nop
L1292:
	add	#16,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_283
_wl_283:
	mov.l	r14,@-r15
	sts.l	pr,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov.l	@r14,r1
	mov	r1,r2
	cmp/pz	r2
	bt	L1304
	add	#3,r2
L1304:
	shar	r2
	shar	r2
	mov	r2,r3
	mov	r3,r2
	mov	r2,r3
	shll2	r3
	mov	r1,r0
	sub	r3,r0
	cmp/eq	#1,r0
	bt	L1300
	mov	#1,r1
	cmp/gt	r1,r0
	bt	L1305
	tst	r0,r0
	bt	L1299
	bra	L1302
	nop
L1305:
	cmp/eq	#2,r0
	bt	L1301
	bra	L1302
	nop
L1299:
	mov.l	@(4,r14),r0
	bra	L1297
	nop
L1300:
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	add	r2,r1
	mov	r1,r0
	bra	L1297
	nop
L1301:
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	sub	r2,r1
	mov	r1,r0
	bra	L1297
	nop
L1302:
	bra	L1298
	nop
L1298:
	mov.l	L1306,r1
	mov.l	@(4,r14),r5
	mov.l	@r14,r4
	jsr	@r1
	nop
	mov	r0,r1
	mov	r1,r0
	bra	L1297
	nop
L1297:
	add	#8,r14
	mov	r14,r15
	lds.l	@r15+,pr
	mov.l	@r15+,r14
	rts	
	nop
L1307:
	.align 2
L1306:
	.long	___mulsi3
	.align 2
	.global	_wl_284
_wl_284:
	mov.l	r14,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
L1309:
	mov.l	@r14,r1
	cmp/pl	r1
	bt	L1311
	bra	L1310
	nop
L1311:
	mov.l	@r14,r2
	mov	#7,r1
	and	r2,r1
	mov.l	@(4,r14),r2
	add	r2,r1
	mov.l	r1,@(4,r14)
	mov.l	@r14,r2
	mov	r2,r1
	shar	r1
	shar	r1
	mov	r1,r2
	mov.l	r2,@r14
	bra	L1309
	nop
L1310:
	mov.l	@(4,r14),r0
	bra	L1308
	nop
L1308:
	add	#8,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_285
_wl_285:
	mov.l	r14,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov.l	@r14,r1
	mov	r1,r3
	mov	r3,r2
	add	r2,r2
	add	r1,r2
	mov.l	@(4,r14),r3
	mov	r2,r1
	add	r3,r1
	mov.l	@r14,r2
	mov.l	@(4,r14),r3
	sub	r3,r2
	sub	r2,r1
	mov	r1,r0
	bra	L1312
	nop
L1312:
	add	#8,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_286
_wl_286:
	mov.l	r14,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	cmp/gt	r2,r1
	bf	L1314
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	sub	r2,r1
	mov	r1,r0
	bra	L1313
	nop
L1314:
	mov.l	@(4,r14),r1
	mov.l	@r14,r2
	sub	r2,r1
	mov	r1,r0
	bra	L1313
	nop
L1313:
	add	#8,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_287
_wl_287:
	mov.l	r14,@-r15
	add	#-16,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov	#0,r1
	mov.l	r1,@(12,r14)
	mov	#0,r1
	mov.l	r1,@(8,r14)
L1316:
	mov.l	@(8,r14),r1
	mov.l	@(4,r14),r2
	cmp/ge	r2,r1
	bf	L1319
	bra	L1317
	nop
L1319:
	mov.l	@r14,r1
	mov.l	@(8,r14),r2
	add	r2,r1
	mov.l	@(12,r14),r2
	add	r2,r1
	mov.l	r1,@(12,r14)
L1318:
	mov.l	@(8,r14),r2
	mov	r2,r1
	add	#1,r1
	mov	r1,r2
	mov.l	r2,@(8,r14)
	bra	L1316
	nop
L1317:
	mov.l	@(12,r14),r0
	bra	L1315
	nop
L1315:
	add	#16,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_288
_wl_288:
	mov.l	r14,@-r15
	sts.l	pr,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov.l	@r14,r1
	mov	r1,r2
	cmp/pz	r2
	bt	L1327
	add	#3,r2
L1327:
	shar	r2
	shar	r2
	mov	r2,r3
	mov	r3,r2
	mov	r2,r3
	shll2	r3
	mov	r1,r0
	sub	r3,r0
	cmp/eq	#1,r0
	bt	L1323
	mov	#1,r1
	cmp/gt	r1,r0
	bt	L1328
	tst	r0,r0
	bt	L1322
	bra	L1325
	nop
L1328:
	cmp/eq	#2,r0
	bt	L1324
	bra	L1325
	nop
L1322:
	mov.l	@(4,r14),r0
	bra	L1320
	nop
L1323:
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	add	r2,r1
	mov	r1,r0
	bra	L1320
	nop
L1324:
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	sub	r2,r1
	mov	r1,r0
	bra	L1320
	nop
L1325:
	bra	L1321
	nop
L1321:
	mov.l	L1329,r1
	mov.l	@(4,r14),r5
	mov.l	@r14,r4
	jsr	@r1
	nop
	mov	r0,r1
	mov	r1,r0
	bra	L1320
	nop
L1320:
	add	#8,r14
	mov	r14,r15
	lds.l	@r15+,pr
	mov.l	@r15+,r14
	rts	
	nop
L1330:
	.align 2
L1329:
	.long	___mulsi3
	.align 2
	.global	_wl_289
_wl_289:
	mov.l	r14,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
L1332:
	mov.l	@r14,r1
	cmp/pl	r1
	bt	L1334
	bra	L1333
	nop
L1334:
	mov.l	@r14,r2
	mov	#7,r1
	and	r2,r1
	mov.l	@(4,r14),r2
	add	r2,r1
	mov.l	r1,@(4,r14)
	mov.l	@r14,r2
	mov	r2,r1
	shar	r1
	shar	r1
	mov	r1,r2
	mov.l	r2,@r14
	bra	L1332
	nop
L1333:
	mov.l	@(4,r14),r0
	bra	L1331
	nop
L1331:
	add	#8,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_290
_wl_290:
	mov.l	r14,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov.l	@r14,r1
	mov	r1,r3
	mov	r3,r2
	add	r2,r2
	add	r1,r2
	mov.l	@(4,r14),r3
	mov	r2,r1
	add	r3,r1
	mov.l	@r14,r2
	mov.l	@(4,r14),r3
	sub	r3,r2
	sub	r2,r1
	mov	r1,r0
	bra	L1335
	nop
L1335:
	add	#8,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_291
_wl_291:
	mov.l	r14,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	cmp/gt	r2,r1
	bf	L1337
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	sub	r2,r1
	mov	r1,r0
	bra	L1336
	nop
L1337:
	mov.l	@(4,r14),r1
	mov.l	@r14,r2
	sub	r2,r1
	mov	r1,r0
	bra	L1336
	nop
L1336:
	add	#8,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_292
_wl_292:
	mov.l	r14,@-r15
	add	#-16,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov	#0,r1
	mov.l	r1,@(12,r14)
	mov	#0,r1
	mov.l	r1,@(8,r14)
L1339:
	mov.l	@(8,r14),r1
	mov.l	@(4,r14),r2
	cmp/ge	r2,r1
	bf	L1342
	bra	L1340
	nop
L1342:
	mov.l	@r14,r1
	mov.l	@(8,r14),r2
	add	r2,r1
	mov.l	@(12,r14),r2
	add	r2,r1
	mov.l	r1,@(12,r14)
L1341:
	mov.l	@(8,r14),r2
	mov	r2,r1
	add	#1,r1
	mov	r1,r2
	mov.l	r2,@(8,r14)
	bra	L1339
	nop
L1340:
	mov.l	@(12,r14),r0
	bra	L1338
	nop
L1338:
	add	#16,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_293
_wl_293:
	mov.l	r14,@-r15
	sts.l	pr,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov.l	@r14,r1
	mov	r1,r2
	cmp/pz	r2
	bt	L1350
	add	#3,r2
L1350:
	shar	r2
	shar	r2
	mov	r2,r3
	mov	r3,r2
	mov	r2,r3
	shll2	r3
	mov	r1,r0
	sub	r3,r0
	cmp/eq	#1,r0
	bt	L1346
	mov	#1,r1
	cmp/gt	r1,r0
	bt	L1351
	tst	r0,r0
	bt	L1345
	bra	L1348
	nop
L1351:
	cmp/eq	#2,r0
	bt	L1347
	bra	L1348
	nop
L1345:
	mov.l	@(4,r14),r0
	bra	L1343
	nop
L1346:
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	add	r2,r1
	mov	r1,r0
	bra	L1343
	nop
L1347:
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	sub	r2,r1
	mov	r1,r0
	bra	L1343
	nop
L1348:
	bra	L1344
	nop
L1344:
	mov.l	L1352,r1
	mov.l	@(4,r14),r5
	mov.l	@r14,r4
	jsr	@r1
	nop
	mov	r0,r1
	mov	r1,r0
	bra	L1343
	nop
L1343:
	add	#8,r14
	mov	r14,r15
	lds.l	@r15+,pr
	mov.l	@r15+,r14
	rts	
	nop
L1353:
	.align 2
L1352:
	.long	___mulsi3
	.align 2
	.global	_wl_294
_wl_294:
	mov.l	r14,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
L1355:
	mov.l	@r14,r1
	cmp/pl	r1
	bt	L1357
	bra	L1356
	nop
L1357:
	mov.l	@r14,r2
	mov	#7,r1
	and	r2,r1
	mov.l	@(4,r14),r2
	add	r2,r1
	mov.l	r1,@(4,r14)
	mov.l	@r14,r2
	mov	r2,r1
	shar	r1
	shar	r1
	mov	r1,r2
	mov.l	r2,@r14
	bra	L1355
	nop
L1356:
	mov.l	@(4,r14),r0
	bra	L1354
	nop
L1354:
	add	#8,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_295
_wl_295:
	mov.l	r14,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov.l	@r14,r1
	mov	r1,r3
	mov	r3,r2
	add	r2,r2
	add	r1,r2
	mov.l	@(4,r14),r3
	mov	r2,r1
	add	r3,r1
	mov.l	@r14,r2
	mov.l	@(4,r14),r3
	sub	r3,r2
	sub	r2,r1
	mov	r1,r0
	bra	L1358
	nop
L1358:
	add	#8,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_296
_wl_296:
	mov.l	r14,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	cmp/gt	r2,r1
	bf	L1360
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	sub	r2,r1
	mov	r1,r0
	bra	L1359
	nop
L1360:
	mov.l	@(4,r14),r1
	mov.l	@r14,r2
	sub	r2,r1
	mov	r1,r0
	bra	L1359
	nop
L1359:
	add	#8,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_297
_wl_297:
	mov.l	r14,@-r15
	add	#-16,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov	#0,r1
	mov.l	r1,@(12,r14)
	mov	#0,r1
	mov.l	r1,@(8,r14)
L1362:
	mov.l	@(8,r14),r1
	mov.l	@(4,r14),r2
	cmp/ge	r2,r1
	bf	L1365
	bra	L1363
	nop
L1365:
	mov.l	@r14,r1
	mov.l	@(8,r14),r2
	add	r2,r1
	mov.l	@(12,r14),r2
	add	r2,r1
	mov.l	r1,@(12,r14)
L1364:
	mov.l	@(8,r14),r2
	mov	r2,r1
	add	#1,r1
	mov	r1,r2
	mov.l	r2,@(8,r14)
	bra	L1362
	nop
L1363:
	mov.l	@(12,r14),r0
	bra	L1361
	nop
L1361:
	add	#16,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_wl_298
_wl_298:
	mov.l	r14,@-r15
	sts.l	pr,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
	mov.l	@r14,r1
	mov	r1,r2
	cmp/pz	r2
	bt	L1373
	add	#3,r2
L1373:
	shar	r2
	shar	r2
	mov	r2,r3
	mov	r3,r2
	mov	r2,r3
	shll2	r3
	mov	r1,r0
	sub	r3,r0
	cmp/eq	#1,r0
	bt	L1369
	mov	#1,r1
	cmp/gt	r1,r0
	bt	L1374
	tst	r0,r0
	bt	L1368
	bra	L1371
	nop
L1374:
	cmp/eq	#2,r0
	bt	L1370
	bra	L1371
	nop
L1368:
	mov.l	@(4,r14),r0
	bra	L1366
	nop
L1369:
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	add	r2,r1
	mov	r1,r0
	bra	L1366
	nop
L1370:
	mov.l	@r14,r1
	mov.l	@(4,r14),r2
	sub	r2,r1
	mov	r1,r0
	bra	L1366
	nop
L1371:
	bra	L1367
	nop
L1367:
	mov.l	L1375,r1
	mov.l	@(4,r14),r5
	mov.l	@r14,r4
	jsr	@r1
	nop
	mov	r0,r1
	mov	r1,r0
	bra	L1366
	nop
L1366:
	add	#8,r14
	mov	r14,r15
	lds.l	@r15+,pr
	mov.l	@r15+,r14
	rts	
	nop
L1376:
	.align 2
L1375:
	.long	___mulsi3
	.align 2
	.global	_wl_299
_wl_299:
	mov.l	r14,@-r15
	add	#-8,r15
	mov	r15,r14
	mov.l	r4,@r14
	mov.l	r5,@(4,r14)
L1378:
	mov.l	@r14,r1
	cmp/pl	r1
	bt	L1380
	bra	L1379
	nop
L1380:
	mov.l	@r14,r2
	mov	#7,r1
	and	r2,r1
	mov.l	@(4,r14),r2
	add	r2,r1
	mov.l	r1,@(4,r14)
	mov.l	@r14,r2
	mov	r2,r1
	shar	r1
	shar	r1
	mov	r1,r2
	mov.l	r2,@r14
	bra	L1378
	nop
L1379:
	mov.l	@(4,r14),r0
	bra	L1377
	nop
L1377:
	add	#8,r14
	mov	r14,r15
	mov.l	@r15+,r14
	rts	
	nop
	.align 2
	.global	_main
_main:
	mov.l	r8,@-r15
	mov.l	r9,@-r15
	mov.l	r14,@-r15
	sts.l	pr,@-r15
	mov	r15,r14
	mov.l	L1382,r8
	jsr	@r8
	nop
	mov	#2,r5
	mov	#1,r4
	mov.l	L1383,r8
	jsr	@r8
	nop
	mov	r0,r8
	mov	#4,r5
	mov	#3,r4
	mov.l	L1384,r9
	jsr	@r9
	nop
	mov	r8,r1
	add	r0,r1
	mov	r1,r0
	bra	L1381
	nop
L1381:
	mov	r14,r15
	lds.l	@r15+,pr
	mov.l	@r15+,r14
	mov.l	@r15+,r9
	mov.l	@r15+,r8
	rts	
	nop
L1385:
	.align 2
L1382:
	.long	___main
L1383:
	.long	_wl_0
L1384:
	.long	_wl_299
