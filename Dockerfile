FROM jenkins/jenkins:lts
# jenkins/jenkins:lts already exposes port 8080 and 50000
# See https://github.com/jenkinsci/docker/blob/master/README.md for more information on the base image
LABEL repository.name="Jenkins"
LABEL repository.tag="latest"
LABEL repository.tag.version="latest"
LABEL repository.docker="https://hub.docker.com/r/gpedro34/jenkins"
LABEL repository.maintainer "gpedro34 - http://github.com/gpedro34 - https://hub.docker.com/r/gpedro34"
# Login as root
USER root
# Install via apt
RUN apt-get update \
    && apt-get -y install git=1:2.11.0-3+deb9u4 --no-install-recommends \
    && apt-get autoclean \
    && rm -rf /var/lib/apt/lists/*

# Give root permissions to jenkins user in order to be able to run docker as a cloud on the host
RUN usermod -g root jenkins

# Drop back to the regular jenkins user - good practice
USER jenkins
# Install plugins
COPY plugins.txt /usr/share/jenkins/ref/plugins.txt
RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/plugins.txt