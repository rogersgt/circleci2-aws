FROM circleci/node:6.11.2
LABEL maintainer='Grady Rogers'
LABEL description='Public Docker Image for CircleCi 2.0'

RUN sudo mkdir -p /app
ADD dependencies.sh test.js /app/
WORKDIR /app
RUN sudo apt-get install apt-utils
RUN sudo chmod +x ./dependencies.sh
RUN ./dependencies.sh

VOLUME /app

CMD /bin/bash