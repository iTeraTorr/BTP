	.text
	.file	"spiral_matrix_V1.c"
	.globl	takeInput               # -- Begin function takeInput
	.p2align	4, 0x90
	.type	takeInput,@function
takeInput:                              # @takeInput
.Lfunc_begin0:
	.file	1 "spiral_matrix_V1.c"
	.loc	1 4 0                   # spiral_matrix_V1.c:4:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movabsq	$.L.str, %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
.Ltmp0:
	.loc	1 5 1 prologue_end      # spiral_matrix_V1.c:5:1
	movq	%rax, %rdi
	movb	$0, %al
	callq	printf
	movabsq	$.L.str.1, %rdi
	.loc	1 6 13                  # spiral_matrix_V1.c:6:13
	movq	-8(%rbp), %rsi
	.loc	1 6 1 is_stmt 0         # spiral_matrix_V1.c:6:1
	movl	%eax, -20(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	__isoc99_scanf
	movabsq	$.L.str.2, %rdi
	.loc	1 7 1 is_stmt 1         # spiral_matrix_V1.c:7:1
	movl	%eax, -24(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	printf
	movabsq	$.L.str.1, %rdi
	.loc	1 8 13                  # spiral_matrix_V1.c:8:13
	movq	-16(%rbp), %rsi
	.loc	1 8 1 is_stmt 0         # spiral_matrix_V1.c:8:1
	movl	%eax, -28(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	__isoc99_scanf
	.loc	1 9 1 is_stmt 1         # spiral_matrix_V1.c:9:1
	movl	%eax, -32(%rbp)         # 4-byte Spill
	addq	$32, %rsp
	popq	%rbp
	retq
.Ltmp1:
.Lfunc_end0:
	.size	takeInput, .Lfunc_end0-takeInput
	.cfi_endproc
                                        # -- End function
	.globl	fill                    # -- Begin function fill
	.p2align	4, 0x90
	.type	fill,@function
fill:                                   # @fill
.Lfunc_begin1:
	.loc	1 11 0                  # spiral_matrix_V1.c:11:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	16(%rbp), %eax
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movq	%r9, -40(%rbp)
.Ltmp2:
	.loc	1 12 12 prologue_end    # spiral_matrix_V1.c:12:12
	movl	16(%rbp), %esi
	.loc	1 12 5 is_stmt 0        # spiral_matrix_V1.c:12:5
	addl	$-1, %esi
	movl	%esi, %ecx
	subl	$3, %esi
	movl	%eax, -44(%rbp)         # 4-byte Spill
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	movl	%esi, -60(%rbp)         # 4-byte Spill
	ja	.LBB1_29
# %bb.30:
	.loc	1 0 5                   # spiral_matrix_V1.c:0:5
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	.LJTI1_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB1_1:
.Ltmp3:
	.loc	1 15 13 is_stmt 1       # spiral_matrix_V1.c:15:13
	jmp	.LBB1_2
.LBB1_2:                                # =>This Inner Loop Header: Depth=1
	.loc	1 0 13 is_stmt 0        # spiral_matrix_V1.c:0:13
	xorl	%eax, %eax
	movb	%al, %cl
.Ltmp4:
	.loc	1 15 19                 # spiral_matrix_V1.c:15:19
	movq	-32(%rbp), %rdx
	.loc	1 15 18                 # spiral_matrix_V1.c:15:18
	movl	(%rdx), %eax
	.loc	1 15 20                 # spiral_matrix_V1.c:15:20
	cmpl	-8(%rbp), %eax
	.loc	1 15 23                 # spiral_matrix_V1.c:15:23
	movb	%cl, -61(%rbp)          # 1-byte Spill
	jge	.LBB1_4
# %bb.3:                                #   in Loop: Header=BB1_2 Depth=1
	.loc	1 15 28                 # spiral_matrix_V1.c:15:28
	movq	-16(%rbp), %rax
	.loc	1 15 27                 # spiral_matrix_V1.c:15:27
	movq	(%rax), %rax
	.loc	1 15 37                 # spiral_matrix_V1.c:15:37
	movq	-24(%rbp), %rcx
	.loc	1 15 26                 # spiral_matrix_V1.c:15:26
	movslq	(%rcx), %rcx
	movq	(%rax,%rcx,8), %rax
	.loc	1 15 41                 # spiral_matrix_V1.c:15:41
	movq	-32(%rbp), %rcx
	.loc	1 15 26                 # spiral_matrix_V1.c:15:26
	movslq	(%rcx), %rcx
	.loc	1 15 43                 # spiral_matrix_V1.c:15:43
	cmpl	$-1, (%rax,%rcx,4)
	sete	%dl
	movb	%dl, -61(%rbp)          # 1-byte Spill
.Ltmp5:
.LBB1_4:                                #   in Loop: Header=BB1_2 Depth=1
	.loc	1 0 43                  # spiral_matrix_V1.c:0:43
	movb	-61(%rbp), %al          # 1-byte Reload
	.loc	1 15 13                 # spiral_matrix_V1.c:15:13
	testb	$1, %al
	jne	.LBB1_5
	jmp	.LBB1_7
.LBB1_5:                                #   in Loop: Header=BB1_2 Depth=1
.Ltmp6:
	.loc	1 16 37 is_stmt 1       # spiral_matrix_V1.c:16:37
	movq	-40(%rbp), %rax
	.loc	1 16 39 is_stmt 0       # spiral_matrix_V1.c:16:39
	movl	(%rax), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, (%rax)
	.loc	1 16 19                 # spiral_matrix_V1.c:16:19
	movq	-16(%rbp), %rax
	.loc	1 16 18                 # spiral_matrix_V1.c:16:18
	movq	(%rax), %rax
	.loc	1 16 28                 # spiral_matrix_V1.c:16:28
	movq	-24(%rbp), %rsi
	.loc	1 16 17                 # spiral_matrix_V1.c:16:17
	movslq	(%rsi), %rsi
	movq	(%rax,%rsi,8), %rax
	.loc	1 16 32                 # spiral_matrix_V1.c:16:32
	movq	-32(%rbp), %rsi
	.loc	1 16 17                 # spiral_matrix_V1.c:16:17
	movslq	(%rsi), %rsi
	.loc	1 16 34                 # spiral_matrix_V1.c:16:34
	movl	%ecx, (%rax,%rsi,4)
.Ltmp7:
# %bb.6:                                #   in Loop: Header=BB1_2 Depth=1
	.loc	1 15 50 is_stmt 1       # spiral_matrix_V1.c:15:50
	movq	-32(%rbp), %rax
	.loc	1 15 52 is_stmt 0       # spiral_matrix_V1.c:15:52
	movl	(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, (%rax)
	.loc	1 15 13                 # spiral_matrix_V1.c:15:13
	jmp	.LBB1_2
.Ltmp8:
.LBB1_7:
	.loc	1 18 15 is_stmt 1       # spiral_matrix_V1.c:18:15
	movq	-24(%rbp), %rax
	.loc	1 18 17 is_stmt 0       # spiral_matrix_V1.c:18:17
	movl	(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, (%rax)
	.loc	1 19 15 is_stmt 1       # spiral_matrix_V1.c:19:15
	movq	-32(%rbp), %rax
	.loc	1 19 17 is_stmt 0       # spiral_matrix_V1.c:19:17
	movl	(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, (%rax)
	.loc	1 20 13 is_stmt 1       # spiral_matrix_V1.c:20:13
	jmp	.LBB1_29
.LBB1_8:
	.loc	1 22 13                 # spiral_matrix_V1.c:22:13
	jmp	.LBB1_9
.LBB1_9:                                # =>This Inner Loop Header: Depth=1
	.loc	1 0 13 is_stmt 0        # spiral_matrix_V1.c:0:13
	xorl	%eax, %eax
	movb	%al, %cl
.Ltmp9:
	.loc	1 22 19                 # spiral_matrix_V1.c:22:19
	movq	-24(%rbp), %rdx
	.loc	1 22 18                 # spiral_matrix_V1.c:22:18
	movl	(%rdx), %eax
	.loc	1 22 20                 # spiral_matrix_V1.c:22:20
	cmpl	-4(%rbp), %eax
	.loc	1 22 23                 # spiral_matrix_V1.c:22:23
	movb	%cl, -62(%rbp)          # 1-byte Spill
	jge	.LBB1_11
# %bb.10:                               #   in Loop: Header=BB1_9 Depth=1
	.loc	1 22 28                 # spiral_matrix_V1.c:22:28
	movq	-16(%rbp), %rax
	.loc	1 22 27                 # spiral_matrix_V1.c:22:27
	movq	(%rax), %rax
	.loc	1 22 37                 # spiral_matrix_V1.c:22:37
	movq	-24(%rbp), %rcx
	.loc	1 22 26                 # spiral_matrix_V1.c:22:26
	movslq	(%rcx), %rcx
	movq	(%rax,%rcx,8), %rax
	.loc	1 22 41                 # spiral_matrix_V1.c:22:41
	movq	-32(%rbp), %rcx
	.loc	1 22 26                 # spiral_matrix_V1.c:22:26
	movslq	(%rcx), %rcx
	.loc	1 22 43                 # spiral_matrix_V1.c:22:43
	cmpl	$-1, (%rax,%rcx,4)
	sete	%dl
	movb	%dl, -62(%rbp)          # 1-byte Spill
.Ltmp10:
.LBB1_11:                               #   in Loop: Header=BB1_9 Depth=1
	.loc	1 0 43                  # spiral_matrix_V1.c:0:43
	movb	-62(%rbp), %al          # 1-byte Reload
	.loc	1 22 13                 # spiral_matrix_V1.c:22:13
	testb	$1, %al
	jne	.LBB1_12
	jmp	.LBB1_14
.LBB1_12:                               #   in Loop: Header=BB1_9 Depth=1
.Ltmp11:
	.loc	1 23 37 is_stmt 1       # spiral_matrix_V1.c:23:37
	movq	-40(%rbp), %rax
	.loc	1 23 39 is_stmt 0       # spiral_matrix_V1.c:23:39
	movl	(%rax), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, (%rax)
	.loc	1 23 19                 # spiral_matrix_V1.c:23:19
	movq	-16(%rbp), %rax
	.loc	1 23 18                 # spiral_matrix_V1.c:23:18
	movq	(%rax), %rax
	.loc	1 23 28                 # spiral_matrix_V1.c:23:28
	movq	-24(%rbp), %rsi
	.loc	1 23 17                 # spiral_matrix_V1.c:23:17
	movslq	(%rsi), %rsi
	movq	(%rax,%rsi,8), %rax
	.loc	1 23 32                 # spiral_matrix_V1.c:23:32
	movq	-32(%rbp), %rsi
	.loc	1 23 17                 # spiral_matrix_V1.c:23:17
	movslq	(%rsi), %rsi
	.loc	1 23 34                 # spiral_matrix_V1.c:23:34
	movl	%ecx, (%rax,%rsi,4)
.Ltmp12:
# %bb.13:                               #   in Loop: Header=BB1_9 Depth=1
	.loc	1 22 50 is_stmt 1       # spiral_matrix_V1.c:22:50
	movq	-24(%rbp), %rax
	.loc	1 22 52 is_stmt 0       # spiral_matrix_V1.c:22:52
	movl	(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, (%rax)
	.loc	1 22 13                 # spiral_matrix_V1.c:22:13
	jmp	.LBB1_9
.Ltmp13:
.LBB1_14:
	.loc	1 25 15 is_stmt 1       # spiral_matrix_V1.c:25:15
	movq	-32(%rbp), %rax
	.loc	1 25 17 is_stmt 0       # spiral_matrix_V1.c:25:17
	movl	(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, (%rax)
	.loc	1 26 15 is_stmt 1       # spiral_matrix_V1.c:26:15
	movq	-24(%rbp), %rax
	.loc	1 26 17 is_stmt 0       # spiral_matrix_V1.c:26:17
	movl	(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, (%rax)
	.loc	1 27 13 is_stmt 1       # spiral_matrix_V1.c:27:13
	jmp	.LBB1_29
.LBB1_15:
	.loc	1 29 13                 # spiral_matrix_V1.c:29:13
	jmp	.LBB1_16
.LBB1_16:                               # =>This Inner Loop Header: Depth=1
	.loc	1 0 13 is_stmt 0        # spiral_matrix_V1.c:0:13
	xorl	%eax, %eax
	movb	%al, %cl
.Ltmp14:
	.loc	1 29 19                 # spiral_matrix_V1.c:29:19
	movq	-32(%rbp), %rdx
	.loc	1 29 20                 # spiral_matrix_V1.c:29:20
	cmpl	$0, (%rdx)
	.loc	1 29 24                 # spiral_matrix_V1.c:29:24
	movb	%cl, -63(%rbp)          # 1-byte Spill
	jl	.LBB1_18
# %bb.17:                               #   in Loop: Header=BB1_16 Depth=1
	.loc	1 29 29                 # spiral_matrix_V1.c:29:29
	movq	-16(%rbp), %rax
	.loc	1 29 28                 # spiral_matrix_V1.c:29:28
	movq	(%rax), %rax
	.loc	1 29 38                 # spiral_matrix_V1.c:29:38
	movq	-24(%rbp), %rcx
	.loc	1 29 27                 # spiral_matrix_V1.c:29:27
	movslq	(%rcx), %rcx
	movq	(%rax,%rcx,8), %rax
	.loc	1 29 42                 # spiral_matrix_V1.c:29:42
	movq	-32(%rbp), %rcx
	.loc	1 29 27                 # spiral_matrix_V1.c:29:27
	movslq	(%rcx), %rcx
	.loc	1 29 44                 # spiral_matrix_V1.c:29:44
	cmpl	$-1, (%rax,%rcx,4)
	sete	%dl
	movb	%dl, -63(%rbp)          # 1-byte Spill
.Ltmp15:
.LBB1_18:                               #   in Loop: Header=BB1_16 Depth=1
	.loc	1 0 44                  # spiral_matrix_V1.c:0:44
	movb	-63(%rbp), %al          # 1-byte Reload
	.loc	1 29 13                 # spiral_matrix_V1.c:29:13
	testb	$1, %al
	jne	.LBB1_19
	jmp	.LBB1_21
.LBB1_19:                               #   in Loop: Header=BB1_16 Depth=1
.Ltmp16:
	.loc	1 30 37 is_stmt 1       # spiral_matrix_V1.c:30:37
	movq	-40(%rbp), %rax
	.loc	1 30 39 is_stmt 0       # spiral_matrix_V1.c:30:39
	movl	(%rax), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, (%rax)
	.loc	1 30 19                 # spiral_matrix_V1.c:30:19
	movq	-16(%rbp), %rax
	.loc	1 30 18                 # spiral_matrix_V1.c:30:18
	movq	(%rax), %rax
	.loc	1 30 28                 # spiral_matrix_V1.c:30:28
	movq	-24(%rbp), %rsi
	.loc	1 30 17                 # spiral_matrix_V1.c:30:17
	movslq	(%rsi), %rsi
	movq	(%rax,%rsi,8), %rax
	.loc	1 30 32                 # spiral_matrix_V1.c:30:32
	movq	-32(%rbp), %rsi
	.loc	1 30 17                 # spiral_matrix_V1.c:30:17
	movslq	(%rsi), %rsi
	.loc	1 30 34                 # spiral_matrix_V1.c:30:34
	movl	%ecx, (%rax,%rsi,4)
.Ltmp17:
# %bb.20:                               #   in Loop: Header=BB1_16 Depth=1
	.loc	1 29 51 is_stmt 1       # spiral_matrix_V1.c:29:51
	movq	-32(%rbp), %rax
	.loc	1 29 53 is_stmt 0       # spiral_matrix_V1.c:29:53
	movl	(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, (%rax)
	.loc	1 29 13                 # spiral_matrix_V1.c:29:13
	jmp	.LBB1_16
.Ltmp18:
.LBB1_21:
	.loc	1 32 15 is_stmt 1       # spiral_matrix_V1.c:32:15
	movq	-24(%rbp), %rax
	.loc	1 32 17 is_stmt 0       # spiral_matrix_V1.c:32:17
	movl	(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, (%rax)
	.loc	1 33 15 is_stmt 1       # spiral_matrix_V1.c:33:15
	movq	-32(%rbp), %rax
	.loc	1 33 17 is_stmt 0       # spiral_matrix_V1.c:33:17
	movl	(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, (%rax)
	.loc	1 34 13 is_stmt 1       # spiral_matrix_V1.c:34:13
	jmp	.LBB1_29
.LBB1_22:
	.loc	1 36 13                 # spiral_matrix_V1.c:36:13
	jmp	.LBB1_23
.LBB1_23:                               # =>This Inner Loop Header: Depth=1
	.loc	1 0 13 is_stmt 0        # spiral_matrix_V1.c:0:13
	xorl	%eax, %eax
	movb	%al, %cl
.Ltmp19:
	.loc	1 36 19                 # spiral_matrix_V1.c:36:19
	movq	-24(%rbp), %rdx
	.loc	1 36 20                 # spiral_matrix_V1.c:36:20
	cmpl	$0, (%rdx)
	.loc	1 36 24                 # spiral_matrix_V1.c:36:24
	movb	%cl, -64(%rbp)          # 1-byte Spill
	jl	.LBB1_25
# %bb.24:                               #   in Loop: Header=BB1_23 Depth=1
	.loc	1 36 29                 # spiral_matrix_V1.c:36:29
	movq	-16(%rbp), %rax
	.loc	1 36 28                 # spiral_matrix_V1.c:36:28
	movq	(%rax), %rax
	.loc	1 36 38                 # spiral_matrix_V1.c:36:38
	movq	-24(%rbp), %rcx
	.loc	1 36 27                 # spiral_matrix_V1.c:36:27
	movslq	(%rcx), %rcx
	movq	(%rax,%rcx,8), %rax
	.loc	1 36 42                 # spiral_matrix_V1.c:36:42
	movq	-32(%rbp), %rcx
	.loc	1 36 27                 # spiral_matrix_V1.c:36:27
	movslq	(%rcx), %rcx
	.loc	1 36 44                 # spiral_matrix_V1.c:36:44
	cmpl	$-1, (%rax,%rcx,4)
	sete	%dl
	movb	%dl, -64(%rbp)          # 1-byte Spill
.Ltmp20:
.LBB1_25:                               #   in Loop: Header=BB1_23 Depth=1
	.loc	1 0 44                  # spiral_matrix_V1.c:0:44
	movb	-64(%rbp), %al          # 1-byte Reload
	.loc	1 36 13                 # spiral_matrix_V1.c:36:13
	testb	$1, %al
	jne	.LBB1_26
	jmp	.LBB1_28
.LBB1_26:                               #   in Loop: Header=BB1_23 Depth=1
.Ltmp21:
	.loc	1 37 37 is_stmt 1       # spiral_matrix_V1.c:37:37
	movq	-40(%rbp), %rax
	.loc	1 37 39 is_stmt 0       # spiral_matrix_V1.c:37:39
	movl	(%rax), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, (%rax)
	.loc	1 37 19                 # spiral_matrix_V1.c:37:19
	movq	-16(%rbp), %rax
	.loc	1 37 18                 # spiral_matrix_V1.c:37:18
	movq	(%rax), %rax
	.loc	1 37 28                 # spiral_matrix_V1.c:37:28
	movq	-24(%rbp), %rsi
	.loc	1 37 17                 # spiral_matrix_V1.c:37:17
	movslq	(%rsi), %rsi
	movq	(%rax,%rsi,8), %rax
	.loc	1 37 32                 # spiral_matrix_V1.c:37:32
	movq	-32(%rbp), %rsi
	.loc	1 37 17                 # spiral_matrix_V1.c:37:17
	movslq	(%rsi), %rsi
	.loc	1 37 34                 # spiral_matrix_V1.c:37:34
	movl	%ecx, (%rax,%rsi,4)
.Ltmp22:
# %bb.27:                               #   in Loop: Header=BB1_23 Depth=1
	.loc	1 36 51 is_stmt 1       # spiral_matrix_V1.c:36:51
	movq	-24(%rbp), %rax
	.loc	1 36 53 is_stmt 0       # spiral_matrix_V1.c:36:53
	movl	(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, (%rax)
	.loc	1 36 13                 # spiral_matrix_V1.c:36:13
	jmp	.LBB1_23
.Ltmp23:
.LBB1_28:
	.loc	1 39 15 is_stmt 1       # spiral_matrix_V1.c:39:15
	movq	-32(%rbp), %rax
	.loc	1 39 17 is_stmt 0       # spiral_matrix_V1.c:39:17
	movl	(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, (%rax)
	.loc	1 40 15 is_stmt 1       # spiral_matrix_V1.c:40:15
	movq	-24(%rbp), %rax
	.loc	1 40 17 is_stmt 0       # spiral_matrix_V1.c:40:17
	movl	(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, (%rax)
.Ltmp24:
.LBB1_29:
	.loc	1 42 1 is_stmt 1        # spiral_matrix_V1.c:42:1
	popq	%rbp
	retq
.Ltmp25:
.Lfunc_end1:
	.size	fill, .Lfunc_end1-fill
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI1_0:
	.quad	.LBB1_1
	.quad	.LBB1_8
	.quad	.LBB1_15
	.quad	.LBB1_22
                                        # -- End function
	.text
	.globl	printMatrix             # -- Begin function printMatrix
	.p2align	4, 0x90
	.type	printMatrix,@function
printMatrix:                            # @printMatrix
.Lfunc_begin2:
	.loc	1 43 0                  # spiral_matrix_V1.c:43:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
.Ltmp26:
	.loc	1 45 13 prologue_end    # spiral_matrix_V1.c:45:13
	movl	$0, -20(%rbp)
.LBB2_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_3 Depth 2
.Ltmp27:
	.loc	1 45 17 is_stmt 0       # spiral_matrix_V1.c:45:17
	movl	-20(%rbp), %eax
	.loc	1 45 18                 # spiral_matrix_V1.c:45:18
	cmpl	-12(%rbp), %eax
.Ltmp28:
	.loc	1 45 5                  # spiral_matrix_V1.c:45:5
	jge	.LBB2_8
# %bb.2:                                #   in Loop: Header=BB2_1 Depth=1
.Ltmp29:
	.loc	1 46 17 is_stmt 1       # spiral_matrix_V1.c:46:17
	movl	$0, -24(%rbp)
.LBB2_3:                                #   Parent Loop BB2_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
.Ltmp30:
	.loc	1 46 21 is_stmt 0       # spiral_matrix_V1.c:46:21
	movl	-24(%rbp), %eax
	.loc	1 46 22                 # spiral_matrix_V1.c:46:22
	cmpl	-16(%rbp), %eax
.Ltmp31:
	.loc	1 46 9                  # spiral_matrix_V1.c:46:9
	jge	.LBB2_6
# %bb.4:                                #   in Loop: Header=BB2_3 Depth=2
	.loc	1 0 9                   # spiral_matrix_V1.c:0:9
	movabsq	$.L.str.3, %rdi
.Ltmp32:
	.loc	1 47 29 is_stmt 1       # spiral_matrix_V1.c:47:29
	movq	-8(%rbp), %rax
	.loc	1 47 28 is_stmt 0       # spiral_matrix_V1.c:47:28
	movq	(%rax), %rax
	.loc	1 47 27                 # spiral_matrix_V1.c:47:27
	movslq	-20(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-24(%rbp), %rcx
	movl	(%rax,%rcx,4), %esi
	.loc	1 47 13                 # spiral_matrix_V1.c:47:13
	movb	$0, %al
	callq	printf
	movl	%eax, -28(%rbp)         # 4-byte Spill
.Ltmp33:
# %bb.5:                                #   in Loop: Header=BB2_3 Depth=2
	.loc	1 46 26 is_stmt 1       # spiral_matrix_V1.c:46:26
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	.loc	1 46 9 is_stmt 0        # spiral_matrix_V1.c:46:9
	jmp	.LBB2_3
.Ltmp34:
.LBB2_6:                                #   in Loop: Header=BB2_1 Depth=1
	.loc	1 0 9                   # spiral_matrix_V1.c:0:9
	movabsq	$.L.str.4, %rdi
	.loc	1 49 9 is_stmt 1        # spiral_matrix_V1.c:49:9
	movb	$0, %al
	callq	printf
	movl	%eax, -32(%rbp)         # 4-byte Spill
.Ltmp35:
# %bb.7:                                #   in Loop: Header=BB2_1 Depth=1
	.loc	1 45 22                 # spiral_matrix_V1.c:45:22
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	.loc	1 45 5 is_stmt 0        # spiral_matrix_V1.c:45:5
	jmp	.LBB2_1
.Ltmp36:
.LBB2_8:
	.loc	1 51 1 is_stmt 1        # spiral_matrix_V1.c:51:1
	addq	$32, %rsp
	popq	%rbp
	retq
.Ltmp37:
.Lfunc_end2:
	.size	printMatrix, .Lfunc_end2-printMatrix
	.cfi_endproc
                                        # -- End function
	.globl	main                    # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
.Lfunc_begin3:
	.loc	1 52 0                  # spiral_matrix_V1.c:52:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	leaq	-8(%rbp), %rdi
	leaq	-12(%rbp), %rsi
	movl	$0, -4(%rbp)
.Ltmp38:
	#DEBUG_VALUE: main:n <- [%rdi+0]
	#DEBUG_VALUE: main:m <- [%rsi+0]
	.loc	1 54 1 prologue_end     # spiral_matrix_V1.c:54:1
	callq	takeInput
.Ltmp39:
	.loc	1 56 29                 # spiral_matrix_V1.c:56:29
	movslq	-8(%rbp), %rsi
	.loc	1 56 30 is_stmt 0       # spiral_matrix_V1.c:56:30
	shlq	$3, %rsi
	.loc	1 56 22                 # spiral_matrix_V1.c:56:22
	movq	%rsi, %rdi
	callq	malloc
	.loc	1 56 7                  # spiral_matrix_V1.c:56:7
	movq	%rax, -24(%rbp)
.Ltmp40:
	.loc	1 57 9 is_stmt 1        # spiral_matrix_V1.c:57:9
	movl	$0, -28(%rbp)
.LBB3_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_3 Depth 2
.Ltmp41:
	.loc	1 57 13 is_stmt 0       # spiral_matrix_V1.c:57:13
	movl	-28(%rbp), %eax
	.loc	1 57 14                 # spiral_matrix_V1.c:57:14
	cmpl	-8(%rbp), %eax
.Ltmp42:
	.loc	1 57 1                  # spiral_matrix_V1.c:57:1
	jge	.LBB3_8
# %bb.2:                                #   in Loop: Header=BB3_1 Depth=1
.Ltmp43:
	.loc	1 58 29 is_stmt 1       # spiral_matrix_V1.c:58:29
	movslq	-12(%rbp), %rax
	.loc	1 58 30 is_stmt 0       # spiral_matrix_V1.c:58:30
	shlq	$2, %rax
	.loc	1 58 22                 # spiral_matrix_V1.c:58:22
	movq	%rax, %rdi
	callq	malloc
	.loc	1 58 5                  # spiral_matrix_V1.c:58:5
	movq	-24(%rbp), %rdi
	movslq	-28(%rbp), %rcx
	.loc	1 58 14                 # spiral_matrix_V1.c:58:14
	movq	%rax, (%rdi,%rcx,8)
.Ltmp44:
	.loc	1 59 13 is_stmt 1       # spiral_matrix_V1.c:59:13
	movl	$0, -32(%rbp)
.LBB3_3:                                #   Parent Loop BB3_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
.Ltmp45:
	.loc	1 59 17 is_stmt 0       # spiral_matrix_V1.c:59:17
	movl	-32(%rbp), %eax
	.loc	1 59 18                 # spiral_matrix_V1.c:59:18
	cmpl	-12(%rbp), %eax
.Ltmp46:
	.loc	1 59 5                  # spiral_matrix_V1.c:59:5
	jge	.LBB3_6
# %bb.4:                                #   in Loop: Header=BB3_3 Depth=2
.Ltmp47:
	.loc	1 60 9 is_stmt 1        # spiral_matrix_V1.c:60:9
	movq	-24(%rbp), %rax
	movslq	-28(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-32(%rbp), %rcx
	.loc	1 60 21 is_stmt 0       # spiral_matrix_V1.c:60:21
	movl	$-1, (%rax,%rcx,4)
.Ltmp48:
# %bb.5:                                #   in Loop: Header=BB3_3 Depth=2
	.loc	1 59 22 is_stmt 1       # spiral_matrix_V1.c:59:22
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	.loc	1 59 5 is_stmt 0        # spiral_matrix_V1.c:59:5
	jmp	.LBB3_3
.Ltmp49:
.LBB3_6:                                #   in Loop: Header=BB3_1 Depth=1
	.loc	1 62 1 is_stmt 1        # spiral_matrix_V1.c:62:1
	jmp	.LBB3_7
.Ltmp50:
.LBB3_7:                                #   in Loop: Header=BB3_1 Depth=1
	.loc	1 57 18                 # spiral_matrix_V1.c:57:18
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	.loc	1 57 1 is_stmt 0        # spiral_matrix_V1.c:57:1
	jmp	.LBB3_1
.Ltmp51:
.LBB3_8:
	.loc	1 63 5 is_stmt 1        # spiral_matrix_V1.c:63:5
	movl	$1, -36(%rbp)
	.loc	1 65 5                  # spiral_matrix_V1.c:65:5
	movl	$0, -40(%rbp)
	.loc	1 65 9 is_stmt 0        # spiral_matrix_V1.c:65:9
	movl	$0, -44(%rbp)
.LBB3_9:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_11 Depth 2
	.loc	1 66 7 is_stmt 1        # spiral_matrix_V1.c:66:7
	movl	-36(%rbp), %eax
	.loc	1 66 10 is_stmt 0       # spiral_matrix_V1.c:66:10
	movl	-8(%rbp), %ecx
	.loc	1 66 11                 # spiral_matrix_V1.c:66:11
	imull	-12(%rbp), %ecx
	.loc	1 66 8                  # spiral_matrix_V1.c:66:8
	cmpl	%ecx, %eax
	.loc	1 66 1                  # spiral_matrix_V1.c:66:1
	jg	.LBB3_15
# %bb.10:                               #   in Loop: Header=BB3_9 Depth=1
.Ltmp52:
	.loc	1 67 13 is_stmt 1       # spiral_matrix_V1.c:67:13
	movl	$1, -48(%rbp)
.LBB3_11:                               #   Parent Loop BB3_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
.Ltmp53:
	.loc	1 67 18 is_stmt 0       # spiral_matrix_V1.c:67:18
	cmpl	$4, -48(%rbp)
.Ltmp54:
	.loc	1 67 5                  # spiral_matrix_V1.c:67:5
	jg	.LBB3_14
# %bb.12:                               #   in Loop: Header=BB3_11 Depth=2
	.loc	1 0 5                   # spiral_matrix_V1.c:0:5
	leaq	-24(%rbp), %rdx
	leaq	-40(%rbp), %rcx
	leaq	-44(%rbp), %r8
	leaq	-36(%rbp), %r9
.Ltmp55:
	.loc	1 68 14 is_stmt 1       # spiral_matrix_V1.c:68:14
	movl	-8(%rbp), %edi
	.loc	1 68 16 is_stmt 0       # spiral_matrix_V1.c:68:16
	movl	-12(%rbp), %esi
	.loc	1 68 35                 # spiral_matrix_V1.c:68:35
	movl	-48(%rbp), %eax
	.loc	1 68 9                  # spiral_matrix_V1.c:68:9
	movl	%eax, (%rsp)
	callq	fill
# %bb.13:                               #   in Loop: Header=BB3_11 Depth=2
	.loc	1 67 23 is_stmt 1       # spiral_matrix_V1.c:67:23
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	.loc	1 67 5 is_stmt 0        # spiral_matrix_V1.c:67:5
	jmp	.LBB3_11
.Ltmp56:
.LBB3_14:                               #   in Loop: Header=BB3_9 Depth=1
	.loc	1 66 1 is_stmt 1        # spiral_matrix_V1.c:66:1
	jmp	.LBB3_9
.LBB3_15:
	.loc	1 0 1 is_stmt 0         # spiral_matrix_V1.c:0:1
	leaq	-24(%rbp), %rdi
	.loc	1 71 21 is_stmt 1       # spiral_matrix_V1.c:71:21
	movl	-8(%rbp), %esi
	.loc	1 71 23 is_stmt 0       # spiral_matrix_V1.c:71:23
	movl	-12(%rbp), %edx
	.loc	1 71 1                  # spiral_matrix_V1.c:71:1
	callq	printMatrix
.Ltmp57:
	.loc	1 73 9 is_stmt 1        # spiral_matrix_V1.c:73:9
	movl	$0, -52(%rbp)
.LBB3_16:                               # =>This Inner Loop Header: Depth=1
.Ltmp58:
	.loc	1 73 13 is_stmt 0       # spiral_matrix_V1.c:73:13
	movl	-52(%rbp), %eax
	.loc	1 73 14                 # spiral_matrix_V1.c:73:14
	cmpl	-8(%rbp), %eax
.Ltmp59:
	.loc	1 73 1                  # spiral_matrix_V1.c:73:1
	jge	.LBB3_19
# %bb.17:                               #   in Loop: Header=BB3_16 Depth=1
.Ltmp60:
	.loc	1 74 10 is_stmt 1       # spiral_matrix_V1.c:74:10
	movq	-24(%rbp), %rax
	movslq	-52(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	.loc	1 74 5 is_stmt 0        # spiral_matrix_V1.c:74:5
	movq	%rax, %rdi
	callq	free
.Ltmp61:
# %bb.18:                               #   in Loop: Header=BB3_16 Depth=1
	.loc	1 73 18 is_stmt 1       # spiral_matrix_V1.c:73:18
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	.loc	1 73 1 is_stmt 0        # spiral_matrix_V1.c:73:1
	jmp	.LBB3_16
.Ltmp62:
.LBB3_19:
	.loc	1 76 6 is_stmt 1        # spiral_matrix_V1.c:76:6
	movq	-24(%rbp), %rax
	.loc	1 76 1 is_stmt 0        # spiral_matrix_V1.c:76:1
	movq	%rax, %rdi
	callq	free
	xorl	%eax, %eax
	.loc	1 78 1 is_stmt 1        # spiral_matrix_V1.c:78:1
	addq	$64, %rsp
	popq	%rbp
	retq
.Ltmp63:
.Lfunc_end3:
	.size	main, .Lfunc_end3-main
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Enter row count: "
	.size	.L.str, 18

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"%d"
	.size	.L.str.1, 3

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Enter column count: "
	.size	.L.str.2, 21

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"%d  "
	.size	.L.str.3, 5

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"\n"
	.size	.L.str.4, 2

	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)" # string offset=0
.Linfo_string1:
	.asciz	"spiral_matrix_V1.c"    # string offset=54
.Linfo_string2:
	.asciz	"/media/ruchir/iTeraTorr/BTP/Practice/Dt_7thDec/Code3/1999/memcheck" # string offset=73
.Linfo_string3:
	.asciz	"int"                   # string offset=140
.Linfo_string4:
	.asciz	"takeInput"             # string offset=144
.Linfo_string5:
	.asciz	"fill"                  # string offset=154
.Linfo_string6:
	.asciz	"printMatrix"           # string offset=159
.Linfo_string7:
	.asciz	"main"                  # string offset=171
.Linfo_string8:
	.asciz	"n"                     # string offset=176
.Linfo_string9:
	.asciz	"m"                     # string offset=178
.Linfo_string10:
	.asciz	"matrix"                # string offset=180
.Linfo_string11:
	.asciz	"r"                     # string offset=187
.Linfo_string12:
	.asciz	"c"                     # string offset=189
.Linfo_string13:
	.asciz	"i"                     # string offset=191
.Linfo_string14:
	.asciz	"mode"                  # string offset=193
.Linfo_string15:
	.asciz	"j"                     # string offset=198
.Linfo_string16:
	.asciz	"k"                     # string offset=200
	.section	.debug_abbrev,"",@progbits
	.byte	1                       # Abbreviation Code
	.byte	17                      # DW_TAG_compile_unit
	.byte	1                       # DW_CHILDREN_yes
	.byte	37                      # DW_AT_producer
	.byte	14                      # DW_FORM_strp
	.byte	19                      # DW_AT_language
	.byte	5                       # DW_FORM_data2
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	16                      # DW_AT_stmt_list
	.byte	23                      # DW_FORM_sec_offset
	.byte	27                      # DW_AT_comp_dir
	.byte	14                      # DW_FORM_strp
	.ascii	"\264B"                 # DW_AT_GNU_pubnames
	.byte	25                      # DW_FORM_flag_present
	.byte	17                      # DW_AT_low_pc
	.byte	1                       # DW_FORM_addr
	.byte	18                      # DW_AT_high_pc
	.byte	6                       # DW_FORM_data4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	2                       # Abbreviation Code
	.byte	15                      # DW_TAG_pointer_type
	.byte	0                       # DW_CHILDREN_no
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	3                       # Abbreviation Code
	.byte	36                      # DW_TAG_base_type
	.byte	0                       # DW_CHILDREN_no
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	62                      # DW_AT_encoding
	.byte	11                      # DW_FORM_data1
	.byte	11                      # DW_AT_byte_size
	.byte	11                      # DW_FORM_data1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	4                       # Abbreviation Code
	.byte	46                      # DW_TAG_subprogram
	.byte	1                       # DW_CHILDREN_yes
	.byte	17                      # DW_AT_low_pc
	.byte	1                       # DW_FORM_addr
	.byte	18                      # DW_AT_high_pc
	.byte	6                       # DW_FORM_data4
	.byte	64                      # DW_AT_frame_base
	.byte	24                      # DW_FORM_exprloc
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	39                      # DW_AT_prototyped
	.byte	25                      # DW_FORM_flag_present
	.byte	63                      # DW_AT_external
	.byte	25                      # DW_FORM_flag_present
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	5                       # Abbreviation Code
	.byte	5                       # DW_TAG_formal_parameter
	.byte	0                       # DW_CHILDREN_no
	.byte	2                       # DW_AT_location
	.byte	24                      # DW_FORM_exprloc
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	6                       # Abbreviation Code
	.byte	11                      # DW_TAG_lexical_block
	.byte	1                       # DW_CHILDREN_yes
	.byte	17                      # DW_AT_low_pc
	.byte	1                       # DW_FORM_addr
	.byte	18                      # DW_AT_high_pc
	.byte	6                       # DW_FORM_data4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	7                       # Abbreviation Code
	.byte	52                      # DW_TAG_variable
	.byte	0                       # DW_CHILDREN_no
	.byte	2                       # DW_AT_location
	.byte	24                      # DW_FORM_exprloc
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	8                       # Abbreviation Code
	.byte	46                      # DW_TAG_subprogram
	.byte	1                       # DW_CHILDREN_yes
	.byte	17                      # DW_AT_low_pc
	.byte	1                       # DW_FORM_addr
	.byte	18                      # DW_AT_high_pc
	.byte	6                       # DW_FORM_data4
	.byte	64                      # DW_AT_frame_base
	.byte	24                      # DW_FORM_exprloc
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	63                      # DW_AT_external
	.byte	25                      # DW_FORM_flag_present
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	0                       # EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	573                     # Length of Unit
	.short	4                       # DWARF version number
	.long	.debug_abbrev           # Offset Into Abbrev. Section
	.byte	8                       # Address Size (in bytes)
	.byte	1                       # Abbrev [1] 0xb:0x236 DW_TAG_compile_unit
	.long	.Linfo_string0          # DW_AT_producer
	.short	12                      # DW_AT_language
	.long	.Linfo_string1          # DW_AT_name
	.long	.Lline_table_start0     # DW_AT_stmt_list
	.long	.Linfo_string2          # DW_AT_comp_dir
                                        # DW_AT_GNU_pubnames
	.quad	.Lfunc_begin0           # DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin0 # DW_AT_high_pc
	.byte	2                       # Abbrev [2] 0x2a:0x5 DW_TAG_pointer_type
	.long	47                      # DW_AT_type
	.byte	2                       # Abbrev [2] 0x2f:0x5 DW_TAG_pointer_type
	.long	52                      # DW_AT_type
	.byte	3                       # Abbrev [3] 0x34:0x7 DW_TAG_base_type
	.long	.Linfo_string3          # DW_AT_name
	.byte	5                       # DW_AT_encoding
	.byte	4                       # DW_AT_byte_size
	.byte	4                       # Abbrev [4] 0x3b:0x32 DW_TAG_subprogram
	.quad	.Lfunc_begin0           # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0 # DW_AT_high_pc
	.byte	1                       # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string4          # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	4                       # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	5                       # Abbrev [5] 0x50:0xe DW_TAG_formal_parameter
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string8          # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	4                       # DW_AT_decl_line
	.long	47                      # DW_AT_type
	.byte	5                       # Abbrev [5] 0x5e:0xe DW_TAG_formal_parameter
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string9          # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	4                       # DW_AT_decl_line
	.long	47                      # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	4                       # Abbrev [4] 0x6d:0x78 DW_TAG_subprogram
	.quad	.Lfunc_begin1           # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1 # DW_AT_high_pc
	.byte	1                       # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string5          # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	11                      # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	5                       # Abbrev [5] 0x82:0xe DW_TAG_formal_parameter
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	124
	.long	.Linfo_string8          # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	11                      # DW_AT_decl_line
	.long	52                      # DW_AT_type
	.byte	5                       # Abbrev [5] 0x90:0xe DW_TAG_formal_parameter
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string9          # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	11                      # DW_AT_decl_line
	.long	52                      # DW_AT_type
	.byte	5                       # Abbrev [5] 0x9e:0xe DW_TAG_formal_parameter
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string10         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	11                      # DW_AT_decl_line
	.long	571                     # DW_AT_type
	.byte	5                       # Abbrev [5] 0xac:0xe DW_TAG_formal_parameter
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string11         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	11                      # DW_AT_decl_line
	.long	47                      # DW_AT_type
	.byte	5                       # Abbrev [5] 0xba:0xe DW_TAG_formal_parameter
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	96
	.long	.Linfo_string12         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	11                      # DW_AT_decl_line
	.long	47                      # DW_AT_type
	.byte	5                       # Abbrev [5] 0xc8:0xe DW_TAG_formal_parameter
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	88
	.long	.Linfo_string13         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	11                      # DW_AT_decl_line
	.long	47                      # DW_AT_type
	.byte	5                       # Abbrev [5] 0xd6:0xe DW_TAG_formal_parameter
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	16
	.long	.Linfo_string14         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	11                      # DW_AT_decl_line
	.long	52                      # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	4                       # Abbrev [4] 0xe5:0x78 DW_TAG_subprogram
	.quad	.Lfunc_begin2           # DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2 # DW_AT_high_pc
	.byte	1                       # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string6          # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	43                      # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	5                       # Abbrev [5] 0xfa:0xe DW_TAG_formal_parameter
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string10         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	43                      # DW_AT_decl_line
	.long	571                     # DW_AT_type
	.byte	5                       # Abbrev [5] 0x108:0xe DW_TAG_formal_parameter
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	116
	.long	.Linfo_string8          # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	43                      # DW_AT_decl_line
	.long	52                      # DW_AT_type
	.byte	5                       # Abbrev [5] 0x116:0xe DW_TAG_formal_parameter
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string9          # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	43                      # DW_AT_decl_line
	.long	52                      # DW_AT_type
	.byte	6                       # Abbrev [6] 0x124:0x38 DW_TAG_lexical_block
	.quad	.Ltmp26                 # DW_AT_low_pc
	.long	.Ltmp36-.Ltmp26         # DW_AT_high_pc
	.byte	7                       # Abbrev [7] 0x131:0xe DW_TAG_variable
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	108
	.long	.Linfo_string13         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	45                      # DW_AT_decl_line
	.long	52                      # DW_AT_type
	.byte	6                       # Abbrev [6] 0x13f:0x1c DW_TAG_lexical_block
	.quad	.Ltmp29                 # DW_AT_low_pc
	.long	.Ltmp34-.Ltmp29         # DW_AT_high_pc
	.byte	7                       # Abbrev [7] 0x14c:0xe DW_TAG_variable
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string15         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	46                      # DW_AT_decl_line
	.long	52                      # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	0                       # End Of Children Mark
	.byte	0                       # End Of Children Mark
	.byte	8                       # Abbrev [8] 0x15d:0xde DW_TAG_subprogram
	.quad	.Lfunc_begin3           # DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin3 # DW_AT_high_pc
	.byte	1                       # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string7          # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	52                      # DW_AT_decl_line
	.long	52                      # DW_AT_type
                                        # DW_AT_external
	.byte	7                       # Abbrev [7] 0x176:0xe DW_TAG_variable
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string8          # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	53                      # DW_AT_decl_line
	.long	52                      # DW_AT_type
	.byte	7                       # Abbrev [7] 0x184:0xe DW_TAG_variable
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	116
	.long	.Linfo_string9          # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	53                      # DW_AT_decl_line
	.long	52                      # DW_AT_type
	.byte	7                       # Abbrev [7] 0x192:0xe DW_TAG_variable
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string10         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	56                      # DW_AT_decl_line
	.long	42                      # DW_AT_type
	.byte	7                       # Abbrev [7] 0x1a0:0xe DW_TAG_variable
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	92
	.long	.Linfo_string13         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	63                      # DW_AT_decl_line
	.long	52                      # DW_AT_type
	.byte	7                       # Abbrev [7] 0x1ae:0xe DW_TAG_variable
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	88
	.long	.Linfo_string11         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	65                      # DW_AT_decl_line
	.long	52                      # DW_AT_type
	.byte	7                       # Abbrev [7] 0x1bc:0xe DW_TAG_variable
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	84
	.long	.Linfo_string12         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	65                      # DW_AT_decl_line
	.long	52                      # DW_AT_type
	.byte	6                       # Abbrev [6] 0x1ca:0x38 DW_TAG_lexical_block
	.quad	.Ltmp40                 # DW_AT_low_pc
	.long	.Ltmp51-.Ltmp40         # DW_AT_high_pc
	.byte	7                       # Abbrev [7] 0x1d7:0xe DW_TAG_variable
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	100
	.long	.Linfo_string13         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	57                      # DW_AT_decl_line
	.long	52                      # DW_AT_type
	.byte	6                       # Abbrev [6] 0x1e5:0x1c DW_TAG_lexical_block
	.quad	.Ltmp44                 # DW_AT_low_pc
	.long	.Ltmp49-.Ltmp44         # DW_AT_high_pc
	.byte	7                       # Abbrev [7] 0x1f2:0xe DW_TAG_variable
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	96
	.long	.Linfo_string15         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	59                      # DW_AT_decl_line
	.long	52                      # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	0                       # End Of Children Mark
	.byte	6                       # Abbrev [6] 0x202:0x1c DW_TAG_lexical_block
	.quad	.Ltmp52                 # DW_AT_low_pc
	.long	.Ltmp56-.Ltmp52         # DW_AT_high_pc
	.byte	7                       # Abbrev [7] 0x20f:0xe DW_TAG_variable
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	80
	.long	.Linfo_string16         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	67                      # DW_AT_decl_line
	.long	52                      # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	6                       # Abbrev [6] 0x21e:0x1c DW_TAG_lexical_block
	.quad	.Ltmp57                 # DW_AT_low_pc
	.long	.Ltmp62-.Ltmp57         # DW_AT_high_pc
	.byte	7                       # Abbrev [7] 0x22b:0xe DW_TAG_variable
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	76
	.long	.Linfo_string13         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	73                      # DW_AT_decl_line
	.long	52                      # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	0                       # End Of Children Mark
	.byte	2                       # Abbrev [2] 0x23b:0x5 DW_TAG_pointer_type
	.long	42                      # DW_AT_type
	.byte	0                       # End Of Children Mark
	.section	.debug_ranges,"",@progbits
	.section	.debug_macinfo,"",@progbits
.Lcu_macro_begin0:
	.byte	0                       # End Of Macro List Mark
	.section	.debug_pubnames,"",@progbits
	.long	.LpubNames_end0-.LpubNames_begin0 # Length of Public Names Info
.LpubNames_begin0:
	.short	2                       # DWARF Version
	.long	.Lcu_begin0             # Offset of Compilation Unit Info
	.long	577                     # Compilation Unit Length
	.long	229                     # DIE offset
	.asciz	"printMatrix"           # External Name
	.long	59                      # DIE offset
	.asciz	"takeInput"             # External Name
	.long	349                     # DIE offset
	.asciz	"main"                  # External Name
	.long	109                     # DIE offset
	.asciz	"fill"                  # External Name
	.long	0                       # End Mark
.LpubNames_end0:
	.section	.debug_pubtypes,"",@progbits
	.long	.LpubTypes_end0-.LpubTypes_begin0 # Length of Public Types Info
.LpubTypes_begin0:
	.short	2                       # DWARF Version
	.long	.Lcu_begin0             # Offset of Compilation Unit Info
	.long	577                     # Compilation Unit Length
	.long	52                      # DIE offset
	.asciz	"int"                   # External Name
	.long	0                       # End Mark
.LpubTypes_end0:

	.ident	"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:
