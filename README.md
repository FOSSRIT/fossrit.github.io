[fossrit.github.io](https://fossrit.github.io)
==============================================

[![License: MPL 2.0](https://img.shields.io/badge/License-MPL%202.0-brightgreen.svg)](https://opensource.org/licenses/MPL-2.0)
[![CircleCI build status](https://circleci.com/gh/FOSSRIT/fossrit.github.io/tree/main.svg?style=shield)](https://circleci.com/gh/FOSSRIT/fossrit.github.io/tree/main)

Official website for Free and Open Source Software @ RIT MAGIC Center and FOSS academia


## About

This is the website for the Free and Open Source Software initiative at the [RIT MAGIC Center](https://www.rit.edu/magic/ "RIT MAGIC Center - website").
This website includes content for community initiatives, FOSS academic courses, and more.
It is also used to communicate announcements to the RIT FOSS community.

This repository is how to edit the website [Fossrit.Github.io](https://fossrit.github.io/).


## How to contribute

1. Fork this repository!
2. Make your desired changes to either add additional features or repair existing ones.
3. Create a feature branch for those changes.
4. Commit your changes to your new feature branch on the forked repository.
5. Once satisfied with your changes, open a pull request from the feature branch to the parent project.
6. Wait patiently while the request is reviewed as well as run through CI tests.
Once you complete those steps, you have successfully contributed to this repository!

You can also visit [runbook.fossrit.community](https://runbook.fossrit.community/infra/website/), which contains some instructions about the structure of a portion of the website, such as calendar feed and creating a development environment. If you are interested in those areas, the runbook website may be useful.


## How to locally build

Prerequisite to building locally is to have installed a container runtime, such as [Docker](https://www.docker.com/) and [Podman](https://podman.io/). Instructions on how these container runtimes interact with several operating systems can be found on [runbook.fossrit](https://runbook.fossrit.community/infra/website/#pre-requisites) website.

To build the site locally:
1. Navigate to the directory the project is in and run the script ``./build.sh`` which will download the Jekyll container from Docker, build the site, and serve it on port 4000.
2. To see the site you just built, visit the website: ``http://localhost:4000``.

You can then leave build.sh running and it will update your site by rebuilding with your active changes!


## Legal

This website is licensed under the [Mozilla Public License 2.0](https://www.mozilla.org/en-US/MPL/).
It is based off of [RITlug/ritlug.github.io](https://github.com/RITlug/ritlug.github.io), a [Creative Commons Zero v1.0 Universal](https://github.com/RITlug/ritlug.github.io/blob/fe94d190d92ae3d13bbc743f81eab2d004ba5f16/LICENSE) project.
However it does not have full feature parity with the RITlug site (see [FOSSRIT/fossrit.github.io#87](https://github.com/FOSSRIT/fossrit.github.io/issues/87 "Differences between RITlug and FOSS@MAGIC website") for details).
