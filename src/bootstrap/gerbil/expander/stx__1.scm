(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gx[1]#_g4745_|
    (gx#make-syntax-quote
     'identifier-wrap::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g4746_|
    (gx#make-syntax-quote 'AST::t #f (gx#current-expander-context) '()))
  (define |gx[1]#_g4747_|
    (gx#make-syntax-quote
     'identifier-wrap::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g4748_|
    (gx#make-syntax-quote
     'make-identifier-wrap
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g4749_|
    (gx#make-syntax-quote
     'identifier-wrap?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g4750_|
    (gx#make-syntax-quote
     'identifier-wrap-marks
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g4751_|
    (gx#make-syntax-quote
     'identifier-wrap-marks-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g4752_|
    (gx#make-syntax-quote 'AST #f (gx#current-expander-context) '()))
  (define |gx[1]#_g4753_|
    (gx#make-syntax-quote
     'syntax-wrap::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g4754_|
    (gx#make-syntax-quote 'AST::t #f (gx#current-expander-context) '()))
  (define |gx[1]#_g4755_|
    (gx#make-syntax-quote
     'syntax-wrap::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g4756_|
    (gx#make-syntax-quote
     'make-syntax-wrap
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g4757_|
    (gx#make-syntax-quote 'syntax-wrap? #f (gx#current-expander-context) '()))
  (define |gx[1]#_g4758_|
    (gx#make-syntax-quote
     'syntax-wrap-mark
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g4759_|
    (gx#make-syntax-quote
     'syntax-wrap-mark-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g4760_|
    (gx#make-syntax-quote 'AST #f (gx#current-expander-context) '()))
  (define |gx[1]#_g4761_|
    (gx#make-syntax-quote
     'syntax-quote::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g4762_|
    (gx#make-syntax-quote 'AST::t #f (gx#current-expander-context) '()))
  (define |gx[1]#_g4763_|
    (gx#make-syntax-quote
     'syntax-quote::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g4764_|
    (gx#make-syntax-quote
     'make-syntax-quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g4765_|
    (gx#make-syntax-quote 'syntax-quote? #f (gx#current-expander-context) '()))
  (define |gx[1]#_g4766_|
    (gx#make-syntax-quote
     'syntax-quote-context
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g4767_|
    (gx#make-syntax-quote
     'syntax-quote-marks
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g4768_|
    (gx#make-syntax-quote
     'syntax-quote-context-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g4769_|
    (gx#make-syntax-quote
     'syntax-quote-marks-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g4770_|
    (gx#make-syntax-quote 'AST #f (gx#current-expander-context) '()))
  (begin
    (define |gx[:0:]#identifier-wrap|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g4745_|
       'expander-identifiers:
       (cons |gx[1]#_g4746_|
             (cons |gx[1]#_g4747_|
                   (cons |gx[1]#_g4748_|
                         (cons |gx[1]#_g4749_|
                               (cons (cons |gx[1]#_g4750_| '())
                                     (cons (cons |gx[1]#_g4751_| '()) '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#identifier-wrap::t
        |gx[1]#_g4752_|
        'syntax
        '#f
        '((final: . #t))
        '(marks))))
    (define |gx[:0:]#syntax-wrap|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g4753_|
       'expander-identifiers:
       (cons |gx[1]#_g4754_|
             (cons |gx[1]#_g4755_|
                   (cons |gx[1]#_g4756_|
                         (cons |gx[1]#_g4757_|
                               (cons (cons |gx[1]#_g4758_| '())
                                     (cons (cons |gx[1]#_g4759_| '()) '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#syntax-wrap::t
        |gx[1]#_g4760_|
        'syntax
        '#f
        '((final: . #t))
        '(mark))))
    (define |gx[:0:]#syntax-quote|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g4761_|
       'expander-identifiers:
       (cons |gx[1]#_g4762_|
             (cons |gx[1]#_g4763_|
                   (cons |gx[1]#_g4764_|
                         (cons |gx[1]#_g4765_|
                               (cons (cons |gx[1]#_g4766_|
                                           (cons |gx[1]#_g4767_| '()))
                                     (cons (cons |gx[1]#_g4768_|
                                                 (cons |gx[1]#_g4769_| '()))
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#syntax-quote::t
        |gx[1]#_g4770_|
        'syntax
        '#f
        '((final: . #t))
        '(context marks))))))
