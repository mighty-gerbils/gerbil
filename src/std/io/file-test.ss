;;; -*- Gerbil -*-
;;; © vyzo
;;; file io test
(import :std/test
        :std/text/utf8
        :std/misc/ports
        :std/os/temporaries
        ./interface
        ./file
        ./bio/api)
(export file-io-test)

(def text "the quick brown fox jumped over the fence")
(def text-length (string-length text))

(def file-io-test
  (test-suite "file io"
    (test-case "file-reader"
      (call-with-temporary-file-name "text"
       (lambda (tmp)
         ;; first create the input file
         (call-with-output-file tmp
           (lambda (port) (display text port)))
         ;; read the file using a reader
         (let* ((buf (make-u8vector 1024))
                (rd (open-file-reader tmp)))
           (check (Reader-read rd buf) => text-length)
           (check (subu8vector buf 0 text-length) => (string->utf8 text))
           (Reader-close rd)))))

    (test-case "buffered file reader"
      (call-with-temporary-file-name "text"
       (lambda (tmp)
         ;; first create the input file
         (call-with-output-file tmp
           (lambda (port) (display text port)))
         ;; read the file one char at a time using a buffered reader
         (let* ((rd (open-file-reader tmp))
                (brd (open-buffered-reader rd)))
           (let lp ((i 0))
             (when (fx< i text-length)
               (check (BufferedReader-read-char brd)  => (string-ref text i))
               (lp (fx+ i 1))))
           (check (BufferedReader-read-char brd) ? eof-object?)
           (BufferedReader-close brd)))))

    (test-case "file writer"
      (call-with-temporary-file-name "text"
       (lambda (tmp)
         ;; write the file
         (let (wr (open-file-writer tmp))
           (check (Writer-write wr (string->utf8 text)) => text-length)
           (Writer-close wr))
         ;; read the file and make sure it matches the expected text
         (check (read-file-string tmp) => text))))

    (test-case "buffered file writer"
      (call-with-temporary-file-name "text"
       (lambda (tmp)
         ;; write the file
         (let* ((wr (open-file-writer tmp))
                (bwr (open-buffered-writer wr)))
           (check (BufferedWriter-write bwr (string->utf8 text)) => text-length)
           (BufferedWriter-close bwr))
         ;; read the file and make sure it matches the expected text
         (check (read-file-string tmp) => text))))

    (test-case "file seek"
      (call-with-temporary-file-name "text"
        (lambda (tmp)
          (let* ((wr (open-file-writer tmp))
                 (re (open-file-reader tmp))
                 (buf (make-u8vector 3)))
            (Seeker-seek wr 8)
            (check (Writer-write wr #u8(1 123 255)) => 3)
            (Reader-read re buf)
            (check buf => #u8(0 0 0))
            (Seeker-seek re 8)
            (Reader-read re buf)
            (check buf => #u8(1 123 255))
            (Seeker-seek wr -1 'current)
            (Writer-write wr #u8(55))
            (Seeker-seek re 8)
            (Reader-read re buf)
            (check buf => #u8(1 123 55))
            (Seeker-seek re -3 'current)
            (Seeker-seek wr -2 'current)
            (Writer-write wr #u8(6))
            (Reader-read re buf)
            (check buf => #u8(1 6 55))))))))
