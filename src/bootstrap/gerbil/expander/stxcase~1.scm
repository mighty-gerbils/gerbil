(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g131484_|
    (##structure
     gx#syntax-quote::t
     'expander
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g131486_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g131488_|
    (##structure
     gx#syntax-quote::t
     'make-syntax-pattern
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g131490_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g131492_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-id
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g131493_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-depth
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g131494_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g131496_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-id-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g131497_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-depth-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g131498_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g131500_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-id
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g131501_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-depth
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g131502_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g131504_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-id-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g131505_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-depth-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g131506_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[:0:]#syntax-pattern|
    (let ((__obj131361
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
         __obj131361
         'gx#syntax-pattern::t
         '1
         '#f
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj131361 'syntax-pattern '2 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj131361 '(id depth) '4 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj131361 '(e id depth) '6 '#f '#f))
      (let ((__tmp131483 (cons |gx[1]#_g131484_| '())))
        (declare (not safe))
        (##unchecked-structure-set! __obj131361 __tmp131483 '3 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj131361 '#t '7 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj131361 '#f '8 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj131361 '#f '10 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj131361 '#f '11 '#f '#f))
      (let ((__tmp131485 |gx[1]#_g131486_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj131361 __tmp131485 '12 '#f '#f))
      (let ((__tmp131487 |gx[1]#_g131488_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj131361 __tmp131487 '13 '#f '#f))
      (let ((__tmp131489 |gx[1]#_g131490_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj131361 __tmp131489 '14 '#f '#f))
      (let ((__tmp131491
             (cons (cons 'id |gx[1]#_g131492_|)
                   (cons (cons 'depth |gx[1]#_g131493_|)
                         (cons (cons 'e |gx[1]#_g131494_|) '())))))
        (declare (not safe))
        (##unchecked-structure-set! __obj131361 __tmp131491 '15 '#f '#f))
      (let ((__tmp131495
             (cons (cons 'id |gx[1]#_g131496_|)
                   (cons (cons 'depth |gx[1]#_g131497_|)
                         (cons (cons 'e |gx[1]#_g131498_|) '())))))
        (declare (not safe))
        (##unchecked-structure-set! __obj131361 __tmp131495 '16 '#f '#f))
      (let ((__tmp131499
             (cons (cons 'id |gx[1]#_g131500_|)
                   (cons (cons 'depth |gx[1]#_g131501_|)
                         (cons (cons 'e |gx[1]#_g131502_|) '())))))
        (declare (not safe))
        (##unchecked-structure-set! __obj131361 __tmp131499 '17 '#f '#f))
      (let ((__tmp131503
             (cons (cons 'id |gx[1]#_g131504_|)
                   (cons (cons 'depth |gx[1]#_g131505_|)
                         (cons (cons 'e |gx[1]#_g131506_|) '())))))
        (declare (not safe))
        (##unchecked-structure-set! __obj131361 __tmp131503 '18 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj131361 '() '19 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj131361 '() '21 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj131361 '() '20 '#f '#f))
      __obj131361)))
