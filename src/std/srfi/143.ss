;;; -*- Gerbil -*-
;;; (c) vyzo at hackzen.org
;;; SRFI-143: Fixnums

(import :gerbil/gambit)
(export fx-width fx-greatest fx-least
        fixnum? fx=? fx<? fx>? fx<=? fx>=?
        fxzero? fxpositive? fxnegative?
        fxodd? fxeven? fxmax fxmin
        fx+ fx- fxneg fx* fxquotient fxremainder
        fxabs fxsquare fxsqrt
        fx+/carry fx-/carry fx*/carry
        fxnot fxand fxior fxxor fxarithmetic-shift
        fxarithmetic-shift-left fxarithmetic-shift-right
        fxbit-count fxlength fxif fxbit-set? fxcopy-bit
        fxfirst-set-bit fxbit-field
        fxbit-field-rotate fxbit-field-reverse)

(def fx-width ##fixnum-width)
(def fx-greatest ##max-fixnum)
(def fx-least ##min-fixnum)

(defalias fx=? fx=)
(defalias fx<? fx<)
(defalias fx>? fx>)
(defalias fx<=? fx<=)
(defalias fx>=? fx>=)

(def (fxneg x)
  (fx- x))

(def (fxsqrt x)
  (##integer-sqrt x))

(def (fxcopy-bit index to bool)
  (if bool
    (fxior to (fxarithmetic-shift-left 1 index))
    (fxand to (fxnot (fxarithmetic-shift-left 1 index)))))

;;; Now built into Gambit
;;(def (fxfirst-set-bit i)
;;  (fx- (fxbit-count (fxxor i (fx- i 1))) 1))

(def (mask start end)
  (fxnot (fxarithmetic-shift-left -1 (fx- end start))))

(def (fxbit-field n start end)
  (fxand (mask start end) (fxarithmetic-shift n (fx- start))))

(def (fxbit-field-rotate n count start end)
  (def width (fx- end start))
  (set! count (fxmodulo count width))
  (let ((mask (fxnot (fxarithmetic-shift -1 width))))
    (def zn (fxand mask (fxarithmetic-shift n (fx- start))))
    (fxior (fxarithmetic-shift
             (fxior (fxand mask (fxarithmetic-shift zn count))
                     (fxarithmetic-shift zn (fx- count width)))
             start)
           (fxand (fxnot (fxarithmetic-shift mask start)) n))))

(def (fxreverse k n)
  (do ((m (if (fxnegative? n) (fxnot n) n) (fxarithmetic-shift-right m 1))
       (k (fx+ -1 k) (fx+ -1 k))
       (rvs 0 (fxior (fxarithmetic-shift-left rvs 1) (fxand 1 m))))
      ((fxnegative? k) (if (fxnegative? n) (fxnot rvs) rvs))))

(def (fxbit-field-reverse n start end)
  (def width (fx- end start))
  (let ((mask (fxnot (fxarithmetic-shift-left -1 width))))
    (def zn (fxand mask (fxarithmetic-shift-right n start)))
    (fxior (fxarithmetic-shift-left (fxreverse width zn) start)
           (fxand (fxnot (fxarithmetic-shift-left mask start)) n))))

(include "srfi-143/carries.scm")
