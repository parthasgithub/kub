#! /bin/bash

swapoff -a 

systemctl stop firewalld

kubeadm reset

kubeadm init --apiserver-advertise-address=192.168.1.80 --pod-network-cidr=192.168.0.0/16

kubectl apply -f calico.yaml
hellop
