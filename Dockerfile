FROM gitlab/gitlab-runner:latest

RUN cd / && \
    wget https://get.docker.com/builds/Linux/x86_64/docker-1.12.6.tgz && \
    tar zxf docker-1.12.6.tgz && \
    rm docker-1.12.6.tgz
RUN apt-get update && \
    apt-get install -y python-pip && \
    pip install awscli --ignore-installed six
