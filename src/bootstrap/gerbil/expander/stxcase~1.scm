(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g131758_|
    (##structure
     gx#syntax-quote::t
     'expander
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g131760_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g131762_|
    (##structure
     gx#syntax-quote::t
     'make-syntax-pattern
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g131764_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g131766_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-id
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g131767_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-depth
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g131768_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g131770_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-id-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g131771_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-depth-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g131772_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g131774_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-id
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g131775_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-depth
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g131776_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g131778_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-id-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g131779_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-depth-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g131780_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[:0:]#syntax-pattern|
    (let ((__obj131635
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
         __obj131635
         'gx#syntax-pattern::t
         '1
         '#f
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj131635 'syntax-pattern '2 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj131635 '(id depth) '4 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj131635 '(e id depth) '6 '#f '#f))
      (let ((__tmp131757 (cons |gx[1]#_g131758_| '())))
        (declare (not safe))
        (##unchecked-structure-set! __obj131635 __tmp131757 '3 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj131635 '#t '7 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj131635 '#f '8 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj131635 '#f '10 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj131635 '#f '11 '#f '#f))
      (let ((__tmp131759 |gx[1]#_g131760_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj131635 __tmp131759 '12 '#f '#f))
      (let ((__tmp131761 |gx[1]#_g131762_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj131635 __tmp131761 '13 '#f '#f))
      (let ((__tmp131763 |gx[1]#_g131764_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj131635 __tmp131763 '14 '#f '#f))
      (let ((__tmp131765
             (cons (cons 'id |gx[1]#_g131766_|)
                   (cons (cons 'depth |gx[1]#_g131767_|)
                         (cons (cons 'e |gx[1]#_g131768_|) '())))))
        (declare (not safe))
        (##unchecked-structure-set! __obj131635 __tmp131765 '15 '#f '#f))
      (let ((__tmp131769
             (cons (cons 'id |gx[1]#_g131770_|)
                   (cons (cons 'depth |gx[1]#_g131771_|)
                         (cons (cons 'e |gx[1]#_g131772_|) '())))))
        (declare (not safe))
        (##unchecked-structure-set! __obj131635 __tmp131769 '16 '#f '#f))
      (let ((__tmp131773
             (cons (cons 'id |gx[1]#_g131774_|)
                   (cons (cons 'depth |gx[1]#_g131775_|)
                         (cons (cons 'e |gx[1]#_g131776_|) '())))))
        (declare (not safe))
        (##unchecked-structure-set! __obj131635 __tmp131773 '17 '#f '#f))
      (let ((__tmp131777
             (cons (cons 'id |gx[1]#_g131778_|)
                   (cons (cons 'depth |gx[1]#_g131779_|)
                         (cons (cons 'e |gx[1]#_g131780_|) '())))))
        (declare (not safe))
        (##unchecked-structure-set! __obj131635 __tmp131777 '18 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj131635 '() '19 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj131635 '() '21 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj131635 '() '20 '#f '#f))
      __obj131635)))
