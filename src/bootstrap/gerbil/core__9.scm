(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core$<MOP>$<MOP:3>[2]#_g42782_|
    (##structure
     gx#syntax-quote::t
     'runtime-type-info::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<MOP>$<MOP:3>[2]#_g42784_|
    (##structure
     gx#syntax-quote::t
     'runtime-struct-info::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<MOP>$<MOP:3>[2]#_g42786_|
    (##structure
     gx#syntax-quote::t
     'runtime-class-info::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<MOP>$<MOP:3>[2]#_g42788_|
    (##structure
     gx#syntax-quote::t
     'expander-type-info::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<MOP>$<MOP:3>[2]#_g42790_|
    (##structure
     gx#syntax-quote::t
     'extended-runtime-type-info::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<MOP>$<MOP:3>[2]#_g42792_|
    (##structure
     gx#syntax-quote::t
     'extended-struct-info::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<MOP>$<MOP:3>[2]#_g42794_|
    (##structure
     gx#syntax-quote::t
     'extended-class-info::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<MOP>$<MOP:3>[2]#_g42796_|
    (##structure
     gx#syntax-quote::t
     'runtime-rtd-exhibitor::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<MOP>$<MOP:3>[2]#_g42798_|
    (##structure
     gx#syntax-quote::t
     'runtime-struct-exhibitor::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<MOP>$<MOP:3>[2]#_g42800_|
    (##structure
     gx#syntax-quote::t
     'runtime-class-exhibitor::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<MOP>$<MOP:3>[2]#_g42804_|
    (##structure
     gx#syntax-quote::t
     'macro-object::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<MOP>$<MOP:3>[2]#_g42805_|
    (##structure
     gx#syntax-quote::t
     'make-macro-object
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<MOP>$<MOP:3>[2]#_g42806_|
    (##structure
     gx#syntax-quote::t
     'macro-object?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<MOP>$<MOP:3>[2]#_g42807_|
    (##structure
     gx#syntax-quote::t
     'macro-object-macro
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<MOP>$<MOP:3>[2]#_g42808_|
    (##structure
     gx#syntax-quote::t
     'macro-object-macro-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core$<MOP>$<MOP:3>[:1:]#runtime-type-info|
      (let ((__tmp42781 |gerbil/core$<MOP>$<MOP:3>[2]#_g42782_|))
        (declare (not safe))
        (make-class-instance
         |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-info::t|
         'runtime-identifier:
         __tmp42781)))
    (define |gerbil/core$<MOP>$<MOP:3>[:1:]#runtime-struct-info|
      (let ((__tmp42783 |gerbil/core$<MOP>$<MOP:3>[2]#_g42784_|))
        (declare (not safe))
        (make-class-instance
         |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-info::t|
         'runtime-identifier:
         __tmp42783)))
    (define |gerbil/core$<MOP>$<MOP:3>[:1:]#runtime-class-info|
      (let ((__tmp42785 |gerbil/core$<MOP>$<MOP:3>[2]#_g42786_|))
        (declare (not safe))
        (make-class-instance
         |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-info::t|
         'runtime-identifier:
         __tmp42785)))
    (define |gerbil/core$<MOP>$<MOP:3>[:1:]#expander-type-info|
      (let ((__tmp42787 |gerbil/core$<MOP>$<MOP:3>[2]#_g42788_|))
        (declare (not safe))
        (make-class-instance
         |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-info::t|
         'runtime-identifier:
         __tmp42787)))
    (define |gerbil/core$<MOP>$<MOP:3>[:1:]#extended-runtime-type-info|
      (let ((__tmp42789 |gerbil/core$<MOP>$<MOP:3>[2]#_g42790_|))
        (declare (not safe))
        (make-class-instance
         |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-info::t|
         'runtime-identifier:
         __tmp42789)))
    (define |gerbil/core$<MOP>$<MOP:3>[:1:]#extended-struct-info|
      (let ((__tmp42791 |gerbil/core$<MOP>$<MOP:3>[2]#_g42792_|))
        (declare (not safe))
        (make-class-instance
         |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-info::t|
         'runtime-identifier:
         __tmp42791)))
    (define |gerbil/core$<MOP>$<MOP:3>[:1:]#extended-class-info|
      (let ((__tmp42793 |gerbil/core$<MOP>$<MOP:3>[2]#_g42794_|))
        (declare (not safe))
        (make-class-instance
         |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-info::t|
         'runtime-identifier:
         __tmp42793)))
    (define |gerbil/core$<MOP>$<MOP:3>[:1:]#runtime-rtd-exhibitor|
      (let ((__tmp42795 |gerbil/core$<MOP>$<MOP:3>[2]#_g42796_|))
        (declare (not safe))
        (make-class-instance
         |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-info::t|
         'runtime-identifier:
         __tmp42795)))
    (define |gerbil/core$<MOP>$<MOP:3>[:1:]#runtime-struct-exhibitor|
      (let ((__tmp42797 |gerbil/core$<MOP>$<MOP:3>[2]#_g42798_|))
        (declare (not safe))
        (make-class-instance
         |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-info::t|
         'runtime-identifier:
         __tmp42797)))
    (define |gerbil/core$<MOP>$<MOP:3>[:1:]#runtime-class-exhibitor|
      (let ((__tmp42799 |gerbil/core$<MOP>$<MOP:3>[2]#_g42800_|))
        (declare (not safe))
        (make-class-instance
         |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-info::t|
         'runtime-identifier:
         __tmp42799)))
    (define |gerbil/core$<MOP>$<MOP:3>[:1:]#macro-object|
      (let ((__tmp42809 |gerbil/core$<MOP>$<MOP:3>[2]#_g42804_|)
            (__tmp42803
             (cons '()
                   (cons |gerbil/core$<MOP>$<MOP:3>[2]#_g42804_|
                         (cons |gerbil/core$<MOP>$<MOP:3>[2]#_g42805_|
                               (cons |gerbil/core$<MOP>$<MOP:3>[2]#_g42806_|
                                     (cons (cons |gerbil/core$<MOP>$<MOP:3>[2]#_g42807_|
                                                 '())
                                           (cons (cons |gerbil/core$<MOP>$<MOP:3>[2]#_g42808_|
                                                       '())
                                                 '())))))))
            (__tmp42801
             (let ((__tmp42802 (list)))
               (declare (not safe))
               (##structure
                |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-exhibitor::t|
                'gerbil.core#macro-object::t
                __tmp42802
                'macro-object
                '#f
                '()
                '(macro)))))
        (declare (not safe))
        (make-class-instance
         |gerbil/core$<MOP>$<MOP:2>[1]#extended-class-info::t|
         'runtime-identifier:
         __tmp42809
         'expander-identifiers:
         __tmp42803
         'type-exhibitor:
         __tmp42801)))))
