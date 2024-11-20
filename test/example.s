	.file	"example.c"
	.intel_syntax noprefix
# GNU C17 (Ubuntu 13.2.0-23ubuntu4) version 13.2.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.2.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -masm=intel -mtune=generic -march=x86-64 -Ofast -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
	.p2align 4
	.globl	lex_lex
	.type	lex_lex, @function
lex_lex:
.LFB42:
	.cfi_startproc
	endbr64	
	push	r12	#
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	lea	r12, .L4[rip]	# tmp176,
	push	rbp	#
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	lea	rbp, ops.0[rip]	# tmp175,
	push	rbx	#
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	mov	rbx, rdi	# lex, tmp180
	sub	rsp, 32	#,
	.cfi_def_cfa_offset 64
.L2:
# ../include/lex.h:84: 	LEX_LSTART: LEX_START( )
	mov	rdi, QWORD PTR 16[rbx]	# lex_64(D)->stream, lex_64(D)->stream
	call	ftell@PLT	#
# ../include/lex.h:84: 	LEX_LSTART: LEX_START( )
	mov	rdi, QWORD PTR 16[rbx]	# lex_64(D)->stream, lex_64(D)->stream
	mov	DWORD PTR 8[rbx], eax	# lex_64(D)->start, tmp181
	call	getc@PLT	#
# ../include/lex.h:84: 	LEX_LSTART: LEX_START( )
	mov	edx, DWORD PTR 8[rbx]	# _7(ab), lex_64(D)->start
	mov	DWORD PTR [rbx], eax	# lex_64(D)->chr, _5
	add	eax, 1	# tmp134,
	cdqe
	mov	DWORD PTR 12[rbx], edx	# lex_64(D)->end, _7(ab)
	jmp	[QWORD PTR 0[rbp+rax*8]]	# ops[_8]
	.p2align 4,,10
	.p2align 3
.L16:
	endbr64	
	movd	xmm2, edx	# _7(ab), _7(ab)
# ../include/token.h:20: 	return token;
	xor	edx, edx	# _119
	pshufd	xmm0, xmm2, 0xe0	# vect__52.51, _7(ab)
.L7:
# ../include/lex.h:90: }
	add	rsp, 32	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	movq	rax, xmm0	# tmp178, vect__52.51
	and	edx, 7	# D.4258,
	pop	rbx	#
	.cfi_def_cfa_offset 24
	pop	rbp	#
	.cfi_def_cfa_offset 16
	pop	r12	#
	.cfi_def_cfa_offset 8
	ret	
	.p2align 4,,10
	.p2align 3
.L12:
	.cfi_restore_state
	endbr64	
# ../include/lex.h:88: 	LEX_LSTRING: LEX_STRING( )
	add	edx, 1	# _43,
	movd	xmm1, edx	# _43, _43
	pshufd	xmm0, xmm1, 0xe0	# tmp163, _43
	movq	QWORD PTR 8[rbx], xmm0	# MEM <vector(2) int> [(int *)lex_64(D) + 8B], tmp163
	jmp	.L23	#
	.p2align 4,,10
	.p2align 3
.L13:
# ../include/lex.h:88: 	LEX_LSTRING: LEX_STRING( )
	mov	edx, DWORD PTR 12[rbx]	# pretmp_113, lex_64(D)->end
# ../include/lex.h:88: 	LEX_LSTRING: LEX_STRING( )
	cmp	eax, -1	# _51,
	je	.L24	#,
# ../include/lex.h:88: 	LEX_LSTRING: LEX_STRING( )
	add	edx, 1	# tmp166,
	mov	DWORD PTR 12[rbx], edx	# lex_64(D)->end, tmp166
.L23:
# ../include/lex.h:88: 	LEX_LSTRING: LEX_STRING( )
	mov	rdi, QWORD PTR 16[rbx]	# lex_64(D)->stream, lex_64(D)->stream
	call	getc@PLT	#
# ../include/lex.h:88: 	LEX_LSTRING: LEX_STRING( )
	mov	DWORD PTR [rbx], eax	# lex_64(D)->chr, _51
