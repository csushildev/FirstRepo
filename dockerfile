FROM ubuntu
LABEL maintainer="csushildev"
ENV pkg_name1 git
ENV pkg_name2 nginx
RUN apt-get update
RUN apt-get install $pkg_name1 -y
RUN apt-get install $pkg_name2 -y
RUN git clone https://github.com/csushildev/Introduction.git
RUN cp Introduction/index.html /var/www/html/
RUN cp Introduction/styles.css /var/www/html/
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
