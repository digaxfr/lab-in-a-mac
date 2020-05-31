# dnsmasq

This role sets up dnsmasq to act as "faux-authoritative" server (it really is not configured as an authoritative). It
serves 'A' and 'PTR' records for the VMs created within the lab and any additional records as needed.

It will also act as a DHCP server for the client VMs within the racks.
