#!/bin/bash
set -e

git clone git@bitbucket.org:jasperroel/jotihunt-website.git /var/www/jotihunt-site

exec "$@"
