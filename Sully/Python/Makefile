.ONESHELL:
.PHONY: all clean fclean re up
SRC  := Sully.py
CSRC := Sully.c

NAME := Sully
VENV := .venv

PYTHON_CMD := $(shell which python; echo $$?)
ifeq ($(PYTHON_CMD), 1)
	PYTHON := python3
else
	PYTHON := python
endif
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
	source $(VENV)/bin/activate
	NO_CYTHON_COMPILE=true pip install Cython
	cython --embed $< -o $@

$(VENV):
	$(PYTHON) -m venv $@

clean:
	$(RM) $(NAME) $(OUTPUT) $(OUTPUT_SRC)

fclean: clean
	$(RM) $(VENV)

re: fclean all

up: 
	docker run -it -v .:/Sully --name sully-python --rm python:3.14-rc-bookworm bash