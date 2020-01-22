# Script to setup required topics for Kakfa Connect to work

readonly ZOOKEEPER=zookeeper:2181

echo "Creating connect-configs topic"
../bin/kafka-topics.sh --create --zookeeper ZOOKEEPER --replication-factor 3 --partitions 1 --topic connect-configs

echo "Creating connect-offsets topic"
../bin/kafka-topics.sh --create --zookeeper ZOOKEEPER --replication-factor 3 --partitions 25 --topic connect-offsets

echo "Creating connect-status topic"
../bin/kafka-topics.sh --create --zookeeper ZOOKEEPER --replication-factor 3 --partitions 5 --topic connect-status