IMAGE_NAME=rpi4-dashboard
TAG=latest
REQUIREMENTS_FILE=requirements.txt
ENV_FOLDER=.env
SHELL := /bin/bash
PIP=${ENV_FOLDER}/bin/pip
.PHONY: help

help:  ## Help
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

build: ## Build Docker Services 
	@echo "Building..."
	docker compose build 

run: build ## Run Docker Services
	@echo "Running..."
	docker compose up -d --remove-orphans

destroy: ## Destroy Docker Services 
	@echo "Building..."
	docker compose build 
