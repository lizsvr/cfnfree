#!/bin/bash
m="\033[0;1;36m"
y="\033[0;1;37m"
yy="\033[0;1;32m"
yl="\033[0;1;33m"
nw="\e[38;5;82m"
wh="\033[0m"
bred="\e[41m"
blue="\e[38;5;21m"
#fonts color
Green="\033[32m"
Red="\033[31m"
Yellow="\033[33m"
GreenBG="\033[42;37m"
RedBG="\033[41;37m"
Font="\033[0m"
#information
OK="${Green}[OK]${Font}"
Error="${Red}[Mistake]${Font}"
#pkg install ncurses-utils
#echo -e "Getting Information Please Wait...."
is_root() {
    if [ 0 == $UID ]; then
        echo -e "${OK} ${GreenBG} The current user is the root user..${Font}"
        sleep 1
        echo -e "Getting Information...."
    else
        echo -e "${Error} ${RedBG} Please switch to the root user and execute start-menu again ${Font}"
        exit 1
    fi
}
is_root
#pkg install ncurses-utils
ip=$(wget -qO- ipinfo.io/ip)
domainhost=$(cat /root/domain)
region=$(wget -qO- ipinfo.io/region)
isp=$(wget -qO- ipinfo.io/org)
timezone=$(wget -qO- ipinfo.io/timezone)
ossys=$(neofetch | grep "OS" | cut -d: -f2 | sed 's/ //g')
host=$(neofetch | grep "Host" | cut -d: -f2 | sed 's/ //g')
kernel=$(neofetch | grep "Kernel" | cut -d: -f2 | sed 's/ //g')
uptime=$(neofetch | grep "Uptime" | cut -d: -f2 | sed 's/ //g')
cpu=$(neofetch | grep "CPU" | cut -d: -f2 | sed 's/ //g')
memory=$(neofetch | grep "Memory" | cut -d: -f2 | sed 's/ //g')
echo -e "Getting Information..."
clear
# echo -e "$blue━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"$wh
# echo -e "$bred           SELAMAT DATANG            $wh"
# echo -e "$blue━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"$wh
# figlet LIZSVR | lolcat
# #echo -e "$wh"
# echo -e "Telegram : @liz_mine"
echo -e "$blue━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"$wh
echo -e "$bred          Informasi System           $wh"
echo -e "$blue━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"$wh
echo -e "$m IP Address :$wh $ip $wh"
echo -e "$m Domain :$wh $domainhost $wh"
echo -e "$m Region :$wh $region $wh"
echo -e "$m ISP :$wh $isp $wh"
echo -e "$m Host : $host $wh"
echo -e "$m CPU : $cpu $wh"
echo -e "$m Kernel : $kernel $wh"
echo -e "$m Up Time : $uptime $wh"
echo -e "$m OS System : $ossys $wh"
echo -e "$m Time Zone :$wh $timezone $wh"
echo -e "$m Date :$wh $(date +%A) $(date +%m-%d-%Y)"
echo -e "$m Memory : $memory $wh"
echo -e "$blue━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"$wh
echo -e "$bred           Service Status            $wh"
echo -e "$blue━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"$wh
#
#
sshs=$(systemctl status ssh | grep Active: | awk '{print $2}')
wstls=$(systemctl status ws-tls | grep Active: | awk '{print $2}')
wsnontls=$(systemctl status ws-nontls | grep Active: | awk '{print $2}')
ovpns=$(systemctl status openvpn-ohp | grep Active: | awk '{print $2}')
sttunl5=$(systemctl status stunnel5 | grep Active: | awk '{print $2}')
dropbears=$(systemctl status dropbear | grep Active: | awk '{print $2}')
nginxs=$(systemctl status nginx | grep Active: | awk '{print $2}')
crons=$(systemctl status cron | grep Active: | awk '{print $2}')
fails=$(systemctl status fail2ban | grep Active: | awk '{print $2}')
xrays=$(systemctl status xray | grep Active: | awk '{print $2}')
ell=active
#
#
if [ "$sshs" == "$ell" ]; then
echo -e " SSH                     :$Green [Running] $wh"
else
echo -e " SSH                     :$Red [Error] $wh"
fi
if [ "$wstls" == "$ell" ]; then
echo -e " Websocket TLS           :$Green [Running] $wh"
else
echo -e " Websocket TLS           :$Red [Error] $wh"
fi
if [ "$wsnontls" == "$ell" ]; then
echo -e " Websocket Non TLS       :$Green [Running] $wh"
else
echo -e " Websocket Non TLS       :$Red [Error] $wh"
fi
if [ "$ovpns" == "$ell" ]; then
echo -e " OpenVPN                 :$Green [Running] $wh"
else
echo -e " OpenVpn                 :$Red [Error] $wh"
fi
if [ "$sttunl5" == "$ell" ]; then
echo -e " Stunnel 5               :$Green [Running] $wh"
else
echo -e " Stunnel 5               :$Red [Error] $wh"
fi
if [ "$dropbears" == "$ell" ]; then
echo -e " Dropbear                :$Green [Running] $wh"
else
echo -e " Dropbear                :$Red [Error] $wh"
fi
if [ "$nginxs" == "$ell" ]; then
echo -e " Nginx                   :$Green [Running] $wh"
else
echo -e " Nginx                   :$Red [Error] $wh"
fi
if [ "$crons" == "$ell" ]; then
echo -e " Cron                    :$Green [Running] $wh"
else
echo -e " Cron                    :$Red [Error] $wh"
fi
if [ "$fails" == "$ell" ]; then
echo -e " Fail2ban                :$Green [Running] $wh"
else
echo -e " Fail2ban                :$Red [Error] $wh"
fi
if [ "$xrays" == "$ell" ]; then
echo -e " Xray/V2Ray              :$Green [Running] $wh"
else
echo -e " Xray/V2Ray              :$Red [Error] $wh"
fi
echo -e "$blue━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"$wh
echo -e "----------- Mod By LIZSVR -----------"
echo -e "$blue━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"$wh