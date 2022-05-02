# BADASS - BGP At Doors of Autonomous Systems is Simple

 The purpose of this project is to deepen our knowledge of networking by simulating several networks (VXLAN+BGP-EVPN) in GNS3.
 
<img width="400px" align="right" alt="badass" src="https://user-images.githubusercontent.com/22397481/166323589-adbf8a5f-acd4-4fa8-90de-89e8acd2a409.jpg">

# Introduction
The purpose of this project is to expand on the knowledge in networking by simulating a network and configure it using GNS3 with Docker images.

BGP EVPN is based on BGP ([RFC4271](https://datatracker.ietf.org/doc/html/rfc4271)) and its extensions MP-BGP ([RFC4760](https://datatracker.ietf.org/doc/html/rfc4760)).
BGP is the routing protocol that drives the Internet. Through MP-BGP extensions, it can be used to carry reachability information (NLRI) for various protocols (IPv4, IPv6, L3 VPN and in this case, EVPN). EVPN is a special family for publishing information about MAC addresses and the end devices that access them.

# General guidelines
- The whole project has to be done in a virtual machine.
- This project involves using and installing Docker as well as GNS3.
- We have to put all the configuration files of your project in folders located at the root of your repository.

The folders of the mandatory part will be named: p1, p2 and p3.

# Mandatory part
This project will consist of setting up several environments under specific rules.
It is divided into three parts you have to do in the following order:
- **[`Part 1`](https://github.com/42lan/badass/p1)** : GNS3 configuration with Docker.
- **[`Part 2`](https://github.com/42lan/badass/p2)** : Discovering a VXLAN.
- **[`Part 3`](https://github.com/42lan/badass/p3)** : Discovering BGP with EVPN.
