//
//  Pubsub envelope publisher
//

package main

// import (
//     zmq "github.com/alecthomas/gozmq"
//     "time"
// )

// func main() {
//     context, _ := zmq.NewContext()
//     defer context.Close()

//     publisher, _ := context.NewSocket(zmq.PUB)
//     defer publisher.Close()
//     publisher.Bind("tcp://*:5556")

//     for {
//         publisher.Send([]byte("We don't want to see this"), 0)
//         publisher.Send([]byte("We would like to see this"), 0)
//         time.Sleep(time.Second)
//     }
// }