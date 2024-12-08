(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g133049_|
    (##structure
     gx#syntax-quote::t
     'expander
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g133051_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g133053_|
    (##structure
     gx#syntax-quote::t
     'make-syntax-pattern
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g133055_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g133057_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-id
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g133058_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-depth
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g133059_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g133061_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-id-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g133062_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-depth-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g133063_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g133065_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-id
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g133066_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-depth
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g133067_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g133069_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-id-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g133070_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-depth-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g133071_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[:0:]#syntax-pattern|
    (let ((__obj132926
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
         __obj132926
         'gx#syntax-pattern::t
         '1
         '#f
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj132926 'syntax-pattern '2 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj132926 '(id depth) '4 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj132926 '(e id depth) '6 '#f '#f))
      (let ((__tmp133048 (cons |gx[1]#_g133049_| '())))
        (declare (not safe))
        (##unchecked-structure-set! __obj132926 __tmp133048 '3 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj132926 '#t '7 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj132926 '#f '8 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj132926 '#f '10 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj132926 '#f '11 '#f '#f))
      (let ((__tmp133050 |gx[1]#_g133051_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj132926 __tmp133050 '12 '#f '#f))
      (let ((__tmp133052 |gx[1]#_g133053_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj132926 __tmp133052 '13 '#f '#f))
      (let ((__tmp133054 |gx[1]#_g133055_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj132926 __tmp133054 '14 '#f '#f))
      (let ((__tmp133056
             (cons (cons 'id |gx[1]#_g133057_|)
                   (cons (cons 'depth |gx[1]#_g133058_|)
                         (cons (cons 'e |gx[1]#_g133059_|) '())))))
        (declare (not safe))
        (##unchecked-structure-set! __obj132926 __tmp133056 '15 '#f '#f))
      (let ((__tmp133060
             (cons (cons 'id |gx[1]#_g133061_|)
                   (cons (cons 'depth |gx[1]#_g133062_|)
                         (cons (cons 'e |gx[1]#_g133063_|) '())))))
        (declare (not safe))
        (##unchecked-structure-set! __obj132926 __tmp133060 '16 '#f '#f))
      (let ((__tmp133064
             (cons (cons 'id |gx[1]#_g133065_|)
                   (cons (cons 'depth |gx[1]#_g133066_|)
                         (cons (cons 'e |gx[1]#_g133067_|) '())))))
        (declare (not safe))
        (##unchecked-structure-set! __obj132926 __tmp133064 '17 '#f '#f))
      (let ((__tmp133068
             (cons (cons 'id |gx[1]#_g133069_|)
                   (cons (cons 'depth |gx[1]#_g133070_|)
                         (cons (cons 'e |gx[1]#_g133071_|) '())))))
        (declare (not safe))
        (##unchecked-structure-set! __obj132926 __tmp133068 '18 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj132926 '() '19 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj132926 '() '21 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj132926 '() '20 '#f '#f))
      __obj132926)))
