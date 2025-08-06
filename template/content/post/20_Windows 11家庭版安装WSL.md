---
title: "Windows 11家庭版安装WSL"
date: 2023-08-06T16:17:02+08:00
slug: "20"
tags: [
    "WSL",
]
---

管理员权限打开PowerShell，执行：

```
wsl --install
```

提示安装成功。但是启动WSL的时候报错：

```
WslRegisterDistribution failed with error: 0x80370114
```

似乎是家庭版在“启用或关闭Windows功能”里看不到Linux子系统的功能，用命令行：

```
dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart 
dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart
```

（第二个应该是在第一步就激活了的）

<hr style="width: 100%"/>

<h1 style="font-size: 1.5em;color:#555;font-weight: bold;">Comments: (on <a href="https://github.com/jrdeng/jrdeng.github.io/issues/20">github issue)</a></h1>


<script src="https://utteranc.es/client.js"
        repo="jrdeng/jrdeng.github.io"
        issue-number="20"
        theme="github-light"
        crossorigin="anonymous"
        async>
</script>
