FROM ubuntu:latest
RUN apt-get update && \
    apt-get install ansible python3-pip -y && \
    pip3 install boto