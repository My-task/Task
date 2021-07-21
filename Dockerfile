From tomcat:8.0

RUN rm -rf /usr/local/tomcat/webapps/*

ENV env_var_name=$PATH

RUN echo "$env_var_name"

COPY  ./target/My-Task-*.jar  /usr/local/tomcat/webapps/

CMD ["catalina.sh","run"]
