(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g176683_|
    (##structure
     gx#syntax-quote::t
     'expander
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g176685_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g176687_|
    (##structure
     gx#syntax-quote::t
     'make-syntax-pattern
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g176689_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g176695_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g176698_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-depth
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g176701_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-id
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g176707_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g176710_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-depth-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g176713_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-id-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g176719_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g176722_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-depth
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g176725_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-id
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g176731_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g176734_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-depth-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g176737_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-id-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[:0:]#syntax-pattern|
    (let ((__obj176434
           (make-object gerbil/core$<MOP>$<MOP:2>#class-type-info::t '15)))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj176434
         'gx#syntax-pattern::t
         '1
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj176434
         'syntax-pattern
         '2
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj176434
         '(id depth)
         '4
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp176681
             (let ((__tmp176682 |gx[1]#_g176683_|))
               (declare (not safe))
               (cons __tmp176682 '()))))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj176434
         __tmp176681
         '3
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj176434
         '#t
         '5
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj176434
         '#f
         '6
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj176434
         '#f
         '7
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp176684 |gx[1]#_g176685_|))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj176434
         __tmp176684
         '8
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp176686 |gx[1]#_g176687_|))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj176434
         __tmp176686
         '9
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp176688 |gx[1]#_g176689_|))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj176434
         __tmp176688
         '10
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp176690
             (let ((__tmp176699
                    (let ((__tmp176700 |gx[1]#_g176701_|))
                      (declare (not safe))
                      (cons 'id __tmp176700)))
                   (__tmp176691
                    (let ((__tmp176696
                           (let ((__tmp176697 |gx[1]#_g176698_|))
                             (declare (not safe))
                             (cons 'depth __tmp176697)))
                          (__tmp176692
                           (let ((__tmp176693
                                  (let ((__tmp176694 |gx[1]#_g176695_|))
                                    (declare (not safe))
                                    (cons 'e __tmp176694))))
                             (declare (not safe))
                             (cons __tmp176693 '()))))
                      (declare (not safe))
                      (cons __tmp176696 __tmp176692))))
               (declare (not safe))
               (cons __tmp176699 __tmp176691))))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj176434
         __tmp176690
         '11
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp176702
             (let ((__tmp176711
                    (let ((__tmp176712 |gx[1]#_g176713_|))
                      (declare (not safe))
                      (cons 'id __tmp176712)))
                   (__tmp176703
                    (let ((__tmp176708
                           (let ((__tmp176709 |gx[1]#_g176710_|))
                             (declare (not safe))
                             (cons 'depth __tmp176709)))
                          (__tmp176704
                           (let ((__tmp176705
                                  (let ((__tmp176706 |gx[1]#_g176707_|))
                                    (declare (not safe))
                                    (cons 'e __tmp176706))))
                             (declare (not safe))
                             (cons __tmp176705 '()))))
                      (declare (not safe))
                      (cons __tmp176708 __tmp176704))))
               (declare (not safe))
               (cons __tmp176711 __tmp176703))))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj176434
         __tmp176702
         '12
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp176714
             (let ((__tmp176723
                    (let ((__tmp176724 |gx[1]#_g176725_|))
                      (declare (not safe))
                      (cons 'id __tmp176724)))
                   (__tmp176715
                    (let ((__tmp176720
                           (let ((__tmp176721 |gx[1]#_g176722_|))
                             (declare (not safe))
                             (cons 'depth __tmp176721)))
                          (__tmp176716
                           (let ((__tmp176717
                                  (let ((__tmp176718 |gx[1]#_g176719_|))
                                    (declare (not safe))
                                    (cons 'e __tmp176718))))
                             (declare (not safe))
                             (cons __tmp176717 '()))))
                      (declare (not safe))
                      (cons __tmp176720 __tmp176716))))
               (declare (not safe))
               (cons __tmp176723 __tmp176715))))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj176434
         __tmp176714
         '13
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp176726
             (let ((__tmp176735
                    (let ((__tmp176736 |gx[1]#_g176737_|))
                      (declare (not safe))
                      (cons 'id __tmp176736)))
                   (__tmp176727
                    (let ((__tmp176732
                           (let ((__tmp176733 |gx[1]#_g176734_|))
                             (declare (not safe))
                             (cons 'depth __tmp176733)))
                          (__tmp176728
                           (let ((__tmp176729
                                  (let ((__tmp176730 |gx[1]#_g176731_|))
                                    (declare (not safe))
                                    (cons 'e __tmp176730))))
                             (declare (not safe))
                             (cons __tmp176729 '()))))
                      (declare (not safe))
                      (cons __tmp176732 __tmp176728))))
               (declare (not safe))
               (cons __tmp176735 __tmp176727))))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj176434
         __tmp176726
         '14
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      __obj176434)))
