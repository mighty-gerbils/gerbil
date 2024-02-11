(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g182732_|
    (##structure
     gx#syntax-quote::t
     'expander
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g182734_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g182736_|
    (##structure
     gx#syntax-quote::t
     'make-syntax-pattern
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g182738_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g182744_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g182747_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-depth
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g182750_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-id
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g182756_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g182759_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-depth-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g182762_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-id-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g182768_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g182771_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-depth
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g182774_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-id
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g182780_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g182783_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-depth-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g182786_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-id-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[:0:]#syntax-pattern|
    (let ((__obj182482
           (let ()
             (declare (not safe))
             (##structure
              gerbil/core$<MOP>$<MOP:2>#class-type-info::t
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
         __obj182482
         'gx#syntax-pattern::t
         '1
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj182482
         'syntax-pattern
         '2
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj182482
         '(id depth)
         '4
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp182730
             (let ((__tmp182731 |gx[1]#_g182732_|))
               (declare (not safe))
               (cons __tmp182731 '()))))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj182482
         __tmp182730
         '3
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj182482
         '#t
         '5
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj182482
         '#f
         '6
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj182482
         '#f
         '7
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp182733 |gx[1]#_g182734_|))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj182482
         __tmp182733
         '8
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp182735 |gx[1]#_g182736_|))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj182482
         __tmp182735
         '9
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp182737 |gx[1]#_g182738_|))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj182482
         __tmp182737
         '10
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp182739
             (let ((__tmp182748
                    (let ((__tmp182749 |gx[1]#_g182750_|))
                      (declare (not safe))
                      (cons 'id __tmp182749)))
                   (__tmp182740
                    (let ((__tmp182745
                           (let ((__tmp182746 |gx[1]#_g182747_|))
                             (declare (not safe))
                             (cons 'depth __tmp182746)))
                          (__tmp182741
                           (let ((__tmp182742
                                  (let ((__tmp182743 |gx[1]#_g182744_|))
                                    (declare (not safe))
                                    (cons 'e __tmp182743))))
                             (declare (not safe))
                             (cons __tmp182742 '()))))
                      (declare (not safe))
                      (cons __tmp182745 __tmp182741))))
               (declare (not safe))
               (cons __tmp182748 __tmp182740))))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj182482
         __tmp182739
         '11
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp182751
             (let ((__tmp182760
                    (let ((__tmp182761 |gx[1]#_g182762_|))
                      (declare (not safe))
                      (cons 'id __tmp182761)))
                   (__tmp182752
                    (let ((__tmp182757
                           (let ((__tmp182758 |gx[1]#_g182759_|))
                             (declare (not safe))
                             (cons 'depth __tmp182758)))
                          (__tmp182753
                           (let ((__tmp182754
                                  (let ((__tmp182755 |gx[1]#_g182756_|))
                                    (declare (not safe))
                                    (cons 'e __tmp182755))))
                             (declare (not safe))
                             (cons __tmp182754 '()))))
                      (declare (not safe))
                      (cons __tmp182757 __tmp182753))))
               (declare (not safe))
               (cons __tmp182760 __tmp182752))))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj182482
         __tmp182751
         '12
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp182763
             (let ((__tmp182772
                    (let ((__tmp182773 |gx[1]#_g182774_|))
                      (declare (not safe))
                      (cons 'id __tmp182773)))
                   (__tmp182764
                    (let ((__tmp182769
                           (let ((__tmp182770 |gx[1]#_g182771_|))
                             (declare (not safe))
                             (cons 'depth __tmp182770)))
                          (__tmp182765
                           (let ((__tmp182766
                                  (let ((__tmp182767 |gx[1]#_g182768_|))
                                    (declare (not safe))
                                    (cons 'e __tmp182767))))
                             (declare (not safe))
                             (cons __tmp182766 '()))))
                      (declare (not safe))
                      (cons __tmp182769 __tmp182765))))
               (declare (not safe))
               (cons __tmp182772 __tmp182764))))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj182482
         __tmp182763
         '13
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp182775
             (let ((__tmp182784
                    (let ((__tmp182785 |gx[1]#_g182786_|))
                      (declare (not safe))
                      (cons 'id __tmp182785)))
                   (__tmp182776
                    (let ((__tmp182781
                           (let ((__tmp182782 |gx[1]#_g182783_|))
                             (declare (not safe))
                             (cons 'depth __tmp182782)))
                          (__tmp182777
                           (let ((__tmp182778
                                  (let ((__tmp182779 |gx[1]#_g182780_|))
                                    (declare (not safe))
                                    (cons 'e __tmp182779))))
                             (declare (not safe))
                             (cons __tmp182778 '()))))
                      (declare (not safe))
                      (cons __tmp182781 __tmp182777))))
               (declare (not safe))
               (cons __tmp182784 __tmp182776))))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj182482
         __tmp182775
         '14
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      __obj182482)))
