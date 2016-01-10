#!/bin/sh
if [ $# -ne 1 ]; then
        echo "Usage $0 repo-name"
        return
fi

repo=$1
git remote set-url origin git+ssh://git@github.com/YaoQ/${repo}.git

echo "To see repo URL"
git remote show origin
