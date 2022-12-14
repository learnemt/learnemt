## filebrowser（文件管理
### install（安装

1. powershell 安装
```
# 下载 filebrowser
iwr -useb https://raw.githubusercontent.com/filebrowser/get/master/get.ps1 | iex
​
# 启动 filebrowser
filebrowser -r /path/to/your/files
```
2. 也支持docker，具体看官方[文档](https://filebrowser.org/installation)
docker 一键安装
``` sudo docker run -d \
    -v /www/wwwroot/kejiwanjia:/srv \  
    -v /www/wwwroot/filebrowser/database/filebrowser.db:/database/filebrowser.db \
    -v /www/wwwroot/filebrowser/config/settings.json:/config/settings.json \
    -e PUID=$(id -u) \
    -e PGID=$(id -g) \
    -p 8080:80 \
    --name=share \
    --privileged=true \
    --restart always \
filebrowser/filebrowser:v2-s6
```

### initialization（初始化
- filebrowser -h
- filebrowser config init 
- filebrowser config set --address 0.0.0.0
- filebrowser config set --port 8000
- filebrowser config set --log ./filebrowser.loga 默认stdout
- filebrowser config set --root F:\fileroot\
- filebrowser config set -r F:\fileroot\ 同上一条
- filebrowser config set --locale zh-cn
- filebrowser config set --cache-dir ./cache

_初始化管理员用户密码_  
filebrowser.exe -d filebrowser.db users add test password --perm.admin

### customBrand（自定义品牌
+ filebrowser config set --branding.color #66ccff
+ filebrowser config set --branding.color #39c5bb
+ filebrowser config set --branding.name TempPan
+ filebrowser config set --branding.files ./static
nothing..

[centos 7搭建](https://zhuanlan.zhihu.com/p/432043086)