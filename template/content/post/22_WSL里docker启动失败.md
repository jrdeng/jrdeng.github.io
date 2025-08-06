---
title: "WSL里docker启动失败"
date: 2023-08-17T18:47:30+08:00
slug: "22"
tags: [
    "docker",
    "WSL",
]
---

报错：
```
failed to start daemon: Error initializing network controller: error obtaining controller instance: unable to add return rule in DOCKER-ISOLATION-STAGE-1 chain:  (iptables failed: iptables --wait -A DOCKER-ISOLATION-STAGE-1 -j RETURN: iptables v1.8.7 (nf_tables):  RULE_APPEND failed (No such file or directory): rule in chain DOCKER-ISOLATION-STAGE-1
 (exit status 4))
```

解决：
```
sudo update-alternatives --set iptables /usr/sbin/iptables-legacy
sudo update-alternatives --set ip6tables /usr/sbin/ip6tables-legacy
```

参考：[https://forums.docker.com/t/failing-to-start-dockerd-failed-to-create-nat-chain-docker/78269](https://forums.docker.com/t/failing-to-start-dockerd-failed-to-create-nat-chain-docker/78269)

<hr style="width: 100%"/>

<h1 style="font-size: 1.5em;color:#555;font-weight: bold;">Comments: (on <a href="https://github.com/jrdeng/jrdeng.github.io/issues/22">github issue)</a></h1>


<script src="https://utteranc.es/client.js"
        repo="jrdeng/jrdeng.github.io"
        issue-number="22"
        theme="github-light"
        crossorigin="anonymous"
        async>
</script>
