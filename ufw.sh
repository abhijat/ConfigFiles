sudo ufw enable
sudo ufw --force reset
sudo ufw default deny incoming
sudo ufw default deny outgoing
sudo ufw allow out on tun0
sudo ufw allow out on wlp3s0 to any port 53,1197,1198 proto udp
sudo ufw allow from 192.168.1.0/24
sudo ufw status verbose
