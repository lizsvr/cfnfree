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
# ==================================================
# Link Hosting Kalian
# IPsec
akbarvpnsshipsec="raw.githubusercontent.com/lizsvr/project/main/ipsec"
# Shadowsock
akbarvpnsshshd="raw.githubusercontent.com/lizsvr/project/main/shadowsocks"
# SSH
akbarvpnssh="raw.githubusercontent.com/lizsvr/project/main/ssh"
# SSR
akbarvpnsshssr="raw.githubusercontent.com/lizsvr/project/main/ssr"
# SSTP
akbarvpnsshsstp="raw.githubusercontent.com/lizsvr/project/main/sstp"
# TROJANGO
akbarvpnsshtrogo="raw.githubusercontent.com/lizsvr/project/main/trojango"
# WireGuard
akbarvpnsshwireg="raw.githubusercontent.com/lizsvr/project/main/wireguard"
# XRAY
akbarvpnsshxray="raw.githubusercontent.com/lizsvr/project/main/xray"

# download script
cd /usr/bin
#Delete All Menu
# IPsec
rm -rf addl2tp 
rm -rf dell2tp 
rm -rf addpptp 
rm -rf delpptp 
rm -rf renewpptp
rm -rf renewl2tp
# shadowsocks
rm -rf addss 
rm -rf delss 
rm -rf cekss 
rm -rf renewss
#SSH
rm -rf addhost
rm -rf menu
rm -rf addssh
rm -rf trialssh
rm -rf delssh
rm -rf member
rm -rf delexp
rm -rf cekssh
rm -rf restart
rm -rf speedtest
rm -rf info
rm -rf about
rm -rf autokill
rm -rf tendang
rm -rf ceklim
rm -rf ram
rm -rf renewssh
rm -rf clearlog
rm -rf changeport
rm -rf portovpn
rm -rf portwg
rm -rf porttrojan
rm -rf portsstp
rm -rf portsquid
rm -rf portvlm
rm -rf wbmn
rm -rf xp
rm -rf swapkvm
# SSR
rm -rf ssr
rm -rf addssr
rm -rf delss
rm -rf renewssr
# SSTP
rm -rf addsstp
rm -rf delsstp
rm -rf ceksstp
rm -rf renewsstp
# TROJANGO
rm -rf addtrgo
rm -rf deltrgo
rm -rf renewtrgo
rm -rf  cektrgo
# WireGuard
rm -rf addwg
rm -rf delwg
rm -rf renewwg
# XRAY
rm -rf addvmess
rm -rf addvless
rm -rf addtrojan
rm -rf delv2ray
rm -rf delvless
rm -rf deltrojan
rm -rf cekvmess
rm -rf cekvless
rm -rf cektrojan
rm -rf renewvmess
rm -rf renewvless
rm -rf renewtrojan
rm -rf certv2ray
# TROJANGO
rm -rf addtrgo
rm -rf deltrgo
rm -rf renewtrgo
rm -rf cektrgo
#wireguard
rm -rf addwg
rm -rf delwg
rm -rf renewwg

