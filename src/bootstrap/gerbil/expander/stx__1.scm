(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g6321_|
    (##structure
     gx#syntax-quote::t
     'identifier-wrap::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g6322_|
    (##structure
     gx#syntax-quote::t
     'AST::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g6323_|
    (##structure
     gx#syntax-quote::t
     'make-identifier-wrap
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g6324_|
    (##structure
     gx#syntax-quote::t
     'identifier-wrap?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g6325_|
    (##structure
     gx#syntax-quote::t
     'identifier-wrap-marks
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g6326_|
    (##structure
     gx#syntax-quote::t
     'identifier-wrap-marks-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g6327_|
    (##structure gx#syntax-quote::t 'AST #f (gx#current-expander-context) '()))
  (define |gx[1]#_g6328_|
    (##structure
     gx#syntax-quote::t
     'syntax-wrap::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g6329_|
    (##structure
     gx#syntax-quote::t
     'make-syntax-wrap
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g6330_|
    (##structure
     gx#syntax-quote::t
     'syntax-wrap?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g6331_|
    (##structure
     gx#syntax-quote::t
     'syntax-wrap-mark
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g6332_|
    (##structure
     gx#syntax-quote::t
     'syntax-wrap-mark-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g6333_|
    (##structure
     gx#syntax-quote::t
     'syntax-quote::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g6334_|
    (##structure
     gx#syntax-quote::t
     'make-syntax-quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g6335_|
    (##structure
     gx#syntax-quote::t
     'syntax-quote?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g6336_|
    (##structure
     gx#syntax-quote::t
     'syntax-quote-context
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g6337_|
    (##structure
     gx#syntax-quote::t
     'syntax-quote-marks
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g6338_|
    (##structure
     gx#syntax-quote::t
     'syntax-quote-context-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g6339_|
    (##structure
     gx#syntax-quote::t
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
