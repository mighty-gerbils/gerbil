(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core$<more-sugar>[2]#_g42952_|
    (##structure
     gx#syntax-quote::t
     'macro-object
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<more-sugar>[2]#_g42954_|
    (##structure
     gx#syntax-quote::t
     'macro-object::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<more-sugar>[2]#_g42955_|
    (##structure
     gx#syntax-quote::t
     'setq-macro::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<more-sugar>[2]#_g42956_|
    (##structure
     gx#syntax-quote::t
     'make-setq-macro
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<more-sugar>[2]#_g42957_|
    (##structure
     gx#syntax-quote::t
     'setq-macro?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<more-sugar>[2]#_g42962_|
    (##structure
     gx#syntax-quote::t
     'setf-macro::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<more-sugar>[2]#_g42963_|
    (##structure
     gx#syntax-quote::t
     'make-setf-macro
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<more-sugar>[2]#_g42964_|
    (##structure
     gx#syntax-quote::t
     'setf-macro?
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core$<more-sugar>[:1:]#setq-macro|
      (let ((__tmp42958 |gerbil/core$<more-sugar>[2]#_g42955_|)
            (__tmp42953
             (cons (cons |gerbil/core$<more-sugar>[2]#_g42954_| '())
                   (cons |gerbil/core$<more-sugar>[2]#_g42955_|
                         (cons |gerbil/core$<more-sugar>[2]#_g42956_|
                               (cons |gerbil/core$<more-sugar>[2]#_g42957_|
                                     (cons '() (cons '() '())))))))
            (__tmp42950
             (let ((__tmp42951 (list |gerbil/core$<more-sugar>[2]#_g42952_|)))
               (declare (not safe))
               (##structure
                |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-exhibitor::t|
                'gerbil.core#setq-macro::t
                __tmp42951
                'setq-macro
                '#f
                '()
                '()))))
        (declare (not safe))
        (make-class-instance
         |gerbil/core$<MOP>$<MOP:2>[1]#extended-class-info::t|
         'runtime-identifier:
         __tmp42958
         'expander-identifiers:
         __tmp42953
         'type-exhibitor:
         __tmp42950)))
    (define |gerbil/core$<more-sugar>[:1:]#setf-macro|
      (let ((__tmp42965 |gerbil/core$<more-sugar>[2]#_g42962_|)
            (__tmp42961
             (cons (cons |gerbil/core$<more-sugar>[2]#_g42954_| '())
                   (cons |gerbil/core$<more-sugar>[2]#_g42962_|
                         (cons |gerbil/core$<more-sugar>[2]#_g42963_|
                               (cons |gerbil/core$<more-sugar>[2]#_g42964_|
                                     (cons '() (cons '() '())))))))
            (__tmp42959
             (let ((__tmp42960 (list |gerbil/core$<more-sugar>[2]#_g42952_|)))
               (declare (not safe))
               (##structure
                |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-exhibitor::t|
                'gerbil.core#setf-macro::t
                __tmp42960
                'setf-macro
                '#f
                '()
                '()))))
        (declare (not safe))
        (make-class-instance
         |gerbil/core$<MOP>$<MOP:2>[1]#extended-class-info::t|
         'runtime-identifier:
         __tmp42965
         'expander-identifiers:
         __tmp42961
         'type-exhibitor:
         __tmp42959)))))