# ../include/lex.h:88: 	LEX_LSTRING: LEX_STRING( )
	cmp	eax, 34	# _51,
	jne	.L13	#,
# ../include/lex.h:88: 	LEX_LSTRING: LEX_STRING( )
	movq	xmm0, QWORD PTR 8[rbx]	# vect__52.51, MEM <vector(2) int> [(int *)lex_64(D) + 8B]
# ../include/token.h:20: 	return token;
	mov	edx, 4	# _119,
	jmp	.L7	#
	.p2align 4,,10
	.p2align 3
.L11:
# ../include/lex.h:87: 	LEX_LLETTER: LEX_ID( )
	add	DWORD PTR 12[rbx], 1	# lex_64(D)->end,
	mov	rdi, QWORD PTR 16[rbx]	# lex_64(D)->stream, lex_64(D)->stream
	call	getc@PLT	#
	mov	DWORD PTR [rbx], eax	# lex_64(D)->chr, tmp186
.L10:
	endbr64	
# ../include/lex.h:87: 	LEX_LLETTER: LEX_ID( )
	mov	eax, DWORD PTR [rbx]	# tmp190, lex_64(D)->chr
# ../include/lex.h:87: 	LEX_LLETTER: LEX_ID( )
	lea	rdx, .L10[rip]	# tmp177,
# ../include/lex.h:87: 	LEX_LLETTER: LEX_ID( )
	add	eax, 1	# tmp154,
	cdqe
	mov	rax, QWORD PTR 0[rbp+rax*8]	# _40, ops[_39]
# ../include/lex.h:87: 	LEX_LLETTER: LEX_ID( )
	cmp	rax, rdx	# _40, tmp177
	je	.L11	#,
	cmp	rax, r12	# _40, tmp176
	je	.L11	#,
# ../include/lex.h:87: 	LEX_LLETTER: LEX_ID( )
	movq	xmm0, QWORD PTR 8[rbx]	# vect__52.51, MEM <vector(2) int> [(int *)lex_64(D) + 8B]
# ../include/token.h:20: 	return token;
	mov	edx, 3	# _119,
	jmp	.L7	#
	.p2align 4,,10
	.p2align 3
.L5:
# ../include/lex.h:86: 	LEX_LDIGIT: LEX_NUMBER( )
	add	DWORD PTR 12[rbx], 1	# lex_64(D)->end,
	mov	rdi, QWORD PTR 16[rbx]	# lex_64(D)->stream, lex_64(D)->stream
	call	getc@PLT	#
	mov	DWORD PTR [rbx], eax	# lex_64(D)->chr, tmp183
	.p2align 4,,10
	.p2align 3
.L4:
	endbr64	
# ../include/lex.h:86: 	LEX_LDIGIT: LEX_NUMBER( )
	mov	edx, DWORD PTR [rbx]	# _14, lex_64(D)->chr
	lea	eax, 1[rdx]	# tmp138,
	cdqe
	cmp	QWORD PTR 0[rbp+rax*8], r12	# ops[_15], tmp176
	je	.L5	#,
# ../include/lex.h:86: 	LEX_LDIGIT: LEX_NUMBER( )
	mov	eax, DWORD PTR 12[rbx]	# pretmp_112, lex_64(D)->end
# ../include/lex.h:86: 	LEX_LDIGIT: LEX_NUMBER( )
	cmp	edx, 46	# _14,
	je	.L6	#,
.L9:
# ../include/lex.h:86: 	LEX_LDIGIT: LEX_NUMBER( )
	movq	xmm0, QWORD PTR 8[rbx]	# vect__52.51, MEM <vector(2) int> [(int *)lex_64(D) + 8B]
# ../include/token.h:20: 	return token;
	mov	edx, 2	# _119,
	jmp	.L7	#
	.p2align 4,,10
	.p2align 3
.L3:
	endbr64	
# ../include/lex.h:85: 	LEX_LSKIP: goto LEX_LSTART;
	jmp	.L2	#
	.p2align 4,,10
	.p2align 3
.L24:
	movq	xmm0, QWORD PTR 8[rbx]	# vect__52.51,
