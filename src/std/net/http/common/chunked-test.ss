;;; -*- Gerbil -*-
;;; © vyzo
;;; chunked io tests
(import :std/test
        :std/io
        :std/io/bio/buffer
        ./chunked)
(export chunked-test)

(def chunked-test
  (test-suite "chunked io"
    (test-case "writer"
      (def mem-writer
        (open-buffered-writer #f))
      (def chunked-writer
        (open-chunked-writer
         mem-writer))

      (check (Writer-write chunked-writer (string->utf8 "the "))
             ? fixnum?)
      (check (Writer-write chunked-writer (string->utf8 "quick "))
             ? fixnum?)
      (check (Writer-write chunked-writer (string->utf8 "brown "))
             ? fixnum?)
      (check (Writer-write chunked-writer (string->utf8 "fox."))
             ? fixnum?)
      (buffer-detach! chunked-writer)

      (check (get-memory-output-string-utf8 mem-writer)
             => "4\r\nthe \r\n6\r\nquick \r\n6\r\nbrown \r\n4\r\nfox.\r\n0\r\n"))
    (test-case "reader"
      (def mem-reader
        (open-buffered-reader
         (string->utf8
          "4\r\nthe \r\n6\r\nquick \r\n6\r\nbrown \r\n4\r\nfox.\r\n0\r\n")))
      (def chunked-reader
        (open-chunked-reader
         mem-reader))

      (check (utf8->string (read-all-from-reader chunked-reader))
             => "the quick brown fox."))))
