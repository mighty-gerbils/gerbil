;;; -*- Gerbil -*-
;;; © vyzo
;;; buffered io length delimited
(import :std/error
        ../interface
        ./types
        ./output
        ./macros)
(declare (not safe))

;; NB: Numbers are read and written in "network order", i.e. big endian



;; reader



;; writer



XXX

(defreader-ext (read-delimited reader read-value)
  (let* ((len (reader.read-varuint))
         (delimited (reader.delimit len)))
    (read-value delimited)))

(defreader-ext (read-delimited-u8vector reader)
  (let* ((len (reader.read-varuint))
         (output (make-u8vector len)))
    (reader.read output 0 len len)
    output))

(defreader-ext (read-delimited-string reader)
  (let* ((len (reader.read-varuint))
         (delimited (reader.delimit len))
         (output (make-string len)))
    (using (delimited :- BufferedReader)
      (let lp ((i 0))
        (let (next (delimited.read-char))
          (if (eof-object? next)
            (begin
              (string-shrink! output i)
              output)
            (begin
              (string-set! output i next)
              (lp (fx+ i 1)))))))))

(defwriter-ext (write-delimited writer write-value (buffer-or-size default-small-buffer-size))
  (let* ((tmp-writer (open-buffered-writer #f buffer-or-size))
         (_ (write-value tmp-writer))
         (chunks (get-buffer-output-chunks tmp-writer))
         (len (foldl (lambda (c r) (fx+ (u8vector-length c) r)) 0 chunks))
         (varlen (writer.write-varuint len)))
    (for-each (cut &BufferedWriter-write writer <>) chunks)
    (fx+ varlen len)))

(defwriter-ext (write-delimited-u8vector writer bytes)
  (writer.write-delimited (cut &BufferedWriter-write <> bytes)))

(defwriter-ext (write-delimited-string writer str)
  (writer.write-delimited (cut &BufferedWriter-write-string <> str)
                          (fx* 4 (string-length str))))


;; expt caches
