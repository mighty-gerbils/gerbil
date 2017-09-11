;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; R7RS (scheme base) library -- implementation details
package: scheme

(import :gerbil/gambit/hash)
(export #t)

(defrules defeqv ()
  ((_ id is? =?)
   (def* id
     ((x y)
      (and (is? x)
           (is? y)
           (=? x y)))
     ((x y . rest)
      (let* ((y-rest (cons y rest))
             (x-y-rest (cons x y-rest)))
        (and (andmap is? x-y-rest)
             (andmap (cut =? x <>) y-rest)))))))

(defeqv boolean=? boolean? eq?)
(defeqv symbol=? symbol? eq?)

(definline (exact-integer? obj)
  (and (integer? obj) (exact? obj)))

;; numerics
(definline (square x)
  (expt x 2))

;; original author: brad [gambiteer]
(def (exact-integer-sqrt y)
  (if (and (exact-integer? y)
           (not (negative? y)))
    (let (s-r (##exact-int.sqrt y))
      (values (car s-r) (cdr s-r)))
    (error "exact-integer-sqrt: Argument is not a nonnegative exact integer: " y)))

;; lists
(def (list-copy lst)
  (foldr cons [] lst))

(def (list-set! lst k obj)
  (set! (car (list-tail lst k))
    obj))


;; equality that terminates in recursive structures
(def (r7rs-equal? obj1 obj2)
  (def ht (make-hash-table-eq))

  (def (equal obj1 obj2)
    (cond
     ((##eq? obj1 obj2))
     ((##table-ref ht obj1 #f)
      #f)
     ((number? obj1)
      (##eqv? obj1 obj2))
     ((##pair? obj1)
      (and (##pair? obj2)
           (begin
             (##table-set! ht obj1 #t)
             (and (equal (##car obj1) (##car obj1))
                  (equal (##cdr obj1) (##cdr obj2))))))
     ((##vector? obj1)
      (and (##vector? obj2)
           (let (len (##vector-length obj1))
             (and (##fx= len (##vector-length obj2))
                  (begin (##table-set! ht obj1 #t)
                         (vector-equal obj1 obj2 len))))))
     ((##string? obj2)
      (and (##string? obj2)
           (##string-equal? obj1 obj2)))
     ((##u8vector? obj1)
      (and (##u8vector? obj2)
           (##u8vector-equal? obj1 obj2)))
     ((##s8vector? obj1)
      (and (##s8vector? obj2)
           (##s8vector-equal? obj1 obj2)))
     ((##u16vector? obj1)
      (and (##u16vector? obj2)
           (##u16vector-equal? obj1 obj2)))
     ((##s16vector? obj1)
      (and (##s16vector? obj2)
           (##s16vector-equal? obj1 obj2)))
     ((##u32vector? obj1)
      (and (##u32vector? obj2)
           (##u32vector-equal? obj1 obj2)))
     ((##s32vector? obj1)
      (and (##s32vector? obj2)
           (##s32vector-equal? obj1 obj2)))
     ((##u64vector? obj1)
      (and (##u64vector? obj2)
           (##u64vector-equal? obj1 obj2)))
     ((##s64vector? obj1)
      (and (##s64vector? obj2)
           (##s64vector-equal? obj1 obj2)))
     ((##f32vector? obj1)
      (and (##f32vector? obj2)
           (##f32vector-equal? obj1 obj2)))
     ((##f64vector? obj1)
      (and (##f64vector? obj2)
           (##f64vector-equal? obj1 obj2)))
     ((table? obj1)
      (and (table? obj2)
           (begin
             (##table-set! ht obj1 #t)
             (table-equal obj1 obj2))))
     ((##structure? obj1)
      (and (##structure? obj2)
           (let* ((t1 (##structure-type obj1))
                  (t2 (##structure-type obj2))
                  (tid1 (##type-id t1))
                  (tid2 (##type-id t2)))
             (and (##eq? tid1 tid2)
                  (let (len (##vector-length obj1))
                    (and (##fx= len (##vector-length obj2))
                         (##fx= (##fxand (##type-flags t1) 1) 0) ; not opaque
                         (begin
                           (##table-set! ht obj1 #t)
                           (vector-equal obj1 obj2 len))))))))
     ((##box? obj1)
      (and (##box? obj2)
           (begin
             (##table-set! ht obj1 #t)
             (equal (##unbox obj1) (##unbox obj2)))))
     (else #f)))

  (def (vector-equal obj1 obj2 len)
    (let lp ((i 0))
      (if (##fx< i len)
        (and (equal (##vector-ref obj1 i) (##vector-ref obj2 i))
             (lp (##fx+ i 1)))
        #t)))

  (def (table-equal obj1 obj2)
    (and (##fx= (##vector-ref obj1 1) ; flags
                (##vector-ref obj2 1))
         (##eq? (##vector-ref obj1 2) ; test
                (##vector-ref obj2 2))
         (##eq? (##vector-ref obj1 3) ; hash
                (##vector-ref obj2 3))
         (##fx= (##table-length obj1)
                (##table-length obj2))
         (not (##table-search
               (lambda (k1 v1)
                 (let (v2 (##table-ref obj2 k1 nil))
                   (not (equal v1 v2))))
               obj1))))

  (equal obj1 obj2))

(defstruct Nil ())
(def nil (Nil))
