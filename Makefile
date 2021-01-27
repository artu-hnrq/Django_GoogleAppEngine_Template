DJANGO_ADMIN="src/manage.py"

e execute: build run

r run:
	python3 $(DJANGO_ADMIN) runserver

b build: compile
	python3 $(DJANGO_ADMIN) makemigrations
	python3 $(DJANGO_ADMIN) migrate

c compile: clean
	npm run start --prefix app
	python3 $(DJANGO_ADMIN) collectstatic --noinput

clean:
	npm cache clean --force
	rm -rf app/package-lock.json app/webpack-stats.json app/assets/dist

env:
	pip freeze > requirements.txt

s serve:
	dev_appserver.py --application=$(PROJECT_ID) app.yaml

deploy: build
	gcloud config set project $(PROJECT_ID)
	gcloud app deploy
	gcloud app browse
