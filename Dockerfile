From tomcat:8.0

RUN rm -rf /usr/local/tomcat/webapps/*

ENV env_var_name=$PATH


COPY  ./target/My-Task-*.jar  /usr/local/tomcat/webapps/

CMD ["catalina.sh","run"]
