#!/usr/bin/env bash

# connect via ssh to 1 master node and 2 worker nodes via ansible
command ansible-playbook -i hosts ~/projects/kube-cluster/initial.yml

# install Docker and Kubernetes deps
command ansible-playbook -i hosts ~/projects/kube-cluster/kube-dependencies.yml

# setup the master node
command ansible-playbook -i hosts ~/projects/kube-cluster/master.yml

# setup the worker nodes
command ansible-playbook -i hosts ~/projects/kube-cluster/workers.yml
