FROM maven:3.3.9 AS build 
COPY . .
RUN mvn --version
RUN mvn clean compile package

FROM tomcat:latest
MAINTAINER d.basivireddy@gmail.com
COPY --from=build /target/CounterWebApp.war /usr/local/tomcat/webapps/
