#!/usr/bin/env bash

./compress.sh
git add .
git ci -m"deployment: compress CSS and JS"
ejekyll
rsync -avz _site/ mattread.com:/var/www/mattread/htdocs
