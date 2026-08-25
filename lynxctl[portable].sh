#!/bin/bash
# LinuxCTL
#Portable Version
#Designed For Msh
#Designer:MPC(Mehrad PC.)
Version=3
Branch=Stable
case "$1" in
up)
#!/bin/bash
#LinuxCTL Uptade&Upgrade
echo "This The Portable(Desgined For Test/Msh) Version Of LynxCTL.It May Unstable.Please Use The GitHub Version"
if [[ -f /usr/bin/pacman ]]; then
echo "Founded PacMan On Your System"
sudo pacman -Syu
elif [[ -f /usr/bin/dnf ]]; then 
echo "Founded DNF On Your System"
sudo dnf update && sudo dnf Upgrade
elif [[ -f /usr/bin/apt ]]; then
echo "Founded APT On Your System"
sudo apt update && sudo apt Upgrade
elif [[ -f /usr/bin/zypper ]]; then
echo "Founded Zypper On Your System"
sudo zypper ref
sudo zypper up
sudo zypper dup
fi
;;
info)
echo "This The Portable(Desgined For Test/Msh) Version Of LynxCTL.It May Unstable.Please Use The GitHub Version"
#!/bin/bash
# LinuxCTL INFO
lspci 
lscpu
swapon
neofetch
fastfetch
free
hostname
hostnamectl
lsblk -f
du -sh
du 
df -h

;;
log)
echo "This The Portable(Desgined For Test/Msh) Version Of LynxCTL.It May Unstable.Please Use The GitHub Version"
#!/bin/bash
#LinuxCTL LOG_MANAGER

while true; do
    echo "
ooooo             oooooooo8     ooooo           oooo     oooo
 888            o888     88      888             8888o   888 
 888            888              888             88 888o8 88 
 888      o ooo 888o     oo ooo  888      o ooo  88  888  88 
o888ooooo88 888  888oooo88  888 o888ooooo88 888 o88o  8  o88o
"
echo "Welcome To LynxCTL Log Manager"
echo " Please Choose An Option:"
echo "
1.All Logs
2.Last Boot Logs
3.Live Logs
4.Kernel Logs
5.Recent Critical Logs
6.Boot Errors
7.Disk Logs
8.Disk usage
9.List Boots
0.Exit"
read -rp ">>" choice

    case "$choice" in
        1)
            journalctl | less
            ;;
        2)
            journalctl -b -1 | less
            ;;
        3)
            journalctl -f
            ;;
        4)
            journalctl -k | less
            ;;
        5)
            journalctl -xe | less
            ;;
        6)
            journalctl -p err -b | less
            ;;
        7)
            journalctl --disk-usage
            
            ;;
        8)
            df -h | less
            ;;
        9)
            journalctl --list-boots | less
            ;;
        0|"")
            exit 0
            ;;
    esac
done

;;
server)
#!/bin/bash
# LynxCTL Server Manager
echo "This The Portable(Desgined For Test/Msh) Version Of LynxCTL.It May Unstable.Please Use The GitHub Version"
echo "Welcome To LynxCTL Server Manager"

while true; do
    echo "
1. Docker
2. Apache
3. Nginx
4. Server Info
5.exit
"

    read -rp ">>> " cmd arg arg2

    case "$cmd" in
        1)
            #!/bin/bash
#LynxCTL Server->Docker
echo "
1.Docker Containers
2.Log
3.Login
4.Start
"
read -rp ">>" docker arg
case "$docker" in
1)
sudo docker ps | less
;;
2)
sudo docker log $arg || echo "Docker Need An Arg"
;;
3)
sudo docker exec -it $arg sh
;;
4)
sudo docker run -d -p 8080:80 $arg
;;
esac
            ;;
        2)
            #!/bin/bash
