#!/bin/bash

set -x


ANNOTATIONS=""
KAFKA_BROKER_ID=${HOSTNAME##*-}

OUTSIDE_HOST=$(/kafka/libs/kubectl get node "$NODE_NAME" -o jsonpath='{.status.addresses[?(@.type=="InternalIP")].address}')
if [ $? -ne 0 ]; then
	echo "Outside (i.e. cluster-external access) host lookup command failed"
else
	OUTSIDE_PORT=3109${KAFKA_BROKER_ID}
	sed -i "s|advertised.listeners=|advertised.listeners=PLAINTEXT://${POD_IP}:9092,EXTERNAL://${OUTSIDE_HOST}:${OUTSIDE_PORT}|" /etc/kafka/server.properties
	ANNOTATIONS="$ANNOTATIONS kafka-listener-outside-host=$OUTSIDE_HOST kafka-listener-outside-port=$OUTSIDE_PORT"
fi

exec "$@"