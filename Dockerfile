FROM nginx:1.17.6-alpine

COPY ./dist/ /usr/share/nginx/html/
COPY ./vhost.nginx.conf /etc/nginx/conf.d/ngnix-info.conf

EXPOSE 80
