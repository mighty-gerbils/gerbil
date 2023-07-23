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
        open-u8vector-buffered-writer
        get-buffer-output-u8vector
        get-buffer-output-chunks
        (import: ./util))

(def default-buffer-size (expt 2 15)) ; 32K

(def (open-buffered-reader reader (buffer-or-size default-buffer-size))
  (let ((reader (Reader reader))
        (buffer
          (cond
           ((fixnum? buffer-or-size)
            (make-u8vector buffer-or-size))
           ((u8vector? buffer-or-size)
            buffer-or-size)
           (else
            (error "Bad argument; expected fixnum or u8vector" buffer-or-size)))))
    (BufferedReader (make-input-buffer reader buffer 0 0 #f))))

(def (open-u8vector-buffered-reader buffer)
  (unless (u8vector? buffer)
    (error "Bad argument; expected u8vector" buffer))
  (BufferedReader (make-input-buffer dummy-reader buffer 0 (u8vector-length buffer) #f)))

(def (open-string-buffered-reader str)
  (open-u8vector-buffered-reader (string->utf8 str)))

(def (open-buffered-writer writer (buffer-or-size default-buffer-size))
  (let* ((writer (Writer writer))
         (buffer
          (cond
           ((fixnum? buffer-or-size)
            (make-u8vector buffer-or-size))
           ((u8vector? buffer-or-size)
            buffer-or-size)
           (else
            (error "Bad argument; expected fixnum or u8vector" buffer-or-size)))))
  (BufferedWriter (make-output-buffer writer buffer 0 #f))))

(def (open-chunk-writer)
  (Writer (make-chunked-output-buffer [] #f)))

(def (open-u8vector-buffered-writer (buffer-or-size default-buffer-size))
  (let (writer (open-chunk-writer))
    (open-buffered-writer writer buffer-or-size)))

(def (get-buffer-output-chunks wr)
  (let (bio (interface-instance-object wr))
    (cond
     ((output-buffer? bio)
      (get-buffer-output-chunks (&output-buffer-writer bio)))
     ((chunked-output-buffer? bio)
      (or (&chunked-output-buffer-output bio)
          (reverse (&chunked-output-buffer-chunks bio))))
     (else
      (error "Unexpected type; expected instance of Writer or BufferedWriter wrapping an output buffer" wr)))))

(def (get-buffer-output-u8vector wr)
  (let (chunks (get-buffer-output-chunks wr))
    (match chunks
      ([chunk] chunk)
      (else (u8vector-concatenate chunks)))))

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
