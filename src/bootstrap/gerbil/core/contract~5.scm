(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~TypeEnv[1]#_g92673_|
    (##structure
     gx#syntax-quote::t
     'type-env::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g92675_|
    (##structure
     gx#syntax-quote::t
     'make-type-env
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g92677_|
    (##structure
     gx#syntax-quote::t
     'type-env?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g92679_|
    (##structure
     gx#syntax-quote::t
     'type-env-var
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g92680_|
    (##structure
     gx#syntax-quote::t
     'type-env-type
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g92681_|
    (##structure
     gx#syntax-quote::t
     'type-env-checked?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g92682_|
    (##structure
     gx#syntax-quote::t
     'type-env-super
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g92684_|
    (##structure
     gx#syntax-quote::t
     'type-env-var-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g92685_|
    (##structure
     gx#syntax-quote::t
     'type-env-type-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g92686_|
    (##structure
     gx#syntax-quote::t
     'type-env-checked?-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g92687_|
    (##structure
     gx#syntax-quote::t
     'type-env-super-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g92689_|
    (##structure
     gx#syntax-quote::t
     '&type-env-var
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g92690_|
    (##structure
     gx#syntax-quote::t
     '&type-env-type
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g92691_|
    (##structure
     gx#syntax-quote::t
     '&type-env-checked?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g92692_|
    (##structure
     gx#syntax-quote::t
     '&type-env-super
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g92694_|
    (##structure
     gx#syntax-quote::t
     '&type-env-var-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g92695_|
    (##structure
     gx#syntax-quote::t
     '&type-env-type-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g92696_|
    (##structure
     gx#syntax-quote::t
     '&type-env-checked?-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g92697_|
    (##structure
     gx#syntax-quote::t
     '&type-env-super-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[:0:]#type-env|
    (let ((__obj92512
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
         __obj92512
         'gerbil/core/contract~TypeEnv#type-env::t
         '1
         '#f
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj92512 'type-env '2 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj92512
         '(var type checked? super)
         '5
         '#f
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj92512 '() '4 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj92512 '#t '8 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj92512 '#t '9 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj92512 '#f '11 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj92512 '#f '12 '#f '#f))
      (let ((__tmp92672 |gerbil/core/contract~TypeEnv[1]#_g92673_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj92512 __tmp92672 '3 '#f '#f))
      (let ((__tmp92674 |gerbil/core/contract~TypeEnv[1]#_g92675_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj92512 __tmp92674 '13 '#f '#f))
      (let ((__tmp92676 |gerbil/core/contract~TypeEnv[1]#_g92677_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj92512 __tmp92676 '14 '#f '#f))
      (let ((__tmp92678
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g92679_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g92680_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g92681_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g92682_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj92512 __tmp92678 '15 '#f '#f))
      (let ((__tmp92683
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g92684_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g92685_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g92686_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g92687_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj92512 __tmp92683 '16 '#f '#f))
      (let ((__tmp92688
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g92689_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g92690_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g92691_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g92692_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj92512 __tmp92688 '17 '#f '#f))
      (let ((__tmp92693
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g92694_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g92695_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g92696_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g92697_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj92512 __tmp92693 '18 '#f '#f))
      __obj92512)))
