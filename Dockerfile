# Use an official OpenJDK runtime (JRE) as a parent image
FROM eclipse-temurin:17

# Set the working directory in the container
WORKDIR /app

# Copy the built JAR file from the target directory to the container
COPY target/ServiceDiscovery-0.0.1-SNAPSHOT.jar /app/ServiceDiscovery.jar

# Make port 8080 available to the world outside this container
EXPOSE 8761

# Run the application
ENTRYPOINT ["java", "-jar", "/app/ServiceDiscovery.jar"]