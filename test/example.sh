rm -f example

gcc \
	-s \
	-Ofast \
	-fverbose-asm \
	-masm=intel \
	-S example.c \
	-o example.s

gcc \
	-s \
	-Ofast \
	example.c \
	-o example

./example ./example.txt
