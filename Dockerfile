FROM vzaramel/gozmq

WORKDIR /Users/Zara/go/src/github.com/vzaramel/zmq-examples
ADD . /Users/Zara/go/src/github.com/vzaramel/zmq-examples
ADD . /Users/Zara/go/src/github.com/vzaramel/zmq-examples/helloworld

ENV GOPATH=/go
# go get all of the dependencies
RUN go get -tags zmq_4_x github.com/alecthomas/gozmq
 
RUN go get github.com/vzaramel/zmq-examples

EXPOSE 8080
CMD []
ENTRYPOINT ["/Users/Zara/go/bin/gozmq"]


