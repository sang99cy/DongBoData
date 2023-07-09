# Start Kafka, Kafka Connect, a MySQL and a MongoDB database and the aggregator
export DEBEZIUM_VERSION=2.1
docker-compose up --build

# Start MySQL connector
curl -i -X POST -H "Accept:application/json" -H  "Content-Type:application/json" http://localhost:8083/connectors/ -d @mysql-source.json



curl -i -X POST -H "Accept:application/json" -H  "Content-Type:application/json" http://localhost:8084/connectors/ -d @mysql-sink.json
