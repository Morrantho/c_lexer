#include <stdio.h>
#include "../include/lex.h"

int main( int nargs, char** args )
{
	if( nargs < 2 ) return 0;
	file_p stream = fopen( args[ 1 ], "r" );
	if( !stream ) return 0;

	lex_t lex = lex_init( stream );
	token_t token = { 0 };
	do
	{
		token = lex_lex( &lex );
		/* Test types, values, and start + end positions */
		token_log( lex.stream, &token );
	} while( token.type != TOKEN_TYPE_EOF );

	fclose( stream );
	return 0;
}
