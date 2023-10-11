	.file	"3.cpp"
	.text
	.globl	_Z8trig_numi
	.type	_Z8trig_numi, @function
_Z8trig_numi:
.LFB2354:
	.cfi_startproc
	leal	1(%rdi), %eax
	pushq	$2
	popq	%rcx
	imull	%edi, %eax
	cltd
	idivl	%ecx
	ret
	.cfi_endproc
.LFE2354:
	.size	_Z8trig_numi, .-_Z8trig_numi
	.globl	_Z16mutiple_of_threei
	.type	_Z16mutiple_of_threei, @function
_Z16mutiple_of_threei:
.LFB2355:
	.cfi_startproc
	xorl	%eax, %eax
	testb	$1, %dil
	jne	.L8
	cvtsi2sdl	%edi, %xmm0
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movl	%edi, %ebx
	pushq	%rcx
	.cfi_def_cfa_offset 32
	call	cbrt@PLT
	movq	%xmm0, %r14
	call	floor@PLT
	movl	%ebx, %eax
	cvttsd2sil	%xmm0, %ecx
	cltd
	idivl	%ecx
	xorl	%eax, %eax
	testl	%edx, %edx
	jne	.L2
	movq	%r14, %xmm0
	call	ceil@PLT
	movl	%ebx, %eax
	cvttsd2sil	%xmm0, %ecx
	cltd
	idivl	%ecx
	xorl	%eax, %eax
	testl	%edx, %edx
	jne	.L2
	movl	%ebx, %eax
	incl	%ecx
	cltd
	idivl	%ecx
	testl	%edx, %edx
	sete	%al
.L2:
	popq	%rdx
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
.L8:
	.cfi_restore 3
	.cfi_restore 14
	ret
	.cfi_endproc
.LFE2355:
	.size	_Z16mutiple_of_threei, .-_Z16mutiple_of_threei
	.globl	_Z14first_of_threei
	.type	_Z14first_of_threei, @function
_Z14first_of_threei:
.LFB2356:
	.cfi_startproc
	cvtsi2sdl	%edi, %xmm0
	pushq	%rax
	.cfi_def_cfa_offset 16
	call	cbrt@PLT
	call	floor@PLT
	popq	%rdx
	.cfi_def_cfa_offset 8
	cvttsd2sil	%xmm0, %eax
	ret
	.cfi_endproc
.LFE2356:
	.size	_Z14first_of_threei, .-_Z14first_of_threei
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"(%d %d %d)"
.LC1:
	.string	") "
	.section	.text.startup,"ax",@progbits
	.globl	main
	.type	main, @function
main:
.LFB2357:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	leaq	.LC0(%rip), %r12
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	pushq	$40
	popq	%rdi
	call	putchar@PLT
	pushq	$1
	popq	%rbp
	pushq	$2
	popq	%rbx
.L16:
	movl	%ebp, %edi
	call	_Z16mutiple_of_threei
	testb	%al, %al
	je	.L15
	movl	%ebp, %edi
	call	_Z14first_of_threei
	leal	-1(%rbx), %esi
	movl	%ebp, %ecx
	movq	%r12, %rdi
	movl	%eax, %edx
	xorl	%eax, %eax
	call	printf@PLT
.L15:
	leal	1(%rbx), %eax
	imull	%eax, %ebx
	movl	%ebx, %ebp
	sarl	%ebp
	cmpl	$516948433, %ebx
	jg	.L22
	movl	%eax, %ebx
	jmp	.L16
.L22:
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
.LFE2357:
	.size	main, .-main
	.type	_GLOBAL__sub_I__Z8trig_numi, @function
_GLOBAL__sub_I__Z8trig_numi:
.LFB3033:
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
.LFE3033:
	.size	_GLOBAL__sub_I__Z8trig_numi, .-_GLOBAL__sub_I__Z8trig_numi
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I__Z8trig_numi
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.hidden	__dso_handle
	.ident	"GCC: (Debian 12.2.0-14) 12.2.0"
	.section	.note.GNU-stack,"",@progbits
