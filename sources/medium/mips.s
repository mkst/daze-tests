	.file	1 "/tmp/code.c"

 # GNU C 2.6.3 [AL 1.1, MM 40] Sony Playstation compiled by GNU C

 # Cc1 defaults:
 # -mgas -msoft-float

 # Cc1 arguments (-G value = 0, Cpu = 3000, ISA = 1):
 # -G0 -quiet -O2 -funsigned-char -o -

gcc2_compiled.:
__gnu_compiled_c:
	.rdata
	.align	2
$LC0:
	.ascii	"wing step %x\n\000"
	.align	2
$LC1:
	.ascii	"wing step_s %x\n\000"
	.text
	.align	2
	.globl	func_us_801ABDE4
	.file	2 "src.c"
	.ent	func_us_801ABDE4
func_us_801ABDE4:
	.frame	$sp,40,$31		# vars= 0, regs= 6/0, args= 16, extra= 0
	.mask	0x801f0000,-4
	.fmask	0x00000000,0
	subu	$sp,$sp,40
	sw	$18,24($sp)
	move	$18,$4
	sw	$16,16($sp)
	la	$16,D_us_801BEE9C
	la	$2,D_us_801BEE34
	sw	$31,36($sp)
	sw	$20,32($sp)
	sw	$19,28($sp)
	sw	$17,20($sp)
	sw	$2,0($16)
	la	$2,D_us_801BEE68
	sw	$2,D_us_801BEE9C+4
	lhu	$5,44($18)
	la	$4,$LC0
	jal	FntPrint
	lhu	$5,46($18)
	la	$4,$LC1
	jal	FntPrint
	lw	$2,-136($18)
	#nop
	andi	$2,$2,0x0100
	.set	noreorder
	.set	nomacro
	beq	$2,$0,$L2
	li	$2,0x00000005		# 5
	.set	macro
	.set	reorder

	lhu	$3,44($18)
	#nop
	.set	noreorder
	.set	nomacro
	beq	$3,$2,$L2
	move	$3,$16
	.set	macro
	.set	reorder

	move	$17,$0
$L6:
	lw	$2,0($3)
	#nop
	sw	$2,D_us_801BEEA4
	sb	$0,45($2)
	lw	$2,D_us_801BEEA4
	addu	$17,$17,1
	sb	$0,46($2)
	slt	$2,$17,2
	.set	noreorder
	.set	nomacro
	bne	$2,$0,$L6
	addu	$3,$3,4
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	jal	SetStep
	li	$4,0x00000005		# 5
	.set	macro
	.set	reorder

$L2:
	lhu	$3,44($18)
	#nop
	sltu	$2,$3,6
	.set	noreorder
	.set	nomacro
	beq	$2,$0,$L8
	sll	$2,$3,2
	.set	macro
	.set	reorder

	lw	$2,$L104($2)
	#nop
	j	$2
	.rdata
	.align	3
$L104:
	.word	$L9
	.word	$L26
	.word	$L32
	.word	$L44
	.word	$L68
	.word	$L80
	.text
$L9:
	la	$4,D_us_80180BC4
	jal	InitializeEntity
	li	$4,0x00000004		# 4
	lw	$2,g_api+68
	#nop
	.set	noreorder
	.set	nomacro
	jal	$31,$2
	li	$5,0x0000000a		# 10
	.set	macro
	.set	reorder

	sll	$2,$2,16
	sra	$4,$2,16
	li	$2,-1			# 0xffffffff
	.set	noreorder
	.set	nomacro
	beq	$4,$2,$L135
	sll	$2,$4,1
	.set	macro
	.set	reorder

	addu	$2,$2,$4
	sll	$2,$2,2
	addu	$2,$2,$4
	sll	$2,$2,2
	la	$3,g_PrimBuf
	addu	$16,$2,$3
	move	$17,$0
	li	$11,0x00000013		# 19
	li	$5,0x00000080		# 128
	li	$6,0x000000f0		# 240
	li	$10,0x00000048		# 72
	li	$9,0x00000020		# 32
	li	$8,0x00000010		# 16
	li	$7,0x00000004		# 4
	lw	$2,52($18)
	li	$3,0x00800000		# 8388608
	sw	$4,100($18)
	sw	$16,124($18)
	or	$2,$2,$3
	sw	$2,52($18)
	li	$2,0x00000200		# 512
