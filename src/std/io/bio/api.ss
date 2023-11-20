;;; -*- Gerbil -*-
;;; © vyzo
;;; Buffered IO api
(import :std/error
        :std/interface
        :std/contract
        ../interface
        ../dummy
        ../port
        ./types
        ./input
        ./delimited
        ./output
        ./chunked
        ./inline
        ./util)
(export open-buffered-reader
        open-buffered-writer
        get-buffer-output-u8vector
        get-buffer-output-chunks
        (import: ./inline)
        (import: ./util))

(def default-buffer-size (expt 2 15)) ; 32K
(def default-small-buffer-size 4096)

(def (make-u8vector-buffer buffer-or-size)
  (cond
   ((fixnum? buffer-or-size)
    (make-u8vector buffer-or-size))
   ((u8vector? buffer-or-size)
    buffer-or-size)
   (else
    (raise-bad-argument make-buffer "fixnum or u8vector" buffer-or-size))))

(def (open-buffered-reader pre-reader (buffer-or-size default-buffer-size))
  (cond
   ((BufferedReader? pre-reader) pre-reader)
   ((is-BufferedReader? pre-reader) (BufferedReader pre-reader))
   ((u8vector? pre-reader)
    (BufferedReader
     (make-input-buffer dummy-reader pre-reader 0 (u8vector-length pre-reader) #f)))
   ((is-Reader? pre-reader)
    (let ((buffer (make-u8vector-buffer buffer-or-size))
          (reader (Reader pre-reader)))
      (BufferedReader (make-input-buffer reader buffer 0 0 #f))))
   ((input-port? pre-reader)
    (BufferedReader (make-cooked-binary-input-port pre-reader)))
   (else
    (raise-bad-argument open-buffered-reader "Reader instance or u8vector" pre-reader))))

(def (open-buffered-writer pre-writer (buffer-or-size default-buffer-size))
  (cond
   ((BufferedWriter? pre-writer) pre-writer)
   ((is-BufferedWriter? pre-writer) (BufferedWriter pre-writer))
   ((not pre-writer)
    (let ((writer (open-chunk-writer))
          (buffer (make-u8vector-buffer buffer-or-size)))
      (BufferedWriter (make-output-buffer writer buffer 0 #f))))
   ((is-Writer? pre-writer)
    (let ((writer (Writer pre-writer))
          (buffer (make-u8vector-buffer buffer-or-size)))
      (BufferedWriter (make-output-buffer writer buffer 0 #f))))
   ((output-port? pre-writer)
    (BufferedWriter (make-raw-binary-output-port pre-writer)))
   (else
    (raise-bad-argument open-buffered-writer "Writer instance or #f" pre-writer))))

(def (open-chunk-writer)
  (Writer (make-chunked-output-buffer [] #f)))

(def (get-buffer-output-chunks wr)
  (let (bio (interface-instance-object wr))
    (cond
     ((output-buffer? bio)
      (bio-flush-output bio)
      (get-buffer-output-chunks (&output-buffer-writer bio)))
     ((chunked-output-buffer? bio)
      (or (&chunked-output-buffer-output bio)
          (reverse (&chunked-output-buffer-chunks bio))))
     (else
      (raise-bad-argument get-buffer-output "instance of BufferedWriter wrapping an output buffer" wr)))))

(def (get-buffer-output-u8vector wr)
  (let (chunks (get-buffer-output-chunks wr))
    (match chunks
      ([chunk] chunk)
      (else (u8vector-concatenate chunks)))))

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

;;; Interface
;; input-buffer BufferedReader implementation
(defmethod {read input-buffer}
  bio-read-bytes)
(defmethod {read-u8 input-buffer}
  bio-read-u8)
(defmethod {peek-u8 input-buffer}
  bio-peek-u8)
(defmethod {put-back input-buffer}
  bio-put-back)
(defmethod {skip input-buffer}
  bio-skip-input)
(defmethod {delimit input-buffer}
  bio-delimit-input)
(defmethod {reset! input-buffer}
  bio-reset-input!)
(defmethod {available input-buffer}
  bio-available)
(defmethod {close input-buffer}
  bio-close-input)

;; delimited-input-buffer BufferedReader implementation
(defmethod {read delimited-input-buffer}
  bio-delimited-read-bytes)
(defmethod {read-u8 delimited-input-buffer}
  bio-delimited-read-u8)
(defmethod {peek-u8 delimited-input-buffer}
  bio-delimited-peek-u8)
(defmethod {put-back delimited-input-buffer}
  bio-delimited-put-back)
(defmethod {skip delimited-input-buffer}
  bio-delimited-skip-input)
(defmethod {delimit delimited-input-buffer}
  bio-delimited-delimit-input)
(defmethod {reset! delimited-input-buffer}
  bio-delimited-reset-input!)
(defmethod {available delimited-input-buffer}
  bio-delimited-available)
(defmethod {close delimited-input-buffer}
  bio-delimited-close)

;; output-buffer BufferedWriter implementation
(defmethod {write output-buffer}
  bio-write-bytes)
(defmethod {write-u8 output-buffer}
  bio-write-u8)
(defmethod {flush output-buffer}
  bio-flush-output)
(defmethod {reset! output-buffer}
  bio-reset-output!)
(defmethod {close output-buffer}
  bio-close-output)

;; chunked-output-buffer Writer implementation
(defmethod {write chunked-output-buffer}
  bio-chunked-write-bytes)
(defmethod {close chunked-output-buffer}
  bio-chunked-close)
