package main

import (
	"log"
	"net/http"
	"fmt"
)

func main() {
	log.Println("Starting application ...")

	if err := http.ListenAndServe(fmt.Sprintf(":%d", 8099), nil); err != nil {
		log.Fatalf("error in start application: %v", err)
	}

	log.Println("application terminated")
}
