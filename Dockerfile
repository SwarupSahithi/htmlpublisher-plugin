# Base Jenkins image
FROM jenkins/jenkins:lts

# Escalate privileges to install Maven
USER root

# Install Maven and any dependencies
RUN apt-get update \
 && apt-get install -y maven \
 && rm -rf /var/lib/apt/lists/*

# (Optional) Switch back to the Jenkins user for security
USER jenkins

# Keep default entrypoint and command
