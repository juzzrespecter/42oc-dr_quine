.PHONY: all clean fclean re
SRC := Grace.c

OBJ_DIR := obj/
OBJ     := $(SRC:.c=$(OBJ_DIR).o)

C      := gcc
CFLAGS :=

NAME := Grace
all: $(NAME)

$(NAME): $(OBJ)

$(OBJ_DIR)%.o: %.c | $(OBJ_DIR)
	$(CC) $(CFLAGS) -c $< -o $@

$(OBJ_DIR):
	$(MKDIR) $<

clean:
	$(RM) $(NAME)

fclean: clean
	$(RM) $(OBJ_DIR)

re: fclean all

