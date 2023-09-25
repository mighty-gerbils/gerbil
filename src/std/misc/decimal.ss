(import
  :gerbil/gambit
  :std/srfi/141
  :std/error
  :std/io
  :std/iter
  :std/misc/number
  :std/parser/base
  :std/sugar
  :std/text/basic-parsers
  :std/text/basic-printers
  :std/text/char-set
  :std/values)

(export decimal? parse-decimal string->decimal write-decimal decimal->string
        LossOfPrecision LossOfPrecision?
        power-of-5?
        find-decimal-multiplier
        count-significant-digits nat->significant-digits
        decimal->digits-exponent digits-exponent->decimal)

;; : Any -> Bool
(def (decimal? x)
  (and (rational? x)
       (power-of-5? (first-value (factor-out-powers-of-2 (denominator x))))))

;; : Integer -> Bool
(def (power-of-5? n)
  (and (exact-integer? n) (positive? n)
       (if (< (integer-length n) 1024) ;; number small enough to be converter to double float
         (let (l (integer-part (round (log n 5)))) ;; no loss of precision below 440
           (= n (expt 5 l)))
         (let*-values (((p) (expt 5 440)) ;; largest power of five under 2**1023
                       ((l) (integer-log n p))
                       ((q r) (floor/ n (expt p l))))
           (and (zero? r) (power-of-5? q)))))) ;; reduce to the simpler problem above

