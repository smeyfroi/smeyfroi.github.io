#! /bin/sh

# export JEKYLL_VERSION=latest
# docker run --rm \
#   --volume=$PWD:/srv/jekyll \
#   -it jekyll/minimal:$JEKYLL_VERSION \
#   jekyll build

docker run -t --rm -v "$PWD":/usr/src/app -p "4000:4000" starefossen/github-pages
