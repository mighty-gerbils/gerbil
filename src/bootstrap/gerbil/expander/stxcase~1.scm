(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g129533_|
    (##structure
     gx#syntax-quote::t
     'expander
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129535_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129537_|
    (##structure
     gx#syntax-quote::t
     'make-syntax-pattern
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129539_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129541_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-id
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129542_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-depth
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129543_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129545_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-id-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129546_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-depth-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129547_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129549_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-id
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129550_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-depth
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129551_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129553_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-id-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129554_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-depth-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129555_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[:0:]#syntax-pattern|
    (let ((__obj129410
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
         __obj129410
         'gx#syntax-pattern::t
         '1
         '#f
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj129410 'syntax-pattern '2 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj129410 '(id depth) '4 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj129410 '(e id depth) '6 '#f '#f))
      (let ((__tmp129532 (cons |gx[1]#_g129533_| '())))
        (declare (not safe))
        (##unchecked-structure-set! __obj129410 __tmp129532 '3 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj129410 '#t '7 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj129410 '#f '8 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj129410 '#f '10 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj129410 '#f '11 '#f '#f))
      (let ((__tmp129534 |gx[1]#_g129535_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj129410 __tmp129534 '12 '#f '#f))
      (let ((__tmp129536 |gx[1]#_g129537_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj129410 __tmp129536 '13 '#f '#f))
      (let ((__tmp129538 |gx[1]#_g129539_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj129410 __tmp129538 '14 '#f '#f))
      (let ((__tmp129540
             (cons (cons 'id |gx[1]#_g129541_|)
                   (cons (cons 'depth |gx[1]#_g129542_|)
                         (cons (cons 'e |gx[1]#_g129543_|) '())))))
        (declare (not safe))
        (##unchecked-structure-set! __obj129410 __tmp129540 '15 '#f '#f))
      (let ((__tmp129544
             (cons (cons 'id |gx[1]#_g129545_|)
                   (cons (cons 'depth |gx[1]#_g129546_|)
                         (cons (cons 'e |gx[1]#_g129547_|) '())))))
        (declare (not safe))
        (##unchecked-structure-set! __obj129410 __tmp129544 '16 '#f '#f))
      (let ((__tmp129548
             (cons (cons 'id |gx[1]#_g129549_|)
                   (cons (cons 'depth |gx[1]#_g129550_|)
                         (cons (cons 'e |gx[1]#_g129551_|) '())))))
        (declare (not safe))
        (##unchecked-structure-set! __obj129410 __tmp129548 '17 '#f '#f))
      (let ((__tmp129552
             (cons (cons 'id |gx[1]#_g129553_|)
                   (cons (cons 'depth |gx[1]#_g129554_|)
                         (cons (cons 'e |gx[1]#_g129555_|) '())))))
        (declare (not safe))
        (##unchecked-structure-set! __obj129410 __tmp129552 '18 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj129410 '() '19 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj129410 '() '21 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj129410 '() '20 '#f '#f))
      __obj129410)))
