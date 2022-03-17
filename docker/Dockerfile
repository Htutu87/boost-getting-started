# docker build -t mettainnovations/efvm:1.0 .
# docker pull nvcr.io/nvidia/cuda:11.2.0-cudnn8-devel-ubuntu18.04

FROM ubuntu:latest

ENV DEBIAN_FRONTEND=noninteractive

# Set apt-get to automatically retry if a package download fails
RUN echo 'Acquire::Retries "8";' > /etc/apt/apt.conf.d/99AcquireRetries

# apt update
RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt update -y
RUN apt upgrade -y

RUN apt-get install -y \
    wget \
    git \
    vim

####################################################################################
# Data/hora e Timezone
# https://rtfm.co.ua/en/docker-configure-tzdata-and-timezone-during-build/
####################################################################################

ENV TZ=America/Sao_Paulo
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt-get update && \
    apt-get install -y ntp \
    && rm -rf /var/lib/apt/lists/*

RUN add-apt-repository universe
RUN apt-get update -y
RUN apt install libboost-all-dev

ENV BOOST_BIN_PATH /usr/lib/x86_64-linux-gnu
ENV BOOST_HEADER_PATH /usr/include/boost

# Set the working directory to /app
WORKDIR /home

#Home workdir
RUN mkdir -p /home/developer
ENV HOME /home/developer
WORKDIR /home/developer
