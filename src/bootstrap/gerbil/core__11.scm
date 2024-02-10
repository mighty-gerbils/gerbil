(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core$<match>[2]#_g50629_|
    (##structure
     gx#syntax-quote::t
     'macro-object
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[2]#_g50631_|
    (##structure
     gx#syntax-quote::t
     'match-macro::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[2]#_g50633_|
    (##structure
     gx#syntax-quote::t
     'make-match-macro
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[2]#_g50635_|
    (##structure
     gx#syntax-quote::t
     'match-macro?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[2]#_g50639_|
    (##structure
     gx#syntax-quote::t
     'match-macro-macro
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[2]#_g50643_|
    (##structure
     gx#syntax-quote::t
     'match-macro-macro-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[2]#_g50647_|
    (##structure
     gx#syntax-quote::t
     '&match-macro-macro
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[2]#_g50651_|
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
      (let ((__tmp50627
             (let ((__tmp50628 |gerbil/core$<match>[2]#_g50629_|))
               (declare (not safe))
               (cons __tmp50628 '()))))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj47287
         __tmp50627
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
      (let ((__tmp50630 |gerbil/core$<match>[2]#_g50631_|))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj47287
         __tmp50630
         '8
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp50632 |gerbil/core$<match>[2]#_g50633_|))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj47287
         __tmp50632
         '9
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp50634 |gerbil/core$<match>[2]#_g50635_|))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj47287
         __tmp50634
         '10
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp50636
             (let ((__tmp50637
                    (let ((__tmp50638 |gerbil/core$<match>[2]#_g50639_|))
                      (declare (not safe))
                      (cons 'macro __tmp50638))))
               (declare (not safe))
               (cons __tmp50637 '()))))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj47287
         __tmp50636
         '11
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp50640
             (let ((__tmp50641
                    (let ((__tmp50642 |gerbil/core$<match>[2]#_g50643_|))
                      (declare (not safe))
                      (cons 'macro __tmp50642))))
               (declare (not safe))
               (cons __tmp50641 '()))))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj47287
         __tmp50640
         '12
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp50644
             (let ((__tmp50645
                    (let ((__tmp50646 |gerbil/core$<match>[2]#_g50647_|))
                      (declare (not safe))
                      (cons 'macro __tmp50646))))
               (declare (not safe))
               (cons __tmp50645 '()))))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj47287
         __tmp50644
         '13
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp50648
             (let ((__tmp50649
                    (let ((__tmp50650 |gerbil/core$<match>[2]#_g50651_|))
                      (declare (not safe))
                      (cons 'macro __tmp50650))))
               (declare (not safe))
               (cons __tmp50649 '()))))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj47287
         __tmp50648
         '14
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      __obj47287)))
