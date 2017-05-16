# lolink - LOL 国服客户端下载地址和升级补丁下载地址

## 安装
`gem install lolink`

## 说明

* 完整客户端下载地址
```bash
$ lolink
http://dlied1.qq.com/lol/full/3227/LOL_V3.2.2.7_FULL.exe
http://dlied1.qq.com/lol/full/3227/LOL_V3.2.2.7_FULL.7z.001
http://dlied1.qq.com/lol/full/3227/LOL_V3.2.2.7_FULL.7z.002
http://dlied1.qq.com/lol/full/3227/LOL_V3.2.2.7_FULL.7z.003
http://dlied1.qq.com/lol/full/3227/LOL_V3.2.2.7_FULL.7z.004
```

* 最新升级补丁下载地址
```bash
$ lolink -p
http://down.qq.com/lol/patch/3227/LOL_V3.2.2.6-V3.2.2.7_PATCH.exe
http://down.qq.com/lol/patch/3227/LOL_V3.2.2.7_PATCH.7z.001
```

* 指定任一版本补丁
```bash
$ lolink -v v3.2.2.5-V3.2.2.6
http://down.qq.com/lol/patch/3226/LOL_V3.2.2.5-V3.2.2.6_PATCH.exe
http://down.qq.com/lol/patch/3226/LOL_V3.2.2.6_PATCH.7z.001
```

* 调用 aria2 直接下载完整客户端
```bash
$ lolink -d
03/03 09:57:44 [NOTICE] Downloading 5 item(s)

03/03 09:57:44 [NOTICE] Allocating disk space. Use --file-allocation=none to disable it. See --file-allocation option in man page for more details.

03/03 09:57:44 [NOTICE] Download complete: /Users/kikyous/Workspace/lolink/LOL_V3.2.1.3_FULL.exe
[DL:272KiB][#b6c8d0 0B/1.8GiB(0%)][#e51e96 0B/1.8GiB(0%)][#4d078e 0B/1.8GiB(0%)][#f52244 0B/1.4GiB(0%)] [FileAlloc:#b6c8d0 1.2GiB/

...
```

* 调用 aria2 直接下载最新补丁

```bash
$ lolink -p -d 
03/03 09:59:31 [NOTICE] Downloading 3 item(s)

03/03 09:59:31 [NOTICE] Allocating disk space. Use --file-allocation=none to disable it. See --file-allocation option in man page for more details.

03/03 09:59:32 [NOTICE] Download complete: /Users/kikyous/Workspace/lolink/LOL_V3.2.1.2-V3.2.1.3_PATCH.exe
[DL:336KiB][#840971 0B/1.8GiB(0%)][#15ac83 0B/1.4GiB(0%)] [FileAlloc:#840971 0.9GiB/1.8GiB(51%)](+1)

```

* 查看 lolink 版本
```bash
$ lolink -v
```
