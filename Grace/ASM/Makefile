.PHONY: all clean fclean re

SRC     := Grace.s
OBJ_DIR := obj/
OBJ = $(patsubst %.s, $(OBJ_DIR)%.o, $(SRC))

OS = ${shell uname -s}
ifeq (${OS}, Darwin)
	ASFLAGS = -f macho64
else ifeq (${OS}, Linux)
	ASFLAGS = -f elf64 -g
endif

AS := nasm
CC := gcc

RM    := rm -rfv
MKDIR := mkdir -pv

NAME := Grace
all: $(NAME)

$(NAME): $(OBJ)
	$(CC) $< -o $@ $(IFLAGS)

$(OBJ_DIR)%.o: %.s | $(OBJ_DIR)
	$(AS) $(ASFLAGS) $< -o $@

$(OBJ_DIR):
	$(MKDIR) $@

clean:
	$(RM) $(NAME)

fclean: clean
	$(RM) $(OBJ_DIR)

re: fclean all
