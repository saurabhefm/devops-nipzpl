# Wizard's Almanac Deployment

## Objective

Create a Jenkins pipeline in Docker that builds a Docker image for the "Wizard's Almanac" Python Flask application with a specific version number. Then, orchestrate the deployment of this image inside a Docker container using Docker Compose.

## Brief

Your mission is to automate the deployment of "Wizard's Almanac," a Flask application filled with mystical knowledge. This automation involves using Docker for containerization, Docker Compose for orchestration, and Jenkins for the automation process, ensuring a seamless deployment process without any external dependencies.

## Tasks

-   Containerize the Flask application by creating a Dockerfile in the "app" folder.
-   Add a version number to the Flask application, which should be reflected in the Docker image tag created by Jenkins.
-   Fill out the provided `docker-compose.yml` file to orchestrate the deployment of the Flask application. Ensure Docker Compose uses the image built by Jenkins with the correct version tag, rather than building the image itself.
-   Configure Jenkins (running in Docker) to automate the process of building the Flask application's Docker image with a version tag and deploying it using Docker Compose.

## Deliverables

-   A `Dockerfile` in the "app" folder for containerizing the Flask application.
-   A `docker-compose.yml` file in the root directory, which you need to complete. This file should orchestrate the deployment of the Flask application container, utilizing the image built by Jenkins with the specified version number.
-   A Jenkins pipeline script that automates the Docker image build, including version tagging, and deployment process using Docker Compose.
-   Documentation on how to execute the pipeline, specify the version, and access the deployed application.

## Versioning Requirement

-   When building the Docker image in Jenkins, include a version tag based on the current version of the Flask application.
-   Ensure the `docker-compose.yml` file references this versioned Docker image, allowing for controlled releases and rollback capabilities.

## Instructions for docker-compose.yml

1. Your `docker-compose.yml` should reference the version-tagged Flask application image built by Jenkins.
2. The service configuration in `docker-compose.yml` must use the image tag that corresponds to the application's version, ensuring the correct deployment of the specified release.

## Accessing the Application

After executing the pipeline, access the Flask application using the configured ports in your `docker-compose.yml` file through a web browser.

## Documentation

Provide detailed documentation explaining your orchestration strategy, including how the versioning of the Flask application is managed and reflected in the Docker image and Docker Compose configuration.

### Evaluation Criteria

-   **Docker and Docker Compose Best Practices**: Ensuring adherence to Docker's best practices when creating Dockerfiles and `docker-compose.yml` files. Your configurations should be optimized, secure, and align with Docker's recommended guidelines.

-   **Efficient Use of Docker Cache**: The Dockerfile should be designed to maximize the use of Docker's layer caching. The structure should be such that changes to the application's source code do not unnecessarily invalidate the cache layers, leading to more efficient builds.

-   **Versioning Control**: Effective implementation of version control in the Docker image creation process, with proper referencing in the Docker Compose file. The system should facilitate straightforward version updates and rollbacks.

-   **Jenkins Pipeline Configuration**: The Jenkins pipeline should be well-configured, utilizing Jenkins' capabilities to automate the Flask application's build and deployment process efficiently.

-   **Completeness**: All specified requirements should be met, including the Dockerization of the Flask application, the setup of Jenkins automation, and the orchestration using Docker Compose.

-   **Correctness**: The deployed Flask application should operate as intended, being accessible through the specified port and accurately reflecting the version specified in the Docker image.

-   **Maintainability**: The codebase should be clean, well-commented, and organized, making it easy for others to understand and modify. This includes using clear naming conventions, logical structuring, and providing comprehensive documentation.

### CodeSubmit

Please organize, design, test and document your code as if it were
going into production - then push your changes to the master branch. After you have pushed your code, you may submit the assignment on the assignment page.

All the best and happy coding,

The Frauscher Sensortechnik Team