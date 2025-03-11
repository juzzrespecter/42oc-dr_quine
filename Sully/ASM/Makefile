SRC     := Sully.s
OBJ_DIR := obj/
OBJ     := $(SRC:%.s=$(OBJ_DIR)%.o)

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

OUTPUT      := $(NAME)_5 $(NAME)_4 $(NAME)_3 $(NAME)_2 $(NAME)_1 $(NAME)_0
OUTPUT_SRCS := $(addsuffix .s,$(OUTPUT))

all: $(NAME)

$(NAME): $(OBJ)
	$(CC) $(CFLAGS) $< -o $@

$(OBJ_DIR)%.o: %.s | $(OBJ_DIR)
	$(AS) $(ASFLAGS) $< -o $@

$(OBJ_DIR):
	$(MKDIR) $@

clean:
	$(RM) $(NAME) $(OUTPUT) $(OUTPUT_SRCS)

fclean: clean
	$(RM) $(OBJ_DIR)

re: fclean all

debug: CFLAGS += -g3 -fsanitize=address
debug: re

.PHONY: all clean fclean re debug