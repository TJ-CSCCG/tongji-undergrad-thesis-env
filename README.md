# tongji-undergrad-thesis-env

避免污染机器环境 & 节省各平台用户安装时间。

## 使用方法

### 1. 克隆 template-generated 仓库

点击 [tongji-undergrad-thesis](https://github.com/TJ-CSCCG/tongji-undergrad-thesis) 的 `Use this template`，并成功 `Create repository from template`。

```shell
> git clone https://github.com/<your-username>/<your-thesis-repository-name>
```

### 2. 克隆该仓库

```shell
> git clone https://github.com/TJ-CSCCG/tongji-undergrad-thesis-env
> cd tongji-undergrad-thesis-env
> source envsetup.sh
```

### 3. 构建镜像 & 运行容器

#### i. docker compose (recommand)

```shell
> docker compose up -d # you can still use compose v1 by docker-compose
```

镜像地址：https://hub.docker.com/repository/docker/skyleaworlder/tut-env

#### ii. Docker（本地构建镜像）

```shell
> docker build -t tut-env:v1 .
> docker run -itd --name tut-env tut-env:v1
```

注：视网络情况，首次构建镜像可能需要 12 min 左右；容器体积约为 974 MB。

### 4. 编译 LaTeX 文档

在宿主机的 thesis 工作目录执行 `compile` 指令：

```shell
> # you are in Host OS now
> # function "compile" will help you compile document in Container OS
> cd <your-thesis-repository-path>
> compile
```

还可以在宿主机执行 tlmgr-install 将宏包直接下载到容器中：

```shell
> # install algorithms and cases into container
> tlmgr-install algorithms cases
```

## 注意

* 宿主机目前仅良好支持 Linux。
* 非 Linux 用户可使用 VSCode 连接 Linux 服务器，并根据上述指引搭建环境。
* 容器内使用 XeLaTeX 编译文档。
