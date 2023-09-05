;;; -*- Gerbil -*-
;;; © vyzo
;;; string IO api
(import :std/interface
        ../interface
        ../dummy
        ../bio/types
        ./types
        ./input
        ./output
        ./inline
        ./reader
        ./utf8
        ./writer
        ./chunked
        ./delimited
        ./util)
(export open-string-reader
        open-string-writer
        open-buffered-string-reader
        open-buffered-string-writer
        get-buffer-output-string
        get-buffer-output-string-chunks
        (import: ./inline)
        (import: ./util))

(def default-u8vector-buffer-size (expt 2 15)) ; 32KB
(def default-string-buffer-size (expt 2 13)) ; 8k chars
(def max-u8vector-buffer-size (expt 2 28)) ; 256MB -- for safe efficient packing in 64bit archs

(def (make-u8vector-buffer buffer-or-size)
  (cond
   ((fixnum? buffer-or-size)
    (if (fx> buffer-or-size max-u8vector-buffer-size)
      (error "Bad argument; buffer too big" buffer-or-size)
      (make-u8vector buffer-or-size)))
   ((u8vector? buffer-or-size)
    (if (fx> (u8vector-length buffer-or-size) max-u8vector-buffer-size)
      (error "Bad argument; buffer too big" (u8vector-length buffer-or-size))
      buffer-or-size))
   (else
    (error "Bad argument; expected fixnum or u8vector" buffer-or-size))))

(def (make-string-buffer buffer-or-size)
  (cond
   ((fixnum? buffer-or-size)
    (if (fx> buffer-or-size max-u8vector-buffer-size)
      (error "Bad argument; buffer too big" buffer-or-size)
      (make-string buffer-or-size)))
   ((string? buffer-or-size)
    (if (fx> (string-length buffer-or-size) max-u8vector-buffer-size)
      (error "Bad argument; buffer too big" (string-length buffer-or-size))
      buffer-or-size))
   (else
    (error "Bad argument; expected fixnum or string" buffer-or-size))))

(def (double string-buffer-or-size)
  (fx* 2 (if (fixnum? string-buffer-or-size)
           string-buffer-or-size
           (string-length string-buffer-or-size))))

(def (character-encoder codec)
  (case codec
    ((UTF-8) utf8-encode-partial!)
    (else
     (error "Unsupported character encoding" codec))))

(def (character-decoder codec)
  (case codec
    ((UTF-8) utf8-decode-partial!)
    (else
     (error "Unsupported character encoding" codec))))

