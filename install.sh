#!/bin/sh

# Error out if anything fails.
set -e

# Make sure script is run as root.
if [ "$(id -u)" != "0" ]; then
  echo "Must be run as root with sudo! Try: sudo ./install.sh"
  exit 1
fi

echo "Installing dependencies..."
echo "=========================="
apt-get update
apt-get -y install build-essential python-dev python-pip python-pygame supervisor git omxplayer exfat-utils ntfs-3g

echo "Installing music_looper program..."
echo "=================================="
mkdir -p /mnt/usbdrive0 # This is very important if you put your system in readonly after
python setup.py install --force
cp music_looper.ini /boot/music_looper.ini

echo "Configuring music_looper to run on start..."
echo "==========================================="
cp music_looper.conf /etc/supervisor/conf.d/
service supervisor restart

echo "Finished!"
