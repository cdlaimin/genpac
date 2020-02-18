#!/bin/sh
cd `dirname $0`
echo -e "最后一次更新时间 $(LANG=C date +"%Y-%m-%d %H:%M:%S")\nhttps://raw.githubusercontent.com/cdlaimin/gfwlist2pac/master/gfwlist.pac
" > /root/genpac/README.md
git add .
git commit -m "[$(LANG=C date +"%Y-%m-%d %H:%M:%S")]auto update"
git push origin master
