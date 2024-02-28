FROM ubuntu
RUN apt-get update && apt-get install -y nginx
WORKDIR /app
COPY ./index.html /var/www/html/
VOLUME [ "/data" ]
CMD ["nginx", "-g", "daemon off;"]
