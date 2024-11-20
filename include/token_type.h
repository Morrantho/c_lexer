#ifndef __TOKEN_TYPE_H__
#define __TOKEN_TYPE_H__

#include "typedef.h"

#define TOKEN_TYPES \
	X( TOKEN_TYPE_EOF, "EOF" ) \
	X( TOKEN_TYPE_ERROR, "Error" ) \
	X( TOKEN_TYPE_NUMBER, "Number" ) \
	X( TOKEN_TYPE_ID, "Identifier" ) \
	X( TOKEN_TYPE_STRING, "String" )

#define X( T, S ) T,
typedef enum token_type_t{ TOKEN_TYPES N_TOKEN_TYPES }token_type_t;
#undef X

#define X( T, S ) S,
char_p token_type_strings[ N_TOKEN_TYPES ] = { TOKEN_TYPES };
#undef X

#endif/*__TOKEN_TYPE_H__*/
