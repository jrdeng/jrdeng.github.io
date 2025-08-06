---
title: "portainer重置密码"
date: 2022-10-09T11:18:49+08:00
slug: "17"
tags: [
    "docker",
]
---

docker跑起来以后，portainer就不怎么登录了，久了就忘了密码。。。

portainer官方提供了一个helper用来重置密码：

```
docker run --rm -v portainer_data:/data portainer/helper-reset-password
```

`portainer_data` 也可以直接用 `portainer.key`文件所在的路径，可以通过全局搜索来找到（一般在 `/var/lib/docker/volumes/...` 下面）。

运行成功后，会在终端打印用户名和重置后的新密码，用新密码登录后再修改密码即可。


<hr style="width: 100%"/>

<h1 style="font-size: 1.5em;color:#555;font-weight: bold;">Comments: (on <a href="https://github.com/jrdeng/jrdeng.github.io/issues/17">github issue)</a></h1>


<script src="https://utteranc.es/client.js"
        repo="jrdeng/jrdeng.github.io"
        issue-number="17"
        theme="github-light"
        crossorigin="anonymous"
        async>
</script>
