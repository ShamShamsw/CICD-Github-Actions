# Use a specific version of the base image for consistency
FROM openjdk:8-jre-alpine3.17

# Set the working directory
WORKDIR /usr/app

# Copy the application JAR file to the container
COPY ./build/libs/my-app-1.0-SNAPSHOT.jar .

# Expose the application port
EXPOSE 8080

# Use a non-root user for security
RUN addgroup -S appgroup && adduser -S appuser -G appgroup
USER appuser

# Run the application
ENTRYPOINT ["java", "-jar", "my-app-1.0-SNAPSHOT.jar"]

# Summary:
# - Uses OpenJDK 8 on Alpine Linux as the base image.
# - Sets the working directory to /usr/app.
# - Copies the application JAR file into the container.
# - Exposes port 8080 for the application.
# - Creates and switches to a non-root user for security.
# - Runs the application using the specified JAR file.