(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g6312_|
    (##structure
     gx#syntax-quote::t
     'identifier-wrap::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g6313_|
    (##structure
     gx#syntax-quote::t
     'AST::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g6314_|
    (##structure
     gx#syntax-quote::t
     'make-identifier-wrap
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g6315_|
    (##structure
     gx#syntax-quote::t
     'identifier-wrap?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g6316_|
    (##structure
     gx#syntax-quote::t
     'identifier-wrap-marks
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g6317_|
    (##structure
     gx#syntax-quote::t
     'identifier-wrap-marks-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g6318_|
    (##structure gx#syntax-quote::t 'AST #f (gx#current-expander-context) '()))
  (define |gx[1]#_g6319_|
    (##structure
     gx#syntax-quote::t
     'syntax-wrap::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g6320_|
    (##structure
     gx#syntax-quote::t
     'make-syntax-wrap
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g6321_|
    (##structure
     gx#syntax-quote::t
     'syntax-wrap?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g6322_|
    (##structure
     gx#syntax-quote::t
     'syntax-wrap-mark
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g6323_|
    (##structure
     gx#syntax-quote::t
     'syntax-wrap-mark-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g6324_|
    (##structure
     gx#syntax-quote::t
     'syntax-quote::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g6325_|
    (##structure
     gx#syntax-quote::t
     'make-syntax-quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g6326_|
    (##structure
     gx#syntax-quote::t
     'syntax-quote?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g6327_|
    (##structure
     gx#syntax-quote::t
     'syntax-quote-context
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g6328_|
    (##structure
     gx#syntax-quote::t
     'syntax-quote-marks
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g6329_|
    (##structure
     gx#syntax-quote::t
     'syntax-quote-context-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g6330_|
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
       |gx[1]#_g6312_|
       'expander-identifiers:
       (cons |gx[1]#_g6313_|
             (cons |gx[1]#_g6312_|
                   (cons |gx[1]#_g6314_|
                         (cons |gx[1]#_g6315_|
                               (cons (cons |gx[1]#_g6316_| '())
                                     (cons (cons |gx[1]#_g6317_| '()) '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#identifier-wrap::t
        |gx[1]#_g6318_|
        'syntax
        '#f
        '((final: . #t))
        '(marks))))
    (define |gx[:0:]#syntax-wrap|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g6319_|
       'expander-identifiers:
       (cons |gx[1]#_g6313_|
             (cons |gx[1]#_g6319_|
                   (cons |gx[1]#_g6320_|
                         (cons |gx[1]#_g6321_|
                               (cons (cons |gx[1]#_g6322_| '())
                                     (cons (cons |gx[1]#_g6323_| '()) '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#syntax-wrap::t
        |gx[1]#_g6318_|
        'syntax
        '#f
        '((final: . #t))
        '(mark))))
    (define |gx[:0:]#syntax-quote|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g6324_|
       'expander-identifiers:
       (cons |gx[1]#_g6313_|
             (cons |gx[1]#_g6324_|
                   (cons |gx[1]#_g6325_|
                         (cons |gx[1]#_g6326_|
                               (cons (cons |gx[1]#_g6327_|
                                           (cons |gx[1]#_g6328_| '()))
                                     (cons (cons |gx[1]#_g6329_|
                                                 (cons |gx[1]#_g6330_| '()))
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#syntax-quote::t
        |gx[1]#_g6318_|
        'syntax
        '#f
        '((final: . #t))
        '(context marks))))))
