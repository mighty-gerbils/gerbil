(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gx[1]#_g13434_| (gx#core-quote-syntax 'syntax-pattern::t))
  (define |gx[1]#_g13435_| (gx#core-quote-syntax 'expander::t))
  (define |gx[1]#_g13436_| (gx#core-quote-syntax 'syntax-pattern::t))
  (define |gx[1]#_g13437_| (gx#core-quote-syntax 'make-syntax-pattern))
  (define |gx[1]#_g13438_| (gx#core-quote-syntax 'syntax-pattern?))
  (define |gx[1]#_g13439_| (gx#core-quote-syntax 'syntax-pattern-id))
  (define |gx[1]#_g13440_| (gx#core-quote-syntax 'syntax-pattern-depth))
  (define |gx[1]#_g13441_| (gx#core-quote-syntax 'syntax-pattern-id-set!))
  (define |gx[1]#_g13442_| (gx#core-quote-syntax 'syntax-pattern-depth-set!))
  (define |gx[1]#_g13443_| (gx#core-quote-syntax 'expander))
  (define |gx[:0:]#syntax-pattern|
    (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
     'runtime-identifier:
     |gx[1]#_g13434_|
     'expander-identifiers:
     (cons |gx[1]#_g13435_|
           (cons |gx[1]#_g13436_|
                 (cons |gx[1]#_g13437_|
                       (cons |gx[1]#_g13438_|
                             (cons (cons |gx[1]#_g13439_|
                                         (cons |gx[1]#_g13440_| '()))
                                   (cons (cons |gx[1]#_g13441_|
                                               (cons |gx[1]#_g13442_| '()))
                                         '()))))))
     'type-exhibitor:
     (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
      'gx#syntax-pattern::t
      |gx[1]#_g13443_|
      'syntax-pattern
      '#f
      '()
      '(id depth)))))
