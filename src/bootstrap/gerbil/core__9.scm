(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core$<MOP>$<MOP:3>[2]#_g42267_|
    (##structure
     gx#syntax-quote::t
     'runtime-type-info::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<MOP>$<MOP:3>[2]#_g42268_|
    (##structure
     gx#syntax-quote::t
     'runtime-struct-info::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<MOP>$<MOP:3>[2]#_g42269_|
    (##structure
     gx#syntax-quote::t
     'runtime-class-info::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<MOP>$<MOP:3>[2]#_g42270_|
    (##structure
     gx#syntax-quote::t
     'expander-type-info::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<MOP>$<MOP:3>[2]#_g42271_|
    (##structure
     gx#syntax-quote::t
     'extended-runtime-type-info::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<MOP>$<MOP:3>[2]#_g42272_|
    (##structure
     gx#syntax-quote::t
     'extended-struct-info::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<MOP>$<MOP:3>[2]#_g42273_|
    (##structure
     gx#syntax-quote::t
     'extended-class-info::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<MOP>$<MOP:3>[2]#_g42274_|
    (##structure
     gx#syntax-quote::t
     'runtime-rtd-exhibitor::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<MOP>$<MOP:3>[2]#_g42275_|
    (##structure
     gx#syntax-quote::t
     'runtime-struct-exhibitor::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<MOP>$<MOP:3>[2]#_g42276_|
    (##structure
     gx#syntax-quote::t
     'runtime-class-exhibitor::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<MOP>$<MOP:3>[2]#_g42277_|
    (##structure
     gx#syntax-quote::t
     'macro-object::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<MOP>$<MOP:3>[2]#_g42278_|
    (##structure
     gx#syntax-quote::t
     'make-macro-object
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<MOP>$<MOP:3>[2]#_g42279_|
    (##structure
     gx#syntax-quote::t
     'macro-object?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<MOP>$<MOP:3>[2]#_g42280_|
    (##structure
     gx#syntax-quote::t
     'macro-object-macro
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<MOP>$<MOP:3>[2]#_g42281_|
    (##structure
     gx#syntax-quote::t
     'macro-object-macro-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core$<MOP>$<MOP:3>[:1:]#runtime-type-info|
      (make-class-instance
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-info::t|
       'runtime-identifier:
       |gerbil/core$<MOP>$<MOP:3>[2]#_g42267_|))
    (define |gerbil/core$<MOP>$<MOP:3>[:1:]#runtime-struct-info|
      (make-class-instance
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-info::t|
       'runtime-identifier:
       |gerbil/core$<MOP>$<MOP:3>[2]#_g42268_|))
    (define |gerbil/core$<MOP>$<MOP:3>[:1:]#runtime-class-info|
      (make-class-instance
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-info::t|
       'runtime-identifier:
       |gerbil/core$<MOP>$<MOP:3>[2]#_g42269_|))
    (define |gerbil/core$<MOP>$<MOP:3>[:1:]#expander-type-info|
      (make-class-instance
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-info::t|
       'runtime-identifier:
       |gerbil/core$<MOP>$<MOP:3>[2]#_g42270_|))
    (define |gerbil/core$<MOP>$<MOP:3>[:1:]#extended-runtime-type-info|
      (make-class-instance
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-info::t|
       'runtime-identifier:
       |gerbil/core$<MOP>$<MOP:3>[2]#_g42271_|))
    (define |gerbil/core$<MOP>$<MOP:3>[:1:]#extended-struct-info|
      (make-class-instance
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-info::t|
       'runtime-identifier:
       |gerbil/core$<MOP>$<MOP:3>[2]#_g42272_|))
    (define |gerbil/core$<MOP>$<MOP:3>[:1:]#extended-class-info|
      (make-class-instance
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-info::t|
       'runtime-identifier:
       |gerbil/core$<MOP>$<MOP:3>[2]#_g42273_|))
    (define |gerbil/core$<MOP>$<MOP:3>[:1:]#runtime-rtd-exhibitor|
      (make-class-instance
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-info::t|
       'runtime-identifier:
       |gerbil/core$<MOP>$<MOP:3>[2]#_g42274_|))
    (define |gerbil/core$<MOP>$<MOP:3>[:1:]#runtime-struct-exhibitor|
      (make-class-instance
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-info::t|
       'runtime-identifier:
       |gerbil/core$<MOP>$<MOP:3>[2]#_g42275_|))
    (define |gerbil/core$<MOP>$<MOP:3>[:1:]#runtime-class-exhibitor|
      (make-class-instance
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-info::t|
       'runtime-identifier:
       |gerbil/core$<MOP>$<MOP:3>[2]#_g42276_|))
    (define |gerbil/core$<MOP>$<MOP:3>[:1:]#macro-object|
      (make-class-instance
       |gerbil/core$<MOP>$<MOP:2>[1]#extended-class-info::t|
       'runtime-identifier:
       |gerbil/core$<MOP>$<MOP:3>[2]#_g42277_|
       'expander-identifiers:
       (cons '()
             (cons |gerbil/core$<MOP>$<MOP:3>[2]#_g42277_|
                   (cons |gerbil/core$<MOP>$<MOP:3>[2]#_g42278_|
                         (cons |gerbil/core$<MOP>$<MOP:3>[2]#_g42279_|
                               (cons (cons |gerbil/core$<MOP>$<MOP:3>[2]#_g42280_|
                                           '())
                                     (cons (cons |gerbil/core$<MOP>$<MOP:3>[2]#_g42281_|
                                                 '())
                                           '()))))))
       'type-exhibitor:
       (let ((__tmp42282 (list)))
         (declare (not safe))
         (##structure
          |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-exhibitor::t|
          'gerbil.core#macro-object::t
          __tmp42282
          'macro-object
          '#f
          '()
          '(macro)))))))
