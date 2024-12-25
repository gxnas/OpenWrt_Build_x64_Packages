#!/bin/bash
function git_clone() {
  git clone --depth 1 $1 $2 || true
 }
function git_sparse_clone() {
  branch="$1" rurl="$2" localdir="$3" && shift 3
  git clone -b $branch --depth 1 --filter=blob:none --sparse $rurl $localdir
  cd $localdir
  git sparse-checkout init --cone
  git sparse-checkout set $@
  mv -n $@ ../
  cd ..
  rm -rf $localdir
  }
function mvdir() {
mv -n `find $1/* -maxdepth 0 -type d` ./
rm -rf $1
}
git clone --depth 1 https://github.com/kiddin9/luci-app-dnsfilter
git clone --depth 1 https://github.com/kiddin9/aria2
git clone --depth 1 https://github.com/Lienol/openwrt-package
git clone --depth 1 https://github.com/ElvenP/luci-app-onliner
git clone --depth 1 https://github.com/riverscn/openwrt-iptvhelper && mvdir openwrt-iptvhelper
git clone --depth 1 https://github.com/yaof2/luci-app-ikoolproxy
git clone --depth 1 https://github.com/project-lede/luci-app-godproxy
git clone --depth 1 -b openwrt-18.06 https://github.com/tty228/luci-app-wechatpush
git clone --depth 1 https://github.com/zzsj0928/luci-app-pushbot
git clone --depth 1 https://github.com/shanglanxin/luci-app-homebridge
git clone --depth 1 https://github.com/esirplayground/luci-app-poweroff
git clone --depth 1 https://github.com/brvphoenix/luci-app-wrtbwmon wrtbwmon1 && mvdir wrtbwmon1
git clone --depth 1 https://github.com/brvphoenix/wrtbwmon wrtbwmon2 && mvdir wrtbwmon2
git clone --depth 1 https://github.com/jerrykuku/luci-theme-argon
git clone --depth 1 https://github.com/jerrykuku/luci-app-argon-config
git clone --depth 1 https://github.com/jerrykuku/lua-maxminddb
git clone --depth 1 https://github.com/sirpdboy/luci-app-advanced
git clone --depth 1 https://github.com/sirpdboy/luci-app-poweroffdevice
git clone --depth 1 https://github.com/sirpdboy/luci-app-autotimeset
git clone --depth 1 https://github.com/sirpdboy/luci-app-lucky lucik && mv -n lucik/luci-app-lucky ./ ; rm -rf lucik
git clone --depth 1 https://github.com/sirpdboy/luci-app-partexp
git clone --depth 1 https://github.com/sirpdboy/luci-app-netdata
git clone --depth 1 https://github.com/sirpdboy/luci-app-chatgpt-web
git clone --depth 1 https://github.com/sirpdboy/luci-app-ddns-go ddnsgo && mv -n ddnsgo/luci-app-ddns-go ./; rm -rf ddnsgo
git clone --depth 1 https://github.com/sirpdboy/netspeedtest speedtest && mv -f speedtest/*/ ./ && rm -rf speedtest
git clone --depth 1 https://github.com/jefferymvp/luci-app-koolproxyR
git clone --depth 1 https://github.com/hubbylei/luci-app-clash
git clone --depth 1 https://github.com/destan19/OpenAppFilter && mvdir OpenAppFilter
git clone --depth 1 https://github.com/Hyy2001X/AutoBuild-Packages && rm -rf AutoBuild-Packages/luci-app-adguardhome && mvdir AutoBuild-Packages
git clone --depth 1 https://github.com/lisaac/luci-app-dockerman dockerman && mv -n dockerman/applications/* ./; rm -rf dockerman
git clone --depth 1 https://github.com/kenzok8/wall && mv -n wall/* ./ ; rm -rf wall
git clone --depth 1 https://github.com/peter-tank/luci-app-fullconenat
git clone --depth 1 https://github.com/sirpdboy/sirpdboy-package && mv -n sirpdboy-package/luci-app-dockerman ./ ; rm -rf sirpdboy-package
git clone --depth 1 https://github.com/sundaqiang/openwrt-packages && mv -n openwrt-packages/luci-* ./; rm -rf openwrt-packages
git clone --depth 1 https://github.com/kenzok78/luci-app-adguardhome
git clone --depth 1 -b lede https://github.com/pymumu/luci-app-smartdns
git clone --depth 1 https://github.com/linkease/istore && mv -n istore/luci/* ./; rm -rf istore
git clone --depth 1 https://github.com/muink/luci-app-homeproxy
git clone --depth 1 -b master https://github.com/UnblockNeteaseMusic/luci-app-unblockneteasemusic
git clone --depth 1 https://github.com/sbwml/luci-app-alist openwrt-alist && mv -n openwrt-alist/*alist ./ ; rm -rf openwrt-alist
git clone --depth 1 https://github.com/sbwml/luci-app-qbittorrent openwrt-qb && mv -n openwrt-qb/* ./ ; rm -rf openwrt-qb
git clone --depth 1 https://github.com/vernesong/OpenClash && mv -n OpenClash/luci-app-openclash ./; rm -rf OpenClash
git clone --depth 1 https://github.com/fw876/helloworld && mv -n helloworld/luci-app-ssr-plus ./ ; rm -rf helloworld
git clone --depth 1 https://github.com/sbwml/luci-app-mosdns openwrt-mos && mv -n openwrt-mos/{*mosdns,v2dat} ./; rm -rf openwrt-mos
git clone --depth 1 https://github.com/kiddin9/kwrt-packages && mv -n kwrt-packages/luci-app-bypass kwrt-packages/luci-app-fileassistant ./ ; rm -rf kwrt-packages
git clone --depth 1 https://github.com/immortalwrt/packages && mv -n packages/net/{cdnspeedtest,dae,daed,transmission} ./ ; rm -rf packages
git clone --depth 1 https://github.com/immortalwrt/luci && mv -n luci/applications/{luci-app-filebrowser,luci-app-usb-printer,luci-app-vlmcsd,luci-app-transmission} ./ ; rm -rf luci
git clone --depth 1 https://github.com/mingxiaoyu/luci-app-cloudflarespeedtest cloudflarespeedtest && mv -n cloudflarespeedtest/applications/* ./;rm -rf cloudflarespeedtest
git clone --depth 1 https://github.com/blueberry-pie-11/luci-app-natmap
git clone --depth 1 https://github.com/morytyann/OpenWrt-mihomo OpenWrt-mihomo && mv -n OpenWrt-mihomo/*mihomo ./ ; rm -rf OpenWrt-mihomo
git clone --depth 1 https://github.com/muink/openwrt-fchomo openwrt-fchomo && mv -n openwrt-fchomo/*homo ./ ; rm -rf openwrt-fchomo
git clone --depth 1 https://github.com/BROBIRD/openwrt-r8168
git clone --depth 1 https://github.com/sbwml/package_kernel_r8125
git clone --depth 1 https://github.com/sbwml/luci-app-filemanager
git clone --depth 1 https://github.com/asvow/luci-app-tailscale
git clone --depth 1 https://github.com/kiddin9/kwrt-packages kwrt-packages && mv -n kwrt-packages/*adbyby* ./ ; rm -rf kwrt-packages
rm -rf shadowsocksr-libev ; git clone --depth 1 https://github.com/oppen321/package oppen321-packages && mv -n oppen321-packages/shadowsocksr-libev ./ ; rm -rf oppen321-packages
git clone --depth 1 https://github.com/schen39/luci-app-serverchan

