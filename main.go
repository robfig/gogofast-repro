package main

import (
	"fmt"
	"io/ioutil"

	"github.com/robfig/gogofast-repro/pb/b"

	"github.com/gogo/protobuf/proto"
)

func main() {
	pbBytes, err := ioutil.ReadFile("msg.pb")
	if err != nil {
		fmt.Println("reading msg.pb:", err)
		return
	}

	var msg b.ListSavedSearchResponse
	err = proto.Unmarshal(pbBytes, &msg)
	if err != nil {
		fmt.Println("unmarshaling:", err)
		fmt.Println(msg)
		return
	}
	fmt.Println("unmarshaled successfully:", msg)
}
