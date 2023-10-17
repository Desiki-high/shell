#!/usr/bin/env bash

# Install Go
echo "Installing Go..."
wget -qO- https://dl.google.com/go/go1.21.3.linux-amd64.tar.gz | sudo tar -C /usr/local -xz
echo "export PATH=\$PATH:/usr/local/go/bin" >> ~/.bashrc
source ~/.bashrc

mkdir -p ~/.config/go
tee ~/.config/go/env > /dev/null << EOF
GO111MODULE=on
GOPROXY=https://goproxy.cn
GOSUMDB=sum.golang.google.cn
EOF

mkdir ~/go
mkdir ~/go/bin
mkdir ~/go/pkg

go env
