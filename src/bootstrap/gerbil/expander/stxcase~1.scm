(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g131080_|
    (##structure
     gx#syntax-quote::t
     'expander
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g131082_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g131084_|
    (##structure
     gx#syntax-quote::t
     'make-syntax-pattern
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g131086_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g131088_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-id
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g131089_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-depth
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g131090_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g131092_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-id-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g131093_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-depth-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g131094_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g131096_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-id
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g131097_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-depth
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g131098_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g131100_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-id-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g131101_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-depth-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g131102_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[:0:]#syntax-pattern|
    (let ((__obj130957
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
         __obj130957
         'gx#syntax-pattern::t
         '1
         '#f
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj130957 'syntax-pattern '2 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj130957 '(id depth) '4 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj130957 '(e id depth) '6 '#f '#f))
      (let ((__tmp131079 (cons |gx[1]#_g131080_| '())))
        (declare (not safe))
        (##unchecked-structure-set! __obj130957 __tmp131079 '3 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj130957 '#t '7 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj130957 '#f '8 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj130957 '#f '10 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj130957 '#f '11 '#f '#f))
      (let ((__tmp131081 |gx[1]#_g131082_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj130957 __tmp131081 '12 '#f '#f))
      (let ((__tmp131083 |gx[1]#_g131084_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj130957 __tmp131083 '13 '#f '#f))
      (let ((__tmp131085 |gx[1]#_g131086_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj130957 __tmp131085 '14 '#f '#f))
      (let ((__tmp131087
             (cons (cons 'id |gx[1]#_g131088_|)
                   (cons (cons 'depth |gx[1]#_g131089_|)
                         (cons (cons 'e |gx[1]#_g131090_|) '())))))
        (declare (not safe))
        (##unchecked-structure-set! __obj130957 __tmp131087 '15 '#f '#f))
      (let ((__tmp131091
             (cons (cons 'id |gx[1]#_g131092_|)
                   (cons (cons 'depth |gx[1]#_g131093_|)
                         (cons (cons 'e |gx[1]#_g131094_|) '())))))
        (declare (not safe))
        (##unchecked-structure-set! __obj130957 __tmp131091 '16 '#f '#f))
      (let ((__tmp131095
             (cons (cons 'id |gx[1]#_g131096_|)
                   (cons (cons 'depth |gx[1]#_g131097_|)
                         (cons (cons 'e |gx[1]#_g131098_|) '())))))
        (declare (not safe))
        (##unchecked-structure-set! __obj130957 __tmp131095 '17 '#f '#f))
      (let ((__tmp131099
             (cons (cons 'id |gx[1]#_g131100_|)
                   (cons (cons 'depth |gx[1]#_g131101_|)
                         (cons (cons 'e |gx[1]#_g131102_|) '())))))
        (declare (not safe))
        (##unchecked-structure-set! __obj130957 __tmp131099 '18 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj130957 '() '19 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj130957 '() '21 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj130957 '() '20 '#f '#f))
      __obj130957)))
