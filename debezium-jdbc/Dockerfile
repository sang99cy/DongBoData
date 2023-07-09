ARG DEBEZIUM_VERSION=1.9

FROM quay.io/debezium/connect:$DEBEZIUM_VERSION

ARG MYSQL_CONNECTOR_VERSION=8.0.26
ARG KAFKA_JDBC_VERSION=5.3.1

# Fetch and deploy MySQL Connector/J
RUN cd /kafka/libs && \
    curl -sO https://repo1.maven.org/maven2/mysql/mysql-connector-java/$MYSQL_CONNECTOR_VERSION/mysql-connector-java-$MYSQL_CONNECTOR_VERSION.jar

# Fetch and deploy Kafka Connect JDBC
ENV KAFKA_CONNECT_JDBC_DIR=$KAFKA_CONNECT_PLUGINS_DIR/kafka-connect-jdbc
RUN mkdir $KAFKA_CONNECT_JDBC_DIR

RUN cd $KAFKA_CONNECT_JDBC_DIR && \
    curl -sO https://packages.confluent.io/maven/io/confluent/kafka-connect-jdbc/$KAFKA_JDBC_VERSION/kafka-connect-jdbc-$KAFKA_JDBC_VERSION.jar