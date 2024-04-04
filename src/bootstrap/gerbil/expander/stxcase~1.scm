(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g129872_|
    (##structure
     gx#syntax-quote::t
     'expander
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129874_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129876_|
    (##structure
     gx#syntax-quote::t
     'make-syntax-pattern
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129878_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129880_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-id
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129881_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-depth
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129882_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129884_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-id-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129885_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-depth-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129886_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129888_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-id
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129889_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-depth
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129890_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129892_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-id-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129893_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-depth-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129894_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[:0:]#syntax-pattern|
    (let ((__obj129700
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
         __obj129700
         'gx#syntax-pattern::t
         '1
         '#f
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj129700 'syntax-pattern '2 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj129700 '(id depth) '4 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj129700 '(e id depth) '6 '#f '#f))
      (let ((__tmp129871 (cons |gx[1]#_g129872_| '())))
        (declare (not safe))
        (##unchecked-structure-set! __obj129700 __tmp129871 '3 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj129700 '#t '7 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj129700 '#f '8 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj129700 '#f '10 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj129700 '#f '11 '#f '#f))
      (let ((__tmp129873 |gx[1]#_g129874_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj129700 __tmp129873 '12 '#f '#f))
      (let ((__tmp129875 |gx[1]#_g129876_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj129700 __tmp129875 '13 '#f '#f))
      (let ((__tmp129877 |gx[1]#_g129878_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj129700 __tmp129877 '14 '#f '#f))
      (let ((__tmp129879
             (cons (cons 'id |gx[1]#_g129880_|)
                   (cons (cons 'depth |gx[1]#_g129881_|)
                         (cons (cons 'e |gx[1]#_g129882_|) '())))))
        (declare (not safe))
        (##unchecked-structure-set! __obj129700 __tmp129879 '15 '#f '#f))
      (let ((__tmp129883
             (cons (cons 'id |gx[1]#_g129884_|)
                   (cons (cons 'depth |gx[1]#_g129885_|)
                         (cons (cons 'e |gx[1]#_g129886_|) '())))))
        (declare (not safe))
        (##unchecked-structure-set! __obj129700 __tmp129883 '16 '#f '#f))
      (let ((__tmp129887
             (cons (cons 'id |gx[1]#_g129888_|)
                   (cons (cons 'depth |gx[1]#_g129889_|)
                         (cons (cons 'e |gx[1]#_g129890_|) '())))))
        (declare (not safe))
        (##unchecked-structure-set! __obj129700 __tmp129887 '17 '#f '#f))
      (let ((__tmp129891
             (cons (cons 'id |gx[1]#_g129892_|)
                   (cons (cons 'depth |gx[1]#_g129893_|)
                         (cons (cons 'e |gx[1]#_g129894_|) '())))))
        (declare (not safe))
        (##unchecked-structure-set! __obj129700 __tmp129891 '18 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj129700 '() '19 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj129700 '() '21 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj129700 '() '20 '#f '#f))
      __obj129700)))
