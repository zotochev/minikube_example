docker build -t zotochev/mysql_image srcs/mariadb
docker build -t zotochev/nginx_image srcs/nginx
docker build -t zotochev/image_tornado_0 srcs/tornado_
docker push zotochev/mysql_image
docker push zotochev/nginx_image
docker push zotochev/image_tornado_0
