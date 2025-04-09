#!/bin/bash

rm -rf package/libs/mbedtls
rm -rf package/libs/ustream-ssl
rm -rf package/libs/uclient

sudo curl -L -o rmoyulong.tar.gz https://github.com/rmoyulong/AX6-Actions_Lede/releases/download/union_package/immortalwrt.tar.gz
tar zxvfp rmoyulong.tar.gz

#echo 'src-git turboacc https://github.com/chenmozhijin/turboacc.git;luci' >> feeds.conf.default
#echo 'src-git turboaccpackage https://github.com/chenmozhijin/turboacc.git;package' >> feeds.conf.default
###echo 'src-git kiddin9 https://github.com/kiddin9/kwrt-packages' >> feeds.conf.default
echo 'src-git theme https://github.com/sbwml/luci-theme-argon' >> feeds.conf.default
echo 'src-git small https://github.com/kenzok8/small' >> feeds.conf.default
echo 'src-git kenzo https://github.com/kenzok8/openwrt-packages' >> feeds.conf.default
