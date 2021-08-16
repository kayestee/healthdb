FROM mysql/mysql-server:latest
RUN apt-get update
ENV MYSQL_ROOT_PASSWORD 'admin'
COPY ./scripts/*.sql /docker-entrypoint-initdb.d/
EXPOSE 3306