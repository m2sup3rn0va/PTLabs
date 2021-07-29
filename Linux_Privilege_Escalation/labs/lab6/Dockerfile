FROM ubuntu:14.04

# Build time arguments
ARG DEBIAN_FRONTEND=noninteractive

# Create New User
RUN adduser --disabled-password --gecos '' user && \
echo "user:user" | chpasswd && \
echo "root:toor" | chpasswd && \
usermod -aG sudo user && \
touch /root/'CONGO!!_YOU_ARE_ROOT'

RUN apt-get update && \
apt-get install sudo vim net-tools iputils-ping gcc binutils openssh-server netcat -y

RUN printf '# include <stdio.h>\n# include <sys/types.h>\n# include <stdlib.h>\n\nint main()\n{\nsetuid(0);\nsetgid(0);\n\nprintf("\\nChecking Open Ports for SSH:\\n");\nsystem("ss -tunlp | grep :22");\n\nprintf("\\n\\nRestarting SSH\\n");\nsystem("service ssh restart");\n\nprintf("Restarted SSH\\n\\n");\n}' > /root/start_ssh.c && \
gcc /root/start_ssh.c -o /home/user/start_ssh && \
chmod 4777 /home/user/start_ssh

USER user

