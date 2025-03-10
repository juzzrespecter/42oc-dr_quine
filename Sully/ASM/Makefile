SRC     := Sully.s
OBJ_DIR := obj/
OBJ     := $(SRC:%.c=$(OBJ_DIR)%.o)

OS := $(shell uname -s)
ifeq ($(OS), Darwin)
	ASFLAGS := -f macho64
else ifeq ($(OS), Linux)
	ASFLAGS := -f elf64
endif

AS := nasm
CC     := gcc
CFLAGS := -Wall -Werror -Wextra
NAME   := Sully

RM    := rm -frv
MKDIR := mkdir -pv

all: $(NAME)

$(NAME): $(OBJ)
	$(CC) $(CFLAGS) $< -o $@

$(OBJ_DIR)%.o: %.s | $(OBJ_DIR)
	$(AS) $(ASFLAGS) $< -o $@

$(OBJ_DIR):
	$(MKDIR) $@

clean:
	$(RM) $(NAME)

fclean: clean
	$(RM) $(OBJ_DIR)

re: fclean all

.PHONY: all clean fclean re