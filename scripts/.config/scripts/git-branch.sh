#!/usr/bin/env bash

selected=$(git for-each-ref --format='%(refname:short)' refs/heads/ | fzf)

if [[ -z $selected ]]; then
  exit 0
fi

git checkout $selected