#Redownload/Update All menu
#SSH
wget -O addhost "https://${akbarvpnssh}/addhost.sh"
wget -O about "https://${akbarvpnssh}/about.sh"
wget -O menu "https://${akbarvpnssh}/menu.sh"
wget -O addssh "https://${akbarvpnssh}/addssh.sh"
wget -O trialssh "https://${akbarvpnssh}/trialssh.sh"
wget -O delssh "https://${akbarvpnssh}/delssh.sh"
wget -O member "https://${akbarvpnssh}/member.sh"
wget -O delexp "https://${akbarvpnssh}/delexp.sh"
wget -O cekssh "https://${akbarvpnssh}/cekssh.sh"
wget -O restart "https://${akbarvpnssh}/restart.sh"
wget -O speedtest "https://${akbarvpnssh}/speedtest_cli.py"
wget -O info "https://${akbarvpnssh}/info.sh"
wget -O ram "https://${akbarvpnssh}/ram.sh"
wget -O renewssh "https://${akbarvpnssh}/renewssh.sh"
wget -O autokill "https://${akbarvpnssh}/autokill.sh"
wget -O ceklim "https://${akbarvpnssh}/ceklim.sh"
wget -O tendang "https://${akbarvpnssh}/tendang.sh"
wget -O clearlog "https://${akbarvpnssh}/clearlog.sh"
wget -O changeport "https://${akbarvpnssh}/changeport.sh"
wget -O portovpn "https://${akbarvpnssh}/portovpn.sh"
wget -O portwg "https://${akbarvpnssh}/portwg.sh"
wget -O porttrojan "https://${akbarvpnssh}/porttrojan.sh"
wget -O portsstp "https://${akbarvpnssh}/portsstp.sh"
wget -O portsquid "https://${akbarvpnssh}/portsquid.sh"
wget -O portvlm "https://${akbarvpnssh}/portvlm.sh"
wget -O wbmn "https://${akbarvpnssh}/webmin.sh"
wget -O xp "https://${akbarvpnssh}/xp.sh"
wget -O swapkvm "https://${akbarvpnssh}/swapkvm.sh"
# XRAY
wget -O addvmess "https://${akbarvpnsshxray}/addv2ray.sh"
wget -O addvless "https://${akbarvpnsshxray}/addvless.sh"
wget -O addtrojan "https://${akbarvpnsshxray}/addtrojan.sh"
wget -O delvmess "https://${akbarvpnsshxray}/delv2ray.sh"
wget -O delvless "https://${akbarvpnsshxray}/delvless.sh"
wget -O deltrojan "https://${akbarvpnsshxray}/deltrojan.sh"
wget -O cekvmess "https://${akbarvpnsshxray}/cekv2ray.sh"
wget -O cekvless "https://${akbarvpnsshxray}/cekvless.sh"
wget -O cektrojan "https://${akbarvpnsshxray}/cektrojan.sh"
wget -O renewvmess "https://${akbarvpnsshxray}/renewv2ray.sh"
wget -O renewvless "https://${akbarvpnsshxray}/renewvless.sh"
wget -O renewtrojan "https://${akbarvpnsshxray}/renewtrojan.sh"
wget -O certv2ray "https://${akbarvpnsshxray}/certv2ray.sh"
# TROJANGO
wget -O addtrgo "https://${akbarvpnsshtrogo}/addtrgo.sh"
wget -O deltrgo "https://${akbarvpnsshtrogo}/deltrgo.sh"
wget -O renewtrgo "https://${akbarvpnsshtrogo}/renewtrgo.sh"
wget -O cektrgo "https://${akbarvpnsshtrogo}/cektrgo.sh"
# IPsec
wget -O addl2tp "https://${akbarvpnsshipsec}/addl2tp.sh"
wget -O dell2tp "https://${akbarvpnsshipsec}/dell2tp.sh"
wget -O addpptp "https://${akbarvpnsshipsec}/addpptp.sh"
wget -O delpptp "https://${akbarvpnsshipsec}/delpptp.sh"
wget -O renewpptp "https://${akbarvpnsshipsec}/renewpptp.sh"
wget -O renewl2tp "https://${akbarvpnsshipsec}/renewl2tp.sh"
# Shadowsock
wget -O addss "https://${akbarvpnsshshd}/addss.sh"
wget -O delss "https://${akbarvpnsshshd}/delss.sh"
wget -O cekss "https://${akbarvpnsshshd}/cekss.sh"
wget -O renewss "https://${akbarvpnsshshd}/renewss.sh"
# SSR
wget -O ssr "https://${akbarvpnsshssr}/ssrmu.sh"
wget -O addssr "https://${akbarvpnsshssr}/addssr.sh"
wget -O delssr "https://${akbarvpnsshssr}/delssr.sh"
wget -O renewssr "https://${akbarvpnsshssr}/renewssr.sh"
# SSTP
wget -O addsstp "https://${akbarvpnsshsstp}/addsstp.sh"
wget -O delsstp "https://${akbarvpnsshsstp}/delsstp.sh"
wget -O ceksstp "https://${akbarvpnsshsstp}/ceksstp.sh"
wget -O renewsstp "https://${akbarvpnsshsstp}/renewsstp.sh"
# WireGuard
wget -O addwg "https://${akbarvpnsshwireg}/addwg.sh"
wget -O delwg "https://${akbarvpnsshwireg}/delwg.sh"
wget -O renewwg "https://${akbarvpnsshwireg}/renewwg.sh"
