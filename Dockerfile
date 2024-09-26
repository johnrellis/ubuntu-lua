FROM ubuntu:latest


RUN apt-get update && apt-get -y install lua5.4 liblua5.4-dev luarocks
RUN update-alternatives --install /usr/bin/lua lua-interpreter /usr/bin/lua5.4 130

WORKDIR /lua-workspace