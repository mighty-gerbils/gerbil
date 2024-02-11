(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g183210_|
    (##structure
     gx#syntax-quote::t
     'expander
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g183212_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g183214_|
    (##structure
     gx#syntax-quote::t
     'make-syntax-pattern
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g183216_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g183222_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g183225_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-depth
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g183228_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-id
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g183234_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g183237_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-depth-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g183240_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-id-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g183246_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g183249_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-depth
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g183252_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-id
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g183258_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g183261_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-depth-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g183264_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-id-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[:0:]#syntax-pattern|
    (let ((__obj182961
           (let ()
             (declare (not safe))
             (##structure
              gerbil/core$<MOP>$<MOP:2>#class-type-info::t
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
         __obj182961
         'gx#syntax-pattern::t
         '1
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj182961
         'syntax-pattern
         '2
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj182961
         '(id depth)
         '4
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp183208
             (let ((__tmp183209 |gx[1]#_g183210_|))
               (declare (not safe))
               (cons __tmp183209 '()))))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj182961
         __tmp183208
         '3
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj182961
         '#t
         '5
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj182961
         '#f
         '6
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj182961
         '#f
         '7
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp183211 |gx[1]#_g183212_|))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj182961
         __tmp183211
         '8
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp183213 |gx[1]#_g183214_|))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj182961
         __tmp183213
         '9
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp183215 |gx[1]#_g183216_|))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj182961
         __tmp183215
         '10
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp183217
             (let ((__tmp183226
                    (let ((__tmp183227 |gx[1]#_g183228_|))
                      (declare (not safe))
                      (cons 'id __tmp183227)))
                   (__tmp183218
                    (let ((__tmp183223
                           (let ((__tmp183224 |gx[1]#_g183225_|))
                             (declare (not safe))
                             (cons 'depth __tmp183224)))
                          (__tmp183219
                           (let ((__tmp183220
                                  (let ((__tmp183221 |gx[1]#_g183222_|))
                                    (declare (not safe))
                                    (cons 'e __tmp183221))))
                             (declare (not safe))
                             (cons __tmp183220 '()))))
                      (declare (not safe))
                      (cons __tmp183223 __tmp183219))))
               (declare (not safe))
               (cons __tmp183226 __tmp183218))))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj182961
         __tmp183217
         '11
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp183229
             (let ((__tmp183238
                    (let ((__tmp183239 |gx[1]#_g183240_|))
                      (declare (not safe))
                      (cons 'id __tmp183239)))
                   (__tmp183230
                    (let ((__tmp183235
                           (let ((__tmp183236 |gx[1]#_g183237_|))
                             (declare (not safe))
                             (cons 'depth __tmp183236)))
                          (__tmp183231
                           (let ((__tmp183232
                                  (let ((__tmp183233 |gx[1]#_g183234_|))
                                    (declare (not safe))
                                    (cons 'e __tmp183233))))
                             (declare (not safe))
                             (cons __tmp183232 '()))))
                      (declare (not safe))
                      (cons __tmp183235 __tmp183231))))
               (declare (not safe))
               (cons __tmp183238 __tmp183230))))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj182961
         __tmp183229
         '12
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp183241
             (let ((__tmp183250
                    (let ((__tmp183251 |gx[1]#_g183252_|))
                      (declare (not safe))
                      (cons 'id __tmp183251)))
                   (__tmp183242
                    (let ((__tmp183247
                           (let ((__tmp183248 |gx[1]#_g183249_|))
                             (declare (not safe))
                             (cons 'depth __tmp183248)))
                          (__tmp183243
                           (let ((__tmp183244
                                  (let ((__tmp183245 |gx[1]#_g183246_|))
                                    (declare (not safe))
                                    (cons 'e __tmp183245))))
                             (declare (not safe))
                             (cons __tmp183244 '()))))
                      (declare (not safe))
                      (cons __tmp183247 __tmp183243))))
               (declare (not safe))
               (cons __tmp183250 __tmp183242))))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj182961
         __tmp183241
         '13
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp183253
             (let ((__tmp183262
                    (let ((__tmp183263 |gx[1]#_g183264_|))
                      (declare (not safe))
                      (cons 'id __tmp183263)))
                   (__tmp183254
                    (let ((__tmp183259
                           (let ((__tmp183260 |gx[1]#_g183261_|))
                             (declare (not safe))
                             (cons 'depth __tmp183260)))
                          (__tmp183255
                           (let ((__tmp183256
                                  (let ((__tmp183257 |gx[1]#_g183258_|))
                                    (declare (not safe))
                                    (cons 'e __tmp183257))))
                             (declare (not safe))
                             (cons __tmp183256 '()))))
                      (declare (not safe))
                      (cons __tmp183259 __tmp183255))))
               (declare (not safe))
               (cons __tmp183262 __tmp183254))))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj182961
         __tmp183253
         '14
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      __obj182961)))