git_sparse_clone master "https://github.com/coolsnowwolf/packages" "leanpack" net/miniupnpd net/mwan3 \
multimedia/gmediarender multimedia/UnblockNeteaseMusic-Go net/phtunnel net/frp net/headscale net/go-aliyundrive-webdav \
net/verysync net/vlmcsd net/dnsforwarder net/tcpping net/netatalk net/pgyvpn net/msd_lite \
net/nps net/tcpping net/amule net/baidupcs-web 
mv -f miniupnpd miniupnpd-iptables

git_sparse_clone master "https://github.com/coolsnowwolf/luci" "leanluci" applications/luci-app-unblockmusic \
libs/luci-lib-fs

git_sparse_clone openwrt-23.05 "https://github.com/openwrt/packages" "22packages" \
utils/cgroupfs-mount utils/coremark utils/watchcat utils/dockerd net/nginx net/uwsgi net/ddns-scripts \
net/ariang admin/netdata net/transmission-web-control net/rp-pppoe net/tailscale
git_sparse_clone openwrt-23.05 "https://github.com/openwrt/openwrt" "openwrt" \
package/base-files package/network/config/firewall4 package/network/config/firewall package/system/opkg package/network/services/ppp \
package/network/services/dnsmasq package/libs/openssl

git_sparse_clone master "https://github.com/immortalwrt/packages" "immpack" net/sub-web net/dnsproxy net/haproxy net/cdnspeedtest \
net/uugamebooster net/subconverter net/ngrokc net/oscam net/njitclient net/scutclient net/gowebdav net/udp2raw \
admin/btop libs/wxbase libs/rapidjson libs/libcron libs/quickjspp libs/toml11 libs/libtorrent-rasterbar \
libs/libdouble-conversion libs/qt6base libs/cxxopts libs/jpcre2 libs/alac \
utils/cpulimit devel/gn

