# Github action: jenkins-build-by-token

[![Travis][travis-image]][travis-url]
![License][license-image]
![Issues][issues-image]

## USAGE

```bash
name: trigger jenkins job
on: [push]
jobs:
  curl:
    runs-on: ubuntu-latest
    steps:
    - name: jenkins-build-by-token-action
      uses: notonthehighstreet/jenkins-build-by-token-action@master
      with:
        webhook_host: "..."
        webhook_secret: "..."
        job_path: "..."
        job_token: "..."

```

[travis-image]: https://travis-ci.com/notonthehighstreet/jenkins-build-by-token-action.svg?branch=master
[travis-url]: https://travis-ci.com/notonthehighstreet/jenkins-build-by-token-action
[license-image]: https://img.shields.io/static/v1?label=licence&message=MIT&color=Green
[issues-image]: https://img.shields.io/github/issues/notonthehighstreet/jenkins-build-by-token-action
