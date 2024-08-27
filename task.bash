#!/bin/bash

set -eu


. ci/shared/helpers/git-helpers.bash


echo "$CONTENT" >> "$FILE"

git_configure_author
git add "$FILE"
git commit -m "Added $CONTENT to $FILE"

