IMAGE_NAME=rpi4-dashboard
TAG=latest
REQUIREMENTS_FILE=requirements.txt
ENV_FOLDER=.env
SHELL := /bin/bash
PIP=${ENV_FOLDER}/bin/pip
MEDIA_DOCKER=docker-media.yml
DEFAULT_DOCKER=docker-default.yml
UTILS_DOCKER=docker-utils.yml
DOWNLOAD_DOCKER=docker-downloads.yml

.PHONY: help

help:  ## Help
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

build: ## Build Docker Services 
	@echo "Building..."
	docker compose build 

up: build ## Up Docker Services
	@echo "Running..."
	docker compose -f docker-compose-test.yml up --remove-orphans -d

down: ## Down Docker Services
	@echo "Running..."
	docker compose -f docker-compose-test.yml down --remove-orphans


