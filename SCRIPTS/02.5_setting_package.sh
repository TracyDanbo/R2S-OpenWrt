#setting

# qBittorrent
# sed -i 's/nas/services/g' package/new/luci-app-qbittorrent/luasrc/controller/qbittorrent.lua
cp -rf ../immortalwrt_luci_23/applications/luci-app-qbittorrent ./package/new/luci-app-qbittorrent
cp -rf ../immortalwrt_pkg_23/net/qBittorrent-Enhanced-Edition ./package/new/qBittorrent-Enhanced-Edition
cp -rf ../immortalwrt_pkg_23/libs/libtorrent-rasterbar ./package/new/libtorrent-rasterbar
cp -rf ../immortalwrt_pkg_23/libs/qt6base ./package/new/qt6base
cp -rf ../immortalwrt_pkg_23/utils/qt6tools ./package/new/qt6tools
cp -rf ../immortalwrt_pkg_23/libs/libdouble-conversion ./package/new/libdouble-conversion
# cp -rf ../lede_pkg/net/qBittorrent-static ./package/new/qBittorrent-static
# cp -rf ../lede_pkg/net/qBittorrent ./package/new/qBittorrent
# cp -rf ../lede_pkg/libs/qtbase ./package/new/qtbase
# cp -rf ../lede_pkg/libs/qttools ./package/new/qttools
# cp -rf ../lede_pkg/libs/rblibtorrent ./package/new/rblibtorrent

# set LAN ip address
sed -i 's/192.168.1.1/192.168.50.254/g' package/base-files/files/bin/config_generate
