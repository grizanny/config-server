FROM openjdk:8-jdk-alpine
LABEL maintainer="Aliaksandr Rahavoi <rogovoi200023507@gmail.com>"

VOLUME /tmp
EXPOSE 8080

ARG JAR_FILE=target/config-server-0.0.1-SNAPSHOT.jar
ADD ${JAR_FILE} config-server.jar

ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/config-server.jar"]
