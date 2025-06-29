#!/bin/bash
set -e

VERSION=$1
TAG="pi-$VERSION"

if [ -z "$VERSION" ]; then
  echo "Usage: ./upload-release.sh v1.2"
  exit 1
fi

echo "🚀 Creating GitHub release: $TAG"
gh release create "$TAG" \
  --title "MeadTools Taplist OS $VERSION" \
  --notes "Packaged release $VERSION of the taplist image(s)." || echo "ℹ️ Release already exists, continuing..."

# Upload available files
for TYPE in "" "-Headless"; do
  FILE="MeadTools-Taplist$TYPE-$VERSION.img.gz"
  if [ -f "$FILE" ]; then
    echo "📦 Uploading $FILE..."
    gh release upload "$TAG" "$FILE" --clobber
  else
    echo "⚠️ Skipping missing file: $FILE"
  fi
done

echo "✅ Release upload complete."