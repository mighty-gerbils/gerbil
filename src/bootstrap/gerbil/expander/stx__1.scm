(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gx[1]#_g3436_| (gx#core-quote-syntax 'identifier-wrap::t))
  (define |gx[1]#_g3437_| (gx#core-quote-syntax 'AST::t))
  (define |gx[1]#_g3438_| (gx#core-quote-syntax 'identifier-wrap::t))
  (define |gx[1]#_g3439_| (gx#core-quote-syntax 'make-identifier-wrap))
  (define |gx[1]#_g3440_| (gx#core-quote-syntax 'identifier-wrap?))
  (define |gx[1]#_g3441_| (gx#core-quote-syntax 'identifier-wrap-marks))
  (define |gx[1]#_g3442_| (gx#core-quote-syntax 'identifier-wrap-marks-set!))
  (define |gx[1]#_g3443_| (gx#core-quote-syntax 'AST))
  (define |gx[1]#_g3444_| (gx#core-quote-syntax 'syntax-wrap::t))
  (define |gx[1]#_g3445_| (gx#core-quote-syntax 'AST::t))
  (define |gx[1]#_g3446_| (gx#core-quote-syntax 'syntax-wrap::t))
  (define |gx[1]#_g3447_| (gx#core-quote-syntax 'make-syntax-wrap))
  (define |gx[1]#_g3448_| (gx#core-quote-syntax 'syntax-wrap?))
  (define |gx[1]#_g3449_| (gx#core-quote-syntax 'syntax-wrap-mark))
  (define |gx[1]#_g3450_| (gx#core-quote-syntax 'syntax-wrap-mark-set!))
  (define |gx[1]#_g3451_| (gx#core-quote-syntax 'AST))
  (define |gx[1]#_g3452_| (gx#core-quote-syntax 'syntax-quote::t))
  (define |gx[1]#_g3453_| (gx#core-quote-syntax 'AST::t))
  (define |gx[1]#_g3454_| (gx#core-quote-syntax 'syntax-quote::t))
  (define |gx[1]#_g3455_| (gx#core-quote-syntax 'make-syntax-quote))
  (define |gx[1]#_g3456_| (gx#core-quote-syntax 'syntax-quote?))
  (define |gx[1]#_g3457_| (gx#core-quote-syntax 'syntax-quote-context))
  (define |gx[1]#_g3458_| (gx#core-quote-syntax 'syntax-quote-marks))
  (define |gx[1]#_g3459_| (gx#core-quote-syntax 'syntax-quote-context-set!))
  (define |gx[1]#_g3460_| (gx#core-quote-syntax 'syntax-quote-marks-set!))
  (define |gx[1]#_g3461_| (gx#core-quote-syntax 'AST))
  (begin
    (define |gx[:0:]#identifier-wrap|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g3436_|
       'expander-identifiers:
       (cons |gx[1]#_g3437_|
             (cons |gx[1]#_g3438_|
                   (cons |gx[1]#_g3439_|
                         (cons |gx[1]#_g3440_|
                               (cons (cons |gx[1]#_g3441_| '())
                                     (cons (cons |gx[1]#_g3442_| '()) '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#identifier-wrap::t
        |gx[1]#_g3443_|
        'syntax
        '#f
        '((final: . #t))
        '(marks))))
    (define |gx[:0:]#syntax-wrap|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g3444_|
       'expander-identifiers:
       (cons |gx[1]#_g3445_|
             (cons |gx[1]#_g3446_|
                   (cons |gx[1]#_g3447_|
                         (cons |gx[1]#_g3448_|
                               (cons (cons |gx[1]#_g3449_| '())
                                     (cons (cons |gx[1]#_g3450_| '()) '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#syntax-wrap::t
        |gx[1]#_g3451_|
        'syntax
        '#f
        '((final: . #t))
        '(mark))))
    (define |gx[:0:]#syntax-quote|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g3452_|
       'expander-identifiers:
       (cons |gx[1]#_g3453_|
             (cons |gx[1]#_g3454_|
                   (cons |gx[1]#_g3455_|
                         (cons |gx[1]#_g3456_|
                               (cons (cons |gx[1]#_g3457_|
                                           (cons |gx[1]#_g3458_| '()))
                                     (cons (cons |gx[1]#_g3459_|
                                                 (cons |gx[1]#_g3460_| '()))
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#syntax-quote::t
        |gx[1]#_g3461_|
        'syntax
        '#f
        '((final: . #t))
        '(context marks))))))
