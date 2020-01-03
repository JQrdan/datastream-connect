FROM ibmjava:8-jre

# move kafka connect scripts and jars across
COPY bin /opt/kafka/bin/
COPY libs /opt/kafka/libs/
# move connect property files over
COPY config/connect-distributed.properties /opt/kafka/config/
COPY config/connect-log4j.properties /opt/kafka/config/
# create log directory for kafka
RUN mkdir /opt/kafka/logs

# create connector plugin directory
RUN mkdir /opt/connectors
# move connectors into plugin directory
COPY connectors /opt/connectors/

WORKDIR /opt/kafka

EXPOSE 8083

# start kafka connect
ENTRYPOINT ["./bin/connect-distributed.sh", "config/connect-distributed.properties"]