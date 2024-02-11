(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g183203_|
    (##structure
     gx#syntax-quote::t
     'expander
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g183205_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g183207_|
    (##structure
     gx#syntax-quote::t
     'make-syntax-pattern
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g183209_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g183215_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g183218_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-depth
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g183221_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-id
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g183227_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g183230_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-depth-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g183233_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-id-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g183239_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g183242_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-depth
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g183245_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-id
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g183251_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g183254_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-depth-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g183257_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-id-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[:0:]#syntax-pattern|
    (let ((__obj182954
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
         __obj182954
         'gx#syntax-pattern::t
         '1
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj182954
         'syntax-pattern
         '2
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj182954
         '(id depth)
         '4
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp183201
             (let ((__tmp183202 |gx[1]#_g183203_|))
               (declare (not safe))
               (cons __tmp183202 '()))))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj182954
         __tmp183201
         '3
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj182954
         '#t
         '5
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj182954
         '#f
         '6
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj182954
         '#f
         '7
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp183204 |gx[1]#_g183205_|))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj182954
         __tmp183204
         '8
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp183206 |gx[1]#_g183207_|))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj182954
         __tmp183206
         '9
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp183208 |gx[1]#_g183209_|))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj182954
         __tmp183208
         '10
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp183210
             (let ((__tmp183219
                    (let ((__tmp183220 |gx[1]#_g183221_|))
                      (declare (not safe))
                      (cons 'id __tmp183220)))
                   (__tmp183211
                    (let ((__tmp183216
                           (let ((__tmp183217 |gx[1]#_g183218_|))
                             (declare (not safe))
                             (cons 'depth __tmp183217)))
                          (__tmp183212
                           (let ((__tmp183213
                                  (let ((__tmp183214 |gx[1]#_g183215_|))
                                    (declare (not safe))
                                    (cons 'e __tmp183214))))
                             (declare (not safe))
                             (cons __tmp183213 '()))))
                      (declare (not safe))
                      (cons __tmp183216 __tmp183212))))
               (declare (not safe))
               (cons __tmp183219 __tmp183211))))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj182954
         __tmp183210
         '11
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp183222
             (let ((__tmp183231
                    (let ((__tmp183232 |gx[1]#_g183233_|))
                      (declare (not safe))
                      (cons 'id __tmp183232)))
                   (__tmp183223
                    (let ((__tmp183228
                           (let ((__tmp183229 |gx[1]#_g183230_|))
                             (declare (not safe))
                             (cons 'depth __tmp183229)))
                          (__tmp183224
                           (let ((__tmp183225
                                  (let ((__tmp183226 |gx[1]#_g183227_|))
                                    (declare (not safe))
                                    (cons 'e __tmp183226))))
                             (declare (not safe))
                             (cons __tmp183225 '()))))
                      (declare (not safe))
                      (cons __tmp183228 __tmp183224))))
               (declare (not safe))
               (cons __tmp183231 __tmp183223))))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj182954
         __tmp183222
         '12
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp183234
             (let ((__tmp183243
                    (let ((__tmp183244 |gx[1]#_g183245_|))
                      (declare (not safe))
                      (cons 'id __tmp183244)))
                   (__tmp183235
                    (let ((__tmp183240
                           (let ((__tmp183241 |gx[1]#_g183242_|))
                             (declare (not safe))
                             (cons 'depth __tmp183241)))
                          (__tmp183236
                           (let ((__tmp183237
                                  (let ((__tmp183238 |gx[1]#_g183239_|))
                                    (declare (not safe))
                                    (cons 'e __tmp183238))))
                             (declare (not safe))
                             (cons __tmp183237 '()))))
                      (declare (not safe))
                      (cons __tmp183240 __tmp183236))))
               (declare (not safe))
               (cons __tmp183243 __tmp183235))))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj182954
         __tmp183234
         '13
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp183246
             (let ((__tmp183255
                    (let ((__tmp183256 |gx[1]#_g183257_|))
                      (declare (not safe))
                      (cons 'id __tmp183256)))
                   (__tmp183247
                    (let ((__tmp183252
                           (let ((__tmp183253 |gx[1]#_g183254_|))
                             (declare (not safe))
                             (cons 'depth __tmp183253)))
                          (__tmp183248
                           (let ((__tmp183249
                                  (let ((__tmp183250 |gx[1]#_g183251_|))
                                    (declare (not safe))
                                    (cons 'e __tmp183250))))
                             (declare (not safe))
                             (cons __tmp183249 '()))))
                      (declare (not safe))
                      (cons __tmp183252 __tmp183248))))
               (declare (not safe))
               (cons __tmp183255 __tmp183247))))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj182954
         __tmp183246
         '14
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      __obj182954)))
