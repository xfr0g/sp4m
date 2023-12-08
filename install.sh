#!/bin/bash

# Detect the Linux distribution
figlet -f slant SP4M
echo "    Hundred Laugh"

if [ -f "/etc/os-release" ]; then
    source /etc/os-release
    case $ID in
        debian|ubuntu)
            # Debian-based systems
            echo "Installing required Python modules for Debian-based system..."
            sudo apt update
            sudo apt install -y python3-pip python3-xlib
            sudo pip3 install termcolor pyautogui
            echo "Installation complete."
            ;;
        arch)
            # Arch-based systems
            echo "Installing required Python modules for Arch-based system..."
            sudo pacman -S python-pip python-xlib python-pyautogui python-termcolor
            echo "Installation complete."
            ;;
        *)
            echo "Unsupported distribution: $ID"
            exit 1
            ;;
    esac
else
    echo "Unable to detect Linux distribution. Exiting."
    exit 1
fi

echo "Have fun!"