$L141:
	sh	$2,14($16)
	andi	$2,$17,0x0001
	.set	noreorder
	.set	nomacro
	beq	$2,$0,$L15
	sh	$11,26($16)
	.set	macro
	.set	reorder

	sb	$5,12($16)
	sb	$5,24($16)
	sb	$6,36($16)
	sb	$6,48($16)
	sb	$10,25($16)
	sb	$10,49($16)
	sb	$9,13($16)
	.set	noreorder
	.set	nomacro
	j	$L16
	sb	$8,37($16)
	.set	macro
	.set	reorder

$L15:
	sb	$5,12($16)
	sb	$5,24($16)
	sb	$6,36($16)
	sb	$6,48($16)
	sb	$9,25($16)
	sb	$8,49($16)
	sb	$7,13($16)
	sb	$7,37($16)
$L16:
	sb	$5,6($16)
	sb	$5,5($16)
	sb	$5,4($16)
	lw	$2,4($16)
	lw	$3,4($16)
	lw	$4,4($16)
	addu	$17,$17,1
	sw	$2,16($16)
	sw	$3,28($16)
	sw	$4,40($16)
	lhu	$3,36($18)
	li	$2,0x00000002		# 2
	sh	$2,50($16)
	slt	$2,$17,4
	sh	$3,38($16)
	lw	$16,0($16)
	.set	noreorder
	.set	nomacro
	bne	$2,$0,$L141
	li	$2,0x00000200		# 512
	.set	macro
	.set	reorder

	sw	$16,128($18)
	move	$17,$0
	li	$11,0x00000012		# 18
	li	$6,0x00000080		# 128
	li	$5,0x000000f0		# 240
	li	$10,0x00000024		# 36
	li	$9,0x00000034		# 52
	li	$8,0x00000044		# 68
	li	$7,0x00000040		# 64
$L142:
	sh	$2,14($16)
	andi	$2,$17,0x0001
	.set	noreorder
	.set	nomacro
	beq	$2,$0,$L22
	sh	$11,26($16)
	.set	macro
	.set	reorder

	sb	$6,12($16)
	sb	$6,24($16)
	sb	$5,36($16)
	sb	$5,48($16)
	sb	$0,25($16)
	sb	$0,49($16)
	sb	$10,13($16)
	.set	noreorder
	.set	nomacro
	j	$L23
	sb	$9,37($16)
	.set	macro
	.set	reorder

$L22:
	sb	$6,12($16)
	sb	$6,24($16)
	sb	$5,36($16)
	sb	$5,48($16)
	sb	$10,25($16)
	sb	$9,49($16)
	sb	$8,13($16)
	sb	$8,37($16)
$L23:
	sb	$7,6($16)
	sb	$7,5($16)
	sb	$7,4($16)
	lw	$2,4($16)
	lw	$3,4($16)
	lw	$4,4($16)
	addu	$17,$17,1
	sw	$2,16($16)
	sw	$3,28($16)
	sw	$4,40($16)
	lhu	$3,36($18)
	li	$2,0x00000002		# 2
	sh	$2,50($16)
	slt	$2,$17,4
	sh	$3,38($16)
	lw	$16,0($16)
	.set	noreorder
	.set	nomacro
	bne	$2,$0,$L142
	li	$2,0x00000200		# 512
	.set	macro
	.set	reorder

	sh	$0,80($18)
	sh	$0,82($18)
