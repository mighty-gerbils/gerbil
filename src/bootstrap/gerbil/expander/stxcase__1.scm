(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gx[1]#_g14130_| (gx#core-quote-syntax 'syntax-pattern::t))
  (define |gx[1]#_g14131_| (gx#core-quote-syntax 'expander::t))
  (define |gx[1]#_g14132_| (gx#core-quote-syntax 'syntax-pattern::t))
  (define |gx[1]#_g14133_| (gx#core-quote-syntax 'make-syntax-pattern))
  (define |gx[1]#_g14134_| (gx#core-quote-syntax 'syntax-pattern?))
  (define |gx[1]#_g14135_| (gx#core-quote-syntax 'syntax-pattern-id))
  (define |gx[1]#_g14136_| (gx#core-quote-syntax 'syntax-pattern-depth))
  (define |gx[1]#_g14137_| (gx#core-quote-syntax 'syntax-pattern-id-set!))
  (define |gx[1]#_g14138_| (gx#core-quote-syntax 'syntax-pattern-depth-set!))
  (define |gx[1]#_g14139_| (gx#core-quote-syntax 'expander))
  (define |gx[:0:]#syntax-pattern|
    (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
     'runtime-identifier:
     |gx[1]#_g14130_|
     'expander-identifiers:
     (cons |gx[1]#_g14131_|
           (cons |gx[1]#_g14132_|
                 (cons |gx[1]#_g14133_|
                       (cons |gx[1]#_g14134_|
                             (cons (cons |gx[1]#_g14135_|
                                         (cons |gx[1]#_g14136_| '()))
                                   (cons (cons |gx[1]#_g14137_|
                                               (cons |gx[1]#_g14138_| '()))
                                         '()))))))
     'type-exhibitor:
     (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
      'gx#syntax-pattern::t
      |gx[1]#_g14139_|
      'syntax-pattern
      '#f
      '()
      '(id depth)))))
