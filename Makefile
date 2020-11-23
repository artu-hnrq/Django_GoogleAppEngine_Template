PROJECT_MANAGER="src/manage.py"

e execute: build run

r run:
	python3 $(PROJECT_MANAGER) runserver

b build: compile
	python3 $(PROJECT_MANAGER) makemigrations
	python3 $(PROJECT_MANAGER) migrate

c compile:
	python3 $(PROJECT_MANAGER) collectstatic --noinput

env:
	pip freeze > requirements.txt

s serve:
	dev_appserver.py --application=$(GAE_PROJECT_ID) app.yaml

deploy: build
	gcloud config set project $(PROJECT_ID)
	gcloud app deploy
	gcloud app browse
