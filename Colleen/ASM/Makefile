.PHONY: all clean fclean re test

OBJ_DIR = obj
SRC = Colleen.s

OBJ = ${SRC:%.s=${OBJ_DIR}/%.o}

OS = ${shell uname -r}
ifeq (${OS}, Darwin); then
	ASFLAGS = -f macho64
else ifeq (${OS}, Linux); then
	ASFLAGS = -f elf
endif

NAME = Colleen

all: ${NAME}