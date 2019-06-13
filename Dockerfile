FROM jenkins/jenkins:lts

# Login as root
USER root
# Install via apt
RUN apt-get update \
    && apt-get -y install git  \
    && apt-get autoclean 

# Drop back to the regular jenkins user - good practice
USER jenkins
# Install plugins
COPY plugins.txt /usr/share/jenkins/ref/plugins.txt
RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/plugins.txt