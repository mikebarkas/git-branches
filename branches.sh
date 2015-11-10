#!/bin/sh

# Set branch description.
# git branch --edit-description

# Display branch description.
# git config branch.[branch name].description

BRANCHES=`git branch | cut -c 3-`
CURRENT_BRANCH=`git rev-parse --abbrev-ref HEAD`
for BRANCH in ${BRANCHES}; do
  DESCRIPTION=`git config branch.${BRANCH}.description`
  if [ "${CURRENT_BRANCH}" == "${BRANCH}" ]; then
    printf "# ${BRANCH} ${DESCRIPTION} \n"
  else
    printf "${BRANCH} : ${DESCRIPTION} \n"
  fi
done
