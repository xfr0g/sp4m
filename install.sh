#!/bin/bash

# Detect the operating system
figlet -f slant SP4M
echo "        Hundred Laugh"
echo "\n"

if [ -f "/etc/os-release" ]; then
    source /etc/os-release
    case $ID_LIKE in
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
            echo "Unsupported distribution: $ID_LIKE"
            exit 1
            ;;
    esac
elif command -v termux &> /dev/null; then
    # Termux
    echo "Installing required Python modules for Termux..."
    pkg update
    pkg install -y python libx11
    pip install termcolor pyautogui
    echo "Installation complete."
else
    echo "Unable to detect the operating system. Exiting."
    exit 1
fi

echo "Have fun!"
