(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core$<more-sugar>[2]#_g42898_|
    (##structure
     gx#syntax-quote::t
     'macro-object
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<more-sugar>[2]#_g42900_|
    (##structure
     gx#syntax-quote::t
     'macro-object::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<more-sugar>[2]#_g42901_|
    (##structure
     gx#syntax-quote::t
     'setq-macro::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<more-sugar>[2]#_g42902_|
    (##structure
     gx#syntax-quote::t
     'make-setq-macro
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<more-sugar>[2]#_g42903_|
    (##structure
     gx#syntax-quote::t
     'setq-macro?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<more-sugar>[2]#_g42908_|
    (##structure
     gx#syntax-quote::t
     'setf-macro::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<more-sugar>[2]#_g42909_|
    (##structure
     gx#syntax-quote::t
     'make-setf-macro
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<more-sugar>[2]#_g42910_|
    (##structure
     gx#syntax-quote::t
     'setf-macro?
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core$<more-sugar>[:1:]#setq-macro|
      (let ((__tmp42904 |gerbil/core$<more-sugar>[2]#_g42901_|)
            (__tmp42899
             (cons (cons |gerbil/core$<more-sugar>[2]#_g42900_| '())
                   (cons |gerbil/core$<more-sugar>[2]#_g42901_|
                         (cons |gerbil/core$<more-sugar>[2]#_g42902_|
                               (cons |gerbil/core$<more-sugar>[2]#_g42903_|
                                     (cons '() (cons '() '())))))))
            (__tmp42896
             (let ((__tmp42897 (list |gerbil/core$<more-sugar>[2]#_g42898_|)))
               (declare (not safe))
               (##structure
                |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-exhibitor::t|
                'gerbil.core#setq-macro::t
                __tmp42897
                'setq-macro
                '#f
                '()
                '()))))
        (declare (not safe))
        (make-class-instance
         |gerbil/core$<MOP>$<MOP:2>[1]#extended-class-info::t|
         'runtime-identifier:
         __tmp42904
         'expander-identifiers:
         __tmp42899
         'type-exhibitor:
         __tmp42896)))
    (define |gerbil/core$<more-sugar>[:1:]#setf-macro|
      (let ((__tmp42911 |gerbil/core$<more-sugar>[2]#_g42908_|)
            (__tmp42907
             (cons (cons |gerbil/core$<more-sugar>[2]#_g42900_| '())
                   (cons |gerbil/core$<more-sugar>[2]#_g42908_|
                         (cons |gerbil/core$<more-sugar>[2]#_g42909_|
                               (cons |gerbil/core$<more-sugar>[2]#_g42910_|
                                     (cons '() (cons '() '())))))))
            (__tmp42905
             (let ((__tmp42906 (list |gerbil/core$<more-sugar>[2]#_g42898_|)))
               (declare (not safe))
               (##structure
                |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-exhibitor::t|
                'gerbil.core#setf-macro::t
                __tmp42906
                'setf-macro
                '#f
                '()
                '()))))
        (declare (not safe))
        (make-class-instance
         |gerbil/core$<MOP>$<MOP:2>[1]#extended-class-info::t|
         'runtime-identifier:
         __tmp42911
         'expander-identifiers:
         __tmp42907
         'type-exhibitor:
         __tmp42905)))))
