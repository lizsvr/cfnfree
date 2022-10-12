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
clear
# Link Hosting Kalian
akbarvpn="raw.githubusercontent.com/lizsvr/cfnfree/main/backup"

curl https://rclone.org/install.sh | bash
printf "q\n" | rclone config
wget -O /root/.config/rclone/rclone.conf "https://${akbarvpn}/rclone.conf"
git clone  https://github.com/magnific0/wondershaper.git
cd wondershaper
make install
cd
rm -rf wondershaper
echo > /home/limit
apt install msmtp-mta ca-certificates bsd-mailx -y
cat<<EOF>>/etc/msmtprc
defaults
tls on
tls_starttls on
tls_trust_file /etc/ssl/certs/ca-certificates.crt

account default
host smtp.gmail.com
port 587
auth on
user lizsvrbckup@gmail.com
from lizsvrbckup@gmail.com 
password yourpaswordapp
logfile ~/.msmtp.log
EOF
chown -R www-data:www-data /etc/msmtprc
cd /usr/bin
#wget -O autobackup "https://${akbarvpn}/autobackup.sh"
wget -O addemail "https://${akbarvpn}/addemail.sh"
wget -O changesend "https://${akbarvpn}/changesend.sh"
wget -O startbackup "https://${akbarvpn}/startbackup.sh"
wget -O stopbackup "https://${akbarvpn}/stopbackup.sh"
wget -O testsend "https://${akbarvpn}/testsend.sh"
wget -O backup "https://${akbarvpn}/backup.sh"
wget -O restore "https://${akbarvpn}/restore.sh"
wget -O strt "https://${akbarvpn}/strt.sh"
wget -O limitspeed "https://${akbarvpn}/limitspeed.sh"
chmod +x addemail
chmod +x changesend
chmod +x startbackup
chmod +x stopbackup
chmod +x testsend
chmod +x autobackup
chmod +x backup
chmod +x restore
chmod +x strt
chmod +x limitspeed
cd
rm -f /root/set-br.sh