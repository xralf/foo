all: clean build

build:
	go mod init foo
	go mod tidy
	capnp compile -I$(GOPATH)/src/capnproto.org/go/capnp/std -ogo books/books.capnp
	go mod tidy
	go build main.go

clean:
	rm -rf books/*.capnp.go
	rm -f main
	rm -f go.mod
	rm -f go.sum
