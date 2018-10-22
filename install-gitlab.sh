#!/bin/bash

echo "Enter Gitlab URL, put the absolute url if possible (outside lan address) :"
read gitlab_url

export GITLAB_URL=${gitlab_url}

docker stack deploy -c stack/gitlab-stack.yml gitlab
