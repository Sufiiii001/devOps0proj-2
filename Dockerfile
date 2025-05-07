# Pull base image 
FROM tomcat:8-jre8 

# Maintainer 
#MAINTAINER "maheshbiradar8887@gmail.com" 
COPY ./webapp/target/webapp.war /usr/local/tomcat/webapps

EXPOSE 8080

CMD ["catalina.sh", "run"]