FROM tomcat:9
ADD addressbook.war /usr/local/tomacat/webapps
EXPOSE 8080
CMD ["catalina.sh", "run"]
