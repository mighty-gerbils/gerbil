;;; -*- Gerbil -*-
;;; © vyzo
;;; zlib tests
(import :std/build-config)
(cond-expand
  (config-have-zlib
   (import :std/test
           :std/iter
           :std/io/util
           ./zlib)
   (export zlib-test)

   (def zlib-test
     (test-suite "zlib"
       (test-case "small"
         (let (data (string->utf8 "the quick brown fox jumped over the fence"))
           (check (uncompress (compress data)) => data)
           (check (uncompress (compress-gz data)) => data)))
       (test-case "large"
         (let* ((data (string->utf8 "the quick brown fox jumped over the fence"))
                (data (append-u8vectors
                        (for/fold (r []) (i (in-range 10000))
                          (cons data r)))))
           (check (uncompress (compress data)) => data)
           (check (uncompress (compress-gz data)) => data)))))))
