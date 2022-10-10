#!/bin/bash
# My Telegram : https://t.me/Akbar218
# ==========================================
# Color
RED='\033[0;31m'
NC='\033[0m'
GREEN='\033[0;32m'
ORANGE='\033[0;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
LIGHT='\033[0;37m'
# ==========================================
#Getting
MYIP=$(wget -qO- ipinfo.io/ip);
echo "Checking VPS"
IZIN=$(curl https://raw.githubusercontent.com/lizsvr/project/main/ipvps.txt | grep $MYIP | awk '{print $3}')
if [ $MYIP = $MYIP ]; then
echo -e "${NC}${GREEN}Permission Accepted...${NC}"
else
echo -e "${NC}${RED}Permission Denied!${NC}";
echo -e "${NC}${LIGHT}Please Contact Admin!!"
echo -e "${NC}${LIGHT}Telegram : https://t.me/liz_mine"
exit 0
fi
error1="${RED}[ERROR]${NC}"
success="${GREEN}[SUCCESS]${NC}"
clear
echo -e "========================="
read -rp "Masukan Domain/Host : " -e domain
echo -e "========================="
echo -e "${success} Please wait..."
mkdir -p /usr/bin/xray
mkdir -p /etc/xray
echo $domain >> /etc/xray/domain
echo $domain >> /root/domain
echo "IP=$domain" >> /var/lib/akbarstorevpn/ipvps.conf
echo "none" >> /var/lib/akbarstorevpn/cfndomain
sleep 5

# sleep 0.5
# domain=$(cat /etc/xray/domain)
# apt install curl socat xz-utils wget apt-transport-https gnupg gnupg2 gnupg1 dnsutils lsb-release -y 
# apt install socat cron bash-completion ntpdate -y
# ntpdate pool.ntp.org
# apt -y install chrony
# timedatectl set-ntp true
# systemctl enable chronyd && systemctl restart chronyd
# systemctl enable chrony && systemctl restart chrony
# timedatectl set-timezone Asia/Jakarta
# chronyc sourcestats -v
# chronyc tracking -v
# mkdir -p /etc/xray
# sudo lsof -t -i tcp:80 -s tcp:listen | sudo xargs kill
# cd /root/
# wget https://raw.githubusercontent.com/acmesh-official/acme.sh/master/acme.sh
# bash acme.sh --install
# rm acme.sh
# cd .acme.sh
# bash acme.sh --register-account -m senowahyu62@gmail.com
# bash acme.sh --issue --standalone -d $domain --force
# bash acme.sh --installcert -d $domain --fullchainpath /etc/xray/xray.crt --keypath /etc/xray/xray.key
# #service squid start
# sleep 3