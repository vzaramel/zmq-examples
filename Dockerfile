FROM vzaramel/gozmq

WORKDIR /root/go/src/github.com/vzaramel/zmq-examples
ADD . /root/go/src/github.com/vzaramel/zmq-examples
ADD . /root/go/src/github.com/vzaramel/zmq-examples/helloworld

ENV GOPATH=/root/go
# go get all of the dependencies
RUN go get -tags zmq_4_x github.com/alecthomas/gozmq
 
RUN go get github.com/vzaramel/zmq-examples

EXPOSE 8080
CMD ["/bin/bash"]


