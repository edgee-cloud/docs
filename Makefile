.PHONY: all
MAKEFLAGS += --silent

all: help

help:
	@grep -E '^[a-zA-Z1-9\._-]+:.*?## .*$$' $(MAKEFILE_LIST) \
		| sort \
		| sed -e "s/^Makefile://" -e "s///" \
		| awk 'BEGIN { FS = ":.*?## " }; { printf "\033[36m%-30s\033[0m %s\n", $$1, $$2 }'

pre-commit: ## Install pre-commit hook
	mkdir -p .git/hooks
	cp pre-commit .git/hooks/pre-commit
	chmod +x .git/hooks/pre-commit

dev.setup: ## Install dependencies
	npm i mintlify@latest
	make pre-commit

dev.up: ## Start dev server
	make dev.setup
	npm run dev
