#!/bin/bash

echo "Enter Gitlab runner registration token :"
read gitlab_runner_token
echo "Enter Gitlab URL, put the absolute url if possible (outside lan address) :"
read gitlab_url

export GITLAB_URL=${gitlab_url}
export GITLAB_RUNNER_TOKEN=${gitlab_runner_token}

docker stack deploy -c stack/gitlab-runner-stack.yml ci
