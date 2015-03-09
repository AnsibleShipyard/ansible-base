# ------------------------------------------------------
#                       Dockerfile
# ------------------------------------------------------
# image:    ansible-base
# tag:      centos
# name:     ansibleshipyard/ansible-base
# version:  v1.0.0
# repo:     https://github.com/AnsibleShipyard/ansible-base
# how-to:   docker build --force-rm -t ansibleshipyard/ansible-base:centos .
# Requires:
# authors:  github:@jasongiedymin,
# ------------------------------------------------------

FROM centos:latest
MAINTAINER ansibleshipyard

# Work area and prep
WORKDIR /usr/share/pyshared/ansible
ENV WORKDIR /usr/share/pyshared/ansible
RUN mkdir -p $WORKDIR

# Install deps
RUN yum install -y epel-release
RUN yum update -y
RUN yum install -y ansible
