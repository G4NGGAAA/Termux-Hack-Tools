#!/bin/bash

# Warna dan format teks untuk tampilan
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
CYAN='\033[0;36m'
RESET='\033[0m'

echo -e "${CYAN}Starting installation process...${RESET}"

# Update dan upgrade Termux
echo -e "${GREEN}Updating Termux...${RESET}"
pkg update && pkg upgrade -y

# Install Git jika belum terpasang
echo -e "${GREEN}Installing Git...${RESET}"
pkg install git -y

# Install dependensi umum
echo -e "${GREEN}Installing dependencies...${RESET}"
pkg install python python2 ruby perl curl wget -y
pkg install clang make gcc -y
pkg install git -y

# Install dependencies untuk Metasploit
echo -e "${GREEN}Installing Metasploit dependencies...${RESET}"
pkg install postgresql -y

# Install tools dari GitHub
echo -e "${CYAN}Cloning repositories for tools...${RESET}"

# Daftar repositori untuk tools
declare -a repos=(
  "https://github.com/Tool-Scripts/TheFatRat.git"
  "https://github.com/XSStrike/XSStrike.git"
  "https://github.com/beefproject/beef.git"
  "https://github.com/rapid7/metasploit-framework.git"
  "https://github.com/aircrack-ng/aircrack-ng.git"
  "https://github.com/vanhauser-thc/thc-hydra.git"
  "https://github.com/robertdavidgraham/masscan.git"
  "https://github.com/trustedsec/social-engineer-toolkit.git"
  "https://github.com/sullo/nikto.git"
  "https://github.com/magnumripper/JohnTheRipper.git"
  "https://github.com/sqlmapproject/sqlmap.git"
  "https://github.com/nmap/nmap.git"
  "https://github.com/wireshark/wireshark.git"
  "https://github.com/Ettercap/ettercap.git"
  "https://github.com/PowerShellMafia/Dr0p1t.git"
  "https://github.com/iphelix/dnschef.git"
  "https://github.com/lanmaster53/recon-ng.git"
  "https://github.com/stealthcopter/Firewalk.git"
)

# Meng-clone semua repositori
for repo in "${repos[@]}"; do
  echo -e "${CYAN}Cloning repository: ${repo}...${RESET}"
  git clone $repo
done

# Install tools tambahan jika diperlukan
echo -e "${GREEN}Installing additional tools and configurations...${RESET}"

# Install tools spesifik atau dependensi tambahan yang diperlukan oleh beberapa tools
cd metasploit-framework
echo -e "${CYAN}Setting up Metasploit...${RESET}"
bundle install

# Menyelesaikan setup untuk setiap tools jika perlu
cd ..
cd thefatrat
echo -e "${CYAN}Setting up TheFatRat...${RESET}"
chmod +x fatrat
cd ..

# Informasi tentang penyelesaian instalasi
echo -e "${GREEN}Installation complete!${RESET}"
echo -e "${CYAN}You can now run the tools from the main menu.${RESET}"

# Menampilkan menu utama setelah instalasi selesai
bash hacktools.sh
