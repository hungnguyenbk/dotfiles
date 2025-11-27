#!/bin/bash

set -e  # Stop if any command fails

echo "=== Installing Docker on Ubuntu ==="

# Update system
sudo apt-get update -y
sudo apt-get install -y ca-certificates curl gnupg

# Create keyring directory if not exists
sudo install -m 0755 -d /etc/apt/keyrings

# Download Docker GPG key
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg \
  -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc

# Add Docker repository
echo \
  "deb [arch=$(dpkg --print-architecture) \
  signed-by=/etc/apt/keyrings/docker.asc] \
  https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# Update repo index
sudo apt-get update -y

# Install Docker components
sudo apt-get install -y \
  docker-ce \
  docker-ce-cli \
  containerd.io \
  docker-buildx-plugin \
  docker-compose-plugin

echo "=== Docker installed successfully ==="

# Enable non-root access
echo "=== Configuring Docker for non-root user ==="

# Create docker group if not exists
if ! getent group docker > /dev/null; then
    sudo groupadd docker
fi

# Add current user to docker group
sudo usermod -aG docker $USER

echo "User added to docker group. You must log out and log back in for changes to take effect."

echo "=== Installation completed ==="
