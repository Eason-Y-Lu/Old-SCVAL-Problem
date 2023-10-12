	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 13, 0	sdk_version 13, 3
	.globl	__Z8trig_numi                   ; -- Begin function _Z8trig_numi
	.p2align	2
__Z8trig_numi:                          ; @_Z8trig_numi
	.cfi_startproc
; %bb.0:
	madd	w8, w0, w0, w0
	cmp	w8, #0
	cinc	w8, w8, lt
	asr	w0, w8, #1
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__Z16mutiple_of_threei          ; -- Begin function _Z16mutiple_of_threei
	.p2align	2
__Z16mutiple_of_threei:                 ; @_Z16mutiple_of_threei
	.cfi_startproc
; %bb.0:
	stp	x20, x19, [sp, #-32]!           ; 16-byte Folded Spill
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	mov	w8, #43691
	movk	w8, #43690, lsl #16
	mov	w9, #43690
	movk	w9, #10922, lsl #16
	madd	w8, w0, w8, w9
	ror	w8, w8, #1
	cmp	w8, w9
	b.ls	LBB1_2
; %bb.1:
	mov	w0, #0
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp], #32             ; 16-byte Folded Reload
	ret
LBB1_2:
	mov	x19, x0
	scvtf	d0, w0
	bl	_cbrt
	fcvtms	w8, d0
	sdiv	w9, w19, w8
	msub	w8, w9, w8, w19
	cbz	w8, LBB1_4
; %bb.3:
	mov	w0, #0
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp], #32             ; 16-byte Folded Reload
	ret
LBB1_4:
	fcvtps	w8, d0
	sdiv	w9, w19, w8
	msub	w9, w9, w8, w19
	cbz	w9, LBB1_6
; %bb.5:
	mov	w0, #0
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp], #32             ; 16-byte Folded Reload
	ret
LBB1_6:
	add	w8, w8, #1
	sdiv	w9, w19, w8
	msub	w8, w9, w8, w19
	cmp	w8, #0
	cset	w0, eq
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp], #32             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__Z14first_of_threei            ; -- Begin function _Z14first_of_threei
	.p2align	2
__Z14first_of_threei:                   ; @_Z14first_of_threei
	.cfi_startproc
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	.cfi_def_cfa_offset 16
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	scvtf	d0, w0
	bl	_cbrt
	fcvtms	w0, d0
	ldp	x29, x30, [sp], #16             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #112
	.cfi_def_cfa_offset 112
	stp	x26, x25, [sp, #32]             ; 16-byte Folded Spill
	stp	x24, x23, [sp, #48]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #64]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #80]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #96]             ; 16-byte Folded Spill
	add	x29, sp, #96
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset w25, -72
	.cfi_offset w26, -80
	mov	w0, #40
	bl	_putchar
	mov	w22, #0
	mov	w24, #1
	mov	w20, #43691
	movk	w20, #43690, lsl #16
	mov	w21, #43690
	movk	w21, #10922, lsl #16
	mov	w23, #22736
Lloh0:
	adrp	x19, l_.str.1@PAGE
Lloh1:
	add	x19, x19, l_.str.1@PAGEOFF
	b	LBB3_2
LBB3_1:                                 ;   in Loop: Header=BB3_2 Depth=1
	add	w8, w22, #2
	add	w9, w22, #3
	mul	w8, w9, w8
	lsr	w24, w8, #1
	mov	x22, x25
	cmp	w25, w23
	b.eq	LBB3_7
LBB3_2:                                 ; =>This Inner Loop Header: Depth=1
	add	w25, w22, #1
	mul	w8, w24, w20
	ror	w8, w8, #1
	cmp	w8, w21
	b.hi	LBB3_1
; %bb.3:                                ;   in Loop: Header=BB3_2 Depth=1
	scvtf	d0, w24
	bl	_cbrt
	fcvtms	w8, d0
	sdiv	w9, w24, w8
	msub	w9, w9, w8, w24
	cbnz	w9, LBB3_1
; %bb.4:                                ;   in Loop: Header=BB3_2 Depth=1
	fcvtps	w9, d0
	sdiv	w10, w24, w9
	msub	w10, w10, w9, w24
	cbnz	w10, LBB3_1
; %bb.5:                                ;   in Loop: Header=BB3_2 Depth=1
	add	w9, w9, #1
	sdiv	w10, w24, w9
	msub	w9, w10, w9, w24
	cbnz	w9, LBB3_1
; %bb.6:                                ;   in Loop: Header=BB3_2 Depth=1
	stp	x8, x24, [sp, #8]
	str	x25, [sp]
	mov	x0, x19
	bl	_printf
	b	LBB3_1
LBB3_7:
Lloh2:
	adrp	x0, l_str@PAGE
Lloh3:
	add	x0, x0, l_str@PAGEOFF
	bl	_puts
	mov	w0, #0
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #80]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #64]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #48]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
	.loh AdrpAdd	Lloh0, Lloh1
	.loh AdrpAdd	Lloh2, Lloh3
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str.1:                               ; @.str.1
	.asciz	"(%d %d %d)"

l_str:                                  ; @str
	.asciz	") "

.subsections_via_symbols
