FROM ubuntu:16.04
MAINTAINER fabius8 <fabius8@163.com>

RUN apt-get update \
    && apt-get install --no-install-recommends -y \
    software-properties-common \
    build-essential \
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

ENV POOL_ADDRESS=117.45.165.141:7200
ENV PAYMENT_ADDRESS=ug2vVSuZWqPg47xHBz1zkpwDCtCUAEn8v5
ENV NAME=noname
ENV THREADS=1

ADD entrypoint /
CMD ["/entrypoint"]
