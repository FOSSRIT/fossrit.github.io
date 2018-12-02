#!/usr/bin/bash
#
# Create development environment using a Docker container
#

JEKYLL_VERSION=3.8

docker run --rm \
    -p 4000:4000 \
    -v "$PWD:/srv/jekyll:Z" \
    -it jekyll/jekyll:$JEKYLL_VERSION \
    sh -c "jekyll serve --watch"
