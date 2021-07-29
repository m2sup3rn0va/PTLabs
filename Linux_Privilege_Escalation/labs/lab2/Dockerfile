FROM ubuntu:14.04

# Build time arguments
ARG DEBIAN_FRONTEND=noninteractive

# Create New User
RUN adduser --disabled-password --gecos '' user && \
echo "user:user" | chpasswd && \
echo "root:toor" | chpasswd && \
usermod -aG sudo user

RUN apt-get update && \
apt-get install sudo vim net-tools iputils-ping -y

RUN touch /root/CONGO!!_YOU_ARE_ROOT && chmod u+s /usr/bin/find

USER user

