FROM nginx
USER root
# RUN apt-get -y update
# COPY default.conf /etc/nginx/conf.d
COPY index.html /usr/share/nginx/html

