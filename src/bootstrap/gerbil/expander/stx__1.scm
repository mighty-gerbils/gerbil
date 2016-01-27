(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gx[1]#_g12666_| (gx#core-quote-syntax 'identifier-wrap::t))
  (define |gx[1]#_g12667_| (gx#core-quote-syntax 'AST::t))
  (define |gx[1]#_g12668_| (gx#core-quote-syntax 'identifier-wrap::t))
  (define |gx[1]#_g12669_| (gx#core-quote-syntax 'make-identifier-wrap))
  (define |gx[1]#_g12670_| (gx#core-quote-syntax 'identifier-wrap?))
  (define |gx[1]#_g12671_| (gx#core-quote-syntax 'identifier-wrap-marks))
  (define |gx[1]#_g12672_| (gx#core-quote-syntax 'identifier-wrap-marks-set!))
  (define |gx[1]#_g12673_| (gx#core-quote-syntax 'AST))
  (define |gx[1]#_g12674_| (gx#core-quote-syntax 'syntax-wrap::t))
  (define |gx[1]#_g12675_| (gx#core-quote-syntax 'AST::t))
  (define |gx[1]#_g12676_| (gx#core-quote-syntax 'syntax-wrap::t))
  (define |gx[1]#_g12677_| (gx#core-quote-syntax 'make-syntax-wrap))
  (define |gx[1]#_g12678_| (gx#core-quote-syntax 'syntax-wrap?))
  (define |gx[1]#_g12679_| (gx#core-quote-syntax 'syntax-wrap-mark))
  (define |gx[1]#_g12680_| (gx#core-quote-syntax 'syntax-wrap-mark-set!))
  (define |gx[1]#_g12681_| (gx#core-quote-syntax 'AST))
  (define |gx[1]#_g12682_| (gx#core-quote-syntax 'syntax-quote::t))
  (define |gx[1]#_g12683_| (gx#core-quote-syntax 'AST::t))
  (define |gx[1]#_g12684_| (gx#core-quote-syntax 'syntax-quote::t))
  (define |gx[1]#_g12685_| (gx#core-quote-syntax 'make-syntax-quote))
  (define |gx[1]#_g12686_| (gx#core-quote-syntax 'syntax-quote?))
  (define |gx[1]#_g12687_| (gx#core-quote-syntax 'syntax-quote-context))
  (define |gx[1]#_g12688_| (gx#core-quote-syntax 'syntax-quote-marks))
  (define |gx[1]#_g12689_| (gx#core-quote-syntax 'syntax-quote-context-set!))
  (define |gx[1]#_g12690_| (gx#core-quote-syntax 'syntax-quote-marks-set!))
  (define |gx[1]#_g12691_| (gx#core-quote-syntax 'AST))
  (begin
    (define |gx[:0:]#identifier-wrap|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g12666_|
       'expander-identifiers:
       (cons |gx[1]#_g12667_|
             (cons |gx[1]#_g12668_|
                   (cons |gx[1]#_g12669_|
                         (cons |gx[1]#_g12670_|
                               (cons (cons |gx[1]#_g12671_| '())
                                     (cons (cons |gx[1]#_g12672_| '())
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#identifier-wrap::t
        |gx[1]#_g12673_|
        'syntax
        '#f
        '((final: . #t))
        '(marks))))
    (define |gx[:0:]#syntax-wrap|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g12674_|
       'expander-identifiers:
       (cons |gx[1]#_g12675_|
             (cons |gx[1]#_g12676_|
                   (cons |gx[1]#_g12677_|
                         (cons |gx[1]#_g12678_|
                               (cons (cons |gx[1]#_g12679_| '())
                                     (cons (cons |gx[1]#_g12680_| '())
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#syntax-wrap::t
        |gx[1]#_g12681_|
        'syntax
        '#f
        '((final: . #t))
        '(mark))))
    (define |gx[:0:]#syntax-quote|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g12682_|
       'expander-identifiers:
       (cons |gx[1]#_g12683_|
             (cons |gx[1]#_g12684_|
                   (cons |gx[1]#_g12685_|
                         (cons |gx[1]#_g12686_|
                               (cons (cons |gx[1]#_g12687_|
                                           (cons |gx[1]#_g12688_| '()))
                                     (cons (cons |gx[1]#_g12689_|
                                                 (cons |gx[1]#_g12690_| '()))
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#syntax-quote::t
        |gx[1]#_g12691_|
        'syntax
        '#f
        '((final: . #t))
        '(context marks))))))
