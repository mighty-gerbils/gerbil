(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g129798_|
    (##structure
     gx#syntax-quote::t
     'expander
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129800_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129802_|
    (##structure
     gx#syntax-quote::t
     'make-syntax-pattern
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129804_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129806_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-id
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129807_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-depth
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129808_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129810_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-id-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129811_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-depth-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129812_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129814_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-id
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129815_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-depth
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129816_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129818_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-id-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129819_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-depth-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129820_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[:0:]#syntax-pattern|
    (let ((__obj129626
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
         __obj129626
         'gx#syntax-pattern::t
         '1
         '#f
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj129626 'syntax-pattern '2 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj129626 '(id depth) '4 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj129626 '(e id depth) '6 '#f '#f))
      (let ((__tmp129797 (cons |gx[1]#_g129798_| '())))
        (declare (not safe))
        (##unchecked-structure-set! __obj129626 __tmp129797 '3 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj129626 '#t '7 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj129626 '#f '8 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj129626 '#f '10 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj129626 '#f '11 '#f '#f))
      (let ((__tmp129799 |gx[1]#_g129800_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj129626 __tmp129799 '12 '#f '#f))
      (let ((__tmp129801 |gx[1]#_g129802_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj129626 __tmp129801 '13 '#f '#f))
      (let ((__tmp129803 |gx[1]#_g129804_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj129626 __tmp129803 '14 '#f '#f))
      (let ((__tmp129805
             (cons (cons 'id |gx[1]#_g129806_|)
                   (cons (cons 'depth |gx[1]#_g129807_|)
                         (cons (cons 'e |gx[1]#_g129808_|) '())))))
        (declare (not safe))
        (##unchecked-structure-set! __obj129626 __tmp129805 '15 '#f '#f))
      (let ((__tmp129809
             (cons (cons 'id |gx[1]#_g129810_|)
                   (cons (cons 'depth |gx[1]#_g129811_|)
                         (cons (cons 'e |gx[1]#_g129812_|) '())))))
        (declare (not safe))
        (##unchecked-structure-set! __obj129626 __tmp129809 '16 '#f '#f))
      (let ((__tmp129813
             (cons (cons 'id |gx[1]#_g129814_|)
                   (cons (cons 'depth |gx[1]#_g129815_|)
                         (cons (cons 'e |gx[1]#_g129816_|) '())))))
        (declare (not safe))
        (##unchecked-structure-set! __obj129626 __tmp129813 '17 '#f '#f))
      (let ((__tmp129817
             (cons (cons 'id |gx[1]#_g129818_|)
                   (cons (cons 'depth |gx[1]#_g129819_|)
                         (cons (cons 'e |gx[1]#_g129820_|) '())))))
        (declare (not safe))
        (##unchecked-structure-set! __obj129626 __tmp129817 '18 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj129626 '() '19 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj129626 '() '21 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj129626 '() '20 '#f '#f))
      __obj129626)))
