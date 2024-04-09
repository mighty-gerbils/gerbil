(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g129048_|
    (##structure
     gx#syntax-quote::t
     'expander
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129050_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129052_|
    (##structure
     gx#syntax-quote::t
     'make-syntax-pattern
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129054_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129056_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-id
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129057_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-depth
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129058_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129060_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-id-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129061_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-depth-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129062_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129064_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-id
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129065_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-depth
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129066_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129068_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-id-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129069_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-depth-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129070_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[:0:]#syntax-pattern|
    (let ((__obj128925
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
         __obj128925
         'gx#syntax-pattern::t
         '1
         '#f
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj128925 'syntax-pattern '2 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj128925 '(id depth) '4 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj128925 '(e id depth) '6 '#f '#f))
      (let ((__tmp129047 (cons |gx[1]#_g129048_| '())))
        (declare (not safe))
        (##unchecked-structure-set! __obj128925 __tmp129047 '3 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj128925 '#t '7 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj128925 '#f '8 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj128925 '#f '10 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj128925 '#f '11 '#f '#f))
      (let ((__tmp129049 |gx[1]#_g129050_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj128925 __tmp129049 '12 '#f '#f))
      (let ((__tmp129051 |gx[1]#_g129052_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj128925 __tmp129051 '13 '#f '#f))
      (let ((__tmp129053 |gx[1]#_g129054_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj128925 __tmp129053 '14 '#f '#f))
      (let ((__tmp129055
             (cons (cons 'id |gx[1]#_g129056_|)
                   (cons (cons 'depth |gx[1]#_g129057_|)
                         (cons (cons 'e |gx[1]#_g129058_|) '())))))
        (declare (not safe))
        (##unchecked-structure-set! __obj128925 __tmp129055 '15 '#f '#f))
      (let ((__tmp129059
             (cons (cons 'id |gx[1]#_g129060_|)
                   (cons (cons 'depth |gx[1]#_g129061_|)
                         (cons (cons 'e |gx[1]#_g129062_|) '())))))
        (declare (not safe))
        (##unchecked-structure-set! __obj128925 __tmp129059 '16 '#f '#f))
      (let ((__tmp129063
             (cons (cons 'id |gx[1]#_g129064_|)
                   (cons (cons 'depth |gx[1]#_g129065_|)
                         (cons (cons 'e |gx[1]#_g129066_|) '())))))
        (declare (not safe))
        (##unchecked-structure-set! __obj128925 __tmp129063 '17 '#f '#f))
      (let ((__tmp129067
             (cons (cons 'id |gx[1]#_g129068_|)
                   (cons (cons 'depth |gx[1]#_g129069_|)
                         (cons (cons 'e |gx[1]#_g129070_|) '())))))
        (declare (not safe))
        (##unchecked-structure-set! __obj128925 __tmp129067 '18 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj128925 '() '19 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj128925 '() '21 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj128925 '() '20 '#f '#f))
      __obj128925)))
