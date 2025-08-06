---
title: "记录一次飞牛OS升级后Docker启动失败"
date: 2025-05-10T11:24:52+08:00
slug: "27"
tags: [
    "docker",
    "NAS",
    "飞牛",
]
---

升级系统后，web UI显示docker是关闭状态，点击开关提示“未知错误”。

SSH登录看docker服务是正常运行的。

Root Dir也是正确的。但是 container没起来。

尝试升级docker，重启后还是一样。

最后想起配置文件之前加了一个代理，而这个代理是飞牛OS里一个定时任务启动的，把代理配置从`/etc/docker/daemon.json`里删掉重启OK了。。。

猜测（也许）是因为docker启动时间比代理进程早？？？

<hr style="width: 100%"/>

<h1 style="font-size: 1.5em;color:#555;font-weight: bold;">Comments: (on <a href="https://github.com/jrdeng/jrdeng.github.io/issues/27">github issue)</a></h1>


<script src="https://utteranc.es/client.js"
        repo="jrdeng/jrdeng.github.io"
        issue-number="27"
        theme="github-light"
        crossorigin="anonymous"
        async>
</script>
