FROM archlinux/base

RUN pacman -Syu
RUN pacman -S install curl, ruby

COPY ./bash_profile /
