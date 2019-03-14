#!/bin/bash -ex

TOPIC=test
SERVER=9.59.193.46:9092

while true
do
  date
  echo "Connecting to $SERVER topic $TOPIC"
  /opt/kafka/bin/kafka-console-consumer.sh --bootstrap-server $SERVER --topic $TOPIC --from-beginning
  sleep 1
done