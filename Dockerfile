# Use official JDK 17 runtime
FROM openjdk:17-jdk-slim

# Set working directory
WORKDIR /app

# Copy JAR file into image
COPY target/*.jar app.jar

# Expose Spring Boot default port
EXPOSE 8080

# Run the JAR file
ENTRYPOINT ["java", "-jar", "app.jar"]
