#!/bin/bash

#Auto-Vmware-Tools-Install-Linux

read -p "Do you want to continue? (yes/no): " answer
if [ "$answer" != "yes" ]; then
  echo "Installation canceled."
  exit 1
fi

sudo tar -xvf vmware.tar.gz

cd vmware-tools-distrib

sudo chmod +x vmware-install.pl

sudo ./vmware-install.pl

echo "Finished"
sleep 1
echo "10"
sleep 1
echo "9"
sleep 1
echo "8"
sleep 1
echo "7"
sleep 1
echo "6"
sleep 1
echo "5"
sleep 1
echo "4"
sleep 1
echo "3"
sleep 1
echo "2"
sleep 1
echo "1"
sleep 1
echo "0"
sleep 1
echo "Reboot"
sleep 1
sudo reboot