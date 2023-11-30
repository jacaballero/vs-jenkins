#FROM node:20.10.0-alpine3.18
FROM ubuntu:22.04
USER root
RUN apt-get update
RUN apt-get -y install curl gnupg

RUN curl -sL https://deb.nodesource.com/setup_20.x | bash
RUN apt-get install --yes nodejs
RUN node -v
RUN npm -v
RUN npm i -g nodemon
RUN nodemon -v

RUN apt-get install -y libappindicator1 fonts-liberation
RUN wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
RUN dpkg -i google-chrome*.deb