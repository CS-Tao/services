# services

Docker 服务集群

[![Docker Image CI](https://github.com/CS-Tao/services/workflows/Docker%20Compose%20CI/badge.svg)](https://github.com/CS-Tao/services/actions)

## 项目依赖

- docker
- docker-compose

## 已配置服务

![services_graph.svg](https://home.cs-tao.cc/services/services_graph.svg)

## 部署方法

1. 准备工作

    ```bash
    # 克隆本仓库
    git clone https://github.com/CS-Tao/services.git
    # 登录到 docker hub，使用 docker hub 账号密码登录
    docker login
    # 登录到 docker.pkg.github.com，使用 GitHub 用户名登录
    # 密码需要申请带有 [repo, read:package] 权限的 token
    docker login docker.pkg.github.com
    ```

1. 添加环境变量文件`.env`到项目根目录，复制`ci.env`内容到`.env`文件中，并修改其中各项环境变量的值

1. 拉取镜像

    ```bash
    docker-compose pull
    ```

1. 启动容器组

    ```bash
    docker-compose up -d
    ```

## 其它操作

- 打印 v2ray 链接和二维码到控制台
    ```bash
    docker logs v2ray-info
    # 或
    cat v2ray/info/output.txt
    ```

- 备份 seat-db 数据
    ```bash
    ./bin/seat-db_data/dump_data.sh
    ```

- 恢复 seat-db 数据
    ```bash
    ./bin/seat-db_data/restore_data.sh
    ```
