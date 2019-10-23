;;; -*- Gerbil -*-
;;; © vyzo
;;; equality for shared structures

;; TODO equal-shared?-hash
(export equal-shared?)

(extern equal-shared?)

(begin-foreign
  (namespace ("std/misc/shared#" equal-shared?))

;; equal-shared? -- equality for recursive structures
;; Efficient Nondestructive Equality Checking for Trees and Graphs
;; Michael D. Adams and R. Kent Dybvig
;; Based on the ChezScheme implementation
(define (equal-shared? x y)
  (define k0 200)
  (define kb -20)

  (define (union-find ht x y)

    (define (find b)
      (let ((n (##car b)))
        (if (##pair? n)
          (let loop ((b b) (n n))
            (let ((nn (##car n)))
              (if (##pair? nn)
                (begin (##set-car! b nn) (loop n nn))
                n)))
          b)))

    (let ((bx (##table-ref ht x #f))
          (by (##table-ref ht y #f)))
      (if (##not bx)
          (if (##not by)
              (let ((b (##list 1)))
                (##table-set! ht x b)
                (##table-set! ht y b)
                #f)
              (begin
                (##table-set! ht x (find by))
                #f))
          (if (##not by)
              (begin
                (##table-set! ht y (find bx))
                #f)
              (let ((rx (find bx)) (ry (find by)))
                (or (##eq? rx ry)
                    (let ((nx (##car rx)) (ny (##car ry)))
                      (if (##fx> nx ny)
                          (begin
                            (##set-car! ry rx)
                            (##set-car! rx (##fx+ nx ny))
                            #f)
                          (begin
                            (##set-car! rx ry)
                            (##set-car! ry (##fx+ ny nx))
                            #f)))))))))

  (define (make-eq-table)
    (##make-table (macro-absent-obj) ; size
                  (macro-absent-obj) ; init
                  (macro-absent-obj) ; weak-keys
                  (macro-absent-obj) ; weak-values
                  ##eq?
                  ##eq?-hash))

  (define-macro (macro-numeqv?-compare obj1 obj2 k otherwise)
    `(macro-number-dispatch ,obj1 ,otherwise
       (and (##fixnum? ,obj2) (##fx= ,obj1 ,obj2) ,k) ;; obj1 = fixnum
       (and (##bignum? ,obj2) (##exact-int.= ,obj1 ,obj2) ,k) ;; obj1 = bignum
       (and (##ratnum? ,obj2) (##ratnum.= ,obj1 ,obj2) ,k) ;; obj1 = ratnum
       (and (##flonum? ,obj2) (##fleqv? ,obj1 ,obj2) ,k) ;; obj1 = flonum
       (and (##cpxnum? ,obj2) ;; obj1 = cpxnum
            (##eqv? (macro-cpxnum-real ,obj1) (macro-cpxnum-real ,obj2))
            (##eqv? (macro-cpxnum-imag ,obj1) (macro-cpxnum-imag ,obj2))
            ,k)))

  (define-macro (macro-table-flags ht)
    `(##vector-ref ,ht 1))
  (define-macro (macro-table-test ht)
    `(##vector-ref ,ht 2))
  (define-macro (macro-table-hash ht)
    `(##vector-ref ,ht 3))

  (define (struct-field-flags type)
    (let loop ((type type) (r '()))
      (if type
        (let ((fields (##type-fields type)))
          (loop (##type-super type)
                (let recur ((i 0))
                  (if (##fx< i (##vector-length fields))
                    (let ((flag (##vector-ref fields (##fx+ i 1))))
                      (cons flag (recur (##fx+ i 3))))
                    r))))
          r)))

  (define (interleave? x y k)
    (let ((ht (make-eq-table)))

      (define (e? x y k)
        (if (##fx<= k 0)
            (if (##fx= k kb)
                (fast? x y (random-integer (* 2 k0)))
                (slow? x y k))
            (fast? x y k)))

      (define (slow? x y k)
        (if (##eq? x y)
          k
          (macro-numeqv?-compare
           x y k
           (cond
            ((##pair? x)
             (and (##pair? y)
                  (if (union-find ht x y)
                    0
                    (let ((k (e? (##car x) (##car y) (##fx- k 1))))
                      (and k (e? (##cdr x) (##cdr y) k))))))
            ((##vector? x)
             (and (##vector? y)
                  (let ((n (##vector-length x)))
                    (and (##fx= (##vector-length y) n)
                         (if (union-find ht x y)
                           0
                           (let f ((i 0) (k (##fx- k 1)))
                             (if (##fx= i n)
                               k
                               (let ((k (e? (##vector-ref x i) (##vector-ref y i) k)))
                                 (and k (f (##fx+ i 1) k))))))))))
            ((##string? x)
             (and (##string? y) (##string-equal? x y) k))
            ((##u8vector? x)
             (and (##u8vector? y) (##u8vector-equal? x y) k))
            ((##s8vector? x)
             (and (##s8vector? y) (##s8vector-equal? x y) k))
            ((##u16vector? x)
             (and (##u16vector? y) (##u16vector-equal? x y) k))
            ((##s16vector? x)
             (and (##s16vector? y) (##s16vector-equal? x y) k))
            ((##u32vector? x)
             (and (##u32vector? y) (##u32vector-equal? x y) k))
            ((##s32vector? x)
             (and (##s32vector? y) (##s32vector-equal? x y) k))
            ((##u64vector? x)
             (and (##u64vector? y) (##u64vector-equal? x y) k))
            ((##s64vector? x)
             (and (##s64vector? y) (##s64vector-equal? x y) k))
            ((##f32vector? x)
             (and (##f32vector? y) (##f32vector-equal? x y) k))
            ((##f64vector? x)
             (and (##f64vector? y) (##f64vector-equal? x y) k))
            ((macro-table? x)
             (and (macro-table? y)
                  (##fx= (macro-table-flags x)
                         (macro-table-flags y))
                  (##eq? (macro-table-test x)
                         (macro-table-test y))
                  (if (macro-table-test x)
                    (##eq? (macro-table-hash x)
                           (macro-table-hash y))
                    #t)
                  (let* ((len1 (##table-length x))
                         (len2 (##table-length y)))
                    (and (##fx= len1 len2)
                         (if (union-find ht x y)
                           0
                           (call/cc
                             (lambda (break)
                               (let ((k (##fx- k 1)))
                                 (##table-for-each
                                  (lambda (key1 val1)
                                    (let ((val2 (##table-ref y key1 (macro-unused-obj))))
                                      (let ((kk (e? val1 val2 k)))
                                        (if kk
                                          (set! k kk)
                                          (break #f)))))
                                  x)
                                 k))))))))
            ((##structure? x)
             (and (##structure? y)
                  (let* ((type-x
                          (##structure-type x))
                         (type-y
                          (##structure-type y))
                         (type-id-x
                          (##type-id x))
                         (type-id-y
                          (##type-id y)))
                    (and (##eq? type-id-x type-id-y)
                         (let ((n (##vector-length x)))
                           (and (##fx= n (##vector-length y))
                                (##fx= (##fxand (##type-flags type-x) 1) 0) ; not opaque
                                (if (union-find ht x y)
                                  0
                                  (let ((fields (struct-field-flags type-x)))
                                    (let f ((i 1) (k (##fx- k 1)) (fields fields))
                                      (if (##fx= i n)
                                        k
                                        (let ((flags (car fields)))
                                          (if (##fx= (##fxand flags 4) 0) ; test equality
                                            (let ((k (e? (##vector-ref x i) (##vector-ref y i) k)))
                                              (and k (f (##fx+ i 1) k (cdr fields))))
                                            (f (##fx+ i 1) k (cdr fields))))))))))))))
            ((##box? x)
             (and (##box? y)
                  (if (union-find ht x y)
                    0
                    (e? (##unbox x) (##unbox y) (##fx- k 1)))))
            (else #f)))))

      (define (fast? x y k)
        (let ((k (##fx- k 1)))
          (if (##eq? x y)
            k
            (macro-numeqv?-compare
             x y k
             (cond
              ((##pair? x)
               (and (##pair? y)
                    (let ((k (e? (##car x) (##car y) k)))
                      (and k (e? (##cdr x) (##cdr y) k)))))
              ((##vector? x)
               (and (##vector? y)
                    (let ((n (##vector-length x)))
                      (and (##fx= (##vector-length y) n)
                           (let f ((i 0) (k k))
                             (if (##fx= i n)
                               k
                               (let ((k (e? (##vector-ref x i) (##vector-ref y i) k)))
                                 (and k (f (##fx+ i 1) k)))))))))
              ((##string? x)
               (and (##string? y) (##string-equal? x y) k))
              ((##u8vector? x)
               (and (##u8vector? y) (##u8vector-equal? x y) k))
              ((##s8vector? x)
               (and (##s8vector? y) (##s8vector-equal? x y) k))
              ((##u16vector? x)
               (and (##u16vector? y) (##u16vector-equal? x y) k))
              ((##s16vector? x)
               (and (##s16vector? y) (##s16vector-equal? x y) k))
              ((##u32vector? x)
               (and (##u32vector? y) (##u32vector-equal? x y) k))
              ((##s32vector? x)
               (and (##s32vector? y) (##s32vector-equal? x y) k))
              ((##u64vector? x)
               (and (##u64vector? y) (##u64vector-equal? x y) k))
              ((##s64vector? x)
               (and (##s64vector? y) (##s64vector-equal? x y) k))
              ((##f32vector? x)
               (and (##f32vector? y) (##f32vector-equal? x y) k))
              ((##f64vector? x)
               (and (##f64vector? y) (##f64vector-equal? x y) k))
              ((macro-table? x)
               (and (macro-table? y)
                  (##fx= (macro-table-flags x)
                         (macro-table-flags y))
                  (##eq? (macro-table-test x)
                         (macro-table-test y))
                  (if (macro-table-test x)
                    (##eq? (macro-table-hash x)
                           (macro-table-hash y))
                    #t)
                  (let* ((len1 (##table-length x))
                         (len2 (##table-length y)))
                    (and (##fx= len1 len2)
                         (call/cc
                           (lambda (break)
                             (let ((k k))
                               (##table-for-each
                                (lambda (key1 val1)
                                  (let ((val2 (##table-ref y key1 (macro-unused-obj))))
                                    (let ((kk (e? val1 val2 k)))
                                      (if kk
                                        (set! k kk)
                                        (break #f)))))
                                x)
                               k)))))))
              ((##structure? x)
               (and (##structure? y)
                    (let* ((type-x
                            (##structure-type x))
                           (type-y
                            (##structure-type y))
                           (type-id-x
                            (##type-id x))
                           (type-id-y
                            (##type-id y)))
                      (and (##eq? type-id-x type-id-y)
                           (let ((n (##vector-length x)))
                             (and (##fx= n (##vector-length y))
                                  (##fx= (##fxand (##type-flags type-x) 1) 0) ; not opaque
                                  (let ((fields (struct-field-flags type-x)))
                                    (let f ((i 1) (k k) (fields fields))
                                      (if (##fx= i n)
                                        k
                                        (let ((flags (car fields)))
                                          (if (##fx= (##fxand flags 4) 0) ; test equality
                                            (let ((k (e? (##vector-ref x i) (##vector-ref y i) k)))
                                              (and k (f (##fx+ i 1) k (cdr fields))))
                                            (f (##fx+ i 1) k (cdr fields)))))))))))))
              ((##box? x)
               (and (##box? y)
                    (e? (##unbox x) (##unbox y) k)))
              (else #f))))))

      (and (e? x y k) #t)))

  (define (precheck? x y k)
    (if (##eq? x y)
      k
      (macro-numeqv?-compare
       x y k
       (cond
        ((##pair? x)
         (and (##pair? y)
              (if (##fx<= k 0)
                k
                (let ((k (precheck? (##car x) (##car y) (##fx- k 1))))
                  (and k (precheck? (##cdr x) (##cdr y) k))))))
        ((##vector? x)
         (and (##vector? y)
              (let ((n (##vector-length x)))
                (and (##fx= (##vector-length y) n)
                     (let f ((i 0) (k k))
                       (if (or (##fx= i n) (##fx<= k 0))
                         k
                         (let ((k (precheck?
                                   (##vector-ref x i)
                                   (##vector-ref y i)
                                   (##fx- k 1))))
                           (and k (f (##fx+ i 1) k)))))))))
        ((##string? x)
         (and (##string? y) (##string-equal? x y) k))
        ((##u8vector? x)
         (and (##u8vector? y) (##u8vector-equal? x y) k))
        ((##s8vector? x)
         (and (##s8vector? y) (##s8vector-equal? x y) k))
        ((##u16vector? x)
         (and (##u16vector? y) (##u16vector-equal? x y) k))
        ((##s16vector? x)
         (and (##s16vector? y) (##s16vector-equal? x y) k))
        ((##u32vector? x)
         (and (##u32vector? y) (##u32vector-equal? x y) k))
        ((##s32vector? x)
         (and (##s32vector? y) (##s32vector-equal? x y) k))
        ((##u64vector? x)
         (and (##u64vector? y) (##u64vector-equal? x y) k))
        ((##s64vector? x)
         (and (##s64vector? y) (##s64vector-equal? x y) k))
        ((##f32vector? x)
         (and (##f32vector? y) (##f32vector-equal? x y) k))
        ((##f64vector? x)
         (and (##f64vector? y) (##f64vector-equal? x y) k))
        ((macro-table? x)
         (and (macro-table? y)
              (##fx= (macro-table-flags x)
                     (macro-table-flags y))
              (##eq? (macro-table-test x)
                     (macro-table-test y))
              (if (macro-table-test x)
                (##eq? (macro-table-hash x)
                       (macro-table-hash y))
                #t)
              (let* ((len1 (##table-length x))
                     (len2 (##table-length y)))
                (and (##fx= len1 len2)
                     (call/cc
                       (lambda (break)
                         (let ((k k))
                           (##table-for-each
                            (lambda (key1 val1)
                              (let ((val2 (##table-ref y key1 (macro-unused-obj))))
                                (let ((kk (precheck? val1 val2 (##fx- k 1))))
                                  (if kk
                                    (set! k kk)
                                    (break #f)))))
                            x)
                           k)))))))
        ((##structure? x)
         (and (##structure? y)
              (let* ((type-x
                      (##structure-type x))
                     (type-y
                      (##structure-type y))
                     (type-id-x
                      (##type-id x))
                     (type-id-y
                      (##type-id y)))
                (and (##eq? type-id-x type-id-y)
                     (let ((n (##vector-length x)))
                       (and (##fx= n (##vector-length y))
                            (##fx= (##fxand (##type-flags type-x) 1) 0) ; not opaque
                            (let ((fields (struct-field-flags type-x)))
                              (let f ((i 1) (k k) (fields fields))
                                (if (or (##fx= i n) (##fx<= k 0))
                                  k
                                  (let ((flags (car fields)))
                                    (if (##fx= (##fxand flags 4) 0) ; test equality
                                      (let ((k (precheck? (##vector-ref x i)
                                                          (##vector-ref y i)
                                                          (##fx- k 1))))
                                        (and k (f (##fx+ i 1) k (cdr fields))))
                                      (f (##fx+ i 1) k (cdr fields)))))))))))))
        ((##box? x)
         (and (##box? y)
              (if (##fx<= k 0)
                k
                (precheck? (##unbox x) (##unbox y) (##fx- k 1)))))
        (else #f)))))

  (let ((k (precheck? x y k0)))
    (and k (or (##fx> k 0) (interleave? x y 0)))))

)
