# datastream-connect

This is _almost_ a mirror of Kafka. I have stripped anything that I do not need. It has a dockerfile to containerise Kafka Connect and the Confluent ElasticSearch sink connector.

## Prerequesits

If you have not yet setup the topics required for Kafka Connect, you will need to run:

`./scripts/createConnectTopics.sh`

## How to build

`docker build . -t datastream-connect:<version>`
