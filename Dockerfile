FROM ubuntu:latest
RUN apt-get update && apt-get install -y nasm gcc make grub-pc-bin grub-common xorriso && rm -rf /var/lib/apt/lists/*
VOLUME /root/env
WORKDIR /root/env
