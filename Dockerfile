From tomcat:8.0

RUN rm -rf /usr/local/tomcat/webapps/*


COPY  ./var/jenkins_home/workspace/My-Task/target-*.war  /usr/local/tomcat/webapps/

CMD ["catalina.sh","run"]
