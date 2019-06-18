FROM tomcat:8-jdk8

RUN apt update 
RUN apt install maven -y
ADD . /app
WORKDIR /app
RUN mvn install
RUN rm -rf /usr/local/tomcat/webapps/ROOT
RUN mv sm-shop/target/ROOT.war /usr/local/tomcat/webapps/
RUN mv tomcat-users.xml /usr/local/tomcat/conf/tomcat-users.xml
RUN mkdir -p /usr/local/tomcat/conf/Catalina/localhost/
RUN mv manager.xml /usr/local/tomcat/conf/Catalina/localhost/

CMD ["catalina.sh", "run"]
