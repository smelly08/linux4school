FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

# Install necessary packages
RUN apt-get update && apt-get install -y \
    xfce4 \
    xterm \
    tigervnc-standalone-server \
    novnc \
    net-tools \
    wget \
    sudo \
    curl \
    git \
    python3 \
    python3-pip \
    && apt-get clean

# Set up a default user
RUN useradd -m devuser && echo "devuser:devuser" | chpasswd && echo "devuser ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

USER devuser
WORKDIR /workspace
