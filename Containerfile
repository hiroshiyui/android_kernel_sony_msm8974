FROM ubuntu:14.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
    git-core \
    gnupg \
    flex \
    bison \
    gperf \
    build-essential \
    zip \
    curl \
    zlib1g-dev \
    gcc-multilib \
    g++-multilib \
    gcc-arm-linux-androideabi \
    libc6-dev-i386 \
    lib32ncurses5-dev \
    x11proto-core-dev \
    libx11-dev \
    lib32z-dev \
    libgl1-mesa-dev \
    libxml2-utils \
    xsltproc \
    unzip \
    python \
    bc \
    lzop \
    make \
    libssl-dev \
    && apt-get clean

RUN mkdir -p /build

ENV ARCH=arm
ENV CROSS_COMPILE=arm-linux-androideabi-

WORKDIR /build

CMD ["/bin/bash"]