$L26:
	move	$17,$0
	li	$19,-128			# 0xffffff80
	la	$16,D_us_801BEE9C
	li	$2,-256			# 0xffffff00
	sh	$2,132($18)
	li	$2,0x00000400		# 1024
	sh	$2,134($18)
	li	$2,0x00000260		# 608
	sh	$0,136($18)
	sh	$2,138($18)
$L30:
	lw	$4,0($16)
	#nop
	sw	$4,D_us_801BEEA4
	.set	noreorder
	.set	nomacro
	jal	func_801B2CF8
	addu	$16,$16,4
	.set	macro
	.set	reorder

	lw	$2,D_us_801BEEA4
	#nop
	sb	$17,44($2)
	addu	$17,$17,1
	sw	$19,36($2)
	slt	$2,$17,2
	.set	noreorder
	.set	nomacro
	bne	$2,$0,$L30
	li	$2,0x00000200		# 512
	.set	macro
	.set	reorder

	sh	$2,140($18)
	li	$2,0x00000003		# 3
	sh	$0,46($18)
	.set	noreorder
	.set	nomacro
	j	$L8
	sh	$2,44($18)
	.set	macro
	.set	reorder

$L32:
	move	$17,$0
	la	$16,D_us_801BEE9C
$L36:
	lw	$4,0($16)
	addu	$16,$16,4
	sw	$4,D_us_801BEEA4
	.set	noreorder
	.set	nomacro
	jal	func_us_801AB768
	addu	$17,$17,1
	.set	macro
	.set	reorder

	slt	$2,$17,2
	bne	$2,$0,$L36
	lbu	$2,-55($18)
	#nop
	.set	noreorder
	.set	nomacro
	beq	$2,$0,$L8
	move	$17,$0
	.set	macro
	.set	reorder

	la	$3,D_us_801BEE9C
$L42:
	lw	$2,0($3)
	#nop
	sw	$2,D_us_801BEEA4
	sb	$0,45($2)
	lw	$2,D_us_801BEEA4
	addu	$17,$17,1
	sb	$0,46($2)
	slt	$2,$17,2
	.set	noreorder
	.set	nomacro
	bne	$2,$0,$L42
	addu	$3,$3,4
	.set	macro
	.set	reorder

	j	$L136
$L44:
	lhu	$3,46($18)
	#nop
	.set	noreorder
	.set	nomacro
	beq	$3,$0,$L46
	li	$2,0x00000001		# 1
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	beq	$3,$2,$L143
	move	$17,$0
	.set	macro
	.set	reorder

	j	$L8
$L46:
	lbu	$3,-55($18)
	li	$2,0x00000038		# 56
	.set	noreorder
	.set	nomacro
	bne	$3,$0,$L48
	sh	$2,156($18)
	.set	macro
	.set	reorder

	lhu	$2,46($18)
	#nop
	addu	$2,$2,1
	sh	$2,46($18)
$L48:
	move	$17,$0
$L143:
	la	$16,D_us_801BEE9C
$L52:
	lw	$4,0($16)
	addu	$16,$16,4
	sw	$4,D_us_801BEEA4
	.set	noreorder
	.set	nomacro
	jal	func_us_801ABA38
	addu	$17,$17,1
	.set	macro
	.set	reorder

	slt	$2,$17,2
	bne	$2,$0,$L52
	lhu	$2,156($18)
	#nop
	addu	$2,$2,-1
	sh	$2,156($18)
	sll	$2,$2,16
	bne	$2,$0,$L54
	move	$17,$0
	la	$3,D_us_801BEE9C
$L58:
	lw	$2,0($3)
	#nop
	sw	$2,D_us_801BEEA4
	sb	$0,45($2)
	lw	$2,D_us_801BEEA4
	addu	$17,$17,1
	sb	$0,46($2)
	slt	$2,$17,2
	.set	noreorder
	.set	nomacro
	bne	$2,$0,$L58
	addu	$3,$3,4
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	jal	SetStep
	li	$4,0x00000002		# 2
	.set	macro
	.set	reorder

