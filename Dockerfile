FROM nginx:latest

RUN mkdir -p /etc/nginx/ssl && openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/nginx/ssl/nginx.key -out /etc/nginx/ssl/nginx.crt -subj "/CN=leansharegrow.io/C=UK/ST=Wiltshire/O=learnsharegrow.io" -batch

COPY ./conf/default.conf /etc/nginx/conf.d/default.conf

EXPOSE 80
EXPOSE 443
