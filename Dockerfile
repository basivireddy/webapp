FROM tomcat:latest
MAINTAINER d.basivireddy@gmail.com
COPY target/CounterWebApp.war /usr/local/tomcat/webapps/
