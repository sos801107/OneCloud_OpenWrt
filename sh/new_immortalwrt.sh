#!/bin/bash

rm -rf package/libs/mbedtls
rm -rf package/libs/ustream-ssl
rm -rf package/libs/uclient

sudo curl -L -o rmoyulong.tar.gz https://github.com/rmoyulong/AX6-Actions_Lede/releases/download/union_package/immortalwrt.tar.gz
tar zxvfp rmoyulong.tar.gz


#echo 'src-git turboacc https://github.com/chenmozhijin/turboacc.git;luci' >> feeds.conf.default
#echo 'src-git turboaccpackage https://github.com/chenmozhijin/turboacc.git;package' >> feeds.conf.default
#echo 'src-git nftables https://github.com/fullcone-nat-nftables/nft-fullcone' >> feeds.conf.default

echo 'src-git appvlmcsd https://github.com/AutoCONFIG/luci-app-vlmcsd;master' >> feeds.conf.default

#echo 'src-git theme https://github.com/zijieKwok/istoreos-theme' >> feeds.conf.default
echo 'src-git theme https://github.com/sbwml/luci-theme-argon' >> feeds.conf.default
echo 'src-git small https://github.com/kenzok8/small' >> feeds.conf.default
echo 'src-git kenzo https://github.com/kenzok8/openwrt-packages' >> feeds.conf.default

mkdir -p files/etc/config
wget -qO- https://raw.githubusercontent.com/sos801107/TL-XDR608X/refs/heads/main/etc/openclash > files/etc/config/openclash
#wget -qO- https://raw.githubusercontent.com/liandu2024/clash/refs/heads/main/main_router/openclash > files/etc/config/openclash
wget -qO- https://raw.githubusercontent.com/sos801107/TL-XDR608X/refs/heads/main/etc/mosdns > files/etc/config/mosdns
wget -qO- https://raw.githubusercontent.com/sos801107/TL-XDR608X/refs/heads/main/etc/smartdns > files/etc/config/smartdns

mkdir -p files/etc
wget -qO- https://raw.githubusercontent.com/sos801107/TL-XDR608X/refs/heads/main/etc/opkg.conf > files/etc/opkg.conf
mkdir -p files/etc/opkg
wget -qO- https://raw.githubusercontent.com/sos801107/TL-XDR608X/refs/heads/main/etc/distfeeds.conf-co > files/etc/opkg/distfeeds.conf
mkdir -p files/root
wget -qO- https://raw.githubusercontent.com/sos801107/TL-XDR608X/refs/heads/main/etc/.profile > files/root/.profile
