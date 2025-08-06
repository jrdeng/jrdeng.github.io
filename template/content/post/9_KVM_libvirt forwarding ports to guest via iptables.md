---
title: "KVM/libvirt forwarding ports to guest via iptables"
date: 2021-01-07T16:59:58+08:00
slug: "9"
tags: [
    "技术",
    "KVM",
    "iptables",
]
---

```
# connections from outside
sudo iptables -I FORWARD -o virbr0 -d  192.168.122.226 -j ACCEPT
sudo iptables -t nat -A PREROUTING -p tcp --dport 8006 -j DNAT --to 192.168.122.226:8006
sudo iptables -t nat -A POSTROUTING -s 192.168.122.0/24 -j MASQUERADE

# local subnet
sudo iptables -A FORWARD -o virbr0 -m state --state RELATED,ESTABLISHED -j ACCEPT
sudo iptables -A FORWARD -i virbr0 -o enp0s31f6 -j ACCEPT
sudo iptables -A FORWARD -i virbr0 -o lo -j ACCEPT

# save to persistent rules
sudo service netfilter-persistent save
sudo service netfilter-persistent reload
```

refer to: [https://aboullaite.me/kvm-qemo-forward-ports-with-iptables/](https://aboullaite.me/kvm-qemo-forward-ports-with-iptables/)


<hr style="width: 100%"/>

<h1 style="font-size: 1.5em;color:#555;font-weight: bold;">Comments: (on <a href="https://github.com/jrdeng/jrdeng.github.io/issues/9">github issue)</a></h1>


<script src="https://utteranc.es/client.js"
        repo="jrdeng/jrdeng.github.io"
        issue-number="9"
        theme="github-light"
        crossorigin="anonymous"
        async>
</script>
