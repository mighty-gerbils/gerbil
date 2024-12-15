(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g134078_|
    (##structure
     gx#syntax-quote::t
     'expander
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g134080_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g134082_|
    (##structure
     gx#syntax-quote::t
     'make-syntax-pattern
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g134084_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g134086_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-id
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g134087_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-depth
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g134088_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g134090_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-id-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g134091_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-depth-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g134092_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g134094_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-id
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g134095_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-depth
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g134096_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g134098_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-id-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g134099_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-depth-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g134100_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[:0:]#syntax-pattern|
    (let ((__obj133955
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
         __obj133955
         'gx#syntax-pattern::t
         '1
         '#f
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj133955 'syntax-pattern '2 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj133955 '(id depth) '4 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj133955 '(e id depth) '6 '#f '#f))
      (let ((__tmp134077 (cons |gx[1]#_g134078_| '())))
        (declare (not safe))
        (##unchecked-structure-set! __obj133955 __tmp134077 '3 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj133955 '#t '7 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj133955 '#f '8 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj133955 '#f '10 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj133955 '#f '11 '#f '#f))
      (let ((__tmp134079 |gx[1]#_g134080_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj133955 __tmp134079 '12 '#f '#f))
      (let ((__tmp134081 |gx[1]#_g134082_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj133955 __tmp134081 '13 '#f '#f))
      (let ((__tmp134083 |gx[1]#_g134084_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj133955 __tmp134083 '14 '#f '#f))
      (let ((__tmp134085
             (cons (cons 'id |gx[1]#_g134086_|)
                   (cons (cons 'depth |gx[1]#_g134087_|)
                         (cons (cons 'e |gx[1]#_g134088_|) '())))))
        (declare (not safe))
        (##unchecked-structure-set! __obj133955 __tmp134085 '15 '#f '#f))
      (let ((__tmp134089
             (cons (cons 'id |gx[1]#_g134090_|)
                   (cons (cons 'depth |gx[1]#_g134091_|)
                         (cons (cons 'e |gx[1]#_g134092_|) '())))))
        (declare (not safe))
        (##unchecked-structure-set! __obj133955 __tmp134089 '16 '#f '#f))
      (let ((__tmp134093
             (cons (cons 'id |gx[1]#_g134094_|)
                   (cons (cons 'depth |gx[1]#_g134095_|)
                         (cons (cons 'e |gx[1]#_g134096_|) '())))))
        (declare (not safe))
        (##unchecked-structure-set! __obj133955 __tmp134093 '17 '#f '#f))
      (let ((__tmp134097
             (cons (cons 'id |gx[1]#_g134098_|)
                   (cons (cons 'depth |gx[1]#_g134099_|)
                         (cons (cons 'e |gx[1]#_g134100_|) '())))))
        (declare (not safe))
        (##unchecked-structure-set! __obj133955 __tmp134097 '18 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj133955 '() '19 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj133955 '() '21 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj133955 '() '20 '#f '#f))
      __obj133955)))
