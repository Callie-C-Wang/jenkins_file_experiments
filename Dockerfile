# Get jenkins image
FROM jenkins/jenkins:lts
USER root

RUN uname -a && cat /etc/*release

#install docker
RUN curl -fsSL https://get.docker.com -o get-docker.sh && sh get-docker.sh
RUN apt-get update && apt-get install -y sudo && rm -rf /var/lib/apt/lists/*

# Add the 'jenkins' user to a new group called 'root'
# Be careful, while adding a new groups to an existing user with '-G'
# option alone, it will remove all existing groups that user belongs.
# So, always add the '-a' (append) with '-G' option to add or append new groups.
RUN usermod -a -G root jenkins
# Add the 'jenkins' user to a new group called 'docker'
RUN usermod -aG docker jenkins

RUN echo "jenkins ALL=NOPASSWD: ALL" >>/etc/sudoers

# Now, the user jenkins is having both the root permission and
# the docker permission
USER jenkins
