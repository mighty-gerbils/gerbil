;;; -*- Gerbil -*-
;;; © vyzo
;;; stdio utilities
(import :std/sugar
        ./interface)
(export io-copy!)

(def default-u8vector-buffer-size (expt 2 15)) ; 32K
(def default-string-buffer-size (expt 2 13))   ; 32KB - 4kchars

(def (io-copy! reader writer (buffer-or-size #f))
  (cond
   ((is-Reader? reader)
    (io-copy-binary! reader writer (make-u8vector-buffer buffer-or-size)))
   ((is-StringReader? reader)
    (io-copy-textual! reader writer (make-string-buffer buffer-or-size)))
   (else
    (error "Bad argument; expected Reader or StringReader instance" reader))))

(defrule (defio-copy proc reader-t read-e writer-t write-e)
  (def (proc reader writer buffer)
    (let ((reader (reader-t reader))
          (writer (writer-t writer)))
      (let lp ((copied 0))
        (let (r (read-e reader buffer))
          (if (fx= r 0)
            copied
            (let (w (write-e writer buffer 0 r))
              (lp (fx+ copied w)))))))))

(defio-copy io-copy-binary!
  Reader &Reader-read
  Writer &Writer-write)
(defio-copy io-copy-textual!
  StringReader &StringReader-read-string
  StringWriter &StringWriter-write-string)

(defrule (defmake-buffer proc buffer? make-buffer default-size)
  (def (proc buffer-or-size)
    (cond
     ((not buffer-or-size)
      (make-buffer default-size))
     ((buffer? buffer-or-size)
      buffer-or-size)
     ((fixnum? buffer-or-size)
      (make-buffer buffer-or-size))
     (else
      (error "Bad argument; expected buffer, fixnum or #f" buffer-or-size)))))

(defmake-buffer make-u8vector-buffer u8vector? make-u8vector default-u8vector-buffer-size)
(defmake-buffer make-string-buffer string? make-string default-string-buffer-size)
