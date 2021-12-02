# Cap'n Proto Experiments in Go

# My problem is this error that occurs below

~~~
./main.go:19:32: cannot use seg (type *"capnproto.org/go/capnp/v3".Segment) as type *"zombiezen.com/go/capnproto2".Segment in argument to books.NewRootBook
~~~

# Here is what I did:

~~~
~/go/src/foo(main ✗) ll
total 24
drwxr-xr-x@  7 ralf  staff   224B Dec  2 07:59 .
drwxr-xr-x   7 ralf  staff   224B Dec  2 07:18 ..
drwxr-xr-x@ 12 ralf  staff   384B Nov 29 20:53 .git
-rw-r--r--@  1 ralf  staff   240B Dec  2 07:58 Makefile
-rw-r--r--@  1 ralf  staff    34B Nov 29 20:53 README.md
drwxr-xr-x@  3 ralf  staff    96B Dec  2 07:59 books
-rw-r--r--@  1 ralf  staff   576B Nov 29 21:40 main.go

~/go/src/foo(main ✗) make
rm -rf books/*.capnp.go
rm -f main
rm -f go.mod
rm -f go.sum
go mod init foo
go: creating new go.mod: module foo
go: to add module requirements and sums:
	go mod tidy
go mod tidy
go: finding module for package capnproto.org/go/capnp/v3
go: found capnproto.org/go/capnp/v3 in capnproto.org/go/capnp/v3 v3.0.0-alpha.1
capnp compile -I/Users/ralf/go/src/capnproto.org/go/capnp/std -ogo books/books.capnp
go mod tidy
go: finding module for package zombiezen.com/go/capnproto2/schemas
go: finding module for package zombiezen.com/go/capnproto2
go: finding module for package zombiezen.com/go/capnproto2/encoding/text
go: found zombiezen.com/go/capnproto2 in zombiezen.com/go/capnproto2 v2.18.2+incompatible
go: found zombiezen.com/go/capnproto2/encoding/text in zombiezen.com/go/capnproto2 v2.18.2+incompatible
go: found zombiezen.com/go/capnproto2/schemas in zombiezen.com/go/capnproto2 v2.18.2+incompatible
go build main.go
# command-line-arguments
./main.go:19:32: cannot use seg (type *"capnproto.org/go/capnp/v3".Segment) as type *"zombiezen.com/go/capnproto2".Segment in argument to books.NewRootBook

make: *** [build] Error 2
~/go/src/foo(main ✗) ll
total 40
drwxr-xr-x@  9 ralf  staff   288B Dec  2 07:59 .
drwxr-xr-x   7 ralf  staff   224B Dec  2 07:18 ..
drwxr-xr-x@ 12 ralf  staff   384B Nov 29 20:53 .git
-rw-r--r--@  1 ralf  staff   240B Dec  2 07:58 Makefile
-rw-r--r--@  1 ralf  staff    34B Nov 29 20:53 README.md
drwxr-xr-x@  4 ralf  staff   128B Dec  2 07:59 books
-rw-r--r--   1 ralf  staff   198B Dec  2 07:59 go.mod
-rw-r--r--   1 ralf  staff   3.1K Dec  2 07:59 go.sum
-rw-r--r--@  1 ralf  staff   576B Nov 29 21:40 main.go

~/go/src/foo(main ✗) ll books
total 16
drwxr-xr-x@ 4 ralf  staff   128B Dec  2 07:59 .
drwxr-xr-x@ 9 ralf  staff   288B Dec  2 07:59 ..
-rw-r--r--@ 1 ralf  staff   213B Dec  2 07:50 books.capnp
-rw-r--r--  1 ralf  staff   2.7K Dec  2 07:59 books.capnp.go
~~~