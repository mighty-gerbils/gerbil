(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gx[1]#_g13889_| (gx#core-quote-syntax 'syntax-pattern::t))
  (define |gx[1]#_g13890_| (gx#core-quote-syntax 'expander::t))
  (define |gx[1]#_g13891_| (gx#core-quote-syntax 'syntax-pattern::t))
  (define |gx[1]#_g13892_| (gx#core-quote-syntax 'make-syntax-pattern))
  (define |gx[1]#_g13893_| (gx#core-quote-syntax 'syntax-pattern?))
  (define |gx[1]#_g13894_| (gx#core-quote-syntax 'syntax-pattern-id))
  (define |gx[1]#_g13895_| (gx#core-quote-syntax 'syntax-pattern-depth))
  (define |gx[1]#_g13896_| (gx#core-quote-syntax 'syntax-pattern-id-set!))
  (define |gx[1]#_g13897_| (gx#core-quote-syntax 'syntax-pattern-depth-set!))
  (define |gx[1]#_g13898_| (gx#core-quote-syntax 'expander))
  (define |gx[:0:]#syntax-pattern|
    (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
     'runtime-identifier:
     |gx[1]#_g13889_|
     'expander-identifiers:
     (cons |gx[1]#_g13890_|
           (cons |gx[1]#_g13891_|
                 (cons |gx[1]#_g13892_|
                       (cons |gx[1]#_g13893_|
                             (cons (cons |gx[1]#_g13894_|
                                         (cons |gx[1]#_g13895_| '()))
                                   (cons (cons |gx[1]#_g13896_|
                                               (cons |gx[1]#_g13897_| '()))
                                         '()))))))
     'type-exhibitor:
     (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
      'gx#syntax-pattern::t
      |gx[1]#_g13898_|
      'syntax-pattern
      '#f
      '()
      '(id depth)))))
