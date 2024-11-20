#ifndef __TOKEN_H__
#define __TOKEN_H__

#include <stdio.h>
#include "typedef.h"
#include "token_type.h"

typedef FILE* file_p;

typedef struct token_t
{
	i32 start;
	i32 end;
	token_type_t type;
} token_t, *token_p;

inline token_t token_init( i32 start, i32 end, token_type_t type )
{
	token_t token = { .start = start, .end = end, .type = type };
	return token;
}

inline void token_log( FILE* stream, token_p token )
{
	i32 old = ftell( stream ); /* save for later */
	i32 sz = token->end - token->start;
	fseek( stream, token->start, SEEK_SET );
	printf( "Token<%s> ", token_type_strings[ token->type ] );
	printf( "%d:%d = ", token->start, token->end );
	for( ; sz; sz-- ) printf( "%c", getc( stream ) );
	printf( "\n" );
	fseek( stream, old, SEEK_SET ); /* restore stream */
}

#endif/*__TOKEN_H__*/
