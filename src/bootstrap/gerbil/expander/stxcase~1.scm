(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g134084_|
    (##structure
     gx#syntax-quote::t
     'expander
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g134086_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g134088_|
    (##structure
     gx#syntax-quote::t
     'make-syntax-pattern
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g134090_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g134092_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-id
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g134093_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-depth
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g134094_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g134096_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-id-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g134097_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-depth-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g134098_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g134100_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-id
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g134101_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-depth
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g134102_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g134104_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-id-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g134105_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-depth-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g134106_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[:0:]#syntax-pattern|
    (let ((__obj133961
           (let ()
             (declare (not safe))
             (##structure
              gerbil/core/mop~MOP-2#class-type-info::t
              '#f
              '#f
              '#f
              '#f
              '#f
              '#f
              '#f
              '#f
              '#f
              '#f
              '#f
              '#f
              '#f
              '#f
              '#f
              '#f
              '#f
              '#f
              '#f
              '#f
              '#f))))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj133961
         'gx#syntax-pattern::t
         '1
         '#f
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj133961 'syntax-pattern '2 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj133961 '(id depth) '4 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj133961 '(e id depth) '6 '#f '#f))
      (let ((__tmp134083 (cons |gx[1]#_g134084_| '())))
        (declare (not safe))
        (##unchecked-structure-set! __obj133961 __tmp134083 '3 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj133961 '#t '7 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj133961 '#f '8 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj133961 '#f '10 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj133961 '#f '11 '#f '#f))
      (let ((__tmp134085 |gx[1]#_g134086_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj133961 __tmp134085 '12 '#f '#f))
      (let ((__tmp134087 |gx[1]#_g134088_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj133961 __tmp134087 '13 '#f '#f))
      (let ((__tmp134089 |gx[1]#_g134090_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj133961 __tmp134089 '14 '#f '#f))
      (let ((__tmp134091
             (cons (cons 'id |gx[1]#_g134092_|)
                   (cons (cons 'depth |gx[1]#_g134093_|)
                         (cons (cons 'e |gx[1]#_g134094_|) '())))))
        (declare (not safe))
        (##unchecked-structure-set! __obj133961 __tmp134091 '15 '#f '#f))
      (let ((__tmp134095
             (cons (cons 'id |gx[1]#_g134096_|)
                   (cons (cons 'depth |gx[1]#_g134097_|)
                         (cons (cons 'e |gx[1]#_g134098_|) '())))))
        (declare (not safe))
        (##unchecked-structure-set! __obj133961 __tmp134095 '16 '#f '#f))
      (let ((__tmp134099
             (cons (cons 'id |gx[1]#_g134100_|)
                   (cons (cons 'depth |gx[1]#_g134101_|)
                         (cons (cons 'e |gx[1]#_g134102_|) '())))))
        (declare (not safe))
        (##unchecked-structure-set! __obj133961 __tmp134099 '17 '#f '#f))
      (let ((__tmp134103
             (cons (cons 'id |gx[1]#_g134104_|)
                   (cons (cons 'depth |gx[1]#_g134105_|)
                         (cons (cons 'e |gx[1]#_g134106_|) '())))))
        (declare (not safe))
        (##unchecked-structure-set! __obj133961 __tmp134103 '18 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj133961 '() '19 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj133961 '() '21 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj133961 '() '20 '#f '#f))
      __obj133961)))
