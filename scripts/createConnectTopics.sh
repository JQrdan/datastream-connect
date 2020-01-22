# Script to setup required topics for Kakfa Connect to work

readonly ZOOKEEPER=zookeeper:2181

echo "Creating topic connect-configs"
../bin/kafka-topics.sh --create --zookeeper ZOOKEEPER --replication-factor 3 --partitions 1 --topic connect-configs

echo "Creating topic connect-offsets"
../bin/kafka-topics.sh --create --zookeeper ZOOKEEPER --replication-factor 3 --partitions 25 --topic connect-offsets

echo "Creating topic connect-status topic"
../bin/kafka-topics.sh --create --zookeeper ZOOKEEPER --replication-factor 3 --partitions 5 --topic connect-status