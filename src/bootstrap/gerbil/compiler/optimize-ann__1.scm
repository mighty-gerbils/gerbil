(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g151003_|
    (##structure
     gx#syntax-quote::t
     '::basic-xform
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g151005_|
    (##structure
     gx#syntax-quote::t
     '::optimize-annotated::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g151007_|
    (##structure
     gx#syntax-quote::t
     'make-::optimize-annotated
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g151009_|
    (##structure
     gx#syntax-quote::t
     '::optimize-annotated?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g151012_|
    (##structure
     gx#syntax-quote::t
     '::generate-runtime
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g151014_|
    (##structure
     gx#syntax-quote::t
     '::generate-runtime-repr::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g151016_|
    (##structure
     gx#syntax-quote::t
     'make-::generate-runtime-repr
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g151018_|
    (##structure
     gx#syntax-quote::t
     '::generate-runtime-repr?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g151020_|
    (##structure
     gx#syntax-quote::t
     '::push-match-vars::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g151022_|
    (##structure
     gx#syntax-quote::t
     'make-::push-match-vars
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g151024_|
    (##structure
     gx#syntax-quote::t
     '::push-match-vars?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g151029_|
    (##structure
     gx#syntax-quote::t
     '::push-match-vars-K
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g151032_|
    (##structure
     gx#syntax-quote::t
     '::push-match-vars-vars
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g151037_|
    (##structure
     gx#syntax-quote::t
     '::push-match-vars-K-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g151040_|
    (##structure
     gx#syntax-quote::t
     '::push-match-vars-vars-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g151045_|
    (##structure
     gx#syntax-quote::t
     '&::push-match-vars-K
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g151048_|
    (##structure
     gx#syntax-quote::t
     '&::push-match-vars-vars
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g151053_|
    (##structure
     gx#syntax-quote::t
     '&::push-match-vars-K-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g151056_|
    (##structure
     gx#syntax-quote::t
     '&::push-match-vars-vars-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#::optimize-annotated|
      (let ((__obj150388
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
           __obj150388
           'gxc#::optimize-annotated::t
           '1
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj150388
           '::optimize-annotated
           '2
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj150388
           '()
           '4
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp151001
               (let ((__tmp151002 |gxc[1]#_g151003_|))
                 (declare (not safe))
                 (cons __tmp151002 '()))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj150388
           __tmp151001
           '3
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj150388
           '#f
           '5
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj150388
           '#t
           '6
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj150388
           '#f
           '7
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj150388
           '#f
           '8
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp151004 |gxc[1]#_g151005_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj150388
           __tmp151004
           '9
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp151006 |gxc[1]#_g151007_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj150388
           __tmp151006
           '10
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp151008 |gxc[1]#_g151009_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj150388
           __tmp151008
           '11
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj150388
           '()
           '12
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj150388
           '()
           '13
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj150388
           '()
           '14
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj150388
           '()
           '15
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        __obj150388))
    (define |gxc[:0:]#::generate-runtime-repr|
      (let ((__obj150390
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
           __obj150390
           'gxc#::generate-runtime-repr::t
           '1
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj150390
           '::generate-runtime-repr
           '2
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj150390
           '()
           '4
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp151010
               (let ((__tmp151011 |gxc[1]#_g151012_|))
                 (declare (not safe))
                 (cons __tmp151011 '()))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj150390
           __tmp151010
           '3
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj150390
           '#f
           '5
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj150390
           '#t
           '6
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj150390
           '#f
           '7
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj150390
           '#f
           '8
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp151013 |gxc[1]#_g151014_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj150390
           __tmp151013
           '9
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp151015 |gxc[1]#_g151016_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj150390
           __tmp151015
           '10
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp151017 |gxc[1]#_g151018_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj150390
           __tmp151017
           '11
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj150390
           '()
           '12
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj150390
           '()
           '13
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj150390
           '()
           '14
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj150390
           '()
           '15
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        __obj150390))
    (define |gxc[:0:]#::push-match-vars|
      (let ((__obj150392
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
           __obj150392
           'gxc#::push-match-vars::t
           '1
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj150392
           '::push-match-vars
           '2
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj150392
           '(vars K)
           '4
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj150392
           '()
           '3
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj150392
           '#f
           '5
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj150392
           '#t
           '6
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj150392
           '#f
           '7
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj150392
           '#f
           '8
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp151019 |gxc[1]#_g151020_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj150392
           __tmp151019
           '9
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp151021 |gxc[1]#_g151022_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj150392
           __tmp151021
           '10
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp151023 |gxc[1]#_g151024_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj150392
           __tmp151023
           '11
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp151025
               (let ((__tmp151030
                      (let ((__tmp151031 |gxc[1]#_g151032_|))
                        (declare (not safe))
                        (cons 'vars __tmp151031)))
                     (__tmp151026
                      (let ((__tmp151027
                             (let ((__tmp151028 |gxc[1]#_g151029_|))
                               (declare (not safe))
                               (cons 'K __tmp151028))))
                        (declare (not safe))
                        (cons __tmp151027 '()))))
                 (declare (not safe))
                 (cons __tmp151030 __tmp151026))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj150392
           __tmp151025
           '12
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp151033
               (let ((__tmp151038
                      (let ((__tmp151039 |gxc[1]#_g151040_|))
                        (declare (not safe))
                        (cons 'vars __tmp151039)))
                     (__tmp151034
                      (let ((__tmp151035
                             (let ((__tmp151036 |gxc[1]#_g151037_|))
                               (declare (not safe))
                               (cons 'K __tmp151036))))
                        (declare (not safe))
                        (cons __tmp151035 '()))))
                 (declare (not safe))
                 (cons __tmp151038 __tmp151034))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj150392
           __tmp151033
           '13
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp151041
               (let ((__tmp151046
                      (let ((__tmp151047 |gxc[1]#_g151048_|))
                        (declare (not safe))
                        (cons 'vars __tmp151047)))
                     (__tmp151042
                      (let ((__tmp151043
                             (let ((__tmp151044 |gxc[1]#_g151045_|))
                               (declare (not safe))
                               (cons 'K __tmp151044))))
                        (declare (not safe))
                        (cons __tmp151043 '()))))
                 (declare (not safe))
                 (cons __tmp151046 __tmp151042))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj150392
           __tmp151041
           '14
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp151049
               (let ((__tmp151054
                      (let ((__tmp151055 |gxc[1]#_g151056_|))
                        (declare (not safe))
                        (cons 'vars __tmp151055)))
                     (__tmp151050
                      (let ((__tmp151051
                             (let ((__tmp151052 |gxc[1]#_g151053_|))
                               (declare (not safe))
                               (cons 'K __tmp151052))))
                        (declare (not safe))
                        (cons __tmp151051 '()))))
                 (declare (not safe))
                 (cons __tmp151054 __tmp151050))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj150392
           __tmp151049
           '15
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        __obj150392))))
