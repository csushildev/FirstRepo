FROM ubuntu
LABEL maintainer="csushildev"
ENV pkg_name2 nginx
RUN apt-get update
RUN apt-get install $pkg_name2 -y
COPY index.html /var/www/html/
COPY styles.css /var/www/html/
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
