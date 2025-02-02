FROM ubuntu:latest

RUN apt-get update && apt-get install ssh sudo -y

RUN adduser iti

RUN echo 'iti:1234' | chpasswd

RUN usermod -aG sudo iti

ENTRYPOINT service ssh start && bash


