#!/bin/bash
# ==========================================
echo "5 4 * * * root clearlog && sslh-fix-reboot" >> /etc/crontab
echo "5 5 * * * root clearlog && sslh-fix-reboot" >> /etc/crontab
