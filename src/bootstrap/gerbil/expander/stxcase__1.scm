(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gx[1]#_g14054_| (gx#core-quote-syntax 'syntax-pattern::t))
  (define |gx[1]#_g14055_| (gx#core-quote-syntax 'expander::t))
  (define |gx[1]#_g14056_| (gx#core-quote-syntax 'syntax-pattern::t))
  (define |gx[1]#_g14057_| (gx#core-quote-syntax 'make-syntax-pattern))
  (define |gx[1]#_g14058_| (gx#core-quote-syntax 'syntax-pattern?))
  (define |gx[1]#_g14059_| (gx#core-quote-syntax 'syntax-pattern-id))
  (define |gx[1]#_g14060_| (gx#core-quote-syntax 'syntax-pattern-depth))
  (define |gx[1]#_g14061_| (gx#core-quote-syntax 'syntax-pattern-id-set!))
  (define |gx[1]#_g14062_| (gx#core-quote-syntax 'syntax-pattern-depth-set!))
  (define |gx[1]#_g14063_| (gx#core-quote-syntax 'expander))
  (define |gx[:0:]#syntax-pattern|
    (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
     'runtime-identifier:
     |gx[1]#_g14054_|
     'expander-identifiers:
     (cons |gx[1]#_g14055_|
           (cons |gx[1]#_g14056_|
                 (cons |gx[1]#_g14057_|
                       (cons |gx[1]#_g14058_|
                             (cons (cons |gx[1]#_g14059_|
                                         (cons |gx[1]#_g14060_| '()))
                                   (cons (cons |gx[1]#_g14061_|
                                               (cons |gx[1]#_g14062_| '()))
                                         '()))))))
     'type-exhibitor:
     (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
      'gx#syntax-pattern::t
      |gx[1]#_g14063_|
      'syntax-pattern
      '#f
      '()
      '(id depth)))))
