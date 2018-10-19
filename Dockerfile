FROM gitlab/gitlab-runner
MAINTAINER Thomas Foubert <thomas@thomas-foubert.com>

ADD runner.sh /runner.sh
RUN chmod +x /runner.sh

ENTRYPOINT ["/runner.sh"]
