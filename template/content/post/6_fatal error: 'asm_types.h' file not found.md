---
title: "fatal error: 'asm/types.h' file not found"
date: 2019-03-15T17:27:44+08:00
slug: "6"
tags: [
    "技术",
    "Android",
]
---

用cmake+ndk的时候遇到一个错误：

```
fatal error: 'asm/types.h' file not found
```

用的是ndk自带的 `build/cmake/android.toolchain.cmake`。

看现象是include路径没包含进来。

解决方案，修改 `build/cmake/android.toolchain.cmake`，增加：

```
if (${ANDROID_ABI} STREQUAL "x86_64")
    include_directories(${ANDROID_SYSROOT}/usr/include/x86_64-linux-android)
elseif (${ANDROID_ABI} STREQUAL "x86")
    include_directories(${ANDROID_SYSROOT}/usr/include/i686-linux-android)
elseif (${ANDROID_ABI} STREQUAL "arm64-v8a")
    include_directories(${ANDROID_SYSROOT}/usr/include/aarch64-linux-android)
elseif (${ANDROID_ABI} STREQUAL "armeabi-v7a")
    include_directories(${ANDROID_SYSROOT}/usr/include/arm-linux-androideabi)
endif()
```

搞定。


<hr style="width: 100%"/>

<h1 style="font-size: 1.5em;color:#555;font-weight: bold;">Comments: (on <a href="https://github.com/jrdeng/jrdeng.github.io/issues/6">github issue)</a></h1>


<script src="https://utteranc.es/client.js"
        repo="jrdeng/jrdeng.github.io"
        issue-number="6"
        theme="github-light"
        crossorigin="anonymous"
        async>
</script>
