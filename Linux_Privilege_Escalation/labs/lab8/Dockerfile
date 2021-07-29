FROM ubuntu:14.04

# Build time arguments
ARG DEBIAN_FRONTEND=noninteractive

# Create New User
RUN adduser --disabled-password --gecos '' --shell=/bin/rbash user && \
echo "user:user" | chpasswd && \
echo "root:toor" | chpasswd

RUN apt-get update && \
apt-get install sudo vim openssh-server net-tools iputils-ping python3 -y

RUN mkdir -p /home/user/.bin && \
cp -f /usr/bin/tee /home/user/.bin

RUN rm -rf /home/user/.profile && \
echo 'PATH="$HOME/.bin"' > /home/user/.profile

RUN chown -R user:user /home/user && \
chown root:root /home/user/.profile && \
chmod 644 /home/user/.profile && \
chmod u+s /usr/bin/python3 && \
touch /root/'CONGO!!_YOU_ARE_ROOT'

