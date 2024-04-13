(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g131536_|
    (##structure
     gx#syntax-quote::t
     'expander
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g131538_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g131540_|
    (##structure
     gx#syntax-quote::t
     'make-syntax-pattern
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g131542_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g131544_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-id
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g131545_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-depth
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g131546_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g131548_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-id-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g131549_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-depth-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g131550_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g131552_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-id
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g131553_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-depth
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g131554_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g131556_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-id-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g131557_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-depth-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g131558_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[:0:]#syntax-pattern|
    (let ((__obj131413
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
         __obj131413
         'gx#syntax-pattern::t
         '1
         '#f
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj131413 'syntax-pattern '2 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj131413 '(id depth) '4 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj131413 '(e id depth) '6 '#f '#f))
      (let ((__tmp131535 (cons |gx[1]#_g131536_| '())))
        (declare (not safe))
        (##unchecked-structure-set! __obj131413 __tmp131535 '3 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj131413 '#t '7 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj131413 '#f '8 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj131413 '#f '10 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj131413 '#f '11 '#f '#f))
      (let ((__tmp131537 |gx[1]#_g131538_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj131413 __tmp131537 '12 '#f '#f))
      (let ((__tmp131539 |gx[1]#_g131540_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj131413 __tmp131539 '13 '#f '#f))
      (let ((__tmp131541 |gx[1]#_g131542_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj131413 __tmp131541 '14 '#f '#f))
      (let ((__tmp131543
             (cons (cons 'id |gx[1]#_g131544_|)
                   (cons (cons 'depth |gx[1]#_g131545_|)
                         (cons (cons 'e |gx[1]#_g131546_|) '())))))
        (declare (not safe))
        (##unchecked-structure-set! __obj131413 __tmp131543 '15 '#f '#f))
      (let ((__tmp131547
             (cons (cons 'id |gx[1]#_g131548_|)
                   (cons (cons 'depth |gx[1]#_g131549_|)
                         (cons (cons 'e |gx[1]#_g131550_|) '())))))
        (declare (not safe))
        (##unchecked-structure-set! __obj131413 __tmp131547 '16 '#f '#f))
      (let ((__tmp131551
             (cons (cons 'id |gx[1]#_g131552_|)
                   (cons (cons 'depth |gx[1]#_g131553_|)
                         (cons (cons 'e |gx[1]#_g131554_|) '())))))
        (declare (not safe))
        (##unchecked-structure-set! __obj131413 __tmp131551 '17 '#f '#f))
      (let ((__tmp131555
             (cons (cons 'id |gx[1]#_g131556_|)
                   (cons (cons 'depth |gx[1]#_g131557_|)
                         (cons (cons 'e |gx[1]#_g131558_|) '())))))
        (declare (not safe))
        (##unchecked-structure-set! __obj131413 __tmp131555 '18 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj131413 '() '19 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj131413 '() '21 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj131413 '() '20 '#f '#f))
      __obj131413)))
