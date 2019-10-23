#!/bin/bash
microk8s.kubectl -n kube-system describe secret $(microk8s.kubectl -n kube-system get secret | grep kubernetes-admin-dashboard-token | awk '{print $1}') | grep token:

