(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core$<match>[2]#_g50423_|
    (##structure
     gx#syntax-quote::t
     'macro-object
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[2]#_g50425_|
    (##structure
     gx#syntax-quote::t
     'match-macro::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[2]#_g50427_|
    (##structure
     gx#syntax-quote::t
     'make-match-macro
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[2]#_g50429_|
    (##structure
     gx#syntax-quote::t
     'match-macro?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[2]#_g50433_|
    (##structure
     gx#syntax-quote::t
     'match-macro-macro
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[2]#_g50437_|
    (##structure
     gx#syntax-quote::t
     'match-macro-macro-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[2]#_g50441_|
    (##structure
     gx#syntax-quote::t
     '&match-macro-macro
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[2]#_g50445_|
    (##structure
     gx#syntax-quote::t
     '&match-macro-macro-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[:1:]#match-macro|
    (let ((__obj47287
           (make-object gerbil/core$<MOP>$<MOP:2>#class-type-info::t '15)))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj47287
         'gerbil.core#match-macro::t
         '1
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj47287
         'match-macro
         '2
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj47287
         '()
         '4
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp50421
             (let ((__tmp50422 |gerbil/core$<match>[2]#_g50423_|))
               (declare (not safe))
               (cons __tmp50422 '()))))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj47287
         __tmp50421
         '3
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj47287
         '#f
         '5
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj47287
         '#f
         '6
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj47287
         '#f
         '7
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp50424 |gerbil/core$<match>[2]#_g50425_|))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj47287
         __tmp50424
         '8
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp50426 |gerbil/core$<match>[2]#_g50427_|))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj47287
         __tmp50426
         '9
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp50428 |gerbil/core$<match>[2]#_g50429_|))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj47287
         __tmp50428
         '10
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp50430
             (let ((__tmp50431
                    (let ((__tmp50432 |gerbil/core$<match>[2]#_g50433_|))
                      (declare (not safe))
                      (cons 'macro __tmp50432))))
               (declare (not safe))
               (cons __tmp50431 '()))))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj47287
         __tmp50430
         '11
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp50434
             (let ((__tmp50435
                    (let ((__tmp50436 |gerbil/core$<match>[2]#_g50437_|))
                      (declare (not safe))
                      (cons 'macro __tmp50436))))
               (declare (not safe))
               (cons __tmp50435 '()))))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj47287
         __tmp50434
         '12
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp50438
             (let ((__tmp50439
                    (let ((__tmp50440 |gerbil/core$<match>[2]#_g50441_|))
                      (declare (not safe))
                      (cons 'macro __tmp50440))))
               (declare (not safe))
               (cons __tmp50439 '()))))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj47287
         __tmp50438
         '13
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp50442
             (let ((__tmp50443
                    (let ((__tmp50444 |gerbil/core$<match>[2]#_g50445_|))
                      (declare (not safe))
                      (cons 'macro __tmp50444))))
               (declare (not safe))
               (cons __tmp50443 '()))))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj47287
         __tmp50442
         '14
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      __obj47287)))
