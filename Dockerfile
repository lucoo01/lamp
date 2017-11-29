FROM tutum/lamp:latest
RUN apt-get update

RUN apt-get -y install curl
RUN apt-get -y install wget
RUN apt-get -y install vim

# 配置vim
ADD .vimrc ~/.vimrc

RUN rm -rf /app && mkdir /app
RUN rm -rf /etc/apache2/sites-available/000-default.conf

# 添加自己的配置文件
ADD 000-default.conf /etc/apache2/sites-available/000-default.conf


VOLUME ["/app"]
EXPOSE 80 3306
CMD ["/run.sh"]
