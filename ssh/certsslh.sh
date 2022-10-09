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
# Getting
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
clear
echo start
sleep 0.5
source /var/lib/akbarstorevpn/ipvps.conf
domain=$IP
systemctl enable xray.service
sudo lsof -t -i tcp:80 -s tcp:listen | sudo xargs kill
cd /root/
wget -O acme.sh https://raw.githubusercontent.com/acmesh-official/acme.sh/master/acme.sh
bash acme.sh --install
rm acme.sh
cd .acme.sh
echo "starting...., Port 80 Akan di Hentikan Saat Proses install Cert"
bash acme.sh --register-account -m senowahyu62@gmail.com
bash acme.sh --issue --standalone -d $domain --force
bash acme.sh --installcert -d $domain --fullchainpath /etc/xray/xray.crt --keypath /etc/xray/xray.key
restart
