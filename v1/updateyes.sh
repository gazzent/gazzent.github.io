
#!/bin/bash

hosting=$(curl -sS https://raw.githubusercontent.com/Azigaming404/Autoscript-by-azi/main/domain)
LocalVersion=$(cat /etc/version)
version=$(curl -sS "https://vip.vpncode.biz.id/v1/versiupdate")

if [ "$LocalVersion" = "$version" ]; then
  echo
else
  clear
  figlet -f 3d "KINGSTORE" | lolcat
  echo "Update tersedia!!" | lolcat
  echo "MENU updatess" | lolcat

  spinner() {
    local pid=$1
    local delay=0.1
    local spinstr='|/-\'
    
    while [ "$(ps a | awk '{print $1}' | grep $pid)" ]; do
      local temp=${spinstr#?}
      printf " [%c] " "$spinstr"
      local spinstr=$temp${spinstr%"$temp"}
      sleep $delay
      printf "\b\b\b\b\b\b"
    done
    printf "    \b\b\b\b"
  }

  loading_animation() {
    local message=$1
    echo -n "$message"
    $2 &
    spinner $!
  }

  echo "Sedang mengupdate!!!"

  loading_animation "Loading" "sleep 5"

  fun_bar() {
    CMD[0]="$1"
    CMD[1]="$2"
    (
      [[ -e $HOME/fim ]] && rm $HOME/fim
      ${CMD[0]} -y >/dev/null 2>&1
      ${CMD[1]} -y >/dev/null 2>&1
      touch $HOME/fim
    ) >/dev/null 2>&1 &
    tput civis
    echo -ne "  \033[0;33mPlease Wait Loading \033[1;37m- \033[0;33m["
    while true; do
      for ((i = 0; i < 18; i++)); do
        echo -ne "\033[0;32m#"
        sleep 0.1s
      done
      [[ -e $HOME/fim ]] && rm $HOME/fim && break
      echo -e "\033[0;33m]"
      sleep 1s
      tput cuu1
      tput dl1
      echo -ne "  \033[0;33mPlease Wait Loading \033[1;37m- \033[0;33m["
    done
    echo -e "\033[0;33m]\033[1;37m -\033[1;32m OK !\033[1;37m"
    tput cnorm
  }
  fun_bar

  # Hapus semua file sebelum mengunduh versi baru
  rm -f /etc/version
  rm -f /usr/bin/menu
  rm -f /usr/bin/menu-ssh
  # Tambahkan perintah rm untuk file lainnya...

  wget -q -O /etc/version "https://vip.vpncode.biz.id/v1/versiupdate" && chmod +x /etc/version
  rm -f /usr/bin/menu
  wget -q -O /usr/bin/menu "https://vip.vpncode.biz.id/v1/menu.sh" && chmod 777 /usr/bin/menu
  rm -f /usr/bin/menu-ssh
  wget -q -O /usr/bin/menu-ssh "https://vip.vpncode.biz.id/v1/menu-ssh.sh" && chmod +x /usr/bin/menu-ssh

  rm -f /usr/bin/menu-vless
  wget -q -O /usr/bin/menu-vless "https://vip.vpncode.biz.id/v1/tes/menu-vless.sh"
  rm -f /usr/bin/menu-vmess
  wget -q -O /usr/bin/menu-vmess "https://vip.vpncode.biz.id/v1/tes/menu-vmess.sh"
  rm -f /usr/bin/menu-trojan
  wget -q -O /usr/bin/menu-trojan "https://vip.vpncode.biz.id/v1/tes/menu-trojan.sh"
  rm -f /usr/bin/usernew
  wget -q -O /usr/bin/usernew "https://vip.vpncode.biz.id/v1/menu/usernew.sh"

  chmod +x /usr/bin/menu-vmess
  chmod +x /usr/bin/menu-vless
  chmod +x /usr/bin/menu-trojan
  chmod +x /usr/bin/usernew

  rm -f /usr/bin/trial
  wget -q -O /usr/bin/trial "https://vip.vpncode.biz.id/v1/trial/trial.sh" && chmod +x /usr/bin/trial
  rm -f /usr/bin/trial-vmess
  wget -q -O /usr/bin/trial-vmess "https://vip.vpncode.biz.id/v1/trial/trial-vmess.sh" && chmod +x /usr/bin/trial-vmess
  rm -f /usr/bin/trial-trojan
  wget -q -O /usr/bin/trial-trojan "https://vip.vpncode.biz.id/v1/trial/trial-trojan.sh" && chmod +x /usr/bin/trial-trojan
  rm -f /usr/bin/trial-udp
  wget -q -O /usr/bin/trial-udp "https://vip.vpncode.biz.id/v1/trial/trial-udp.sh" && chmod +x /usr/bin/trial-udp
  rm -f /usr/bin/trial-vless
  wget -q -O /usr/bin/trial-vless "https://vip.vpncode.biz.id/v1/trial/trial-vless.sh" && chmod +x /usr/bin/trial-vless

  rm -f /usr/bin/add-vless
  wget -q -O /usr/bin/add-vless "https://vip.vpncode.biz.id/bot-v1/add-vless.sh" && chmod +x /usr/bin/add-vless
  rm -f /usr/bin/addtr
  wget -q -O /usr/bin/addtr "https://vip.vpncode.biz.id/bot-v1/addtr.sh" && chmod +x /usr/bin/addtr
  rm -f /usr/bin/addws
  wget -q -O /usr/bin/addws "https://vip.vpncode.biz.id/bot-v1/addws.sh" && chmod +x /usr/bin/addws
  rm -f /usr/bin/addss
  wget -q -O /usr/bin/addss "https://vip.vpncode.biz.id/bot-v1/addws.sh" && chmod +x /usr/bin/addss

wget -q -O /usr/bin/menu-trial "https://vip.vpncode.biz.id/v1/trial/trial-generator.sh" && chmod +x /usr/bin/menu-trial


touch /etc/trialxray.txt


wget -q -O /usr/bin/service-trial "https://vip.vpncode.biz.id/v1/service-trial.sh" && chmod +x /usr/bin/service-trial


cat >/etc/systemd/system/trial.service << EOF
[Unit]
Description=PT.cybervpn ltd.
ProjectAfter=network.target

[Service]
WorkingDirectory=/root
ExecStart=/usr/bin/service-trial
Restart=always

[Install]
WantedBy=multi-user.target
EOF
systemctl daemon-reload
systemctl restart trial
systemctl enable trial
systemctl restart trial


wget -O /usr/bin/mbackup "https://cybervpn.serv00.net/Autoscript-by-azi-main/backup/backup.sh" && chmod +x /usr/bin/mbackup

fi
