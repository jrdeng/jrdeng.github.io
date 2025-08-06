---
title: "WSL里的Ubuntu/Debian因为时间不同步报错"
date: 2024-03-15T14:13:24+08:00
slug: "24"
tags: [
    "Ubuntu",
    "WSL",
]
---

报错：

```
E: Release file for http://mirrors.tuna.tsinghua.edu.cn/ubuntu/dists/jammy-updates/InRelease is not valid yet (invalid for another 2h 1min 40s). Updates for this repository will not be applied.
E: Release file for http://security.ubuntu.com/ubuntu/dists/jammy-security/InRelease is not valid yet (invalid for another 5h 19min 27s). Updates for this repository will not be applied.
```

同步时间解决：
```
hwclock -s
```


<hr style="width: 100%"/>

<h1 style="font-size: 1.5em;color:#555;font-weight: bold;">Comments: (on <a href="https://github.com/jrdeng/jrdeng.github.io/issues/24">github issue)</a></h1>


<script src="https://utteranc.es/client.js"
        repo="jrdeng/jrdeng.github.io"
        issue-number="24"
        theme="github-light"
        crossorigin="anonymous"
        async>
</script>