(def (open-string-reader reader (buffer-or-size default-u8vector-buffer-size)
                         encoding: (codec 'UTF-8))
  (cond
   ((is-BufferedReader? reader)
    (let (obj (interface-instance-object reader))
      (StringReader
       (if (input-buffer? obj)
         ;; already an input-buffer, use it directly to avoid double-buffering
         (make-string-reader obj (character-decoder codec) #f)
         ;; unrecognized buffer type -- treat it as a plain reader
         (make-string-reader (make-input-buffer (Reader obj)
                                                (make-u8vector-buffer buffer-or-size)
                                                0 0 #f)
                             (character-decoder codec)
                             #f)))))
   ((is-Reader? reader)
    (StringReader
     (make-string-reader (make-input-buffer (Reader reader)
                                            (make-u8vector-buffer buffer-or-size)
                                            0 0 #f)
                         (character-decoder codec)
                         #f)))
   (else
    (error "Bad reader; expected implementation of Reader" reader))))

(def (open-string-writer writer (buffer-or-size default-u8vector-buffer-size)
                         encoding: (codec 'UTF-8))
  (cond
   ((is-BufferedWriter? writer)
    (let (obj (interface-instance-object writer))
      (StringWriter
       (if (output-buffer? obj)
         ;; already an output-buffer
         (make-string-writer obj (character-encoder codec) #f)
         ;; unrecognized buffer type -- treat it as a plain writer
         (make-string-writer (make-output-buffer (Writer obj)
                                                 (make-u8vector-buffer buffer-or-size)
                                                 0 #f)
                             (character-encoder codec)
                             #f)))))
   ((is-Writer? writer)
    (StringWriter
     (make-string-writer (make-output-buffer (Writer writer)
                                             (make-u8vector-buffer buffer-or-size)
                                             0 #f)
                         (character-encoder codec)
                         #f)))
   (else
    (error "Bad writer; expected implementation of Writer" writer))))

(def (open-buffered-string-reader reader-or-string (buffer-or-size default-string-buffer-size)
                                  encoding: (codec 'UTF-8))
  (cond
   ((string? reader-or-string)
    (BufferedStringReader
     (make-string-input-buffer dummy-string-reader
                               reader-or-string 0 (string-length reader-or-string)
                               #f)))
   ((is-StringReader? reader-or-string)
    (BufferedStringReader
     (make-string-input-buffer (StringReader reader-or-string)
                               (make-string-buffer buffer-or-size) 0 0
                               #f)))
   ((is-Reader? reader-or-string)
    (BufferedStringReader
     (make-string-input-buffer (open-string-reader reader-or-string (double buffer-or-size)
                                                   encoding: codec)
                               (make-string-buffer buffer-or-size) 0 0
                               #f)))
   (else
    (error "Bad reader; expected string or implementation of StringReader or Reader" reader-or-string))))

(def (open-buffered-string-writer maybe-writer (buffer-or-size default-string-buffer-size)
                                  encoding: (codec 'UTF-8))
  (cond
   ((not maybe-writer)
    (BufferedStringWriter
     (make-string-output-buffer (open-chunk-writer)
                                (make-string-buffer buffer-or-size)
                                0 #f)))
   ((is-StringWriter? maybe-writer)
    (BufferedStringWriter
     (make-string-output-buffer (StringWriter maybe-writer)
                                (make-string-buffer buffer-or-size)
                                0 #f)))
   ((is-Writer? maybe-writer)
    (BufferedStringWriter
     (make-string-output-buffer (open-string-writer maybe-writer (double buffer-or-size)
                                                    encoding: codec)
                                (make-string-buffer buffer-or-size)
                                0 #f)))
   (else
    (error "Bad writer; expected #f or implementation of StringWriter or writer" maybe-writer))))

(def (open-chunk-writer)
  (StringWriter (make-chunked-string-output-buffer [] #f)))

(def (get-buffer-output-string wr)
  (let (chunks (get-buffer-output-string-chunks wr))
    (match chunks
      ([chunk] chunk)
      (else (string-concatenate chunks)))))

(def (get-buffer-output-string-chunks wr)
  (let (strio (interface-instance-object wr))
    (cond
     ((string-output-buffer? strio)
      (strbuf-flush-output strio)
      (get-buffer-output-string-chunks (&string-output-buffer-writer strio)))
     ((chunked-string-output-buffer? strio)
      (or (&chunked-string-output-buffer-output strio)
          (reverse (&chunked-string-output-buffer-chunks strio))))
     (else
      (error "Unexpected type; expected instance of Writer or BufferedWriter wrapping an output buffer" wr)))))

;; string-reader implements StringReader
(defmethod {read-string string-reader}
  strio-read-string)
(defmethod {close string-reader}
  strio-close-input)

;; string-input-buffer implements BufferedStringReader
(defmethod {read-char string-input-buffer}
  strbuf-read-char)
(defmethod {peek-char string-input-buffer}
  strbuf-peek-char)
(defmethod {read-string string-input-buffer}
  strbuf-read-string)
(defmethod {put-back string-input-buffer}
  strbuf-put-back)
(defmethod {skip string-input-buffer}
  strbuf-skip-input)
(defmethod {delimit string-input-buffer}
  strbuf-delimit-input)
(defmethod {reset! string-input-buffer}
  strbuf-reset-input!)
(defmethod {close string-input-buffer}
  strbuf-close-input)

;; delimited-string-input-buffer BufferedReader implementation
(defmethod {read-string delimited-string-input-buffer}
  strbuf-delimited-read-string)
(defmethod {read-char delimited-string-input-buffer}
  strbuf-delimited-read-char)
(defmethod {peek-char delimited-string-input-buffer}
  strbuf-delimited-peek-char)
(defmethod {put-back delimited-string-input-buffer}
  strbuf-delimited-put-back)
(defmethod {skip delimited-string-input-buffer}
  strbuf-delimited-skip-input)
(defmethod {delimit delimited-string-input-buffer}
  strbuf-delimited-delimit-input)
(defmethod {reset! delimited-string-input-buffer}
  strbuf-delimited-reset-input!)
(defmethod {close delimited-string-input-buffer}
  strbuf-delimited-close)

;; string-writer implements StringWriter
(defmethod {write-string string-writer}
  strio-write-string)
(defmethod {close string-writer}
  strio-close-output)

;; chunked-string-output-buffer implements StringWriter
(defmethod {write-string chunked-string-output-buffer}
  strio-chunked-write-string)
(defmethod {close chunked-string-output-buffer}
  strio-chunked-close)

;; string-output-buffer implements BufferedStringWriter
(defmethod {write-char string-output-buffer}
  strbuf-write-char)
(defmethod {write-string string-output-buffer}
  strbuf-write-string)
(defmethod {flush string-output-buffer}
  strbuf-flush-output)
(defmethod {reset! string-output-buffer}
  strbuf-reset-output!)
(defmethod {close string-output-buffer}
  strbuf-close-output)
