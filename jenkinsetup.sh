#!/bin/bash

# Update the system
sudo apt update
sudo apt upgrade -y

# Install Java (Jenkins requires Java)
sudo apt install openjdk-11-jdk -y

# Add Jenkins repository key
wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -

# Add Jenkins repository
sudo sh -c 'echo deb https://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'

# Update again after adding Jenkins repo
sudo apt update

# Install Jenkins
sudo apt install jenkins -y

# Start Jenkins
sudo systemctl start jenkins

# Enable Jenkins to start on boot
sudo systemctl enable jenkins

# Show Jenkins status
sudo systemctl status jenkins
