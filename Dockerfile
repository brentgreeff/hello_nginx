FROM nginx:mainline-alpine

RUN apk -U add \
  bind-tools
  # dnsmasq

RUN rm /etc/nginx/conf.d/*
COPY conf/default.conf /etc/nginx/conf.d/
COPY html/index.html /usr/share/nginx/html/
