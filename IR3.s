	.text
	.file	"3.cpp"
	.globl	_Z8trig_numi                    # -- Begin function _Z8trig_numi
	.p2align	4, 0x90
	.type	_Z8trig_numi,@function
_Z8trig_numi:                           # @_Z8trig_numi
	.cfi_startproc
# %bb.0:
                                        # kill: def $edi killed $edi def $rdi
	leal	1(%rdi), %ecx
	imull	%edi, %ecx
	movl	%ecx, %eax
	shrl	$31, %eax
	addl	%ecx, %eax
	sarl	%eax
	retq
.Lfunc_end0:
	.size	_Z8trig_numi, .Lfunc_end0-_Z8trig_numi
	.cfi_endproc
                                        # -- End function
	.globl	_Z16mutiple_of_threei           # -- Begin function _Z16mutiple_of_threei
	.p2align	4, 0x90
	.type	_Z16mutiple_of_threei,@function
_Z16mutiple_of_threei:                  # @_Z16mutiple_of_threei
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %rbp, -16
	movl	%edi, %ebx
	testb	$1, %bl
	jne	.LBB1_3
# %bb.1:
	cvtsi2sd	%ebx, %xmm0
	callq	cbrt@PLT
	movsd	%xmm0, (%rsp)                   # 8-byte Spill
	callq	floor@PLT
	cvttsd2si	%xmm0, %ebp
	movsd	(%rsp), %xmm0                   # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	ceil@PLT
	movl	%ebx, %eax
	cltd
	idivl	%ebp
	testl	%edx, %edx
	jne	.LBB1_3
# %bb.5:
	cvttsd2si	%xmm0, %ecx
	movl	%ebx, %eax
	cltd
	idivl	%ecx
	testl	%edx, %edx
	je	.LBB1_7
.LBB1_3:
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.LBB1_7:
	.cfi_def_cfa_offset 32
	addl	$1, %ecx
	movl	%ebx, %eax
	cltd
	idivl	%ecx
	testl	%edx, %edx
	sete	%al
                                        # kill: def $al killed $al killed $eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end1:
	.size	_Z16mutiple_of_threei, .Lfunc_end1-_Z16mutiple_of_threei
	.cfi_endproc
                                        # -- End function
	.globl	_Z14first_of_threei             # -- Begin function _Z14first_of_threei
	.p2align	4, 0x90
	.type	_Z14first_of_threei,@function
_Z14first_of_threei:                    # @_Z14first_of_threei
	.cfi_startproc
# %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	cvtsi2sd	%edi, %xmm0
	callq	cbrt@PLT
	callq	floor@PLT
	cvttsd2si	%xmm0, %eax
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end2:
	.size	_Z14first_of_threei, .Lfunc_end2-_Z14first_of_threei
	.cfi_endproc
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r12
	.cfi_def_cfa_offset 40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	subq	$16, %rsp
	.cfi_def_cfa_offset 64
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	$40, %edi
	callq	putchar@PLT
	movl	$2, %ebx
	movl	$1, %ebp
	movl	$3, %r12d
	leaq	.L.str.1(%rip), %r14
	jmp	.LBB3_1
	.p2align	4, 0x90
.LBB3_6:                                #   in Loop: Header=BB3_1 Depth=1
	imull	%r12d, %ebx
	movl	%ebx, %ebp
	shrl	%ebp
	addl	$1, %r12d
	cmpl	$22739, %r12d                   # imm = 0x58D3
	je	.LBB3_7
.LBB3_1:                                # =>This Inner Loop Header: Depth=1
	movl	%ebx, %eax
	leal	-1(%r12), %ebx
	testb	$2, %al
	jne	.LBB3_6
# %bb.2:                                #   in Loop: Header=BB3_1 Depth=1
	xorps	%xmm0, %xmm0
	cvtsi2sd	%ebp, %xmm0
	callq	cbrt@PLT
	movsd	%xmm0, 8(%rsp)                  # 8-byte Spill
	callq	floor@PLT
	cvttsd2si	%xmm0, %r15d
	movsd	8(%rsp), %xmm0                  # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	ceil@PLT
	movl	%ebp, %eax
	cltd
	idivl	%r15d
	testl	%edx, %edx
	jne	.LBB3_6
# %bb.3:                                #   in Loop: Header=BB3_1 Depth=1
	cvttsd2si	%xmm0, %ecx
	movl	%ebp, %eax
	cltd
	idivl	%ecx
	testl	%edx, %edx
	jne	.LBB3_6
# %bb.4:                                #   in Loop: Header=BB3_1 Depth=1
	addl	$1, %ecx
	movl	%ebp, %eax
	cltd
	idivl	%ecx
	testl	%edx, %edx
	jne	.LBB3_6
# %bb.5:                                #   in Loop: Header=BB3_1 Depth=1
	leal	-2(%r12), %esi
	movq	%r14, %rdi
	movl	%r15d, %edx
	movl	%ebp, %ecx
	xorl	%eax, %eax
	callq	printf@PLT
	jmp	.LBB3_6
.LBB3_7:
	leaq	.Lstr(%rip), %rdi
	callq	puts@PLT
	xorl	%eax, %eax
	addq	$16, %rsp
	.cfi_def_cfa_offset 48
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end3:
	.size	main, .Lfunc_end3-main
	.cfi_endproc
                                        # -- End function
	.section	.text.startup,"ax",@progbits
	.p2align	4, 0x90                         # -- Begin function _GLOBAL__sub_I_3.cpp
	.type	_GLOBAL__sub_I_3.cpp,@function
_GLOBAL__sub_I_3.cpp:                   # @_GLOBAL__sub_I_3.cpp
	.cfi_startproc
# %bb.0:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	leaq	_ZStL8__ioinit(%rip), %rbx
	movq	%rbx, %rdi
	callq	_ZNSt8ios_base4InitC1Ev@PLT
	movq	_ZNSt8ios_base4InitD1Ev@GOTPCREL(%rip), %rdi
	leaq	__dso_handle(%rip), %rdx
	movq	%rbx, %rsi
	popq	%rbx
	.cfi_def_cfa_offset 8
	jmp	__cxa_atexit@PLT                # TAILCALL
.Lfunc_end4:
	.size	_GLOBAL__sub_I_3.cpp, .Lfunc_end4-_GLOBAL__sub_I_3.cpp
	.cfi_endproc
                                        # -- End function
	.type	_ZStL8__ioinit,@object          # @_ZStL8__ioinit
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.hidden	__dso_handle
	.type	.L.str.1,@object                # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"(%d %d %d)"
	.size	.L.str.1, 11

	.section	.init_array,"aw",@init_array
	.p2align	3
	.quad	_GLOBAL__sub_I_3.cpp
	.type	.Lstr,@object                   # @str
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lstr:
	.asciz	") "
	.size	.Lstr, 3

	.ident	"Debian clang version 14.0.6"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym _GLOBAL__sub_I_3.cpp
	.addrsig_sym _ZStL8__ioinit
	.addrsig_sym __dso_handle
