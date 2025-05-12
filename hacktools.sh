#!/bin/bash

# Warna dan format teks untuk tampilan
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
CYAN='\033[0;36m'
RESET='\033[0m'

# ASCII Art untuk Menu
cat << "EOF"
 ██████╗  █████╗ ███╗   ███╗██╗   ██╗ █████╗ ███╗   ██╗
██╔════╝ ██╔══██╗████╗ ████║██║   ██║██╔══██╗████╗  ██║
╚█████╗  ███████║██╔████╔██║██║   ██║███████║██╔██╗ ██║
 ╚═══██╗ ██╔══██║██║╚██╔╝██║██║   ██║██╔══██║██║╚██╗██║
██████╔╝ ██║  ██║██║ ╚═╝ ██║╚██████╔╝██║  ██║██║ ╚████║
╚═════╝  ╚═╝  ╚═╝╚═╝     ╚═╝ ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚════╝
EOF

echo -e "${CYAN}Welcome to the g4nggaaa HACK Tools Menu!${RESET}"
echo -e "${GREEN}[1] TheFatRat - Payload Generator${RESET}"
echo -e "${GREEN}[2] XSStrike - XSS Tool${RESET}"
echo -e "${GREEN}[3] BeEF - Browser Exploitation Framework${RESET}"
echo -e "${GREEN}[4] Metasploit - Exploitation Framework${RESET}"
echo -e "${GREEN}[5] Aircrack-ng - WiFi Cracking${RESET}"
echo -e "${GREEN}[6] Hydra - Brute Force Attacks${RESET}"
echo -e "${GREEN}[7] Masscan - Fast Port Scanning${RESET}"
echo -e "${GREEN}[8] Social-Engineer Toolkit (SET)${RESET}"
echo -e "${GREEN}[9] Nikto - Web Vulnerability Scanner${RESET}"
echo -e "${GREEN}[10] John The Ripper - Password Cracking${RESET}"
echo -e "${GREEN}[11] Sqlmap - SQL Injection Automation${RESET}"
echo -e "${GREEN}[12] Nmap - Network Scanning${RESET}"
echo -e "${GREEN}[13] Wireshark - Network Protocol Analyzer${RESET}"
echo -e "${GREEN}[14] Ettercap - Man in the Middle Attack${RESET}"
echo -e "${GREEN}[15] Dr0p1t - Payload Generator${RESET}"
echo -e "${GREEN}[16] Dnschef - DNS Spoofing${RESET}"
echo -e "${GREEN}[17] Recon-ng - Reconnaissance Framework${RESET}"
echo -e "${GREEN}[18] Firewalk - Network Firewall Analyzer${RESET}"
echo -e "${RED}[19] Exit${RESET}"

# Input untuk memilih opsi menu
read -p "Choose an option: " choice

# Fungsi untuk meng-clone tool jika belum ada
clone_tool() {
  TOOL_DIR=$1
  TOOL_REPO=$2

  # Cek apakah direktori tool sudah ada
  if [ ! -d "$TOOL_DIR" ]; then
    echo -e "${CYAN}Cloning $TOOL_DIR...${RESET}"
    git clone "$TOOL_REPO" "$TOOL_DIR"
  else
    echo -e "${CYAN}$TOOL_DIR sudah ada. Melanjutkan...${RESET}"
  fi
}

case $choice in
  1)
    clone_tool "TheFatRat" "https://github.com/YourRepo/TheFatRat"
    echo -e "${CYAN}Launching TheFatRat...${RESET}"
    cd TheFatRat && bash fatrat ;;
  2)
    clone_tool "XSStrike" "https://github.com/YourRepo/XSStrike"
    echo -e "${CYAN}Launching XSStrike...${RESET}"
    cd XSStrike && python3 xsstrike.py ;;
  3)
    clone_tool "beef-xss" "https://github.com/YourRepo/beef-xss"
    echo -e "${CYAN}Launching BeEF Framework...${RESET}"
    cd beef-xss && ruby beef ;;
  4)
    clone_tool "metasploit-framework" "https://github.com/YourRepo/metasploit-framework"
    echo -e "${CYAN}Launching Metasploit...${RESET}"
    cd metasploit-framework && ./msfconsole ;;
  5)
    clone_tool "aircrack-ng" "https://github.com/YourRepo/aircrack-ng"
    echo -e "${CYAN}Launching Aircrack-ng...${RESET}"
    cd aircrack-ng && ./airmon-ng ;;
  6)
    clone_tool "hydra" "https://github.com/YourRepo/hydra"
    echo -e "${CYAN}Launching Hydra...${RESET}"
    cd hydra && ./hydra ;;
  7)
    clone_tool "masscan" "https://github.com/YourRepo/masscan"
    echo -e "${CYAN}Launching Masscan...${RESET}"
    cd masscan && ./masscan ;;
  8)
    clone_tool "setool3" "https://github.com/YourRepo/setool3"
    echo -e "${CYAN}Launching Social-Engineer Toolkit...${RESET}"
    cd setool3 && python3 setool3.py ;;
  9)
    clone_tool "nikto" "https://github.com/YourRepo/nikto"
    echo -e "${CYAN}Launching Nikto...${RESET}"
    cd nikto && perl nikto.pl ;;
  10)
    clone_tool "john" "https://github.com/YourRepo/john"
    echo -e "${CYAN}Launching John The Ripper...${RESET}"
    cd john && ./john ;;
  11)
    clone_tool "sqlmap" "https://github.com/YourRepo/sqlmap"
    echo -e "${CYAN}Launching Sqlmap...${RESET}"
    cd sqlmap && python3 sqlmap.py ;;
  12)
    clone_tool "nmap" "https://github.com/YourRepo/nmap"
    echo -e "${CYAN}Launching Nmap...${RESET}"
    cd nmap && ./nmap ;;
  13)
    clone_tool "wireshark" "https://github.com/YourRepo/wireshark"
    echo -e "${CYAN}Launching Wireshark...${RESET}"
    cd wireshark && sudo ./wireshark ;;
  14)
    clone_tool "ettercap" "https://github.com/YourRepo/ettercap"
    echo -e "${CYAN}Launching Ettercap...${RESET}"
    cd ettercap && sudo ettercap -G ;;
  15)
    clone_tool "Dr0p1t" "https://github.com/YourRepo/Dr0p1t"
    echo -e "${CYAN}Launching Dr0p1t...${RESET}"
    cd Dr0p1t && python3 dr0p1t.py ;;
  16)
    clone_tool "dnschef" "https://github.com/YourRepo/dnschef"
    echo -e "${CYAN}Launching Dnschef...${RESET}"
    cd dnschef && sudo python3 dnschef.py ;;
  17)
    clone_tool "recon-ng" "https://github.com/YourRepo/recon-ng"
    echo -e "${CYAN}Launching Recon-ng...${RESET}"
    cd recon-ng && python3 recon-ng ;;
  18)
    clone_tool "firewalk" "https://github.com/YourRepo/firewalk"
    echo -e "${CYAN}Launching Firewalk...${RESET}"
    cd firewalk && sudo ./firewalk ;;
  19)
    echo -e "${RED}Exiting... Bye!${RESET}"
    exit 0 ;;
  *)
    echo -e "${YELLOW}Invalid option, please try again.${RESET}" ;;
esac
