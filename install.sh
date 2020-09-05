echo "属于管理员密码用来安装虚拟局域网"
sudo -v
cd ~/Downloads
curl -# -O  https://cdn.jsdelivr.net/gh/742481030/sd-wan@master/ZeroTier-One.pkg
curl  -# -O  https://cdn.jsdelivr.net/gh/742481030/sd-wan@master/00000006a9c47412.moon
sudo mkdir -p /Library/Application\ Support/ZeroTier/One/moons.d/

sudo installer -pkg ./ZeroTier-One.pkg -target / &&  sudo open /Applications/ZeroTier\ One.app
sleep 4
rm -rf ./ZeroTier-One.pkg



sudo mv 00000006a9c47412.moon /Library/Application\ Support/ZeroTier/One/moons.d/00000006a9c47412.moon
sudo launchctl load -w /Library/LaunchDaemons/com.zerotier.one.plist
zerotier-cli join c7c8172af1e85eb2
zerotier-cli orbit 06a9c47412 06a9c47412
zerotier-cli info
say "如果出错请重新执行"
