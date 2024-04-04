.PHONY: all
MAKEFLAGS += --silent

CURRENT_COMMIT=$(shell git rev-parse HEAD)
export CURRENT_COMMIT

all: help

help:
	@grep -E '^[a-zA-Z1-9\._-]+:.*?## .*$$' $(MAKEFILE_LIST) \
		| sort \
		| sed -e "s/^Makefile://" -e "s///" \
		| awk 'BEGIN { FS = ":.*?## " }; { printf "\033[36m%-30s\033[0m %s\n", $$1, $$2 }'

dev.setup: ## Install dependencies
	npm i mintlify@latest

dev.up: ## Start dev server`
	make dev.setup
	npm run dev
