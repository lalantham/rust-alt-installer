#!/bin/bash

# Variable Define
RED="\e[31m"
GREEN="\e[32m"
MAGENTA="\e[35m"
BLUE="\e[34m"
ENDCOLOR="\e[0m"
bold=$(tput bold)
normal=$(tput sgr0)

echo -e "${bold}${BLUE}==================================== ${ENDCOLOR}${normal}"
echo -e "${bold}${RED}Bat, Exa, Procs Installation Started ${ENDCOLOR}${normal}"
echo -e "${bold}${BLUE}==================================== ${ENDCOLOR}${normal}"

echo " "

# Install Bat
wget -q https://github.com/sharkdp/bat/releases/download/v0.18.0/bat-v0.18.0-x86_64-unknown-linux-gnu.tar.gz
tar -xvf bat-v0.18.0-x86_64-unknown-linux-gnu.tar.gz
sudo cp bat-v0.18.0-x86_64-unknown-linux-gnu/bat /usr/bin/bat
rm -rf bat-v0.18.0-x86_64-unknown-linux-gnu bat-v0.18.0-x86_64-unknown-linux-gnu.tar.gz
echo -e "${bold}${GREEN}Bat Installation Complete${ENDCOLOR}${normal}"

# Install Exa
wget -q https://github.com/ogham/exa/releases/download/v0.10.1/exa-linux-x86_64-v0.10.1.zip
unzip exa-linux-x86_64-v0.10.1.zip
sudo cp bin/exa /usr/bin/exa
rm -rf exa-linux-x86_64-v0.10.1.zip bin/ completions/ man/
echo -e "${bold}${GREEN}Exa Installation Complete${ENDCOLOR}${normal}"

# Install Procs
wget -q https://github.com/dalance/procs/releases/download/v0.11.5/procs-v0.11.5-x86_64-lnx.zip
unzip procs-v0.11.5-x86_64-lnx.zip
sudo cp procs /usr/bin/procs
rm procs procs-v0.11.5-x86_64-lnx.zip
echo -e "${bold}${GREEN}Procs Installation Complete${ENDCOLOR}${normal}"

echo " "

echo -e "${bold}${MAGENTA}Add These Alias to Your bashrc or zshrc or config.fish ${ENDCOLOR}${normal}"
echo -e "${bold}${GREEN}alias ls='exa -l'${ENDCOLOR}${normal}"
echo -e "${bold}${GREEN}alias cat='bat'${ENDCOLOR}${normal}"
echo -e "${bold}${GREEN}alias ps='procs'${ENDCOLOR}${normal}"

echo " "

echo -e "${bold}${BLUE}====================================== ${ENDCOLOR}${normal}"
echo -e "${bold}${RED}Bat, Exa, Procs Installation Completed ${ENDCOLOR}${normal}"
echo -e "${bold}${BLUE}====================================== ${ENDCOLOR}${normal}"
