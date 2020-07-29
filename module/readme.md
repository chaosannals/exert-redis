# Redis 模块开发

## 编译镜像

```sh
docker build -t exert-redis-modev .
```

## 编译容器

- /host/workspace 为项目目录
- /host/source 为源码目录，用于放相关源码
- /host/source/redis 下放 redis 源码用于编译

```sh
docker run -itd -v /host/workspace:/wks /host/source:/src --name exert-redis-modev exert-redis-modev
```
