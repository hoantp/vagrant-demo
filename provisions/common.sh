#! /bin/bash

apt-get update
apt-get install -y \
    vim htop curl wget unzip \
    build-essential pkg-config \
    libxml2-dev libsqlite3-dev libssl-dev libonig-dev libsystemd-dev

timedatectl set-timezone Asia/Ho_Chi_Minh
