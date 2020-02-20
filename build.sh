#!/bin/sh
#
# Create a development environment for the fossrit.github.io website using a
# container, either with Docker or Podman depending on what the end user has
# installed.
#
# Written by: Justin W. Flory (@jwflory)
# Originally sourced from:
#   https://pagure.io/fedora-docs/template/blob/master/f/build.sh
#

image="docker.io/jekyll/jekyll:stable"
cmd="jekyll serve --watch"


# Ensure _site directory is created for Jekyll engine
if [ ! -d ./_site ]; then
    mkdir ./_site
fi


if [ "$(uname)" == "Darwin" ]; then
    # Running on macOS.
    # Let's assume the user has the Docker CE installed which doesn't require a
    # root password.
    echo -e "\nThis build script is using Docker CE on macOS.\n"
    docker pull $image
    echo -e "\nJekyll image pulled. Starting container...\n"
    docker run --rm \
        -p 4000:4000 \
        -v $(pwd):/srv/jekyll \
        -it $image \
        $cmd

elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
    # Running on Linux.
    # Check whether podman is available, else fall back to docker which
    # requires root.

    if [ -f /usr/bin/podman ]; then
        echo -e "\nThis build script is using Podman.\n"
        podman pull $image
        echo -e "\nJekyll image pulled. Starting container...\n"
    	podman run --rm \
            -p 4000:4000 \
            -v $(pwd):/srv/jekyll:Z \
            -it $image \
            $cmd

    elif [ -f /usr/bin/docker ]; then
        echo -e "\nThis build script is using Docker.\n"
        if groups | grep -wq "docker"; then
            docker pull $image
            echo -e "\nJekyll image pulled. Starting container...\n"
    	    docker run --rm \
                -p 4000:4000 \
                -v $(pwd):/srv/jekyll:Z \
                -it $image \
                $cmd
    	else
            echo -e "\nThis build script is using $runtime to run the build" \
                    "in an isolated environment. You might be asked for" \
                    "your password.\nYou can avoid this by adding your user" \
                    "to the 'docker' group, but be aware of the security" \
                    "implications.\n\t" \
                    "https://docs.docker.com/install/linux/linux-postinstall/"
            sudo docker pull $image
            echo -e "\nJekyll image pulled. Starting container...\n"
            sudo docker run --rm \
                -p 4000:4000 \
                -v $(pwd):/srv/jekyll \
                -it $image \
                $cmd
    	fi
    fi

else
	echo -e "\nError: Container runtime not found on your system.\n"
	exit 1
fi
