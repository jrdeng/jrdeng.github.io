---
title: "Oracle VPS端口和防火墙设置"
date: 2021-08-10T12:28:04+08:00
slug: "14"
---

## 开放端口

```
Instances >> Instance Details 
                        >> Attached VNICs >> Subnet or VLAN
                                  >> Subnet - subnet-YYYYMMDD-HHMM >> Security Lists
                                           >>  add rules for TCP/UDP/ICMP ...
```


## Ubuntu防火墙设置:

```
sudo iptables -L
sudo apt remove iptables-persistent
sudo apt purge netfilter-persistent
sudo iptables -L
sudo iptables -P INPUT ACCEPT
sudo iptables -P FORWARD ACCEPT
sudo iptables -P OUTPUT ACCEPT
sudo iptables -L
sudo iptables -F
sudo reboot
```


<hr style="width: 100%"/>

<h1 style="font-size: 1.5em;color:#555;font-weight: bold;">Comments: (on <a href="https://github.com/jrdeng/jrdeng.github.io/issues/14">github issue)</a></h1>


<script src="https://utteranc.es/client.js"
        repo="jrdeng/jrdeng.github.io"
        issue-number="14"
        theme="github-light"
        crossorigin="anonymous"
        async>
</script>
