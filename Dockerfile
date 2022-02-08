FROM tomcat:9.0
COPY /mnt/agent/work/8401910c47ab9496/target/mywebapp.war /webapps
CMD ["catalina.sh", "run"]
