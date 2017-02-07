#!/bin/sh

KEY_WORD=${1:-mysql}
MYSQL_POD_NAME=$(kubectl get pod | grep Running | grep $KEY_WORD | awk '{ print $1 }')
MYSQL_POD_IP=$(kubectl describe pod $MYSQL_POD_NAME | grep IP | awk '{ print $2 }')
kubectl exec -it $MYSQL_POD_NAME   -- /opt/rh/rh-mysql56/root/usr/bin/mysql -h$MYSQL_POD_IP -P3306 -uroot -padmin
