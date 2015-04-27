FROM ubuntu:14.04
MAINTAINER Miguel Escalante <miguel@opi.la>
RUN apt-get update && apt-get install -y build-essential &&\
## Ruby installation (2.1.2)
wget --no-verbose http://cache.ruby-lang.org/pub/ruby/2.1/ruby-2.1.2.tar.gz -O /tmp/ruby-2.1.2.tar.gz && \
tar -xzf /tmp/ruby-2.1.2.tar.gz -C /tmp/ && \
cd /tmp/ruby-2.1.2/ && \
./configure --disable-install-doc && \
make && \
make install && \
rm -rf /tmp/* 
## Node installation (0.12.2)
RUN wget http://nodejs.org/dist/v0.12.2/node-v0.12.2.tar.gz -O /tmp/node-v0.12.2.tar.gz && \
tar -xzf /tmp/node-v0.12.2.tar.gz -C /tmp/ && \
cd /tmp/node-v0.12.2/ && \
./configure && \
make && \
make install && \
rm -rf /tmp/*  

EXPOSE 80
