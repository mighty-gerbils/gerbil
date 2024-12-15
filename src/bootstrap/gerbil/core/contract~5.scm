(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~TypeEnv[1]#_g84887_|
    (##structure
     gx#syntax-quote::t
     'type-env::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g84889_|
    (##structure
     gx#syntax-quote::t
     'make-type-env
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g84891_|
    (##structure
     gx#syntax-quote::t
     'type-env?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g84893_|
    (##structure
     gx#syntax-quote::t
     'type-env-var
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g84894_|
    (##structure
     gx#syntax-quote::t
     'type-env-type
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g84895_|
    (##structure
     gx#syntax-quote::t
     'type-env-checked?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g84896_|
    (##structure
     gx#syntax-quote::t
     'type-env-super
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g84898_|
    (##structure
     gx#syntax-quote::t
     'type-env-var-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g84899_|
    (##structure
     gx#syntax-quote::t
     'type-env-type-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g84900_|
    (##structure
     gx#syntax-quote::t
     'type-env-checked?-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g84901_|
    (##structure
     gx#syntax-quote::t
     'type-env-super-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g84903_|
    (##structure
     gx#syntax-quote::t
     '&type-env-var
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g84904_|
    (##structure
     gx#syntax-quote::t
     '&type-env-type
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g84905_|
    (##structure
     gx#syntax-quote::t
     '&type-env-checked?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g84906_|
    (##structure
     gx#syntax-quote::t
     '&type-env-super
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g84908_|
    (##structure
     gx#syntax-quote::t
     '&type-env-var-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g84909_|
    (##structure
     gx#syntax-quote::t
     '&type-env-type-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g84910_|
    (##structure
     gx#syntax-quote::t
     '&type-env-checked?-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g84911_|
    (##structure
     gx#syntax-quote::t
     '&type-env-super-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[:0:]#type-env|
    (let ((__obj84741
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
              '#f
              '#f
              '#f
              '#f
              '#f
              '#f))))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj84741
         'gerbil/core/contract~TypeEnv#type-env::t
         '1
         '#f
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj84741 'type-env '2 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj84741
         '(var type checked? super)
         '4
         '#f
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj84741 '() '3 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj84741 '#t '7 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj84741 '#t '8 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj84741 '#f '10 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj84741 '#f '11 '#f '#f))
      (let ((__tmp84886 |gerbil/core/contract~TypeEnv[1]#_g84887_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj84741 __tmp84886 '12 '#f '#f))
      (let ((__tmp84888 |gerbil/core/contract~TypeEnv[1]#_g84889_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj84741 __tmp84888 '13 '#f '#f))
      (let ((__tmp84890 |gerbil/core/contract~TypeEnv[1]#_g84891_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj84741 __tmp84890 '14 '#f '#f))
      (let ((__tmp84892
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g84893_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g84894_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g84895_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g84896_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj84741 __tmp84892 '15 '#f '#f))
      (let ((__tmp84897
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g84898_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g84899_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g84900_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g84901_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj84741 __tmp84897 '16 '#f '#f))
      (let ((__tmp84902
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g84903_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g84904_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g84905_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g84906_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj84741 __tmp84902 '17 '#f '#f))
      (let ((__tmp84907
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g84908_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g84909_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g84910_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g84911_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj84741 __tmp84907 '18 '#f '#f))
      __obj84741)))
