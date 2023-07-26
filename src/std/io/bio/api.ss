;;; -*- Gerbil -*-
;;; © vyzo
;;; Buffered IO api
(import :std/interface
        ../interface
        ../dummy
        ./types
        ./input
        ./delimited
        ./output
        ./chunked
        ./util)
(export open-buffered-reader
        open-buffered-writer
        get-buffer-output-u8vector
        get-buffer-output-chunks
        (import: ./util))

(def default-buffer-size (expt 2 15)) ; 32K

(def (make-u8vector-buffer buffer-or-size)
  (cond
   ((fixnum? buffer-or-size)
    (make-u8vector buffer-or-size))
   ((u8vector? buffer-or-size)
    buffer-or-size)
   (else
    (error "Bad argument; expected fixnum or u8vector" buffer-or-size))))

(def (open-buffered-reader reader-or-u8vector (buffer-or-size default-buffer-size))
  (cond
   ((u8vector? reader-or-u8vector)
    (BufferedReader
     (make-input-buffer dummy-reader reader-or-u8vector 0 (u8vector-length reader-or-u8vector) #f)))
   ((is-Reader? reader-or-u8vector)
    (let ((buffer (make-u8vector-buffer buffer-or-size))
          (reader (Reader reader-or-u8vector)))
      (BufferedReader (make-input-buffer reader buffer 0 0 #f))))
   (else
    (error "Bad argument; expected reader instance or u8vector" reader-or-u8vector))))

(def (open-buffered-writer maybe-writer (buffer-or-size default-buffer-size))
  (cond
   ((not maybe-writer)
    (let ((writer (open-chunk-writer))
          (buffer (make-u8vector buffer-or-size)))
      (BufferedWriter (make-output-buffer writer buffer 0 #f))))
   ((is-Writer? maybe-writer)
    (let ((writer (Writer maybe-writer))
          (buffer (make-u8vector-buffer buffer-or-size)))
      (BufferedWriter (make-output-buffer writer buffer 0 #f))))
   (else
    (error "Bad argument; expected reader instance or #f" maybe-writer))))

(def (open-chunk-writer)
  (Writer (make-chunked-output-buffer [] #f)))

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
