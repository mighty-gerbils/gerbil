(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gx[1]#_g12642_| (gx#core-quote-syntax 'syntax-pattern::t))
  (define |gx[1]#_g12643_| (gx#core-quote-syntax 'expander::t))
  (define |gx[1]#_g12644_| (gx#core-quote-syntax 'syntax-pattern::t))
  (define |gx[1]#_g12645_| (gx#core-quote-syntax 'make-syntax-pattern))
  (define |gx[1]#_g12646_| (gx#core-quote-syntax 'syntax-pattern?))
  (define |gx[1]#_g12647_| (gx#core-quote-syntax 'syntax-pattern-id))
  (define |gx[1]#_g12648_| (gx#core-quote-syntax 'syntax-pattern-depth))
  (define |gx[1]#_g12649_| (gx#core-quote-syntax 'syntax-pattern-id-set!))
  (define |gx[1]#_g12650_| (gx#core-quote-syntax 'syntax-pattern-depth-set!))
  (define |gx[1]#_g12651_| (gx#core-quote-syntax 'expander))
  (begin
    (define |gx[:0:]#syntax-pattern|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g12642_|
       'expander-identifiers:
       (cons |gx[1]#_g12643_|
             (cons |gx[1]#_g12644_|
                   (cons |gx[1]#_g12645_|
                         (cons |gx[1]#_g12646_|
                               (cons (cons |gx[1]#_g12647_|
                                           (cons |gx[1]#_g12648_| '()))
                                     (cons (cons |gx[1]#_g12649_|
                                                 (cons |gx[1]#_g12650_| '()))
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#syntax-pattern::t
        |gx[1]#_g12651_|
        'syntax-pattern
        '#f
        '()
        '(id depth))))))
