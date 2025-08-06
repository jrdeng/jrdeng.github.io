---
title: "apt临时使用socks5代理"
date: 2021-03-29T13:16:16+08:00
slug: "13"
tags: [
    "Debian",
    "apt",
]
---

有些时候，一些没有mirror的apt源访问起来有点痛苦，比梯子还慢。。。所以让apt走梯子：

```
apt -o Acquire::http::proxy="socks5h://127.0.0.1:1080/"   原来的指令
```

注意是 **socks5h**

参考： https://askubuntu.com/a/1117259/1121096


<hr style="width: 100%"/>

<h1 style="font-size: 1.5em;color:#555;font-weight: bold;">Comments: (on <a href="https://github.com/jrdeng/jrdeng.github.io/issues/13">github issue)</a></h1>


<script src="https://utteranc.es/client.js"
        repo="jrdeng/jrdeng.github.io"
        issue-number="13"
        theme="github-light"
        crossorigin="anonymous"
        async>
</script>
