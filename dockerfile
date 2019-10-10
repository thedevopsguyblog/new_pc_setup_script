FROM centos:latest
RUN yum install centos-release-scl -y
RUN yum install python3-pip.noarch, python3.x86_64 -y

VOLUME [ "/data" ]