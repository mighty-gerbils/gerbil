(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g129889_|
    (##structure
     gx#syntax-quote::t
     'expander
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129891_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129893_|
    (##structure
     gx#syntax-quote::t
     'make-syntax-pattern
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129895_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129897_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-id
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129898_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-depth
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129899_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129901_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-id-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129902_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-depth-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129903_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129905_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-id
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129906_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-depth
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129907_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129909_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-id-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129910_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-depth-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129911_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[:0:]#syntax-pattern|
    (let ((__obj129717
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
         __obj129717
         'gx#syntax-pattern::t
         '1
         '#f
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj129717 'syntax-pattern '2 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj129717 '(id depth) '4 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj129717 '(e id depth) '6 '#f '#f))
      (let ((__tmp129888 (cons |gx[1]#_g129889_| '())))
        (declare (not safe))
        (##unchecked-structure-set! __obj129717 __tmp129888 '3 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj129717 '#t '7 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj129717 '#f '8 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj129717 '#f '10 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj129717 '#f '11 '#f '#f))
      (let ((__tmp129890 |gx[1]#_g129891_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj129717 __tmp129890 '12 '#f '#f))
      (let ((__tmp129892 |gx[1]#_g129893_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj129717 __tmp129892 '13 '#f '#f))
      (let ((__tmp129894 |gx[1]#_g129895_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj129717 __tmp129894 '14 '#f '#f))
      (let ((__tmp129896
             (cons (cons 'id |gx[1]#_g129897_|)
                   (cons (cons 'depth |gx[1]#_g129898_|)
                         (cons (cons 'e |gx[1]#_g129899_|) '())))))
        (declare (not safe))
        (##unchecked-structure-set! __obj129717 __tmp129896 '15 '#f '#f))
      (let ((__tmp129900
             (cons (cons 'id |gx[1]#_g129901_|)
                   (cons (cons 'depth |gx[1]#_g129902_|)
                         (cons (cons 'e |gx[1]#_g129903_|) '())))))
        (declare (not safe))
        (##unchecked-structure-set! __obj129717 __tmp129900 '16 '#f '#f))
      (let ((__tmp129904
             (cons (cons 'id |gx[1]#_g129905_|)
                   (cons (cons 'depth |gx[1]#_g129906_|)
                         (cons (cons 'e |gx[1]#_g129907_|) '())))))
        (declare (not safe))
        (##unchecked-structure-set! __obj129717 __tmp129904 '17 '#f '#f))
      (let ((__tmp129908
             (cons (cons 'id |gx[1]#_g129909_|)
                   (cons (cons 'depth |gx[1]#_g129910_|)
                         (cons (cons 'e |gx[1]#_g129911_|) '())))))
        (declare (not safe))
        (##unchecked-structure-set! __obj129717 __tmp129908 '18 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj129717 '() '19 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj129717 '() '21 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj129717 '() '20 '#f '#f))
      __obj129717)))
