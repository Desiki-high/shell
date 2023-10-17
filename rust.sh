#!/usr/bin/env bash

# Specify the desired Rust version
RUST_VERSION="1.68.2"

# Install Rust
echo "Installing Rust..."
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y --default-toolchain $RUST_VERSION
source $HOME/.cargo/env
rustc --version
cargo --version
