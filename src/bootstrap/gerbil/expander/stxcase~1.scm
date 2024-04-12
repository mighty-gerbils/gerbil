(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g131138_|
    (##structure
     gx#syntax-quote::t
     'expander
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g131140_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g131142_|
    (##structure
     gx#syntax-quote::t
     'make-syntax-pattern
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g131144_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g131146_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-id
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g131147_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-depth
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g131148_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g131150_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-id-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g131151_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-depth-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g131152_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g131154_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-id
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g131155_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-depth
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g131156_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g131158_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-id-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g131159_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-depth-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g131160_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[:0:]#syntax-pattern|
    (let ((__obj131015
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
         __obj131015
         'gx#syntax-pattern::t
         '1
         '#f
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj131015 'syntax-pattern '2 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj131015 '(id depth) '4 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj131015 '(e id depth) '6 '#f '#f))
      (let ((__tmp131137 (cons |gx[1]#_g131138_| '())))
        (declare (not safe))
        (##unchecked-structure-set! __obj131015 __tmp131137 '3 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj131015 '#t '7 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj131015 '#f '8 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj131015 '#f '10 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj131015 '#f '11 '#f '#f))
      (let ((__tmp131139 |gx[1]#_g131140_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj131015 __tmp131139 '12 '#f '#f))
      (let ((__tmp131141 |gx[1]#_g131142_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj131015 __tmp131141 '13 '#f '#f))
      (let ((__tmp131143 |gx[1]#_g131144_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj131015 __tmp131143 '14 '#f '#f))
      (let ((__tmp131145
             (cons (cons 'id |gx[1]#_g131146_|)
                   (cons (cons 'depth |gx[1]#_g131147_|)
                         (cons (cons 'e |gx[1]#_g131148_|) '())))))
        (declare (not safe))
        (##unchecked-structure-set! __obj131015 __tmp131145 '15 '#f '#f))
      (let ((__tmp131149
             (cons (cons 'id |gx[1]#_g131150_|)
                   (cons (cons 'depth |gx[1]#_g131151_|)
                         (cons (cons 'e |gx[1]#_g131152_|) '())))))
        (declare (not safe))
        (##unchecked-structure-set! __obj131015 __tmp131149 '16 '#f '#f))
      (let ((__tmp131153
             (cons (cons 'id |gx[1]#_g131154_|)
                   (cons (cons 'depth |gx[1]#_g131155_|)
                         (cons (cons 'e |gx[1]#_g131156_|) '())))))
        (declare (not safe))
        (##unchecked-structure-set! __obj131015 __tmp131153 '17 '#f '#f))
      (let ((__tmp131157
             (cons (cons 'id |gx[1]#_g131158_|)
                   (cons (cons 'depth |gx[1]#_g131159_|)
                         (cons (cons 'e |gx[1]#_g131160_|) '())))))
        (declare (not safe))
        (##unchecked-structure-set! __obj131015 __tmp131157 '18 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj131015 '() '19 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj131015 '() '21 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj131015 '() '20 '#f '#f))
      __obj131015)))
