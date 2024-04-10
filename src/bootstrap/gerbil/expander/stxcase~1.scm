(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g129924_|
    (##structure
     gx#syntax-quote::t
     'expander
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129926_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129928_|
    (##structure
     gx#syntax-quote::t
     'make-syntax-pattern
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129930_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129932_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-id
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129933_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-depth
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129934_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129936_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-id-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129937_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-depth-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129938_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129940_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-id
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129941_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-depth
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129942_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129944_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-id-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129945_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-depth-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129946_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[:0:]#syntax-pattern|
    (let ((__obj129801
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
         __obj129801
         'gx#syntax-pattern::t
         '1
         '#f
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj129801 'syntax-pattern '2 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj129801 '(id depth) '4 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj129801 '(e id depth) '6 '#f '#f))
      (let ((__tmp129923 (cons |gx[1]#_g129924_| '())))
        (declare (not safe))
        (##unchecked-structure-set! __obj129801 __tmp129923 '3 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj129801 '#t '7 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj129801 '#f '8 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj129801 '#f '10 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj129801 '#f '11 '#f '#f))
      (let ((__tmp129925 |gx[1]#_g129926_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj129801 __tmp129925 '12 '#f '#f))
      (let ((__tmp129927 |gx[1]#_g129928_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj129801 __tmp129927 '13 '#f '#f))
      (let ((__tmp129929 |gx[1]#_g129930_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj129801 __tmp129929 '14 '#f '#f))
      (let ((__tmp129931
             (cons (cons 'id |gx[1]#_g129932_|)
                   (cons (cons 'depth |gx[1]#_g129933_|)
                         (cons (cons 'e |gx[1]#_g129934_|) '())))))
        (declare (not safe))
        (##unchecked-structure-set! __obj129801 __tmp129931 '15 '#f '#f))
      (let ((__tmp129935
             (cons (cons 'id |gx[1]#_g129936_|)
                   (cons (cons 'depth |gx[1]#_g129937_|)
                         (cons (cons 'e |gx[1]#_g129938_|) '())))))
        (declare (not safe))
        (##unchecked-structure-set! __obj129801 __tmp129935 '16 '#f '#f))
      (let ((__tmp129939
             (cons (cons 'id |gx[1]#_g129940_|)
                   (cons (cons 'depth |gx[1]#_g129941_|)
                         (cons (cons 'e |gx[1]#_g129942_|) '())))))
        (declare (not safe))
        (##unchecked-structure-set! __obj129801 __tmp129939 '17 '#f '#f))
      (let ((__tmp129943
             (cons (cons 'id |gx[1]#_g129944_|)
                   (cons (cons 'depth |gx[1]#_g129945_|)
                         (cons (cons 'e |gx[1]#_g129946_|) '())))))
        (declare (not safe))
        (##unchecked-structure-set! __obj129801 __tmp129943 '18 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj129801 '() '19 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj129801 '() '21 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj129801 '() '20 '#f '#f))
      __obj129801)))