$L54:
	lbu	$2,-54($18)
	#nop
	.set	noreorder
	.set	nomacro
	beq	$2,$0,$L8
	move	$17,$0
	.set	macro
	.set	reorder

	la	$3,D_us_801BEE9C
$L64:
	lw	$2,0($3)
	#nop
	sw	$2,D_us_801BEEA4
	sb	$0,45($2)
	lw	$2,D_us_801BEEA4
	addu	$17,$17,1
	sb	$0,46($2)
	slt	$2,$17,2
	.set	noreorder
	.set	nomacro
	bne	$2,$0,$L64
	addu	$3,$3,4
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	jal	SetStep
	li	$4,0x00000004		# 4
	.set	macro
	.set	reorder

	j	$L8
$L68:
	move	$17,$0
	la	$16,D_us_801BEE9C
$L72:
	lw	$4,0($16)
	addu	$16,$16,4
	sw	$4,D_us_801BEEA4
	.set	noreorder
	.set	nomacro
	jal	func_us_801ABB58
	addu	$17,$17,1
	.set	macro
	.set	reorder

	slt	$2,$17,2
	bne	$2,$0,$L72
	lbu	$2,-54($18)
	#nop
	.set	noreorder
	.set	nomacro
	bne	$2,$0,$L8
	move	$17,$0
	.set	macro
	.set	reorder

	la	$3,D_us_801BEE9C
$L78:
	lw	$2,0($3)
	#nop
	sw	$2,D_us_801BEEA4
	sb	$0,45($2)
	lw	$2,D_us_801BEEA4
	addu	$17,$17,1
	sb	$0,46($2)
	slt	$2,$17,2
	.set	noreorder
	.set	nomacro
	bne	$2,$0,$L78
	addu	$3,$3,4
	.set	macro
	.set	reorder

$L136:
	.set	noreorder
	.set	nomacro
	jal	SetStep
	li	$4,0x00000003		# 3
	.set	macro
	.set	reorder

	j	$L8
$L80:
	lhu	$3,46($18)
	li	$2,0x00000001		# 1
	.set	noreorder
	.set	nomacro
	beq	$3,$2,$L83
	slt	$2,$3,2
	.set	macro
	.set	reorder

	beq	$2,$0,$L103
	beq	$3,$0,$L82
	j	$L8
$L103:
	li	$2,0x00000002		# 2
	.set	noreorder
	.set	nomacro
	beq	$3,$2,$L90
	li	$6,0x00000001		# 1
	.set	macro
	.set	reorder

	j	$L8
$L82:
	sh	$0,132($18)
	sw	$0,D_us_801BEE34
	sw	$0,D_us_801BEE34+20
	sw	$0,D_us_801BEE68
	sw	$0,D_us_801BEE68+20
	lhu	$2,46($18)
	#nop
	addu	$2,$2,1
	sh	$2,46($18)
$L83:
	move	$17,$0
	la	$16,D_us_801BEE9C
$L87:
	lw	$4,0($16)
	addu	$16,$16,4
	sw	$4,D_us_801BEEA4
	.set	noreorder
	.set	nomacro
	jal	func_us_801ABDC8
	addu	$17,$17,1
	.set	macro
	.set	reorder

	slt	$2,$17,2
	bne	$2,$0,$L87
	lh	$2,-182($18)
	#nop
	slt	$2,$2,177
	.set	noreorder
	.set	nomacro
	bne	$2,$0,$L8
	li	$4,0x00000820		# 2080
	.set	macro
	.set	reorder

	sw	$0,D_us_801BEE34
	sw	$0,D_us_801BEE34+20
	sw	$0,D_us_801BEE68
	sw	$0,D_us_801BEE68+20
	lhu	$2,46($18)
	#nop
	addu	$2,$2,1
	.set	noreorder
	.set	nomacro
	jal	PlaySfxPositional
	sh	$2,46($18)
	.set	macro
	.set	reorder

	j	$L8
