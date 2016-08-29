FROM gitlab/gitlab-runner:alpine

ENV DOCKERIZE_VERSION v0.2.0
RUN wget https://github.com/jwilder/dockerize/releases/download/$DOCKERIZE_VERSION/dockerize-linux-amd64-$DOCKERIZE_VERSION.tar.gz \
    && tar -C /usr/bin -xzvf dockerize-linux-amd64-$DOCKERIZE_VERSION.tar.gz

COPY ./templates /templates

ENV GITLAB_CI_URL=''
ENV GITLAB_CI_TOKEN=''

ENTRYPOINT dockerize -template /templates/config.toml:/etc/gitlab-runner/config.toml gitlab-runner run --user=gitlab-runner --working-directory=/home/gitlab-runner