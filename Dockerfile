# Base image
FROM openjdk:17-jdk-slim

# Maintainer label
LABEL authors="jeongwonkim"

# Add a volume pointing to /tmp
VOLUME /tmp

# The application's jar file
ARG JAR_FILE=build/libs/test-docker-0.0.1-SNAPSHOT.jar

# Copy the application's jar to the container
COPY ${JAR_FILE} app.jar

# Expose port 8080
EXPOSE 8080

# Run the jar file
ENTRYPOINT ["java","-jar","/app.jar"]
