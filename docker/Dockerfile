# Builds an image for Apache Kafka 1.0.0.
#
# Added support for Prometheus java agent 0.10
# https://github.com/Nordstrom/docker-confluent-platform/blob/master/kafka/Dockerfile

FROM confluentinc/cp-kafka:4.0.0

RUN mkdir /kafka /kafka/data /kafka/logs /kafka/jmx_exporter

#Port 9200 is to talk to prometheus
ENV KAFKA_OPTS="-javaagent:/kafka/jmx_exporter/jmx_prometheus_javaagent-0.10.jar=9200:/kafka/jmx_exporter/jmx_exporter.yaml"

#ENV KAFKA_VERSION="0.9.0.1" \
#    LOG_DIR="/kafka/logs" \
#    KAFKA_LOG_DIRS="/kafka/logs" \
#    KAFKA_OPTS="-javaagent:/jmx_prometheus_javaagent.jar=1100:/jmx_exporter_config.yaml" \
#    JMX_PORT=1099 \
#    JMX_EXPORTER_PORT=1100

# prometheus
ADD ./jmx_exporter.yaml /kafka/jmx_exporter/jmx_exporter.yaml
ADD ./jmx_prometheus_javaagent-0.10.jar /kafka/jmx_exporter/jmx_prometheus_javaagent-0.10.jar

RUN chmod +r /kafka/jmx_exporter/jmx_exporter.yaml
RUN chmod +r /kafka/jmx_exporter/jmx_prometheus_javaagent-0.10.jar

EXPOSE 9200
