FROM google/golang
 
RUN apt-get update -y && apt-get install -y libtool autoconf automake make g++ uuid-dev wget
WORKDIR /tmp
RUN wget http://download.zeromq.org/zeromq-4.0.4.tar.gz && tar -xvf zeromq-4.0.4.tar.gz && cd zeromq-* && ./configure && make install && ldconfig && cd .. && rm -rf zeromq*

RUN apt-get purge -y libtool autoconf automake make g++ uuid-dev wget

WORKDIR /Users/Zara/go/src/github.com/vzaramel/zmq
ADD . /Users/Zara/go/src/github.com/vzaramel/zmq
ADD . /Users/Zara/go/src/github.com/vzaramel/zmq/helloworld
 
# go get all of the dependencies
RUN go get github.com/alecthomas/gozmq
 
RUN go get github.com/vzaramel/zmq

EXPOSE 8080
CMD []
ENTRYPOINT ["/Users/Zara/go/bin/helloworld"]


