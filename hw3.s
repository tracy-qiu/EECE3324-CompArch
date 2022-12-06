	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 15	sdk_version 10, 15, 6
	.globl	_printArray             ## -- Begin function printArray
	.p2align	4, 0x90
_printArray:                            ## @printArray
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	$0, -16(%rbp)
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	movl	-16(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	LBB0_4
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rax
	movslq	-16(%rbp), %rcx
	movl	(%rax,%rcx,4), %esi
	leaq	L_.str(%rip), %rdi
	movb	$0, %al
	callq	_printf
## %bb.3:                               ##   in Loop: Header=BB0_1 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	LBB0_1
LBB0_4:
	leaq	L_.str.1(%rip), %rdi
	movb	$0, %al
	callq	_printf
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_insertionSort          ## -- Begin function insertionSort
	.p2align	4, 0x90
_insertionSort:                         ## @insertionSort
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	$1, -16(%rbp)
LBB1_1:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB1_3 Depth 2
	movl	-16(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	LBB1_9
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	movq	-8(%rbp), %rax
	movslq	-16(%rbp), %rcx
	movl	(%rax,%rcx,4), %edx
	movl	%edx, -24(%rbp)
	movl	-16(%rbp), %edx
	subl	$1, %edx
	movl	%edx, -20(%rbp)
LBB1_3:                                 ##   Parent Loop BB1_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
                                        ## kill: def $al killed $al killed $eax
	cmpl	$0, -20(%rbp)
	movb	%al, -25(%rbp)          ## 1-byte Spill
	jl	LBB1_5
## %bb.4:                               ##   in Loop: Header=BB1_3 Depth=2
	movq	-8(%rbp), %rax
	movslq	-20(%rbp), %rcx
	movl	(%rax,%rcx,4), %edx
	cmpl	-24(%rbp), %edx
	setg	%sil
	movb	%sil, -25(%rbp)         ## 1-byte Spill
LBB1_5:                                 ##   in Loop: Header=BB1_3 Depth=2
	movb	-25(%rbp), %al          ## 1-byte Reload
	testb	$1, %al
	jne	LBB1_6
	jmp	LBB1_7
LBB1_6:                                 ##   in Loop: Header=BB1_3 Depth=2
	movq	-8(%rbp), %rax
	movslq	-20(%rbp), %rcx
	movl	(%rax,%rcx,4), %edx
	movq	-8(%rbp), %rax
	movl	-20(%rbp), %esi
	addl	$1, %esi
	movslq	%esi, %rcx
	movl	%edx, (%rax,%rcx,4)
	movl	-20(%rbp), %edx
	subl	$1, %edx
	movl	%edx, -20(%rbp)
	jmp	LBB1_3
LBB1_7:                                 ##   in Loop: Header=BB1_1 Depth=1
	movl	-24(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	-20(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rsi
	movl	%eax, (%rcx,%rsi,4)
## %bb.8:                               ##   in Loop: Header=BB1_1 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	LBB1_1
LBB1_9:
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_medianOfList           ## -- Begin function medianOfList
	.p2align	4, 0x90
_medianOfList:                          ## @medianOfList
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	-20(%rbp), %eax
	cltd
	movl	$2, %ecx
	idivl	%ecx
	movl	%eax, -24(%rbp)
	movl	-20(%rbp), %eax
	cltd
	idivl	%ecx
	cmpl	$0, %edx
	jne	LBB2_2
## %bb.1:
	movq	-16(%rbp), %rax
	movslq	-24(%rbp), %rcx
	movl	(%rax,%rcx,4), %edx
	movq	-16(%rbp), %rax
	movl	-24(%rbp), %esi
	subl	$1, %esi
	movslq	%esi, %rcx
	addl	(%rax,%rcx,4), %edx
	movl	%edx, %eax
	cltd
	movl	$2, %esi
	idivl	%esi
	movl	%eax, -4(%rbp)
	jmp	LBB2_3
LBB2_2:
	movq	-16(%rbp), %rax
	movslq	-24(%rbp), %rcx
	movl	(%rax,%rcx,4), %edx
	movl	%edx, -4(%rbp)
LBB2_3:
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_main                   ## -- Begin function main
	.p2align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$120, %rsp
	.cfi_offset %rbx, -24
	leaq	-48(%rbp), %rax
	movq	___stack_chk_guard@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -16(%rbp)
	movl	%edi, -84(%rbp)
	movq	%rsi, -96(%rbp)
	movq	l___const.main.arr(%rip), %rcx
	movq	%rcx, -48(%rbp)
	movq	l___const.main.arr+8(%rip), %rcx
	movq	%rcx, -40(%rbp)
	movl	l___const.main.arr+16(%rip), %edx
	movl	%edx, -32(%rbp)
	movq	$5, -104(%rbp)
	movq	-104(%rbp), %rcx
                                        ## kill: def $ecx killed $ecx killed $rcx
	movq	%rax, %rdi
	movl	%ecx, %esi
	callq	_insertionSort
	leaq	-48(%rbp), %rdi
	movq	-104(%rbp), %rax
                                        ## kill: def $eax killed $eax killed $rax
	movl	%eax, %esi
	callq	_printArray
	leaq	-48(%rbp), %rdi
	movq	-104(%rbp), %r8
                                        ## kill: def $r8d killed $r8d killed $r8
	movl	%r8d, %esi
	callq	_medianOfList
	movl	%eax, -108(%rbp)
	movl	-108(%rbp), %esi
	leaq	L_.str.2(%rip), %rdi
	movb	$0, %al
	callq	_printf
	leaq	-80(%rbp), %rdi
	movq	l___const.main.arr2(%rip), %r9
	movq	%r9, -80(%rbp)
	movq	l___const.main.arr2+8(%rip), %r9
	movq	%r9, -72(%rbp)
	movq	l___const.main.arr2+16(%rip), %r9
	movq	%r9, -64(%rbp)
	movq	$6, -120(%rbp)
	movq	-120(%rbp), %r9
                                        ## kill: def $r9d killed $r9d killed $r9
	movl	%r9d, %esi
	movl	%eax, -128(%rbp)        ## 4-byte Spill
	callq	_insertionSort
	leaq	-80(%rbp), %rdi
	movq	-120(%rbp), %r10
                                        ## kill: def $r10d killed $r10d killed $r10
	movl	%r10d, %esi
	callq	_printArray
	leaq	-80(%rbp), %rdi
	movq	-120(%rbp), %r11
                                        ## kill: def $r11d killed $r11d killed $r11
	movl	%r11d, %esi
	callq	_medianOfList
	movl	%eax, -124(%rbp)
	movl	-124(%rbp), %esi
	leaq	L_.str.2(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movq	___stack_chk_guard@GOTPCREL(%rip), %rdi
	movq	(%rdi), %rdi
	movq	-16(%rbp), %rbx
	cmpq	%rbx, %rdi
	jne	LBB3_2
## %bb.1:
	xorl	%eax, %eax
	addq	$120, %rsp
	popq	%rbx
	popq	%rbp
	retq
LBB3_2:
	callq	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"%d "

L_.str.1:                               ## @.str.1
	.asciz	"\n"

	.section	__TEXT,__const
	.p2align	4               ## @__const.main.arr
l___const.main.arr:
	.long	3                       ## 0x3
	.long	5                       ## 0x5
	.long	4                       ## 0x4
	.long	1                       ## 0x1
	.long	2                       ## 0x2

	.section	__TEXT,__cstring,cstring_literals
L_.str.2:                               ## @.str.2
	.asciz	"%d\n"

	.section	__TEXT,__const
	.p2align	4               ## @__const.main.arr2
l___const.main.arr2:
	.long	5                       ## 0x5
	.long	7                       ## 0x7
	.long	3                       ## 0x3
	.long	8                       ## 0x8
	.long	20                      ## 0x14
	.long	4                       ## 0x4

.subsections_via_symbols
