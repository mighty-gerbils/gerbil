;;; -*- Gerbil -*-
;;; (C) vyzo
;;; std parser location-tracking streams

(import :gerbil/gambit
        :std/error
        ./base)
(export make-char-stream char-stream?
        char-stream-loc
        char-stream-close
        char-stream-peek
        char-stream-getc
        char-stream-ungetc
        port-location)

;; port: character-input-port we are parsing
;; buf:  lookahead buffer (returned with ungetc)
;; loc:  location of last character read with getc
;; lines: offsets of lines encountered in the stream
(defstruct char-stream (port buf loc lines)
  constructor: :init!
  final: #t)

;; _gambit#.scm
(extern namespace: #f
  macro-character-input-port?
  macro-character-port-rlines
  macro-character-port-rchars
  macro-character-port-rcurline
  macro-character-port-rlo)

(defmethod {:init! char-stream}
  (lambda (self port)
    (unless (macro-character-input-port? port)
      (raise-bad-argument make-char-stream "input source; character-input-port" port))
    (struct-instance-init! self port [] (make-location port 0 0 0 0) [])))

(def (char-stream-close cs)
  (close-input-port (char-stream-port cs)))

(def (char-stream-getc cs)
  (with ((char-stream port buf loc lines) cs)
    (match buf
      ([char . rest]
       (set! (char-stream-buf cs)
         rest)
       (set! (char-stream-loc cs)
         (location-getc loc char lines))
       char)
      (else
       (let* ((loc (port-location port))
              (char (read-char port)))
         (unless (eof-object? char)
           (set! (char-stream-loc cs) loc)
           (when (eq? #\newline char)
             (set! (char-stream-lines cs)
               (cons (location-xoff loc) lines))))
         char)))))

(def (char-stream-ungetc cs char)
  (unless (eof-object? char)
    (with ((char-stream port buf loc lines) cs)
      (set! (char-stream-buf cs)
        (cons char buf))
      (set! (char-stream-loc cs)
        (location-ungetc loc char lines)))))

(def (char-stream-peek cs)
  (with ((char-stream port buf) cs)
    (match buf
      ([char . rest] char)
      (else
       (peek-char port)))))

(def (location-getc loc char lines)
  (with ((location port line col _ xoff) loc)
    (cond
     ((##fx< xoff 0)
      (make-location port 0 0 1 0))
     ((memq xoff lines)
      (make-location port (##fx+ line 1) 0 1 (##fx+ xoff 1)))
     (else
      (make-location port line (##fx+ col 1) 1 (##fx+ xoff 1))))))

(def (location-ungetc loc char lines)
  (with ((location port line col _ xoff) loc)
    (if (##fx> col 0)
      (make-location port line (##fx- col 1) 1 (##fx- xoff 1))
      (let* ((xoff (##fx- xoff 1))
             (base (or (find (cut < <> xoff) lines) -1))
             (col (##fx- xoff base 1)))
        (make-location port (##fx- line 1) col 1 xoff)))))

(def (port-location port)
  (let* ((line (macro-character-port-rlines port))
         (xoff (##fx+ (macro-character-port-rchars port)
                      (macro-character-port-rlo port)))
         (col (##fx- xoff (macro-character-port-rcurline port))))
    (make-location port line col 1 xoff)))
