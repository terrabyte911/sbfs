#!/bin/bash

# Scaleway server only - Move home directory to new volume

mkfs.ext4 /dev/vdb
rm -rf /home
mkdir -p /home
mount /dev/vdb /home
echo "/dev/vdb /home ext4 defaults 0 2" >> /etc/fstab
echo "Server Rebooting... Please reconnect with SSH"
reboot