# ../include/lex.h:88: 	LEX_LSTRING: LEX_STRING( )
	mov	edx, 1	# _119,
	jmp	.L7	#
	.p2align 4,,10
	.p2align 3
.L6:
# ../include/lex.h:86: 	LEX_LDIGIT: LEX_NUMBER( )
	add	eax, 1	# tmp141,
	mov	rdi, QWORD PTR 16[rbx]	# lex_64(D)->stream, lex_64(D)->stream
	mov	DWORD PTR 12[rbx], eax	# lex_64(D)->end, tmp141
	call	getc@PLT	#
# ../include/lex.h:86: 	LEX_LDIGIT: LEX_NUMBER( )
	mov	DWORD PTR [rbx], eax	# lex_64(D)->chr, _20
	add	eax, 1	# tmp144,
	cdqe
	cmp	QWORD PTR 0[rbp+rax*8], r12	# ops[_21], tmp176
	jne	.L24	#,
	.p2align 4,,10
	.p2align 3
.L8:
# ../include/lex.h:86: 	LEX_LDIGIT: LEX_NUMBER( )
	add	DWORD PTR 12[rbx], 1	# lex_64(D)->end,
	mov	rdi, QWORD PTR 16[rbx]	# lex_64(D)->stream, lex_64(D)->stream
	call	getc@PLT	#
	mov	DWORD PTR [rbx], eax	# lex_64(D)->chr, _28
# ../include/lex.h:86: 	LEX_LDIGIT: LEX_NUMBER( )
	add	eax, 1	# tmp149,
	cdqe
	cmp	QWORD PTR 0[rbp+rax*8], r12	# ops[_30], tmp176
	je	.L8	#,
	jmp	.L9	#
	.cfi_endproc
.LFE42:
	.size	lex_lex, .-lex_lex
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"r"
.LC2:
	.string	"Token<%s> "
.LC3:
	.string	"%d:%d = "
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB43:
	.cfi_startproc
	endbr64	
	push	r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	push	r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	push	r13	#
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	push	r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	push	rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	push	rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	sub	rsp, 72	#,
	.cfi_def_cfa_offset 128
# example.c:5: {
	mov	rax, QWORD PTR fs:40	# tmp132, MEM[(<address-space-1> long unsigned int *)40B]
	mov	QWORD PTR 56[rsp], rax	# D.4393, tmp132
	xor	eax, eax	# tmp132
# example.c:6: 	if( nargs < 2 ) return 0;
	cmp	edi, 1	# tmp125,
	jle	.L28	#,
# example.c:7: 	file_p stream = fopen( args[ 1 ], "r" );
	mov	rdi, QWORD PTR 8[rsi]	# MEM[(char * *)args_7(D) + 8B], MEM[(char * *)args_7(D) + 8B]
	lea	rsi, .LC0[rip]	# tmp100,
	call	fopen@PLT	#
	mov	QWORD PTR 8[rsp], rax	# %sfp, stream
# example.c:8: 	if( !stream ) return 0;
	test	rax, rax	# stream
	je	.L28	#,
# ../include/lex.h:24: 	return lex;
	mov	QWORD PTR 48[rsp], rax	# lex.stream, stream
	lea	rax, 32[rsp]	# tmp124,
	movdqa	xmm0, XMMWORD PTR .LC1[rip]	# tmp102,
	mov	QWORD PTR [rsp], rax	# %sfp, tmp124
	movaps	XMMWORD PTR 32[rsp], xmm0	# MEM <vector(4) int> [(int *)&lex], tmp102
	.p2align 4,,10
	.p2align 3
.L32:
# example.c:14: 		token = lex_lex( &lex );
	mov	rdi, QWORD PTR [rsp]	#, %sfp
	call	lex_lex	#
# example.c:16: 		token_log( lex.stream, &token );
	mov	rbp, QWORD PTR 48[rsp]	# _2, lex.stream
# example.c:14: 		token = lex_lex( &lex );
	mov	DWORD PTR 28[rsp], edx	# token, tmp129
