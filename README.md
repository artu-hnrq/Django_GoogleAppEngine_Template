# Django at GoogleAppEngine Template
> This intend to be a [GNU-general-public-licensed][6], [semantic-versioned][-1], [conventional-committed][-2] and [changelogged][-3]
git repository starting point for the development of a brand new [twelve-factor][-4] Django project,
continuous delivered through GitHub and served as a Google App Engine application.

[-1]: https://semver.org/
[-2]: https://www.conventionalcommits.org/en/v1.0.0/
[-3]: https://keepachangelog.com/en/1.0.0/
[-4]: https://www.12factor.net/

<details style="text-align:center;">
  <summary>Summary</summary>

  [Getting started](#getting-started) <br>
  [License](#license-b26)
    
</details>

Beside brings GAE's expected file system structure,
generic-named powered-up Django project base
and useful Makefile targets to help development process,
it also provides deploy-on-push automation through the use of
Google's official [deploy-appengine][-5] github action.

[-5]: https://github.com/google-github-actions/deploy-appengine


## Getting started
First of all, create a new repository from this template [![template][B1]][A1]

[B1]: https://img.shields.io/static/v1?label=here&message=%20&style=social&logo=github
[A1]: https://github.com/artu-hnrq/Django_GoogleAppEngine_Template/generate

### Development environment setup
Make sure you have `Git`, `Make` and `Python` installed:
```bash
$ git --version
git version 2.25.1
$ make --version
GNU Make 4.2.1
$ python3 --version
Python 3.7.9
```

Then you can clone the recent-created repository
and set up its development environment:
```bash
$ make init
$ . venv/bin/activate
```

Finally, you are ready to create [your Django's first app][1]
and proceed developing your application.

[1]: https://docs.djangoproject.com/en/3.1/intro/tutorial01/

### Continuos deployment setup
You will need to have a *Google Cloud Project* configured.
So, through its console, enable the [App Engine Admin API][2]
and also set up a [Service Account][3] to your project,
registering its key into your fresh-repo [secrets][4]
as `GCP_SA_KEY`.

[2]: https://console.developers.google.com/apis/api/appengine.googleapis.com "Google Cloud Console: App Engine Admin API"
[3]: https://console.cloud.google.com/iam-admin/serviceaccounts "Google Cloud Console: Service Accounts"
[4]: https://docs.github.com/en/free-pro-team@latest/actions/reference/encrypted-secrets "GitHub Docs: Secrets"

### Repo presentation setup
After all, you should make this project your own.
Write a good README to present your project to the world.
[Here][5] you can find a good guide on this

[5]: https://www.makeareadme.com/ "Make a README"
[comment]: https://gist.github.com/PurpleBooth/109311bb0361f32d87a2 (Check this README template)

## License [![][B2]][6]
This project is published under the permissions established by [GNU General Public License v3.0][6].

[6]: https://choosealicense.com/licenses/gpl-3.0/ "License description"
[B2]: https://img.shields.io/github/license/artu-hnrq/Django_GoogleAppEngine_Template?color=green "License Badge"
