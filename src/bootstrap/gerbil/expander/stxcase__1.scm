(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g176747_|
    (##structure
     gx#syntax-quote::t
     'expander
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g176749_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g176751_|
    (##structure
     gx#syntax-quote::t
     'make-syntax-pattern
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g176753_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g176759_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g176762_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-depth
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g176765_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-id
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g176771_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g176774_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-depth-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g176777_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-id-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g176783_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g176786_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-depth
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g176789_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-id
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g176795_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g176798_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-depth-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g176801_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-id-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[:0:]#syntax-pattern|
    (let ((__obj176498
           (make-object* gerbil/core$<MOP>$<MOP:2>#class-type-info::t '15)))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj176498
         'gx#syntax-pattern::t
         '1
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj176498
         'syntax-pattern
         '2
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj176498
         '(id depth)
         '4
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp176745
             (let ((__tmp176746 |gx[1]#_g176747_|))
               (declare (not safe))
               (cons __tmp176746 '()))))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj176498
         __tmp176745
         '3
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj176498
         '#t
         '5
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj176498
         '#f
         '6
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj176498
         '#f
         '7
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp176748 |gx[1]#_g176749_|))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj176498
         __tmp176748
         '8
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp176750 |gx[1]#_g176751_|))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj176498
         __tmp176750
         '9
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp176752 |gx[1]#_g176753_|))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj176498
         __tmp176752
         '10
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp176754
             (let ((__tmp176763
                    (let ((__tmp176764 |gx[1]#_g176765_|))
                      (declare (not safe))
                      (cons 'id __tmp176764)))
                   (__tmp176755
                    (let ((__tmp176760
                           (let ((__tmp176761 |gx[1]#_g176762_|))
                             (declare (not safe))
                             (cons 'depth __tmp176761)))
                          (__tmp176756
                           (let ((__tmp176757
                                  (let ((__tmp176758 |gx[1]#_g176759_|))
                                    (declare (not safe))
                                    (cons 'e __tmp176758))))
                             (declare (not safe))
                             (cons __tmp176757 '()))))
                      (declare (not safe))
                      (cons __tmp176760 __tmp176756))))
               (declare (not safe))
               (cons __tmp176763 __tmp176755))))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj176498
         __tmp176754
         '11
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp176766
             (let ((__tmp176775
                    (let ((__tmp176776 |gx[1]#_g176777_|))
                      (declare (not safe))
                      (cons 'id __tmp176776)))
                   (__tmp176767
                    (let ((__tmp176772
                           (let ((__tmp176773 |gx[1]#_g176774_|))
                             (declare (not safe))
                             (cons 'depth __tmp176773)))
                          (__tmp176768
                           (let ((__tmp176769
                                  (let ((__tmp176770 |gx[1]#_g176771_|))
                                    (declare (not safe))
                                    (cons 'e __tmp176770))))
                             (declare (not safe))
                             (cons __tmp176769 '()))))
                      (declare (not safe))
                      (cons __tmp176772 __tmp176768))))
               (declare (not safe))
               (cons __tmp176775 __tmp176767))))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj176498
         __tmp176766
         '12
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp176778
             (let ((__tmp176787
                    (let ((__tmp176788 |gx[1]#_g176789_|))
                      (declare (not safe))
                      (cons 'id __tmp176788)))
                   (__tmp176779
                    (let ((__tmp176784
                           (let ((__tmp176785 |gx[1]#_g176786_|))
                             (declare (not safe))
                             (cons 'depth __tmp176785)))
                          (__tmp176780
                           (let ((__tmp176781
                                  (let ((__tmp176782 |gx[1]#_g176783_|))
                                    (declare (not safe))
                                    (cons 'e __tmp176782))))
                             (declare (not safe))
                             (cons __tmp176781 '()))))
                      (declare (not safe))
                      (cons __tmp176784 __tmp176780))))
               (declare (not safe))
               (cons __tmp176787 __tmp176779))))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj176498
         __tmp176778
         '13
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp176790
             (let ((__tmp176799
                    (let ((__tmp176800 |gx[1]#_g176801_|))
                      (declare (not safe))
                      (cons 'id __tmp176800)))
                   (__tmp176791
                    (let ((__tmp176796
                           (let ((__tmp176797 |gx[1]#_g176798_|))
                             (declare (not safe))
                             (cons 'depth __tmp176797)))
                          (__tmp176792
                           (let ((__tmp176793
                                  (let ((__tmp176794 |gx[1]#_g176795_|))
                                    (declare (not safe))
                                    (cons 'e __tmp176794))))
                             (declare (not safe))
                             (cons __tmp176793 '()))))
                      (declare (not safe))
                      (cons __tmp176796 __tmp176792))))
               (declare (not safe))
               (cons __tmp176799 __tmp176791))))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj176498
         __tmp176790
         '14
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      __obj176498)))
