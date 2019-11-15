FROM centos:latest
COPY /. /root/pc-setup
WORKDIR /root/pc-setup
RUN yum install which
RUN [ "sh", "-c", "yum install wget -y && wget -O jq https://github.com/stedolan/jq/releases/download/jq-1.6/jq-linux64 && chmod +x ./jq && cp jq /usr/bin"]