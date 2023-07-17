;;; -*- Gerbil -*-
;;; © vyzo
;;; Buffered IO api
(import ../interface
        ../dummy
        ./types
        ./input
        ./delimited
        ;;./output
        ./util)
(export open-buffered-reader
        open-u8vector-buffered-reader
        (import: ./util))

(def (open-buffered-reader reader (buffer-size 4096))
  (unless (Reader? reader)
    (error "Expected Reader instance" reader))
  (BufferedReader (make-input-buffer reader (make-u8vector buffer-size) 0 0)))

(def (open-u8vector-buffered-reader u8v)
  (unless (u8vector? u8v)
    (error "Expected u8vector" u8v))
  (BufferedReader (make-input-buffer dummy-reader u8v 0 (u8vector-length u8v))))

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