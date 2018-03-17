FROM confluentinc/cp-kafka:4.0.0

ENV EXTRA_ARGS="-javaagent:/usr/local/share/jars/jmx_prometheus_javaagent-0.10.jar=9400:/etc/jmx_exporter/jmx_exporter.yaml "

# prometheus
#ADD prometheus-config.yml /usr/app/prometheus-config.yml
ADD http://central.maven.org/maven2/io/prometheus/jmx/jmx_prometheus_javaagent/0.10/jmx_prometheus_javaagent-0.10.jar /usr/app/jmx_prometheus_javaagent.jar
RUN chmod +r /usr/app/jmx_prometheus_javaagent.jar

# http://central.maven.org/maven2/io/prometheus/jmx/jmx_prometheus_javaagent/0.10/jmx_prometheus_javaagent-0.10.jar

#RUN mkdir /opt/jmx_prometheus_httpserver && wget 'http://central.maven.org/maven2/io/prometheus/jmx/jmx_prometheus_httpserver/0.6/jmx_prometheus_httpserver-0.6-jar-with-dependencies.jar' -O /opt/jmx_prometheus_httpserver/jmx_prometheus_httpserver.jar

#COPY entrypoint.sh /opt/entrypoint.sh
#ENTRYPOINT ["/opt/entrypoint.sh"]

#COPY config.yaml /etc/jmx_exporter/config.yaml
#RUN mkdir -p /opt/jmx_exporter && \
#    wget https://repo1.maven.org/maven2/io/prometheus/jmx/jmx_prometheus_javaagent/0.7/jmx_prometheus_javaagent-0.7.jar -O \
#    /opt/jmx_exporter/jmx_prometheus_javaagent-0.7.jar
#ENV KAFKA_JMX_OPTS="-javaagent:/opt/jmx_exporter/jmx_prometheus_javaagent-0.7.jar=9102:/etc/jmx_exporter/config.yaml"
#EXPOSE 9102
