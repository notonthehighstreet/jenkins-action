# Github action: jenkins-build-by-token

[![Travis][travis-image]][travis-url]
![License][license-image]
![Issues][issues-image]

## USAGE

### GitHub Actions

#### Inputs

##### `jenkins`

**Required** webhook_host Parameter. Default `"https://toniflorithomar.cat"`.
**Required** webhook_secret Parameter. Default `"test"`.
**Required** job_path Parameter. Default `"test"`.
**Required** job_token Parameter. Default `"/job/test"`.
**OPTIONAL** parameters Parameter. Default `"test1&test2&test3"`. (Use & separator)

#### Example usage11

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
