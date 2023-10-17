#!/usr/bin/env bash

timedatectl set-timezone Asia/Shanghai
sudo date -s MM/DD/YY
sudo date -s hh:mm:ss
sudo hwclock --systohc
date -R
