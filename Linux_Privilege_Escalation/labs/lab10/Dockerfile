FROM ubuntu:14.04

# Build time arguments
ARG DEBIAN_FRONTEND=noninteractive

# Update and Install Dependencies
RUN apt-get update && \
apt-get install sudo vim procps htop sudo cron net-tools iputils-ping netcat binutils dchroot debootstrap -y

# Create New User
RUN adduser --home /tmp/user/jail --disabled-password --gecos '' user && \
echo "user:user" | chpasswd && \
echo "root:toor" | chpasswd && \
touch /root/'CONGO!!_YOU_ARE_ROOT'

RUN printf "\n[trusty]\ndescription=Ubuntu Trusty 14.04\ndirectory=/tmp/user/jail\nusers=user\ntype=directory\n" >> /etc/schroot/schroot.conf
CMD /bin/bash


