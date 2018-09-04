#!/bin/sh

if [ -f README.md ]; then
  rm README.md
fi

find ./pages -name "*.md" | sort | xargs ./lib/gh-md-toc > README.md

# Add the header to the README.md file
echo "$(cat ./partials/header.md)\n$(cat README.md)\n$(cat ./partials/footer.md)" > README.md

git add README.md
