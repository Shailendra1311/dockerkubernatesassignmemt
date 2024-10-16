# Use an official OpenJDK runtime as a parent image
FROM openjdk:17-jdk-alpine
 
# Set the working directory in the container
WORKDIR /app
 
# Copy the JAR file from the target directory into the container
COPY target/hello-world-docker.jar app.jar
 
# Expose port 8080
EXPOSE 8992
 
# Run the application
ENTRYPOINT ["java", "-jar", "app.jar"]