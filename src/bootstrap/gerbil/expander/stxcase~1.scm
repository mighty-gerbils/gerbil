(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g129011_|
    (##structure
     gx#syntax-quote::t
     'expander
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129013_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129015_|
    (##structure
     gx#syntax-quote::t
     'make-syntax-pattern
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129017_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129019_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-id
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129020_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-depth
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129021_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129023_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-id-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129024_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-depth-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129025_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129027_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-id
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129028_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-depth
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129029_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129031_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-id-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129032_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-depth-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129033_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[:0:]#syntax-pattern|
    (let ((__obj128888
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
         __obj128888
         'gx#syntax-pattern::t
         '1
         '#f
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj128888 'syntax-pattern '2 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj128888 '(id depth) '4 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj128888 '(e id depth) '6 '#f '#f))
      (let ((__tmp129010 (cons |gx[1]#_g129011_| '())))
        (declare (not safe))
        (##unchecked-structure-set! __obj128888 __tmp129010 '3 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj128888 '#t '7 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj128888 '#f '8 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj128888 '#f '10 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj128888 '#f '11 '#f '#f))
      (let ((__tmp129012 |gx[1]#_g129013_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj128888 __tmp129012 '12 '#f '#f))
      (let ((__tmp129014 |gx[1]#_g129015_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj128888 __tmp129014 '13 '#f '#f))
      (let ((__tmp129016 |gx[1]#_g129017_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj128888 __tmp129016 '14 '#f '#f))
      (let ((__tmp129018
             (cons (cons 'id |gx[1]#_g129019_|)
                   (cons (cons 'depth |gx[1]#_g129020_|)
                         (cons (cons 'e |gx[1]#_g129021_|) '())))))
        (declare (not safe))
        (##unchecked-structure-set! __obj128888 __tmp129018 '15 '#f '#f))
      (let ((__tmp129022
             (cons (cons 'id |gx[1]#_g129023_|)
                   (cons (cons 'depth |gx[1]#_g129024_|)
                         (cons (cons 'e |gx[1]#_g129025_|) '())))))
        (declare (not safe))
        (##unchecked-structure-set! __obj128888 __tmp129022 '16 '#f '#f))
      (let ((__tmp129026
             (cons (cons 'id |gx[1]#_g129027_|)
                   (cons (cons 'depth |gx[1]#_g129028_|)
                         (cons (cons 'e |gx[1]#_g129029_|) '())))))
        (declare (not safe))
        (##unchecked-structure-set! __obj128888 __tmp129026 '17 '#f '#f))
      (let ((__tmp129030
             (cons (cons 'id |gx[1]#_g129031_|)
                   (cons (cons 'depth |gx[1]#_g129032_|)
                         (cons (cons 'e |gx[1]#_g129033_|) '())))))
        (declare (not safe))
        (##unchecked-structure-set! __obj128888 __tmp129030 '18 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj128888 '() '19 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj128888 '() '21 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj128888 '() '20 '#f '#f))
      __obj128888)))
