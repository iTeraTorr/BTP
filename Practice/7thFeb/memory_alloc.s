	.file	"memory_alloc.c"
	.text
	.globl	f
	.type	f, @function
f:
.LFB6:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -4(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	f, .-f
	.section	.rodata
	.align 8
.LC0:
	.string	"Hello numbers: %d and %d and %d\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB7:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	$8, %edi
	call	malloc@PLT
	movq	%rax, -8(%rbp)
	movl	$2, -16(%rbp)
	movl	$3, -12(%rbp)
	movq	-8(%rbp), %rax
	movl	$23, (%rax)
	movq	-8(%rbp), %rax
	addq	$4, %rax
	movl	$24, (%rax)
	movl	-12(%rbp), %edx
	movl	-16(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	f
	movl	-16(%rbp), %edx
	movl	-12(%rbp), %eax
	leal	(%rdx,%rax), %ecx
	movq	-8(%rbp), %rax
	addq	$4, %rax
	movl	(%rax), %edx
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %esi
	leaq	.LC0(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 9.3.0-17ubuntu1~20.04) 9.3.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	 1f - 0f
	.long	 4f - 1f
	.long	 5
0:
	.string	 "GNU"
1:
	.align 8
	.long	 0xc0000002
	.long	 3f - 2f
2:
	.long	 0x3
3:
	.align 8
4:
