# Use an official Java 8 image as the base
FROM openjdk:8-jre-alpine

# Set the working directory in the container
WORKDIR /app

# Copy the JAR file into the container
COPY build/libs/*.jar app.jar

# Set the default command to run the application
ENTRYPOINT ["java", "-jar", "app.jar"]

# Expose the port
EXPOSE 8080
