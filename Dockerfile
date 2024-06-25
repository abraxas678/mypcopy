FROM ubuntu:latest
RUN apt update && apt upgrade -y
RUN apt install git nano curl wget -y
COPY pcopy_0.6.1_amd64.deb /run/pcopy_0.6.1_amd64.deb
RUN apt install -y /run/pcopy_0.6.1_amd64.deb