# LynxCTL Server->Apache Config
echo "
1.Apache : Edit With Vim
2.Apache : Edit With Nano
3.Apache Config File
4.Status
5.Disable
6.Enable
7.Start
8.Stop
"
read -rp ">>" apache 
case "$apache" in
1)
sudo vim  /etc/apache2/httpd.conf
;;
2)
sudo nano  /etc/apache2/httpd.conf
;;
3)
sudo cat  /etc/apache2/httpd.conf | less
;;
4)
sudo systemctl status apache2 || sudo systemctl status httpd
;;
5)
sudo systemctl disable apache2 || sudo systemctl disable httpd
;;
6)
sudo systemctl enable apache2 || sudo systemctl enable httpd
;;
7)
sudo systemctl start apache2 || sudo systemctl start httpd
;;
8)
sudo systemctl stop apache2 || sudo systemctl stop httpd
esac
            ;;
        3)
            #!/bin/bash
#LynxCTL Server->Nginx
echo "
1.Nginx Config Edit With Vim
2.Nginx Config Edit With Nano
3.Nginx Config
4.Nginx Reload
5.Status
6.Disable
7.Enable
8.Start
9.Stop
"
read -rp ">>" nginx
case "$nginx" in
1)
sudo vim /etc/nginx/nginx.conf
;;
2)
sudo nano /etc/nginx/nginx.conf
;;
3)
sudo cat /etc/nginx/nginx.conf | less
;;
4)
nginx -t reload
;;
5)
sudo systemctl status nginx
;;
6)
sudo systemctl disable nginx
;;
7)
sudo systemctl enable nginx
;;
8)
sudo systemctl start nginx
;;
9)
sudo systemctl stop nginx
;;
esac
            ;;
        4)
            #!/bin/bash
#LynxCTL Server->ServerInfo
cat /etc/os-release | grep PRE  
cat /etc/os-release | grep ID
            ;;
        5)
         exit    
    esac
done
;;

monitor)
htop || gtop || top
echo "This The Portable(Desgined For Test/Msh) Version Of LynxCTL.It May Unstable.Please Use The GitHub Version"
;;
in)
echo "This The Portable(Desgined For Test/Msh) Version Of LynxCTL.It May Unstable.Please Use The GitHub Version"
if [[ -f /usr/bin/pacman ]]; then
echo "Founded PacMan On Your System"
sudo pacman -S "$2"
elif [[ -f /usr/bin/dnf ]]; then 
echo "Founded DNF On Your System"
sudo dnf in "$2"
elif [[ -f /usr/bin/apt ]]; then
echo "Founded APT On Your System"
sudo apt install "$2"
elif [[ -f /usr/bin/zypper ]]; then
echo "Founded Zypper On Your System"
sudo zypper in "$2"
fi
;;
remove)
echo "This The Portable(Desgined For Test/Msh) Version Of LynxCTL.It May Unstable.Please Use The GitHub Version"
if [[ -f /usr/bin/pacman ]]; then
echo "Founded PacMan On Your System"
sudo pacman -R "$2"
elif [[ -f /usr/bin/dnf ]]; then 
echo "Founded DNF On Your System"
sudo dnf remove "$2"
elif [[ -f /usr/bin/apt ]]; then
echo "Founded APT On Your System"
sudo apt remove "$2"
elif [[ -f /usr/bin/zypper ]]; then
echo "Founded Zypper On Your System"
sudo zypper remove "$2"
fi
;;
*)
#!/bin/bash
#LinuxCTL OTHER 
echo "
ooooo                                           oooooooo8 ooooooooooo ooooo      
 888      oooo   oooo oo oooooo   oooo   oooo o888     88 88  888  88  888       
 888       888   888   888   888    888o888   888             888      888       
 888      o 888 888    888   888    o88 88o   888o     oo     888      888      o
o888ooooo88   8888    o888o o888o o88o   o88o  888oooo88     o888o    o888ooooo88
           o8o888                                                                
           "
echo "LynxCTL Portable | Usage : [up,info,log,server,monitor,in]"
echo "This The Portable(Desgined For Test/Msh) Version Of LynxCTL.It May Unstable.Please Use The GitHub Version"

;;
esac
