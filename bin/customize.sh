#!/bin/bash

read -p "Enter service name in proper case with no spaces (e.g. Marathon): " SERVICE_NAME
read -p "Enter HTTP path to service repository (e.g. https://github.com/mesosphere/marathon): " SERVICE_REPO_HTTP
read -p "Enter Git path to service repository (e.g. git@github.com:mesosphere/marathon.git): " SERVICE_REPO_GIT
read -p "Enter service tag line (e.g. \"Deploy and manage containers (including Docker) on top of Apache Mesos at scale.\"): " SERVICE_TAG_LINE

SERVICE_NAME_LOWER=`echo $SERVICE_NAME | tr '[:upper:]' '[:lower:]'`


# Copy the docs folder
cp -R docs docs-$SERVICE_NAME_LOWER

# Run a find and replace
find docs-$SERVICE_NAME_LOWER -type f -exec sed -i .bak "s,ServiceName,$SERVICE_NAME,g;s,servicename,$SERVICE_NAME_LOWER,g;s,ServiceRepoHTTP,$SERVICE_REPO_HTTP,g;s,ServiceRepoGit,$SERVICE_REPO_GIT,g;s,ServiceTagLine,$SERVICE_TAG_LINE,g" {} \;

find docs-$SERVICE_NAME_LOWER -type f -name "*.bak" -delete

# Output command
echo "Copy the docs-$SERVICE_NAME_LOWER folder as docs into your project repo and follow the instructions in docs/README.md to deploy it."