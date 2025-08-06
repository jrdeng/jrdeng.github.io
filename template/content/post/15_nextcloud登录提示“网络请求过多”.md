---
title: "nextcloud登录提示“网络请求过多”"
date: 2022-01-12T09:55:16+08:00
slug: "15"
tags: [
    "Nextcloud",
]
---

本身是nextcloud防暴破登录的一个机制， 好像是因为用了Nginx反代导致登录的时候被误判了（？）

解决办法是到数据库里清除防暴的表：oc_bruteforce_attempts

```
mysql -u root -p
use nextcloud
delete from oc_bruteforce_attempts;
```



<hr style="width: 100%"/>

<h1 style="font-size: 1.5em;color:#555;font-weight: bold;">Comments: (on <a href="https://github.com/jrdeng/jrdeng.github.io/issues/15">github issue)</a></h1>


<script src="https://utteranc.es/client.js"
        repo="jrdeng/jrdeng.github.io"
        issue-number="15"
        theme="github-light"
        crossorigin="anonymous"
        async>
</script>
