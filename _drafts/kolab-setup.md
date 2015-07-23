---
layout: post
title: Setting up Kolab Groupware
author: arun
tags: [software, IT, email, collaborative]
---

# Setting up Kolab

Here are some of the important steps while setting up Kolab Groupware on Ubuntu 14.04.

* Ensure that the hostname is properly setup
`sudo hostnamectl set-hostname fqdn.example.org`
* Add an entry in the /etc/hosts file. Check the IP address using `ifconfig` then add an entry like `fqdn.example.org <IP-from-ifconfig>`. Note this should be the LAN or other IP, not 127.0.0.1
* Install Kolab

