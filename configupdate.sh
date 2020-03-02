#!/bin/sh
#Script by FordSenpai


# initializing var
MYIP=$(wget -qO- ipv4.icanhazip.com);
MYIP2="s/xxxxxxxxx/$MYIP/g";

#remove old configs and add fakepage

rm /home/vps/public_html/*
cd /home/vps/public_html
wget https://raw.githubusercontent.com/johndesu090/johnfordtv/master/spage.zip
unzip spage.zip
cd

#Reconfigure openvpn configs

cat > /home/vps/public_html/sun-tuctc.ovpn <<-END
# JohnFordTV's VPN Premium Script
# © Github.com/johndesu090
# Official Repository: https://github.com/johndesu090/AutoScriptDS
# For Updates, Suggestions, and Bug Reports, Join to my Messenger Groupchat(VPS Owners): https://m.me/join/AbbHxIHfrY9SmoBO
# For Donations, Im accepting prepaid loads or PayMaya transactions:
# Smart: 09206200840
# SUN: 09234095648
# Thanks for using this script, Enjoy Highspeed OpenVPN Service
auth-user-pass
client
dev tun
proto tcp-client
remote viber.com.edgekey.net.$MYIP.johnfordtv.tech 110
nobind
persist-key
persist-tun
comp-lzo
keepalive 10 120
tls-client
remote-cert-tls server
verb 3
auth-user-pass
cipher none
auth none
auth-nocache
auth-retry interact
connect-retry 0 1
nice -20
reneg-sec 0
redirect-gateway def1
dhcp-option DNS 1.1.1.1
dhcp-option DNS 1.0.0.1

END
echo '<ca>' >> /home/vps/public_html/sun-tuctc.ovpn
cat /etc/openvpn/ca.crt >> /home/vps/public_html/sun-tuctc.ovpn
echo '</ca>' >> /home/vps/public_html/sun-tuctc.ovpn

cat > /home/vps/public_html/noload.ovpn <<-END
# JohnFordTV's VPN Premium Script
# © Github.com/johndesu090
# Official Repository: https://github.com/johndesu090/AutoScriptDS
# For Updates, Suggestions, and Bug Reports, Join to my Messenger Groupchat(VPS Owners): https://m.me/join/AbbHxIHfrY9SmoBO
# For Donations, Im accepting prepaid loads or GCash transactions:
# Smart: 09206200840
# Facebook: https://fb.me/johndesu090
# Thanks for using this script, Enjoy Highspeed OpenVPN Service
auth-user-pass
client
dev tun
proto tcp-client
remote $MYIP 110
persist-key
persist-tun
comp-lzo
bind
float
remote-cert-tls server
verb 3
auth-user-pass
redirect-gateway def1
cipher none
auth none
auth-nocache
auth-retry interact
connect-retry 0 1
nice -20
reneg-sec 0
dhcp-option DNS 1.1.1.1
dhcp-option DNS 1.0.0.1
END
echo '<ca>' >> /home/vps/public_html/noload.ovpn
cat /etc/openvpn/ca.crt >> /home/vps/public_html/noload.ovpn
echo '</ca>' >> /home/vps/public_html/noload.ovpn

cat > /home/vps/public_html/fixplan.ovpn <<-END
# JohnFordTV's VPN Premium Script
# © Github.com/johndesu090
# Official Repository: https://github.com/johndesu090/AutoScriptDS
# For Updates, Suggestions, and Bug Reports, Join to my Messenger Groupchat(VPS Owners): https://m.me/join/AbbHxIHfrY9SmoBO
# For Donations, Im accepting prepaid loads or GCash transactions:
# Smart: 09206200840
# Facebook: https://fb.me/johndesu090
# Thanks for using this script, Enjoy Highspeed OpenVPN Service
auth-user-pass
client
dev tun
proto tcp-client
remote $MYIP 110
nobind
persist-key
persist-tun
comp-lzo
keepalive 10 120
tls-client
remote-cert-tls server
verb 3
auth-user-pass
cipher none
auth none
auth-nocache
auth-retry interact
connect-retry 0 1
nice -20
reneg-sec 0
redirect-gateway def1
dhcp-option DNS 1.1.1.1
dhcp-option DNS 1.0.0.1
http-proxy $MYIP 3356
http-proxy-option VERSION 1.1
http-proxy-option CUSTOM-HEADER ""
http-proxy-option CUSTOM-HEADER "POST https://www.facebook.com HTTP/1.1"
END
echo '<ca>' >> /home/vps/public_html/fixplan.ovpn
cat /etc/openvpn/ca.crt >> /home/vps/public_html/fixplan.ovpn
echo '</ca>' >> /home/vps/public_html/fixplan.ovpn

cat > /home/vps/public_html/default.ovpn <<-END
# JohnFordTV's VPN Premium Script
# © Github.com/johndesu090
# Official Repository: https://github.com/johndesu090/AutoScriptDS
# For Updates, Suggestions, and Bug Reports, Join to my Messenger Groupchat(VPS Owners): https://m.me/join/AbbHxIHfrY9SmoBO
# For Donations, Im accepting prepaid loads or GCash transactions:
# Smart: 09206200840
# Facebook: https://fb.me/johndesu090
# Thanks for using this script, Enjoy Highspeed OpenVPN Service
auth-user-pass
client
dev tun
proto tcp-client
remote $MYIP 110
nobind
persist-key
persist-tun
comp-lzo
keepalive 10 120
tls-client
remote-cert-tls server
verb 3
auth-user-pass
cipher none
auth none
auth-nocache
auth-retry interact
connect-retry 0 1
reneg-sec 0
redirect-gateway def1
dhcp-option DNS 1.1.1.1
dhcp-option DNS 1.0.0.1
END
echo '<ca>' >> /home/vps/public_html/default.ovpn
cat /etc/openvpn/ca.crt >> /home/vps/public_html/default.ovpn
echo '</ca>' >> /home/vps/public_html/default.ovpn

cat > /home/vps/public_html/tu200.ovpn <<-END
# JohnFordTV's VPN Premium Script
# © Github.com/johndesu090
# Official Repository: https://github.com/johndesu090/AutoScriptDS
# For Updates, Suggestions, and Bug Reports, Join to my Messenger Groupchat(VPS Owners): https://m.me/join/AbbHxIHfrY9SmoBO
# For Donations, Im accepting prepaid loads or GCash transactions:
# Smart: 09206200840
# Facebook: https://fb.me/johndesu090
# Thanks for using this script, Enjoy Highspeed OpenVPN Service
auth-user-pass
client
dev tun
proto tcp-client
remote $MYIP 110
nobind
persist-key
persist-tun
comp-lzo
keepalive 10 120
tls-client
remote-cert-tls server
verb 3
auth-user-pass
cipher none
auth none
auth-nocache
auth-retry interact
connect-retry 0 1
nice -20
reneg-sec 0
redirect-gateway def1
dhcp-option DNS 1.1.1.1
dhcp-option DNS 1.0.0.1
http-proxy $MYIP 3355
http-proxy-option CUSTOM-HEADER CONNECT HTTP/1.0
http-proxy-option CUSTOM-HEADER Host line.telegram.me
http-proxy-option CUSTOM-HEADER X-Online-Host line.telegram.me
http-proxy-option CUSTOM-HEADER X-Forward-Host line.telegram.me
http-proxy-option CUSTOM-HEADER Connection Keep-Alive
END
echo '<ca>' >> /home/vps/public_html/tu200.ovpn
cat /etc/openvpn/ca.crt >> /home/vps/public_html/tu200.ovpn
echo '</ca>' >> /home/vps/public_html/tu200.ovpn

cat > /home/vps/public_html/gtmfbig.ovpn <<-END
# JohnFordTV's VPN Premium Script
# © Github.com/johndesu090
# Official Repository: https://github.com/johndesu090/AutoScriptDS
# For Updates, Suggestions, and Bug Reports, Join to my Messenger Groupchat(VPS Owners): https://m.me/join/AbbHxIHfrY9SmoBO
# For Donations, Im accepting prepaid loads or GCash transactions:
# Smart: 09206200840
# Facebook: https://fb.me/johndesu090
# Thanks for using this script, Enjoy Highspeed OpenVPN Service
auth-user-pass
client
dev tun
proto tcp-client
remote $MYIP 110
nobind
persist-key
persist-tun
comp-lzo
keepalive 10 120
tls-client
remote-cert-tls server
verb 3
auth-user-pass
cipher none
auth none
auth-nocache
auth-retry interact
connect-retry 0 1
nice -20
reneg-sec 0
redirect-gateway def1
dhcp-option DNS 1.1.1.1
dhcp-option DNS 1.0.0.1
http-proxy $MYIP 3356
http-proxy-option CUSTOM-HEADER CONNECT HTTP/1.0
http-proxy-option CUSTOM-HEADER Host johnford.googleapis.com
http-proxy-option CUSTOM-HEADER X-Online-Host johnford.googleapis.com
http-proxy-option CUSTOM-HEADER X-Forward-Host johnford.googleapis.com
http-proxy-option CUSTOM-HEADER Connection Keep-Alive
END
echo '<ca>' >> /home/vps/public_html/gtmfbig.ovpn
cat /etc/openvpn/ca.crt >> /home/vps/public_html/gtmfbig.ovpn
echo '</ca>' >> /home/vps/public_html/gtmfbig.ovpn

cat > /home/vps/public_html/sunfreeyt.ovpn <<-END
# JohnFordTV's VPN Premium Script
# © Github.com/johndesu090
# Official Repository: https://github.com/johndesu090/AutoScriptDS
# For Updates, Suggestions, and Bug Reports, Join to my Messenger Groupchat(VPS Owners): https://m.me/join/AbbHxIHfrY9SmoBO
# For Donations, Im accepting prepaid loads or GCash transactions:
# Smart: 09206200840
# Facebook: https://fb.me/johndesu090
# Thanks for using this script, Enjoy Highspeed OpenVPN Service
auth-user-pass
client
dev tun
proto tcp
remote $MYIP 110
nobind
persist-key
persist-tun
comp-lzo
keepalive 10 120
tls-client
remote-cert-tls server
verb 3
auth-user-pass
cipher none
auth none
auth-nocache
auth-retry interact
connect-retry 0 1
nice -20
reneg-sec 0
redirect-gateway def1
dhcp-option DNS 1.1.1.1
dhcp-option DNS 1.0.0.1
http-proxy $MYIP 8085
http-proxy-option CUSTOM-HEADER CONNECT HTTP/1.0
http-proxy-option CUSTOM-HEADER Host data.iflix.com
http-proxy-option CUSTOM-HEADER X-Online-Host data.iflix.com
http-proxy-option CUSTOM-HEADER X-Forward-Host data.iflix.com
http-proxy-option CUSTOM-HEADER Connection Keep-Alive
END
echo '<ca>' >> /home/vps/public_html/sunfreeyt.ovpn
cat /etc/openvpn/ca.crt >> /home/vps/public_html/sunfreeyt.ovpn
echo '</ca>' >> /home/vps/public_html/sunfreeyt.ovpn

cat > /home/vps/public_html/OpenVPN-SSL.ovpn <<-END
# JohnFordTV's VPN Premium Script
# © Github.com/johndesu090
# Official Repository: https://github.com/johndesu090/AutoScriptDS
# For Updates, Suggestions, and Bug Reports, Join to my Messenger Groupchat(VPS Owners): https://m.me/join/AbbHxIHfrY9SmoBO
# For Donations, Im accepting prepaid loads or GCash transactions:
# Smart: 09206200840
# Facebook: https://fb.me/johndesu090
# Thanks for using this script, Enjoy Highspeed OpenVPN Service
auth-user-pass
client
dev tun
proto tcp
remote 127.0.0.1 110
route $MYIP 255.255.255.255 net_gateway
nobind
persist-key
persist-tun
comp-lzo
keepalive 10 120
tls-client
remote-cert-tls server
verb 3
auth-user-pass
cipher none
auth none
auth-nocache
auth-retry interact
connect-retry 0 1
nice -20
reneg-sec 0
redirect-gateway def1
dhcp-option DNS 1.1.1.1
dhcp-option DNS 1.0.0.1
END
echo '<ca>' >> /home/vps/public_html/OpenVPN-SSL.ovpn
cat /etc/openvpn/ca.crt >> /home/vps/public_html/OpenVPN-SSL.ovpn
echo '</ca>' >> /home/vps/public_html/OpenVPN-SSL.ovpn

cat > /home/vps/public_html/JFTV-WG.conf <<-END
# JohnFordTV's VPN Premium Script
# © Github.com/johndesu090
# Official Repository: https://github.com/johndesu090/AutoScriptDS
# For Updates, Suggestions, and Bug Reports, Join to my Messenger Groupchat(VPS Owners): https://m.me/join/AbbHxIHfrY9SmoBO
# For Donations, Im accepting prepaid loads or GCash transactions:
# Smart: 09206200840
# Facebook: https://fb.me/johndesu090
# Thanks for using this script, Enjoy Highspeed OpenVPN Service
[Interface]
PrivateKey = mP0EfgBeD0vcbx91bNamvsZF8EZkBIasYE3FvuJUw2I=
DNS = 9.9.9.9, 149.112.112.112
Address = 172.16.0.2
[Peer]
PublicKey = bmXOC+F1FxEMF9dyiK2H5/1SUtzH0JuVo51h2wPfgyo=
AllowedIPs = 0.0.0.0/0
AllowedIPs = ::/0
Endpoint = engage.johnfordtv.ga:2408
END
echo '<ca>' >> /home/vps/public_html/JFTV-WG.conf
cat /etc/openvpn/ca.crt >> /home/vps/public_html/JFTV-WG.conf
echo '</ca>' >> /home/vps/public_html/JFTV-WG.conf

cat > /home/vps/public_html/stunnel.conf <<-END
client = yes
debug = 6
[openvpn]
accept = 127.0.0.1:110
connect = $MYIP:587
TIMEOUTclose = 0
verify = 0
sni = www.viber.com.edgekey.net
END

#compress configs
cd /home/vps/public_html
zip configs.zip sun-tuctc.ovpn fixplan.ovpn sunfreeyt.ovpn default.ovpn gtmfbig.ovpn tu200.ovpn noload.ovpn

#clearing history
history -c
rm -rf /root/*
cd /root
clear
echo "OpenVPN Configs Update Completed!!"
echo "--------------------------- Configuration Setup Server -------------------------"
echo "                            Debian Premium Script                               "
echo "                                 -FordSenpai-                                   "
echo "--------------------------------------------------------------------------------"
echo "   - Download Config OpenVPN : http://$MYIP/configs.zip"
sleep 5
