FROM archlinux:base

RUN pacman -Sy
RUN pacman -Sy python, wget, pip

