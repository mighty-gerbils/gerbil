(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~TypeEnv[1]#_g92262_|
    (##structure
     gx#syntax-quote::t
     'type-env::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g92264_|
    (##structure
     gx#syntax-quote::t
     'make-type-env
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g92266_|
    (##structure
     gx#syntax-quote::t
     'type-env?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g92268_|
    (##structure
     gx#syntax-quote::t
     'type-env-var
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g92269_|
    (##structure
     gx#syntax-quote::t
     'type-env-type
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g92270_|
    (##structure
     gx#syntax-quote::t
     'type-env-checked?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g92271_|
    (##structure
     gx#syntax-quote::t
     'type-env-super
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g92273_|
    (##structure
     gx#syntax-quote::t
     'type-env-var-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g92274_|
    (##structure
     gx#syntax-quote::t
     'type-env-type-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g92275_|
    (##structure
     gx#syntax-quote::t
     'type-env-checked?-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g92276_|
    (##structure
     gx#syntax-quote::t
     'type-env-super-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g92278_|
    (##structure
     gx#syntax-quote::t
     '&type-env-var
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g92279_|
    (##structure
     gx#syntax-quote::t
     '&type-env-type
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g92280_|
    (##structure
     gx#syntax-quote::t
     '&type-env-checked?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g92281_|
    (##structure
     gx#syntax-quote::t
     '&type-env-super
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g92283_|
    (##structure
     gx#syntax-quote::t
     '&type-env-var-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g92284_|
    (##structure
     gx#syntax-quote::t
     '&type-env-type-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g92285_|
    (##structure
     gx#syntax-quote::t
     '&type-env-checked?-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g92286_|
    (##structure
     gx#syntax-quote::t
     '&type-env-super-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[:0:]#type-env|
    (let ((__obj92101
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
         __obj92101
         'gerbil/core/contract~TypeEnv#type-env::t
         '1
         '#f
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj92101 'type-env '2 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj92101
         '(var type checked? super)
         '5
         '#f
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj92101 '() '4 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj92101 '#t '8 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj92101 '#t '9 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj92101 '#f '11 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj92101 '#f '12 '#f '#f))
      (let ((__tmp92261 |gerbil/core/contract~TypeEnv[1]#_g92262_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj92101 __tmp92261 '3 '#f '#f))
      (let ((__tmp92263 |gerbil/core/contract~TypeEnv[1]#_g92264_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj92101 __tmp92263 '13 '#f '#f))
      (let ((__tmp92265 |gerbil/core/contract~TypeEnv[1]#_g92266_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj92101 __tmp92265 '14 '#f '#f))
      (let ((__tmp92267
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g92268_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g92269_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g92270_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g92271_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj92101 __tmp92267 '15 '#f '#f))
      (let ((__tmp92272
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g92273_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g92274_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g92275_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g92276_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj92101 __tmp92272 '16 '#f '#f))
      (let ((__tmp92277
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g92278_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g92279_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g92280_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g92281_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj92101 __tmp92277 '17 '#f '#f))
      (let ((__tmp92282
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g92283_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g92284_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g92285_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g92286_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj92101 __tmp92282 '18 '#f '#f))
      __obj92101)))
