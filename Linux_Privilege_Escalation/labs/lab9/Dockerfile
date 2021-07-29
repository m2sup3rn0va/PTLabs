FROM ubuntu:14.04

# Build time arguments
ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
apt-get install sudo vim procps htop sudo cron net-tools iputils-ping netcat -y

# Create New User
RUN adduser --disabled-password --gecos '' user && \
echo "user:user" | chpasswd && \
echo "root:toor" | chpasswd && \
usermod -aG sudo user

RUN touch /root/'CONGO!!_YOU_ARE_ROOT' && \
mkdir -p /tmp/logs && \
touch /tmp/logs/a /tmp/logs/b /tmp/logs/c  && \
echo 'cd /tmp/logs && tar -cvf /tmp/backup-$(date "+%Y-%m-%d").tar *' > /root/backup.sh && \
chmod +x /root/backup.sh && \
chown -R user:user /tmp/logs && \
echo '* * * * * /bin/sh /root/backup.sh' >> /root/cronjob && \
echo '' >> /root/cronjob && \
crontab /root/cronjob

