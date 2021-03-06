#!/bin/bash
# Medusa Uninstaller for Swizzin
# Author: liara
user=$(cat /root/.master.info | cut -d: -f1)

systemctl disable medusa@${user}
systemctl stop medusa@${user}

sudo rm /etc/nginx/apps/medusa.conf > /dev/null 2>&1
sudo rm /etc/systemd/medusa@.service > /dev/null 2>&1
sudo rm /install/.medusa.lock
service nginx force-reload
rm -rf /home/${user}/.medusa



