(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g149669_|
    (##structure
     gx#syntax-quote::t
     '::basic-xform
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g149671_|
    (##structure
     gx#syntax-quote::t
     '::optimize-annotated::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g149673_|
    (##structure
     gx#syntax-quote::t
     'make-::optimize-annotated
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g149675_|
    (##structure
     gx#syntax-quote::t
     '::optimize-annotated?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g149678_|
    (##structure
     gx#syntax-quote::t
     '::generate-runtime
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g149680_|
    (##structure
     gx#syntax-quote::t
     '::generate-runtime-repr::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g149682_|
    (##structure
     gx#syntax-quote::t
     'make-::generate-runtime-repr
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g149684_|
    (##structure
     gx#syntax-quote::t
     '::generate-runtime-repr?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g149686_|
    (##structure
     gx#syntax-quote::t
     '::push-match-vars::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g149688_|
    (##structure
     gx#syntax-quote::t
     'make-::push-match-vars
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g149690_|
    (##structure
     gx#syntax-quote::t
     '::push-match-vars?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g149695_|
    (##structure
     gx#syntax-quote::t
     '::push-match-vars-K
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g149698_|
    (##structure
     gx#syntax-quote::t
     '::push-match-vars-vars
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g149703_|
    (##structure
     gx#syntax-quote::t
     '::push-match-vars-K-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g149706_|
    (##structure
     gx#syntax-quote::t
     '::push-match-vars-vars-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g149711_|
    (##structure
     gx#syntax-quote::t
     '&::push-match-vars-K
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g149714_|
    (##structure
     gx#syntax-quote::t
     '&::push-match-vars-vars
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g149719_|
    (##structure
     gx#syntax-quote::t
     '&::push-match-vars-K-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g149722_|
    (##structure
     gx#syntax-quote::t
     '&::push-match-vars-vars-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#::optimize-annotated|
      (let ((__obj149057
             (let ()
               (declare (not safe))
               (##structure
                gerbil/core/mop$<MOP:2>#class-type-info::t
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
           __obj149057
           'gxc#::optimize-annotated::t
           '1
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj149057
           '::optimize-annotated
           '2
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj149057
           '()
           '4
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp149667
               (let ((__tmp149668 |gxc[1]#_g149669_|))
                 (declare (not safe))
                 (cons __tmp149668 '()))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj149057
           __tmp149667
           '3
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj149057
           '#f
           '5
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj149057
           '#t
           '6
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj149057
           '#f
           '8
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj149057
           '#f
           '9
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp149670 |gxc[1]#_g149671_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj149057
           __tmp149670
           '10
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp149672 |gxc[1]#_g149673_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj149057
           __tmp149672
           '11
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp149674 |gxc[1]#_g149675_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj149057
           __tmp149674
           '12
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj149057
           '()
           '13
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj149057
           '()
           '14
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj149057
           '()
           '15
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj149057
           '()
           '16
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        __obj149057))
    (define |gxc[:0:]#::generate-runtime-repr|
      (let ((__obj149059
             (let ()
               (declare (not safe))
               (##structure
                gerbil/core/mop$<MOP:2>#class-type-info::t
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
           __obj149059
           'gxc#::generate-runtime-repr::t
           '1
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj149059
           '::generate-runtime-repr
           '2
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj149059
           '()
           '4
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp149676
               (let ((__tmp149677 |gxc[1]#_g149678_|))
                 (declare (not safe))
                 (cons __tmp149677 '()))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj149059
           __tmp149676
           '3
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj149059
           '#f
           '5
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj149059
           '#t
           '6
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj149059
           '#f
           '8
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj149059
           '#f
           '9
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp149679 |gxc[1]#_g149680_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj149059
           __tmp149679
           '10
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp149681 |gxc[1]#_g149682_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj149059
           __tmp149681
           '11
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp149683 |gxc[1]#_g149684_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj149059
           __tmp149683
           '12
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj149059
           '()
           '13
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj149059
           '()
           '14
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj149059
           '()
           '15
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj149059
           '()
           '16
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        __obj149059))
    (define |gxc[:0:]#::push-match-vars|
      (let ((__obj149061
             (let ()
               (declare (not safe))
               (##structure
                gerbil/core/mop$<MOP:2>#class-type-info::t
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
           __obj149061
           'gxc#::push-match-vars::t
           '1
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj149061
           '::push-match-vars
           '2
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj149061
           '(vars K)
           '4
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj149061
           '()
           '3
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj149061
           '#f
           '5
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj149061
           '#t
           '6
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj149061
           '#f
           '8
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj149061
           '#f
           '9
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp149685 |gxc[1]#_g149686_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj149061
           __tmp149685
           '10
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp149687 |gxc[1]#_g149688_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj149061
           __tmp149687
           '11
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp149689 |gxc[1]#_g149690_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj149061
           __tmp149689
           '12
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp149691
               (let ((__tmp149696
                      (let ((__tmp149697 |gxc[1]#_g149698_|))
                        (declare (not safe))
                        (cons 'vars __tmp149697)))
                     (__tmp149692
                      (let ((__tmp149693
                             (let ((__tmp149694 |gxc[1]#_g149695_|))
                               (declare (not safe))
                               (cons 'K __tmp149694))))
                        (declare (not safe))
                        (cons __tmp149693 '()))))
                 (declare (not safe))
                 (cons __tmp149696 __tmp149692))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj149061
           __tmp149691
           '13
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp149699
               (let ((__tmp149704
                      (let ((__tmp149705 |gxc[1]#_g149706_|))
                        (declare (not safe))
                        (cons 'vars __tmp149705)))
                     (__tmp149700
                      (let ((__tmp149701
                             (let ((__tmp149702 |gxc[1]#_g149703_|))
                               (declare (not safe))
                               (cons 'K __tmp149702))))
                        (declare (not safe))
                        (cons __tmp149701 '()))))
                 (declare (not safe))
                 (cons __tmp149704 __tmp149700))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj149061
           __tmp149699
           '14
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp149707
               (let ((__tmp149712
                      (let ((__tmp149713 |gxc[1]#_g149714_|))
                        (declare (not safe))
                        (cons 'vars __tmp149713)))
                     (__tmp149708
                      (let ((__tmp149709
                             (let ((__tmp149710 |gxc[1]#_g149711_|))
                               (declare (not safe))
                               (cons 'K __tmp149710))))
                        (declare (not safe))
                        (cons __tmp149709 '()))))
                 (declare (not safe))
                 (cons __tmp149712 __tmp149708))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj149061
           __tmp149707
           '15
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp149715
               (let ((__tmp149720
                      (let ((__tmp149721 |gxc[1]#_g149722_|))
                        (declare (not safe))
                        (cons 'vars __tmp149721)))
                     (__tmp149716
                      (let ((__tmp149717
                             (let ((__tmp149718 |gxc[1]#_g149719_|))
                               (declare (not safe))
                               (cons 'K __tmp149718))))
                        (declare (not safe))
                        (cons __tmp149717 '()))))
                 (declare (not safe))
                 (cons __tmp149720 __tmp149716))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj149061
           __tmp149715
           '16
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        __obj149061))))
