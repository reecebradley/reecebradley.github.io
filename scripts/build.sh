#!/bin/bash

echo -e "\x1B[31m **** $ ls \x1B[0m"
ls

#echo "-- gem update"
#gem update

echo -e "\x1B[31m **** $ gem query --local (gems installed) \x1B[0m"
gem query --local

echo -e "\x1B[31m **** $ bundle exec jekyll -v \x1B[0m"
bundle exec jekyll -v

echo -e "\x1B[31m **** $ jekyll build --config _config.yml \x1B[0m"
bundle exec jekyll build --config _config.yml

echo -e "\x1B[31m **** $ htmlproofer ./_site --url-ignore www.youtube.com \x1B[0m"
htmlproofer ./_site --url-ignore www.youtube.com