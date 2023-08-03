;;; -*- Gerbil -*-
;;; © vyzo
;;; io utilities test
(import :std/test
        :std/os/temporaries
        :std/misc/ports
        ./interface
        ./util
        ./file
        ./bio/api)
(export io-util-test)

(def text "the quick brown fox jumped over the fence")
(def text-length (string-length text))

(def io-util-test
  (test-suite "io utilities"
    (test-case "io-copy!"
      (call-with-temporary-file-name "input"
        (lambda (input-path)
          (call-with-temporary-file-name "output"
            (lambda (output-path)
              ;; first create the input file
              (call-with-output-file input-path
                (lambda (port) (display text port)))
              ;; open reader and writer and copy
              (let ((reader (open-file-reader input-path))
                    (writer (open-file-writer output-path)))
                (check (io-copy! reader writer) => text-length)
                (Reader-close reader)
                (Writer-close writer)
                (check (read-file-string output-path) => text)))))))

    (test-case "io-copy! with buffered reader/writer"
      (call-with-temporary-file-name "input"
        (lambda (input-path)
          (call-with-temporary-file-name "output"
            (lambda (output-path)
              ;; first create the input file
              (call-with-output-file input-path
                (lambda (port) (display text port)))
              ;; open reader and writer and copy
              (let ((reader (open-buffered-reader (open-file-reader input-path)))
                    (writer (open-buffered-writer (open-file-writer output-path))))
                (check (io-copy! reader writer) => text-length)
                (BufferedReader-close reader)
                (BufferedWriter-close writer)
                (check (read-file-string output-path) => text)))))))))
