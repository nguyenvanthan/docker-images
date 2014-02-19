# Docker file for kafka

## supported version:

* 0.8.0

## how to build

    sudo docker build -rm -t cnguyen/kafka:0.8.0 .

## how to start kafka

    sudo docker run -t -i -P cnguyen/kafka:0.8.0 bash

    // once you are in the container
    start-server.sh


