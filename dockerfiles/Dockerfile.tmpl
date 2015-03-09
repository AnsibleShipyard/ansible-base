# ------------------------------------------------------
#                       Dockerfile
# ------------------------------------------------------
# image:    ansible-base-ubuntu
# tag:      latest
# name:     ansibleshipyard/ansible-mesos
# version:  v0.1.1
# repo:     https://github.com/AnsibleShipyard/ansible-base-ubuntu
# how-to:   docker build --force-rm -t ansibleshipyard/ansible-base-ubuntu .
# Requires:
# authors:  github:@jasongiedymin,
#           github:
# ------------------------------------------------------

# will be 14.04.1
FROM ubuntu:latest
MAINTAINER ansibleshipyard

# Work area and prep
WORKDIR /usr/share/pyshared/ansible
ENV WORKDIR /usr/share/pyshared/ansible
RUN mkdir -p $WORKDIR

# Install deps
RUN apt-get clean
RUN apt-get -y update
RUN apt-get install -y python-dev python-yaml python-jinja2 git unzip python-pip
RUN pip install paramiko PyYAML jinja2 httplib2 boto

# Setup Paths (after)
ENV PATH $WORKDIR/bin:/sbin:/usr/sbin:/usr/bin:/bin:$PATH
ENV ANSIBLE_LIBRARY $WORKDIR/library
ENV PYTHONPATH $WORKDIR/lib:$PYTHON_PATH

# Install ansible dev
# https://www.debian.org/doc/packaging-manuals/python-policy/ch-python.html
RUN git clone http://github.com/ansible/ansible.git /usr/share/pyshared/ansible

# Get submodules
RUN git submodule update --init --recursive

# Test
RUN ls -la $WORKDIR
