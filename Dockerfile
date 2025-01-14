FROM centos:latest
RUN yum install tar -y 
RUN yum install epel-release -y 
RUN rpm -i https://rpms.remirepo.net/enterprise/remi-release-7.rpm 
RUN yum install yum-utils -y 
RUN yum-config-manager --enable remi-php72 && yum install php php-mbstring php-gd php-xml php-pdo -y 
COPY bahan.tar.gz /var/phpunit/ 
WORKDIR /var/phpunit 
RUN tar -zxvf bahan.tar.gz 
ENTRYPOINT php artisan key:generate
