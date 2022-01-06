	.text
	.file	"spiral_matrix.c"
	.globl	takeInput               # -- Begin function takeInput
	.p2align	4, 0x90
	.type	takeInput,@function
takeInput:                              # @takeInput
.Lfunc_begin0:
	.file	1 "spiral_matrix.c"
	.loc	1 4 0                   # spiral_matrix.c:4:0
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
	.loc	1 5 1 prologue_end      # spiral_matrix.c:5:1
	movq	%rax, %rdi
	movb	$0, %al
	callq	printf
	movabsq	$.L.str.1, %rdi
	.loc	1 6 13                  # spiral_matrix.c:6:13
	movq	-8(%rbp), %rsi
	.loc	1 6 1 is_stmt 0         # spiral_matrix.c:6:1
	movl	%eax, -20(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	__isoc99_scanf
	movabsq	$.L.str.2, %rdi
	.loc	1 7 1 is_stmt 1         # spiral_matrix.c:7:1
	movl	%eax, -24(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	printf
	movabsq	$.L.str.1, %rdi
	.loc	1 8 13                  # spiral_matrix.c:8:13
	movq	-16(%rbp), %rsi
	.loc	1 8 1 is_stmt 0         # spiral_matrix.c:8:1
	movl	%eax, -28(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	__isoc99_scanf
	.loc	1 9 1 is_stmt 1         # spiral_matrix.c:9:1
	movl	%eax, -32(%rbp)         # 4-byte Spill
	addq	$32, %rsp
	popq	%rbp
	retq
.Ltmp1:
.Lfunc_end0:
	.size	takeInput, .Lfunc_end0-takeInput
	.cfi_endproc
                                        # -- End function
	.globl	fillRight               # -- Begin function fillRight
	.p2align	4, 0x90
	.type	fillRight,@function
fillRight:                              # @fillRight
.Lfunc_begin1:
	.loc	1 10 0                  # spiral_matrix.c:10:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movq	%r9, -40(%rbp)
.LBB1_1:                                # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
.Ltmp2:
	.loc	1 11 11 prologue_end    # spiral_matrix.c:11:11
	movq	-32(%rbp), %rdx
	.loc	1 11 10 is_stmt 0       # spiral_matrix.c:11:10
	movl	(%rdx), %eax
	.loc	1 11 12                 # spiral_matrix.c:11:12
	cmpl	-8(%rbp), %eax
	.loc	1 11 15                 # spiral_matrix.c:11:15
	movb	%cl, -41(%rbp)          # 1-byte Spill
	jge	.LBB1_3
# %bb.2:                                #   in Loop: Header=BB1_1 Depth=1
	.loc	1 11 20                 # spiral_matrix.c:11:20
	movq	-16(%rbp), %rax
	.loc	1 11 19                 # spiral_matrix.c:11:19
	movq	(%rax), %rax
	.loc	1 11 29                 # spiral_matrix.c:11:29
	movq	-24(%rbp), %rcx
	.loc	1 11 18                 # spiral_matrix.c:11:18
	movslq	(%rcx), %rcx
	movq	(%rax,%rcx,8), %rax
	.loc	1 11 33                 # spiral_matrix.c:11:33
	movq	-32(%rbp), %rcx
	.loc	1 11 18                 # spiral_matrix.c:11:18
	movslq	(%rcx), %rcx
	.loc	1 11 35                 # spiral_matrix.c:11:35
	cmpl	$-1, (%rax,%rcx,4)
	sete	%dl
	movb	%dl, -41(%rbp)          # 1-byte Spill
.Ltmp3:
.LBB1_3:                                #   in Loop: Header=BB1_1 Depth=1
	.loc	1 0 35                  # spiral_matrix.c:0:35
	movb	-41(%rbp), %al          # 1-byte Reload
	.loc	1 11 5                  # spiral_matrix.c:11:5
	testb	$1, %al
	jne	.LBB1_4
	jmp	.LBB1_6
.LBB1_4:                                #   in Loop: Header=BB1_1 Depth=1
.Ltmp4:
	.loc	1 12 29 is_stmt 1       # spiral_matrix.c:12:29
	movq	-40(%rbp), %rax
	.loc	1 12 31 is_stmt 0       # spiral_matrix.c:12:31
	movl	(%rax), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, (%rax)
	.loc	1 12 11                 # spiral_matrix.c:12:11
	movq	-16(%rbp), %rax
	.loc	1 12 10                 # spiral_matrix.c:12:10
	movq	(%rax), %rax
	.loc	1 12 20                 # spiral_matrix.c:12:20
	movq	-24(%rbp), %rsi
	.loc	1 12 9                  # spiral_matrix.c:12:9
	movslq	(%rsi), %rsi
	movq	(%rax,%rsi,8), %rax
	.loc	1 12 24                 # spiral_matrix.c:12:24
	movq	-32(%rbp), %rsi
	.loc	1 12 9                  # spiral_matrix.c:12:9
	movslq	(%rsi), %rsi
	.loc	1 12 26                 # spiral_matrix.c:12:26
	movl	%ecx, (%rax,%rsi,4)
.Ltmp5:
# %bb.5:                                #   in Loop: Header=BB1_1 Depth=1
	.loc	1 11 42 is_stmt 1       # spiral_matrix.c:11:42
	movq	-32(%rbp), %rax
	.loc	1 11 44 is_stmt 0       # spiral_matrix.c:11:44
	movl	(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, (%rax)
	.loc	1 11 5                  # spiral_matrix.c:11:5
	jmp	.LBB1_1
.Ltmp6:
.LBB1_6:
	.loc	1 14 7 is_stmt 1        # spiral_matrix.c:14:7
	movq	-24(%rbp), %rax
	.loc	1 14 9 is_stmt 0        # spiral_matrix.c:14:9
	movl	(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, (%rax)
	.loc	1 15 7 is_stmt 1        # spiral_matrix.c:15:7
	movq	-32(%rbp), %rax
	.loc	1 15 9 is_stmt 0        # spiral_matrix.c:15:9
	movl	(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, (%rax)
	.loc	1 16 1 is_stmt 1        # spiral_matrix.c:16:1
	popq	%rbp
	retq
.Ltmp7:
.Lfunc_end1:
	.size	fillRight, .Lfunc_end1-fillRight
	.cfi_endproc
                                        # -- End function
	.globl	fillDown                # -- Begin function fillDown
	.p2align	4, 0x90
	.type	fillDown,@function
fillDown:                               # @fillDown
.Lfunc_begin2:
	.loc	1 17 0                  # spiral_matrix.c:17:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movq	%r9, -40(%rbp)
.LBB2_1:                                # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
.Ltmp8:
	.loc	1 18 11 prologue_end    # spiral_matrix.c:18:11
	movq	-24(%rbp), %rdx
	.loc	1 18 10 is_stmt 0       # spiral_matrix.c:18:10
	movl	(%rdx), %eax
	.loc	1 18 12                 # spiral_matrix.c:18:12
	cmpl	-4(%rbp), %eax
	.loc	1 18 15                 # spiral_matrix.c:18:15
	movb	%cl, -41(%rbp)          # 1-byte Spill
	jge	.LBB2_3
# %bb.2:                                #   in Loop: Header=BB2_1 Depth=1
	.loc	1 18 20                 # spiral_matrix.c:18:20
	movq	-16(%rbp), %rax
	.loc	1 18 19                 # spiral_matrix.c:18:19
	movq	(%rax), %rax
	.loc	1 18 29                 # spiral_matrix.c:18:29
	movq	-24(%rbp), %rcx
	.loc	1 18 18                 # spiral_matrix.c:18:18
	movslq	(%rcx), %rcx
	movq	(%rax,%rcx,8), %rax
	.loc	1 18 33                 # spiral_matrix.c:18:33
	movq	-32(%rbp), %rcx
	.loc	1 18 18                 # spiral_matrix.c:18:18
	movslq	(%rcx), %rcx
	.loc	1 18 35                 # spiral_matrix.c:18:35
	cmpl	$-1, (%rax,%rcx,4)
	sete	%dl
	movb	%dl, -41(%rbp)          # 1-byte Spill
.Ltmp9:
.LBB2_3:                                #   in Loop: Header=BB2_1 Depth=1
	.loc	1 0 35                  # spiral_matrix.c:0:35
	movb	-41(%rbp), %al          # 1-byte Reload
	.loc	1 18 5                  # spiral_matrix.c:18:5
	testb	$1, %al
	jne	.LBB2_4
	jmp	.LBB2_6
.LBB2_4:                                #   in Loop: Header=BB2_1 Depth=1
.Ltmp10:
	.loc	1 19 29 is_stmt 1       # spiral_matrix.c:19:29
	movq	-40(%rbp), %rax
	.loc	1 19 31 is_stmt 0       # spiral_matrix.c:19:31
	movl	(%rax), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, (%rax)
	.loc	1 19 11                 # spiral_matrix.c:19:11
	movq	-16(%rbp), %rax
	.loc	1 19 10                 # spiral_matrix.c:19:10
	movq	(%rax), %rax
	.loc	1 19 20                 # spiral_matrix.c:19:20
	movq	-24(%rbp), %rsi
	.loc	1 19 9                  # spiral_matrix.c:19:9
	movslq	(%rsi), %rsi
	movq	(%rax,%rsi,8), %rax
	.loc	1 19 24                 # spiral_matrix.c:19:24
	movq	-32(%rbp), %rsi
	.loc	1 19 9                  # spiral_matrix.c:19:9
	movslq	(%rsi), %rsi
	.loc	1 19 26                 # spiral_matrix.c:19:26
	movl	%ecx, (%rax,%rsi,4)
.Ltmp11:
# %bb.5:                                #   in Loop: Header=BB2_1 Depth=1
	.loc	1 18 42 is_stmt 1       # spiral_matrix.c:18:42
	movq	-24(%rbp), %rax
	.loc	1 18 44 is_stmt 0       # spiral_matrix.c:18:44
	movl	(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, (%rax)
	.loc	1 18 5                  # spiral_matrix.c:18:5
	jmp	.LBB2_1
.Ltmp12:
.LBB2_6:
	.loc	1 21 7 is_stmt 1        # spiral_matrix.c:21:7
	movq	-32(%rbp), %rax
	.loc	1 21 9 is_stmt 0        # spiral_matrix.c:21:9
	movl	(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, (%rax)
	.loc	1 22 7 is_stmt 1        # spiral_matrix.c:22:7
	movq	-24(%rbp), %rax
	.loc	1 22 9 is_stmt 0        # spiral_matrix.c:22:9
	movl	(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, (%rax)
	.loc	1 23 1 is_stmt 1        # spiral_matrix.c:23:1
	popq	%rbp
	retq
.Ltmp13:
.Lfunc_end2:
	.size	fillDown, .Lfunc_end2-fillDown
	.cfi_endproc
                                        # -- End function
	.globl	fillLeft                # -- Begin function fillLeft
	.p2align	4, 0x90
	.type	fillLeft,@function
fillLeft:                               # @fillLeft
.Lfunc_begin3:
	.loc	1 24 0                  # spiral_matrix.c:24:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movq	%r9, -40(%rbp)
.LBB3_1:                                # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
.Ltmp14:
	.loc	1 25 11 prologue_end    # spiral_matrix.c:25:11
	movq	-32(%rbp), %rdx
	.loc	1 25 12 is_stmt 0       # spiral_matrix.c:25:12
	cmpl	$0, (%rdx)
	.loc	1 25 16                 # spiral_matrix.c:25:16
	movb	%cl, -41(%rbp)          # 1-byte Spill
	jl	.LBB3_3
# %bb.2:                                #   in Loop: Header=BB3_1 Depth=1
	.loc	1 25 21                 # spiral_matrix.c:25:21
	movq	-16(%rbp), %rax
	.loc	1 25 20                 # spiral_matrix.c:25:20
	movq	(%rax), %rax
	.loc	1 25 30                 # spiral_matrix.c:25:30
	movq	-24(%rbp), %rcx
	.loc	1 25 19                 # spiral_matrix.c:25:19
	movslq	(%rcx), %rcx
	movq	(%rax,%rcx,8), %rax
	.loc	1 25 34                 # spiral_matrix.c:25:34
	movq	-32(%rbp), %rcx
	.loc	1 25 19                 # spiral_matrix.c:25:19
	movslq	(%rcx), %rcx
	.loc	1 25 36                 # spiral_matrix.c:25:36
	cmpl	$-1, (%rax,%rcx,4)
	sete	%dl
	movb	%dl, -41(%rbp)          # 1-byte Spill
.Ltmp15:
.LBB3_3:                                #   in Loop: Header=BB3_1 Depth=1
	.loc	1 0 36                  # spiral_matrix.c:0:36
	movb	-41(%rbp), %al          # 1-byte Reload
	.loc	1 25 5                  # spiral_matrix.c:25:5
	testb	$1, %al
	jne	.LBB3_4
	jmp	.LBB3_6
.LBB3_4:                                #   in Loop: Header=BB3_1 Depth=1
.Ltmp16:
	.loc	1 26 29 is_stmt 1       # spiral_matrix.c:26:29
	movq	-40(%rbp), %rax
	.loc	1 26 31 is_stmt 0       # spiral_matrix.c:26:31
	movl	(%rax), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, (%rax)
	.loc	1 26 11                 # spiral_matrix.c:26:11
	movq	-16(%rbp), %rax
	.loc	1 26 10                 # spiral_matrix.c:26:10
	movq	(%rax), %rax
	.loc	1 26 20                 # spiral_matrix.c:26:20
	movq	-24(%rbp), %rsi
	.loc	1 26 9                  # spiral_matrix.c:26:9
	movslq	(%rsi), %rsi
	movq	(%rax,%rsi,8), %rax
	.loc	1 26 24                 # spiral_matrix.c:26:24
	movq	-32(%rbp), %rsi
	.loc	1 26 9                  # spiral_matrix.c:26:9
	movslq	(%rsi), %rsi
	.loc	1 26 26                 # spiral_matrix.c:26:26
	movl	%ecx, (%rax,%rsi,4)
.Ltmp17:
# %bb.5:                                #   in Loop: Header=BB3_1 Depth=1
	.loc	1 25 43 is_stmt 1       # spiral_matrix.c:25:43
	movq	-32(%rbp), %rax
	.loc	1 25 45 is_stmt 0       # spiral_matrix.c:25:45
	movl	(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, (%rax)
	.loc	1 25 5                  # spiral_matrix.c:25:5
	jmp	.LBB3_1
.Ltmp18:
.LBB3_6:
	.loc	1 28 7 is_stmt 1        # spiral_matrix.c:28:7
	movq	-24(%rbp), %rax
	.loc	1 28 9 is_stmt 0        # spiral_matrix.c:28:9
	movl	(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, (%rax)
	.loc	1 29 7 is_stmt 1        # spiral_matrix.c:29:7
	movq	-32(%rbp), %rax
	.loc	1 29 9 is_stmt 0        # spiral_matrix.c:29:9
	movl	(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, (%rax)
	.loc	1 30 1 is_stmt 1        # spiral_matrix.c:30:1
	popq	%rbp
	retq
.Ltmp19:
.Lfunc_end3:
	.size	fillLeft, .Lfunc_end3-fillLeft
	.cfi_endproc
                                        # -- End function
	.globl	fillUp                  # -- Begin function fillUp
	.p2align	4, 0x90
	.type	fillUp,@function
fillUp:                                 # @fillUp
.Lfunc_begin4:
	.loc	1 31 0                  # spiral_matrix.c:31:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movq	%r9, -40(%rbp)
.LBB4_1:                                # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
.Ltmp20:
	.loc	1 32 11 prologue_end    # spiral_matrix.c:32:11
	movq	-24(%rbp), %rdx
	.loc	1 32 12 is_stmt 0       # spiral_matrix.c:32:12
	cmpl	$0, (%rdx)
	.loc	1 32 16                 # spiral_matrix.c:32:16
	movb	%cl, -41(%rbp)          # 1-byte Spill
	jl	.LBB4_3
# %bb.2:                                #   in Loop: Header=BB4_1 Depth=1
	.loc	1 32 21                 # spiral_matrix.c:32:21
	movq	-16(%rbp), %rax
	.loc	1 32 20                 # spiral_matrix.c:32:20
	movq	(%rax), %rax
	.loc	1 32 30                 # spiral_matrix.c:32:30
	movq	-24(%rbp), %rcx
	.loc	1 32 19                 # spiral_matrix.c:32:19
	movslq	(%rcx), %rcx
	movq	(%rax,%rcx,8), %rax
	.loc	1 32 34                 # spiral_matrix.c:32:34
	movq	-32(%rbp), %rcx
	.loc	1 32 19                 # spiral_matrix.c:32:19
	movslq	(%rcx), %rcx
	.loc	1 32 36                 # spiral_matrix.c:32:36
	cmpl	$-1, (%rax,%rcx,4)
	sete	%dl
	movb	%dl, -41(%rbp)          # 1-byte Spill
.Ltmp21:
.LBB4_3:                                #   in Loop: Header=BB4_1 Depth=1
	.loc	1 0 36                  # spiral_matrix.c:0:36
	movb	-41(%rbp), %al          # 1-byte Reload
	.loc	1 32 5                  # spiral_matrix.c:32:5
	testb	$1, %al
	jne	.LBB4_4
	jmp	.LBB4_6
.LBB4_4:                                #   in Loop: Header=BB4_1 Depth=1
.Ltmp22:
	.loc	1 33 29 is_stmt 1       # spiral_matrix.c:33:29
	movq	-40(%rbp), %rax
	.loc	1 33 31 is_stmt 0       # spiral_matrix.c:33:31
	movl	(%rax), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, (%rax)
	.loc	1 33 11                 # spiral_matrix.c:33:11
	movq	-16(%rbp), %rax
	.loc	1 33 10                 # spiral_matrix.c:33:10
	movq	(%rax), %rax
	.loc	1 33 20                 # spiral_matrix.c:33:20
	movq	-24(%rbp), %rsi
	.loc	1 33 9                  # spiral_matrix.c:33:9
	movslq	(%rsi), %rsi
	movq	(%rax,%rsi,8), %rax
	.loc	1 33 24                 # spiral_matrix.c:33:24
	movq	-32(%rbp), %rsi
	.loc	1 33 9                  # spiral_matrix.c:33:9
	movslq	(%rsi), %rsi
	.loc	1 33 26                 # spiral_matrix.c:33:26
	movl	%ecx, (%rax,%rsi,4)
.Ltmp23:
# %bb.5:                                #   in Loop: Header=BB4_1 Depth=1
	.loc	1 32 43 is_stmt 1       # spiral_matrix.c:32:43
	movq	-24(%rbp), %rax
	.loc	1 32 45 is_stmt 0       # spiral_matrix.c:32:45
	movl	(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, (%rax)
	.loc	1 32 5                  # spiral_matrix.c:32:5
	jmp	.LBB4_1
.Ltmp24:
.LBB4_6:
	.loc	1 35 7 is_stmt 1        # spiral_matrix.c:35:7
	movq	-32(%rbp), %rax
	.loc	1 35 9 is_stmt 0        # spiral_matrix.c:35:9
	movl	(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, (%rax)
	.loc	1 36 7 is_stmt 1        # spiral_matrix.c:36:7
	movq	-24(%rbp), %rax
	.loc	1 36 9 is_stmt 0        # spiral_matrix.c:36:9
	movl	(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, (%rax)
	.loc	1 37 1 is_stmt 1        # spiral_matrix.c:37:1
	popq	%rbp
	retq
.Ltmp25:
.Lfunc_end4:
	.size	fillUp, .Lfunc_end4-fillUp
	.cfi_endproc
                                        # -- End function
	.globl	printMatrix             # -- Begin function printMatrix
	.p2align	4, 0x90
	.type	printMatrix,@function
printMatrix:                            # @printMatrix
.Lfunc_begin5:
	.loc	1 38 0                  # spiral_matrix.c:38:0
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
	.loc	1 40 13 prologue_end    # spiral_matrix.c:40:13
	movl	$0, -20(%rbp)
.LBB5_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_3 Depth 2
.Ltmp27:
	.loc	1 40 17 is_stmt 0       # spiral_matrix.c:40:17
	movl	-20(%rbp), %eax
	.loc	1 40 18                 # spiral_matrix.c:40:18
	cmpl	-12(%rbp), %eax
.Ltmp28:
	.loc	1 40 5                  # spiral_matrix.c:40:5
	jge	.LBB5_8
# %bb.2:                                #   in Loop: Header=BB5_1 Depth=1
.Ltmp29:
	.loc	1 41 17 is_stmt 1       # spiral_matrix.c:41:17
	movl	$0, -24(%rbp)
.LBB5_3:                                #   Parent Loop BB5_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
.Ltmp30:
	.loc	1 41 21 is_stmt 0       # spiral_matrix.c:41:21
	movl	-24(%rbp), %eax
	.loc	1 41 22                 # spiral_matrix.c:41:22
	cmpl	-16(%rbp), %eax
.Ltmp31:
	.loc	1 41 9                  # spiral_matrix.c:41:9
	jge	.LBB5_6
# %bb.4:                                #   in Loop: Header=BB5_3 Depth=2
	.loc	1 0 9                   # spiral_matrix.c:0:9
	movabsq	$.L.str.3, %rdi
.Ltmp32:
	.loc	1 42 29 is_stmt 1       # spiral_matrix.c:42:29
	movq	-8(%rbp), %rax
	.loc	1 42 28 is_stmt 0       # spiral_matrix.c:42:28
	movq	(%rax), %rax
	.loc	1 42 27                 # spiral_matrix.c:42:27
	movslq	-20(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-24(%rbp), %rcx
	movl	(%rax,%rcx,4), %esi
	.loc	1 42 13                 # spiral_matrix.c:42:13
	movb	$0, %al
	callq	printf
	movl	%eax, -28(%rbp)         # 4-byte Spill
.Ltmp33:
# %bb.5:                                #   in Loop: Header=BB5_3 Depth=2
	.loc	1 41 26 is_stmt 1       # spiral_matrix.c:41:26
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	.loc	1 41 9 is_stmt 0        # spiral_matrix.c:41:9
	jmp	.LBB5_3
.Ltmp34:
.LBB5_6:                                #   in Loop: Header=BB5_1 Depth=1
	.loc	1 0 9                   # spiral_matrix.c:0:9
	movabsq	$.L.str.4, %rdi
	.loc	1 44 9 is_stmt 1        # spiral_matrix.c:44:9
	movb	$0, %al
	callq	printf
	movl	%eax, -32(%rbp)         # 4-byte Spill
.Ltmp35:
# %bb.7:                                #   in Loop: Header=BB5_1 Depth=1
	.loc	1 40 22                 # spiral_matrix.c:40:22
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	.loc	1 40 5 is_stmt 0        # spiral_matrix.c:40:5
	jmp	.LBB5_1
.Ltmp36:
.LBB5_8:
	.loc	1 46 1 is_stmt 1        # spiral_matrix.c:46:1
	addq	$32, %rsp
	popq	%rbp
	retq
.Ltmp37:
.Lfunc_end5:
	.size	printMatrix, .Lfunc_end5-printMatrix
	.cfi_endproc
                                        # -- End function
	.globl	main                    # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
.Lfunc_begin6:
	.loc	1 47 0                  # spiral_matrix.c:47:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	leaq	-8(%rbp), %rdi
	leaq	-12(%rbp), %rsi
	movl	$0, -4(%rbp)
.Ltmp38:
	#DEBUG_VALUE: main:n <- [%rdi+0]
	#DEBUG_VALUE: main:m <- [%rsi+0]
	.loc	1 49 1 prologue_end     # spiral_matrix.c:49:1
	callq	takeInput
.Ltmp39:
	.loc	1 51 29                 # spiral_matrix.c:51:29
	movslq	-8(%rbp), %rsi
	.loc	1 51 30 is_stmt 0       # spiral_matrix.c:51:30
	shlq	$3, %rsi
	.loc	1 51 22                 # spiral_matrix.c:51:22
	movq	%rsi, %rdi
	callq	malloc
	.loc	1 51 7                  # spiral_matrix.c:51:7
	movq	%rax, -24(%rbp)
.Ltmp40:
	.loc	1 52 9 is_stmt 1        # spiral_matrix.c:52:9
	movl	$0, -28(%rbp)
.LBB6_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_3 Depth 2
.Ltmp41:
	.loc	1 52 13 is_stmt 0       # spiral_matrix.c:52:13
	movl	-28(%rbp), %eax
	.loc	1 52 14                 # spiral_matrix.c:52:14
	cmpl	-8(%rbp), %eax
.Ltmp42:
	.loc	1 52 1                  # spiral_matrix.c:52:1
	jge	.LBB6_8
# %bb.2:                                #   in Loop: Header=BB6_1 Depth=1
.Ltmp43:
	.loc	1 53 29 is_stmt 1       # spiral_matrix.c:53:29
	movslq	-12(%rbp), %rax
	.loc	1 53 30 is_stmt 0       # spiral_matrix.c:53:30
	shlq	$2, %rax
	.loc	1 53 22                 # spiral_matrix.c:53:22
	movq	%rax, %rdi
	callq	malloc
	.loc	1 53 5                  # spiral_matrix.c:53:5
	movq	-24(%rbp), %rdi
	movslq	-28(%rbp), %rcx
	.loc	1 53 14                 # spiral_matrix.c:53:14
	movq	%rax, (%rdi,%rcx,8)
.Ltmp44:
	.loc	1 54 13 is_stmt 1       # spiral_matrix.c:54:13
	movl	$0, -32(%rbp)
.LBB6_3:                                #   Parent Loop BB6_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
.Ltmp45:
	.loc	1 54 17 is_stmt 0       # spiral_matrix.c:54:17
	movl	-32(%rbp), %eax
	.loc	1 54 18                 # spiral_matrix.c:54:18
	cmpl	-12(%rbp), %eax
.Ltmp46:
	.loc	1 54 5                  # spiral_matrix.c:54:5
	jge	.LBB6_6
# %bb.4:                                #   in Loop: Header=BB6_3 Depth=2
.Ltmp47:
	.loc	1 55 9 is_stmt 1        # spiral_matrix.c:55:9
	movq	-24(%rbp), %rax
	movslq	-28(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-32(%rbp), %rcx
	.loc	1 55 21 is_stmt 0       # spiral_matrix.c:55:21
	movl	$-1, (%rax,%rcx,4)
.Ltmp48:
# %bb.5:                                #   in Loop: Header=BB6_3 Depth=2
	.loc	1 54 22 is_stmt 1       # spiral_matrix.c:54:22
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	.loc	1 54 5 is_stmt 0        # spiral_matrix.c:54:5
	jmp	.LBB6_3
.Ltmp49:
.LBB6_6:                                #   in Loop: Header=BB6_1 Depth=1
	.loc	1 57 1 is_stmt 1        # spiral_matrix.c:57:1
	jmp	.LBB6_7
.Ltmp50:
.LBB6_7:                                #   in Loop: Header=BB6_1 Depth=1
	.loc	1 52 18                 # spiral_matrix.c:52:18
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	.loc	1 52 1 is_stmt 0        # spiral_matrix.c:52:1
	jmp	.LBB6_1
.Ltmp51:
.LBB6_8:
	.loc	1 58 5 is_stmt 1        # spiral_matrix.c:58:5
	movl	$1, -36(%rbp)
	.loc	1 60 5                  # spiral_matrix.c:60:5
	movl	$0, -40(%rbp)
	.loc	1 60 9 is_stmt 0        # spiral_matrix.c:60:9
	movl	$0, -44(%rbp)
.LBB6_9:                                # =>This Inner Loop Header: Depth=1
	.loc	1 62 7 is_stmt 1        # spiral_matrix.c:62:7
	movl	-36(%rbp), %eax
	.loc	1 62 10 is_stmt 0       # spiral_matrix.c:62:10
	movl	-8(%rbp), %ecx
	.loc	1 62 11                 # spiral_matrix.c:62:11
	imull	-12(%rbp), %ecx
	.loc	1 62 8                  # spiral_matrix.c:62:8
	cmpl	%ecx, %eax
	.loc	1 62 1                  # spiral_matrix.c:62:1
	jg	.LBB6_11
# %bb.10:                               #   in Loop: Header=BB6_9 Depth=1
	.loc	1 0 1                   # spiral_matrix.c:0:1
	leaq	-24(%rbp), %rdx
	leaq	-40(%rbp), %rcx
	leaq	-44(%rbp), %r8
	leaq	-36(%rbp), %r9
.Ltmp52:
	.loc	1 63 15 is_stmt 1       # spiral_matrix.c:63:15
	movl	-8(%rbp), %edi
	.loc	1 63 17 is_stmt 0       # spiral_matrix.c:63:17
	movl	-12(%rbp), %esi
	.loc	1 63 5                  # spiral_matrix.c:63:5
	callq	fillRight
	leaq	-24(%rbp), %rdx
	leaq	-40(%rbp), %rcx
	leaq	-44(%rbp), %r8
	leaq	-36(%rbp), %r9
	.loc	1 64 14 is_stmt 1       # spiral_matrix.c:64:14
	movl	-8(%rbp), %edi
	.loc	1 64 16 is_stmt 0       # spiral_matrix.c:64:16
	movl	-12(%rbp), %esi
	.loc	1 64 5                  # spiral_matrix.c:64:5
	callq	fillDown
	leaq	-24(%rbp), %rdx
	leaq	-40(%rbp), %rcx
	leaq	-44(%rbp), %r8
	leaq	-36(%rbp), %r9
	.loc	1 65 14 is_stmt 1       # spiral_matrix.c:65:14
	movl	-8(%rbp), %edi
	.loc	1 65 16 is_stmt 0       # spiral_matrix.c:65:16
	movl	-12(%rbp), %esi
	.loc	1 65 5                  # spiral_matrix.c:65:5
	callq	fillLeft
	leaq	-24(%rbp), %rdx
	leaq	-40(%rbp), %rcx
	leaq	-44(%rbp), %r8
	leaq	-36(%rbp), %r9
	.loc	1 66 12 is_stmt 1       # spiral_matrix.c:66:12
	movl	-8(%rbp), %edi
	.loc	1 66 14 is_stmt 0       # spiral_matrix.c:66:14
	movl	-12(%rbp), %esi
	.loc	1 66 5                  # spiral_matrix.c:66:5
	callq	fillUp
.Ltmp53:
	.loc	1 62 1 is_stmt 1        # spiral_matrix.c:62:1
	jmp	.LBB6_9
.LBB6_11:
	.loc	1 0 1 is_stmt 0         # spiral_matrix.c:0:1
	leaq	-24(%rbp), %rdi
	.loc	1 70 21 is_stmt 1       # spiral_matrix.c:70:21
	movl	-8(%rbp), %esi
	.loc	1 70 23 is_stmt 0       # spiral_matrix.c:70:23
	movl	-12(%rbp), %edx
	.loc	1 70 1                  # spiral_matrix.c:70:1
	callq	printMatrix
.Ltmp54:
	.loc	1 72 9 is_stmt 1        # spiral_matrix.c:72:9
	movl	$0, -48(%rbp)
.LBB6_12:                               # =>This Inner Loop Header: Depth=1
.Ltmp55:
	.loc	1 72 13 is_stmt 0       # spiral_matrix.c:72:13
	movl	-48(%rbp), %eax
	.loc	1 72 14                 # spiral_matrix.c:72:14
	cmpl	-8(%rbp), %eax
.Ltmp56:
	.loc	1 72 1                  # spiral_matrix.c:72:1
	jge	.LBB6_15
# %bb.13:                               #   in Loop: Header=BB6_12 Depth=1
.Ltmp57:
	.loc	1 73 10 is_stmt 1       # spiral_matrix.c:73:10
	movq	-24(%rbp), %rax
	movslq	-48(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	.loc	1 73 5 is_stmt 0        # spiral_matrix.c:73:5
	movq	%rax, %rdi
	callq	free
.Ltmp58:
# %bb.14:                               #   in Loop: Header=BB6_12 Depth=1
	.loc	1 72 18 is_stmt 1       # spiral_matrix.c:72:18
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	.loc	1 72 1 is_stmt 0        # spiral_matrix.c:72:1
	jmp	.LBB6_12
.Ltmp59:
.LBB6_15:
	.loc	1 75 6 is_stmt 1        # spiral_matrix.c:75:6
	movq	-24(%rbp), %rax
	.loc	1 75 1 is_stmt 0        # spiral_matrix.c:75:1
	movq	%rax, %rdi
	callq	free
	xorl	%eax, %eax
	.loc	1 76 1 is_stmt 1        # spiral_matrix.c:76:1
	addq	$48, %rsp
	popq	%rbp
	retq
.Ltmp60:
.Lfunc_end6:
	.size	main, .Lfunc_end6-main
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
	.asciz	"spiral_matrix.c"       # string offset=54
.Linfo_string2:
	.asciz	"/media/ruchir/iTeraTorr/BTP/Practice/Dt_7thDec/Code2/1999/memcheck" # string offset=70
.Linfo_string3:
	.asciz	"int"                   # string offset=137
.Linfo_string4:
	.asciz	"takeInput"             # string offset=141
.Linfo_string5:
	.asciz	"fillRight"             # string offset=151
.Linfo_string6:
	.asciz	"fillDown"              # string offset=161
.Linfo_string7:
	.asciz	"fillLeft"              # string offset=170
.Linfo_string8:
	.asciz	"fillUp"                # string offset=179
.Linfo_string9:
	.asciz	"printMatrix"           # string offset=186
.Linfo_string10:
	.asciz	"main"                  # string offset=198
.Linfo_string11:
	.asciz	"n"                     # string offset=203
.Linfo_string12:
	.asciz	"m"                     # string offset=205
.Linfo_string13:
	.asciz	"matrix"                # string offset=207
.Linfo_string14:
	.asciz	"r"                     # string offset=214
.Linfo_string15:
	.asciz	"c"                     # string offset=216
.Linfo_string16:
	.asciz	"i"                     # string offset=218
.Linfo_string17:
	.asciz	"j"                     # string offset=220
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
	.long	849                     # Length of Unit
	.short	4                       # DWARF version number
	.long	.debug_abbrev           # Offset Into Abbrev. Section
	.byte	8                       # Address Size (in bytes)
	.byte	1                       # Abbrev [1] 0xb:0x34a DW_TAG_compile_unit
	.long	.Linfo_string0          # DW_AT_producer
	.short	12                      # DW_AT_language
	.long	.Linfo_string1          # DW_AT_name
	.long	.Lline_table_start0     # DW_AT_stmt_list
	.long	.Linfo_string2          # DW_AT_comp_dir
                                        # DW_AT_GNU_pubnames
	.quad	.Lfunc_begin0           # DW_AT_low_pc
	.long	.Lfunc_end6-.Lfunc_begin0 # DW_AT_high_pc
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
	.long	.Linfo_string11         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	4                       # DW_AT_decl_line
	.long	47                      # DW_AT_type
	.byte	5                       # Abbrev [5] 0x5e:0xe DW_TAG_formal_parameter
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string12         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	4                       # DW_AT_decl_line
	.long	47                      # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	4                       # Abbrev [4] 0x6d:0x6a DW_TAG_subprogram
	.quad	.Lfunc_begin1           # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1 # DW_AT_high_pc
	.byte	1                       # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string5          # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	10                      # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	5                       # Abbrev [5] 0x82:0xe DW_TAG_formal_parameter
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	124
	.long	.Linfo_string11         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	10                      # DW_AT_decl_line
	.long	52                      # DW_AT_type
	.byte	5                       # Abbrev [5] 0x90:0xe DW_TAG_formal_parameter
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string12         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	10                      # DW_AT_decl_line
	.long	52                      # DW_AT_type
	.byte	5                       # Abbrev [5] 0x9e:0xe DW_TAG_formal_parameter
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string13         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	10                      # DW_AT_decl_line
	.long	847                     # DW_AT_type
	.byte	5                       # Abbrev [5] 0xac:0xe DW_TAG_formal_parameter
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string14         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	10                      # DW_AT_decl_line
	.long	47                      # DW_AT_type
	.byte	5                       # Abbrev [5] 0xba:0xe DW_TAG_formal_parameter
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	96
	.long	.Linfo_string15         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	10                      # DW_AT_decl_line
	.long	47                      # DW_AT_type
	.byte	5                       # Abbrev [5] 0xc8:0xe DW_TAG_formal_parameter
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	88
	.long	.Linfo_string16         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	10                      # DW_AT_decl_line
	.long	47                      # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	4                       # Abbrev [4] 0xd7:0x6a DW_TAG_subprogram
	.quad	.Lfunc_begin2           # DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2 # DW_AT_high_pc
	.byte	1                       # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string6          # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	17                      # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	5                       # Abbrev [5] 0xec:0xe DW_TAG_formal_parameter
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	124
	.long	.Linfo_string11         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	17                      # DW_AT_decl_line
	.long	52                      # DW_AT_type
	.byte	5                       # Abbrev [5] 0xfa:0xe DW_TAG_formal_parameter
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string12         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	17                      # DW_AT_decl_line
	.long	52                      # DW_AT_type
	.byte	5                       # Abbrev [5] 0x108:0xe DW_TAG_formal_parameter
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string13         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	17                      # DW_AT_decl_line
	.long	847                     # DW_AT_type
	.byte	5                       # Abbrev [5] 0x116:0xe DW_TAG_formal_parameter
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string14         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	17                      # DW_AT_decl_line
	.long	47                      # DW_AT_type
	.byte	5                       # Abbrev [5] 0x124:0xe DW_TAG_formal_parameter
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	96
	.long	.Linfo_string15         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	17                      # DW_AT_decl_line
	.long	47                      # DW_AT_type
	.byte	5                       # Abbrev [5] 0x132:0xe DW_TAG_formal_parameter
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	88
	.long	.Linfo_string16         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	17                      # DW_AT_decl_line
	.long	47                      # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	4                       # Abbrev [4] 0x141:0x6a DW_TAG_subprogram
	.quad	.Lfunc_begin3           # DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin3 # DW_AT_high_pc
	.byte	1                       # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string7          # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	24                      # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	5                       # Abbrev [5] 0x156:0xe DW_TAG_formal_parameter
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	124
	.long	.Linfo_string11         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	24                      # DW_AT_decl_line
	.long	52                      # DW_AT_type
	.byte	5                       # Abbrev [5] 0x164:0xe DW_TAG_formal_parameter
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string12         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	24                      # DW_AT_decl_line
	.long	52                      # DW_AT_type
	.byte	5                       # Abbrev [5] 0x172:0xe DW_TAG_formal_parameter
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string13         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	24                      # DW_AT_decl_line
	.long	847                     # DW_AT_type
	.byte	5                       # Abbrev [5] 0x180:0xe DW_TAG_formal_parameter
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string14         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	24                      # DW_AT_decl_line
	.long	47                      # DW_AT_type
	.byte	5                       # Abbrev [5] 0x18e:0xe DW_TAG_formal_parameter
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	96
	.long	.Linfo_string15         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	24                      # DW_AT_decl_line
	.long	47                      # DW_AT_type
	.byte	5                       # Abbrev [5] 0x19c:0xe DW_TAG_formal_parameter
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	88
	.long	.Linfo_string16         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	24                      # DW_AT_decl_line
	.long	47                      # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	4                       # Abbrev [4] 0x1ab:0x6a DW_TAG_subprogram
	.quad	.Lfunc_begin4           # DW_AT_low_pc
	.long	.Lfunc_end4-.Lfunc_begin4 # DW_AT_high_pc
	.byte	1                       # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string8          # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	31                      # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	5                       # Abbrev [5] 0x1c0:0xe DW_TAG_formal_parameter
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	124
	.long	.Linfo_string11         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	31                      # DW_AT_decl_line
	.long	52                      # DW_AT_type
	.byte	5                       # Abbrev [5] 0x1ce:0xe DW_TAG_formal_parameter
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string12         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	31                      # DW_AT_decl_line
	.long	52                      # DW_AT_type
	.byte	5                       # Abbrev [5] 0x1dc:0xe DW_TAG_formal_parameter
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string13         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	31                      # DW_AT_decl_line
	.long	847                     # DW_AT_type
	.byte	5                       # Abbrev [5] 0x1ea:0xe DW_TAG_formal_parameter
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string14         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	31                      # DW_AT_decl_line
	.long	47                      # DW_AT_type
	.byte	5                       # Abbrev [5] 0x1f8:0xe DW_TAG_formal_parameter
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	96
	.long	.Linfo_string15         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	31                      # DW_AT_decl_line
	.long	47                      # DW_AT_type
	.byte	5                       # Abbrev [5] 0x206:0xe DW_TAG_formal_parameter
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	88
	.long	.Linfo_string16         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	31                      # DW_AT_decl_line
	.long	47                      # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	4                       # Abbrev [4] 0x215:0x78 DW_TAG_subprogram
	.quad	.Lfunc_begin5           # DW_AT_low_pc
	.long	.Lfunc_end5-.Lfunc_begin5 # DW_AT_high_pc
	.byte	1                       # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string9          # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	38                      # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	5                       # Abbrev [5] 0x22a:0xe DW_TAG_formal_parameter
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string13         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	38                      # DW_AT_decl_line
	.long	847                     # DW_AT_type
	.byte	5                       # Abbrev [5] 0x238:0xe DW_TAG_formal_parameter
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	116
	.long	.Linfo_string11         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	38                      # DW_AT_decl_line
	.long	52                      # DW_AT_type
	.byte	5                       # Abbrev [5] 0x246:0xe DW_TAG_formal_parameter
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string12         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	38                      # DW_AT_decl_line
	.long	52                      # DW_AT_type
	.byte	6                       # Abbrev [6] 0x254:0x38 DW_TAG_lexical_block
	.quad	.Ltmp26                 # DW_AT_low_pc
	.long	.Ltmp36-.Ltmp26         # DW_AT_high_pc
	.byte	7                       # Abbrev [7] 0x261:0xe DW_TAG_variable
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	108
	.long	.Linfo_string16         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	40                      # DW_AT_decl_line
	.long	52                      # DW_AT_type
	.byte	6                       # Abbrev [6] 0x26f:0x1c DW_TAG_lexical_block
	.quad	.Ltmp29                 # DW_AT_low_pc
	.long	.Ltmp34-.Ltmp29         # DW_AT_high_pc
	.byte	7                       # Abbrev [7] 0x27c:0xe DW_TAG_variable
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string17         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	41                      # DW_AT_decl_line
	.long	52                      # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	0                       # End Of Children Mark
	.byte	0                       # End Of Children Mark
	.byte	8                       # Abbrev [8] 0x28d:0xc2 DW_TAG_subprogram
	.quad	.Lfunc_begin6           # DW_AT_low_pc
	.long	.Lfunc_end6-.Lfunc_begin6 # DW_AT_high_pc
	.byte	1                       # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string10         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	47                      # DW_AT_decl_line
	.long	52                      # DW_AT_type
                                        # DW_AT_external
	.byte	7                       # Abbrev [7] 0x2a6:0xe DW_TAG_variable
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string11         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	48                      # DW_AT_decl_line
	.long	52                      # DW_AT_type
	.byte	7                       # Abbrev [7] 0x2b4:0xe DW_TAG_variable
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	116
	.long	.Linfo_string12         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	48                      # DW_AT_decl_line
	.long	52                      # DW_AT_type
	.byte	7                       # Abbrev [7] 0x2c2:0xe DW_TAG_variable
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string13         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	51                      # DW_AT_decl_line
	.long	42                      # DW_AT_type
	.byte	7                       # Abbrev [7] 0x2d0:0xe DW_TAG_variable
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	92
	.long	.Linfo_string16         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	58                      # DW_AT_decl_line
	.long	52                      # DW_AT_type
	.byte	7                       # Abbrev [7] 0x2de:0xe DW_TAG_variable
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	88
	.long	.Linfo_string14         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	60                      # DW_AT_decl_line
	.long	52                      # DW_AT_type
	.byte	7                       # Abbrev [7] 0x2ec:0xe DW_TAG_variable
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	84
	.long	.Linfo_string15         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	60                      # DW_AT_decl_line
	.long	52                      # DW_AT_type
	.byte	6                       # Abbrev [6] 0x2fa:0x38 DW_TAG_lexical_block
	.quad	.Ltmp40                 # DW_AT_low_pc
	.long	.Ltmp51-.Ltmp40         # DW_AT_high_pc
	.byte	7                       # Abbrev [7] 0x307:0xe DW_TAG_variable
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	100
	.long	.Linfo_string16         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	52                      # DW_AT_decl_line
	.long	52                      # DW_AT_type
	.byte	6                       # Abbrev [6] 0x315:0x1c DW_TAG_lexical_block
	.quad	.Ltmp44                 # DW_AT_low_pc
	.long	.Ltmp49-.Ltmp44         # DW_AT_high_pc
	.byte	7                       # Abbrev [7] 0x322:0xe DW_TAG_variable
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	96
	.long	.Linfo_string17         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	54                      # DW_AT_decl_line
	.long	52                      # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	0                       # End Of Children Mark
	.byte	6                       # Abbrev [6] 0x332:0x1c DW_TAG_lexical_block
	.quad	.Ltmp54                 # DW_AT_low_pc
	.long	.Ltmp59-.Ltmp54         # DW_AT_high_pc
	.byte	7                       # Abbrev [7] 0x33f:0xe DW_TAG_variable
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	80
	.long	.Linfo_string16         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	72                      # DW_AT_decl_line
	.long	52                      # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	0                       # End Of Children Mark
	.byte	2                       # Abbrev [2] 0x34f:0x5 DW_TAG_pointer_type
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
	.long	853                     # Compilation Unit Length
	.long	321                     # DIE offset
	.asciz	"fillLeft"              # External Name
	.long	533                     # DIE offset
	.asciz	"printMatrix"           # External Name
	.long	59                      # DIE offset
	.asciz	"takeInput"             # External Name
	.long	109                     # DIE offset
	.asciz	"fillRight"             # External Name
	.long	653                     # DIE offset
	.asciz	"main"                  # External Name
	.long	427                     # DIE offset
	.asciz	"fillUp"                # External Name
	.long	215                     # DIE offset
	.asciz	"fillDown"              # External Name
	.long	0                       # End Mark
.LpubNames_end0:
	.section	.debug_pubtypes,"",@progbits
	.long	.LpubTypes_end0-.LpubTypes_begin0 # Length of Public Types Info
.LpubTypes_begin0:
	.short	2                       # DWARF Version
	.long	.Lcu_begin0             # Offset of Compilation Unit Info
	.long	853                     # Compilation Unit Length
	.long	52                      # DIE offset
	.asciz	"int"                   # External Name
	.long	0                       # End Mark
.LpubTypes_end0:

	.ident	"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:
