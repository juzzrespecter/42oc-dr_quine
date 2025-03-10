.PHONY: all clean fclean re debug
SRC := Grace.c

OBJ_DIR := obj/
OBJ     := $(SRC:%.c=$(OBJ_DIR)%.o)

CC     := gcc
CFLAGS := -Wall -Werror -Wextra
MKDIR  := mkdir -pv
RM     := rm -rfv

NAME := Grace
all: $(NAME)

$(NAME): $(OBJ)
	$(CC) $(CFLAGS) $< -o $(NAME)

$(OBJ_DIR)%.o: %.c | $(OBJ_DIR)
	$(CC) $(CFLAGS) $< -c -o $@

$(OBJ_DIR):
	$(MKDIR) $@

clean:
	$(RM) $(NAME)

fclean: clean
	$(RM) $(OBJ_DIR)

debug: CFLAGS += -g3
debug: all

re: fclean all

