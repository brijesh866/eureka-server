FROM openjdk:8

ARG JAR_FILE = target/* .jar


COPY ${JAR_FILE} jenkins-docker.jar

ENRTYPOINT["java", "-jar","/jenkins-docker.jar"]

EXPOSE 8761