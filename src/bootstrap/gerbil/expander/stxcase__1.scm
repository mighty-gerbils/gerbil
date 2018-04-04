(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g19761_|
    (gx#make-syntax-quote
     'syntax-pattern::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g19762_|
    (gx#make-syntax-quote 'expander::t #f (gx#current-expander-context) '()))
  (define |gx[1]#_g19763_|
    (gx#make-syntax-quote
     'make-syntax-pattern
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g19764_|
    (gx#make-syntax-quote
     'syntax-pattern?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g19765_|
    (gx#make-syntax-quote
     'syntax-pattern-id
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g19766_|
    (gx#make-syntax-quote
     'syntax-pattern-depth
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g19767_|
    (gx#make-syntax-quote
     'syntax-pattern-id-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g19768_|
    (gx#make-syntax-quote
     'syntax-pattern-depth-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g19769_|
    (gx#make-syntax-quote 'expander #f (gx#current-expander-context) '()))
  (define |gx[:0:]#syntax-pattern|
    (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
     'runtime-identifier:
     |gx[1]#_g19761_|
     'expander-identifiers:
     (cons |gx[1]#_g19762_|
           (cons |gx[1]#_g19761_|
                 (cons |gx[1]#_g19763_|
                       (cons |gx[1]#_g19764_|
                             (cons (cons |gx[1]#_g19765_|
                                         (cons |gx[1]#_g19766_| '()))
                                   (cons (cons |gx[1]#_g19767_|
                                               (cons |gx[1]#_g19768_| '()))
                                         '()))))))
     'type-exhibitor:
     (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
      'gx#syntax-pattern::t
      |gx[1]#_g19769_|
      'syntax-pattern
      '#f
      '()
      '(id depth)))))
