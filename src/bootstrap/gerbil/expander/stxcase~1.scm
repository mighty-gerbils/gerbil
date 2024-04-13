(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g132452_|
    (##structure
     gx#syntax-quote::t
     'expander
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g132454_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g132456_|
    (##structure
     gx#syntax-quote::t
     'make-syntax-pattern
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g132458_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g132460_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-id
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g132461_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-depth
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g132462_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g132464_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-id-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g132465_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-depth-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g132466_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g132468_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-id
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g132469_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-depth
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g132470_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g132472_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-id-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g132473_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-depth-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g132474_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[:0:]#syntax-pattern|
    (let ((__obj132329
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
         __obj132329
         'gx#syntax-pattern::t
         '1
         '#f
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj132329 'syntax-pattern '2 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj132329 '(id depth) '4 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj132329 '(e id depth) '6 '#f '#f))
      (let ((__tmp132451 (cons |gx[1]#_g132452_| '())))
        (declare (not safe))
        (##unchecked-structure-set! __obj132329 __tmp132451 '3 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj132329 '#t '7 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj132329 '#f '8 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj132329 '#f '10 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj132329 '#f '11 '#f '#f))
      (let ((__tmp132453 |gx[1]#_g132454_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj132329 __tmp132453 '12 '#f '#f))
      (let ((__tmp132455 |gx[1]#_g132456_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj132329 __tmp132455 '13 '#f '#f))
      (let ((__tmp132457 |gx[1]#_g132458_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj132329 __tmp132457 '14 '#f '#f))
      (let ((__tmp132459
             (cons (cons 'id |gx[1]#_g132460_|)
                   (cons (cons 'depth |gx[1]#_g132461_|)
                         (cons (cons 'e |gx[1]#_g132462_|) '())))))
        (declare (not safe))
        (##unchecked-structure-set! __obj132329 __tmp132459 '15 '#f '#f))
      (let ((__tmp132463
             (cons (cons 'id |gx[1]#_g132464_|)
                   (cons (cons 'depth |gx[1]#_g132465_|)
                         (cons (cons 'e |gx[1]#_g132466_|) '())))))
        (declare (not safe))
        (##unchecked-structure-set! __obj132329 __tmp132463 '16 '#f '#f))
      (let ((__tmp132467
             (cons (cons 'id |gx[1]#_g132468_|)
                   (cons (cons 'depth |gx[1]#_g132469_|)
                         (cons (cons 'e |gx[1]#_g132470_|) '())))))
        (declare (not safe))
        (##unchecked-structure-set! __obj132329 __tmp132467 '17 '#f '#f))
      (let ((__tmp132471
             (cons (cons 'id |gx[1]#_g132472_|)
                   (cons (cons 'depth |gx[1]#_g132473_|)
                         (cons (cons 'e |gx[1]#_g132474_|) '())))))
        (declare (not safe))
        (##unchecked-structure-set! __obj132329 __tmp132471 '18 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj132329 '() '19 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj132329 '() '21 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj132329 '() '20 '#f '#f))
      __obj132329)))
