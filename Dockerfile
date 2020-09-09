FROM nginx:mainline-alpine
RUN rm /etc/nginx/conf.d/*
ADD conf/hello.conf /etc/nginx/conf.d/
ADD html/index.html /usr/share/nginx/html/
