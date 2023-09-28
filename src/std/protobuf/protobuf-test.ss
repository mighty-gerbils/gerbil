;;; -*- Gerbil -*-
;;; © vyzo
;;; :std/protobuf unit-tests

(import :std/test
        :std/sugar
        :std/protobuf/io
        :std/protobuf/macros)
(export protobuf-test)

(extern (this-source-file this-source-file))

(def (check-marshal-unmarshal obj bio-read-e bio-write-e)
  (check (unmarshal (marshal obj bio-write-e) bio-read-e)
         => obj))

(def protobuf-test
  (test-suite "test :std/protobuf"
    (test-case "test basic encodings"
      (defmessage Test1
        optional: (a 1 int32))

      (defmessage Test2
        optional: (b 2 string))

      (defmessage Test3
        optional: (c 3 Test1))

      (defmessage Test4
        packed: (d 4 int32))

      (check (marshal (Test1 a: 150) BufferedWriter-write-Test1)
             => '#u8(#x08 #x96 #x01))

      (check (marshal (Test2 b: "testing") BufferedWriter-write-Test2)
             => '#u8(#x12 #x07 #x74 #x65 #x73 #x74 #x69 #x6e #x67))

      (check (marshal (Test3 c: (Test1 a: 150)) BufferedWriter-write-Test3)
             => '#u8(#x1a #x03 #x08 #x96 #x01))

      (check (marshal (Test4 d: [3 270 86942]) BufferedWriter-write-Test4)
             => '#u8(#x22 #x06 #x03 #x8E #x02 #x9E #xA7 #x05)))

    (test-case "test marshal/unmarshal"
      (defmessage Test1
        optional: (a 1 int32))

      (defmessage Test2
        optional: (b 2 string))

      (defmessage Test3
        optional: (c 3 Test1))

      (defmessage Test4
        packed: (d 4 int32))

      (defmessage Test5
        repeated: (e 5 Test1))

      (defmessage Test6
        optional: (a 1 sint32)
        optional: (b 2 sint64)
        optional: (c 3 fixed32)
        optional: (d 4 sfixed32)
        optional: (e 5 fixed64)
        optional: (f 6 sfixed64)
        optional: (g 7 float)
        optional: (h 8 double))

      (defmessage Test7
        required: (a 1 bytes))

      (check-marshal-unmarshal (Test1 a: 150)
                               BufferedReader-read-Test1 BufferedWriter-write-Test1)
      (check-marshal-unmarshal (Test2 b: "testing")
                               BufferedReader-read-Test2 BufferedWriter-write-Test2)
      (check-marshal-unmarshal (Test3 c: (Test1 a: 150))
                               BufferedReader-read-Test3 BufferedWriter-write-Test3)
      (check-marshal-unmarshal (Test4 d: [3 270 86942])
                               BufferedReader-read-Test4 BufferedWriter-write-Test4)
      (check-marshal-unmarshal (Test5 e: [(Test1 a: 150) (Test1 a: 300)])
                               BufferedReader-read-Test5 BufferedWriter-write-Test5)
      (check-marshal-unmarshal (Test6 a: -3 b: -5 c: 10 d: -20 e: 100 f: -100 g: 3.5 h: 7.0)
                               BufferedReader-read-Test6 BufferedWriter-write-Test6)
      (check-marshal-unmarshal (Test7 a: #u8(1 2 3))
                               BufferedReader-read-Test7 BufferedWriter-write-Test7)
      )

    (test-case "test oneof"
      (defmessage A
        oneof: (a (s 1 string) (i 2 int32)))

      (check-marshal-unmarshal (A a: (cons s: "abc"))
                               BufferedReader-read-A BufferedWriter-write-A)
      (check-marshal-unmarshal (A a: (cons i: 123))
                               BufferedReader-read-A BufferedWriter-write-A))

    (test-case "test map"
      (defmessage A
        optional: (a 1 string)
        optional: (b 2 int32))

      (defmessage B
        map: (c 1 string A))

      (check-marshal-unmarshal (B c: (hash ("a" (A a: "a" b: 1)) ("b" (A a: "b" b: 2))))
                               BufferedReader-read-B BufferedWriter-write-B))

    (test-case "test parser"
      (check (gx#import-module (path-expand "potpourri-test.proto"
                                            (path-directory (this-source-file))))
             ? gx#module-context?))

    (test-case "test import"
      (check (gx#import-module (path-expand "potpourri-test2.proto"
                                            (path-directory (this-source-file))))
             ? gx#module-context?))

    ))
