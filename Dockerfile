# Use a lightweight and secure base image with Java 8
FROM openjdk:8-jdk-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the built JAR file into the container
COPY target/simple-java-project-1.0-SNAPSHOT.jar app.jar

# Use ENTRYPOINT to run the application
ENTRYPOINT ["java", "-jar", "app.jar"]
