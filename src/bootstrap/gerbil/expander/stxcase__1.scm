(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gx[1]#_g13755_| (gx#core-quote-syntax 'syntax-pattern::t))
  (define |gx[1]#_g13756_| (gx#core-quote-syntax 'expander::t))
  (define |gx[1]#_g13757_| (gx#core-quote-syntax 'syntax-pattern::t))
  (define |gx[1]#_g13758_| (gx#core-quote-syntax 'make-syntax-pattern))
  (define |gx[1]#_g13759_| (gx#core-quote-syntax 'syntax-pattern?))
  (define |gx[1]#_g13760_| (gx#core-quote-syntax 'syntax-pattern-id))
  (define |gx[1]#_g13761_| (gx#core-quote-syntax 'syntax-pattern-depth))
  (define |gx[1]#_g13762_| (gx#core-quote-syntax 'syntax-pattern-id-set!))
  (define |gx[1]#_g13763_| (gx#core-quote-syntax 'syntax-pattern-depth-set!))
  (define |gx[1]#_g13764_| (gx#core-quote-syntax 'expander))
  (define |gx[:0:]#syntax-pattern|
    (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
     'runtime-identifier:
     |gx[1]#_g13755_|
     'expander-identifiers:
     (cons |gx[1]#_g13756_|
           (cons |gx[1]#_g13757_|
                 (cons |gx[1]#_g13758_|
                       (cons |gx[1]#_g13759_|
                             (cons (cons |gx[1]#_g13760_|
                                         (cons |gx[1]#_g13761_| '()))
                                   (cons (cons |gx[1]#_g13762_|
                                               (cons |gx[1]#_g13763_| '()))
                                         '()))))))
     'type-exhibitor:
     (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
      'gx#syntax-pattern::t
      |gx[1]#_g13764_|
      'syntax-pattern
      '#f
      '()
      '(id depth)))))
