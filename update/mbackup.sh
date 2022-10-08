#!/bin/bash
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
Green_font_prefix="\033[32m" && Red_font_prefix="\033[31m" && Green_background_prefix="\033[42;37m" && Red_background_prefix="\033[41;37m" && Font_color_suffix="\033[0m"
Info="${Green_font_prefix}[ON] ${Font_color_suffix}"
Error="${Red_font_prefix}[OFF]${Font_color_suffix}"
cek=$(grep -c -E "^# BEGIN_Backup" /etc/crontab)
if [[ "$cek" = "1" ]]; then
sts="${Info}"
else
sts="${Error}"
fi
#information
OK = "$ {
  Green
}[OK]$ {
  Font
}"
Error = "$ {
  Red
}[Mistake]$ {
  Font
}"
clear
echo -e "$BLUE╔═══════════════════════════════════════$BLUE╗"
echo -e "$BLUE║         $ORANGE ✶ Backup & Restore ✶      $BLUE   ║"
echo -e "$BLUE╠═══════════════════════════════════════$BLUE╣"
echo -e "$BLUE║---------------------------------------║"
echo -e "$BLUE╠➣$NC 1$NC. Add or Change Email Received      $BLUE║ "
echo -e "$BLUE╠➣$NC 2$NC. Change Email Sender $BLUE              ║ " 
echo -e "$BLUE╠➣$NC 3$NC. Start Auto Backup        $BLUE         ║ " 
echo -e "$BLUE╠➣$NC 4$NC. Stop Auto Backup        $BLUE          ║ " 
echo -e "$BLUE╠➣$NC 5$NC. Backup Manualy            $BLUE        ║ " 
echo -e "$BLUE╠➣$NC 6$NC. Test Send Mail           $BLUE         ║ " 
echo -e "$BLUE╠➣$NC 7$NC. Restore                     $BLUE      ║ " 
echo -e "$BLUE╠➣$NC 8$NC. Exit                        $BLUE      ║ " 
echo -e "$BLUE║---------------------------------------║"
echo -e "$BLUE╠➣ $NC Auto Backup Status $sts    $BLUE        ║"
echo -e "$BLUE╚═══════════════════════════════════════╝$NC"  
read -p "Select From Options [ 1 - 8 ] : " menu
echo -e ""
case $menu in
1)
addemail
;;
2)
changesend
;;
3)
startbackup
;;
4)
stopbackup
;;
5)
backup
;;
6)
testsend
;;
7)
restore
;;
8)
clear
exit
;;
*)
clear
menu
;;
esac
#
