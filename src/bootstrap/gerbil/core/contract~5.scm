(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~TypeEnv[1]#_g99613_|
    (##structure
     gx#syntax-quote::t
     'type-env::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g99615_|
    (##structure
     gx#syntax-quote::t
     'make-type-env
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g99617_|
    (##structure
     gx#syntax-quote::t
     'type-env?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g99619_|
    (##structure
     gx#syntax-quote::t
     'type-env-var
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g99620_|
    (##structure
     gx#syntax-quote::t
     'type-env-type
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g99621_|
    (##structure
     gx#syntax-quote::t
     'type-env-checked?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g99622_|
    (##structure
     gx#syntax-quote::t
     'type-env-super
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g99624_|
    (##structure
     gx#syntax-quote::t
     'type-env-var-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g99625_|
    (##structure
     gx#syntax-quote::t
     'type-env-type-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g99626_|
    (##structure
     gx#syntax-quote::t
     'type-env-checked?-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g99627_|
    (##structure
     gx#syntax-quote::t
     'type-env-super-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g99629_|
    (##structure
     gx#syntax-quote::t
     '&type-env-var
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g99630_|
    (##structure
     gx#syntax-quote::t
     '&type-env-type
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g99631_|
    (##structure
     gx#syntax-quote::t
     '&type-env-checked?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g99632_|
    (##structure
     gx#syntax-quote::t
     '&type-env-super
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g99634_|
    (##structure
     gx#syntax-quote::t
     '&type-env-var-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g99635_|
    (##structure
     gx#syntax-quote::t
     '&type-env-type-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g99636_|
    (##structure
     gx#syntax-quote::t
     '&type-env-checked?-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g99637_|
    (##structure
     gx#syntax-quote::t
     '&type-env-super-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[:0:]#type-env|
    (let ((__obj99443
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
         __obj99443
         'gerbil/core/contract~TypeEnv#type-env::t
         '1
         '#f
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj99443 'type-env '2 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj99443
         '(var type checked? super)
         '5
         '#f
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj99443 '() '4 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj99443 '#t '8 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj99443 '#t '9 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj99443 '#f '11 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj99443 '#f '12 '#f '#f))
      (let ((__tmp99612 |gerbil/core/contract~TypeEnv[1]#_g99613_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj99443 __tmp99612 '3 '#f '#f))
      (let ((__tmp99614 |gerbil/core/contract~TypeEnv[1]#_g99615_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj99443 __tmp99614 '13 '#f '#f))
      (let ((__tmp99616 |gerbil/core/contract~TypeEnv[1]#_g99617_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj99443 __tmp99616 '14 '#f '#f))
      (let ((__tmp99618
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g99619_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g99620_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g99621_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g99622_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj99443 __tmp99618 '15 '#f '#f))
      (let ((__tmp99623
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g99624_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g99625_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g99626_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g99627_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj99443 __tmp99623 '16 '#f '#f))
      (let ((__tmp99628
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g99629_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g99630_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g99631_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g99632_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj99443 __tmp99628 '17 '#f '#f))
      (let ((__tmp99633
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g99634_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g99635_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g99636_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g99637_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj99443 __tmp99633 '18 '#f '#f))
      __obj99443)))
