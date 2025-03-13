.PHONY: all clean fclean
SRC  := Sully.py
CSRC := Sully.c

NAME := Sully
VENV := .venv

CC := gcc
IFLAGS := $(python3-config --includes)
LDFLAGS := $(python3-config --ldflags --embed)

all: $(NAME)

$(NAME): $(CSRC)
	$(CC) -Os $(IFLAGS) $< -o $@ $(LDFLAGS)

$(CSRC): $(SRC) | $(VENV)
	pip install Cython --install-option="--no-cython-compile"
	cython --embed $< -o $@

$(VENV):
	python -m venv $@
	source $@/bin/activate
