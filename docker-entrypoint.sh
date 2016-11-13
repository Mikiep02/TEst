#!/bin/bash
set -e

DIRECTORY=/var/www/jotihunt-site

if [ ! -d "$DIRECTORY" ]; then
  git clone git@bitbucket.org:jasperroel/jotihunt-website.git $DIRECTORY
fi

exec "$@"
