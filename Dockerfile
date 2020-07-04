FROM alpine:latest
MAINTAINER Scaunasu Monica

RUN apk add --no-cache mysql mysql-client

COPY bin/startup.sh /startup.sh
COPY conf/my.cnf /etc/mysql/my.cnf

RUN chmod +x /startup.sh
RUN mkdir -p /run/mysqld && mkdir -p /dbinit.d
RUN echo "test"
RUN echo "test2"

WORKDIR /db
COPY . /dbinit.d
VOLUME /dbinit.d


ENV MYSQL_DATABASE=laborator
ENV MYSQL_USER=monica
ENV MYSQL_PASSWORD=123
ENV MYSQL_ROOT_PASSWORD=123456

EXPOSE 3306

HEALTHCHECK CMD ["mysqladmin", "ping"]
CMD ["/startup.sh"]
