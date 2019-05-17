How to contribute
=================

Want to develop or contribute to this project?
Contributions and improvements are appreciated and welcome.
This guide explains how to set up a development environment and make a contribution.


## Create a development environment

This project uses a [**Docker**](https://en.wikipedia.org/wiki/Docker_%28software%29) container to create a development environment.
This solution works with Docker on Linux, macOS, and Windows.
We use Docker to run a container to build and serve the website.
Then, when you make changes, they are reflected immediately in your running copy of the site when you press "Save".

### Pre-requisites

Install Docker:

* Linux
  * [Fedora](https://developer.fedoraproject.org/tools/docker/docker-installation.html)
  * [Ubuntu](https://docs.docker.com/install/linux/docker-ce/ubuntu/)
* [macOS](https://docs.docker.com/docker-for-mac/install/)
* [Windows](https://docs.docker.com/toolbox/overview/)

### Run development script

In a new window, run the [`start_devel_env.sh`](https://github.com/FOSSRIT/fossrit.github.io/blob/master/start_devel_env.sh) script.
This script downloads a Jekyll Docker container and builds the website.
Once it starts, you can access a local version of the website by visiting this URL:

```
http://localhost:4000
```

## Submitting contributions

More detailed steps will be documented in the future.
For now, if you want to contribute, submit a new pull request.
