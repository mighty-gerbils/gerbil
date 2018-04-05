(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g6321_|
    (gx#make-syntax-quote
     'identifier-wrap::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g6322_|
    (gx#make-syntax-quote 'AST::t #f (gx#current-expander-context) '()))
  (define |gx[1]#_g6323_|
    (gx#make-syntax-quote
     'make-identifier-wrap
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g6324_|
    (gx#make-syntax-quote
     'identifier-wrap?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g6325_|
    (gx#make-syntax-quote
     'identifier-wrap-marks
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g6326_|
    (gx#make-syntax-quote
     'identifier-wrap-marks-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g6327_|
    (gx#make-syntax-quote 'AST #f (gx#current-expander-context) '()))
  (define |gx[1]#_g6328_|
    (gx#make-syntax-quote
     'syntax-wrap::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g6329_|
    (gx#make-syntax-quote
     'make-syntax-wrap
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g6330_|
    (gx#make-syntax-quote 'syntax-wrap? #f (gx#current-expander-context) '()))
  (define |gx[1]#_g6331_|
    (gx#make-syntax-quote
     'syntax-wrap-mark
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g6332_|
    (gx#make-syntax-quote
     'syntax-wrap-mark-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g6333_|
    (gx#make-syntax-quote
     'syntax-quote::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g6334_|
    (gx#make-syntax-quote
     'make-syntax-quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g6335_|
    (gx#make-syntax-quote 'syntax-quote? #f (gx#current-expander-context) '()))
  (define |gx[1]#_g6336_|
    (gx#make-syntax-quote
     'syntax-quote-context
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g6337_|
    (gx#make-syntax-quote
     'syntax-quote-marks
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g6338_|
    (gx#make-syntax-quote
     'syntax-quote-context-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g6339_|
    (gx#make-syntax-quote
     'syntax-quote-marks-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gx[:0:]#identifier-wrap|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g6321_|
       'expander-identifiers:
       (cons |gx[1]#_g6322_|
             (cons |gx[1]#_g6321_|
                   (cons |gx[1]#_g6323_|
                         (cons |gx[1]#_g6324_|
                               (cons (cons |gx[1]#_g6325_| '())
                                     (cons (cons |gx[1]#_g6326_| '()) '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#identifier-wrap::t
        |gx[1]#_g6327_|
        'syntax
        '#f
        '((final: . #t))
        '(marks))))
    (define |gx[:0:]#syntax-wrap|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g6328_|
       'expander-identifiers:
       (cons |gx[1]#_g6322_|
             (cons |gx[1]#_g6328_|
                   (cons |gx[1]#_g6329_|
                         (cons |gx[1]#_g6330_|
                               (cons (cons |gx[1]#_g6331_| '())
                                     (cons (cons |gx[1]#_g6332_| '()) '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#syntax-wrap::t
        |gx[1]#_g6327_|
        'syntax
        '#f
        '((final: . #t))
        '(mark))))
    (define |gx[:0:]#syntax-quote|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g6333_|
       'expander-identifiers:
       (cons |gx[1]#_g6322_|
             (cons |gx[1]#_g6333_|
                   (cons |gx[1]#_g6334_|
                         (cons |gx[1]#_g6335_|
                               (cons (cons |gx[1]#_g6336_|
                                           (cons |gx[1]#_g6337_| '()))
                                     (cons (cons |gx[1]#_g6338_|
                                                 (cons |gx[1]#_g6339_| '()))
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#syntax-quote::t
        |gx[1]#_g6327_|
        'syntax
        '#f
        '((final: . #t))
        '(context marks))))))
