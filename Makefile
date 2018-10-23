all: build
build:
	docker build -t equals215/gitlab-runner .
deploy: build
	docker push equals215/gitlab-runner
