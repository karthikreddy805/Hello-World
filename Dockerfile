# Use a lightweight and secure base image with Java 8
FROM openjdk:8-jdk-alpine

WORKDIR /app

# Fix here: use the actual jar built by Maven
COPY target/simple-java-project-1.0-SNAPSHOT.jar app.jar

ENTRYPOINT ["java", "-jar", "app.jar"]
