(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core$<match>[2]#_g50626_|
    (##structure
     gx#syntax-quote::t
     'macro-object
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[2]#_g50628_|
    (##structure
     gx#syntax-quote::t
     'match-macro::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[2]#_g50630_|
    (##structure
     gx#syntax-quote::t
     'make-match-macro
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[2]#_g50632_|
    (##structure
     gx#syntax-quote::t
     'match-macro?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[2]#_g50636_|
    (##structure
     gx#syntax-quote::t
     'match-macro-macro
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[2]#_g50640_|
    (##structure
     gx#syntax-quote::t
     'match-macro-macro-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[2]#_g50644_|
    (##structure
     gx#syntax-quote::t
     '&match-macro-macro
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[2]#_g50648_|
    (##structure
     gx#syntax-quote::t
     '&match-macro-macro-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[:1:]#match-macro|
    (let ((__obj47287
           (make-object* gerbil/core$<MOP>$<MOP:2>#class-type-info::t '15)))
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
      (let ((__tmp50624
             (let ((__tmp50625 |gerbil/core$<match>[2]#_g50626_|))
               (declare (not safe))
               (cons __tmp50625 '()))))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj47287
         __tmp50624
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
      (let ((__tmp50627 |gerbil/core$<match>[2]#_g50628_|))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj47287
         __tmp50627
         '8
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp50629 |gerbil/core$<match>[2]#_g50630_|))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj47287
         __tmp50629
         '9
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp50631 |gerbil/core$<match>[2]#_g50632_|))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj47287
         __tmp50631
         '10
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp50633
             (let ((__tmp50634
                    (let ((__tmp50635 |gerbil/core$<match>[2]#_g50636_|))
                      (declare (not safe))
                      (cons 'macro __tmp50635))))
               (declare (not safe))
               (cons __tmp50634 '()))))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj47287
         __tmp50633
         '11
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp50637
             (let ((__tmp50638
                    (let ((__tmp50639 |gerbil/core$<match>[2]#_g50640_|))
                      (declare (not safe))
                      (cons 'macro __tmp50639))))
               (declare (not safe))
               (cons __tmp50638 '()))))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj47287
         __tmp50637
         '12
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp50641
             (let ((__tmp50642
                    (let ((__tmp50643 |gerbil/core$<match>[2]#_g50644_|))
                      (declare (not safe))
                      (cons 'macro __tmp50643))))
               (declare (not safe))
               (cons __tmp50642 '()))))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj47287
         __tmp50641
         '13
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp50645
             (let ((__tmp50646
                    (let ((__tmp50647 |gerbil/core$<match>[2]#_g50648_|))
                      (declare (not safe))
                      (cons 'macro __tmp50647))))
               (declare (not safe))
               (cons __tmp50646 '()))))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj47287
         __tmp50645
         '14
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      __obj47287)))
