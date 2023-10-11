	.file	"3.cpp"
	.text
	.p2align 4
	.globl	_Z8trig_numi
	.type	_Z8trig_numi, @function
_Z8trig_numi:
.LFB2679:
	.cfi_startproc
	leal	1(%rdi), %edx
	imull	%edi, %edx
	movl	%edx, %eax
	shrl	$31, %eax
	addl	%edx, %eax
	sarl	%eax
	ret
	.cfi_endproc
.LFE2679:
	.size	_Z8trig_numi, .-_Z8trig_numi
	.p2align 4
	.globl	_Z16mutiple_of_threei
	.type	_Z16mutiple_of_threei, @function
_Z16mutiple_of_threei:
.LFB2680:
	.cfi_startproc
	imull	$-1431655765, %edi, %eax
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	xorl	%ebp, %ebp
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	addl	$715827882, %eax
	rorl	%eax
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	cmpl	$715827882, %eax
	ja	.L3
	pxor	%xmm0, %xmm0
	movl	%edi, %ebx
	cvtsi2sdl	%edi, %xmm0
	call	cbrt@PLT
	pxor	%xmm1, %xmm1
	movl	%ebx, %eax
	cvttsd2sil	%xmm0, %ecx
	cvtsi2sdl	%ecx, %xmm1
	leal	-1(%rcx), %esi
	comisd	%xmm0, %xmm1
	cmovbe	%ecx, %esi
	cltd
	idivl	%esi
	testl	%edx, %edx
	jne	.L3
	comisd	%xmm1, %xmm0
	leal	1(%rcx), %eax
	cmova	%eax, %ecx
	movl	%ebx, %eax
	cltd
	idivl	%ecx
	testl	%edx, %edx
	jne	.L3
	movl	%ebx, %eax
	addl	$1, %ecx
	cltd
	idivl	%ecx
	testl	%edx, %edx
	sete	%bpl
.L3:
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	movl	%ebp, %eax
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE2680:
	.size	_Z16mutiple_of_threei, .-_Z16mutiple_of_threei
	.p2align 4
	.globl	_Z14first_of_threei
	.type	_Z14first_of_threei, @function
_Z14first_of_threei:
.LFB2681:
	.cfi_startproc
	pxor	%xmm0, %xmm0
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	cvtsi2sdl	%edi, %xmm0
	call	cbrt@PLT
	pxor	%xmm1, %xmm1
	cvttsd2sil	%xmm0, %eax
	cvtsi2sdl	%eax, %xmm1
	leal	-1(%rax), %edx
	comisd	%xmm0, %xmm1
	cmova	%edx, %eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE2681:
	.size	_Z14first_of_threei, .-_Z14first_of_threei
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"(%d %d %d)"
.LC1:
	.string	") "
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB2682:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	movl	$40, %edi
	leaq	.LC0(%rip), %r12
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movl	$1, %ebp
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movl	$2, %ebx
	call	putchar@PLT
	jmp	.L18
	.p2align 4,,10
	.p2align 3
.L19:
	movl	%eax, %ebx
.L18:
	imull	$-1431655765, %ebp, %eax
	rorl	%eax
	cmpl	$715827882, %eax
	ja	.L15
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%ebp, %xmm0
	call	cbrt@PLT
	pxor	%xmm1, %xmm1
	movl	%ebp, %eax
	cvttsd2sil	%xmm0, %ecx
	cvtsi2sdl	%ecx, %xmm1
	leal	-1(%rcx), %esi
	comisd	%xmm0, %xmm1
	cmovbe	%ecx, %esi
	cltd
	idivl	%esi
	testl	%edx, %edx
	jne	.L15
	comisd	%xmm1, %xmm0
	leal	1(%rcx), %eax
	cmova	%eax, %ecx
	movl	%ebp, %eax
	cltd
	idivl	%ecx
	testl	%edx, %edx
	jne	.L15
	movl	%ebp, %eax
	addl	$1, %ecx
	cltd
	idivl	%ecx
	testl	%edx, %edx
	jne	.L15
	leal	-1(%rbx), %eax
	movl	%esi, %edx
	movl	%ebp, %ecx
	movq	%r12, %rdi
	movl	%eax, %esi
	xorl	%eax, %eax
	call	printf@PLT
.L15:
	leal	1(%rbx), %eax
	imull	%eax, %ebx
	movl	%ebx, %ebp
	sarl	%ebp
	cmpl	$516948433, %ebx
	jle	.L19
	leaq	.LC1(%rip), %rdi
	call	puts@PLT
	popq	%rbx
	.cfi_def_cfa_offset 24
	xorl	%eax, %eax
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE2682:
	.size	main, .-main
	.p2align 4
	.type	_GLOBAL__sub_I__Z8trig_numi, @function
_GLOBAL__sub_I__Z8trig_numi:
.LFB3445:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	leaq	_ZStL8__ioinit(%rip), %rbx
	movq	%rbx, %rdi
	call	_ZNSt8ios_base4InitC1Ev@PLT
	movq	_ZNSt8ios_base4InitD1Ev@GOTPCREL(%rip), %rdi
	movq	%rbx, %rsi
	popq	%rbx
	.cfi_def_cfa_offset 8
	leaq	__dso_handle(%rip), %rdx
	jmp	__cxa_atexit@PLT
	.cfi_endproc
.LFE3445:
	.size	_GLOBAL__sub_I__Z8trig_numi, .-_GLOBAL__sub_I__Z8trig_numi
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I__Z8trig_numi
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.hidden	__dso_handle
	.ident	"GCC: (Debian 12.2.0-14) 12.2.0"
	.section	.note.GNU-stack,"",@progbits
