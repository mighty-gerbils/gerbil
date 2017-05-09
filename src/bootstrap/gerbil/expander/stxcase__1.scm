(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gx[1]#_g12553_| (gx#core-quote-syntax 'syntax-pattern::t))
  (define |gx[1]#_g12554_| (gx#core-quote-syntax 'expander::t))
  (define |gx[1]#_g12555_| (gx#core-quote-syntax 'syntax-pattern::t))
  (define |gx[1]#_g12556_| (gx#core-quote-syntax 'make-syntax-pattern))
  (define |gx[1]#_g12557_| (gx#core-quote-syntax 'syntax-pattern?))
  (define |gx[1]#_g12558_| (gx#core-quote-syntax 'syntax-pattern-id))
  (define |gx[1]#_g12559_| (gx#core-quote-syntax 'syntax-pattern-depth))
  (define |gx[1]#_g12560_| (gx#core-quote-syntax 'syntax-pattern-id-set!))
  (define |gx[1]#_g12561_| (gx#core-quote-syntax 'syntax-pattern-depth-set!))
  (define |gx[1]#_g12562_| (gx#core-quote-syntax 'expander))
  (define |gx[:0:]#syntax-pattern|
    (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
     'runtime-identifier:
     |gx[1]#_g12553_|
     'expander-identifiers:
     (cons |gx[1]#_g12554_|
           (cons |gx[1]#_g12555_|
                 (cons |gx[1]#_g12556_|
                       (cons |gx[1]#_g12557_|
                             (cons (cons |gx[1]#_g12558_|
                                         (cons |gx[1]#_g12559_| '()))
                                   (cons (cons |gx[1]#_g12560_|
                                               (cons |gx[1]#_g12561_| '()))
                                         '()))))))
     'type-exhibitor:
     (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
      'gx#syntax-pattern::t
      |gx[1]#_g12562_|
      'syntax-pattern
      '#f
      '()
      '(id depth)))))
