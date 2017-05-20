;;; -*- Gerbil -*-
;;; (C) vyzo
;;; std parser location-tracking streams
package: std/parser

(import :std/parser/base
        :gerbil/gambit/ports)
(export #t)

;; port: character-input-port we are parsing
;; buf:  lookahead buffer (returned with ungetc)
;; loc:  location of last character read with getc
;; lines: offsets of lines encountered in the stream
(defstruct char-stream (port buf loc lines)
  constructor: :init!)

;; _gambit#.scm
(extern namespace: #f
  macro-character-input-port?)

(defmethod {:init! char-stream}
  (lambda (self port)
    (unless (macro-character-input-port? port)
      (error "Bad input source; not a character-input-port" port))
    (direct-struct-instance-init! self port [] (make-location port 0 0 0 0) [])))

(def (char-stream-close ts)
  (close-input-port (char-stream-port ts)))

(def (char-stream-getc ts)
  (with ((char-stream port buf loc lines) ts)
    (match buf
      ([char . rest]
       (set! (char-stream-buf ts)
         rest)
       (set! (char-stream-loc ts)
         (location-getc loc char lines))
       char)
      (else
       (let* ((loc (port-location port))
              (char (read-char port)))
         (unless (eof-object? char)
           (set! (char-stream-loc ts) loc)
           (when (eq? #\newline char)
             (set! (char-stream-lines ts)
               (cons (location-xoff loc) lines))))
         char)))))

(def (char-stream-ungetc ts char)
  (with ((char-stream port buf loc lines) ts)
    (set! (char-stream-buf ts)
      (cons char buf))
    (set! (char-stream-loc ts)
      (location-ungetc loc char lines))))

(def (char-stream-peek ts)
  (with ((char-stream port buf) ts)
    (match buf
      ([char . rest] char)
      (else
       (peek-char port)))))

(def (location-getc loc char lines)
  (with ((location port line col off xoff) loc)
    (cond
     ((fx< xoff 0)
      (make-location port 0 0 0 0))
     ((memq xoff lines)
      (make-location port (fx1+ line) 0 off (fx1+ xoff)))
     (else
      (make-location port line (fx1+ col) off (fx1+ xoff))))))

(def (location-ungetc loc char lines)
  (with ((location port line col _ xoff) loc)
    (if (fx> col 0)
      (make-location port line (fx1- col) 0 (fx1- xoff))
      (let* ((xoff (fx1- xoff))
             (base (or (find (cut < <> xoff) lines) -1))
             (col (fx- xoff base 1)))
        (make-location port (fx1- line) col 0 xoff)))))


