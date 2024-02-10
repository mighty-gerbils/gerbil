(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g176678_|
    (##structure
     gx#syntax-quote::t
     'expander
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g176680_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g176682_|
    (##structure
     gx#syntax-quote::t
     'make-syntax-pattern
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g176684_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g176690_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g176693_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-depth
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g176696_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-id
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g176702_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g176705_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-depth-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g176708_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-id-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g176714_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g176717_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-depth
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g176720_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-id
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g176726_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g176729_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-depth-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g176732_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-id-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[:0:]#syntax-pattern|
    (let ((__obj176429
           (make-object gerbil/core$<MOP>$<MOP:2>#class-type-info::t '15)))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj176429
         'gx#syntax-pattern::t
         '1
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj176429
         'syntax-pattern
         '2
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj176429
         '(id depth)
         '4
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp176676
             (let ((__tmp176677 |gx[1]#_g176678_|))
               (declare (not safe))
               (cons __tmp176677 '()))))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj176429
         __tmp176676
         '3
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj176429
         '#t
         '5
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj176429
         '#f
         '6
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj176429
         '#f
         '7
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp176679 |gx[1]#_g176680_|))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj176429
         __tmp176679
         '8
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp176681 |gx[1]#_g176682_|))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj176429
         __tmp176681
         '9
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp176683 |gx[1]#_g176684_|))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj176429
         __tmp176683
         '10
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp176685
             (let ((__tmp176694
                    (let ((__tmp176695 |gx[1]#_g176696_|))
                      (declare (not safe))
                      (cons 'id __tmp176695)))
                   (__tmp176686
                    (let ((__tmp176691
                           (let ((__tmp176692 |gx[1]#_g176693_|))
                             (declare (not safe))
                             (cons 'depth __tmp176692)))
                          (__tmp176687
                           (let ((__tmp176688
                                  (let ((__tmp176689 |gx[1]#_g176690_|))
                                    (declare (not safe))
                                    (cons 'e __tmp176689))))
                             (declare (not safe))
                             (cons __tmp176688 '()))))
                      (declare (not safe))
                      (cons __tmp176691 __tmp176687))))
               (declare (not safe))
               (cons __tmp176694 __tmp176686))))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj176429
         __tmp176685
         '11
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp176697
             (let ((__tmp176706
                    (let ((__tmp176707 |gx[1]#_g176708_|))
                      (declare (not safe))
                      (cons 'id __tmp176707)))
                   (__tmp176698
                    (let ((__tmp176703
                           (let ((__tmp176704 |gx[1]#_g176705_|))
                             (declare (not safe))
                             (cons 'depth __tmp176704)))
                          (__tmp176699
                           (let ((__tmp176700
                                  (let ((__tmp176701 |gx[1]#_g176702_|))
                                    (declare (not safe))
                                    (cons 'e __tmp176701))))
                             (declare (not safe))
                             (cons __tmp176700 '()))))
                      (declare (not safe))
                      (cons __tmp176703 __tmp176699))))
               (declare (not safe))
               (cons __tmp176706 __tmp176698))))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj176429
         __tmp176697
         '12
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp176709
             (let ((__tmp176718
                    (let ((__tmp176719 |gx[1]#_g176720_|))
                      (declare (not safe))
                      (cons 'id __tmp176719)))
                   (__tmp176710
                    (let ((__tmp176715
                           (let ((__tmp176716 |gx[1]#_g176717_|))
                             (declare (not safe))
                             (cons 'depth __tmp176716)))
                          (__tmp176711
                           (let ((__tmp176712
                                  (let ((__tmp176713 |gx[1]#_g176714_|))
                                    (declare (not safe))
                                    (cons 'e __tmp176713))))
                             (declare (not safe))
                             (cons __tmp176712 '()))))
                      (declare (not safe))
                      (cons __tmp176715 __tmp176711))))
               (declare (not safe))
               (cons __tmp176718 __tmp176710))))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj176429
         __tmp176709
         '13
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp176721
             (let ((__tmp176730
                    (let ((__tmp176731 |gx[1]#_g176732_|))
                      (declare (not safe))
                      (cons 'id __tmp176731)))
                   (__tmp176722
                    (let ((__tmp176727
                           (let ((__tmp176728 |gx[1]#_g176729_|))
                             (declare (not safe))
                             (cons 'depth __tmp176728)))
                          (__tmp176723
                           (let ((__tmp176724
                                  (let ((__tmp176725 |gx[1]#_g176726_|))
                                    (declare (not safe))
                                    (cons 'e __tmp176725))))
                             (declare (not safe))
                             (cons __tmp176724 '()))))
                      (declare (not safe))
                      (cons __tmp176727 __tmp176723))))
               (declare (not safe))
               (cons __tmp176730 __tmp176722))))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj176429
         __tmp176721
         '14
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      __obj176429)))
