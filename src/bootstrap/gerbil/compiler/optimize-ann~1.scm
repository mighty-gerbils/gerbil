(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g152655_|
    (##structure
     gx#syntax-quote::t
     '::basic-xform
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g152657_|
    (##structure
     gx#syntax-quote::t
     '::optimize-annotated::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g152659_|
    (##structure
     gx#syntax-quote::t
     'make-::optimize-annotated
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g152661_|
    (##structure
     gx#syntax-quote::t
     '::optimize-annotated?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g152664_|
    (##structure
     gx#syntax-quote::t
     '::generate-runtime
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g152666_|
    (##structure
     gx#syntax-quote::t
     '::generate-runtime-repr::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g152668_|
    (##structure
     gx#syntax-quote::t
     'make-::generate-runtime-repr
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g152670_|
    (##structure
     gx#syntax-quote::t
     '::generate-runtime-repr?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g152672_|
    (##structure
     gx#syntax-quote::t
     '::push-match-vars::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g152674_|
    (##structure
     gx#syntax-quote::t
     'make-::push-match-vars
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g152676_|
    (##structure
     gx#syntax-quote::t
     '::push-match-vars?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g152681_|
    (##structure
     gx#syntax-quote::t
     '::push-match-vars-K
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g152684_|
    (##structure
     gx#syntax-quote::t
     '::push-match-vars-vars
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g152689_|
    (##structure
     gx#syntax-quote::t
     '::push-match-vars-K-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g152692_|
    (##structure
     gx#syntax-quote::t
     '::push-match-vars-vars-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g152697_|
    (##structure
     gx#syntax-quote::t
     '&::push-match-vars-K
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g152700_|
    (##structure
     gx#syntax-quote::t
     '&::push-match-vars-vars
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g152705_|
    (##structure
     gx#syntax-quote::t
     '&::push-match-vars-K-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g152708_|
    (##structure
     gx#syntax-quote::t
     '&::push-match-vars-vars-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#::optimize-annotated|
      (let ((__obj152043
             (let ()
               (declare (not safe))
               (##structure
                gerbil/core/mop~MOP-2#class-type-info::t
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
           __obj152043
           'gxc#::optimize-annotated::t
           '1
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj152043
           '::optimize-annotated
           '2
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj152043
           '()
           '4
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ((__tmp152653
               (let ((__tmp152654 |gxc[1]#_g152655_|))
                 (declare (not safe))
                 (cons __tmp152654 '()))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj152043
           __tmp152653
           '3
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj152043
           '#f
           '5
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj152043
           '#t
           '6
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj152043
           '#f
           '8
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj152043
           '#f
           '9
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ((__tmp152656 |gxc[1]#_g152657_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj152043
           __tmp152656
           '10
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ((__tmp152658 |gxc[1]#_g152659_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj152043
           __tmp152658
           '11
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ((__tmp152660 |gxc[1]#_g152661_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj152043
           __tmp152660
           '12
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj152043
           '()
           '13
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj152043
           '()
           '14
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj152043
           '()
           '15
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj152043
           '()
           '16
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        __obj152043))
    (define |gxc[:0:]#::generate-runtime-repr|
      (let ((__obj152045
             (let ()
               (declare (not safe))
               (##structure
                gerbil/core/mop~MOP-2#class-type-info::t
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
           __obj152045
           'gxc#::generate-runtime-repr::t
           '1
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj152045
           '::generate-runtime-repr
           '2
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj152045
           '()
           '4
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ((__tmp152662
               (let ((__tmp152663 |gxc[1]#_g152664_|))
                 (declare (not safe))
                 (cons __tmp152663 '()))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj152045
           __tmp152662
           '3
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj152045
           '#f
           '5
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj152045
           '#t
           '6
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj152045
           '#f
           '8
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj152045
           '#f
           '9
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ((__tmp152665 |gxc[1]#_g152666_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj152045
           __tmp152665
           '10
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ((__tmp152667 |gxc[1]#_g152668_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj152045
           __tmp152667
           '11
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ((__tmp152669 |gxc[1]#_g152670_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj152045
           __tmp152669
           '12
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj152045
           '()
           '13
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj152045
           '()
           '14
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj152045
           '()
           '15
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj152045
           '()
           '16
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        __obj152045))
    (define |gxc[:0:]#::push-match-vars|
      (let ((__obj152047
             (let ()
               (declare (not safe))
               (##structure
                gerbil/core/mop~MOP-2#class-type-info::t
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
           __obj152047
           'gxc#::push-match-vars::t
           '1
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj152047
           '::push-match-vars
           '2
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj152047
           '(vars K)
           '4
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj152047
           '()
           '3
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj152047
           '#f
           '5
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj152047
           '#t
           '6
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj152047
           '#f
           '8
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj152047
           '#f
           '9
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ((__tmp152671 |gxc[1]#_g152672_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj152047
           __tmp152671
           '10
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ((__tmp152673 |gxc[1]#_g152674_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj152047
           __tmp152673
           '11
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ((__tmp152675 |gxc[1]#_g152676_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj152047
           __tmp152675
           '12
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ((__tmp152677
               (let ((__tmp152682
                      (let ((__tmp152683 |gxc[1]#_g152684_|))
                        (declare (not safe))
                        (cons 'vars __tmp152683)))
                     (__tmp152678
                      (let ((__tmp152679
                             (let ((__tmp152680 |gxc[1]#_g152681_|))
                               (declare (not safe))
                               (cons 'K __tmp152680))))
                        (declare (not safe))
                        (cons __tmp152679 '()))))
                 (declare (not safe))
                 (cons __tmp152682 __tmp152678))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj152047
           __tmp152677
           '13
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ((__tmp152685
               (let ((__tmp152690
                      (let ((__tmp152691 |gxc[1]#_g152692_|))
                        (declare (not safe))
                        (cons 'vars __tmp152691)))
                     (__tmp152686
                      (let ((__tmp152687
                             (let ((__tmp152688 |gxc[1]#_g152689_|))
                               (declare (not safe))
                               (cons 'K __tmp152688))))
                        (declare (not safe))
                        (cons __tmp152687 '()))))
                 (declare (not safe))
                 (cons __tmp152690 __tmp152686))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj152047
           __tmp152685
           '14
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ((__tmp152693
               (let ((__tmp152698
                      (let ((__tmp152699 |gxc[1]#_g152700_|))
                        (declare (not safe))
                        (cons 'vars __tmp152699)))
                     (__tmp152694
                      (let ((__tmp152695
                             (let ((__tmp152696 |gxc[1]#_g152697_|))
                               (declare (not safe))
                               (cons 'K __tmp152696))))
                        (declare (not safe))
                        (cons __tmp152695 '()))))
                 (declare (not safe))
                 (cons __tmp152698 __tmp152694))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj152047
           __tmp152693
           '15
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ((__tmp152701
               (let ((__tmp152706
                      (let ((__tmp152707 |gxc[1]#_g152708_|))
                        (declare (not safe))
                        (cons 'vars __tmp152707)))
                     (__tmp152702
                      (let ((__tmp152703
                             (let ((__tmp152704 |gxc[1]#_g152705_|))
                               (declare (not safe))
                               (cons 'K __tmp152704))))
                        (declare (not safe))
                        (cons __tmp152703 '()))))
                 (declare (not safe))
                 (cons __tmp152706 __tmp152702))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj152047
           __tmp152701
           '16
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        __obj152047))))
