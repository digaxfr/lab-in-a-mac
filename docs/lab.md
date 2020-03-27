# lab

## Requirements
ansible
netaddr

## Networking

https://thornelabs.net/posts/manually-add-and-remove-vmware-fusion-virtual-adapters.html

sudo /Applications/VMware\ Fusion.app/Contents/Library/vmnet-cfgcli vnetcfgadd VNET_7_DHCP no
sudo /Applications/VMware\ Fusion.app/Contents/Library/vmnet-cfgcli vnetcfgadd VNET_7_HOSTONLY_SUBNET 192.168.240.0
sudo /Applications/VMware\ Fusion.app/Contents/Library/vmnet-cfgcli vnetcfgadd VNET_7_HOSTONLY_NETMASK 255.255.255.0
sudo /Applications/VMware\ Fusion.app/Contents/Library/vmnet-cfgcli vnetcfgadd VNET_7_VIRTUAL_ADAPTER yes


sudo /Applications/VMware\ Fusion.app/Contents/Library/vmnet-cli --configure
sudo /Applications/VMware\ Fusion.app/Contents/Library/vmnet-cli --stop
sudo /Applications/VMware\ Fusion.app/Contents/Library/vmnet-cli --start

## Get template set up

* Grab the template first

```
cd ~/Users/Virtual\ Machines.localized/isos
curl -O -L https://cdimage.debian.org/cdimage/cloud/bullseye/daily/20200323-209/debian-11-nocloud-amd64-daily-20200323-209.qcow
```

* Convert qcow2 to vmdk

```
qemu-img convert debian-11-nocloud-amd64-daily-20200323-209.qcow2 -O vmdk debian-11-nocloud-amd64-daily-20200323-209.vmdk
```

* No need to convert to thin because qcow2 is already thin
* Grow the disk

```
/Applications/VMware\ Fusion.app/Contents/Library/vmware-vdiskmanager -x 32GB debian-11-nocloud-amd64-daily-20200323-209.vmdk
```

## Creating the VMX file

* eth0 MAC
* PCI ports for nvme


rmmod pcspkr

net-tools
cloud-init
strace
vim
sudo

update-alternatives --set editor /usr/bin/vim.basic

update sudoers file

usermod -G sudo -a debian


https://wiki.debian.org/NetworkInterfaceNames

The simple way of disabling the whole current interface naming scheme (which you might want to try for one-off testing) is just to boot with the kernel parameter net.ifnames=0, which can be set in an interactive grub session at boot or made persistent by editing /etc/default/grub and running update-grub.


Need to fix /etc/network/interfaces
