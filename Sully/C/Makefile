.PHONY: all clean fclean re debug

SRC     := Sully.c
OBJ_DIR := obj/
OBJ     := $(SRC:%.c=$(OBJ_DIR)%.o)

CC     := gcc
CFLAGS := -Wall -Werror -Wextra
NAME   := Sully

OUTPUT      := $(NAME)_5 $(NAME)_4 $(NAME)_3 $(NAME)_2 $(NAME)_1 $(NAME)_0
OUTPUT_SRCS := $(addsuffix .c,$(OUTPUT))

MKDIR := mkdir -pv
RM    := rm -rfv

all: $(NAME)

$(NAME): $(OBJ)
	$(CC) $(CFLAGS) $< -o $@

$(OBJ_DIR)%.o: %.c | $(OBJ_DIR)
	$(CC) $(CFLAGS) $< -c -o $@

$(OBJ_DIR):
	$(MKDIR) $@

clean:
	$(RM) $(NAME) $(OUTPUT) $(OUTPUT_SRCS)

fclean: clean
	$(RM) $(OBJ_DIR)

debug: CFLAGS += -g3 -fsanitize=address
debug: re

re: fclean all

