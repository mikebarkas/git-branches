#!/bin/sh
#set -x
# Set branch description.
# git branch --edit-description

# Display branch description.
# git config branch.[branch name].description

branches=`git branch --list`

while read -r branches; do
  branch_name=`git rev-parse --abbrev-ref HEAD`
  description=`git config branch.$branch_name.description`
  if [ "${branch::1}" == "*" ]; then
    printf "${branch_name} : ${description} \n"
  else
    printf "${branch_name} : ${description} \n"
  fi
done <<< "$branches"
