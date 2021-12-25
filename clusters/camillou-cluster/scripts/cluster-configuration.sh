#!/bin/bash

# [Longhorn] Enable mount propagation
# (already enabled by default on k3s)

# Install longhorn
helm repo add longhorn https://charts.longhorn.io
helm repo update
helm install longhorn longhorn/longhorn --namespace longhorn-system --create-namespace
# Check installation with:
# kubectl -n longhorn-system get pod

# Create the storage classes using the folders, then set the default to ssd-replicated
# Tutorial: https://kubernetes.io/docs/tasks/administer-cluster/change-default-storage-class/

# TODO: add nodes, create encryption secret, create encrypted syncthing volume

# Install CertManager
helm repo add jetstack https://charts.jetstack.io
helm repo update
helm install \
  cert-manager jetstack/cert-manager \
  --namespace cert-manager \
  --create-namespace \
  --version v1.6.1 \
	--set installCRDs=true
# Check installation with: https://cert-manager.io/docs/installation/verify/
