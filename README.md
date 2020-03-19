# Docker-aria2

## 1.版本

Aria2版本：1.33.x

## 2.说明

自制Aria2镜像，添加了DHT网络支持，并开启了rpc支持，默认密钥为password

## 3.使用方法

* 抓取容器：docker pull lunksana/docker-aria2
* 挂载容器/aria2/conf和/aria2/downloads至宿主机任意目录，并保证该目录具有写入权限
* 映射容器端口6800至宿主机任意端口

> 运行命令
docker run --name myaria2 -v /path/conf:/aria2/conf -v /path/downloads:/aria2/downloads -p 6800:6800 -d lunksana/docker-aria2:latest
> 配置文件
容器会自动生成aria2.conf配置文件，可根据自身需要对该文件进行调整

## 4.其他

建议搭配[AriaNg](https://github.com/mayswind/AriaNg)效果更佳
