(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gx[1]#_g4721_|
    (gx#make-syntax-quote
     'identifier-wrap::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g4722_|
    (gx#make-syntax-quote 'AST::t #f (gx#current-expander-context) '()))
  (define |gx[1]#_g4723_|
    (gx#make-syntax-quote
     'identifier-wrap::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g4724_|
    (gx#make-syntax-quote
     'make-identifier-wrap
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g4725_|
    (gx#make-syntax-quote
     'identifier-wrap?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g4726_|
    (gx#make-syntax-quote
     'identifier-wrap-marks
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g4727_|
    (gx#make-syntax-quote
     'identifier-wrap-marks-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g4728_|
    (gx#make-syntax-quote 'AST #f (gx#current-expander-context) '()))
  (define |gx[1]#_g4729_|
    (gx#make-syntax-quote
     'syntax-wrap::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g4730_|
    (gx#make-syntax-quote 'AST::t #f (gx#current-expander-context) '()))
  (define |gx[1]#_g4731_|
    (gx#make-syntax-quote
     'syntax-wrap::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g4732_|
    (gx#make-syntax-quote
     'make-syntax-wrap
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g4733_|
    (gx#make-syntax-quote 'syntax-wrap? #f (gx#current-expander-context) '()))
  (define |gx[1]#_g4734_|
    (gx#make-syntax-quote
     'syntax-wrap-mark
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g4735_|
    (gx#make-syntax-quote
     'syntax-wrap-mark-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g4736_|
    (gx#make-syntax-quote 'AST #f (gx#current-expander-context) '()))
  (define |gx[1]#_g4737_|
    (gx#make-syntax-quote
     'syntax-quote::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g4738_|
    (gx#make-syntax-quote 'AST::t #f (gx#current-expander-context) '()))
  (define |gx[1]#_g4739_|
    (gx#make-syntax-quote
     'syntax-quote::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g4740_|
    (gx#make-syntax-quote
     'make-syntax-quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g4741_|
    (gx#make-syntax-quote 'syntax-quote? #f (gx#current-expander-context) '()))
  (define |gx[1]#_g4742_|
    (gx#make-syntax-quote
     'syntax-quote-context
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g4743_|
    (gx#make-syntax-quote
     'syntax-quote-marks
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g4744_|
    (gx#make-syntax-quote
     'syntax-quote-context-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g4745_|
    (gx#make-syntax-quote
     'syntax-quote-marks-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g4746_|
    (gx#make-syntax-quote 'AST #f (gx#current-expander-context) '()))
  (begin
    (define |gx[:0:]#identifier-wrap|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g4721_|
       'expander-identifiers:
       (cons |gx[1]#_g4722_|
             (cons |gx[1]#_g4723_|
                   (cons |gx[1]#_g4724_|
                         (cons |gx[1]#_g4725_|
                               (cons (cons |gx[1]#_g4726_| '())
                                     (cons (cons |gx[1]#_g4727_| '()) '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#identifier-wrap::t
        |gx[1]#_g4728_|
        'syntax
        '#f
        '((final: . #t))
        '(marks))))
    (define |gx[:0:]#syntax-wrap|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g4729_|
       'expander-identifiers:
       (cons |gx[1]#_g4730_|
             (cons |gx[1]#_g4731_|
                   (cons |gx[1]#_g4732_|
                         (cons |gx[1]#_g4733_|
                               (cons (cons |gx[1]#_g4734_| '())
                                     (cons (cons |gx[1]#_g4735_| '()) '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#syntax-wrap::t
        |gx[1]#_g4736_|
        'syntax
        '#f
        '((final: . #t))
        '(mark))))
    (define |gx[:0:]#syntax-quote|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g4737_|
       'expander-identifiers:
       (cons |gx[1]#_g4738_|
             (cons |gx[1]#_g4739_|
                   (cons |gx[1]#_g4740_|
                         (cons |gx[1]#_g4741_|
                               (cons (cons |gx[1]#_g4742_|
                                           (cons |gx[1]#_g4743_| '()))
                                     (cons (cons |gx[1]#_g4744_|
                                                 (cons |gx[1]#_g4745_| '()))
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#syntax-quote::t
        |gx[1]#_g4746_|
        'syntax
        '#f
        '((final: . #t))
        '(context marks))))))
