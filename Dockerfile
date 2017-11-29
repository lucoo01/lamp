FROM tutum/lamp:latest
#RUN rm -fr /app && git clone https://github.com/lucoo01/think.git /app
RUN rm -rf /app && mkdir /app
# 让容器访问宿主机上的目录
RUN ls -al /etc/alternatives/php

VOLUME ["/app"]
EXPOSE 80 3306
CMD ["/run.sh"]
