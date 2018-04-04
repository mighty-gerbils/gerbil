(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g6244_|
    (gx#make-syntax-quote
     'identifier-wrap::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g6245_|
    (gx#make-syntax-quote 'AST::t #f (gx#current-expander-context) '()))
  (define |gx[1]#_g6246_|
    (gx#make-syntax-quote
     'make-identifier-wrap
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g6247_|
    (gx#make-syntax-quote
     'identifier-wrap?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g6248_|
    (gx#make-syntax-quote
     'identifier-wrap-marks
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g6249_|
    (gx#make-syntax-quote
     'identifier-wrap-marks-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g6250_|
    (gx#make-syntax-quote 'AST #f (gx#current-expander-context) '()))
  (define |gx[1]#_g6251_|
    (gx#make-syntax-quote
     'syntax-wrap::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g6252_|
    (gx#make-syntax-quote
     'make-syntax-wrap
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g6253_|
    (gx#make-syntax-quote 'syntax-wrap? #f (gx#current-expander-context) '()))
  (define |gx[1]#_g6254_|
    (gx#make-syntax-quote
     'syntax-wrap-mark
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g6255_|
    (gx#make-syntax-quote
     'syntax-wrap-mark-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g6256_|
    (gx#make-syntax-quote
     'syntax-quote::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g6257_|
    (gx#make-syntax-quote
     'make-syntax-quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g6258_|
    (gx#make-syntax-quote 'syntax-quote? #f (gx#current-expander-context) '()))
  (define |gx[1]#_g6259_|
    (gx#make-syntax-quote
     'syntax-quote-context
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g6260_|
    (gx#make-syntax-quote
     'syntax-quote-marks
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g6261_|
    (gx#make-syntax-quote
     'syntax-quote-context-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g6262_|
    (gx#make-syntax-quote
     'syntax-quote-marks-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gx[:0:]#identifier-wrap|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g6244_|
       'expander-identifiers:
       (cons |gx[1]#_g6245_|
             (cons |gx[1]#_g6244_|
                   (cons |gx[1]#_g6246_|
                         (cons |gx[1]#_g6247_|
                               (cons (cons |gx[1]#_g6248_| '())
                                     (cons (cons |gx[1]#_g6249_| '()) '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#identifier-wrap::t
        |gx[1]#_g6250_|
        'syntax
        '#f
        '((final: . #t))
        '(marks))))
    (define |gx[:0:]#syntax-wrap|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g6251_|
       'expander-identifiers:
       (cons |gx[1]#_g6245_|
             (cons |gx[1]#_g6251_|
                   (cons |gx[1]#_g6252_|
                         (cons |gx[1]#_g6253_|
                               (cons (cons |gx[1]#_g6254_| '())
                                     (cons (cons |gx[1]#_g6255_| '()) '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#syntax-wrap::t
        |gx[1]#_g6250_|
        'syntax
        '#f
        '((final: . #t))
        '(mark))))
    (define |gx[:0:]#syntax-quote|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g6256_|
       'expander-identifiers:
       (cons |gx[1]#_g6245_|
             (cons |gx[1]#_g6256_|
                   (cons |gx[1]#_g6257_|
                         (cons |gx[1]#_g6258_|
                               (cons (cons |gx[1]#_g6259_|
                                           (cons |gx[1]#_g6260_| '()))
                                     (cons (cons |gx[1]#_g6261_|
                                                 (cons |gx[1]#_g6262_| '()))
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#syntax-quote::t
        |gx[1]#_g6250_|
        'syntax
        '#f
        '((final: . #t))
        '(context marks))))))
