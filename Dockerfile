FROM ubuntu:latest


RUN apt-get update && apt-get -y install lua5.4 liblua5.4-dev luarocks
RUN update-alternatives --install /usr/bin/lua lua-interpreter /usr/bin/lua5.4 130

# unsure if i want to keep these since `which luarocks` is confusing
RUN echo 'alias luarocks="luarocks-5.4"' >> ~/.bashrc
RUN echo 'alias luarocks-admin="luarocks-admin-5.4"' >> ~/.bashrc

WORKDIR /lua-workspace