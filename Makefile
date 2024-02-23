.PHONY: all
MAKEFLAGS += --silent

COMPOSE_PROJECT_NAME=edgee
CURRENT_COMMIT=$(shell git rev-parse HEAD)

export COMPOSE_PROJECT_NAME
export CURRENT_COMMIT

all: help

help:
	@grep -E '^[a-zA-Z1-9_-]+:.*?## .*$$' $(MAKEFILE_LIST) \
		| sort \
		| sed -e "s/^Makefile://" -e "s///" \
		| awk 'BEGIN { FS = ":.*?## " }; { printf "\033[36m%-30s\033[0m %s\n", $$1, $$2 }'

install: ## Install dependencies
	npm i -g mintlify

up: ## Start dev server
	docker-compose up -d
	mintlify dev --port 3001 --host docs.edgee.dev

ps: ## docker-compose ps
	docker-compose ps
