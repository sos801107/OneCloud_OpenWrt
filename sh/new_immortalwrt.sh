#!/bin/bash

rm -rf package/libs/mbedtls
rm -rf package/libs/ustream-ssl
rm -rf package/libs/uclient

sudo curl -L -o rmoyulong.tar.gz https://github.com/rmoyulong/AX6-Actions_Lede/releases/download/union_package/immortalwrt.tar.gz
tar zxvfp rmoyulong.tar.gz


echo 'src-git turboacc https://github.com/chenmozhijin/turboacc.git;luci' >> feeds.conf.default
echo 'src-git turboaccpackage https://github.com/chenmozhijin/turboacc.git;package' >> feeds.conf.default
#echo 'src-git nftables https://github.com/fullcone-nat-nftables/nft-fullcone' >> feeds.conf.default

echo 'src-git appvlmcsd https://github.com/AutoCONFIG/luci-app-vlmcsd;master' >> feeds.conf.default

#echo 'src-git theme https://github.com/zijieKwok/istoreos-theme' >> feeds.conf.default
echo 'src-git theme https://github.com/sbwml/luci-theme-argon;openwrt-24.10' >> feeds.conf.default
echo 'src-git small https://github.com/kenzok8/small;master' >> feeds.conf.default
echo 'src-git kenzo https://github.com/kenzok8/openwrt-packages;master' >> feeds.conf.default


rm -rf feeds/luci/themes/luci-theme-argon
rm -rf feeds/third/luci-theme-argon
cp -r feeds/theme/luci-theme-argon feeds/luci/themes/luci-theme-argon
rm -rf feeds/third/luci-app-argon-config
rm -rf feeds/luci/applications/luci-app-argon-config
cp -r feeds/theme/luci-app-argon-config feeds/luci/applications/luci-app-argon-config
