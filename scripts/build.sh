#!/bin/bash

echo "ls"
ls

echo "gem query --local (gems installed)"
gem query --local

echo "bundle exec jekyll -v"
bundle exec jekyll -v

echo "jekyll build --config _config.yml"
bundle exec jekyll build --config _config.yml

echo "htmlproofer ./_site --url-ignore www.youtube.com"
htmlproofer ./_site --url-ignore www.youtube.com