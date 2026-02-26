#!/bin/bash

# Darklane Blog - Deploy Script
# Builds Hugo site and pushes to GitHub Pages (gh-pages branch)

set -e  # Exit on any error

echo "Building Hugo site..."
hugo

echo "Preparing to deploy to GitHub Pages..."

# Navigate into the build output folder
cd public

# Initialize git if not already a repo
if [ ! -d .git ]; then
  git init
  git remote add origin git@github.com:hadella/blog.git
fi

# Checkout or create gh-pages branch
git checkout -B gh-pages

# Add all files
git add -A

# Commit with timestamp
git commit -m "Deploy site: $(date '+%Y-%m-%d %H:%M:%S')"

# Push to gh-pages branch
echo "Pushing to GitHub Pages..."
git push -f origin gh-pages

echo "Deploy complete! Site should be live at:"
echo "https://hadella.github.io/blog/"

cd ..
