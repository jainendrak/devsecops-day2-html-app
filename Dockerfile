FROM centos
#Using Centos Base image for httpd service
MAINTAINER JAinendra.kumar.roy@gmail.com
RUN yum install httpd -y 
#Changing directory during build time
WORKDIR /var/www/html/
#copy all data of current dir to workdir
ADD . .
#default port exposure
EXPOSE 80
#to start httpd on startup
ENTRYPOINT https -DFOREGROUND
