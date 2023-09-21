(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core$<MOP>$<MOP:3>[2]#_g42325_|
    (##structure
     gx#syntax-quote::t
     'runtime-type-info::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<MOP>$<MOP:3>[2]#_g42327_|
    (##structure
     gx#syntax-quote::t
     'runtime-struct-info::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<MOP>$<MOP:3>[2]#_g42329_|
    (##structure
     gx#syntax-quote::t
     'runtime-class-info::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<MOP>$<MOP:3>[2]#_g42331_|
    (##structure
     gx#syntax-quote::t
     'expander-type-info::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<MOP>$<MOP:3>[2]#_g42333_|
    (##structure
     gx#syntax-quote::t
     'extended-runtime-type-info::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<MOP>$<MOP:3>[2]#_g42335_|
    (##structure
     gx#syntax-quote::t
     'extended-struct-info::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<MOP>$<MOP:3>[2]#_g42337_|
    (##structure
     gx#syntax-quote::t
     'extended-class-info::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<MOP>$<MOP:3>[2]#_g42339_|
    (##structure
     gx#syntax-quote::t
     'runtime-rtd-exhibitor::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<MOP>$<MOP:3>[2]#_g42341_|
    (##structure
     gx#syntax-quote::t
     'runtime-struct-exhibitor::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<MOP>$<MOP:3>[2]#_g42343_|
    (##structure
     gx#syntax-quote::t
     'runtime-class-exhibitor::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<MOP>$<MOP:3>[2]#_g42347_|
    (##structure
     gx#syntax-quote::t
     'macro-object::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<MOP>$<MOP:3>[2]#_g42348_|
    (##structure
     gx#syntax-quote::t
     'make-macro-object
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<MOP>$<MOP:3>[2]#_g42349_|
    (##structure
     gx#syntax-quote::t
     'macro-object?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<MOP>$<MOP:3>[2]#_g42350_|
    (##structure
     gx#syntax-quote::t
     'macro-object-macro
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<MOP>$<MOP:3>[2]#_g42351_|
    (##structure
     gx#syntax-quote::t
     'macro-object-macro-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core$<MOP>$<MOP:3>[:1:]#runtime-type-info|
      (let ((__tmp42324 |gerbil/core$<MOP>$<MOP:3>[2]#_g42325_|))
        (declare (not safe))
        (make-class-instance
         |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-info::t|
         'runtime-identifier:
         __tmp42324)))
    (define |gerbil/core$<MOP>$<MOP:3>[:1:]#runtime-struct-info|
      (let ((__tmp42326 |gerbil/core$<MOP>$<MOP:3>[2]#_g42327_|))
        (declare (not safe))
        (make-class-instance
         |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-info::t|
         'runtime-identifier:
         __tmp42326)))
    (define |gerbil/core$<MOP>$<MOP:3>[:1:]#runtime-class-info|
      (let ((__tmp42328 |gerbil/core$<MOP>$<MOP:3>[2]#_g42329_|))
        (declare (not safe))
        (make-class-instance
         |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-info::t|
         'runtime-identifier:
         __tmp42328)))
    (define |gerbil/core$<MOP>$<MOP:3>[:1:]#expander-type-info|
      (let ((__tmp42330 |gerbil/core$<MOP>$<MOP:3>[2]#_g42331_|))
        (declare (not safe))
        (make-class-instance
         |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-info::t|
         'runtime-identifier:
         __tmp42330)))
    (define |gerbil/core$<MOP>$<MOP:3>[:1:]#extended-runtime-type-info|
      (let ((__tmp42332 |gerbil/core$<MOP>$<MOP:3>[2]#_g42333_|))
        (declare (not safe))
        (make-class-instance
         |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-info::t|
         'runtime-identifier:
         __tmp42332)))
    (define |gerbil/core$<MOP>$<MOP:3>[:1:]#extended-struct-info|
      (let ((__tmp42334 |gerbil/core$<MOP>$<MOP:3>[2]#_g42335_|))
        (declare (not safe))
        (make-class-instance
         |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-info::t|
         'runtime-identifier:
         __tmp42334)))
    (define |gerbil/core$<MOP>$<MOP:3>[:1:]#extended-class-info|
      (let ((__tmp42336 |gerbil/core$<MOP>$<MOP:3>[2]#_g42337_|))
        (declare (not safe))
        (make-class-instance
         |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-info::t|
         'runtime-identifier:
         __tmp42336)))
    (define |gerbil/core$<MOP>$<MOP:3>[:1:]#runtime-rtd-exhibitor|
      (let ((__tmp42338 |gerbil/core$<MOP>$<MOP:3>[2]#_g42339_|))
        (declare (not safe))
        (make-class-instance
         |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-info::t|
         'runtime-identifier:
         __tmp42338)))
    (define |gerbil/core$<MOP>$<MOP:3>[:1:]#runtime-struct-exhibitor|
      (let ((__tmp42340 |gerbil/core$<MOP>$<MOP:3>[2]#_g42341_|))
        (declare (not safe))
        (make-class-instance
         |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-info::t|
         'runtime-identifier:
         __tmp42340)))
    (define |gerbil/core$<MOP>$<MOP:3>[:1:]#runtime-class-exhibitor|
      (let ((__tmp42342 |gerbil/core$<MOP>$<MOP:3>[2]#_g42343_|))
        (declare (not safe))
        (make-class-instance
         |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-info::t|
         'runtime-identifier:
         __tmp42342)))
    (define |gerbil/core$<MOP>$<MOP:3>[:1:]#macro-object|
      (let ((__tmp42352 |gerbil/core$<MOP>$<MOP:3>[2]#_g42347_|)
            (__tmp42346
             (cons '()
                   (cons |gerbil/core$<MOP>$<MOP:3>[2]#_g42347_|
                         (cons |gerbil/core$<MOP>$<MOP:3>[2]#_g42348_|
                               (cons |gerbil/core$<MOP>$<MOP:3>[2]#_g42349_|
                                     (cons (cons |gerbil/core$<MOP>$<MOP:3>[2]#_g42350_|
                                                 '())
                                           (cons (cons |gerbil/core$<MOP>$<MOP:3>[2]#_g42351_|
                                                       '())
                                                 '())))))))
            (__tmp42344
             (let ((__tmp42345 (list)))
               (declare (not safe))
               (##structure
                |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-exhibitor::t|
                'gerbil.core#macro-object::t
                __tmp42345
                'macro-object
                '#f
                '()
                '(macro)))))
        (declare (not safe))
        (make-class-instance
         |gerbil/core$<MOP>$<MOP:2>[1]#extended-class-info::t|
         'runtime-identifier:
         __tmp42352
         'expander-identifiers:
         __tmp42346
         'type-exhibitor:
         __tmp42344)))))
