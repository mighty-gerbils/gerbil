;;; -*- Gerbil -*-
;;; © vyzo
;;; :std/protobuf unit-tests

(import :std/test
        :std/sugar
        :std/protobuf/io
        :std/protobuf/macros)
(export protobuf-test)

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

      (check (marshal (Test1 a: 150) bio-write-Test1)
             => '#u8(#x08 #x96 #x01))

      (check (marshal (Test2 b: "testing") bio-write-Test2)
             => '#u8(#x12 #x07 #x74 #x65 #x73 #x74 #x69 #x6e #x67))

      (check (marshal (Test3 c: (Test1 a: 150)) bio-write-Test3)
             => '#u8(#x1a #x03 #x08 #x96 #x01))

      (check (marshal (Test4 d: [3 270 86942]) bio-write-Test4)
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

      (check-marshal-unmarshal (Test1 a: 150) bio-read-Test1 bio-write-Test1)
      (check-marshal-unmarshal (Test2 b: "testing") bio-read-Test2 bio-write-Test2)
      (check-marshal-unmarshal (Test3 c: (Test1 a: 150)) bio-read-Test3 bio-write-Test3)
      (check-marshal-unmarshal (Test4 d: [3 270 86942]) bio-read-Test4 bio-write-Test4)
      (check-marshal-unmarshal (Test5 e: [(Test1 a: 150) (Test1 a: 300)]) bio-read-Test5 bio-write-Test5))

    (test-case "test oneof"
      (defmessage A
        oneof: (a (s 1 string) (i 2 int32)))

      (check-marshal-unmarshal (A a: (cons s: "abc")) bio-read-A bio-write-A)
      (check-marshal-unmarshal (A a: (cons i: 123)) bio-read-A bio-write-A))

    (test-case "test map"
      (defmessage A
        optional: (a 1 string)
        optional: (b 2 int32))

      (defmessage B
        map: (c 1 string A))

      (check-marshal-unmarshal (B c: (hash ("a" (A a: "a" b: 1)) ("b" (A a: "b" b: 2))))
                               bio-read-B bio-write-B))

    ))
