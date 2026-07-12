;; -*- Gerbil -*-
;;;; Basic char sets, as both codepoints and characters.
;;;; Codepoints are important to analyze data that might or might not actually be unicode,
;;;; or to deal directly with binary data without casting to char.

(import :std/error)

(export #t)

;; Codepoints assume Unicode encoding

(defrule (def-codepoint (name x y ...) body ...)
  (with-id ((codepoint-predicate name "codepoint-" name)
            (char-predicate name "char-" name))
    (begin
      (def (codepoint-predicate (x : :fixnum) y ...) => :boolean
        body ...)
      (def (char-predicate x y ...) => :boolean
        (and (char? x) (codepoint-predicate (char->integer x) y ...))))))

;; : Codepoint -> Bool
(def-codepoint (ascii? c)
  (<= 0 c 127))

;; : Codepoint -> Bool
(def-codepoint (ascii-uppercase? c) ;; [A-Z]
  (<= 65 c 90))

;; : Codepoint -> Bool
(def-codepoint (ascii-lowercase? c) ;; [a-z]
  (<= 97 c 122))

;; : Codepoint -> Bool
(def-codepoint (ascii-alphabetic? c) ;; [A-Za-z]
  (or (codepoint-ascii-uppercase? c) (codepoint-ascii-lowercase? c)))

;; : Codepoint -> Bool
(def-codepoint (ascii-numeric? c) ;; [0-9]
  (<= 48 c 57))

;; : Codepoint -> Bool
(def-codepoint (ascii-alphanumeric? c) ;; [A-Za-z0-9]
  (or (codepoint-ascii-alphabetic? c) (codepoint-ascii-numeric? c)))

;; : Codepoint -> Bool
(def-codepoint (ascii-alphanumeric-or-underscore? c) ;; [A-Za-z0-9_]
  (or (codepoint-ascii-alphanumeric? c) (= c 95)))

;; : Codepoint -> Bool
(def-codepoint (ascii-printable? c) ;; any ascii printable character
  (<= 32 c 126)) ;; see https://en.wikipedia.org/wiki/ASCII

;; : Codepoint -> Bool
(def-codepoint (bmp? c) ;; in the Unicode Basic Multilingual Plane (BMP)
  (<= 0 c #xffff))

;; : Codepoint -> Bool
(def (codepoint-surrogate? (c : :fixnum)) => :boolean ;; Unicode surrogate for UTF-16
  (<= #xd800 c #xdfff))

;; : Codepoint -> (Values Codepoint Codepoint)
(def (codepoint-surrogates (c : :fixnum)) => :values
  (check-argument (<= #x10000 c #x10FFFF) "Unicode codepoint beyond the BMP" c)
  (using (o (fx- c #x10000) :- :fixnum)
    (values (fx+ #xd800 (fxarithmetic-shift-right o 10))
            (fx+ #xdc00 (bitwise-and o #x3FF)))))

;; char-surrogates returns two codepoints (not chars), or #f if the character is outside the BMP.
;; Surrogates are not valid codepoints for Gambit characters, so we cannot return chars.
(def (char-surrogates c)
  (and (char? c)
       (let ((codepoint (char->integer c)))
         (and (fx<= #x10000 codepoint)
              (codepoint-surrogates codepoint)))))

(def (surrogates->codepoint (hi : :fixnum) (lo : :fixnum)) => :fixnum
  (check-argument (fx<= #xd800 hi #xdbff) "Unicode codepoint in high surrogate range" hi)
  (check-argument (fx<= #xdc00 lo #xdfff) "Unicode codepoint in low surrogate range" lo)
  (+ #x10000
     (fxarithmetic-shift-left (bitwise-and hi #x3ff) 10)
     (bitwise-and lo #x3ff)))

(def (surrogates->char (hi : :fixnum) (lo : :fixnum)) => :char
  (integer->char (surrogates->codepoint hi lo)))


;;; There is no consensus on what a Unicode "whitespace" is.
;; See https://en.wikipedia.org/wiki/Whitespace_character

;; Whitespace as minimally defined by HTML, JSON.
;; R7RS says this is the set of whitespace accepted by all Scheme implementations,
;; though implementations may allow additional whitespace "such as page-break"
;; : Codepoint -> Bool
(def-codepoint (strict-whitespace? c)
  (or (= c #x20) ;; #\space
      (= c #x09) ;; #\tab
      (= c #x0A) ;; #\newline
      (= c #x0D))) ;; #\return

;; Whitespace as defined by C, C++ and Python.
;; To the strict-whitespace above, add two characters:
;; #\vtab (vertical tab) C'\v' and #\page (page break, form feed) C'\f'
;; : Codepoint -> Bool
(def-codepoint (ascii-whitespace? c)
  (or (= c #x20) (<= #x09 c #x0D)))

;; Whitespace as defined by the underlying Scheme implementation
;; For Gambit and thus Gerbil (so far), it is the union of ASCII whitespace
;; plus Unicode Space Separators (#x20 #xA0 #x1680 #x2000-#x200a #x202f #x205f #x3000)
;; plus Unicode Line Separators (#x0A #x0D #x85 #x2028 #x2029)
;; To check, see:
;; (import :std/format :std/iter :std/misc/list :std/sugar) (with-list-builder (c) (for (i (in-range (1+ max-char-code))) (try (when (char-whitespace? (integer->char i)) (c (format "~04x" i))) (catch (_) (void)))))
;; : Codepoint -> Bool
(def-codepoint (scheme-whitespace? c)
  (char-whitespace? (integer->char c)))

;; Note that JavaScript accepts the ASCII whitespace, the Unicode Space Separators,
;; #xFEFF (ZWNBSP), but doesn't consider the line separators as whitespace; rather
;; it considers #x0A #x0D #x2028 #x2029 as line terminators, but not #x85 (Next Line).

;; Rust recognizes the ASCII whitespace plus #x85 #x200E #x200F #x2028 #x2029.

;; Whichever language or grammar you parse, be sure to look at its latest specification
;; to identify its specific definition of "whitespace".

;; : Codepoint -> Bool
(def-codepoint (ascii-printable-or-whitespace? c)
  (or (codepoint-ascii-printable? c) (codepoint-ascii-whitespace? c)))

;; Assume ASCII, base 2 to 36
;; : Codepoint ?(IntegerRange min: 2 max: 36) -> (OrFalse (IntegerRange min: 0 max: 35))
(def (codepoint-ascii-digit c (base : :fixnum := 10))
  (let (found (lambda (d) (and (< d base) d)))
    (cond
     ((<= 48 c 57) (found (- c 48))) ;; ASCII 0-9
     ((<= 65 c 90) (found (- c 55))) ;; ASCII A-Z
     ((<= 97 c 122) (found (- c 87))) ;; ASCII a-z
     (else #f))))

;; : Any Fixnum -> (OrFalse (IntegerRange min: 0 max: 35))
(def (char-ascii-digit c (base : :fixnum := 10))
  (and (char? c) (codepoint-ascii-digit (char->integer c) base)))

;; What character (we assume ASCII) for the given digit in the given base (up to 36)?
;; Return #f if N isn't a digit number that has a corresponding character in the given base.
;; : Integer (Optional Integer 10) (Optional Bool #f) -> (Or Char #f)
(def (digit-char n (base : :fixnum := 10) (upper-case? : :boolean := #f))
  (and (exact-integer? n) (exact-integer? base)
       (<= 2 base 36) (< -1 n base)
       (integer->char (+ n (cond
                            ((< n 10) 48) ;; ASCII 0-9
                            (upper-case? 55) ;; ASCII A-Z
                            (else 87)))))) ;; ASCII a-z

;; Is the result from read-char or peek-char from a Port or Reader a line terminator?
;; : Any -> Bool
(def (char-eol? x)
  (or (eqv? x #\newline) (eqv? x #\return) (eof-object? x)))
