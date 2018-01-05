#!/bin/bash
echo -e "\x1B[31m **** $ ls \x1B[0m"
ls

if [[ $TRAVIS_BRANCH == 'master' ]] ; then
  echo -e "\x1B[31m **** start deploy... \x1B[0m"
  cd _site
  git init

  git config user.name "Travis CI"
  git config user.email "reece.io@outlook.com"

  git add .
  git commit -m "Deploy"

  echo -e "\x1B[31m **** git status -s -b \x1B[0m"
  git status -s -b

  # We redirect any output to
  # /dev/null to hide any sensitive credential data that might otherwise be exposed.
  echo -e "\x1B[31m **** git push --force --quiet *********** master:master > /dev/null 2>&1 \x1B[0m"
  echo "${git_user}:*****@${git_target}"
  git push --force --quiet "https://${git_user}:${git_password}@${git_target}" master:master > /dev/null 2>&1
else
  echo -e "\x1B[31m **** Invalid branch. You can only deploy from master \x1B[0m"
  exit 1
fi