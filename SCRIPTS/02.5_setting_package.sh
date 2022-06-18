#setting

# qBittorrent
sed -i 's/nas/services/g' package/lean/luci-app-qbittorrent/luasrc/controller/qbittorrent.lua

# set LAN ip address
sed -i 's/192.168.1.1/192.168.50.254/g' package/base-files/files/bin/config_generate
