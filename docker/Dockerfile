# Builds an image for Apache Kafka 1.0.0.
#
# With support for Prometheus java agent 0.10


FROM confluentinc/cp-kafka:4.0.0

RUN mkdir /kafka /kafka/data /kafka/logs /kafka/jmx_exporter

#Port 9200 will be scraped prometheus
ENV KAFKA_OPTS="-javaagent:/kafka/jmx_exporter/jmx_prometheus_javaagent-0.10.jar=9200:/kafka/jmx_exporter/jmx_exporter.yaml"

#kafkacat for cluster verification
ADD ./kafkacat /kafka/jmx_exporter/kafkacat
RUN chmod +x /kafka/jmx_exporter/kafkacat

# prometheus
ADD ./jmx_exporter.yaml /kafka/jmx_exporter/jmx_exporter.yaml
ADD ./jmx_prometheus_javaagent-0.10.jar /kafka/jmx_exporter/jmx_prometheus_javaagent-0.10.jar

RUN chmod +r /kafka/jmx_exporter/jmx_exporter.yaml
RUN chmod +r /kafka/jmx_exporter/jmx_prometheus_javaagent-0.10.jar