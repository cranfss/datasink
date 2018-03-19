# Builds an image for Apache Kafka 1.0.0.
#
# Added support for Prometheus java agent 0.10


FROM confluentinc/cp-kafka:4.0.0

RUN mkdir /kafka /kafka/data /kafka/logs
#ENV EXTRA_ARGS="-javaagent:/kafka/jmx_exporter/jmx_prometheus_javaagent-0.10.jar=9400:/kafka/jmx_exporter/jmx_exporter.yaml"

# prometheus
#ADD prometheus-config.yml /usr/app/prometheus-config.yml
#ADD http://central.maven.org/maven2/io/prometheus/jmx/jmx_prometheus_javaagent/0.10/jmx_prometheus_javaagent-0.10.jar /kafka/jmx_exporter/jmx_prometheus_javaagent-0.10.jar
#RUN chmod +r /kafka/jmx_exporter/jmx_prometheus_javaagent-0.10.jar

#COPY entrypoint.sh /opt/entrypoint.sh
#ENTRYPOINT ["/opt/entrypoint.sh"]

#COPY config.yaml /etc/jmx_exporter/config.yaml
#RUN mkdir -p /opt/jmx_exporter && \
#    wget https://repo1.maven.org/maven2/io/prometheus/jmx/jmx_prometheus_javaagent/0.7/jmx_prometheus_javaagent-0.7.jar -O \
#    /opt/jmx_exporter/jmx_prometheus_javaagent-0.7.jar
#ENV KAFKA_JMX_OPTS="-javaagent:/opt/jmx_exporter/jmx_prometheus_javaagent-0.7.jar=9102:/etc/jmx_exporter/config.yaml"
#EXPOSE 9102
