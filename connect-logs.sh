#!/bin/sh
CONNECT_POD_NAME=$(kubectl get pod | grep -i running | grep ^connect | awk '{ print $1 }')
kubectl logs -f $CONNECT_POD_NAME