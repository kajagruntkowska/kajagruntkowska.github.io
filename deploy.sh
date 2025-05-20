#!/bin/bash

# Exit on error
set -e

# Build the site
bundle exec jekyll build

# Navigate to the generated folder
cd _site

# Init a temporary git repo in _site
git init
git checkout -b gh-pages
git add .
git commit -m "Deploy site"

# Force push to the gh-pages branch of your repo
git push --force git@github.com:kajagruntkowska/kajagruntkowska.github.io.git gh-pages

# Cleanup
rm -rf .git
cd ..