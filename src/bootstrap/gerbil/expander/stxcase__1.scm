(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gx[1]#_g15049_|
    (gx#make-syntax-quote
     'syntax-pattern::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g15050_|
    (gx#make-syntax-quote 'expander::t #f (gx#current-expander-context) '()))
  (define |gx[1]#_g15051_|
    (gx#make-syntax-quote
     'syntax-pattern::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g15052_|
    (gx#make-syntax-quote
     'make-syntax-pattern
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g15053_|
    (gx#make-syntax-quote
     'syntax-pattern?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g15054_|
    (gx#make-syntax-quote
     'syntax-pattern-id
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g15055_|
    (gx#make-syntax-quote
     'syntax-pattern-depth
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g15056_|
    (gx#make-syntax-quote
     'syntax-pattern-id-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g15057_|
    (gx#make-syntax-quote
     'syntax-pattern-depth-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g15058_|
    (gx#make-syntax-quote 'expander #f (gx#current-expander-context) '()))
  (define |gx[:0:]#syntax-pattern|
    (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
     'runtime-identifier:
     |gx[1]#_g15049_|
     'expander-identifiers:
     (cons |gx[1]#_g15050_|
           (cons |gx[1]#_g15051_|
                 (cons |gx[1]#_g15052_|
                       (cons |gx[1]#_g15053_|
                             (cons (cons |gx[1]#_g15054_|
                                         (cons |gx[1]#_g15055_| '()))
                                   (cons (cons |gx[1]#_g15056_|
                                               (cons |gx[1]#_g15057_| '()))
                                         '()))))))
     'type-exhibitor:
     (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
      'gx#syntax-pattern::t
      |gx[1]#_g15058_|
      'syntax-pattern
      '#f
      '()
      '(id depth)))))
