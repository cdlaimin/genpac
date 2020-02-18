#!/bin/sh
cd `dirname $0`
genpac --format=pac --pac-proxy="SOCKS5 127.0.0.1:1080" > pac.txt
#echo -e "最后一次更新时间 $(LANG=C date +"%Y-%m-%d %H:%M:%S")\nhttps://raw.githubusercontent.com/cdlaimin/genpac/dev/pac.txt
#" > /root/genpac/README.md
echo -e "最后一次更新时间 $(LANG=C date +"%Y-%m-%d %H:%M:%S")
" > /root/genpac/README.md
git add .
git commit -m "[$(LANG=C date +"%Y-%m-%d %H:%M:%S")]auto update"
git push origin dev
