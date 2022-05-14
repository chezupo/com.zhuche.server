FROM openjdk:17-jdk-alpine
EXPOSE 8080
ARG JAR_FILE=build/libs/server-0.0.1-SNAPSHOT.jar
ADD ${JAR_FILE} app.jar