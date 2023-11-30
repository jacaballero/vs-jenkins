#FROM node:20.10.0-alpine3.18
FROM node:20.10.0-alpine3.18 AS node_base 
FROM ubuntu:22.04
COPY --from=node_base / /
USER root
RUN sudo apt-get update
RUN sudo apt-get install -y libappindicator1 fonts-liberation
RUN wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
RUN sudo dpkg -i google-chrome*.deb