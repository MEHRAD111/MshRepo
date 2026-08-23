#!/bin/bash

# Auto-Remove-VMware-Tools-Linux.sh

# Check root
if [[ $EUID -ne 0 ]]; then
  echo "Please run this script as root (sudo)."
  exit 1
fi

read -p "Do you want to continue? (yes/no): " answer
if [[ "$answer" != "yes" ]]; then
  echo "Uninstall canceled."
  exit 1
fi

UNINSTALLER="/usr/bin/vmware-uninstall-tools.pl"

if [[ ! -f "$UNINSTALLER" ]]; then
  echo "VMware Tools uninstaller not found!"
  exit 1
fi

chmod +x "$UNINSTALLER"
"$UNINSTALLER"

echo "Uninstall complete. Rebooting in 10 seconds..."

for i in {10..1}; do
  echo "$i"
  sleep 1
done

reboot
