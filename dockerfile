FROM centos:latest
COPY /. /root/pc-setup
WORKDIR /root/pc-setup
CMD ["/bin/bash", "./install_apps.sh"]