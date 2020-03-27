# lab-in-a-mac

Self-contained homelab on a Mac. Specifically VMware Fusion, hence the Mac part.

Ansible, scripts, etc. within this repository should be focused on Mac specific items, such as creating the foundations
of the lab environment, configuring VMware Fusion, and creating the VMs for the lab itself. It should not contain
general roles such as deploying Kubernetes, PiHole, Wireguard, etc. That should exist in `homelab-ansible`.