$L90:
	move	$17,$0
	la	$5,D_us_801BEE9C
$L94:
	lw	$4,0($5)
	#nop
	lw	$2,0($4)
	lw	$3,16($4)
	addu	$2,$2,64
	sw	$2,0($4)
	lw	$2,20($4)
	sw	$4,D_us_801BEEA4
	addu	$2,$2,64
	.set	noreorder
	.set	nomacro
	blez	$3,$L95
	sw	$2,20($4)
	.set	macro
	.set	reorder

	sw	$0,16($4)
	.set	noreorder
	.set	nomacro
	j	$L96
	sw	$0,0($4)
	.set	macro
	.set	reorder

$L95:
	move	$6,$0
$L96:
	lw	$3,D_us_801BEEA4
	#nop
	lw	$2,40($3)
	#nop
	blez	$2,$L97
	sw	$0,40($3)
	.set	noreorder
	.set	nomacro
	j	$L93
	sw	$0,20($3)
	.set	macro
	.set	reorder

$L97:
	move	$6,$0
$L93:
	addu	$17,$17,1
	slt	$2,$17,2
	.set	noreorder
	.set	nomacro
	bne	$2,$0,$L94
	addu	$5,$5,4
	.set	macro
	.set	reorder

	beq	$6,$0,$L8
$L135:
	.set	noreorder
	.set	nomacro
	jal	DestroyEntity
	move	$4,$18
	.set	macro
	.set	reorder

	j	$L1
$L8:
	lhu	$2,-168($18)
	lhu	$3,-186($18)
	lhu	$4,-182($18)
	sh	$2,20($18)
	lbu	$2,-53($18)
	addu	$16,$18,-188
	sh	$3,2($18)
	.set	noreorder
	.set	nomacro
	beq	$2,$0,$L106
	sh	$4,6($18)
	.set	macro
	.set	reorder

	la	$4,D_us_801812F8
	.set	noreorder
	.set	nomacro
	jal	AnimateEntity
	move	$5,$18
	.set	macro
	.set	reorder

	j	$L107
$L106:
	sh	$0,86($18)
$L107:
	lbu	$2,132($16)
	#nop
	bne	$2,$0,$L108
	lw	$2,100($18)
	#nop
	sll	$3,$2,1
	addu	$3,$3,$2
	sll	$3,$3,2
	addu	$3,$3,$2
	sll	$3,$3,2
	la	$2,g_PrimBuf
	addu	$16,$3,$2
	.set	noreorder
	.set	nomacro
	beq	$16,$0,$L1
	li	$2,0x00000008		# 8
	.set	macro
	.set	reorder

	sh	$2,50($16)
$L145:
	lw	$16,0($16)
	#nop
	beq	$16,$0,$L1
	.set	noreorder
	.set	nomacro
	j	$L145
	sh	$2,50($16)
	.set	macro
	.set	reorder

$L108:
	lhu	$2,30($16)
	#nop
	sh	$2,136($18)
	lh	$4,30($16)
	#nop
	beq	$4,$0,$L114
	lhu	$2,20($16)
	#nop
	beq	$2,$0,$L115
	jal	rcos
	sll	$3,$2,1
	addu	$3,$3,$2
	sll	$3,$3,3
	lhu	$2,2($18)
	sra	$3,$3,12
	.set	noreorder
	.set	nomacro
	j	$L137
	addu	$2,$2,$3
	.set	macro
	.set	reorder

$L115:
	jal	rcos
	sll	$3,$2,1
	addu	$3,$3,$2
	sll	$3,$3,3
	lhu	$2,2($18)
	sra	$3,$3,12
	subu	$2,$2,$3
