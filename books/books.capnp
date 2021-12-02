using Go = import "/go.capnp";
@0x9a02f7780b10e176;
$Go.package("books");
$Go.import("foo/books");

struct Book {
    title @0 :Text; # Title of the book.
    pageCount @1 :Int32; # Number of pages in the book.
}
