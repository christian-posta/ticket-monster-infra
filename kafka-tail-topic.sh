#!/bin/sh
KAFKA_POD_NAME=$(kubectl get pod | grep kafka | awk '{ print $1 }')

kubectl exec  $KAFKA_POD_NAME --  /kafka/bin/kafka-console-consumer.sh --zookeeper zookeeper:2181 --topic $1 --from-beginning --property print.key=true
