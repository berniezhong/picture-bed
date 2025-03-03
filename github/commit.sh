#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "\033[31m 兄弟，你是不是忘记说点什么？ \033[0m"
    exit 3
fi

commit_message="$1"
current_branch=$(git symbolic-ref --short HEAD)

if [ -z "$current_branch" ]; then
    echo -e "\033[31m 兄弟，项目真的有这个分支吗? \033[0m"
    exit 1
fi

git add .
git commit -m "$commit_message"
git push origin "$current_branch"
