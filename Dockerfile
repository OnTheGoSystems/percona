FROM percona:latest

RUN usermod -u 1000 mysql
RUN usermod -G staff mysql

COPY config.cnf /etc/mysql/conf.d/config.cnf
ENV MYSQL_ROOT_PASSWORD root

RUN rm -rf /var/run/mysqld && mkdir -p /var/run/mysqld && chown -R mysql:mysql /var/run/mysqld && chmod 777 -R /var/run/mysqld