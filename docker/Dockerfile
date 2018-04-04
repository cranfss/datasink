# Builds an image for Apache Kafka 1.0.0.
#
# Added support for Prometheus java agent 0.10
# https://github.com/Nordstrom/docker-confluent-platform/blob/master/kafka/Dockerfile

FROM confluentinc/cp-kafka:4.0.0

RUN mkdir /kafka /kafka/data /kafka/logs /kafka/jmx_exporter

#Port 9200 is to talk to prometheus
ENV KAFKA_OPTS="-javaagent:/kafka/jmx_exporter/jmx_prometheus_javaagent-0.10.jar=9200:/kafka/jmx_exporter/jmx_exporter.yaml"

# prometheus
ADD ./jmx_exporter.yaml /kafka/jmx_exporter/jmx_exporter.yaml
ADD ./jmx_prometheus_javaagent-0.10.jar /kafka/jmx_exporter/jmx_prometheus_javaagent-0.10.jar

RUN chmod +r /kafka/jmx_exporter/jmx_exporter.yaml
RUN chmod +r /kafka/jmx_exporter/jmx_prometheus_javaagent-0.10.jar

