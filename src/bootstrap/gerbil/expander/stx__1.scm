(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 100))
(begin
  (define |gx[1]#_g4885_|
    (gx#make-syntax-quote
     'identifier-wrap::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g4886_|
    (gx#make-syntax-quote 'AST::t #f (gx#current-expander-context) '()))
  (define |gx[1]#_g4887_|
    (gx#make-syntax-quote
     'identifier-wrap::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g4888_|
    (gx#make-syntax-quote
     'make-identifier-wrap
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g4889_|
    (gx#make-syntax-quote
     'identifier-wrap?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g4890_|
    (gx#make-syntax-quote
     'identifier-wrap-marks
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g4891_|
    (gx#make-syntax-quote
     'identifier-wrap-marks-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g4892_|
    (gx#make-syntax-quote 'AST #f (gx#current-expander-context) '()))
  (define |gx[1]#_g4893_|
    (gx#make-syntax-quote
     'syntax-wrap::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g4894_|
    (gx#make-syntax-quote 'AST::t #f (gx#current-expander-context) '()))
  (define |gx[1]#_g4895_|
    (gx#make-syntax-quote
     'syntax-wrap::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g4896_|
    (gx#make-syntax-quote
     'make-syntax-wrap
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g4897_|
    (gx#make-syntax-quote 'syntax-wrap? #f (gx#current-expander-context) '()))
  (define |gx[1]#_g4898_|
    (gx#make-syntax-quote
     'syntax-wrap-mark
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g4899_|
    (gx#make-syntax-quote
     'syntax-wrap-mark-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g4900_|
    (gx#make-syntax-quote 'AST #f (gx#current-expander-context) '()))
  (define |gx[1]#_g4901_|
    (gx#make-syntax-quote
     'syntax-quote::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g4902_|
    (gx#make-syntax-quote 'AST::t #f (gx#current-expander-context) '()))
  (define |gx[1]#_g4903_|
    (gx#make-syntax-quote
     'syntax-quote::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g4904_|
    (gx#make-syntax-quote
     'make-syntax-quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g4905_|
    (gx#make-syntax-quote 'syntax-quote? #f (gx#current-expander-context) '()))
  (define |gx[1]#_g4906_|
    (gx#make-syntax-quote
     'syntax-quote-context
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g4907_|
    (gx#make-syntax-quote
     'syntax-quote-marks
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g4908_|
    (gx#make-syntax-quote
     'syntax-quote-context-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g4909_|
    (gx#make-syntax-quote
     'syntax-quote-marks-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g4910_|
    (gx#make-syntax-quote 'AST #f (gx#current-expander-context) '()))
  (begin
    (define |gx[:0:]#identifier-wrap|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g4885_|
       'expander-identifiers:
       (cons |gx[1]#_g4886_|
             (cons |gx[1]#_g4887_|
                   (cons |gx[1]#_g4888_|
                         (cons |gx[1]#_g4889_|
                               (cons (cons |gx[1]#_g4890_| '())
                                     (cons (cons |gx[1]#_g4891_| '()) '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#identifier-wrap::t
        |gx[1]#_g4892_|
        'syntax
        '#f
        '((final: . #t))
        '(marks))))
    (define |gx[:0:]#syntax-wrap|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g4893_|
       'expander-identifiers:
       (cons |gx[1]#_g4894_|
             (cons |gx[1]#_g4895_|
                   (cons |gx[1]#_g4896_|
                         (cons |gx[1]#_g4897_|
                               (cons (cons |gx[1]#_g4898_| '())
                                     (cons (cons |gx[1]#_g4899_| '()) '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#syntax-wrap::t
        |gx[1]#_g4900_|
        'syntax
        '#f
        '((final: . #t))
        '(mark))))
    (define |gx[:0:]#syntax-quote|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g4901_|
       'expander-identifiers:
       (cons |gx[1]#_g4902_|
             (cons |gx[1]#_g4903_|
                   (cons |gx[1]#_g4904_|
                         (cons |gx[1]#_g4905_|
                               (cons (cons |gx[1]#_g4906_|
                                           (cons |gx[1]#_g4907_| '()))
                                     (cons (cons |gx[1]#_g4908_|
                                                 (cons |gx[1]#_g4909_| '()))
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#syntax-quote::t
        |gx[1]#_g4910_|
        'syntax
        '#f
        '((final: . #t))
        '(context marks))))))
