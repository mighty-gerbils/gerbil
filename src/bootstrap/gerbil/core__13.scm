(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core$<more-sugar>[2]#_g42341_|
    (##structure
     gx#syntax-quote::t
     'setq-macro::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<more-sugar>[2]#_g42342_|
    (##structure
     gx#syntax-quote::t
     'macro-object::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<more-sugar>[2]#_g42343_|
    (##structure
     gx#syntax-quote::t
     'make-setq-macro
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<more-sugar>[2]#_g42344_|
    (##structure
     gx#syntax-quote::t
     'setq-macro?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<more-sugar>[2]#_g42346_|
    (##structure
     gx#syntax-quote::t
     'macro-object
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<more-sugar>[2]#_g42347_|
    (##structure
     gx#syntax-quote::t
     'setf-macro::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<more-sugar>[2]#_g42348_|
    (##structure
     gx#syntax-quote::t
     'make-setf-macro
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<more-sugar>[2]#_g42349_|
    (##structure
     gx#syntax-quote::t
     'setf-macro?
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core$<more-sugar>[:1:]#setq-macro|
      (make-class-instance
       |gerbil/core$<MOP>$<MOP:2>[1]#extended-class-info::t|
       'runtime-identifier:
       |gerbil/core$<more-sugar>[2]#_g42341_|
       'expander-identifiers:
       (cons (cons |gerbil/core$<more-sugar>[2]#_g42342_| '())
             (cons |gerbil/core$<more-sugar>[2]#_g42341_|
                   (cons |gerbil/core$<more-sugar>[2]#_g42343_|
                         (cons |gerbil/core$<more-sugar>[2]#_g42344_|
                               (cons '() (cons '() '()))))))
       'type-exhibitor:
       (let ((__tmp42345 (list |gerbil/core$<more-sugar>[2]#_g42346_|)))
         (declare (not safe))
         (##structure
          |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-exhibitor::t|
          'gerbil.core#setq-macro::t
          __tmp42345
          'setq-macro
          '#f
          '()
          '()))))
    (define |gerbil/core$<more-sugar>[:1:]#setf-macro|
      (make-class-instance
       |gerbil/core$<MOP>$<MOP:2>[1]#extended-class-info::t|
       'runtime-identifier:
       |gerbil/core$<more-sugar>[2]#_g42347_|
       'expander-identifiers:
       (cons (cons |gerbil/core$<more-sugar>[2]#_g42342_| '())
             (cons |gerbil/core$<more-sugar>[2]#_g42347_|
                   (cons |gerbil/core$<more-sugar>[2]#_g42348_|
                         (cons |gerbil/core$<more-sugar>[2]#_g42349_|
                               (cons '() (cons '() '()))))))
       'type-exhibitor:
       (let ((__tmp42350 (list |gerbil/core$<more-sugar>[2]#_g42346_|)))
         (declare (not safe))
         (##structure
          |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-exhibitor::t|
          'gerbil.core#setf-macro::t
          __tmp42350
          'setf-macro
          '#f
          '()
          '()))))))
