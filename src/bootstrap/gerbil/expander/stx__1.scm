(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g6304_|
    (##structure
     gx#syntax-quote::t
     'identifier-wrap::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g6305_|
    (##structure
     gx#syntax-quote::t
     'AST::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g6306_|
    (##structure
     gx#syntax-quote::t
     'make-identifier-wrap
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g6307_|
    (##structure
     gx#syntax-quote::t
     'identifier-wrap?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g6308_|
    (##structure
     gx#syntax-quote::t
     'identifier-wrap-marks
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g6309_|
    (##structure
     gx#syntax-quote::t
     'identifier-wrap-marks-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g6310_|
    (##structure gx#syntax-quote::t 'AST #f (gx#current-expander-context) '()))
  (define |gx[1]#_g6311_|
    (##structure
     gx#syntax-quote::t
     'syntax-wrap::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g6312_|
    (##structure
     gx#syntax-quote::t
     'make-syntax-wrap
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g6313_|
    (##structure
     gx#syntax-quote::t
     'syntax-wrap?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g6314_|
    (##structure
     gx#syntax-quote::t
     'syntax-wrap-mark
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g6315_|
    (##structure
     gx#syntax-quote::t
     'syntax-wrap-mark-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g6316_|
    (##structure
     gx#syntax-quote::t
     'syntax-quote::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g6317_|
    (##structure
     gx#syntax-quote::t
     'make-syntax-quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g6318_|
    (##structure
     gx#syntax-quote::t
     'syntax-quote?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g6319_|
    (##structure
     gx#syntax-quote::t
     'syntax-quote-context
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g6320_|
    (##structure
     gx#syntax-quote::t
     'syntax-quote-marks
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g6321_|
    (##structure
     gx#syntax-quote::t
     'syntax-quote-context-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g6322_|
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
       |gx[1]#_g6304_|
       'expander-identifiers:
       (cons |gx[1]#_g6305_|
             (cons |gx[1]#_g6304_|
                   (cons |gx[1]#_g6306_|
                         (cons |gx[1]#_g6307_|
                               (cons (cons |gx[1]#_g6308_| '())
                                     (cons (cons |gx[1]#_g6309_| '()) '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#identifier-wrap::t
        |gx[1]#_g6310_|
        'syntax
        '#f
        '((final: . #t))
        '(marks))))
    (define |gx[:0:]#syntax-wrap|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g6311_|
       'expander-identifiers:
       (cons |gx[1]#_g6305_|
             (cons |gx[1]#_g6311_|
                   (cons |gx[1]#_g6312_|
                         (cons |gx[1]#_g6313_|
                               (cons (cons |gx[1]#_g6314_| '())
                                     (cons (cons |gx[1]#_g6315_| '()) '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#syntax-wrap::t
        |gx[1]#_g6310_|
        'syntax
        '#f
        '((final: . #t))
        '(mark))))
    (define |gx[:0:]#syntax-quote|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g6316_|
       'expander-identifiers:
       (cons |gx[1]#_g6305_|
             (cons |gx[1]#_g6316_|
                   (cons |gx[1]#_g6317_|
                         (cons |gx[1]#_g6318_|
                               (cons (cons |gx[1]#_g6319_|
                                           (cons |gx[1]#_g6320_| '()))
                                     (cons (cons |gx[1]#_g6321_|
                                                 (cons |gx[1]#_g6322_| '()))
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#syntax-quote::t
        |gx[1]#_g6310_|
        'syntax
        '#f
        '((final: . #t))
        '(context marks))))))
