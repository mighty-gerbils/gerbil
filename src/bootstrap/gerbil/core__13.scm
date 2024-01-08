(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core$<more-sugar>[2]#_g42971_|
    (##structure
     gx#syntax-quote::t
     'macro-object
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<more-sugar>[2]#_g42973_|
    (##structure
     gx#syntax-quote::t
     'macro-object::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<more-sugar>[2]#_g42974_|
    (##structure
     gx#syntax-quote::t
     'setq-macro::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<more-sugar>[2]#_g42975_|
    (##structure
     gx#syntax-quote::t
     'make-setq-macro
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<more-sugar>[2]#_g42976_|
    (##structure
     gx#syntax-quote::t
     'setq-macro?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<more-sugar>[2]#_g42981_|
    (##structure
     gx#syntax-quote::t
     'setf-macro::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<more-sugar>[2]#_g42982_|
    (##structure
     gx#syntax-quote::t
     'make-setf-macro
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<more-sugar>[2]#_g42983_|
    (##structure
     gx#syntax-quote::t
     'setf-macro?
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core$<more-sugar>[:1:]#setq-macro|
      (let ((__tmp42977 |gerbil/core$<more-sugar>[2]#_g42974_|)
            (__tmp42972
             (cons (cons |gerbil/core$<more-sugar>[2]#_g42973_| '())
                   (cons |gerbil/core$<more-sugar>[2]#_g42974_|
                         (cons |gerbil/core$<more-sugar>[2]#_g42975_|
                               (cons |gerbil/core$<more-sugar>[2]#_g42976_|
                                     (cons '() (cons '() '())))))))
            (__tmp42969
             (let ((__tmp42970 (list |gerbil/core$<more-sugar>[2]#_g42971_|)))
               (declare (not safe))
               (##structure
                |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-exhibitor::t|
                'gerbil.core#setq-macro::t
                __tmp42970
                'setq-macro
                '#f
                '()
                '()))))
        (declare (not safe))
        (make-class-instance
         |gerbil/core$<MOP>$<MOP:2>[1]#extended-class-info::t|
         'runtime-identifier:
         __tmp42977
         'expander-identifiers:
         __tmp42972
         'type-exhibitor:
         __tmp42969)))
    (define |gerbil/core$<more-sugar>[:1:]#setf-macro|
      (let ((__tmp42984 |gerbil/core$<more-sugar>[2]#_g42981_|)
            (__tmp42980
             (cons (cons |gerbil/core$<more-sugar>[2]#_g42973_| '())
                   (cons |gerbil/core$<more-sugar>[2]#_g42981_|
                         (cons |gerbil/core$<more-sugar>[2]#_g42982_|
                               (cons |gerbil/core$<more-sugar>[2]#_g42983_|
                                     (cons '() (cons '() '())))))))
            (__tmp42978
             (let ((__tmp42979 (list |gerbil/core$<more-sugar>[2]#_g42971_|)))
               (declare (not safe))
               (##structure
                |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-exhibitor::t|
                'gerbil.core#setf-macro::t
                __tmp42979
                'setf-macro
                '#f
                '()
                '()))))
        (declare (not safe))
        (make-class-instance
         |gerbil/core$<MOP>$<MOP:2>[1]#extended-class-info::t|
         'runtime-identifier:
         __tmp42984
         'expander-identifiers:
         __tmp42980
         'type-exhibitor:
         __tmp42978)))))
