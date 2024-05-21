
FROM ubuntu:20.04


RUN apt-get update && apt-get install -y nginx


COPY html /var/www/html


RUN date > /var/www/html/buildtime.txt


RUN echo "daemon off;" >> /etc/nginx/nginx.conf


EXPOSE 81


CMD ["nginx"]
