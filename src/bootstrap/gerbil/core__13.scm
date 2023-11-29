(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core$<more-sugar>[2]#_g42974_|
    (##structure
     gx#syntax-quote::t
     'macro-object
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<more-sugar>[2]#_g42976_|
    (##structure
     gx#syntax-quote::t
     'macro-object::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<more-sugar>[2]#_g42977_|
    (##structure
     gx#syntax-quote::t
     'setq-macro::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<more-sugar>[2]#_g42978_|
    (##structure
     gx#syntax-quote::t
     'make-setq-macro
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<more-sugar>[2]#_g42979_|
    (##structure
     gx#syntax-quote::t
     'setq-macro?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<more-sugar>[2]#_g42984_|
    (##structure
     gx#syntax-quote::t
     'setf-macro::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<more-sugar>[2]#_g42985_|
    (##structure
     gx#syntax-quote::t
     'make-setf-macro
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<more-sugar>[2]#_g42986_|
    (##structure
     gx#syntax-quote::t
     'setf-macro?
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core$<more-sugar>[:1:]#setq-macro|
      (let ((__tmp42980 |gerbil/core$<more-sugar>[2]#_g42977_|)
            (__tmp42975
             (cons (cons |gerbil/core$<more-sugar>[2]#_g42976_| '())
                   (cons |gerbil/core$<more-sugar>[2]#_g42977_|
                         (cons |gerbil/core$<more-sugar>[2]#_g42978_|
                               (cons |gerbil/core$<more-sugar>[2]#_g42979_|
                                     (cons '() (cons '() '())))))))
            (__tmp42972
             (let ((__tmp42973 (list |gerbil/core$<more-sugar>[2]#_g42974_|)))
               (declare (not safe))
               (##structure
                |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-exhibitor::t|
                'gerbil.core#setq-macro::t
                __tmp42973
                'setq-macro
                '#f
                '()
                '()))))
        (declare (not safe))
        (make-class-instance
         |gerbil/core$<MOP>$<MOP:2>[1]#extended-class-info::t|
         'runtime-identifier:
         __tmp42980
         'expander-identifiers:
         __tmp42975
         'type-exhibitor:
         __tmp42972)))
    (define |gerbil/core$<more-sugar>[:1:]#setf-macro|
      (let ((__tmp42987 |gerbil/core$<more-sugar>[2]#_g42984_|)
            (__tmp42983
             (cons (cons |gerbil/core$<more-sugar>[2]#_g42976_| '())
                   (cons |gerbil/core$<more-sugar>[2]#_g42984_|
                         (cons |gerbil/core$<more-sugar>[2]#_g42985_|
                               (cons |gerbil/core$<more-sugar>[2]#_g42986_|
                                     (cons '() (cons '() '())))))))
            (__tmp42981
             (let ((__tmp42982 (list |gerbil/core$<more-sugar>[2]#_g42974_|)))
               (declare (not safe))
               (##structure
                |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-exhibitor::t|
                'gerbil.core#setf-macro::t
                __tmp42982
                'setf-macro
                '#f
                '()
                '()))))
        (declare (not safe))
        (make-class-instance
         |gerbil/core$<MOP>$<MOP:2>[1]#extended-class-info::t|
         'runtime-identifier:
         __tmp42987
         'expander-identifiers:
         __tmp42983
         'type-exhibitor:
         __tmp42981)))))
