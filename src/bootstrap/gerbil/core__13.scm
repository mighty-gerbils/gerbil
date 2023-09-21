(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core$<more-sugar>[2]#_g42498_|
    (##structure
     gx#syntax-quote::t
     'macro-object
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<more-sugar>[2]#_g42500_|
    (##structure
     gx#syntax-quote::t
     'macro-object::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<more-sugar>[2]#_g42501_|
    (##structure
     gx#syntax-quote::t
     'setq-macro::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<more-sugar>[2]#_g42502_|
    (##structure
     gx#syntax-quote::t
     'make-setq-macro
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<more-sugar>[2]#_g42503_|
    (##structure
     gx#syntax-quote::t
     'setq-macro?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<more-sugar>[2]#_g42508_|
    (##structure
     gx#syntax-quote::t
     'setf-macro::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<more-sugar>[2]#_g42509_|
    (##structure
     gx#syntax-quote::t
     'make-setf-macro
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<more-sugar>[2]#_g42510_|
    (##structure
     gx#syntax-quote::t
     'setf-macro?
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core$<more-sugar>[:1:]#setq-macro|
      (let ((__tmp42504 |gerbil/core$<more-sugar>[2]#_g42501_|)
            (__tmp42499
             (cons (cons |gerbil/core$<more-sugar>[2]#_g42500_| '())
                   (cons |gerbil/core$<more-sugar>[2]#_g42501_|
                         (cons |gerbil/core$<more-sugar>[2]#_g42502_|
                               (cons |gerbil/core$<more-sugar>[2]#_g42503_|
                                     (cons '() (cons '() '())))))))
            (__tmp42496
             (let ((__tmp42497 (list |gerbil/core$<more-sugar>[2]#_g42498_|)))
               (declare (not safe))
               (##structure
                |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-exhibitor::t|
                'gerbil.core#setq-macro::t
                __tmp42497
                'setq-macro
                '#f
                '()
                '()))))
        (declare (not safe))
        (make-class-instance
         |gerbil/core$<MOP>$<MOP:2>[1]#extended-class-info::t|
         'runtime-identifier:
         __tmp42504
         'expander-identifiers:
         __tmp42499
         'type-exhibitor:
         __tmp42496)))
    (define |gerbil/core$<more-sugar>[:1:]#setf-macro|
      (let ((__tmp42511 |gerbil/core$<more-sugar>[2]#_g42508_|)
            (__tmp42507
             (cons (cons |gerbil/core$<more-sugar>[2]#_g42500_| '())
                   (cons |gerbil/core$<more-sugar>[2]#_g42508_|
                         (cons |gerbil/core$<more-sugar>[2]#_g42509_|
                               (cons |gerbil/core$<more-sugar>[2]#_g42510_|
                                     (cons '() (cons '() '())))))))
            (__tmp42505
             (let ((__tmp42506 (list |gerbil/core$<more-sugar>[2]#_g42498_|)))
               (declare (not safe))
               (##structure
                |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-exhibitor::t|
                'gerbil.core#setf-macro::t
                __tmp42506
                'setf-macro
                '#f
                '()
                '()))))
        (declare (not safe))
        (make-class-instance
         |gerbil/core$<MOP>$<MOP:2>[1]#extended-class-info::t|
         'runtime-identifier:
         __tmp42511
         'expander-identifiers:
         __tmp42507
         'type-exhibitor:
         __tmp42505)))))
