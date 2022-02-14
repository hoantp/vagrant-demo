#! /bin/bash

echo -en "\n=== PROVISION: Common ===\n"
echo -en "Run as: $(whoami)\n\n"

apt-get update
apt-get install -y \
    vim htop curl unzip \
    build-essential pkg-config \
    libxml2-dev libsqlite3-dev libssl-dev libonig-dev libsystemd-dev \
    zlib1g-dev

timedatectl set-timezone Asia/Ho_Chi_Minh
