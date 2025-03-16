#!/bin/bash

shopt -s extglob
rm -rfv !(LICENSE|README.md|packages.sh)
shopt -u extglob

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

git clone --depth 1 https://github.com/jerrykuku/luci-theme-argon
git clone --depth 1 https://github.com/jerrykuku/luci-app-argon-config
git clone --depth 1 https://github.com/kenzok78/luci-app-adguardhome
git clone --depth 1 https://github.com/sirpdboy/luci-app-partexp
git clone --depth 1 https://github.com/sbwml/v2ray-geodata
git clone --depth 1 https://github.com/muink/luci-app-homeproxy
git clone --depth 1 https://github.com/asvow/luci-app-tailscale
git clone --depth 1 https://github.com/tty228/luci-app-wechatpush
git clone --depth 1 https://github.com/sirpdboy/luci-app-poweroffdevice
git clone --depth 1 https://github.com/sirpdboy/luci-app-netdata
git clone --depth 1 https://github.com/UnblockNeteaseMusic/luci-app-unblockneteasemusic.git
git clone --depth 1 https://github.com/BROBIRD/openwrt-r8168
git clone --depth 1 https://github.com/sbwml/package_kernel_r8125
git clone --depth 1 https://github.com/sbwml/luci-app-filemanager
git clone --depth 1 https://github.com/schen39/luci-app-serverchan


git clone --depth=1 https://github.com/xiaorouji/openwrt-passwall-packages && mvdir openwrt-passwall-packages
git clone --depth=1 -b main https://github.com/fw876/helloworld && mvdir helloworld
git clone --depth 1 https://github.com/sirpdboy/luci-app-ddns-go && mvdir luci-app-ddns-go

git clone --depth 1 https://github.com/xiaorouji/openwrt-passwall && mv -n openwrt-passwall/luci-app-passwall ./ ; rm -rf openwrt-passwall
git clone --depth 1 https://github.com/xiaorouji/openwrt-passwall2 && mv -n openwrt-passwall2/luci-app-passwall2 ./ ; rm -rf openwrt-passwall2
git clone --depth 1 https://github.com/kenzok8/wall && mv -n wall/adguardhome wall/filebrowser ./ ; rm -rf wall
git clone --depth 1 https://github.com/xiangfeidexiaohuo/extra-ipk && mv -n extra-ipk/patch/wall-luci/luci-app-vssr ./ ; rm -rf extra-ipk
git clone --depth 1 https://github.com/sbwml/luci-app-alist openwrt-alist && mv -n openwrt-alist/*alist ./ ; rm -rf openwrt-alist
git clone --depth 1 https://github.com/lisaac/luci-app-dockerman && mv -n luci-app-dockerman/applications/luci-app-dockerman ./ ; rm -rf luci-app-dockerman
git clone --depth 1 https://github.com/sbwml/packages_lang_golang && mv -n packages_lang_golang/golang ./ ; rm -rf packages_lang_golang
git clone --depth 1 https://github.com/linkease/istore && mv -n istore/luci/luci-app-store ./ ; rm -rf istore
git clone --depth 1 https://github.com/sirpdboy/luci-app-lucky sirpdboy-lucik && mv -n sirpdboy-lucik/*lucky ./ ; rm -rf sirpdboy-lucik
git clone --depth 1 https://github.com/sbwml/luci-app-mosdns sbwml-mosdns && mv -n sbwml-mosdns/*mosdns* ./ ; rm -rf sbwml-mosdns
git clone --depth=1 https://github.com/sbwml/luci-app-qbittorrent sirpdboy-qbittorrent && mv -n sirpdboy-qbittorrent/* ./ ; rm -rf sirpdboy-qbittorrent
git clone --depth 1 https://github.com/messense/aliyundrive-webdav aliyundrive && mv -n aliyundrive/openwrt/* ./ ; rm -rf aliyundrive
git clone --depth 1 https://github.com/fw876/helloworld && mv -n helloworld/luci-app-ssr-plus ./ ; rm -rf helloworld
git clone --depth 1 https://github.com/kiddin9/kwrt-packages && mv -n kwrt-packages/luci-app-bypass kwrt-packages/luci-app-fileassistant ./ ; rm -rf kwrt-packages
git clone --depth 1 https://github.com/immortalwrt/packages && mv -n packages/net/{cdnspeedtest,dae,daed,vsftpd,transmission} ./ ; rm -rf packages
git clone --depth 1 https://github.com/immortalwrt/luci && mv -n luci/applications/{luci-app-filebrowser,luci-app-gost,luci-app-usb-printer,luci-app-vlmcsd,luci-app-transmission} ./ ; rm -rf luci
git clone --depth 1 https://github.com/nikkinikki-org/OpenWrt-nikki OpenWrt-nikki && mv -n OpenWrt-nikki/*nikki ./ ; rm -rf OpenWrt-nikki
git clone --depth 1 https://github.com/muink/openwrt-fchomo openwrt-fchomo && mv -n openwrt-fchomo/*homo ./ ; rm -rf openwrt-fchomo
git clone --depth 1 https://github.com/kiddin9/kwrt-packages kwrt-packages && mv -n kwrt-packages/*adbyby* ./ ; rm -rf kwrt-packages


git clone --depth 1 -b dev https://github.com/vernesong/OpenClash && mv -n OpenClash/luci-app-openclash ./ ; rm -rf OpenClash

rm -rf ./*/.git & rm -rf ./*/.gitattributes
rm -rf ./*/.svn & rm -rf ./*/.github & rm -rf ./*/.gitignore
