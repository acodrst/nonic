qemu-system-x86_64 -cpu qemu64 -enable-kvm  -smp 2 -m 5G -net nic -net user,hostfwd=tcp::5252-:22 -drive driver=raw,node-name=disk,file=nn.img
