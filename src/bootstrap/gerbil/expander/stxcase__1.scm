(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gx[1]#_g12626_| (gx#core-quote-syntax 'syntax-pattern::t))
  (define |gx[1]#_g12627_| (gx#core-quote-syntax 'expander::t))
  (define |gx[1]#_g12628_| (gx#core-quote-syntax 'syntax-pattern::t))
  (define |gx[1]#_g12629_| (gx#core-quote-syntax 'make-syntax-pattern))
  (define |gx[1]#_g12630_| (gx#core-quote-syntax 'syntax-pattern?))
  (define |gx[1]#_g12631_| (gx#core-quote-syntax 'syntax-pattern-id))
  (define |gx[1]#_g12632_| (gx#core-quote-syntax 'syntax-pattern-depth))
  (define |gx[1]#_g12633_| (gx#core-quote-syntax 'syntax-pattern-id-set!))
  (define |gx[1]#_g12634_| (gx#core-quote-syntax 'syntax-pattern-depth-set!))
  (define |gx[1]#_g12635_| (gx#core-quote-syntax 'expander))
  (define |gx[:0:]#syntax-pattern|
    (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
     'runtime-identifier:
     |gx[1]#_g12626_|
     'expander-identifiers:
     (cons |gx[1]#_g12627_|
           (cons |gx[1]#_g12628_|
                 (cons |gx[1]#_g12629_|
                       (cons |gx[1]#_g12630_|
                             (cons (cons |gx[1]#_g12631_|
                                         (cons |gx[1]#_g12632_| '()))
                                   (cons (cons |gx[1]#_g12633_|
                                               (cons |gx[1]#_g12634_| '()))
                                         '()))))))
     'type-exhibitor:
     (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
      'gx#syntax-pattern::t
      |gx[1]#_g12635_|
      'syntax-pattern
      '#f
      '()
      '(id depth)))))
