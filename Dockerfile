From tomcat:8.0

RUN rm -rf /usr/local/tomcat/webapps/*

COPY ./target/my-task-*.war /usr/local/tomcat/webapps/ROOT.war

CMD ["catalina.sh","run"]
