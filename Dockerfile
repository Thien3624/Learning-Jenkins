FROM jenkins/agent:alpine-jdk11
USER root
RUN apk add --no-cache python3 py3-pip
USER Jenkins
