# Container image that runs your code
FROM ubuntu:latest

RUN apt-get update

RUN ln -fs /usr/share/zoneinfo/Europe/Berlindocker  /etc/localtime && \
    apt-get install -y tzdata && \
    dpkg-reconfigure --frontend noninteractive tzdata

RUN apt-get install -y texlive texlive-lang-german texlive-latex-extra texlive-science

WORKDIR /tex

COPY entrypoint.sh /entrypoint.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]
