;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;;     belmarca
;;; :std/misc/text test

(import :std/misc/text
        :std/test
        :std/sugar
        (for-syntax :std/misc/bytes))
(export text-test)

;; results
(def run-time-result "Hello, world!")
(def expansion-time-result "FF 00 FF")
(def mixed-result (string-append run-time-result "\n"
                                 expansion-time-result))

(def text-test
  (test-suite "test :std/misc/text"
    ;; quasistring
    (test-case "Test quasistring."
      (let (res ((lambda (name) (quasistring "Hello, #{name}!")) "world"))
        (check-equal? run-time-result res)))
    (test-case "Test include-quasistring."
      (def rt-res ((lambda (name) (include-quasistring "_test/run-time.txt")) "world"))
      (check-equal? rt-res "Hello, world!\n")) ;; include-text preserves the \n
    ;; quasistring*
    (test-case "Test quasistring*."
      (let (res ((lambda (name) (quasistring* "Hello, #{name}!")) "world"))
        (check-equal? run-time-result res)))
    (test-case "Test include-quasistring*."
      (def rt-res ((lambda (name) (include-quasistring* "_test/run-time.txt")) "world"))
      (check-equal? rt-res "Hello, world!\n")
      (def et-res ((lambda (name) (include-quasistring* "_test/expansion-time.txt")) "world"))
      (check-equal? et-res "FF 00 FF\n"))
    ;; template/hash
    (test-case "Test template/hash."
      (let* ((t (template/hash "Hello, #{name}!\n##{(u8vector->bytestring (u8vector 255 0 255))}"))
             (res (t (hash (name "world")))))
        (check-equal? res "Hello, world!\nFF 00 FF")))
    (test-case "Test include-template/hash."
      (let* ((t (include-template/hash "_test/mixed.txt"))
             (res (t (hash (name "world")))))
        (check-equal? res "Hello, world!\nFF 00 FF\n")))
    ;; template/alist
    (test-case "Test template/alist."
      (let* ((t (template/alist "Hello, #{name}!\n##{(u8vector->bytestring (u8vector 255 0 255))}"))
             (res (t '((name . "world")))))
        (check-equal? res "Hello, world!\nFF 00 FF")))
    (test-case "Test include-template/alist."
      (let* ((t (include-template/alist "_test/mixed.txt"))
             (res (t '((name . "world")))))
        (check-equal? res "Hello, world!\nFF 00 FF\n")))
    ;; template/plist
    (test-case "Test template/plist."
      (let* ((t (template/plist "Hello, #{name}!\n##{(u8vector->bytestring (u8vector 255 0 255))}"))
             (res (t [name: "world"])))
        (check-equal? res "Hello, world!\nFF 00 FF")))
    (test-case "Test include-template/plist."
      (let* ((t (include-template/plist "_test/mixed.txt"))
             (res (t [name: "world"])))
        (check-equal? res "Hello, world!\nFF 00 FF\n")))))
