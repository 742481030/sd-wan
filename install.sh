cd ~
cd Downloads
curl -O  https://cdn.jsdelivr.net/gh/742481030/sd-wan@master/ZeroTier-One.pkg

sudo installer -pkg ./ZeroTier-One.pkg -target / && open /Applications/ZeroTier\ One.app


curl -O  https://cdn.jsdelivr.net/gh/742481030/sd-wan@master/00000006a9c47412.moon
sudo mv 00000006a9c47412.moon /Library/Application\ Support/ZeroTier/One/moons.d/00000006a9c47412.moon
sudo launchctl load -w /Library/LaunchDaemons/com.zerotier.one.plist
zerotier-cli join c7c8172af1e85eb2
zerotier-cli orbit 06a9c47412 06a9c47412
zerotier-cli info
