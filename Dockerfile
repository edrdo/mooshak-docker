FROM ubuntu:16.04
MAINTAINER Eduardo Marques <edrdo@dcc.fc.up.pt>

# Install necessary packages
RUN apt-get update && apt-get upgrade -y && apt-get install  -y \
    gcc \
    make \
    tcl \ 
    apache2 \
    apache2-suexec-pristine \
    curl \
    wget \
    vim \
    git \
    sqlite3 \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/* 

