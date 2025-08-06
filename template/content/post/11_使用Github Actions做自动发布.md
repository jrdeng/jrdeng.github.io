---
title: "使用Github Actions做自动发布"
date: 2021-01-29T14:56:52+08:00
slug: "11"
tags: [
    "Github Actions",
]
---

之前一直用家里的NAS设置cron job来定时拉去issues生成博客， 这样做有一些缺陷：

1. 要求NAS一直在线（断电、断网就熄火了）
2. 定时pull有一定的延迟，而且长时间没更新issue的情况下，定时pull很浪费资源
3. 之前用`blog-hugo`来维护模板，跟 issue的仓库分离，不方便一起维护

抽时间弄了 github actions， 利用github支持的事件触发actions，实现自动生成和更新博客， nice！

顺便把hugo的模板和博客放在一个仓库里，all in one了。简单方便。


<hr style="width: 100%"/>

<h1 style="font-size: 1.5em;color:#555;font-weight: bold;">Comments: (on <a href="https://github.com/jrdeng/jrdeng.github.io/issues/11">github issue)</a></h1>


<script src="https://utteranc.es/client.js"
        repo="jrdeng/jrdeng.github.io"
        issue-number="11"
        theme="github-light"
        crossorigin="anonymous"
        async>
</script>
