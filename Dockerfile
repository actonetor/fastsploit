FROM debian:10
LABEL MAINTAINER="https://github.com/actonetor/fastsploit"

WORKDIR fastsploit/
ADD . /fastsploit

RUN apt-get update
RUN apt-get install python3
RUN apt-get install git
RUN apt-get clean
RUN apt-get install -y wget

CMD ["fastsploit"]
