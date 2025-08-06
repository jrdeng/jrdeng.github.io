---
title: "用github的issue做记录并生成静态博客"
date: 2018-08-27T23:58:43+08:00
slug: "1"
tags: [
    "测试标签",
    "技术",
    "Python",
    "hugo",
    "GraphQL",
]
---


`github-issue-fetcher` + `blog-hugo`  + cron job 的方式已经放弃，改用 Github Actions来自动发布了。具体见 #11 

**本文仅供参考**

构思：

1. 在github上写issue
2. 把issue爬下来（[github-issue-fetcher](https://github.com/jrdeng/github-issue-fetcher)）
3. 评论系统用[https://utteranc.es/](https://utteranc.es/)，可以跟issue完美结合
4. 用hugo等生成静态博客，并发布到github page（[blog-hugo](https://github.com/jrdeng/blog-hugo)）


## 1. 在github上写issue

正如本篇一样，写到github的issue页面里，并保持OPEN状态。

可以加一些 Labels（blog-hugo会当作tag写入博客）

## 2. 把issue爬下来

写了些Python脚本，通过Github GraphQL API去爬issue list。

由于API的限制，每次抓issues 最大只能100条（first:100），如果issue数目超过100， 需要用到 cursor 多次获取。

然后偶然发现author字段有时候会返回None， 有点没搞明白。。。

## 3. 评论系统

一句话：[https://utteranc.es/](https://utteranc.es/) is amazing!!!

## 4. 用hugo等生成静态博客，并发布到github page

按照hugo和主题的需求，写Markdown文件头，以及内容。（以及评论系统的脚本）

我本地会有一个cron job自动去重新抓取issue和生成博客（如果内容没有变化，则不用push到github）。



<hr style="width: 100%"/>

<h1 style="font-size: 1.5em;color:#555;font-weight: bold;">Comments: (on <a href="https://github.com/jrdeng/jrdeng.github.io/issues/1">github issue)</a></h1>


<script src="https://utteranc.es/client.js"
        repo="jrdeng/jrdeng.github.io"
        issue-number="1"
        theme="github-light"
        crossorigin="anonymous"
        async>
</script>
