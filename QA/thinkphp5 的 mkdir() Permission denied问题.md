## “mkdir() Permission denied”错误。

> 最直接的方式，把runtime权限放开，让所有用户都可以创建它。
```
chmod -R 777 runtime
```
在liunx中进入项目目录执行以上命令，就能解决这个问题，简单，高效。

> 如果你对文件的安全要求比较苛刻，那么以上的答案并不能令你满意，简单，高效的方法背后一般需要牺牲一些安全因素为代价。
但以下提供的方法或许是一个不错的选择。
更改runtime目录的所有者，也就是runtime这个目录权限只针对所有者开放。

服务器是nginx，nginx中设置的访问用户为www用户，只需要把runtime目录有root用户改为www用户就能解决此问题。
```
ps aux|grep nginx //查看当前的nginx进程，能够找到nginx用户是哪个（可能是www,user或者其他的）

chown -R www runtime //chown -R <nginx 用户> runtime,改变runtime所有者为nginx用户
```