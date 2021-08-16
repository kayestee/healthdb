FROM mysql/mysql-server:latest as healthdb-cont
RUN ["yum", "update"]
ENV MYSQL_ROOT_PASSWORD 'admin'
COPY ./scripts/*.sql /docker-entrypoint-initdb.d/
EXPOSE 3306