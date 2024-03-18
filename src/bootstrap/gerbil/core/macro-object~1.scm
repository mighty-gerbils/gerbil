(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/macro-object[1]#_g36224_|
    (##structure
     gx#syntax-quote::t
     'macro-object::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/macro-object[1]#_g36226_|
    (##structure
     gx#syntax-quote::t
     'make-macro-object
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/macro-object[1]#_g36228_|
    (##structure
     gx#syntax-quote::t
     'macro-object?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/macro-object[1]#_g36232_|
    (##structure
     gx#syntax-quote::t
     'macro-object-macro
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/macro-object[1]#_g36236_|
    (##structure
     gx#syntax-quote::t
     'macro-object-macro-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/macro-object[1]#_g36240_|
    (##structure
     gx#syntax-quote::t
     '&macro-object-macro
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/macro-object[1]#_g36244_|
    (##structure
     gx#syntax-quote::t
     '&macro-object-macro-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/macro-object[:0:]#macro-object|
    (let ((__obj36220
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
         __obj36220
         'gerbil.core#macro-object::t
         '1
         gerbil/core/mop~MOP-2#class-type-info::t
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj36220
         'macro-object
         '2
         gerbil/core/mop~MOP-2#class-type-info::t
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj36220
         '(macro)
         '4
         gerbil/core/mop~MOP-2#class-type-info::t
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj36220
         '()
         '3
         gerbil/core/mop~MOP-2#class-type-info::t
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj36220
         '#f
         '5
         gerbil/core/mop~MOP-2#class-type-info::t
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj36220
         '#f
         '6
         gerbil/core/mop~MOP-2#class-type-info::t
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj36220
         '#f
         '8
         gerbil/core/mop~MOP-2#class-type-info::t
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj36220
         '#f
         '9
         gerbil/core/mop~MOP-2#class-type-info::t
         '#f))
      (let ((__tmp36223 |gerbil/core/macro-object[1]#_g36224_|))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj36220
         __tmp36223
         '10
         gerbil/core/mop~MOP-2#class-type-info::t
         '#f))
      (let ((__tmp36225 |gerbil/core/macro-object[1]#_g36226_|))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj36220
         __tmp36225
         '11
         gerbil/core/mop~MOP-2#class-type-info::t
         '#f))
      (let ((__tmp36227 |gerbil/core/macro-object[1]#_g36228_|))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj36220
         __tmp36227
         '12
         gerbil/core/mop~MOP-2#class-type-info::t
         '#f))
      (let ((__tmp36229
             (let ((__tmp36230
                    (let ((__tmp36231 |gerbil/core/macro-object[1]#_g36232_|))
                      (declare (not safe))
                      (cons 'macro __tmp36231))))
               (declare (not safe))
               (cons __tmp36230 '()))))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj36220
         __tmp36229
         '13
         gerbil/core/mop~MOP-2#class-type-info::t
         '#f))
      (let ((__tmp36233
             (let ((__tmp36234
                    (let ((__tmp36235 |gerbil/core/macro-object[1]#_g36236_|))
                      (declare (not safe))
                      (cons 'macro __tmp36235))))
               (declare (not safe))
               (cons __tmp36234 '()))))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj36220
         __tmp36233
         '14
         gerbil/core/mop~MOP-2#class-type-info::t
         '#f))
      (let ((__tmp36237
             (let ((__tmp36238
                    (let ((__tmp36239 |gerbil/core/macro-object[1]#_g36240_|))
                      (declare (not safe))
                      (cons 'macro __tmp36239))))
               (declare (not safe))
               (cons __tmp36238 '()))))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj36220
         __tmp36237
         '15
         gerbil/core/mop~MOP-2#class-type-info::t
         '#f))
      (let ((__tmp36241
             (let ((__tmp36242
                    (let ((__tmp36243 |gerbil/core/macro-object[1]#_g36244_|))
                      (declare (not safe))
                      (cons 'macro __tmp36243))))
               (declare (not safe))
               (cons __tmp36242 '()))))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj36220
         __tmp36241
         '16
         gerbil/core/mop~MOP-2#class-type-info::t
         '#f))
      __obj36220)))
