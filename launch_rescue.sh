qemu-system-x86_64 -cpu qemu64 -enable-kvm -smp 8 -m 20G -net nic -net user,hostfwd=tcp::5252-:22 -boot d -cdrom systemrescue-10.00-amd64.iso -drive driver=raw,node-name=disk,file=nn.img
