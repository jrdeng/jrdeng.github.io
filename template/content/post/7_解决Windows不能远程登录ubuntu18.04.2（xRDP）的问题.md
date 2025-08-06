---
title: "解决Windows不能远程登录ubuntu18.04.2（xRDP）的问题"
date: 2019-03-29T10:35:05+08:00
slug: "7"
tags: [
    "技术",
    "Ubuntu",
    "xRDP",
]
---

Windows远程登录工具（mstsc）可以说是比较好用的，为了方便开发，尝试在ubuntu上搭建xRDP，结果一直卡在登录界面。

表象是输入账号密码后，屏幕空白一段时间，然后提示：

```
connection problem,giving up
some problem
```
![image](https://user-images.githubusercontent.com/170314/55204676-e3697280-520a-11e9-8359-58c853f8c051.png)

各种分析之后发现应该是少了一个叫 `xorgxrdp` 的包，那就装上吧，结果这个包依赖另一个叫`xserver-xorg-core`的包，但是依赖不满足，所以没自动推荐安装。

那就手动安装`xserver-xorg-core`吧，结果发现这货要让我卸载很多东西，包括xorg的很多包和桌面（xubuntu-desktop）。。。我怕会破坏环境影响使用，就停在这里没继续了。

```
$ sudo apt-get install xserver-xorg-core

Suggested packages:
  xfonts-100dpi | xfonts-75dpi
The following packages will be REMOVED:
  xorg xserver-xorg-core-hwe-18.04 xserver-xorg-hwe-18.04 xserver-xorg-input-all-hwe-18.04 xserver-xorg-input-libinput-hwe-18.04
  xserver-xorg-input-synaptics-hwe-18.04 xserver-xorg-input-wacom-hwe-18.04 xserver-xorg-video-all-hwe-18.04
  xserver-xorg-video-amdgpu-hwe-18.04 xserver-xorg-video-ati-hwe-18.04 xserver-xorg-video-fbdev-hwe-18.04
  xserver-xorg-video-intel-hwe-18.04 xserver-xorg-video-nouveau-hwe-18.04 xserver-xorg-video-qxl-hwe-18.04
  xserver-xorg-video-radeon-hwe-18.04 xserver-xorg-video-vesa-hwe-18.04 xserver-xorg-video-vmware-hwe-18.04 xubuntu-core
  xubuntu-desktop
The following NEW packages will be installed:
  xserver-xorg-core
0 upgraded, 1 newly installed, 19 to remove and 0 not upgraded.
Need to get 1,351 kB of archives.
After this operation, 5,753 kB disk space will be freed.
```

后来发现 Griffon 的 [这篇文章：http://c-nergy.be/blog/?p=13390](http://c-nergy.be/blog/?p=13390) （因为已经fix了，图片也是借用的他文章里的，感谢！）。文章提到卸载后再把xorg的一些包安装回去就可以了，既然有先行者了，我就跟着做吧。

各种安装、卸载，最后我多加了一步，把桌面装回来了：

```
$ sudo apt-get install xserver-xorg-core
$ sudo apt-get -y install xserver-xorg-input-all
$ sudo apt-get install xorgxrdp
$ sudo apt-get install xubuntu-desktop
```

装完重启，环境看起来一切OK，暂时未见明显异常。

Windows登录，成功！又可以愉快的搬砖了。。。

最后，Thanks Griffon!  

所以说遇到困难还是要勇于尝试啊 =。=

感觉少了年轻时候的锐气，想当年折腾系统的时候，可是不惜数据被格式化无数遍的啊  lol.


<hr style="width: 100%"/>

<h1 style="font-size: 1.5em;color:#555;font-weight: bold;">Comments: (on <a href="https://github.com/jrdeng/jrdeng.github.io/issues/7">github issue)</a></h1>


<script src="https://utteranc.es/client.js"
        repo="jrdeng/jrdeng.github.io"
        issue-number="7"
        theme="github-light"
        crossorigin="anonymous"
        async>
</script>
