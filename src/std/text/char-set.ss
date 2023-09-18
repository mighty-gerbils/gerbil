;; -*- Gerbil -*-
;;;; Basic char sets, as both byte

(export #t)

(import
  :std/sugar)

;; Codepoints assume Unicode encoding

(defrule (def-codepoint (name x y ...) body ...)
  (with-id name ((codepoint-fun "codepoint-" #'name)
                 (char-fun "char-" #'name))
    (begin
      (def (codepoint-fun x y ...) (declare (fixnum)) body ...)
      (def (char-fun x y ...) (and (char? x) (codepoint-fun (char->integer x) y ...))))))

(def-codepoint (ascii? c)
  (<= 0 c 127))
(def-codepoint (ascii-uppercase? c) ;; [A-Z]
  (<= 65 c 90))
(def-codepoint (ascii-lowercase? c) ;; [a-z]
  (<= 97 c 122))
(def-codepoint (ascii-alphabetic? c) ;; [A-Za-z]
  (or (codepoint-ascii-uppercase? c) (codepoint-ascii-lowercase? c)))
(def-codepoint (ascii-numeric? c) ;; [0-9]
  (<= 48 c 57))
(def-codepoint (ascii-alphanumeric? c) ;; [A-Za-z0-9]
  (or (codepoint-ascii-alphabetic? c) (codepoint-ascii-numeric? c)))
(def-codepoint (ascii-alphanumeric-or-underscore? c) ;; [A-Za-z0-9_]
  (or (codepoint-ascii-alphanumeric? c) (= c 95)))
(def-codepoint (ascii-graphic? c) ;; any ascii "graphic" character
  (<= 32 c 127))


;;; There is no consensus on what a Unicode "whitespace" is.
;; See https://en.wikipedia.org/wiki/Whitespace_character

;; Whitespace as minimally defined by HTML, JSON.
;; R7RS says this is the set of whitespace accepted by all Scheme implementations,
;; though implementations may allow additional whitespace "such as page-break"
(def-codepoint (strict-whitespace? c)
  (or (= c #x20) ;; #\space
      (= c #x09) ;; #\tab
      (= c #x0A) ;; #\newline
      (= c #x0D))) ;; #\return

;; Whitespace as defined by C, C++ and Python.
(def-codepoint (ascii-whitespace? c)
  (or (codepoint-ascii-whitespace? c)
      (= c #x0B) ;; #\vtab (vertical tab) C'\v'
      (= c #x0C))) ;; #\page (page break, form feed) C'\f'

;; Whitespace as defined by the underlying Scheme implementation
;; For Gambit and thus Gerbil (so far), it is the union of ASCII whitespace
;; plus Unicode Space Separators (#x20 #xA0 #x1680 #x2000-#x200a #x202f #x205f #x3000)
;; plus Unicode Line Separators (#x0A #x0D #x85 #x2028 #x2029)
;; To check, see:
;; (import :std/format :std/iter :std/misc/list :std/sugar) (with-list-builder (c) (for (i (in-range (1+ ##max-char))) (try (when (char-whitespace? (integer->char i)) (c (format "~04x" i))) (catch (_) (void)))))
(def-codepoint (scheme-whitespace? c)
  (char-whitespace? (integer->char c)))

;; Note that JavaScript accepts the ASCII whitespace, the Unicode Space Separators,
;; #xFEFF (ZWNBSP), but doesn't consider the line separators whitespace; rather
;; it considers #x0A #x0D #x2028 #x2029 as line terminators but not #x85 (Next Line).

;; Rust recognizes the ASCII whitespace plus #x85 #x200E #x200F #x2028 #x2029.

;; Whichever language or grammar you parse, be sure to look at its latest specification
;; to identify its specific definition of "whitespace".

(def-codepoint (ascii-printable? c) ;; Should we really include 127 though?
  (or (codepoint-ascii-graphic? c) (codepoint-ascii-whitespace? c)))

;; Assume ASCII, base 2 to 36
(def (codepoint-ascii-digit c (base 10))
  (let (found (lambda (d) (and (< d base) d)))
    (cond
     ((<= 48 c 57) (found (- c 48))) ;; ASCII 0-9
     ((<= 65 c 90) (found (- c 55))) ;; ASCII A-Z
     ((<= 97 c 122) (found (- c 87))) ;; ASCII a-z
     (else #f))))
(def (char-ascii-digit c (base 10))
  (and (char? c) (codepoint-ascii-digit (char->integer c) base)))

(def (char-eol? x)
  (or (eqv? x #\newline) (eqv? x #\return) (eof-object? x)))
