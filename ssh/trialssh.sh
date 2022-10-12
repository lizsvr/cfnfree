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
#Getting user
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
source /var/lib/akbarstorevpn/ipvps.conf
if [[ "$IP" = "" ]]; then
domain=$(cat /etc/xray/domain)
else
domain=$IP
fi
clear
IP=$(wget -qO- ipinfo.io/ip);
ssl="$(cat ~/log-install.txt | grep -w "Stunnel5" | cut -d: -f2)"
sqd="$(cat ~/log-install.txt | grep -w "Squid" | cut -d: -f2)"
ovpn="$(netstat -nlpt | grep -i openvpn | grep -i 0.0.0.0 | awk '{print $4}' | cut -d: -f2)"
ovpn2="$(netstat -nlpu | grep -i openvpn | grep -i 0.0.0.0 | awk '{print $4}' | cut -d: -f2)"
Login=lizsvr-`</dev/urandom tr -dc X-Z0-9 | head -c4`
ws="$(cat ~/log-install.txt | grep -w "Websocket TLS" | cut -d: -f2| sed 's/ //g')"
ws2="$(cat ~/log-install.txt | grep -w "Websocket None TLS" | cut -d: -f2| sed 's/ //g')"
cfn=$(cat /var/lib/akbarstorevpn/cfndomain)
hari="1"
Pass=1
clear
#systemctl restart ws-tls
#systemctl restart ws-nontls
#systemctl restart ssh-ohp
#systemctl restart dropbear-ohp
#systemctl restart openvpn-ohp
useradd --expiredate `date -d "$hari days" +"%Y-%m-%d"` -s /bin/false -M $Login
exp="$(chage -l $Login | grep "Account expires" | awk -F": " '{print $2}')"
hariini=`date -d "0 days" +"%Y-%m-%d"`
expi=`date -d "$hari days" +"%Y-%m-%d"`
echo -e "$Pass\n$Pass\n"|passwd $Login &> /dev/null
history -c
clear
echo -e "Thank You For Using Our Services"
echo -e "====== SSH & OVPN Account ======"
echo -e "IP/Host       : $IP"
echo -e "Domain        : ${domain}"
echo -e "CloudFront    : $cfn"
echo -e "Username      : $Login"
echo -e "Password      : $Pass"
echo -e ""
echo -e "======== Running On Port ======="
echo -e "Dropbear      : 109, 143"
echo -e "SSL/TLS       :$ssl"
echo -e "SSH WS SSL    : $ws"
echo -e "SSH WS No SSL : $ws2"
echo -e "Ovpn Ws       : 2086"
echo -e "Port TCP      : $ovpn"
echo -e "Port UDP      : $ovpn2"
echo -e "Port SSL      : 990"
echo -e ""
echo -e "========== Ovpn Config =========="
echo -e "OVPN TCP   : http://$IP:89/tcp.ovpn"
echo -e "OVPN UDP   : http://$IP:89/udp.ovpn"
echo -e "OVPN SSL   : http://$IP:89/ssl.ovpn"
echo -e "BadVpn     : 7100-7200-7300"
echo -e "Created    : $hariini"
echo -e "Expired    : $expi"
echo -e ""
echo -e "====== Payload Websocket TLS ======"
echo -e "GET wss://bug.com [protocol][crlf]Host: ${domain}[crlf]Connection: Upgrade[crlf]Upgrade: websocket[crlf][crlf] \n"
echo -e "== Payload Websocket CloudFront =="
echo -e "GET / HTTP/1.1[crlf]Host: [host_port][crlf]Connection: Upgrade[crlf]User-Agent: [ua][crlf]Upgrade: websocket[crlf][crlf] \n"