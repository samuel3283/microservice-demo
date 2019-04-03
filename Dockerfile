# Pull base image 
From tomcat:8-jre8 

# Maintainer 
MAINTAINER "samuel3283@gmail.com" 
# COPY ./webapp.war /usr/local/tomcat/webapps
COPY ./webapp/target/webapp.war D:\Tools\apache-tomcat-8.5.38-windows-x64\apache-tomcat-8.5.38\webapps
