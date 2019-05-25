FROM raspbian/stretch
RUN apt-get update && apt-get install -y nodejs npm

RUN apt-get install -y make automake libtool git
RUN git clone https://github.com/thomasmacpherson/piface.git
RUN cd piface/c && \
    ./autogen.sh && ./configure && make && sudo make install
RUN ldconfig
