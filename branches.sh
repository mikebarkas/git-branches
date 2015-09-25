#!/bin/shell

# Set branch description.
# git branch --edit-description

# Display branch description.
# git config branch.[branch name].description

branch=""
branches=`git branch --list`

while read -r branch; do
  branch_name=${branch}
  description=`git config branch.$branch_name.description`
  if [ "${branch::1}" == "*" ]; then
    printf "$branch $description \n"
  else
    printf "$branch $description \n"
  fi
done <<< "$branches"
