#!/usr/bin/env bash

# It is recommended that you give permissions for this script.
# Giving permissions:
#
#
# [user@machine]: (~/linux-wifi-81fe-lenovo-ideapad-330-IKB) $ chmod +x script.sh

# Updating the system
sudo apt update -y && sudo apt-get update -y

# Upgrading the system
sudo apt upgrade -y && sudo apt-get upgrade -y

# Copying old sources list to backup folder
sudo cp /etc/apt/sources.list backup

# Removing old sources list from apt directory
sudo rm /etc/apt/sources.list

# Copying "non-free" sources list file to apt directory
sudo cp sources/sources.list /etc/apt/sources.list

# Updating the system again 
sudo apt update -y && sudo apt-get update -y
sudo apt upgrade -y && sudo apt-get upgrade -y

# Installing the Intel WiFi device driver firmware
sudo apt install firmware-iwlwifi

# Loading the Intel WiFi device driver firmware
sudo modprobe -r iwlwifi
sudo modprobe iwlwifi

# Deleting the current sources.list file
sudo rm /etc/apt/sources.list

# Copying your sources.list file back to its original place
sudo cp backup/sources.list /etc/apt/sources.list

echo "\nThanks for using my script.\n\nSource: https://github.com/aguiar-us/linux-wifi-81fe-lenovo-ideapad-330-IKB"