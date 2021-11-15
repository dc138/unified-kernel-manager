#!/bin/bash

if [ "$(id -u)" -ne 0 ]; then
  echo "Please run as root"
  exit 1
fi

chmod +x unified-kernel-manager

cp unified-kernel-manager /sbin
cp 90-unified-kernel-gen.hook /etc/pacman.d/hooks/
cp 90-unified-kernel-remove.hook /etc/pacman.d/hooks/
cp 95-unified-kernel-sign.hook /etc/pacman.d/hooks

echo "Installed files"
