FROM centos:7
LABEL maintainer="sundaypic"
RUN yum -y install httpd
COPY index.html /var/www/html/
COPY suited.jpeg /var/www/html/
COPY PicsArt_02-07-05.29.14.jpg /var/www/html/
COPY IMG-20220329-WA0022[3203].jpg /var/www/html/
ENTRYPOINT ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80

