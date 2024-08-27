#!/bin/bash

set -eux


. ci/shared/helpers/git-helpers.bash

pushd repo

echo "$CONTENT" >> "$FILE"

git_configure_author
git add "$FILE"
git commit -m "Added $CONTENT to $FILE"

cp -r . ../updated-repo
popd
