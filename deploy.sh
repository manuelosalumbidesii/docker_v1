#!/bin/bash

# Variables
IMAGE_NAME="ivosalumbides/dockersample"
VERSION=$1  # e.g. v1, v2, v3

# Step 1: Build image
echo "🔧 Building Docker image..."
docker build -t dev:$VERSION .

# Step 2: Tag image
echo "🏷️ Tagging image as $IMAGE_NAME:$VERSION"
docker tag dev:$VERSION $IMAGE_NAME:$VERSION

# Step 3: Push image
echo "📤 Pushing to Docker Hub..."
docker push $IMAGE_NAME:$VERSION

echo "✅ Done! Image pushed: $IMAGE_NAME:$VERSION"
