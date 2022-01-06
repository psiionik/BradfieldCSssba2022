	.arch armv8-a
	.text
	.cstring
	.align	3
lC0:
	.ascii "Clock speed approx %.3f GHz\12\0"
	.text
	.align	2
	.globl _main
_main:
LFB1:
	sub	sp, sp, #64
LCFI0:
	stp	x29, x30, [sp, 16]
LCFI1:
	add	x29, sp, 16
	bl	_clock
	str	x0, [sp, 48]
	mov	w0, 2
	str	w0, [sp, 60]
	mov	w0, 10
	str	w0, [sp, 44]
	str	wzr, [sp, 56]
	b	L2
L3:
	ldr	w1, [sp, 60]
	ldr	w0, [sp, 44]
	sdiv	w0, w1, w0
	str	w0, [sp, 60]
	ldr	w0, [sp, 56]
	add	w0, w0, 1
	str	w0, [sp, 56]
L2:
	ldr	w1, [sp, 56]
	mov	w0, 38527
	movk	w0, 0x98, lsl 16
	cmp	w1, w0
	ble	L3
	bl	_clock
	mov	x1, x0
	ldr	x0, [sp, 48]
	sub	x0, x1, x0
	ucvtf	s0, x0
	mov	w0, 9216
	movk	w0, 0x4974, lsl 16
	fmov	s1, w0
	fdiv	s0, s0, s1
	str	s0, [sp, 40]
	ldr	s0, [sp, 40]
	mov	w0, 38528
	movk	w0, 0x4b18, lsl 16
	fmov	s1, w0
	fdiv	s0, s1, s0
	str	s0, [sp, 36]
	ldr	s0, [sp, 36]
	fcvt	d0, s0
	mov	x0, 225833675390976
	movk	x0, 0x41cd, lsl 48
	fmov	d1, x0
	fdiv	d0, d0, d1
	str	d0, [sp]
	adrp	x0, lC0@GOTPAGE
	ldr	x0, [x0, lC0@GOTPAGEOFF];momd
	bl	_printf
	mov	w0, 0
	ldp	x29, x30, [sp, 16]
	add	sp, sp, 64
LCFI2:
	ret
LFE1:
	.section __TEXT,__eh_frame,coalesced,no_toc+strip_static_syms+live_support
EH_frame1:
	.set L$set$0,LECIE1-LSCIE1
	.long L$set$0
LSCIE1:
	.long	0
	.byte	0x1
	.ascii "zR\0"
	.uleb128 0x1
	.sleb128 -8
	.byte	0x1e
	.uleb128 0x1
	.byte	0x10
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LECIE1:
LSFDE1:
	.set L$set$1,LEFDE1-LASFDE1
	.long L$set$1
LASFDE1:
	.long	LASFDE1-EH_frame1
	.quad	LFB1-.
	.set L$set$2,LFE1-LFB1
	.quad L$set$2
	.uleb128 0
	.byte	0x4
	.set L$set$3,LCFI0-LFB1
	.long L$set$3
	.byte	0xe
	.uleb128 0x40
	.byte	0x4
	.set L$set$4,LCFI1-LCFI0
	.long L$set$4
	.byte	0x9d
	.uleb128 0x6
	.byte	0x9e
	.uleb128 0x5
	.byte	0x4
	.set L$set$5,LCFI2-LCFI1
	.long L$set$5
	.byte	0xdd
	.byte	0xde
	.byte	0xe
	.uleb128 0
	.align	3
LEFDE1:
	.ident	"GCC: (Homebrew GCC 11.1.0_1) 11.1.0"
	.subsections_via_symbols
