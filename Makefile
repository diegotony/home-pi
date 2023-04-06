IMAGE_NAME=rpi4-dashboard
TAG=latest
REQUIREMENTS_FILE=requirements.txt
ENV_FOLDER=.env
SHELL := /bin/bash
PIP=${ENV_FOLDER}/bin/pip
.PHONY: help

help:  ## Help
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

build: ## Build Docker App 
	@echo "Building..."
	docker compose build 

run: build ## Run DockerApp
	@echo "Running..."
	/usr/local/bin/tilt up