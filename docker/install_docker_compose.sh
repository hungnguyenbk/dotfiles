#!/bin/bash

# Default version
DEFAULT_VERSION="1.29.2"

# Get version from arg1, otherwise use default
VERSION="${1:-$DEFAULT_VERSION}"

echo "Using Docker Compose version: $VERSION"

# Download URL
URL="https://github.com/docker/compose/releases/download/$VERSION/docker-compose-$(uname -s)-$(uname -m)"

# Check if version exists on GitHub
echo "Checking if version exists..."
if curl -fsI "$URL" > /dev/null; then
    echo "Version $VERSION exists. Proceeding to download..."
else
    echo "❌ Version $VERSION does NOT exist on GitHub!"
    exit 1
fi

# Download Docker Compose
sudo curl -L "$URL" -o /usr/local/bin/docker-compose

# Make it executable
sudo chmod +x /usr/local/bin/docker-compose

# Verify installation
docker-compose --version

# ref
# install https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-compose-on-ubuntu-20-04
# release note https://docs.docker.com/compose/releases/release-notes/
# list version https://github.com/docker/compose/releases
