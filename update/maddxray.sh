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
echo -e "$BLUE╔═══════════════════════════════════╦═══════════════════════════════════╗"
echo -e "$BLUE║ $ORANGE       ✶ Vmess Websocket ✶$BLUE        ║  $ORANGE      ✶ VLESS Websocket ✶     $BLUE   ║"              
echo -e "$BLUE║-----------------------------------║-----------------------------------║"
echo -e "$BLUE╠➣$NC 1. Create Account XRAYS Vmess$BLUE    ╠➣$NC 5. Create Account XRAYS VLESS $BLUE   ║ "              
echo -e "$BLUE╠➣$NC 2. Delete Account XRAYS Vmess$BLUE    ╠➣$NC 6. Delete Account XRAYS VLESS $BLUE   ║ "
echo -e "$BLUE╠➣$NC 3  Rennew Account XRAYS Vmess $BLUE   ╠➣$NC 7. Rennew Account XRAYS VLESS $BLUE   ║ " 
echo -e "$BLUE╠➣$NC 4. Check User Login XRAYS Vmess $BLUE ╠➣$NC 8. Check User Login XRAYS VLESS$BLUE  ║" 
echo -e "$BLUE║-----------------------------------║-----------------------------------║"
echo -e "$BLUE╚═══════════════════════════════════╩═══════════════════════════════════╝$NC"
echo -e "$BLUE╔═══════════════════════════════════╦═══════════════════════════════════╗"
echo -e "$BLUE║$ORANGE         ✶ X-RAY Trojan ✶$BLUE          ║$ORANGE       ✶ Trojan-GO Account ✶       $BLUE║" 
echo -e "$BLUE║-----------------------------------║-----------------------------------║"
echo -e "$BLUE╠➣$NC 9. Create Account Troja       $BLUE   ╠➣$NC 13. Create Trojan-GO Account$BLUE     ║"               
echo -e "$BLUE╠➣$NC 10. Delete Account Trojan      $BLUE  ╠➣$NC 14. Delete Trojan-GO Account$BLUE     ║"         
echo -e "$BLUE╠➣$NC 11. Rennew Account Trojan      $BLUE  ╠➣$NC 15. Rennew Trojan-GO Account$BLUE     ║"
echo -e "$BLUE╠➣$NC 12. Check User Login Trojan $BLUE     ╠➣$NC 16. Check User Login Trojan-GO$BLUE   ║"
echo -e "$BLUE║                                   ╠➣$NC 17. Renew Certificate XRAYS $BLUE     ║"
echo -e "$BLUE║                                   ╠➣$NC 18. Backt to menu$BLUE                ║"
echo -e "$BLUE║-----------------------------------║-----------------------------------║"
echo -e "$BLUE╚═══════════════════════════════════╩═══════════════════════════════════╝$NC"

read -p " ➣ Select From Options [ 1 - 18 ]:  " menu
echo -e ""
case $menu in
1)
addvmess
;;
2)
delvmess
;;
3)
renewvmess
;;
4)
cekvmess
;;
5)
addvless
;;
6)
delvless
;;
7)
renewvless
exit
;;
8)
cekvless
exit
;;
9)
addtrojan
;;
10)
deltrojan
;;
11)
renewtrojan
;;
12)
cektrojan
;;
13)
addtrgo
;;
14)
deltrgo
;;
15)
rennewtrgo
;;
16)
cektrgo
;;
17)
cerv2ray.sh
;;
18)
clear
exit
;;
*)
clear
bash menu.sh
;;
esac
#