# ../include/token.h:25: 	i32 old = ftell( stream ); /* save for later */
	mov	rdi, rbp	#, _2
# example.c:14: 		token = lex_lex( &lex );
	mov	QWORD PTR 20[rsp], rax	# token, tmp128
# ../include/token.h:25: 	i32 old = ftell( stream ); /* save for later */
	call	ftell@PLT	#
# ../include/token.h:26: 	i32 sz = token->end - token->start;
	mov	r14d, DWORD PTR 24[rsp]	# _23, token.end
# ../include/token.h:27: 	fseek( stream, token->start, SEEK_SET );
	xor	edx, edx	#
	mov	rdi, rbp	#, _2
# ../include/token.h:26: 	i32 sz = token->end - token->start;
	movsx	rsi, DWORD PTR 20[rsp]	#, token.start
# ../include/token.h:25: 	i32 old = ftell( stream ); /* save for later */
	mov	r12, rax	# _21, tmp130
# ../include/token.h:26: 	i32 sz = token->end - token->start;
	mov	ebx, r14d	# sz, _23
# ../include/token.h:26: 	i32 sz = token->end - token->start;
	mov	r15, rsi	#,
# ../include/token.h:26: 	i32 sz = token->end - token->start;
	sub	ebx, esi	# sz, _24
# ../include/token.h:27: 	fseek( stream, token->start, SEEK_SET );
	call	fseek@PLT	#
# ../include/token.h:28: 	printf( "Token<%s> ", token_type_strings[ token->type ] );
	mov	eax, DWORD PTR 28[rsp]	#, token.type
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	mov	edi, 2	#,
	lea	rcx, token_type_strings[rip]	# tmp139,
	lea	rsi, .LC2[rip]	#,
	mov	rdx, QWORD PTR [rcx+rax*8]	# token_type_strings[_27], token_type_strings[_27]
# ../include/token.h:28: 	printf( "Token<%s> ", token_type_strings[ token->type ] );
	mov	r13, rax	#,
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	xor	eax, eax	#
	call	__printf_chk@PLT	#
	xor	eax, eax	#
	mov	ecx, r14d	#, _23
	mov	edx, r15d	#, _24
	lea	rsi, .LC3[rip]	#,
	mov	edi, 2	#,
	call	__printf_chk@PLT	#
# ../include/token.h:30: 	for( ; sz; sz-- ) printf( "%c", getc( stream ) );
	test	ebx, ebx	# sz
	je	.L30	#,
	.p2align 4,,10
	.p2align 3
.L31:
# ../include/token.h:30: 	for( ; sz; sz-- ) printf( "%c", getc( stream ) );
	mov	rdi, rbp	#, _2
	call	getc@PLT	#
	mov	edi, eax	# _31, tmp131
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	call	putchar@PLT	#
# ../include/token.h:30: 	for( ; sz; sz-- ) printf( "%c", getc( stream ) );
	sub	ebx, 1	# sz,
	jne	.L31	#,
.L30:
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	mov	edi, 10	#,
	call	putchar@PLT	#
# ../include/token.h:32: 	fseek( stream, old, SEEK_SET ); /* restore stream */
	xor	edx, edx	#
	movsx	rsi, r12d	# old, _21
	mov	rdi, rbp	#, _2
	call	fseek@PLT	#
# example.c:17: 	} while( token.type != TOKEN_TYPE_EOF );
	test	r13d, r13d	# _27
	jne	.L32	#,
# example.c:19: 	fclose( stream );
	mov	rdi, QWORD PTR 8[rsp]	#, %sfp
	call	fclose@PLT	#
.L28:
# example.c:21: }
	mov	rax, QWORD PTR 56[rsp]	# tmp133, D.4393
	sub	rax, QWORD PTR fs:40	# tmp133, MEM[(<address-space-1> long unsigned int *)40B]
	jne	.L43	#,
	add	rsp, 72	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	xor	eax, eax	#
	pop	rbx	#
	.cfi_def_cfa_offset 48
	pop	rbp	#
	.cfi_def_cfa_offset 40
	pop	r12	#
	.cfi_def_cfa_offset 32
	pop	r13	#
	.cfi_def_cfa_offset 24
	pop	r14	#
	.cfi_def_cfa_offset 16
	pop	r15	#
	.cfi_def_cfa_offset 8
	ret	
