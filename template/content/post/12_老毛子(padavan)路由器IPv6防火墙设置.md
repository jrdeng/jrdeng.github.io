---
title: "老毛子(padavan)路由器IPv6防火墙设置"
date: 2021-02-26T16:29:24+08:00
slug: "12"
tags: [
    "IPv6",
]
---

转发到内网机器：

```
ip6tables -A FORWARD -d 域名 -j ACCEPT
ip6tables -P OUTPUT ACCEPT
```

只转发指定端口：

```
ip6tables -A FORWARD -p tcp -m multiport --dport 21,9090,10000 -d 域名 -j ACCEPT
ip6tables -P OUTPUT ACCEPT
```

域名可以改成内网机器的IPv6地址，但是这个应该不是固定的，所以还是用域名方便。需要配合DDNS。

80,443等端口依然被运营商屏蔽了。


<hr style="width: 100%"/>

<h1 style="font-size: 1.5em;color:#555;font-weight: bold;">Comments: (on <a href="https://github.com/jrdeng/jrdeng.github.io/issues/12">github issue)</a></h1>


<script src="https://utteranc.es/client.js"
        repo="jrdeng/jrdeng.github.io"
        issue-number="12"
        theme="github-light"
        crossorigin="anonymous"
        async>
</script>
