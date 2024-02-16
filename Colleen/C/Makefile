OBJ_DIR = obj

SRC = Colleen.c
OBJ = ${SRC:%.c=${OBJ_DIR}/%.o}

CFLAGS = -Wall -Werror -Wextra
CC     = gcc

RM = rm -frv

NAME = Colleen

all: ${NAME}

${NAME}: 	${OBJ}
	${CC} ${CFLAGS} $? -o $@

${OBJ_DIR}/%.o:	%.c | ${OBJ_DIR}
	${CC} ${CFLAGS} -c $< -o $@

${OBJ_DIR}:
	mkdir -pv ${OBJ_DIR}

clean:
	${RM} ${OBJ_DIR} tmp_${NAME}

fclean: clean
	${RM} ${NAME}

re: fclean all

.ONESHELL:
test: ${NAME}
	./${NAME} > tmp_${NAME}
	diff ${SRC} tmp_${NAME}


# ~~ beauty ~~
RED	  = "\e[31m"
GREEN = "\e[32m" 
END	  = "\e[0m"
# ~~~~~~~~~~~~

.PHONY: all clean fclean re test