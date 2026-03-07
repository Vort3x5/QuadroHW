FROM ubuntu:24.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
    build-essential \
    make \
    time \
    g++ \
    gcc \
    verilator \
    gtkwave \
    octave \
    tcsh \
    fish \
    git \
    lua5.3 \
    python3 \
    python3-pip \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /work
