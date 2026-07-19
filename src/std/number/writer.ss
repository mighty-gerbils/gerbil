(export
  write-integer
  integer-write-length)

(import
  :std/error
  :std/io/api
  :std/iter
  (only-in :std/number/misc uint? integer-digit-count)
  (only-in :std/text/parser/char-set digit-char))

;; Compute the exact number of characters write-integer produces for n.
;; upper-case? and align are accepted for symmetry but don't affect length.
;; pad is also accepted but does not affect length.
(def (integer-write-length (n : :integer)
                           base:        (base        : :fixnum  := 10)
                           sign?:       (sign?       : :boolean := #f)
                           min-digits:  (min-digits  :? :fixnum := #f)
                           upper-case?: (upper-case? : :boolean := #f)
                           pad:         (pad         : :char    := #\space)
                           width:       (width       :? :fixnum := #f)
                           align:       (align       : :symbol  := 'right))
  => :fixnum
  (let* ((digits  (integer-digit-count (abs n) base))
         (digits  (if min-digits (fxmax digits min-digits) digits))
         (content (if (or sign? (negative? n)) (fx+ digits 1) digits)))
    (if width (fxmax content width) content)))

;; Write exact integer n in the given base to writer.
;; base:        radix 2–36; lowercase letters for digits above 9 (unless upper-case?).
;; width:       field width (codepoints). Soft: wider output is never truncated.
;; min-digits:  minimum digit count (zero-pads digit section; sign not counted).
;;              C printf %.N semantics: %.6x 42 → "00002a", %.6x -42 → "-00002a".
;; sign?:       #t = always write +/- sign; #f = sign only for negative n.
;; pad:         ASCII fill char for width padding (default #\space; non-ASCII is an error).
;;              #\0 with align: 'right puts sign before zeros, any other char puts pad before sign.
;; align:       'right (default), 'left, or 'center.
;; upper-case?: #t = use uppercase A–F for hex digits.
;; TODO: add digit-group: (grouping separator) once format has syntax for it.
(def (write-integer (writer      : BufferedWriter)
                    (n           : :integer)
                    base:        (base        : :fixnum  := 10)
                    width:       (width       :? :fixnum := #f)
                    sign?:       (sign?       : :boolean := #f)
                    pad:         (pad         : :char    := #\space)
                    align:       (align       : :symbol  := 'right)
                    upper-case?: (upper-case? : :boolean := #f)
                    min-digits:  (min-digits  :? :fixnum := #f)) => :fixnum
  (let* ((neg?    (negative? n))
         (absn    (abs n))
         (nd      (integer-digit-count absn base))
         (mdzeros (if min-digits (fxmax 0 (fx- min-digits nd)) 0))
         (content (integer-write-length n base: base sign?: sign? min-digits: min-digits)))

    (def (do-sign!)
      (when (or sign? neg?)
        (writer.write-char-utf8 (if neg? #\- #\+))))

    (def (do-digits!)
      (when (fx> mdzeros 0)
        (for (_ (in-range mdzeros))
          (writer.write-char-utf8 #\0)))
      (if (zero? absn)
        (writer.write-char-utf8 #\0)
        (let loop ((m absn))
          (unless (zero? m)
            (let-values (((q r) (floor/ m base)))
              (loop q)
              (writer.write-char-utf8 (digit-char r base upper-case?)))))))

    (if (not width)
      (begin (do-sign!) (do-digits!) content)
      (let* ((pad-u8  (char->integer pad))
             (_       (unless (fx< pad-u8 128)
                        (raise-bad-argument write-integer "ASCII pad character" pad)))
             (padding (fxmax 0 (fx- width content))))
        (def (do-pad! k)
          (when (fx> k 0)
            (for (_ (in-range k))
              (writer.write-u8 pad-u8))))
        (cond
         ((fx= padding 0)
          (do-sign!) (do-digits!))
         ((eq? align 'left)
          (do-sign!) (do-digits!) (do-pad! padding))
         ((eq? align 'center)
          (let* ((lpad (fxquotient padding 2))
                 (rpad (fx- padding lpad)))
            (do-pad! lpad) (do-sign!) (do-digits!) (do-pad! rpad)))
         ((fx= pad-u8 48)
          (do-sign!) (do-pad! padding) (do-digits!))
         (else
          (do-pad! padding) (do-sign!) (do-digits!)))
        (fx+ content padding)))))
