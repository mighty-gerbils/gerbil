;;; -*- Gerbil -*-
;;; © vyzo
;;; Buffered IO api
(import :std/interface
        :std/text/utf8
        ../interface
        ../dummy
        ./types
        ./input
        ./delimited
        ./output
        ./chunked
        ./util)
(export open-buffered-reader
        open-u8vector-buffered-reader
        open-string-buffered-reader
        open-buffered-writer
        get-buffer-output-u8vector
        get-buffer-output-chunks
        (import: ./util))

(def default-buffer-size (expt 2 16)) ; 16K

(def (open-buffered-reader reader (buffer-size default-buffer-size))
  (unless (Reader? reader)
    (error "Expected Reader instance" reader))
  (BufferedReader (make-input-buffer reader (make-u8vector buffer-size) 0 0)))

(def (open-u8vector-buffered-reader u8v)
  (unless (u8vector? u8v)
    (error "Expected u8vector" u8v))
  (BufferedReader (make-input-buffer dummy-reader u8v 0 (u8vector-length u8v))))

(def (open-string-buffered-reader str)
  (unless (string? str)
    (error "Expected string" str))
  (open-u8vector-buffered-reader (string->utf8 str)))

(def (open-buffered-writer writer (buffer-size default-buffer-size))
  (unless (Writer? writer)
    (error "Expected Writer instance" writer))
  (BufferedWriter (make-output-buffer write (make-u8vector buffer-size) 0)))

(def (open-chunk-writer)
  (Writer (make-chunked-output-buffer [] #f)))

(def (open-u8vector-buffered-writer (buffer-size default-buffer-size))
  (let (writer (open-chunk-writer))
    (open-buffered-writer writer buffer-size)))

(def (get-buffer-output-chunks wr)
  (let (bio (interface-instance-object wr))
    (cond
     (((output-buffer? bio)
       (get-buffer-output-chunks (&output-buffer-writer bio))))
     ((chunked-output-buffer? bio)
      (or (&chunked-output-buffer-output bio)
          (reverse (&chunked-output-buffer-chunks bio))))
     (else
      (error "Unexpected type; expected instance of Writer or BufferedWriter" wr)))))

(def (get-buffer-output-u8vector wr)
  (let (chunks (get-buffer-output-chunks wr))
    (u8vector-concatenate chunks)))

;;; Interface
;; input-buffer BufferedReader implementation
(defmethod {read input-buffer}
  bio-read-bytes)
(defmethod {read-u8 input-buffer}
  bio-read-u8)
(defmethod {peek-u8 input-buffer}
  bio-peek-u8)
(defmethod {skip input-buffer}
  bio-skip-input)
(defmethod {delimit input-buffer}
  bio-delimit-input)
(defmethod {reset! input-buffer}
  bio-reset-input!)
(defmethod {close input-buffer}
  bio-close-input)

;; delimited-input-buffer BufferedReader implementation
(defmethod {read delimited-input-buffer}
  bio-delimited-read-bytes)
(defmethod {read-u8 delimited-input-buffer}
  bio-delimited-read-u8)
(defmethod {peek-u8 delimited-input-buffer}
  bio-delimited-peek-u8)
(defmethod {skip delimited-input-buffer}
  bio-delimited-skip-input)
(defmethod {delimit delimited-input-buffer}
  bio-delimited-delimit-input)
(defmethod {reset! delimited-input-buffer}
  bio-delimited-reset-input!)
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