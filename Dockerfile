# Use an official OpenJDK 17 runtime as the base image
FROM openjdk:17-jdk-alpine

# Set the working directory in the container
WORKDIR /app

# Copy the JAR file to the container
COPY target/SmartAIMailAssistant-0.0.1-SNAPSHOT.jar /app/SmartAIMailAssistant.jar

# Expose port 8080 to the outside world
EXPOSE 8080

# Command to run the JAR file
ENTRYPOINT ["java", "-jar", "/app/SmartAIMailAssistant.jar"]
