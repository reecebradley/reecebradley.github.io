#!/bin/bash

ls

gem query --local

jekyll -v

echo "jekyll build"
jekyll build --config _config.yml

echo "htmlproofer"
htmlproofer ./_site --url-ignore www.youtube.com