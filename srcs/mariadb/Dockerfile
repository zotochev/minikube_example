FROM mariadb

# $ docker run --detach --name some-mariadb \
#   --env MARIADB_USER=example-user \
#   --env MARIADB_PASSWORD=my_cool_secret \
#   --env MARIADB_ROOT_PASSWORD=my-secret-pw \
#   mariadb:latest

# password here for demonstration purpose
RUN mysql -u root -p123 -e "create database counter_db;"

VOLUME	["/sys/fs/cgroup"]

CMD ["mariadbd"]