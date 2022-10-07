FROM 	nginx

#	COMMON
RUN 	apt update

RUN		apt install -y openssl
RUN     apt install -y supervisor
RUN     apt install -y vim joe curl

RUN		openssl req \
		-x509 -nodes -days 365 \
		-newkey rsa:2048 \
		-keyout /etc/ssl/nginx.key \
		-out /etc/ssl/nginx.crt \
		-subj "/C=RU/ST=RT/L=Kazan/O=21School/OU=IT/CN=localhost"

#	NGINX
RUN		rm -rf /etc/nginx/conf.d/default.conf
COPY	srcs/default		    /etc/nginx/conf.d/default.conf
COPY	srcs/index.html			/usr/share/nginx/html
COPY	srcs/index_0.html		/usr/share/nginx/html
COPY	srcs/supervisord.conf	/etc/supervisord.conf

COPY	srcs/nginx_start.sh		/tmp
RUN		chmod +x /tmp/nginx_start.sh

EXPOSE	80 443
CMD		sh /tmp/nginx_start.sh
