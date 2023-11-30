#FROM node:20.10.0-alpine3.18
FROM ubuntu:22.04
USER root
RUN apt-get update
RUN apt-get -y install curl gnupg
RUN curl -sL https://deb.nodesource.com/setup | bash - && \
apt-get install -yq nodejs build-essential
RUN npm install -g npm
#RUN apt-get -y install nodejs
#RUN npm install
#RUN sudo apt-get update
RUN sudo apt-get install -y libappindicator1 fonts-liberation
RUN wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
RUN sudo dpkg -i google-chrome*.deb