#!/bin/bash
#installer Websocker tunneling 

cd
hosting=$(curl -sS https://raw.githubusercontent.com/Azigaming404/Autoscript-by-azi/main/domain)

apt install python -y

#Install Script Websocket-SSH Python
wget -O /usr/local/bin/edu-proxy https://raw.githubusercontent.com/Azigaming404/websocket/main/openssh.py && chmod +x /usr/local/bin/edu-proxy
wget -O /usr/local/bin/ws-dropbear vip.vpncode.biz.id/v1/Insshws/dropbear-ws.py.txt
wget -O /usr/local/bin/ws-stunnel vip.vpncode.biz.id/v1/Insshws/ws-stunnel.txt
#wget -O /usr/local/bin/edu-proxyovpn https://gitlab.com/hidessh/baru/-/raw/main/websocket-python/baru/ovpn.py && chmod +x /usr/local/bin/edu-proxyovpn

#izin permision
chmod +x /usr/local/bin/edu-proxy
chmod +x /usr/local/bin/ws-dropbear
chmod +x /usr/local/bin/ws-stunnel
chmod +x /usr/local/bin/edu-proxyovpn


#System Direcly dropbear Websocket-SSH Python

wget -O /etc/systemd/system/edu-proxy.service https://gitlab.com/hidessh/baru/-/raw/main/websocket-python/baru/http.service && chmod +x /etc/systemd/system/edu-proxy.service

#System Dropbear Websocket-SSH Python
wget -O /etc/systemd/system/ws-dropbear.service vip.vpncode.biz.id/v1/Insshws/service-wsdropbear.txt && chmod +x /etc/systemd/system/ws-dropbear.service

#System SSL/TLS Websocket-SSH Python
wget -O /etc/systemd/system/ws-stunnel.service vip.vpncode.biz.id/v1/Insshws/ws-stunnel.service.txt && chmod +x /etc/systemd/system/ws-stunnel.service

##System Websocket-OpenVPN Python
#wget -O /etc/systemd/system/edu-proxyovpn.service https://gitlab.com/hidessh/baru/-/raw/main/websocket-python/baru/ovpn.service && chmod +x /etc/systemd/system/edu-proxyovpn.service

#restart service
#
systemctl daemon-reload

#Enable & Start & Restart directly dropbear
#systemctl daemon-reload
#systemctl enable edu-proxy.service
#systemctl start edu-proxy.service
#systemctl restart edu-proxy.service

#Enable & Start & Restart ws-dropbear service
systemctl enable ws-dropbear.service
systemctl start ws-dropbear.service
systemctl restart ws-dropbear.service

#Enable & Start & Restart ws-openssh service
systemctl enable ws-stunnel.service
systemctl start ws-stunnel.service
systemctl restart ws-stunnel.service

#systemctl daemon-reload
#systemctl enable edu-proxyovpn.service
#systemctl start edu-proxyovpn.service
#systemctl restart edu-proxyovpn.service
clear
