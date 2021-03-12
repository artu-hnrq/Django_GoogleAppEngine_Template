SHELL := /bin/bash

REPO_ROOT ?= $(dir $(abspath $(lastword $(MAKEFILE_LIST))))
BACKEND_ROOT ?= src

VENV_ROOT ?= venv
PYTHON ?= $(VENV_ROOT)/bin/python3

#include .env
include $(BACKEND_ROOT)/Makefile


help:: ## Show this help
	@ egrep -h '\s##\s' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[3	7;1m%-20s\033[0m %s\n", $$1, $$2}'

isolate:: ## Guarantee virtual environment is set
	test -d $(VENV_ROOT) || python3 -m venv $(VENV_ROOT)

init:: veryclean | isolate ## Configure the development environment

execute:: build run ## Build and Run application

run:: ## Launch application locally

serve:: build ## Serve application locally through App Engine structure
	dev_appserver.py --application=$(PROJECT_ID) app.yaml

build:: ## Process source code into an executable program

compile:: ## Treat file generation

test:: ## Verify application's behavior requirements completeness

clean:: ## Delete all files created through Build process

veryclean:: clean ## Delete all generated files
	rm -fr venv

deploy:: build ## Deploy service(s) at Google App Engine
	gcloud config set project $(PROJECT_ID)
	gcloud app deploy
	gcloud app browse


.ONESHELL:
.PHONY: help isolate init execute run serve build compile test clean veryclean deploy
