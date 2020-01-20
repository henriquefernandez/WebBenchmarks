package main

import (
		"strconv"
    "fmt"
		"log"
		"encoding/json"
    "net/http"
    "time"
)

type Benchmark struct {
  Text string `json:"text"`
}

func test_1(w http.ResponseWriter, r *http.Request) {
	text := ""
	for i := 1; i < 10000; i++ {
			text = text + strconv.Itoa(i)
	}
	fmt.Fprintf(w, text)
}

func index(w http.ResponseWriter, r *http.Request) {
  json.NewEncoder(w).Encode(Benchmark { Text: "benchmark" })
}

func sleep_test(w http.ResponseWriter, r *http.Request) {
  time.Sleep(5 * time.Second)
  json.NewEncoder(w).Encode(Benchmark { Text: "benchmark" })
}

func main() {
    http.HandleFunc("/", index)
    http.HandleFunc("/10000", test_1)
    http.HandleFunc("/sleep", sleep_test)
    log.Fatal(http.ListenAndServe(":8080", nil))
}
