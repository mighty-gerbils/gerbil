(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gx[1]#_g13781_| (gx#core-quote-syntax 'syntax-pattern::t))
  (define |gx[1]#_g13782_| (gx#core-quote-syntax 'expander::t))
  (define |gx[1]#_g13783_| (gx#core-quote-syntax 'syntax-pattern::t))
  (define |gx[1]#_g13784_| (gx#core-quote-syntax 'make-syntax-pattern))
  (define |gx[1]#_g13785_| (gx#core-quote-syntax 'syntax-pattern?))
  (define |gx[1]#_g13786_| (gx#core-quote-syntax 'syntax-pattern-id))
  (define |gx[1]#_g13787_| (gx#core-quote-syntax 'syntax-pattern-depth))
  (define |gx[1]#_g13788_| (gx#core-quote-syntax 'syntax-pattern-id-set!))
  (define |gx[1]#_g13789_| (gx#core-quote-syntax 'syntax-pattern-depth-set!))
  (define |gx[1]#_g13790_| (gx#core-quote-syntax 'expander))
  (define |gx[:0:]#syntax-pattern|
    (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
     'runtime-identifier:
     |gx[1]#_g13781_|
     'expander-identifiers:
     (cons |gx[1]#_g13782_|
           (cons |gx[1]#_g13783_|
                 (cons |gx[1]#_g13784_|
                       (cons |gx[1]#_g13785_|
                             (cons (cons |gx[1]#_g13786_|
                                         (cons |gx[1]#_g13787_| '()))
                                   (cons (cons |gx[1]#_g13788_|
                                               (cons |gx[1]#_g13789_| '()))
                                         '()))))))
     'type-exhibitor:
     (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
      'gx#syntax-pattern::t
      |gx[1]#_g13790_|
      'syntax-pattern
      '#f
      '()
      '(id depth)))))
