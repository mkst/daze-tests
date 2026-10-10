	.file	"large.c"
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
	.global	_main
_main:
	mov.l	r8,@-r15
	mov.l	r9,@-r15
	mov.l	r14,@-r15
	sts.l	pr,@-r15
	mov	r15,r14
	mov.l	L370,r8
	jsr	@r8
	nop
	mov	#2,r5
	mov	#1,r4
	mov.l	L371,r8
	jsr	@r8
	nop
	mov	r0,r8
	mov	#4,r5
	mov	#3,r4
	mov.l	L372,r9
	jsr	@r9
	nop
	mov	r8,r1
	add	r0,r1
	mov	r1,r0
	bra	L369
	nop
L369:
	mov	r14,r15
	lds.l	@r15+,pr
	mov.l	@r15+,r14
	mov.l	@r15+,r9
	mov.l	@r15+,r8
	rts	
	nop
L373:
	.align 2
L370:
	.long	___main
L371:
	.long	_wl_0
L372:
	.long	_wl_79
