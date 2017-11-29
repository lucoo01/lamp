# 使用Docker 构建LAMP 环境 并 安装TP5
## 构建镜像
```
docker build -t loen/lamp .
```
## 运行
```
docker run -d -p 80:80 -p 3306:3306 -v /app:/app loen/lamp
```
