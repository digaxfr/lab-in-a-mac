#!/bin/bash
# It appears you cannot using '-nographic' and '-daemonize' together, so will take the traditional method here.

exec qemu-system-x86_64 \
    -name macfail-linux.lab.dchin.dev \
    -machine pc \
    -cpu kvm64 \
    -accel hvf \
    -smp 6 \
    -m 16384m \
    -drive id=vda,file=vda.qcow2,format=qcow2,id=blk0,if=virtio \
    -netdev user,id=net0,net=192.168.64.0/24,dhcpstart=192.168.64.15,host=192.168.64.2,dns=192.168.64.3,hostfwd=tcp:127.0.0.1:2222-192.168.64.15:22,hostfwd=tcp:127.0.0.1:5353-192.168.64.15:53 \
    -device virtio-net,netdev=net0 \
    -netdev socket,id=net1,listen=127.0.0.1:2223 \
    -device virtio-net,netdev=net1 \
    -nographic \
    -serial unix:serial.sock,server,nowait \
    -monitor unix:monitor.sock,server,nowait &

# Used during bootstrap
#    -cdrom Fedora-Server-netinst-x86_64-32-1.6.iso \
#    -boot d \
#    -serial mon:stdio \

# Using '-machine pc -cpu host' caused kernel panics
# ... but using '-machine microvm -cpu host' works fine...
