	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 16, 0	sdk_version 26, 5
	.globl	__Z19fibonacci_recursivei       ; -- Begin function _Z19fibonacci_recursivei
	.p2align	2
__Z19fibonacci_recursivei:              ; @_Z19fibonacci_recursivei
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	w0, [sp, #8]
	ldr	w8, [sp, #8]
	subs	w8, w8, #2
	b.ge	LBB0_2
	b	LBB0_1
LBB0_1:
	ldr	w8, [sp, #8]
	stur	w8, [x29, #-4]
	b	LBB0_3
LBB0_2:
	ldr	w8, [sp, #8]
	subs	w0, w8, #1
	bl	__Z19fibonacci_recursivei
	str	w0, [sp, #4]                    ; 4-byte Folded Spill
	ldr	w8, [sp, #8]
	subs	w0, w8, #2
	bl	__Z19fibonacci_recursivei
	mov	x8, x0
	ldr	w0, [sp, #4]                    ; 4-byte Folded Reload
	add	w8, w0, w8
	stur	w8, [x29, #-4]
	b	LBB0_3
LBB0_3:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__Z19fibonacci_iterativei       ; -- Begin function _Z19fibonacci_iterativei
	.p2align	2
__Z19fibonacci_iterativei:              ; @_Z19fibonacci_iterativei
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	w0, [sp, #24]
	ldr	w8, [sp, #24]
	subs	w8, w8, #2
	b.ge	LBB1_2
	b	LBB1_1
LBB1_1:
	ldr	w8, [sp, #24]
	str	w8, [sp, #28]
	b	LBB1_7
LBB1_2:
	str	wzr, [sp, #20]
	mov	w8, #1                          ; =0x1
	str	w8, [sp, #16]
	mov	w8, #2                          ; =0x2
	str	w8, [sp, #12]
	b	LBB1_3
LBB1_3:                                 ; =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #12]
	ldr	w9, [sp, #24]
	subs	w8, w8, w9
	b.gt	LBB1_6
	b	LBB1_4
LBB1_4:                                 ;   in Loop: Header=BB1_3 Depth=1
	ldr	w8, [sp, #20]
	ldr	w9, [sp, #16]
	add	w8, w8, w9
	str	w8, [sp, #8]
	ldr	w8, [sp, #16]
	str	w8, [sp, #20]
	ldr	w8, [sp, #8]
	str	w8, [sp, #16]
	b	LBB1_5
LBB1_5:                                 ;   in Loop: Header=BB1_3 Depth=1
	ldr	w8, [sp, #12]
	add	w8, w8, #1
	str	w8, [sp, #12]
	b	LBB1_3
LBB1_6:
	ldr	w8, [sp, #16]
	str	w8, [sp, #28]
	b	LBB1_7
LBB1_7:
	ldr	w0, [sp, #28]
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
.subsections_via_symbols
