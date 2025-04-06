#rm -rf feeds/packages/net/zerotier
#rm -rf feeds/luci/applications/luci-app-zerotier
rm -rf feeds/luci/applications/luci-app-turboacc
rm -rf feeds/packages/net/homeproxy
rm -rf feeds/luci/applications/luci-app-homeproxy
rm -rf feeds/kenzo/homeproxy
rm -rf feeds/kenzo/luci-app-homeproxy
rm -rf feeds/packages/lang/ruby
###############################
rm -rf  package/openwrt-passwall/shadowsocks-rust
####################################################
#解决shadowsocks-libev编译错误
git clone https://github.com/rmoyulong/AX6-Actions_Lede rmoyulong
rm -rf feeds/packages/net/shadowsocks-libev
cp -rf ./rmoyulong/shadowsocks-libev feeds/packages/net/
cp -rf ./rmoyulong/shadowsocks-libev package

# 将packages源的相关文件替换成passwall_packages源的
rm -rf feeds/packages/net/xray-core
rm -rf feeds/packages/net/mosdns
rm -rf feeds/packages/net/v2ray-geodata
rm -rf feeds/packages/net/v2ray-geoip
rm -rf feeds/packages/net/sing-box
rm -rf feeds/packages/net/chinadns-ng
rm -rf feeds/packages/net/dns2socks
rm -rf feeds/packages/net/dns2tcp
rm -rf feeds/packages/net/microsocks
cp -r feeds/small/xray-core feeds/packages/net
cp -r feeds/small/mosdns feeds/packages/net
cp -r feeds/small/v2ray-geodata feeds/packages/net
cp -r feeds/small/v2ray-geoip feeds/packages/net
cp -r feeds/small/sing-box feeds/packages/net
cp -r feeds/small/chinadns-ng feeds/packages/net
cp -r feeds/small/dns2socks feeds/packages/net
cp -r feeds/small/dns2tcp feeds/packages/net
cp -r feeds/small/microsocks feeds/packages/net

rm -rf package/libs/mbedtls
rm -rf package/libs/ustream-ssl
rm -rf package/libs/uclient
cp -rf ./rmoyulong/libs/mbedtls package/libs/
cp -rf ./rmoyulong/libs/ustream-ssl package/libs/
cp -rf ./rmoyulong/libs/uclient package/libs/

rm -rf rmoyulong
#####################################################
