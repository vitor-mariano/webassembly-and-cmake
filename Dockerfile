FROM node:latest

WORKDIR /home/node/app

ADD . ./

RUN yarn

RUN cd .. && \
    git clone https://github.com/emscripten-core/emsdk.git && \
    cd emsdk && \
    ./emsdk install latest && \
    ./emsdk activate latest && \
    echo "PATH=\"\$PATH:/home/node/emsdk:/home/node/emsdk/upstream/emscripten\"" >> /etc/bash.bashrc && \
    cd .. && \
    wget https://github.com/Kitware/CMake/releases/download/v3.17.2/cmake-3.17.2.tar.gz && \
    tar -xvzf cmake-3.17.2.tar.gz && \
    rm cmake-3.17.2.tar.gz && \
    cd cmake-3.17.2 && \
    ./bootstrap -- -DCMAKE_BUILD_TYPE:STRING=Release && \
    make && \
    make install && \
    cd .. && \
    rm -rf cmake-3.17.2 && \
    cd app
