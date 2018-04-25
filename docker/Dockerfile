# Builds an image for Apache Kafka 1.0.0.
#

FROM confluentinc/cp-kafka:4.1.0-1

RUN echo 'Starting Container'

RUN mkdir /kafka /kafka/data /kafka/logs /kafka/jmx_exporter /kafka/libs

#Port 9200 will be scraped prometheus
ENV KAFKA_OPTS="-javaagent:/kafka/jmx_exporter/jmx_prometheus_javaagent-0.10.jar=9200:/kafka/jmx_exporter/jmx_exporter.yaml"
#ENV KAFKA_LOG4J_OPTS="-Dlog4j.configuration=file:/kafka/libs/log4j.properties"

#add external host
ADD ./kubectl /kafka/libs/kubectl
ADD ./server.properties /etc/kafka/server.properties
ADD ./log4j.properties /kafka/libs/log4j.properties
ADD ./externalhost.sh /kafka/libs/externalhost.sh

RUN chmod +x /kafka/libs/kubectl
RUN chmod +rw /etc/kafka/server.properties
RUN chmod +r /etc/kafka/log4j.properties
RUN chmod +x /kafka/libs/externalhost.sh

#kafkacat and verify-release.sh for cluster verification
ADD ./kafkacat /kafka/libs/kafkacat
ADD ./verify-release.sh /kafka/libs/verify-release.sh

RUN chmod +x /kafka/libs/kafkacat
RUN chmod +x /kafka/libs/verify-release.sh

# prometheus
ADD ./jmx_exporter.yaml /kafka/jmx_exporter/jmx_exporter.yaml
ADD ./jmx_prometheus_javaagent-0.10.jar /kafka/jmx_exporter/jmx_prometheus_javaagent-0.10.jar

RUN chmod +r /kafka/jmx_exporter/jmx_exporter.yaml
RUN chmod +r /kafka/jmx_exporter/jmx_prometheus_javaagent-0.10.jar

