FROM jenkins/jenkins:lts

LABEL Name="Jenkins CI"
LABEL Version="1.0.0"
LABEL Maintainer "gpedro34 <> http://github.com/gpedro34"
# Login as root
USER root
# Install via apt
RUN apt-get update \
    && apt-get -y install git=1:2.11.0-3+deb9u4 --no-install-recommends \
    && apt-get autoclean \
    && rm -rf /var/lib/apt/lists/*

# Drop back to the regular jenkins user - good practice
USER jenkins
# Install plugins
COPY plugins.txt /usr/share/jenkins/ref/plugins.txt
RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/plugins.txt