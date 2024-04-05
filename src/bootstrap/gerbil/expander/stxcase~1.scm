(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g129799_|
    (##structure
     gx#syntax-quote::t
     'expander
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129801_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129803_|
    (##structure
     gx#syntax-quote::t
     'make-syntax-pattern
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129805_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129807_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-id
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129808_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-depth
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129809_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129811_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-id-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129812_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-depth-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129813_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129815_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-id
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129816_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-depth
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129817_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129819_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-id-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129820_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-depth-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129821_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[:0:]#syntax-pattern|
    (let ((__obj129627
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
         __obj129627
         'gx#syntax-pattern::t
         '1
         '#f
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj129627 'syntax-pattern '2 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj129627 '(id depth) '4 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj129627 '(e id depth) '6 '#f '#f))
      (let ((__tmp129798 (cons |gx[1]#_g129799_| '())))
        (declare (not safe))
        (##unchecked-structure-set! __obj129627 __tmp129798 '3 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj129627 '#t '7 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj129627 '#f '8 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj129627 '#f '10 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj129627 '#f '11 '#f '#f))
      (let ((__tmp129800 |gx[1]#_g129801_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj129627 __tmp129800 '12 '#f '#f))
      (let ((__tmp129802 |gx[1]#_g129803_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj129627 __tmp129802 '13 '#f '#f))
      (let ((__tmp129804 |gx[1]#_g129805_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj129627 __tmp129804 '14 '#f '#f))
      (let ((__tmp129806
             (cons (cons 'id |gx[1]#_g129807_|)
                   (cons (cons 'depth |gx[1]#_g129808_|)
                         (cons (cons 'e |gx[1]#_g129809_|) '())))))
        (declare (not safe))
        (##unchecked-structure-set! __obj129627 __tmp129806 '15 '#f '#f))
      (let ((__tmp129810
             (cons (cons 'id |gx[1]#_g129811_|)
                   (cons (cons 'depth |gx[1]#_g129812_|)
                         (cons (cons 'e |gx[1]#_g129813_|) '())))))
        (declare (not safe))
        (##unchecked-structure-set! __obj129627 __tmp129810 '16 '#f '#f))
      (let ((__tmp129814
             (cons (cons 'id |gx[1]#_g129815_|)
                   (cons (cons 'depth |gx[1]#_g129816_|)
                         (cons (cons 'e |gx[1]#_g129817_|) '())))))
        (declare (not safe))
        (##unchecked-structure-set! __obj129627 __tmp129814 '17 '#f '#f))
      (let ((__tmp129818
             (cons (cons 'id |gx[1]#_g129819_|)
                   (cons (cons 'depth |gx[1]#_g129820_|)
                         (cons (cons 'e |gx[1]#_g129821_|) '())))))
        (declare (not safe))
        (##unchecked-structure-set! __obj129627 __tmp129818 '18 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj129627 '() '19 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj129627 '() '21 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj129627 '() '20 '#f '#f))
      __obj129627)))
