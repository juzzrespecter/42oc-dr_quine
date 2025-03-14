.ONESHELL:
.PHONY: all clean fclean
SRC  := Sully.py
CSRC := Sully.c

NAME := Sully
VENV := .venv

CC := gcc
IFLAGS := $(shell python3-config --includes)
LDFLAGS := $(shell python3-config --ldflags --embed)
RM := rm -rfv
OUTPUT := Sully_5 Sully_4 Sully_3 Sully_2 Sully_1 Sully_0
OUTPUT_SRC := $(addsuffix .py,$(OUTPUT)) $(NAME).c

all: $(NAME)

$(NAME): $(CSRC)
	$(CC) -Os $(IFLAGS) $< -o $@ $(LDFLAGS)

$(CSRC): $(SRC) | $(VENV)
	NO_CYTHON_COMPILE=true pip install Cython
	cython --embed $< -o $@

$(VENV):
	python -m venv $@
	source $@/bin/activate

clean:
	$(RM) $(NAME) $(OUTPUT) $(OUTPUT_SRC)

fclean: clean
	$(RM) $(VENV)

re: fclean all