# FROM jenkins/inbound-agent:latest

# USER root

# # Install dependencies and OpenJDK 17
# RUN apt-get update && \
#     apt-get install -y openjdk-17-jdk-headless && \
#     rm -rf /var/lib/apt/lists/*

# # List the contents of the /usr/lib/jvm directory to find the correct path
# RUN ls -l /usr/lib/jvm

# # Set Java environment variables (update this after finding the correct path)
# ENV JAVA_HOME=/opt/java/openjdk
# ENV PATH=$JAVA_HOME/bin:$PATH

# # USER jenkins

# # # Expose working directory
# # WORKDIR /home/jenkins

# # Set the working directory for your Java application
# WORKDIR /home/jenkins/hello-app

# # Copy your Hello.java file into the container
# COPY Hello.java .

# # Compile the Hello.java class
# RUN javac Hello.java

# WORKDIR /home/jenkins

FROM jenkins/inbound-agent

USER root

RUN apt-get update && \
    apt-get install -y maven docker.io procps dos2unix && \
    apt-get clean

COPY start.sh /usr/local/bin/start.sh
RUN chmod +x /usr/local/bin/start.sh

# Install essential tools and OpenJDK 17


# Expose working directory
WORKDIR /home/jenkins
EXPOSE 3001
ENTRYPOINT ["/usr/local/bin/start.sh"]
