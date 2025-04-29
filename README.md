# CICD-Github-Actions

This repository demonstrates a CI/CD pipeline for building and delivering a Docker image to a private Docker repository using GitHub Actions.

## Features

- **Build Automation**: Uses Gradle to build a Java application.
- **Docker Image Creation**: Builds a Docker image containing the Java application.
- **Continuous Integration**: Automatically builds the project and runs tests on every push or pull request to the `master` branch.
- **Continuous Deployment**: Pushes the Docker image to a private Docker repository.

## Prerequisites

1. **Java Development Kit (JDK)**: Ensure JDK 1.8 or higher is installed.
2. **Docker**: Install Docker to build and run the Docker image locally.
3. **GitHub Secrets**: Add the following secrets to your GitHub repository:
   - `DOCKER_USERNAME`: Your Docker Hub username.
   - `DOCKER_PASSWORD`: Your Docker Hub password.

## Project Structure

- `build.gradle`: Gradle build configuration for the Java application.
- `Dockerfile`: Defines the Docker image for the application.
- `.github/workflows/gradle.yml`: GitHub Actions workflow for CI/CD.
- `gradlew` and `gradlew.bat`: Gradle wrapper scripts for Unix and Windows.
- `gradle/wrapper/gradle-wrapper.properties`: Configuration for the Gradle wrapper.

## Workflow Overview

The GitHub Actions workflow is defined in the `settings.gradle` file. It performs the following steps:

1. **Checkout Code**: Clones the repository.
2. **Set Up JDK**: Configures JDK 1.8 for the build process.
3. **Build with Gradle**: Compiles the Java application and runs tests.
4. **Build Docker Image**: Creates a Docker image using the `Dockerfile`.
5. **Push Docker Image**: Pushes the Docker image to a private Docker repository.

## Running Locally

1. Build the Java application:
   ```sh
   ./gradlew build

2. Build the Docker image:
    ```sh
    docker build -t your-image-name .

3. Run the Docker container:
    ```sh
    docker run -p 8080:8080 your-image-name

## License

This project is licensed under the Apache License 2.0. See the LICENSE file for details.