FROM mariadb

# $ docker run --detach --name some-mariadb \
#   --env MARIADB_USER=example-user \
#   --env MARIADB_PASSWORD=my_cool_secret \
#   --env MARIADB_ROOT_PASSWORD=my-secret-pw \
#   mariadb:latest

# docker run -it --rm -v /home/mikhail/PycharmProjects/minikube_example/srcs/mariadb/srcs/init.sql:/init.sql:z --env MARIADB_ROOT_PASSWORD=123 --env MARIADB_USER=example-user --env MARIADB_PASSWORD=123 mysql_image --init-file=/init.sql

#COPY srcs/start.sh .
COPY srcs/init.sql /docker-entrypoint-initdb.d/init0.sql

VOLUME	["/sys/fs/cgroup"]

CMD ["mariadbd"]
#CMD ["sh", "start.sh"]
