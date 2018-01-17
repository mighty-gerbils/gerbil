;;; -*- Gerbil -*-
;;; © vyzo
;;; Generic dispatch
package: std/generic

(import )
(export type-of)

(declare (not safe))

;;; type-of
(def (type-of obj)
  (declare (not interrupts-enabled))
  (let (t (##type obj))
    (cond
     ((##fx= t (macro-type-mem1))       ; subtyped
      (let (st (##subtype obj))
        (cond
         ((##fx= st (macro-subtype-structure)) ; object
          (##type-id (##structure-type obj)))
         ((##fx= st (macro-subtype-boxvalues)) ; box or values?
          (if (##fx= (##vector-length obj) 1)
            'box
            'values))
         (else
          (##vector-ref +subtype-id+ st)))))
     ((##fx= t (macro-type-mem2))       ; pair
      'pair)
     ((##fx= t (macro-type-fixnum))     ; fixnum
      'fixnum)
     (else                              ; special (immediate)
      (cond
       ((##char? obj)      'char)
       ((##eq? obj '())    'null)
       ((##eq? obj #f)     'false)
       ((##eq? obj #t)     'true)
       ((##eq? obj #!void) 'void)
       ((##eq? obj #!eof)  'eof)
       (else 'atom))))))

(def +subtype-id+ (make-vector 32 'unknown))

(defrules defsubtype ()
  ((_ (st id) ...)
   (begin (vector-set! +subtype-id+ st 'id) ...)))

(defsubtype
  ((macro-subtype-vector)       vector)
  ((macro-subtype-pair)         pair)
  ((macro-subtype-ratnum)       ratnum)
  ((macro-subtype-cpxnum)       cpxnum)
  ((macro-subtype-symbol)       symbol)
  ((macro-subtype-keyword)      keyword)
  ((macro-subtype-continuation) continuation)
  ((macro-subtype-promise)      promise)
  ((macro-subtype-procedure)    procedure)
  ((macro-subtype-foreign)      foreign)
  ((macro-subtype-string)       string)
  ((macro-subtype-s8vector)     s8vector)
  ((macro-subtype-u8vector)     u8vector)
  ((macro-subtype-s16vector)    s16vector)
  ((macro-subtype-u16vector)    u16vector)
  ((macro-subtype-s32vector)    s32vector)
  ((macro-subtype-u32vector)    u32vector)
  ((macro-subtype-f32vector)    f32vector)
  ((macro-subtype-s64vector)    s64vector)
  ((macro-subtype-u64vector)    u64vector)
  ((macro-subtype-f64vector)    f64vector)
  ((macro-subtype-flonum)       flonum)
  ((macro-subtype-bignum)       bignum))

;; _gambit#
(extern namespace: #f
  macro-type-mem1
  macro-type-mem2
  macro-type-fixnum
  macro-subtype-structure
  macro-subtype-boxvalues
  macro-subtype-vector
  macro-subtype-pair
  macro-subtype-ratnum
  macro-subtype-cpxnum
  macro-subtype-symbol
  macro-subtype-keyword
  macro-subtype-frame
  macro-subtype-continuation
  macro-subtype-promise
  macro-subtype-procedure
  macro-subtype-foreign
  macro-subtype-string
  macro-subtype-s8vector
  macro-subtype-u8vector
  macro-subtype-s16vector
  macro-subtype-u16vector
  macro-subtype-s32vector
  macro-subtype-u32vector
  macro-subtype-f32vector
  macro-subtype-s64vector
  macro-subtype-u64vector
  macro-subtype-f64vector
  macro-subtype-flonum
  macro-subtype-bignum)

;;; Method dispatch

;; The cache is a perfect hash table represented as a vector containing
;; cache entries. A cache entry is an inverted arg type id improper list
;; terminating to the the method procedure.
;; This allows for lock-free allocation-free recursive lookup
;; and reasonably fast dispatch
(def (generic-cache-lookup cache args)
  (declare (not interrupts-enabled))
  (def (lookup hash rest)
    (match rest
      ([arg . rest]
       (let* ((tid (type-of arg))
              (hash (##fxxor hash (##symbol-hash tid))))
         (match (lookup hash rest)
           ([xtid . xrest]
            (and (##eq? tid xtid)
                 xrest))
           (else #f))))
      (else
       (let* ((len (##vector-length cache))
              (ix (##fxmodulo hash len)))
         (##vector-ref cache ix)))))

  (let (proc (lookup 0 args))
    (and (##procedure? proc) proc)))
