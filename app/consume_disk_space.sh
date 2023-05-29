#!/bin/bash

# Desired disk space to consume in MB
DISK_SPACE_MB=1024
WAIT_DURATION_SECONDS=60

# Check if the environment variable for disk path is set
if [ -z "$DISK_PATH" ]; then
  echo "Environment variable DISK_PATH is not set. Please set the path to the disk space."
  exit 1
fi

# Create a file to consume disk space
dd if=/dev/zero of=disk_space.bin bs=1M count=$DISK_SPACE_MB

# Move the file to the desired location
mv disk_space.bin "$DISK_PATH/disk_space.bin"

echo "Disk space of $DISK_SPACE_MB MB consumed."

# Sleep for the specified duration
sleep $WAIT_DURATION_SECONDS

# Revert the consumed disk space
rm "$DISK_PATH/disk_space.bin"

echo "Disk space consumption reverted."
