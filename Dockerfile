FROM centos:7
LABEL maintainer="sundaypic"
RUN yum -y install httpd
COPY index.html /var/www/html/
COPY suited*.jpeg /var/www/html/
COPY image*.jpg /var/www/html/
COPY picarts*.jpg /var/www/html/
ENTRYPOINT ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80

