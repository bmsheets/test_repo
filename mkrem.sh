#!/bin/bash

echo "Enter new repo name:"
read repo
echo "Enter github username:"
read username

echo "Creating repo: ${repo} for user: ${username}"

curl -u ${username} https://api.github.com/user/repos -d {\"name\": \"${repo}\"}
git remote add origin git@github.com:${username}/${repo}.git
git push origin master
