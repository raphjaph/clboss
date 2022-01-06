FROM debian:buster-slim

COPY . .

RUN apt-get update && apt-get install -y build-essential \
    pkg-config libev-dev libcurl4-gnutls-dev libsqlite3-dev \ 
    dnsutils git automake autoconf-archive libtool

RUN autoreconf -i
RUN ./configure && make && make install


