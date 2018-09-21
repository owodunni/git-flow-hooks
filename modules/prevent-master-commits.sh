#!/usr/bin/env bash

CURRENT_BRANCH=$(git symbolic-ref HEAD)

if [ "$CURRENT_BRANCH" == "refs/heads/master" ] || [ "$CURRENT_BRANCH" == "refs/heads/develop]; then
    __print_fail "Direct commits to the master or dev branch are not allowed."
    return 1
else
    return 0
fi
