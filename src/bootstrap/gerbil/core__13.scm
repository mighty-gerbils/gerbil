(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core$<more-sugar>[2]#_g42591_|
    (##structure
     gx#syntax-quote::t
     'macro-object
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<more-sugar>[2]#_g42593_|
    (##structure
     gx#syntax-quote::t
     'macro-object::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<more-sugar>[2]#_g42594_|
    (##structure
     gx#syntax-quote::t
     'setq-macro::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<more-sugar>[2]#_g42595_|
    (##structure
     gx#syntax-quote::t
     'make-setq-macro
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<more-sugar>[2]#_g42596_|
    (##structure
     gx#syntax-quote::t
     'setq-macro?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<more-sugar>[2]#_g42601_|
    (##structure
     gx#syntax-quote::t
     'setf-macro::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<more-sugar>[2]#_g42602_|
    (##structure
     gx#syntax-quote::t
     'make-setf-macro
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<more-sugar>[2]#_g42603_|
    (##structure
     gx#syntax-quote::t
     'setf-macro?
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core$<more-sugar>[:1:]#setq-macro|
      (let ((__tmp42597 |gerbil/core$<more-sugar>[2]#_g42594_|)
            (__tmp42592
             (cons (cons |gerbil/core$<more-sugar>[2]#_g42593_| '())
                   (cons |gerbil/core$<more-sugar>[2]#_g42594_|
                         (cons |gerbil/core$<more-sugar>[2]#_g42595_|
                               (cons |gerbil/core$<more-sugar>[2]#_g42596_|
                                     (cons '() (cons '() '())))))))
            (__tmp42589
             (let ((__tmp42590 (list |gerbil/core$<more-sugar>[2]#_g42591_|)))
               (declare (not safe))
               (##structure
                |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-exhibitor::t|
                'gerbil.core#setq-macro::t
                __tmp42590
                'setq-macro
                '#f
                '()
                '()))))
        (declare (not safe))
        (make-class-instance
         |gerbil/core$<MOP>$<MOP:2>[1]#extended-class-info::t|
         'runtime-identifier:
         __tmp42597
         'expander-identifiers:
         __tmp42592
         'type-exhibitor:
         __tmp42589)))
    (define |gerbil/core$<more-sugar>[:1:]#setf-macro|
      (let ((__tmp42604 |gerbil/core$<more-sugar>[2]#_g42601_|)
            (__tmp42600
             (cons (cons |gerbil/core$<more-sugar>[2]#_g42593_| '())
                   (cons |gerbil/core$<more-sugar>[2]#_g42601_|
                         (cons |gerbil/core$<more-sugar>[2]#_g42602_|
                               (cons |gerbil/core$<more-sugar>[2]#_g42603_|
                                     (cons '() (cons '() '())))))))
            (__tmp42598
             (let ((__tmp42599 (list |gerbil/core$<more-sugar>[2]#_g42591_|)))
               (declare (not safe))
               (##structure
                |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-exhibitor::t|
                'gerbil.core#setf-macro::t
                __tmp42599
                'setf-macro
                '#f
                '()
                '()))))
        (declare (not safe))
        (make-class-instance
         |gerbil/core$<MOP>$<MOP:2>[1]#extended-class-info::t|
         'runtime-identifier:
         __tmp42604
         'expander-identifiers:
         __tmp42600
         'type-exhibitor:
         __tmp42598)))))