.L43:
	.cfi_restore_state
	call	__stack_chk_fail@PLT	#
	.cfi_endproc
.LFE43:
	.size	main, .-main
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	ops.0, @object
	.size	ops.0, 1032
ops.0:
	.quad	.L16
	.quad	.L3
	.quad	.L3
	.quad	.L3
	.quad	.L3
	.quad	.L3
	.quad	.L3
	.quad	.L3
	.quad	.L3
	.quad	.L3
	.quad	.L3
	.quad	.L3
	.quad	.L3
	.quad	.L3
	.quad	.L3
	.quad	.L3
	.quad	.L3
	.quad	.L3
	.quad	.L3
	.quad	.L3
	.quad	.L3
	.quad	.L3
	.quad	.L3
	.quad	.L3
	.quad	.L3
	.quad	.L3
	.quad	.L3
	.quad	.L3
	.quad	.L3
	.quad	.L3
	.quad	.L3
	.quad	.L3
	.quad	.L3
	.quad	.L3
	.quad	.L3
	.quad	.L12
	.quad	.L3
	.quad	.L3
	.quad	.L3
	.quad	.L3
	.quad	.L3
	.quad	.L3
	.quad	.L3
	.quad	.L3
	.quad	.L3
	.quad	.L3
	.quad	.L3
	.quad	.L3
	.quad	.L3
	.quad	.L3
	.quad	.L4
	.quad	.L4
	.quad	.L4
	.quad	.L4
	.quad	.L4
	.quad	.L4
	.quad	.L4
	.quad	.L4
	.quad	.L4
	.quad	.L3
	.quad	.L3
	.quad	.L3
	.quad	.L3
	.quad	.L3
	.quad	.L3
	.quad	.L3
	.quad	.L10
	.quad	.L10
	.quad	.L10
	.quad	.L10
	.quad	.L10
	.quad	.L10
	.quad	.L10
	.quad	.L10
	.quad	.L10
	.quad	.L10
	.quad	.L10
	.quad	.L10
	.quad	.L10
	.quad	.L10
	.quad	.L10
	.quad	.L10
	.quad	.L10
	.quad	.L10
	.quad	.L10
	.quad	.L10
	.quad	.L10
	.quad	.L10
	.quad	.L10
	.quad	.L10
	.quad	.L10
	.quad	.L10
	.quad	.L3
	.quad	.L3
	.quad	.L3
	.quad	.L3
	.quad	.L10
	.quad	.L3
	.quad	.L10
	.quad	.L10
	.quad	.L10
	.quad	.L10
	.quad	.L10
	.quad	.L10
	.quad	.L10
	.quad	.L10
	.quad	.L10
	.quad	.L10
	.quad	.L10
	.quad	.L10
	.quad	.L10
	.quad	.L10
	.quad	.L10
	.quad	.L10
	.quad	.L10
	.quad	.L10
	.quad	.L10
	.quad	.L10
	.quad	.L10
	.quad	.L10
	.quad	.L10
	.quad	.L10
	.quad	.L10
	.quad	.L10
	.quad	.L3
	.quad	.L3
	.quad	.L3
	.quad	.L3
	.quad	.L3
	.globl	token_type_strings
	.section	.rodata.str1.1
.LC4:
	.string	"EOF"
.LC5:
	.string	"Error"
.LC6:
	.string	"Number"
.LC7:
	.string	"Identifier"
.LC8:
	.string	"String"
	.section	.data.rel.local,"aw"
	.align 32
	.type	token_type_strings, @object
	.size	token_type_strings, 40
token_type_strings:
	.quad	.LC4
	.quad	.LC5
	.quad	.LC6
	.quad	.LC7
	.quad	.LC8
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC1:
	.long	-1
	.long	0
	.long	0
	.long	0
	.ident	"GCC: (Ubuntu 13.2.0-23ubuntu4) 13.2.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
