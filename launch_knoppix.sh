qemu-system-x86_64 -cpu qemu64 -enable-kvm  -smp 8 -m 20G -net nic -net user,hostfwd=tcp::5252-:22 -boot d -cdrom KNOPPIX_V9.1DVD-2021-01-25-EN.iso -drive driver=raw,node-name=disk,file=nn.img
