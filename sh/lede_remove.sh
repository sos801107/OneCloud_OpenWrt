rm -rf feeds/packages/net/homeproxy
rm -rf feeds/luci/applications/luci-app-homeproxy
rm -rf feeds/kenzo/homeproxy
rm -rf feeds/kenzo/luci-app-homeproxy
rm -rf feeds/luci/applications/luci-app-turboacc
rm -rf feeds/luci/applications/luci-app-kodexplorer
rm -rf feeds/packages/lang/ruby
rm -rf feeds/packages/net/v2ray-geodata
rm -rf feeds/packages/net/mosdns
rm -rf feeds/luci/applications/luci-app-mosdns
rm -rf feeds/packages/net/aria2
rm -rf feeds/packages/net/ariang 
rm -rf feeds/luci/luci-app-aria2
###############################
rm -rf  package/openwrt-passwall/shadowsocks-rust
rm -rf  package/openwrt-passwall/hysteria
####################################################
# 移除要替换的包
rm -rf feeds/packages/net/{xray-core,v2ray-core,v2ray-geodata,sing-box,adguardhome}
rm -rf feeds/packages/net/alist feeds/luci/applications/luci-app-alist
rm -rf feeds/packages/utils/v2dat
rm -rf feeds/third_party/luci-app-LingTiGameAcc
rm -rf feeds/istoreos_ipk/op-daed
rm -rf feeds/third/luci-theme-argon
rm -rf feeds/istoreos_ipk/patch/istoreos-24.10/istoreos-files
rm -rf feeds/small/{shadowsocksr-libev,shadowsocks-rust,luci-app-ssr-plus,luci-i18n-ssr-plus-zh-cn,luci-app-ssr-plus,luci-i18n-ssr-plus-zh-cn,luci-app-wol,luci-app-bypass,luci-app-argon-config,luci-theme-argon}
rm -rf feeds/luci/applications/{shadowsocksr-libev,shadowsocks-rust,luci-app-ssr-plus,luci-i18n-ssr-plus-zh-cn,luci-app-ssr-plus,luci-i18n-ssr-plus-zh-cn,luci-app-wol,luci-app-bypass,luci-app-argon-config,luci-theme-argon}
rm -rf feeds/luci/packages/net/{shadowsocksr-libev-ssr-check,shadowsocksr-libev-ssr-local,shadowsocksr-libev-ssr-redir,shadowsocksr-libev-ssr-server}
# 将packages源的相关文件替换成passwall_packages源的
rm -rf feeds/istoreos_ipk/patch/wall-luci/luci-app-passwall
rm -rf feeds/istoreos_ipk/geoview
rm -rf feeds/third_party/luci-app-smartdns
rm -rf feeds/third_party/smartdns
rm -rf feeds/istoreos_ipk/op-mosdns
rm -rf feeds/istoreos_ipk/xray-core
rm -rf feeds/istoreos_ipk/sing-box
rm -rf feeds/istoreos_ipk/chinadns-ng
rm -rf feeds/istoreos_ipk/microsocks
rm -rf feeds/istoreos_ipk/dns2socks
rm -rf feeds/istoreos_ipk/ipt2socks
rm -rf package/feeds/istoreos_ipk/vlmcsd
rm -rf feeds/istoreos_ipk/vlmcsd
rm -rf feeds/istoreos_ipk/vlmcsd
rm -rf feeds/packages/net/xray-core
rm -rf feeds/packages/net/mosdns
rm -rf feeds/packages/net/v2ray-geodata
rm -rf feeds/packages/net/v2ray-geoip
rm -rf feeds/packages/net/sing-box
rm -rf feeds/packages/net/chinadns-ng
rm -rf feeds/packages/net/dns2socks
rm -rf feeds/packages/net/dns2tcp
rm -rf feeds/packages/net/microsocks
rm -rf feeds/small/xray-core
cp -r feeds/small/mosdns feeds/packages/net
cp -r feeds/small/v2ray-geodata feeds/packages/net
cp -r feeds/small/v2ray-geoip feeds/packages/net
cp -r feeds/small/sing-box feeds/packages/net
cp -r feeds/small/chinadns-ng feeds/packages/net
cp -r feeds/small/dns2socks feeds/packages/net
cp -r feeds/small/ipt2socks feeds/packages/net
cp -r feeds/small/microsocks feeds/packages/net
cp -r feeds/small/geoview feeds/packages/net
#####################################################
rm -rf feeds/packages/lang/golang
git clone https://github.com/sbwml/packages_lang_golang -b 25.x feeds/packages/lang/golang
#####################################################
# 必要的补丁
pushd feeds/luci
   curl -s https://raw.githubusercontent.com/oppen321/path/refs/heads/main/Firewall/0001-luci-mod-status-firewall-disable-legacy-firewall-rul.patch | patch -p1
popd


