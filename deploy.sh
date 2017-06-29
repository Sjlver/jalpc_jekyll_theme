#!/bin/bash

set -ex

# Check status
if ! git branch | grep -q "* master"; then
  echo "Must be on the git master branch!"
  echo 'Please run "git checkout master"'
  exit 1
fi

if ! git status | grep -q "nothing to commit, working directory clean"; then
  echo "Please run git commit first!"
  exit 1
fi

rm -rf _site
JEKYLL_ENV=production bundle exec jekyll build --verbose

rm -rf ../_site
mv _site ../_site

git checkout gh-pages
rm -r *
mv ../_site/* .
rmdir ../_site

git add --all .
git commit
