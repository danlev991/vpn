apt update
apt install -y nano

iptables -P INPUT ACCEPT
iptables -P OUTPUT ACCEPT
iptables -P FORWARD ACCEPT
iptables -F

curl -O https://raw.githubusercontent.com/v2fly/fhs-install-v2ray/master/install-release.sh
bash install-release.sh
# systemctl start v2ray
systemctl enable v2ray
nano /usr/local/etc/v2ray/config.json

systemctl restart v2ray
