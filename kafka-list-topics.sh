#!/bin/sh
KAFKA_POD_NAME=$(kubectl get pod | grep kafka | awk '{ print $1 }')
kubectl exec  $KAFKA_POD_NAME --  /kafka/bin/kafka-topics.sh --list --zookeeper zookeeper:2181