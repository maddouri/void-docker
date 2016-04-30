FROM ubuntu:14.04

MAINTAINER Mohamed-Yassine MADDOURI

RUN apt-get -qq update && apt-get -qqy install curl && \
    curl -H "Content-Type: application/json" --data '{"docker_tag": "step-1"}' \
    -X POST 'https://registry.hub.docker.com/u/maddouri/void-docker/trigger/d769245e-33e6-4f13-9d7c-4619e4959f4f/'

ENTRYPOINT '/bin/bash'

