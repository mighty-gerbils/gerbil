;;; -*- Gerbil -*-
;;; © vyzo
;;; actor message io test
(import :gerbil/gambit
        :std/test
        :std/error
        :std/sugar
        :std/io
        ./message
        ./io)
(export actor-message-io-test)

(defrules check-marshal-unmarshal ()
  ((_ obj tag eqf)
   (let* ((value obj)
          (buf (open-buffered-writer #f))
          (w (BufferedWriter-marshal buf value))
          (_ (check w ? (cut > <> 0)))
          (bytes (get-buffer-output-u8vector buf)))
     (check (u8vector-ref bytes 0) => tag)
     (let* ((buf (open-buffered-reader bytes))
            (result (BufferedReader-unmarshal buf)))
       (checkf eqf result value))))
  ((recur obj tag)
   (recur obj tag equal?)))


(defrule (check-marshal-error obj)
  (let* ((value obj)
         (buf (open-buffered-writer #f)))
    (check-exception (BufferedWriter-marshal buf value) io-error?)))

(def (equal-values? a b)
  (and (= (##type a) 1)
       (= (##type b) 1)
       (= (##subtype a) 5)
       (= (##subtype b) 5)
       (= (##vector-length a) (##vector-length b))
       (andmap equal? (##vector->list a) (##vector->list b))))

(def (equal-time? a b)
  (and (time? a)
       (time? b)
       (eqv? (time->seconds a) (time->seconds b))))

(def (equal-hash? a b)
  (and (hash-table? a)
       (hash-table? b)
       (= (hash-length a) (hash-length b))
       (andmap (lambda (k v) (and (hash-key? b k) (equal? (hash-ref b k) v)))
               (hash-keys a) (hash-values a))))

(defmessage A (x y))
(defstruct B (x y) transparent: #t)

(def actor-message-io-test
  (test-suite "marshalling and unmarshalling"
    (test-case "basic objects"
      (check-marshal-unmarshal (A 1 2) message-tag)
      (check-marshal-unmarshal (envelope 'abc 1 2 3 4 #f #t) envelope-tag)
      (check-marshal-error (envelope 'abc (current-thread) (current-thread) 3 4 #f #f))
      (check-marshal-unmarshal (envelope (A 1 2) 1 2 3 4 #f #f) envelope-tag)
      (check-marshal-unmarshal (void) void-tag)
      (check-marshal-unmarshal '() null-tag)
      (check-marshal-unmarshal #t true-tag)
      (check-marshal-unmarshal #f false-tag)
      (check-marshal-unmarshal '#!eof eof-tag)
      (check-marshal-unmarshal #\a char-tag)
      (check-marshal-unmarshal #\⌣ char-tag)
      (check-marshal-unmarshal 123 integer-tag)
      (check-marshal-unmarshal -123 integer-tag)
      (check-marshal-unmarshal 123456789012345678901234567890 integer-tag)
      (check-marshal-unmarshal -123456789012345678901234567890 integer-tag)
      (check-marshal-unmarshal 1.234 double-tag)
      (check-marshal-unmarshal -1.234 double-tag)
      (check-marshal-unmarshal +inf.0 double-tag)
      (check-marshal-unmarshal -inf.0 double-tag)
      (check-marshal-unmarshal '(1 . 2) pair-tag)
      (check-marshal-unmarshal '(1 2 3) pair-tag)
      (check-marshal-unmarshal '#(1 2 3) vector-tag)
      (check-marshal-unmarshal (box 1) values-tag)
      (check-marshal-unmarshal (values 1 2 3) values-tag equal-values?)
      (check-marshal-unmarshal 'hellooooo symbol-tag)
      (check-marshal-unmarshal world: keyword-tag)
      (check-marshal-unmarshal "hello world" string-tag)
      (check-marshal-unmarshal '#u8(1 2 3) u8vector-tag)
      (check-marshal-unmarshal (hash (a 1) (b 2) (c 3)) table-tag equal-hash?)
      (check-marshal-unmarshal (current-time) time-tag equal-time?))

    (test-case "serde objects"
      (check-marshal-unmarshal 10/3 serde-tag)
      (check-marshal-unmarshal 1+3i serde-tag)
      (check-marshal-unmarshal '#f64(1.0 2.0 3.0) serde-tag)
      (check-marshal-unmarshal (B 1 2) serde-tag))))
