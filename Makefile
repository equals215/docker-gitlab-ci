all: build deploy
build:
	docker build -t equals215/gitlab-runner .
deploy:
	docker push equals215/gitlab-runner
