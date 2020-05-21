FROM mysql:5.7

ADD conf/mysqld.cnf /etc/mysql/mysql.conf.d/mysqld.cnf

RUN mkdir -p /var/log/mysql-binlog && chown -R mysql:mysql /var/log/mysql-binlog

ENV MYSQL_ROOT_PASSWORD=123456