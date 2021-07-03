#!/usr/bin/env python3

from diagrams import Cluster, Diagram, Edge
from diagrams.onprem.compute import Server
from diagrams.onprem.iac import Ansible
from diagrams.generic.network import Switch

with Diagram('lab-in-a-mac', show=False):
    with Cluster('Rack 100'):
        vmnet_100 = Switch('vmnet100')
        vm_router0a = Server('router0a')

    with Cluster('Rack 101'):
        vmnet_101 = Switch('vmnet101')
        vm_router1a = Server('router1a')
        vm_k8s_master1a = Server('k8s-master1a')

    with Cluster('Rack 102'):
        vmnet_102 = Switch('vmnet102')
        vm_router2a = Server('router2a')
        vm_k8s_master2a = Server('k8s-master2a')

    with Cluster('Rack 103'):
        vmnet_103 = Switch('vmnet103')
        vm_router3a = Server('router3a')
        vm_k8s_master3a = Server('k8s-master3a')

    vmnet_100 - vmnet_101
    vmnet_100 - vmnet_102
    vmnet_100 - vmnet_103
