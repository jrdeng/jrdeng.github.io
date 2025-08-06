---
title: "Where is the core dump?"
date: 2023-08-03T16:52:51+08:00
slug: "19"
tags: [
    "Ubuntu",
    "Linux",
]
---

after setting `ulimit -c unlimited`, if you still don't get the `core` file in the workding dir. try to run this:

```
cat /proc/sys/kernel/core_pattern
```

to get the path of the core dump files.

test env: Ubuntu 20.04 (WSL), you may get:

```
/mnt/wslg/dumps/core.%e
```



<hr style="width: 100%"/>

<h1 style="font-size: 1.5em;color:#555;font-weight: bold;">Comments: (on <a href="https://github.com/jrdeng/jrdeng.github.io/issues/19">github issue)</a></h1>


<script src="https://utteranc.es/client.js"
        repo="jrdeng/jrdeng.github.io"
        issue-number="19"
        theme="github-light"
        crossorigin="anonymous"
        async>
</script>
