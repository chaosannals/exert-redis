# Docker

## 容器

```sh
docker run -p 6379:6379 -v /host/redis/data:/data -v /host/redis/config:/etc/redis -v /host/redis/module:/mod -d --restart=always --name redis redis redis-server /etc/redis/redis.conf
```

/host/redis/config 必须预先在宿主机上生成，config 目录给出实例，可复制。 