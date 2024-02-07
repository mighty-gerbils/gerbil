(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g176732_|
    (##structure
     gx#syntax-quote::t
     'expander
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g176734_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g176736_|
    (##structure
     gx#syntax-quote::t
     'make-syntax-pattern
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g176738_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g176744_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g176747_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-depth
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g176750_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-id
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g176756_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g176759_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-depth-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g176762_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-id-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g176768_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g176771_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-depth
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g176774_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-id
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g176780_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g176783_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-depth-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g176786_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-id-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[:0:]#syntax-pattern|
    (let ((__obj176483
           (make-object* gerbil/core$<MOP>$<MOP:2>#class-type-info::t '15)))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj176483
         'gx#syntax-pattern::t
         '1
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj176483
         'syntax-pattern
         '2
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj176483
         '(id depth)
         '4
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp176730
             (let ((__tmp176731 |gx[1]#_g176732_|))
               (declare (not safe))
               (cons __tmp176731 '()))))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj176483
         __tmp176730
         '3
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj176483
         '#t
         '5
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj176483
         '#f
         '6
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj176483
         '#f
         '7
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp176733 |gx[1]#_g176734_|))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj176483
         __tmp176733
         '8
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp176735 |gx[1]#_g176736_|))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj176483
         __tmp176735
         '9
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp176737 |gx[1]#_g176738_|))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj176483
         __tmp176737
         '10
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp176739
             (let ((__tmp176748
                    (let ((__tmp176749 |gx[1]#_g176750_|))
                      (declare (not safe))
                      (cons 'id __tmp176749)))
                   (__tmp176740
                    (let ((__tmp176745
                           (let ((__tmp176746 |gx[1]#_g176747_|))
                             (declare (not safe))
                             (cons 'depth __tmp176746)))
                          (__tmp176741
                           (let ((__tmp176742
                                  (let ((__tmp176743 |gx[1]#_g176744_|))
                                    (declare (not safe))
                                    (cons 'e __tmp176743))))
                             (declare (not safe))
                             (cons __tmp176742 '()))))
                      (declare (not safe))
                      (cons __tmp176745 __tmp176741))))
               (declare (not safe))
               (cons __tmp176748 __tmp176740))))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj176483
         __tmp176739
         '11
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp176751
             (let ((__tmp176760
                    (let ((__tmp176761 |gx[1]#_g176762_|))
                      (declare (not safe))
                      (cons 'id __tmp176761)))
                   (__tmp176752
                    (let ((__tmp176757
                           (let ((__tmp176758 |gx[1]#_g176759_|))
                             (declare (not safe))
                             (cons 'depth __tmp176758)))
                          (__tmp176753
                           (let ((__tmp176754
                                  (let ((__tmp176755 |gx[1]#_g176756_|))
                                    (declare (not safe))
                                    (cons 'e __tmp176755))))
                             (declare (not safe))
                             (cons __tmp176754 '()))))
                      (declare (not safe))
                      (cons __tmp176757 __tmp176753))))
               (declare (not safe))
               (cons __tmp176760 __tmp176752))))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj176483
         __tmp176751
         '12
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp176763
             (let ((__tmp176772
                    (let ((__tmp176773 |gx[1]#_g176774_|))
                      (declare (not safe))
                      (cons 'id __tmp176773)))
                   (__tmp176764
                    (let ((__tmp176769
                           (let ((__tmp176770 |gx[1]#_g176771_|))
                             (declare (not safe))
                             (cons 'depth __tmp176770)))
                          (__tmp176765
                           (let ((__tmp176766
                                  (let ((__tmp176767 |gx[1]#_g176768_|))
                                    (declare (not safe))
                                    (cons 'e __tmp176767))))
                             (declare (not safe))
                             (cons __tmp176766 '()))))
                      (declare (not safe))
                      (cons __tmp176769 __tmp176765))))
               (declare (not safe))
               (cons __tmp176772 __tmp176764))))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj176483
         __tmp176763
         '13
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp176775
             (let ((__tmp176784
                    (let ((__tmp176785 |gx[1]#_g176786_|))
                      (declare (not safe))
                      (cons 'id __tmp176785)))
                   (__tmp176776
                    (let ((__tmp176781
                           (let ((__tmp176782 |gx[1]#_g176783_|))
                             (declare (not safe))
                             (cons 'depth __tmp176782)))
                          (__tmp176777
                           (let ((__tmp176778
                                  (let ((__tmp176779 |gx[1]#_g176780_|))
                                    (declare (not safe))
                                    (cons 'e __tmp176779))))
                             (declare (not safe))
                             (cons __tmp176778 '()))))
                      (declare (not safe))
                      (cons __tmp176781 __tmp176777))))
               (declare (not safe))
               (cons __tmp176784 __tmp176776))))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj176483
         __tmp176775
         '14
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      __obj176483)))
