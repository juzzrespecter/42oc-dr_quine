.PHONY: all clean fclean re

SRC = Colleen.s

OBJ_DIR = obj
OBJ = ${patsubst %.s, $(OBJ_DIR)/%.o, ${SRC}}

OS = ${shell uname -s}
ifeq (${OS}, Darwin)
	ASFLAGS = -f macho64
else ifeq (${OS}, Linux)
	ASFLAGS = -f elf64 -g
endif

AS := nasm
LD := cc
#LDFLAGS := -lc --dynamic-linker /usr/lib64/ld-linux-x86-64.so.2

RM = rm -rfv
MKDIR = mkdir -pv

NAME = Colleen

all: ${NAME}

${NAME}: ${OBJ}
	${LD} $< -o $@ ${LDFLAGS}

${OBJ_DIR}/%.o: %.s | ${OBJ_DIR}
	${AS} ${ASFLAGS} $< -o $@

${OBJ_DIR}:
	${MKDIR} $@

clean:
	${RM} ${NAME}

fclean: clean
	${RM} ${OBJ_DIR}

re: fclean all
