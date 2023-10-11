	.file	"3.cpp"
	.text
	.type	_Z41__static_initialization_and_destruction_0ii, @function
_Z41__static_initialization_and_destruction_0ii:
.LFB3444:
	.cfi_startproc
	cmpl	$1, %edi
	je	.L7
.L4:
	ret
.L7:
	cmpl	$65535, %esi
	jne	.L4
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	leaq	_ZStL8__ioinit(%rip), %rbx
	movq	%rbx, %rdi
	call	_ZNSt8ios_base4InitC1Ev@PLT
	leaq	__dso_handle(%rip), %rdx
	movq	%rbx, %rsi
	movq	_ZNSt8ios_base4InitD1Ev@GOTPCREL(%rip), %rdi
	call	__cxa_atexit@PLT
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE3444:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.globl	_Z8trig_numi
	.type	_Z8trig_numi, @function
_Z8trig_numi:
.LFB2679:
	.cfi_startproc
	movl	%edi, %eax
	leal	1(%rdi), %edi
	imull	%eax, %edi
	movl	%edi, %eax
	shrl	$31, %eax
	addl	%edi, %eax
	sarl	%eax
	ret
	.cfi_endproc
.LFE2679:
	.size	_Z8trig_numi, .-_Z8trig_numi
	.globl	_Z16mutiple_of_threei
	.type	_Z16mutiple_of_threei, @function
_Z16mutiple_of_threei:
.LFB2680:
	.cfi_startproc
	movslq	%edi, %rax
	imulq	$715827883, %rax, %rax
	shrq	$32, %rax
	movl	%edi, %edx
	sarl	$31, %edx
	subl	%edx, %eax
	leal	(%rax,%rax,2), %eax
	addl	%eax, %eax
	cmpl	%eax, %edi
	jne	.L13
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	%edi, %ebx
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%edi, %xmm0
	call	cbrt@PLT
	movapd	%xmm0, %xmm3
	movsd	.LC3(%rip), %xmm2
	movapd	%xmm0, %xmm1
	andpd	%xmm2, %xmm1
	movsd	.LC0(%rip), %xmm4
	ucomisd	%xmm1, %xmm4
	jbe	.L11
	cvttsd2siq	%xmm0, %rax
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%rax, %xmm1
	movapd	%xmm1, %xmm3
	cmpnlesd	%xmm0, %xmm3
	movsd	.LC2(%rip), %xmm4
	andpd	%xmm4, %xmm3
	subsd	%xmm3, %xmm1
	andnpd	%xmm0, %xmm2
	movapd	%xmm1, %xmm3
	orpd	%xmm2, %xmm3
.L11:
	cvttsd2sil	%xmm3, %esi
	movapd	%xmm0, %xmm3
	movsd	.LC3(%rip), %xmm2
	movapd	%xmm0, %xmm1
	andpd	%xmm2, %xmm1
	movsd	.LC0(%rip), %xmm4
	ucomisd	%xmm1, %xmm4
	jbe	.L12
	cvttsd2siq	%xmm0, %rax
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%rax, %xmm1
	cmpnlesd	%xmm1, %xmm3
	movsd	.LC2(%rip), %xmm4
	andpd	%xmm4, %xmm3
	addsd	%xmm1, %xmm3
	andnpd	%xmm0, %xmm2
	orpd	%xmm2, %xmm3
.L12:
	cvttsd2sil	%xmm3, %ecx
	leal	1(%rcx), %edi
	movl	%ebx, %eax
	cltd
	idivl	%esi
	testl	%edx, %edx
	jne	.L14
	movl	%ebx, %eax
	cltd
	idivl	%ecx
	testl	%edx, %edx
	jne	.L15
	movl	%ebx, %eax
	cltd
	idivl	%edi
	testl	%edx, %edx
	jne	.L16
	movl	$1, %eax
	jmp	.L9
.L13:
	.cfi_def_cfa_offset 8
	.cfi_restore 3
	movl	$0, %eax
	ret
.L14:
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	$0, %eax
.L9:
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L15:
	.cfi_restore_state
	movl	$0, %eax
	jmp	.L9
.L16:
	movl	$0, %eax
	jmp	.L9
	.cfi_endproc
.LFE2680:
	.size	_Z16mutiple_of_threei, .-_Z16mutiple_of_threei
	.globl	_Z14first_of_threei
	.type	_Z14first_of_threei, @function
_Z14first_of_threei:
.LFB2681:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%edi, %xmm0
	call	cbrt@PLT
	movapd	%xmm0, %xmm3
	movsd	.LC3(%rip), %xmm2
	movapd	%xmm0, %xmm1
	andpd	%xmm2, %xmm1
	movsd	.LC0(%rip), %xmm4
	ucomisd	%xmm1, %xmm4
	jbe	.L22
	cvttsd2siq	%xmm0, %rax
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%rax, %xmm1
	movapd	%xmm1, %xmm3
	cmpnlesd	%xmm0, %xmm3
	movsd	.LC2(%rip), %xmm4
	andpd	%xmm4, %xmm3
	subsd	%xmm3, %xmm1
	andnpd	%xmm0, %xmm2
	movapd	%xmm1, %xmm3
	orpd	%xmm2, %xmm3
.L22:
	cvttsd2sil	%xmm3, %eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE2681:
	.size	_Z14first_of_threei, .-_Z14first_of_threei
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC4:
	.string	"(%d %d %d)"
.LC5:
	.string	") "
	.text
	.globl	main
	.type	main, @function
main:
.LFB2682:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	movl	$40, %edi
	call	putchar@PLT
	movl	$1, %ebp
	jmp	.L25
.L26:
	addl	$1, %ebp
.L25:
	movl	%ebp, %edi
	call	_Z8trig_numi
	movl	%eax, %ebx
	cmpl	$258474216, %eax
	jg	.L29
	movl	%ebx, %edi
	call	_Z16mutiple_of_threei
	testb	%al, %al
	je	.L26
	movl	%ebx, %edi
	call	_Z14first_of_threei
	movl	%eax, %edx
	movl	%ebx, %ecx
	movl	%ebp, %esi
	leaq	.LC4(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L26
.L29:
	leaq	.LC5(%rip), %rdi
	call	puts@PLT
	movl	$0, %eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE2682:
	.size	main, .-main
	.type	_GLOBAL__sub_I__Z8trig_numi, @function
_GLOBAL__sub_I__Z8trig_numi:
.LFB3445:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	movl	$65535, %esi
	movl	$1, %edi
	call	_Z41__static_initialization_and_destruction_0ii
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE3445:
	.size	_GLOBAL__sub_I__Z8trig_numi, .-_GLOBAL__sub_I__Z8trig_numi
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I__Z8trig_numi
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC0:
	.long	0
	.long	1127219200
	.align 8
.LC2:
	.long	0
	.long	1072693248
	.align 8
.LC3:
	.long	-1
	.long	2147483647
	.hidden	__dso_handle
	.ident	"GCC: (Debian 12.2.0-14) 12.2.0"
	.section	.note.GNU-stack,"",@progbits
