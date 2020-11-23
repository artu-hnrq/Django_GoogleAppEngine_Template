# Django at GoogleAppEngine Template
This repository serves as a starting point to new Django projects
intended to be published as a Google App Engine application.

Besides brings GAE's expected file system structure 
and useful Makefile targets to help development process,
it also provides deploy-on-push automation through the use of
Google's official [deploy-appengine][0] github action

  [0]: https://github.com/google-github-actions/deploy-appengine

### Getting started
First of all, create a new repository from this template

You will need to have a *Google Cloud Project* configured.
Through your GCP console, setup a [Service Account][1] to it
and register its key into your fresh-repo [secrets][2]

You can now clone the recent-created repository
and [make a virtualenv available][3]:
```
pip install virtualenv
python3 -m venv venv
source venv/bin/activate
pip install -r requirements.txt
```

Then your are ready to build your Django project.
Make sure to put it inside a `src` directory
```
mkdir src && cd src
django-admin startproject <project-name>
```

From here you can proceed to create [your project's first app][4]

  [1]: https://console.cloud.google.com/iam-admin/serviceaccounts 
  [2]: https://docs.github.com/en/free-pro-team@latest/actions/reference/encrypted-secrets
  [3]: https://realpython.com/python-virtual-environments-a-primer/#using-virtual-environments
  [4]: https://docs.djangoproject.com/en/3.1/intro/tutorial01/
