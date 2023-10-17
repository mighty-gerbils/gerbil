(export ports-test)

(import
  :std/error
  :std/format
  :std/misc/ports
  :std/os/temporaries
  :std/source
  :std/sugar
  :std/test)

(def data-file (this-source-path "ports-test.data"))

(def test-data
"\"This test file is used by ports-test.ss\"
(Don't remove or modify it ... without fixing the test.)
42
")
(def test-lines
  '("\"This test file is used by ports-test.ss\""
    "(Don't remove or modify it ... without fixing the test.)"
    "42"))

(def ports-test
  (test-suite "test :std/misc/ports"
    (test-case "copy-port"
      (check-equal? (with-input (i "foo") (with-output (o #f) (copy-port i o))) "foo"))
    (test-case "read-all-as-string, read-file-string"
      (defrule (checks s ...)
        (begin (check (call-with-input-string s read-all-as-string) => s) ...))
      (checks "" "hello, world\n" "hello world" "1\n2\n3\r\n4" test-data)
      (check (call-with-input-file data-file read-all-as-string) => test-data))
    (test-case ""
      (check (read-file-string data-file) => test-data))
    (test-case "read-all-as-lines, read-file-lines"
      (defrule (checks (l s . a) ...)
        (begin (check (call-with-input-string s (cut read-all-as-lines <> . a)) => l) ...))
      (checks ([] "")
              (["hello, world"] "hello, world\n")
              (["hello world"] "hello world")
              (["1" "2" "3\r" "4"] "1\n2\n3\r\n4")
              (["1\n" "2\n" "3\r\n" "4"] "1\n2\n3\r\n4" include-separator?: #t)
              (test-lines test-data))
      (check (call-with-input-file data-file read-all-as-lines) => test-lines)
      (check (read-file-lines data-file) => test-lines))
    (test-case "read-all-as-u8vector, read-file-u8vector"
      (defrule (checks s ...)
        (begin (check (bytes->string (call-with-input-u8vector (string->bytes s) read-all-as-u8vector))
                      => s) ...))
      (checks "" "hello, world\n" "hello world" "1\n2\n3\r\n4" test-data)
      (check (call-with-input-file data-file read-all-as-u8vector) => (string->bytes test-data))
      (check (read-file-u8vector data-file) => (string->bytes test-data)))
    #;(test-case "read-password" ...) ;; how do we test that?
    (test-case "write-file-string write-file-lines"
      (call-with-temporary-file-name
       "ports-test"
       (lambda (name)
         (check (file-exists? name) => #f)
         (write-file-string name test-data)
         (check (file-exists? name) => #t)
         (check (read-file-string name) => test-data)
         (check (read-file-lines name) => test-lines)))
      (call-with-temporary-file-name
       "ports-test"
       (lambda (name)
         (check (file-exists? name) => #f)
         (write-file-lines name test-lines)
         (check (file-exists? name) => #t)
         (check (read-file-string name) => test-data)
         (check (read-file-lines name) => test-lines))))
    (test-case "force-current-outputs writeln"
      (call-with-temporary-file-name
       "ports-test"
       (lambda (name)
         (check (file-exists? name) => #f)
         (let/cc return
           (with-output-to-file name (lambda () (printf "aa") (return))))
         (check (read-file-string name) => "")
         (let/cc return
           (with-output-to-file name (lambda () (printf "aa") (force-current-outputs) (return))))
         (check (read-file-string name) => "aa")
         (let/cc return
           (with-output-to-file name (lambda () (writeln 'bb) (return))))
         (check (read-file-string name) => "bb\n")
         (let/cc return
           (call-with-output-file name (lambda (port) (writeln 'cc port) (return))))
         (check (read-file-string name) => "cc\n"))))
    (test-case "output-contents call-with-output with-output call-with-input with-input"
      (check (with-output-to-string (cut output-contents test-data)) => test-data)
      (check (call-with-output-u8vector (cut output-contents #u8(102 111 111) <>)) => #u8(102 111 111))
      (check (with-input-from-string "foo"
               (lambda ()
                 (with-output (o #f)
                   (with-input (i #t)
                     (output-contents (cut write (read i) <>) o))))) => "foo")
      (check (with-output-to-string
               (lambda ()
                 (with-output (o #t) (display "foo" o)))) => "foo"))
    (test-case "char-port-eof?"
      (call-with-input-string
       "a" (lambda (port)
             (check (char-port-eof? port) => #f)
             (check (read-char port) => #\a)
             (check (char-port-eof? port) => #t))))))
