FROM ubuntu:16.04
MAINTAINER fabius8 <fabius8@163.com>

RUN apt-get update \
    && apt-get install --no-install-recommends -y \
    software-properties-common \
    build-essential \
    libtool \
    autotools-dev \
    automake pkg-config \
    libssl-dev \
    libevent-dev \
    bsdmainutils \
    libboost-system-dev \
    libboost-filesystem-dev \
    libboost-chrono-dev \
    libboost-program-options-dev \
    libboost-test-dev \
    libboost-thread-dev \
    libuv1-dev \
    libmicrohttpd-dev \
    cmake \
    libssl-dev \
    git-core

RUN git clone https://github.com/UlordChain/ulordrig.git

RUN cd ulordrig \
    && mkdir build && cd build \
    && cmake .. \
    && make

ADD entrypoint /
CMD ["/entrypoint"]
