cd sources &&
cat gcc/* > gcc-12.2.0.tar.xz &&
cat lin/* > linux-5.19.2.tar.xz &&
cd .. &&
cat img/* > ./nn.img.xz &&
md5sum nn.img.xz &&
xz -d nn.img.xz &&
cat nn.img.xz.md5.txt &&
echo "The above two md5 hashes should match" &&
qemu-system-x86_64 -cpu qemu64 -enable-kvm -m 5G -smp 2  -net nic -net user,hostfwd=tcp::5252-:22 -drive driver=raw,node-name=disk,file=nn.img
