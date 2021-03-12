SHELL := /bin/bash

BACKEND_ROOT ?= $(dir $(abspath $(lastword $(MAKEFILE_LIST))))
DJANGO_ADMIN ?= $(BACKEND_ROOT)/manage.py
PYTHON ?= python3


init:: veryclean requirements.txt isolate
	$(PYTHON) -m pip install --upgrade pip
	$(PYTHON) -m pip install -r requirements.txt
	$(PYTHON) -m pip freeze

execute:: build run

run::
	$(PYTHON) $(DJANGO_ADMIN) runserver

build:: compile
	$(PYTHON) $(DJANGO_ADMIN) makemigrations
	$(PYTHON) $(DJANGO_ADMIN) migrate

compile:: clean
	$(PYTHON) $(DJANGO_ADMIN) collectstatic --noinput

test::
	$(PYTHON) $(DJANGO_ADMIN) test

clean::
	rm -fr static
	rm -fr db.sqlite3

veryclean:: clean
	find -iname "*.pyc" -iname "*.pyo" -delete


.PHONY: init execute run build compile test clean veryclean