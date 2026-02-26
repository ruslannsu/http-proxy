FROM ubuntu:24.04

WORKDIR /proxy

COPY . .

RUN apt-get update && \
    apt-get install -y --no-install-recommends gcc make libglib2.0-dev && \
    rm -rf /var/lib/apt/lists/*

RUN make .


CMD ["./build/proxy"]


