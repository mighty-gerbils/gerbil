(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g150859_|
    (##structure
     gx#syntax-quote::t
     '::basic-xform
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g150861_|
    (##structure
     gx#syntax-quote::t
     '::optimize-annotated::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g150863_|
    (##structure
     gx#syntax-quote::t
     'make-::optimize-annotated
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g150865_|
    (##structure
     gx#syntax-quote::t
     '::optimize-annotated?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g150868_|
    (##structure
     gx#syntax-quote::t
     '::generate-runtime
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g150870_|
    (##structure
     gx#syntax-quote::t
     '::generate-runtime-repr::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g150872_|
    (##structure
     gx#syntax-quote::t
     'make-::generate-runtime-repr
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g150874_|
    (##structure
     gx#syntax-quote::t
     '::generate-runtime-repr?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g150876_|
    (##structure
     gx#syntax-quote::t
     '::push-match-vars::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g150878_|
    (##structure
     gx#syntax-quote::t
     'make-::push-match-vars
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g150880_|
    (##structure
     gx#syntax-quote::t
     '::push-match-vars?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g150885_|
    (##structure
     gx#syntax-quote::t
     '::push-match-vars-K
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g150888_|
    (##structure
     gx#syntax-quote::t
     '::push-match-vars-vars
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g150893_|
    (##structure
     gx#syntax-quote::t
     '::push-match-vars-K-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g150896_|
    (##structure
     gx#syntax-quote::t
     '::push-match-vars-vars-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g150901_|
    (##structure
     gx#syntax-quote::t
     '&::push-match-vars-K
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g150904_|
    (##structure
     gx#syntax-quote::t
     '&::push-match-vars-vars
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g150909_|
    (##structure
     gx#syntax-quote::t
     '&::push-match-vars-K-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g150912_|
    (##structure
     gx#syntax-quote::t
     '&::push-match-vars-vars-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#::optimize-annotated|
      (let ((__obj150244
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
                '#f))))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj150244
           'gxc#::optimize-annotated::t
           '1
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj150244
           '::optimize-annotated
           '2
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj150244
           '()
           '4
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp150857
               (let ((__tmp150858 |gxc[1]#_g150859_|))
                 (declare (not safe))
                 (cons __tmp150858 '()))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj150244
           __tmp150857
           '3
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj150244
           '#f
           '5
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj150244
           '#t
           '6
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj150244
           '#f
           '7
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj150244
           '#f
           '8
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp150860 |gxc[1]#_g150861_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj150244
           __tmp150860
           '9
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp150862 |gxc[1]#_g150863_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj150244
           __tmp150862
           '10
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp150864 |gxc[1]#_g150865_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj150244
           __tmp150864
           '11
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj150244
           '()
           '12
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj150244
           '()
           '13
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj150244
           '()
           '14
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj150244
           '()
           '15
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        __obj150244))
    (define |gxc[:0:]#::generate-runtime-repr|
      (let ((__obj150246
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
                '#f))))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj150246
           'gxc#::generate-runtime-repr::t
           '1
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj150246
           '::generate-runtime-repr
           '2
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj150246
           '()
           '4
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp150866
               (let ((__tmp150867 |gxc[1]#_g150868_|))
                 (declare (not safe))
                 (cons __tmp150867 '()))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj150246
           __tmp150866
           '3
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj150246
           '#f
           '5
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj150246
           '#t
           '6
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj150246
           '#f
           '7
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj150246
           '#f
           '8
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp150869 |gxc[1]#_g150870_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj150246
           __tmp150869
           '9
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp150871 |gxc[1]#_g150872_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj150246
           __tmp150871
           '10
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp150873 |gxc[1]#_g150874_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj150246
           __tmp150873
           '11
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj150246
           '()
           '12
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj150246
           '()
           '13
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj150246
           '()
           '14
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj150246
           '()
           '15
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        __obj150246))
    (define |gxc[:0:]#::push-match-vars|
      (let ((__obj150248
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
                '#f))))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj150248
           'gxc#::push-match-vars::t
           '1
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj150248
           '::push-match-vars
           '2
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj150248
           '(vars K)
           '4
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj150248
           '()
           '3
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj150248
           '#f
           '5
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj150248
           '#t
           '6
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj150248
           '#f
           '7
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj150248
           '#f
           '8
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp150875 |gxc[1]#_g150876_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj150248
           __tmp150875
           '9
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp150877 |gxc[1]#_g150878_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj150248
           __tmp150877
           '10
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp150879 |gxc[1]#_g150880_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj150248
           __tmp150879
           '11
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp150881
               (let ((__tmp150886
                      (let ((__tmp150887 |gxc[1]#_g150888_|))
                        (declare (not safe))
                        (cons 'vars __tmp150887)))
                     (__tmp150882
                      (let ((__tmp150883
                             (let ((__tmp150884 |gxc[1]#_g150885_|))
                               (declare (not safe))
                               (cons 'K __tmp150884))))
                        (declare (not safe))
                        (cons __tmp150883 '()))))
                 (declare (not safe))
                 (cons __tmp150886 __tmp150882))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj150248
           __tmp150881
           '12
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp150889
               (let ((__tmp150894
                      (let ((__tmp150895 |gxc[1]#_g150896_|))
                        (declare (not safe))
                        (cons 'vars __tmp150895)))
                     (__tmp150890
                      (let ((__tmp150891
                             (let ((__tmp150892 |gxc[1]#_g150893_|))
                               (declare (not safe))
                               (cons 'K __tmp150892))))
                        (declare (not safe))
                        (cons __tmp150891 '()))))
                 (declare (not safe))
                 (cons __tmp150894 __tmp150890))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj150248
           __tmp150889
           '13
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp150897
               (let ((__tmp150902
                      (let ((__tmp150903 |gxc[1]#_g150904_|))
                        (declare (not safe))
                        (cons 'vars __tmp150903)))
                     (__tmp150898
                      (let ((__tmp150899
                             (let ((__tmp150900 |gxc[1]#_g150901_|))
                               (declare (not safe))
                               (cons 'K __tmp150900))))
                        (declare (not safe))
                        (cons __tmp150899 '()))))
                 (declare (not safe))
                 (cons __tmp150902 __tmp150898))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj150248
           __tmp150897
           '14
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp150905
               (let ((__tmp150910
                      (let ((__tmp150911 |gxc[1]#_g150912_|))
                        (declare (not safe))
                        (cons 'vars __tmp150911)))
                     (__tmp150906
                      (let ((__tmp150907
                             (let ((__tmp150908 |gxc[1]#_g150909_|))
                               (declare (not safe))
                               (cons 'K __tmp150908))))
                        (declare (not safe))
                        (cons __tmp150907 '()))))
                 (declare (not safe))
                 (cons __tmp150910 __tmp150906))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj150248
           __tmp150905
           '15
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        __obj150248))))
