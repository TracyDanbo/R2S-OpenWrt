#OC
#cp -f ../PATCH/999-unlock-1608mhz-rk3328.patch ./target/linux/rockchip/patches-5.4/999-unlock-1608mhz-rk3328.patch
cp -f ../999-RK3328-enable-1512mhz-opp.patch ./target/linux/rockchip/patches-5.4/999-RK3328-enable-1512mhz-opp.patch

#qbittorrent
svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/qt5 package/lean/qt5
svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/rblibtorrent package/lean/rblibtorrent
svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/qBittorrent package/lean/qBittorrent
svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/luci-app-qbittorrent package/lean/luci-app-qbittorrent
sed -i 's/nas/services/g' package/lean/luci-app-qbittorrent/luasrc/controller/qbittorrent.lua

#rclone
svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/rclone package/lean/rclone
svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/rclone-ng package/lean/rclone-ng
svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/rclone-webui-react package/lean/rclone-webui-react
svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/luci-app-rclone package/lean/luci-app-rclone
sed -i 's/nas/services/ig'  package/lean/luci-app-rclone/luasrc/controller/rclone.lua

# set LAN ip address
sed -i 's/192.168.1.1/192.168.50.254/g' package/base-files/files/bin/config_generate