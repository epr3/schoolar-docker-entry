FROM nginx
# expose ports
EXPOSE 80 443
# add nginx conf
ADD nginx/nginx.conf /etc/nginx/conf.d/default.conf
