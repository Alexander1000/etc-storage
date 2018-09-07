SOURCE_DIR=./src/etc-storage
GOPACKAGES=$(shell find $(SOURCE_DIR) -name '*.go' -not -path "$(SOURCE_DIR)/vendor/*" -exec dirname {} \; | uniq)

build:
	GOPATH=$(shell pwd) go build -o bin/etc-storage etc-storage/cmd/main

test:
	GOPATH=$(shell pwd) go test -v $(GOPACKAGES)
