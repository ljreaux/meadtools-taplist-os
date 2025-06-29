#!/bin/bash
set -e

VERSION=$1
DISK=$2        # e.g. /dev/disk10
TYPE=${3:-kiosk}  # defaults to "kiosk" if not provided

if [ -z "$VERSION" ] || [ -z "$DISK" ]; then
  echo "Usage: ./make-image.sh v1.2 /dev/diskX [kiosk|headless]"
  exit 1
fi

SUFFIX=""
if [[ "$TYPE" == "headless" ]]; then
  SUFFIX="-Headless"
fi

IMG_NAME="MeadTools-Taplist$SUFFIX-$VERSION.img"
IMG_ZIP="$IMG_NAME.gz"

echo "⏏️ Unmounting $DISK..."
diskutil unmountDisk "$DISK"

echo "💾 Creating image: $IMG_NAME"
sudo dd if="$DISK" of="$IMG_NAME" bs=4m status=progress

echo "🗜️ Compressing image..."
gzip -9 "$IMG_NAME"

echo "✅ Done: $IMG_ZIP"