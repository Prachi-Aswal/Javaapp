FROM alpine:latest
EXPOSE 8080
ADD https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.58/bin/apache-tomcat-9.0.58.tar.gz /opt
RUN tar -xvzf apache-tomcat-9.0.58.tar.gz && mv apache-tomcat-9.0.58 tomcat
COPY ./build/libs/mywebapp.war /opt/tomcat/webapps
CMD ["catalina.sh", "run"]
