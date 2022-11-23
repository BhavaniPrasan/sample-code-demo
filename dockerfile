FROM tomcat:9
ADD /var/lib/jenkins/workspace/Project2-DeployToK8s-Cluster/target/addressbook.war .
ADD addressbook.war /usr/local/tomacat/webapps
EXPOSE 8080
CMD ["catalina.sh", "run"]
