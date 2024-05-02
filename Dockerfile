from mysql:latest

ENV MYSQL_ROOT_PASSWORD test-pass
ENV MYSQL_DATABASE test

COPY employees.sql /docker-entrypoint-initdb.d/
COPY *.sql /home/
COPY *.dump /home/

EXPOSE 3306
