---
title: "给docker daemon设置代理"
date: 2025-01-08T19:17:55+08:00
slug: "25"
tags: [
    "docker",
]
---

修改配置：

> sudo vi /etc/docker/daemon.json


```
{
  "proxies": {
    "http-proxy": "http://127.0.0.1:1080",
    "https-proxy": "http://127.0.0.1:1080",
    "no-proxy": "*.example.com,localhost,127.0.0.0/8"
  }
}
```

重启服务：

> sudo systemctl restart docker


ref: [https://docs.docker.com/engine/daemon/proxy/](https://docs.docker.com/engine/daemon/proxy/)



<hr style="width: 100%"/>

<h1 style="font-size: 1.5em;color:#555;font-weight: bold;">Comments: (on <a href="https://github.com/jrdeng/jrdeng.github.io/issues/25">github issue)</a></h1>


<script src="https://utteranc.es/client.js"
        repo="jrdeng/jrdeng.github.io"
        issue-number="25"
        theme="github-light"
        crossorigin="anonymous"
        async>
</script>
