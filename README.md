ansible-base
===========

Base Dockerfile for Ansible.

Dockerfiles are pre-loaded with Ansible, and may contain all the required
dependencies to run it's many trusted [modules](http://docs.ansible.com/list_of_all_modules.html).


## Usage

docker pull [ansibleshipyard/ansible-base:ubuntu](https://registry.hub.docker.com/u/ansibleshipyard/ansible-base/)

OR

docker pull [ansibleshipyard/ansible-base:centos](https://registry.hub.docker.com/u/ansibleshipyard/ansible-base/)


### Building

```bash
bash build.sh
```
