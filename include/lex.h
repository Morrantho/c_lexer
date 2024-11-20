#ifndef __LEXER_H__
#define __LEXER_H__

#include <stdio.h>
#include <stdlib.h>
#include "typedef.h"
#include "ascii.h"
#include "token.h"

typedef struct lex_t
{
	i32 chr; /* current character */
	i32 line; /* current line */
	i32 start; /* token start index */
	i32 end; /* token end index */
	file_p stream;
} lex_t, *lex_p;

inline lex_t lex_init( file_p stream )
{
	lex_t lex = { 0 };
	lex.chr = EOF;
	lex.stream = stream;
	return lex;
}

#define LEX_MATCH( C, L ) ops[ lex->chr + 1 ] C &&L
#define LEX_GEN( T ) token_init( lex->start, lex->end, T )
#define LEX_EOF( ) return LEX_GEN( TOKEN_TYPE_EOF );
#define LEX_ISALPHA( )\
	LEX_MATCH( ==, LEX_LLETTER ) ||\
	LEX_MATCH( ==, LEX_LDIGIT )

#define LEX_START( )\
{\
	lex->start = ftell( lex->stream );\
	lex->chr = getc( lex->stream );\
	lex->end = lex->start;\
	goto *ops[ lex->chr + 1 ]; /* offset 1 to bypass eof check */\
}

#define LEX_EAT( )\
{\
	lex->end++;\
	lex->chr = getc( lex->stream );\
}

#define LEX_NUMBER( )\
{\
	while( LEX_MATCH( ==, LEX_LDIGIT ) ) LEX_EAT( )\
	if( lex->chr == '.' )\
	{\
		LEX_EAT( )\
		if( LEX_MATCH( !=, LEX_LDIGIT ) )\
			return LEX_GEN( TOKEN_TYPE_ERROR );\
		while( LEX_MATCH( ==, LEX_LDIGIT ) ) LEX_EAT( )\
	}\
	return LEX_GEN( TOKEN_TYPE_NUMBER );\
}

#define LEX_ID( )\
{\
	while( LEX_ISALPHA( ) ) LEX_EAT( )\
	return LEX_GEN( TOKEN_TYPE_ID );\
}

#define LEX_STRING( )\
{\
	lex->start++; /* ignore double quote */\
	LEX_EAT( )\
	while( lex->chr != '"' )\
	{\
		if( lex->chr == EOF ) return LEX_GEN( TOKEN_TYPE_ERROR );\
		LEX_EAT( )\
	}\
	return LEX_GEN( TOKEN_TYPE_STRING );\
}

token_t lex_lex( lex_p lex )
{
	#define X( E, L ) &&L,
	static void_p ops[] = { ASCII_CODES };
	#undef X
	LEX_LSTART: LEX_START( )
	LEX_LSKIP: goto LEX_LSTART;
	LEX_LDIGIT: LEX_NUMBER( )
	LEX_LLETTER: LEX_ID( )
	LEX_LSTRING: LEX_STRING( )
	LEX_LEOF: LEX_EOF( )
}

#endif/*__LEXER_H__*/
