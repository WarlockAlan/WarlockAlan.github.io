---
title: Linux_Notes
date: 2025-02-03 21:26:36
tags: Notes
---

搜索 wt 打开 windows terminal 默认打开的是 powershell （类似 cmd 的东西） 不用管

### PS > __ #your command here PS > wsl # WSL for Windows Subsystem for Linux 虚拟机

所有操作都是在终端内进行的

### `cd` change directory 改变当前目录（文件夹）

- cd my_folder
- cd # 不带任何参数，回到用户目录 `~` `$HOME`
- `pwd` - print working directory 将当前的目录输出到终端
- `touch` - 创建新文件
- `-` flag  `--` 
- `ls` - list files ** `-A` / `--almost-all`  - use this to see hidden files - 前面带点的文件 `.bashrc` 被隐藏的文件 ** `-a` / `--all` ** `-l` 输出为一个 table
- `mkdir` - make directory

> directory 目录，实际上就是文件夹

- `rm` - remove ** `-r` recursive 递归删除 - 删除该文件和他的子文件
- `rmdir` - remove directory - useless
- `explorer.exe` 用微软文件管理器打开 只在 wsl 里可用
- 大部分命令都实现了 `-h` 这个 flag，或 `--help` 使用这个flag查看命令说明
- `man` manual 查看某个命令的手册

** `man mkdir`

- `nano` 文本编辑器 ** 在终端中 `^` 代表 CTRL
- `sudo` - super user do ** 如果要求你使用 `root` （根用户），操作需要 `elevated` （提升权限），`permission denied`

------

黑马的教程用的是 CentOS，他安装软件使用 `yum` 或者 `rpm`，我是用的是 Ubuntu，安装软件使用 `apt`

`apt search` 搜索软件包

`apt install` 安装软件包

如果你太久没更新 apt，里面的包太老了，所以就没法安装某些新软件

`apt update` 是更新 apt

`apt upgrade` 更新你用 apt 安装的软件

------

启动 MySQL

- `systemctl start mysql`
- `systemctl` system control
- `mysqld` MySQL Daemon 
- start / restart / stop

  `sudo mysql -u root -p `