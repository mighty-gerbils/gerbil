(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g176677_|
    (##structure
     gx#syntax-quote::t
     'expander
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g176679_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g176681_|
    (##structure
     gx#syntax-quote::t
     'make-syntax-pattern
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g176683_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g176689_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g176692_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-depth
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g176695_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-id
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g176701_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g176704_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-depth-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g176707_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-id-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g176713_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g176716_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-depth
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g176719_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-id
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g176725_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g176728_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-depth-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g176731_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-id-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[:0:]#syntax-pattern|
    (let ((__obj176428
           (make-object gerbil/core$<MOP>$<MOP:2>#class-type-info::t '15)))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj176428
         'gx#syntax-pattern::t
         '1
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj176428
         'syntax-pattern
         '2
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj176428
         '(id depth)
         '4
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp176675
             (let ((__tmp176676 |gx[1]#_g176677_|))
               (declare (not safe))
               (cons __tmp176676 '()))))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj176428
         __tmp176675
         '3
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj176428
         '#t
         '5
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj176428
         '#f
         '6
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj176428
         '#f
         '7
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp176678 |gx[1]#_g176679_|))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj176428
         __tmp176678
         '8
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp176680 |gx[1]#_g176681_|))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj176428
         __tmp176680
         '9
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp176682 |gx[1]#_g176683_|))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj176428
         __tmp176682
         '10
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp176684
             (let ((__tmp176693
                    (let ((__tmp176694 |gx[1]#_g176695_|))
                      (declare (not safe))
                      (cons 'id __tmp176694)))
                   (__tmp176685
                    (let ((__tmp176690
                           (let ((__tmp176691 |gx[1]#_g176692_|))
                             (declare (not safe))
                             (cons 'depth __tmp176691)))
                          (__tmp176686
                           (let ((__tmp176687
                                  (let ((__tmp176688 |gx[1]#_g176689_|))
                                    (declare (not safe))
                                    (cons 'e __tmp176688))))
                             (declare (not safe))
                             (cons __tmp176687 '()))))
                      (declare (not safe))
                      (cons __tmp176690 __tmp176686))))
               (declare (not safe))
               (cons __tmp176693 __tmp176685))))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj176428
         __tmp176684
         '11
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp176696
             (let ((__tmp176705
                    (let ((__tmp176706 |gx[1]#_g176707_|))
                      (declare (not safe))
                      (cons 'id __tmp176706)))
                   (__tmp176697
                    (let ((__tmp176702
                           (let ((__tmp176703 |gx[1]#_g176704_|))
                             (declare (not safe))
                             (cons 'depth __tmp176703)))
                          (__tmp176698
                           (let ((__tmp176699
                                  (let ((__tmp176700 |gx[1]#_g176701_|))
                                    (declare (not safe))
                                    (cons 'e __tmp176700))))
                             (declare (not safe))
                             (cons __tmp176699 '()))))
                      (declare (not safe))
                      (cons __tmp176702 __tmp176698))))
               (declare (not safe))
               (cons __tmp176705 __tmp176697))))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj176428
         __tmp176696
         '12
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp176708
             (let ((__tmp176717
                    (let ((__tmp176718 |gx[1]#_g176719_|))
                      (declare (not safe))
                      (cons 'id __tmp176718)))
                   (__tmp176709
                    (let ((__tmp176714
                           (let ((__tmp176715 |gx[1]#_g176716_|))
                             (declare (not safe))
                             (cons 'depth __tmp176715)))
                          (__tmp176710
                           (let ((__tmp176711
                                  (let ((__tmp176712 |gx[1]#_g176713_|))
                                    (declare (not safe))
                                    (cons 'e __tmp176712))))
                             (declare (not safe))
                             (cons __tmp176711 '()))))
                      (declare (not safe))
                      (cons __tmp176714 __tmp176710))))
               (declare (not safe))
               (cons __tmp176717 __tmp176709))))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj176428
         __tmp176708
         '13
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp176720
             (let ((__tmp176729
                    (let ((__tmp176730 |gx[1]#_g176731_|))
                      (declare (not safe))
                      (cons 'id __tmp176730)))
                   (__tmp176721
                    (let ((__tmp176726
                           (let ((__tmp176727 |gx[1]#_g176728_|))
                             (declare (not safe))
                             (cons 'depth __tmp176727)))
                          (__tmp176722
                           (let ((__tmp176723
                                  (let ((__tmp176724 |gx[1]#_g176725_|))
                                    (declare (not safe))
                                    (cons 'e __tmp176724))))
                             (declare (not safe))
                             (cons __tmp176723 '()))))
                      (declare (not safe))
                      (cons __tmp176726 __tmp176722))))
               (declare (not safe))
               (cons __tmp176729 __tmp176721))))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj176428
         __tmp176720
         '14
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      __obj176428)))