;; `parse-decimal` expects and parses a decimal number on the PeekableStringReader.
;; The character parameters `decimal-mark` and `group-separator` provide
;; support for different (typically cultural) numerical conventions.
;; For convenience, a `group-separator` of #t will be treated as the comma character.
;; The boolean `sign-allowed` controls signage.
;; `exponent-allowed` is a boolean or a sequence controlling exponent notation.
;; Exponent notation follows the syntax for Scheme floats,
;; with exception that the exponent marker must be 'e' or 'E' when `exponent-allowed` is #t,
;; or the exponent marker must be `char=` to some element of `exponent-allowed`
;; when `exponent-allowed` is a string.
;; Side-effects the PeekableStringReader, and returns the decimal number, or raises an exception.
;; It is up to the caller to ignore and leading or trailing whitespace and check for eof
;; before and/or after calling `parse-decimal`.
;; : PeekableStringReader sign-allowed?:Bool decimal-mark:Char group-separator:(Or Char Bool) exponent-allowed:(or Bool String) -> Decimal
(def (parse-decimal
      pre-reader
      sign-allowed?: (sign-allowed? #t)
      decimal-mark: (decimal-mark #\.)
      group-separator: (group-separator_ #f)
      exponent-allowed: (exponent-allowed_ #f))
  (def reader (PeekableStringReader (open-buffered-string-reader pre-reader)))
  (check-argument (boolean? sign-allowed?) "boolean" sign-allowed?)
  (check-argument (char? decimal-mark) "char" decimal-mark)
  (check-argument (or (boolean? group-separator_) (char? group-separator_))
                  "boolean or char" group-separator_)
  (check-argument (or (boolean? exponent-allowed_) (string? exponent-allowed_))
                  "boolean or string" exponent-allowed_)
  (def group-separator (if (eq? group-separator_ #t) #\, group-separator_))
  (def exponent-allowed (if (eq? exponent-allowed_ #t) "eE" exponent-allowed_))
  (check-argument (not (and decimal-mark group-separator (char=? decimal-mark group-separator)))
                  "different decimal-mark and group-separator" [decimal-mark group-separator])
  (check-argument (not (and (char? decimal-mark) exponent-allowed
                            (string-index exponent-allowed decimal-mark)))
                  "decimal-mark not in exponent-allowed" [decimal-mark exponent-allowed])
  (check-argument (not (and (char? group-separator) exponent-allowed
                            (string-index exponent-allowed group-separator)))
                  "group-separator not in exponent-allowed" [group-separator exponent-allowed])
  (def numerator 0)
  (def denominator 1)
  (def sign 1)
  (def exponent 0)
  (def exponent-sign 1)
  (def valid? #f) ;; have we seen at least one digit
  (def (peek) (PeekableStringReader-peek-char reader))
  (def c (peek))
  (def (bad) (raise-parse-error parse-decimal "Unexpected character" #f pre-reader))
  (def (next) (PeekableStringReader-read-char reader) (set! c (peek)))
  (def (parse-sign) (case c ((#\+) (next) 1) ((#\-) (next) -1) (else 1)))

  (let/cc return
    (when (eof-object? c) (raise-parse-error parse-decimal "Unexpected EOF" #!eof pre-reader))
    (when sign-allowed? (set! sign (parse-sign)))
    (def (done) (return (* sign (/ numerator denominator) (expt 10 (* exponent-sign exponent)))))
    (def (parse-left-digit-or-group-separator)
      (cond
       ((char-ascii-digit c) =>
        (lambda (d)
          (set! numerator (+ (* numerator 10) d))
          (set! valid? #t)
          (next)
          (parse-left-digit-or-group-separator)))
       ((and group-separator (eqv? group-separator c))
        (next)
        (parse-left-digit-or-group-separator))
       (else (maybe-decimal-mark))))
    (def (maybe-decimal-mark)
      (cond
       ((eqv? c decimal-mark)
        (next)
        (if valid? ;; if we have seen a left digit
          (maybe-right-digit)
          (parse-right-digit)))
       (valid?
        (maybe-exponent-marker))
       (else
        (bad))))
    (def (parse-right-digit)
      (cond
       ((char-ascii-digit c) =>
        (lambda (d)
          (set! numerator (+ (* numerator 10) d))
          (set! denominator (* denominator 10))
          (set! valid? #t)
          (next)
          (maybe-right-digit)))
       (else (bad))))
    (def (maybe-right-digit)
      (cond
       ((char-ascii-digit c) =>
        (lambda (d)
          (set! numerator (+ (* numerator 10) d))
          (set! denominator (* denominator 10))
          (set! valid? #t)
          (next)
          (maybe-right-digit)))
       (else (maybe-exponent-marker))))
    (def (maybe-exponent-marker)
      (cond
       ((and exponent-allowed (string-index exponent-allowed c))
        (set! valid? #f) ;; invalid until we finish parsing the exponent
        (next)
        (maybe-exponent-sign))
       (else (done))))
    (def (maybe-exponent-sign)
      (set! exponent-sign (parse-sign))
      (parse-exponent-digit))
    (def (parse-exponent-digit)
      (cond
       ((char-ascii-digit c) =>
        (lambda (d)
          (set! exponent (+ (* exponent 10) d))
          (set! valid? #t)
          (next)
          (maybe-exponent-digit)))
        (else (bad))))
    (def (maybe-exponent-digit)
      (cond
       ((char-ascii-digit c) =>
        (lambda (d)
          (set! exponent (+ (* exponent 10) d))
          (set! valid? #t)
          (next)
          (maybe-exponent-digit)))
       (else
        (done))))
    (parse-left-digit-or-group-separator)))

;; String sign-allowed?:Bool decimal-mark:Char group-separator:(Or Char Bool) exponent-allowed:(or Bool String) allow-leading-whitespace?:Bool allow-trailing-whitespace?:Bool start:Nat end:(OrFalse Nat) -> Decimal
(def (string->decimal s
      sign-allowed?: (sign-allowed? #t)
      decimal-mark: (decimal-mark #\.)
      group-separator: (group-separator #f)
      exponent-allowed: (exponent-allowed #f)
      allow-leading-whitespace?: (allow-leading-whitespace? #f)
      allow-trailing-whitespace?: (allow-trailing-whitespace? #f)
      start: (start 0)
      end: (end_ #f))
  (def l (string-length s))
  (def end (or end_ l))
  (call-with-input-string
   (if (and (zero? start) (= end l)) s (substring s start end))
   (lambda (port)
     (def reader (PeekableStringReader (open-buffered-string-reader port)))
     (when allow-leading-whitespace?
       (parse-and-skip-any-whitespace reader))
     (begin0
         (parse-decimal reader
                        sign-allowed?: sign-allowed?
                        decimal-mark: decimal-mark
                        group-separator: group-separator
                        exponent-allowed: exponent-allowed)
       (when allow-trailing-whitespace?
         (parse-and-skip-any-whitespace reader))
       (parse-eof reader)))))

;; Given an integer d of the form 2^m*5^n (reduced denominator of a decimal number),
;; compute c such that c*d = c*(2^m*5^n) = 10^max(m,n).
;; Returns c and max(m,n).
;; : Nat -> Nat Nat
(def (find-decimal-multiplier d)
  (define-values (5^n m) (factor-out-powers-of-2 d))
  (def n (integer-log 5^n 5))
  ;; We check that the answer is correct before returning it to the caller.
  (check-argument (= d (* (arithmetic-shift 1 m) (expt 5 n))) "divisor of power of 10" d)
  (if (> m n)
    (values (expt 5 (- m n)) m)
    (values (arithmetic-shift 1 (- n m)) n)))

;; Count the number of significant digits to represent this natural integer.
;; For 0, return 0.
;; TODO: document and check the limit conditions of validity of the algorithm
;; : Nat -> Nat
(def (count-significant-digits n)
  (check-argument (nat? n) "natural" n)
  (if (zero? n)
      0
      (let (l0 (integer-part (log n 10)))
        (let loop ((l l0) (a (quotient n (expt 10 l0))))
          (if (< a 1) l (loop (1+ l) (quotient a 10)))))))

;; Converts an integer into a base 10 string. The sign is ignored.
;; For 0 becomes an empty string "" rather than "0".
;; : Nat -> String
(def (nat->significant-digits n)
  (check-argument (nat? n) "natural" n)
  (let* ((digit-count (count-significant-digits n))
         (str (make-string digit-count))
         (remainder 0))
    (let loop ((a n)
               (i (1- digit-count)))
      (if (negative? i) str
          (let-values (((q r) (truncate/ a 10)))
            (string-set! str i (digit-char r 10))
            (loop q (1- i)))))))

;; Given a decimal number, return
;; - The absolute smallest integer with all its digits
;; - the non-negative power of ten by which the decimal had to be multiplied to get this integer.
;; Maybe we should find the valuation of the decimal in base 10,
;; and return the least, negative, number when appropriate?
;; : Decimal -> Integer Nat
(def (decimal->digits-exponent decimal)
  (defvalues (c m) (find-decimal-multiplier (denominator decimal)))
  (values (* (numerator decimal) c) m))

;; From an integer number for the digits and an exponent for the negative powers of 10,
;; return a decimal number.
(def (digits-exponent->decimal digits exponent)
  (/ digits (expt 10 exponent)))

;; Attempted print operation would lose precision. See precision-loss-behavior.
(deferror-class LossOfPrecision ())

;; Given
;; - a decimal number,
;; - a scale (or #f meaning 0), the number being notionally multiplied by ten to that scale (default #f),
;; - a width within which to fit the number or #f for no limitation (default #f),
;; - a minimum number of integral digits to display or false (default #f),
;;   that can be 1 to force #\0 to be printed before a decimal point,
;; - a minimum number of fractional digits to display or false (default #f),
;;   that can be 1 to force #\0 to be printed after a decimal point,
;; - a boolean for whether a decimal mark will always be printed even for integers (default #f),
;; - a character to use as the decimal mark,
;; - a symbol for the behavior on precision loss, one of error, truncate or round,
;; Return a string, or raise an exception if the number won't fit the specified width
;; : Decimal Port \
;;   scale:(OrFalse Integer) \
;;   width:(OrFalse Nat) \
;;   integral-digits:(OrFalse Nat) \
;;   fractional-digits:(OrFalse Nat) \
;;   always-decimal?:Bool \
;;   decimal-mark:Char \
;;   precision-loss-behavior:(Enum error truncate round) -> String
(def (%decimal->digits n scale: (scale #f) width: (width #f)
                       integral-digits: (integral-digits #f)
                       fractional-digits: (fractional-digits #f)
                       always-decimal?: (always-decimal? #f)
                       decimal-mark: (decimal-mark #\.)
                       precision-loss-behavior: (precision-loss-behavior 'error))
  (unless integral-digits (set! integral-digits 0))
  (unless fractional-digits (set! fractional-digits 0))
  (let/cc return
    (when (and (zero? n) (zero? integral-digits) (zero? fractional-digits))
      (return (if always-decimal? "0." "0")))

    ;; Integer with the significant digits, number of fractional digits in it
    (defvalues (all-digits denominator-power) (decimal->digits-exponent n))
    ;; Total number of significant digits in number
    (def digit-count (count-significant-digits all-digits))
    ;; Where is the decimal mark relative to the start of the significant digits (0: just before)
    (def decimal-mark-index (- (+ digit-count (or scale 0)) denominator-power))
    ;; How many 0s to add in front of the digits for the integer part?
    (def integral-left-padding (max 0 (- integral-digits (max 0 decimal-mark-index))))
    ;; How many digits to copy from all-digits for the integer part?
    (def integral-digits-copied (max 0 (min digit-count decimal-mark-index)))
    ;; How many digits to add behind all-digits for the integer part?
    (def integral-right-padding (max 0 (- decimal-mark-index digit-count)))
    ;; Total number of digits required for the integral part
    (def total-integral-digits (+ integral-left-padding integral-digits-copied integral-right-padding))
    ;; How many 0s to add in front of the digits for the integer part?
    (def fractional-left-padding (max 0 (- decimal-mark-index)))
    ;; How many digits to copy from all-digits for the integer part?
    (def fractional-digits-copied (max 0 (min digit-count (- digit-count decimal-mark-index))))
    ;; How many digits to add behind all-digits for the integer part?
    (def fractional-right-padding (max 0 (- fractional-digits (max 0 (- digit-count decimal-mark-index)))))
    ;; Total number of digits required for the fractional part
    (def total-fractional-digits (+ fractional-left-padding fractional-digits-copied fractional-right-padding))
    ;; Shall we print the decimal mark?
    (def decimal-mark? (or always-decimal? (positive? total-fractional-digits)))
    ;; Width reserved for the decimal mark
    (def decimal-mark-width (if decimal-mark? 1 0))
    ;; Total length of a string required to print the decimal number
    (def total-length (+ total-integral-digits decimal-mark-width total-fractional-digits))
    ;; Where do fractional digits start?
    (def fractional-digits-start (+ total-integral-digits decimal-mark-width fractional-left-padding))
    ;; How many characters more than the allowed width do we need?
    (def extra-width (if width (max 0 (- total-length width)) 0))
    ;; How many digits can we throw away and still show the minimum required number of fractional digits?
    (def throwable-digits (- total-fractional-digits fractional-digits))
    ;; What is the effective length of the string?
    (def effective-length (- total-length extra-width))
    ;; How many fractional digits will we actually copy?
    (def effective-fractional-digits (min fractional-digits-copied (- effective-length fractional-digits-start)))

    (def (digits)
      ;; A string with the significant digits
      (def significant-digits (nat->significant-digits all-digits))
      ;; The target string
      (def string (make-string effective-length #\0))
      (string-copy! string integral-left-padding significant-digits 0 integral-digits-copied)
      (when decimal-mark?
        (string-set! string (+ integral-left-padding integral-digits-copied) decimal-mark))
      (when (positive? effective-fractional-digits)
        (string-copy! string fractional-digits-start significant-digits
                      integral-digits-copied (+ integral-digits-copied effective-fractional-digits)))
      string)

    (def (disallowed-loss-of-precision)
      (raise (LossOfPrecision "loss of precision" irritants: [n]
                              where: (exception-context disallowed-loss-of-precision))))

    (cond
     ((>= 0 extra-width)
      (digits))
     ((< throwable-digits extra-width)
      (disallowed-loss-of-precision))
     (else
      (case precision-loss-behavior
        ((error) (disallowed-loss-of-precision))
        ((truncate)
         (digits))
        ((round)
         (let-values (((rounded-all-digits remainder)
                       (round/ all-digits (expt 10 extra-width))))
           (%decimal->digits rounded-all-digits
                             scale: (- extra-width total-fractional-digits)
                             width: width
                             integral-digits: integral-digits
                             fractional-digits: fractional-digits
                             always-decimal?: always-decimal?)))
        (else (error "Invalid precision-loss-behavior")))))))

;; Given
;; - a decimal number,
;; - a port on which to write the number (default (current-output-port)),
;; - a scale (or #f meaning 0), the number being notionally multiplied by ten to that scale (default #f),
;; - a width within which to fit the number or #f for no limitation (default #f),
;; - a minimum number of integral digits to display or false (default #f),
;;   that can be 1 to force #\0 to be printed before a decimal point,
;; - a minimum number of fractional digits to display or false (default #f),
;;   that can be 1 to force #\0 to be printed after a decimal point,
;; - a character to print when left-padding for desired width (or #f meaning #\space) (default #f),
;; - a boolean for whether a decimal mark will always be printed even for integers (default #f),
;; - a boolean for whether a sign will always be printed even for non-negative numbers (default #f),
;; - a character to use as the decimal mark,
;; - a symbol for the behavior on precision loss, one of error, truncate or round,
;; Return (void), or raise an exception if the number won't fit in the width
;; : Decimal Port \
;;   scale:(OrFalse Integer) \
;;   width:(OrFalse Nat) \
;;   integral-digits:(OrFalse Nat) \
;;   fractional-digits:(OrFalse Nat) \
;;   pad:(OrFalse Char) \
;;   always-decimal?:Bool \
;;   always-sign?:Bool \
;;   decimal-mark:Char \
;;   precision-loss-behavior:(Enum error truncate round) -> Bool
(def (write-decimal number (port (current-output-port))
                    scale: (scale #f)
                    width: (width #f)
                    integral-digits: (integral-digits #f)
                    fractional-digits: (fractional-digits #f)
                    pad: (pad_ #f)
                    always-decimal?: (always-decimal? #f)
                    always-sign?: (always-sign? #f)
                    decimal-mark: (decimal-mark #\.)
                    precision-loss-behavior: (precision-loss-behavior 'error))
  (def pad (or pad_ #\space))
  (def spaceleft width)
  (when (and width (or always-sign? (> 0 number)))
    (decrement! spaceleft))
  (def digits (%decimal->digits (abs number) scale: scale width: spaceleft
                                integral-digits: integral-digits
                                fractional-digits: fractional-digits
                                always-decimal?: always-decimal?
                                decimal-mark: decimal-mark
                                precision-loss-behavior: precision-loss-behavior))
  (when width
    (decrement! spaceleft (string-length digits))
    (write-n-chars spaceleft pad port))
  (if (> 0 number)
    (write-char #\- port)
    (when always-sign?
      (write-char #\+ port)))
  (display digits port)
  (void))

;; Given
;; - a decimal number,
;; - a scale (or #f meaning 0), the number being notionally multiplied by ten to that scale (default #f),
;; - a width within which to fit the number or #f for no limitation (default #f),
;; - a minimum number of integral digits to display or false (default #f),
;;   that can be 1 to force #\0 to be printed before a decimal point,
;; - a minimum number of fractional digits to display or false (default #f),
;;   that can be 1 to force #\0 to be printed after a decimal point,
;; - a character to print when left-padding for desired width (or #f meaning #\space) (default #f),
;; - a boolean for whether a leading decimal mark is allowed or #\0 must be printed first (default #f),
;; - a boolean for whether a decimal mark will always be printed even for integers (default #f),
;; - a boolean for whether a sign will always be printed even for non-negative numbers (default #f),
;; - a character to use as the decimal mark,
;; - a symbol for the behavior on precision loss, one of error, truncate or round,
;; Return a string, or an except if the number couldn't fit the specified width
;; : Decimal Port \
;;   width:(OrFalse Nat) \
;;   fractional-digits:(OrFalse Nat) \
;;   scale:(Or Integer Bool) \
;;   pad:(OrFalse Char) \
;;   always-decimal?:Bool \
;;   always-sign?:Bool \
;;   decimal-mark:Char \
;;   precision-loss-behavior:(Enum error truncate round) -> String
(def (decimal->string number
                      scale: (scale #f) width: (width #f)
                      integral-digits: (integral-digits #f) fractional-digits: (fractional-digits #f)
                      pad: (pad #f) always-decimal?: (always-decimal? #f) always-sign?: (always-sign? #f)
                      decimal-mark: (decimal-mark #\.)
                      precision-loss-behavior: (precision-loss-behavior 'error))
  (call-with-output-string
   (cut write-decimal number <> scale: scale width: width
        integral-digits: integral-digits fractional-digits: fractional-digits
        pad: pad always-decimal?: always-decimal? always-sign?: always-sign?
        decimal-mark: decimal-mark precision-loss-behavior: precision-loss-behavior)))
