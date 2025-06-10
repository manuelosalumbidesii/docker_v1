#!/bin/bash

# CONFIG
DOCKER_USERNAME="ivosalumbides"
REPO_NAME="dockersample"
VERSION=$1

if [ -z "$VERSION" ]; then
  echo "Usage: ./deploy.sh <version>"
  exit 1
fi

IMAGE="$DOCKER_USERNAME/$REPO_NAME:$VERSION"

# Build the image
docker build -t $IMAGE .

# Also tag as latest
docker tag $IMAGE $DOCKER_USERNAME/$REPO_NAME:latest

# Login
docker login

# Push both tags
docker push $IMAGE
docker push $DOCKER_USERNAME/$REPO_NAME:latest

echo "Image pushed: $IMAGE and latest"
