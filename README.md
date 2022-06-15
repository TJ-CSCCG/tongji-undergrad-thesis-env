# tongji-undergrad-thesis-env

避免污染机器环境 & 节省各平台用户安装时间。

## 1. Docker

```shell
> docker build -t tut-env:v1 .
> docker run -it tut-env:v1 bash
```

## 2. docker compose

```shell
> docker compose build # you can still use compose v1 by docker-compose
> docker compose up
```