git_sparse_clone develop "https://github.com/Ysurac/openmptcprouter-feeds" "enmptcp" luci-app-snmpd \
luci-app-packet-capture luci-app-mail msmtp
git_sparse_clone master "https://github.com/xiaoqingfengATGH/feeds-xiaoqingfeng" "xiaoqingfeng" homeredirect luci-app-homeredirect

git_sparse_clone master "https://github.com/x-wrt/com.x-wrt" "x-wrt" natflow lua-ipops luci-app-macvlan luci-app-3ginfo-lite luci-app-fakemesh
git_sparse_clone master "https://github.com/immortalwrt/immortalwrt" "immortal" package/network/utils/nftables \
package/network/utils/fullconenat package/network/utils/fullconenat-nft \
package/utils/mhz package/libs/libnftnl package/firmware/wireless-regdb

git_sparse_clone master "https://github.com/sbwml/openwrt_pkgs" "openwrt_pkgs" luci-app-gowebdav luci-app-ota luci-app-socat \
git_sparse_clone openwrt-23.05 "https://github.com/openwrt/luci" "opluci" applications/luci-app-watchcat \
git_sparse_clone main "https://github.com/NueXini/NueXini_Packages" "NueXini-adbyby" luci-app-adbyby-plus
git_sparse_clone master "https://github.com/QiuSimons/luci-app-daed" "QiuSimons" daed luci-app-daed
git_sparse_clone rebase "https://github.com/QiuSimons/luci-app-daed-next" "QiuSimons-next" daed-next luci-app-daed-next
git_sparse_clone master "https://github.com/immortalwrt/luci" "immortalwrt-luci" applications/luci-app-frpc applications/luci-app-frps applications/luci-app-syncdial applications/luci-app-nps
git_sparse_clone master "https://github.com/xiaorouji/openwrt-passwall2" "xiaorouji-passwall2" luci-app-passwall2
git_sparse_clone master "https://github.com/xiaorouji/openwrt-passwall" "xiaorouji-passwall" luci-app-passwall

rm -rf openssl
mv -n openwrt-package/* ./ ; rm -Rf openwrt-package
mv -n openwrt-app-actions/applications/* ./;rm -rf openwrt-app-actions
sed -i \
-e 's?include \.\./\.\./\(lang\|devel\)?include $(TOPDIR)/feeds/packages/\1?' \
-e 's?2. Clash For OpenWRT?3. Applications?' \
-e 's?\.\./\.\./luci.mk?$(TOPDIR)/feeds/luci/luci.mk?' \
-e 's/ca-certificates/ca-bundle/' \
-e 's/php7/php8/g' \
-e 's/+docker /+docker +dockerd /g' \
*/Makefile

sed -i 's/PKG_VERSION:=20240302/PKG_VERSION:=20240223/g; s/PKG_RELEASE:=$(AUTORELESE)/PKG_RELEASE:=1/g' webd/Makefile
sed -i 's/luci-lib-ipkg/luci-base/g' luci-app-store/Makefile
sed -i "/minisign:minisign/d" luci-app-dnscrypt-proxy2/Makefile
sed -i 's/+dockerd/+dockerd +cgroupfs-mount/' luci-app-docker*/Makefile
sed -i '$i /etc/init.d/dockerd restart &' luci-app-docker*/root/etc/uci-defaults/*
sed -i 's/+libcap /+libcap +libcap-bin /' luci-app-openclash/Makefile
sed -i 's/\(+luci-compat\)/\1 +luci-theme-argon/' luci-app-argon-config/Makefile
sed -i 's/\(+luci-compat\)/\1 +luci-theme-design/' luci-app-design-config/Makefile
sed -i 's/\(+luci-compat\)/\1 +luci-theme-argone/' luci-app-argone-config/Makefile
sed -i 's/+vsftpd-alt$/+vsftpd/' luci-app-tencentcloud-cos/Makefile
sed -i 's/ +uhttpd-mod-ubus//' luci-app-packet-capture/Makefile
sed -i 's/	ip.neighbors/	luci.ip.neighbors/' luci-app-wifidog/luasrc/model/cbi/wifidog/wifidog_cfg.lua
sed -i '/entry({"admin", "nas"}, firstchild(), "NAS", 45).dependent = false/d; s/entry({"admin", "network", "eqos"}, cbi("eqos"), _("EQoS"))/entry({"admin", "network", "eqos"}, cbi("eqos"), _("EQoS"), 121).dependent = true/' luci-app-eqos/luasrc/controller/eqos.lua
sed -i 's/PKG_SOURCE_DATE:=2/PKG_SOURCE_DATE:=3/' transmission-web-control/Makefile
find . -type f -name "update.sh" -exec rm -f {} \;
rm -rf adguardhome/patches
exit 0