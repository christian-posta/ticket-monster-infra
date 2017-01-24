#!/bin/sh

CONNECT_POD_NAME=$(kubectl get pod | grep -i running | grep ^connect | awk '{ print $1 }')
kubectl port-forward $CONNECT_POD_NAME 8083:8083
