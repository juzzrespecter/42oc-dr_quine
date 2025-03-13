.PHONY: all clean fclean
SRC  := Sully.py
CSRC := Sully.c

NAME := Sully
VENV := .venv

CC := gcc
IFLAGS := $(python3-config --includes)
LDFLAGS := $(python3-config --ldflags --embed)
RM := rm -rfv

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
	$(RM) $(NAME)

fclean: clean
	$(RM) $(VENV)
