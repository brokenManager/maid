default: build
all: clean restore build

clean:
	rm -rf ./bin

restore:
	go mod download
	go mod vendor

build:
	go build ./...

test:
	go test ./...
