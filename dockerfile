FROM manjarolinux/base
COPY /. /root/pc-setup

WORKDIR /root/pc-setup
RUN [ "sh", "-c", "ç&& wget -O jq https://github.com/stedolan/jq/releases/download/jq-1.6/jq-linux64 && chmod +x ./jq && cp jq /usr/bin"]