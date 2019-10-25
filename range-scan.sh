function banner {
echo ""
echo "                      @@@@"
echo "                 @@@@@@@@/   by Whale"
echo "             @@@@@@@@@@@/@"
echo "           @@@@@@@@@@@@/@"
echo "         /@@@ (O) @@@@/@@"
echo "  @    / @@@     @@@z@@@@"
echo " /@@   @@@@    @@@@@@@@"
echo "|@@@\_/@@@@@@@@@@@@@@/"
echo "\@@@@@@@@@@@@@@@@@@@/  @"                                                     
echo " \@@@@@@@@@@@@@@@@@@@@@/"           
echo "  \@@@@@@@@@@@@@@@@@@"  
echo "   @@@@@@@@@@@@@@"  
echo "    @@@@@@@@@/"  
echo "     @@@@@@@/"  
echo "      @@@@@/"  
echo "~~~~~~\@@@@           ."  
echo "~~~~~~~\@@@|     0    O."  
echo "  ~~~~   @@@\~~~~~~~~0~..~~.~~~~~~~·"  
echo "          @@@@@@   .  ......"  
echo "  o     ~~ @@@  @@~~~~~~~~~~~~~~~~"  
echo "  .   O'   @@    @~~~~~~~~~~~~~~~~~~~~~·"  
echo "  OO..      @ MMMMMMMMMMM~~~~~~~~~~~~~~~~~~~~~~~"  
echo "         ~~~~~WWWWWWWWWWWWWW~~~~~~~~~~~~~~~~"  
echo "    ~~~MMMMMMMMMMMM~~~~~~~~~~~~"     
echo " apt install masscan;apt install nmap 如果没有请安装"   
}

banner

if [ -f "/root/Documents/scan/IP-out.txt" ];then # if file exist,not scan IP which is up
#if cat /root/Documents/scan/IP-out.txt;then
    echo -e "\033[31m step 1: skip host existing scan... \033[0m"
else
    nmap -sn 10.10.10.0/24 -oG raw
    awk 'NR>1 { print $2}' raw > IP-out.txt
    sed -i '$d' IP-out.txt
    rm -rf raw
fi
#获得了在线主机列表IP-out.txt

python clear-ip.py #del the ip which not want scan

for line in $(cat not-scan-ip.txt)
do
    rm -r /root/Desktop/$line
done
for line in $(cat IP-out.txt) #依次迭代txt的每一行
do
    if ls /root/Desktop/$line;then #if exist file, it must has scanned before.
        #exit -1
        echo -e $line "\033[31m step 2: skip ports enumeration \033[0m"
    else
        mkdir /root/Desktop/$line
        masscan -p1-65535,U:1-65535 --rate=1000 -e tun0 $line > /root/Desktop/$line/ports.txt
    fi
    #sed -i '1d' /root/Documents/scan/IP-out.txt
done
#make new file, and scan ports

for line in $(cat IP-out.txt) #依次迭代txt的每一行
do
    if ls /root/Desktop/$line/nmap-result;then
        echo -e "\033[31m step 3: skip port version scan, exit...\033[0m"
    else
        cd /root/Desktop/$line
        ports=$(cat /root/Desktop/$line/ports.txt | awk -F " " '{print $4}' | awk -F "/" '{print $1}' | sort -n | tr '\n' ',' | sed 's/,$//')
        nmap -Pn -sV -sC -p$ports ${line} -oN nmap-result
    fi
done
#scan services version.

for line in $(cat IP-out.txt) #依次迭代txt的每一行
do
    if ls /root/Desktop/$line/nmap-result;then
        echo -e "\033[31m step 4: rescan masscan port scan?\033[0m"
        read -p "y/n" choice
            if [ "${choice}" == "u" ]; then
                 rm /root/Desktop/$line/nmap-result
	             masscan -p1-65535,U:1-65535 --rate=1000 -e tun0 $line > /root/Desktop/$line/ports.txt
            fi

    else
        cd /root/Desktop/$line
        #rm /root/Desktop/$line/ports.txt
        ports=$(cat /root/Desktop/$line/ports.txt | awk -F " " '{print $4}' | awk -F "/" '{print $1}' | sort -n | tr '\n' ',' | sed 's/,$//')
        nmap -Pn -sV -sC -p$ports ${line} -oN nmap-result
    fi
done
