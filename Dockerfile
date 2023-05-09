# CodeSandbox supports debian & ubuntu based images
FROM ubuntu
 
# Example; install htop by default
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && apt-get install -y tzdata systemctl curl
ENV TZ=Asia/Shanghai
COPY install.sh /workspace/install.sh

# The project will be mounted in /workspace by default

# Every new shell will open inside the built container

# On top of this build, we install `zsh`, `git` and `docker` as additional
# Docker layers.
