# Builds an image for Apache Kafka 1.0.0.
#

FROM confluentinc/cp-kafka:4.0.0

RUN mkdir /kafka /kafka/data /kafka/logs /kafka/jmx_exporter /kafka/libs

#Port 9200 will be scraped prometheus
ENV KAFKA_OPTS="-javaagent:/kafka/jmx_exporter/jmx_prometheus_javaagent-0.10.jar=9200:/kafka/jmx_exporter/jmx_exporter.yaml"

#kafkacat and verify-release.sh for cluster verification
ADD ./kafkacat /kafka/lib/kafkacat
ADD ./verify-release.sh /kafka/lib/verify-release.sh

RUN chmod +x /kafka/libs/kafkacat
RUN chmod +x /kafka/libs/verify-release.sh

# prometheus
ADD ./jmx_exporter.yaml /kafka/jmx_exporter/jmx_exporter.yaml
ADD ./jmx_prometheus_javaagent-0.10.jar /kafka/jmx_exporter/jmx_prometheus_javaagent-0.10.jar

RUN chmod +r /kafka/jmx_exporter/jmx_exporter.yaml
RUN chmod +r /kafka/jmx_exporter/jmx_prometheus_javaagent-0.10.jar