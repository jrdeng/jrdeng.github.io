---
title: "WSL无法使用ping命令"
date: 2024-03-06T17:08:55+08:00
slug: "23"
tags: [
    "WSL",
]
---

问题：

```
$ ping github.com
ping: socktype: SOCK_RAW
ping: socket: Operation not permitted
ping: => missing cap_net_raw+p capability or setuid?
```

解决方法：

```
$ sudo setcap cap_net_raw+p /bin/ping
```

参考：[https://github.com/microsoft/WSL/issues/5109](https://github.com/microsoft/WSL/issues/5109)

<hr style="width: 100%"/>

<h1 style="font-size: 1.5em;color:#555;font-weight: bold;">Comments: (on <a href="https://github.com/jrdeng/jrdeng.github.io/issues/23">github issue)</a></h1>


<script src="https://utteranc.es/client.js"
        repo="jrdeng/jrdeng.github.io"
        issue-number="23"
        theme="github-light"
        crossorigin="anonymous"
        async>
</script>
