(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~TypeEnv[1]#_g81196_|
    (##structure
     gx#syntax-quote::t
     'type-env::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g81198_|
    (##structure
     gx#syntax-quote::t
     'make-type-env
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g81200_|
    (##structure
     gx#syntax-quote::t
     'type-env?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g81202_|
    (##structure
     gx#syntax-quote::t
     'type-env-var
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g81203_|
    (##structure
     gx#syntax-quote::t
     'type-env-type
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g81204_|
    (##structure
     gx#syntax-quote::t
     'type-env-checked?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g81205_|
    (##structure
     gx#syntax-quote::t
     'type-env-super
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g81207_|
    (##structure
     gx#syntax-quote::t
     'type-env-var-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g81208_|
    (##structure
     gx#syntax-quote::t
     'type-env-type-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g81209_|
    (##structure
     gx#syntax-quote::t
     'type-env-checked?-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g81210_|
    (##structure
     gx#syntax-quote::t
     'type-env-super-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g81212_|
    (##structure
     gx#syntax-quote::t
     '&type-env-var
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g81213_|
    (##structure
     gx#syntax-quote::t
     '&type-env-type
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g81214_|
    (##structure
     gx#syntax-quote::t
     '&type-env-checked?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g81215_|
    (##structure
     gx#syntax-quote::t
     '&type-env-super
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g81217_|
    (##structure
     gx#syntax-quote::t
     '&type-env-var-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g81218_|
    (##structure
     gx#syntax-quote::t
     '&type-env-type-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g81219_|
    (##structure
     gx#syntax-quote::t
     '&type-env-checked?-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g81220_|
    (##structure
     gx#syntax-quote::t
     '&type-env-super-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[:0:]#type-env|
    (let ((__obj81060
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
         __obj81060
         'gerbil/core/contract~TypeEnv#type-env::t
         '1
         '#f
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj81060 'type-env '2 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj81060
         '(var type checked? super)
         '4
         '#f
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj81060 '() '3 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj81060 '#t '7 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj81060 '#t '8 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj81060 '#f '10 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj81060 '#f '11 '#f '#f))
      (let ((__tmp81195 |gerbil/core/contract~TypeEnv[1]#_g81196_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj81060 __tmp81195 '12 '#f '#f))
      (let ((__tmp81197 |gerbil/core/contract~TypeEnv[1]#_g81198_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj81060 __tmp81197 '13 '#f '#f))
      (let ((__tmp81199 |gerbil/core/contract~TypeEnv[1]#_g81200_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj81060 __tmp81199 '14 '#f '#f))
      (let ((__tmp81201
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g81202_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g81203_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g81204_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g81205_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj81060 __tmp81201 '15 '#f '#f))
      (let ((__tmp81206
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g81207_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g81208_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g81209_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g81210_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj81060 __tmp81206 '16 '#f '#f))
      (let ((__tmp81211
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g81212_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g81213_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g81214_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g81215_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj81060 __tmp81211 '17 '#f '#f))
      (let ((__tmp81216
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g81217_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g81218_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g81219_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g81220_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj81060 __tmp81216 '18 '#f '#f))
      __obj81060)))
