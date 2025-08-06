---
title: "cannot locate symbol \"_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base\""
date: 2018-11-08T11:17:39+08:00
slug: "4"
tags: [
    "技术",
    "Android",
]
---

用NDK standalone toolchain编译生成的动态库，在设备上跑的时候报这个错。

搜了一下这个符号，似乎是STL相关的（？），而且是 libgnustl 里才有。

最后解决办法：make standalone toolchain的时候，指定 `--stl=libcxx` ，不使用默认的 libgnustl。

这样生成的toolchain不包含这个符号，生成的动态库也不会去找这个符号。

（以前一直用的默认的libgnustl并没有报错，应该是项目上没用到STL相关的东西？）


<hr style="width: 100%"/>

<h1 style="font-size: 1.5em;color:#555;font-weight: bold;">Comments: (on <a href="https://github.com/jrdeng/jrdeng.github.io/issues/4">github issue)</a></h1>


<script src="https://utteranc.es/client.js"
        repo="jrdeng/jrdeng.github.io"
        issue-number="4"
        theme="github-light"
        crossorigin="anonymous"
        async>
</script>
