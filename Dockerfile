# Example Jenkins Dockerfile, modify this to complete the challenge
FROM jenkins/jenkins:lts

USER root

RUN apt-get update && \
    apt-get install -y docker.io && \
    rm -rf /var/lib/apt/lists/*
RUN usermod -aG docker jenkins
USER jenkins
EXPOSE 8080 50000
CMD ["jenkins.sh"]


