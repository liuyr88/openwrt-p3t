#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default
# Lienol/openwrt 包
sed -i '$a src-git lienol https://github.com/Lancenas/lienol-openwrt-package.git' feeds.conf.default
sed -i '$a src-git infinityfreedom https://github.com/xiaoqingfengATGH/luci-theme-infinityfreedom.git' feeds.conf.default
#vssr
sed -i '$a git clone https://github.com/jerrykuku/lua-maxminddb.git' feeds.conf.default 
sed -i '$a git clone https://github.com/jerrykuku/luci-app-vssr.git' feeds.conf.default 
mv luci-app-vssr/ package/
mv lua-maxminddb/ package/
# Alist
sed -i '$a git clone https://github.com/sbwml/openwrt-alist --depth=1' feeds.conf.default
mv openwrt-alist/ package/alist
