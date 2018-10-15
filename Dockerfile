FROM ubuntu:latest
MAINTAINER Sharique Masood <sharique.masood@tothenew.com>
RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y nginx

#COPY index.html /var/www/index.html

#COPY index.html /usr/share/nginx/www
#COPY default.conf /etc/nginx/conf.d/
#COPY index.html /usr/share/nginx/html/
#COPY website /usr/share/nginx/html
#COPY default.conf /etc/nginx/conf.d/

COPY nginx.conf  /etc/nginx/nginx.conf
COPY website /var/www/html
CMD ["nginx", "-g", "daemon off;"]

EXPOSE 80 443
