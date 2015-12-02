NAME=jorani
VERSION ?= latest
.PHONY: all build

all: stop clean build run

clean:
	@echo ">>> Delete jorani images"
	@docker-compose rm -f $(NAME)

build:
	@echo ">>> Building docker image $(NAME):$(VERSION)."
	@docker-compose build jorani

run:
	@echo ">>> docker run"
	@docker-compose up

stop:
	@echo ">>> docker run"
	@docker-compose kill
