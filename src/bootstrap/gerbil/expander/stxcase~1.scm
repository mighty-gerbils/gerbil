(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g131425_|
    (##structure
     gx#syntax-quote::t
     'expander
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g131427_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g131429_|
    (##structure
     gx#syntax-quote::t
     'make-syntax-pattern
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g131431_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g131433_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-id
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g131434_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-depth
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g131435_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g131437_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-id-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g131438_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-depth-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g131439_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g131441_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-id
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g131442_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-depth
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g131443_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g131445_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-id-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g131446_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-depth-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g131447_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[:0:]#syntax-pattern|
    (let ((__obj131302
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
         __obj131302
         'gx#syntax-pattern::t
         '1
         '#f
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj131302 'syntax-pattern '2 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj131302 '(id depth) '4 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj131302 '(e id depth) '6 '#f '#f))
      (let ((__tmp131424 (cons |gx[1]#_g131425_| '())))
        (declare (not safe))
        (##unchecked-structure-set! __obj131302 __tmp131424 '3 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj131302 '#t '7 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj131302 '#f '8 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj131302 '#f '10 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj131302 '#f '11 '#f '#f))
      (let ((__tmp131426 |gx[1]#_g131427_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj131302 __tmp131426 '12 '#f '#f))
      (let ((__tmp131428 |gx[1]#_g131429_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj131302 __tmp131428 '13 '#f '#f))
      (let ((__tmp131430 |gx[1]#_g131431_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj131302 __tmp131430 '14 '#f '#f))
      (let ((__tmp131432
             (cons (cons 'id |gx[1]#_g131433_|)
                   (cons (cons 'depth |gx[1]#_g131434_|)
                         (cons (cons 'e |gx[1]#_g131435_|) '())))))
        (declare (not safe))
        (##unchecked-structure-set! __obj131302 __tmp131432 '15 '#f '#f))
      (let ((__tmp131436
             (cons (cons 'id |gx[1]#_g131437_|)
                   (cons (cons 'depth |gx[1]#_g131438_|)
                         (cons (cons 'e |gx[1]#_g131439_|) '())))))
        (declare (not safe))
        (##unchecked-structure-set! __obj131302 __tmp131436 '16 '#f '#f))
      (let ((__tmp131440
             (cons (cons 'id |gx[1]#_g131441_|)
                   (cons (cons 'depth |gx[1]#_g131442_|)
                         (cons (cons 'e |gx[1]#_g131443_|) '())))))
        (declare (not safe))
        (##unchecked-structure-set! __obj131302 __tmp131440 '17 '#f '#f))
      (let ((__tmp131444
             (cons (cons 'id |gx[1]#_g131445_|)
                   (cons (cons 'depth |gx[1]#_g131446_|)
                         (cons (cons 'e |gx[1]#_g131447_|) '())))))
        (declare (not safe))
        (##unchecked-structure-set! __obj131302 __tmp131444 '18 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj131302 '() '19 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj131302 '() '21 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj131302 '() '20 '#f '#f))
      __obj131302)))
