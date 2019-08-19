ARG DOCKER_REGISTRY=docker.io
ARG FROM_IMG_REPO=library
ARG FROM_IMG_NAME="amazonlinux"
ARG FROM_IMG_TAG="2.0.20190508"
ARG FROM_IMG_HASH=""
FROM ${DOCKER_REGISTRY}/${FROM_IMG_REPO}/${FROM_IMG_NAME}:${FROM_IMG_TAG}${DOCKER_IMG_HASH}

RUN yum update -y \
 && yum install -y java-11-amazon-corretto-headless git \
 && yum install -y https://download.gocd.org/binaries/19.7.0-9567/rpm/go-server-19.7.0-9567.noarch.rpm
CMD ["/usr/share/go-server/bin/go-server", "console"]
