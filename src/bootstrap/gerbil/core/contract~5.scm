(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~TypeEnv[1]#_g109210_|
    (##structure
     gx#syntax-quote::t
     'type-env::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g109212_|
    (##structure
     gx#syntax-quote::t
     'make-type-env
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g109214_|
    (##structure
     gx#syntax-quote::t
     'type-env?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g109216_|
    (##structure
     gx#syntax-quote::t
     'type-env-var
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g109217_|
    (##structure
     gx#syntax-quote::t
     'type-env-type
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g109218_|
    (##structure
     gx#syntax-quote::t
     'type-env-checked?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g109219_|
    (##structure
     gx#syntax-quote::t
     'type-env-super
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g109221_|
    (##structure
     gx#syntax-quote::t
     'type-env-var-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g109222_|
    (##structure
     gx#syntax-quote::t
     'type-env-type-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g109223_|
    (##structure
     gx#syntax-quote::t
     'type-env-checked?-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g109224_|
    (##structure
     gx#syntax-quote::t
     'type-env-super-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g109226_|
    (##structure
     gx#syntax-quote::t
     '&type-env-var
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g109227_|
    (##structure
     gx#syntax-quote::t
     '&type-env-type
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g109228_|
    (##structure
     gx#syntax-quote::t
     '&type-env-checked?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g109229_|
    (##structure
     gx#syntax-quote::t
     '&type-env-super
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g109231_|
    (##structure
     gx#syntax-quote::t
     '&type-env-var-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g109232_|
    (##structure
     gx#syntax-quote::t
     '&type-env-type-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g109233_|
    (##structure
     gx#syntax-quote::t
     '&type-env-checked?-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g109234_|
    (##structure
     gx#syntax-quote::t
     '&type-env-super-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[:0:]#type-env|
    (let ((__obj109040
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
         __obj109040
         'gerbil/core/contract~TypeEnv#type-env::t
         '1
         '#f
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj109040 'type-env '2 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj109040
         '(var type checked? super)
         '5
         '#f
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj109040 '() '4 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj109040 '#t '8 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj109040 '#t '9 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj109040 '#f '11 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj109040 '#f '12 '#f '#f))
      (let ((__tmp109209 |gerbil/core/contract~TypeEnv[1]#_g109210_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj109040 __tmp109209 '3 '#f '#f))
      (let ((__tmp109211 |gerbil/core/contract~TypeEnv[1]#_g109212_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj109040 __tmp109211 '13 '#f '#f))
      (let ((__tmp109213 |gerbil/core/contract~TypeEnv[1]#_g109214_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj109040 __tmp109213 '14 '#f '#f))
      (let ((__tmp109215
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g109216_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g109217_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g109218_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g109219_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj109040 __tmp109215 '15 '#f '#f))
      (let ((__tmp109220
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g109221_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g109222_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g109223_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g109224_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj109040 __tmp109220 '16 '#f '#f))
      (let ((__tmp109225
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g109226_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g109227_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g109228_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g109229_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj109040 __tmp109225 '17 '#f '#f))
      (let ((__tmp109230
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g109231_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g109232_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g109233_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g109234_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj109040 __tmp109230 '18 '#f '#f))
      __obj109040)))
