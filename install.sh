#!/bin/bash
# Author: Piyush Acharya (ReAl_I)
# Date: 2021/07/14
# Usage: This is a simple Shell script to install some of my goto tools for recon.                                                               
apt install figlet > /dev/null 2>&1
figlet -c Installer script
echo "                                                          @Author: Piyush Acharya"
echo "                                                        https://github.com/realix01"
echo
while true; do
    read -p "Do you wish to upgrade your system? [Y/N]" yn
    echo
    case $yn in
        [Yy]* ) echo "+++++++++++++++Upgrading Your System+++++++++++++++++"; echo ; apt update && apt full-upgrade -y; break;;
        [Nn]* ) break;;
        * ) echo "Please answer yes or no.";;
    esac
done
echo
echo "[+] Installing GoLang"
apt install golang -y
echo
echo "[+] Installing Git"
apt install git
echo
echo "[+] Installing SqlMap"
apt install sqlmap
echo
echo "[+] Installing Nuclei"
GO111MODULE=on go get -v github.com/projectdiscovery/nuclei/v2/cmd/nuclei
echo
echo "[+] Moving nuclei to /opt directory"
mv /root/go/bin/nuclei /opt
echo
echo "[+] Installing Notify"
GO111MODULE=on go get -v github.com/projectdiscovery/notify/cmd/notify
echo
echo "[+] Moving notify to opt directory"
mv /root/go/bin/notify /opt
echo
echo "[+] Installing Nmap"
apt install nmap
echo
echo "[+] Installing amass"
apt install amass
echo
echo "[+] Installing naabu"
GO111MODULE=on go get -v github.com/projectdiscovery/naabu/v2/cmd/naabu
echo
echo "[+] Moving naabu to /opt directory"
mv /root/go/bin/naabu /opt
echo
echo "[+] Installing gau"
apt install getallurls
echo
echo "[+] Installing waybackurls"
go get github.com/tomnomnom/waybackurls
echo "+++++++++++++++++++++++DONE INSTALLING ALL THE TOOLS++++++++++++++++++++++++++"

