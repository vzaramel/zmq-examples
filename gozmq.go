package main

import (
    "fmt"
    zmq "github.com/alecthomas/gozmq"
    "time"
)

func main() {
    context, _ := zmq.NewContext()
    socket, _ := context.NewSocket(zmq.REP)
    defer context.Close()
    defer socket.Close()
    socket.Bind("tcp://*:5557")

    // Wait for messages
    for {
        msg, _ := socket.Recv(0)
        println("Received ", string(msg))

        // do some fake "work"
        time.Sleep(time.Second)

        // send reply back to client
        reply := fmt.Sprintf("World")
        socket.Send([]byte(reply), 0)
    }
}