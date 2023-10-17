#!/usr/bin/env bash

sudo timedatectl set-ntp true
sudo ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
sudo hwclock --systohc
date -R
