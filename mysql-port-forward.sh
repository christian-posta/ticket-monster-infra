#!/bin/sh

CONNECT_POD_NAME=$(kubectl get pod | grep -i running | grep ^$1| awk '{ print $1 }')
kubectl port-forward $CONNECT_POD_NAME 3306:3306
