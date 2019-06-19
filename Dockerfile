FROM maven:3.6.1-jdk-8 as builder

RUN apt update
ADD . /app
WORKDIR /app
RUN mvn install

FROM tomcat:8-jdk8
RUN rm -rf /usr/local/tomcat/webapps/ROOT
COPY --from=builder /app/sm-shop/target/ROOT.war /usr/local/tomcat/webapps/

CMD ["catalina.sh", "run"]
