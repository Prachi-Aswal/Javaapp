FROM tomcat:9.0
COPY ./target/mywebapp.war /usr/local/tomcat/webapps/
CMD ["catalina.sh", "run"]