$L137:
	sh	$2,2($18)
	lh	$4,30($16)
	.set	noreorder
	.set	nomacro
	jal	rsin
	move	$17,$0
	.set	macro
	.set	reorder

	sll	$3,$2,1
	addu	$3,$3,$2
	sll	$3,$3,3
	lhu	$2,6($18)
	sra	$3,$3,12
	subu	$2,$2,$3
	.set	noreorder
	.set	nomacro
	j	$L140
	sh	$2,6($18)
	.set	macro
	.set	reorder

$L114:
	lhu	$2,20($16)
	#nop
	beq	$2,$0,$L118
	lhu	$2,2($18)
	.set	noreorder
	.set	nomacro
	j	$L138
	addu	$2,$2,24
	.set	macro
	.set	reorder

$L118:
	lhu	$2,2($18)
	#nop
	addu	$2,$2,-24
$L138:
	sh	$2,2($18)
	move	$17,$0
$L140:
	la	$16,D_us_801BEE9C
$L123:
	lw	$4,0($16)
	lhu	$2,2($18)
	addu	$16,$16,4
	sh	$2,48($4)
	lhu	$2,6($18)
	addu	$17,$17,1
	sw	$4,D_us_801BEEA4
	.set	noreorder
	.set	nomacro
	jal	func_us_801AB198
	sh	$2,50($4)
	.set	macro
	.set	reorder

	slt	$2,$17,2
	.set	noreorder
	.set	nomacro
	bne	$2,$0,$L123
	li	$20,0x00000008		# 8
	.set	macro
	.set	reorder

	la	$6,D_us_80181260
	move	$17,$0
	li	$19,0x00000002		# 2
	lw	$16,124($18)
	lw	$4,D_us_801BEE9C
	#nop
	sw	$4,D_us_801BEEA4
	.set	noreorder
	.set	nomacro
	jal	func_us_801AB380
	move	$5,$16
	.set	macro
	.set	reorder

	lw	$4,D_us_801BEE9C+4
	la	$6,D_us_801812B8
	sw	$4,D_us_801BEEA4
	.set	noreorder
	.set	nomacro
	jal	func_us_801AB380
	move	$5,$2
	.set	macro
	.set	reorder

	lw	$16,124($18)
	lw	$18,128($18)
	andi	$2,$17,0x0001
$L144:
	bne	$2,$0,$L129
	lw	$4,8($16)
	lw	$5,20($16)
	lw	$6,32($16)
	j	$L139
$L129:
	lw	$4,8($16)
	lw	$5,20($16)
	lw	$6,44($16)
$L139:
	jal	NormalClip
	move	$3,$2
	slt	$2,$17,2
	bne	$2,$0,$L131
	subu	$3,$0,$3
$L131:
	blez	$3,$L132
	sh	$20,50($16)
	sh	$19,50($18)
	lw	$2,8($16)
	#nop
	sw	$2,8($18)
	lw	$2,20($16)
	#nop
	sw	$2,20($18)
	lw	$2,32($16)
	#nop
	sw	$2,32($18)
	lw	$2,44($16)
	#nop
	sw	$2,44($18)
	lhu	$2,38($16)
	.set	noreorder
	.set	nomacro
	j	$L133
	sh	$2,38($18)
	.set	macro
	.set	reorder

$L132:
	sh	$19,50($16)
	sh	$20,50($18)
$L133:
	addu	$17,$17,1
	slt	$2,$17,4
	lw	$16,0($16)
	lw	$18,0($18)
	.set	noreorder
	.set	nomacro
	bne	$2,$0,$L144
	andi	$2,$17,0x0001
	.set	macro
	.set	reorder

$L1:
	lw	$31,36($sp)
	lw	$20,32($sp)
	lw	$19,28($sp)
	lw	$18,24($sp)
	lw	$17,20($sp)
	lw	$16,16($sp)
	addu	$sp,$sp,40
	j	$31
	.end	func_us_801ABDE4
