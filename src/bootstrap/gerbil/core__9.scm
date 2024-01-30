(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core$<MOP>$<MOP:3>[2]#_g42753_|
    (##structure
     gx#syntax-quote::t
     'runtime-type-info::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<MOP>$<MOP:3>[2]#_g42755_|
    (##structure
     gx#syntax-quote::t
     'runtime-struct-info::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<MOP>$<MOP:3>[2]#_g42757_|
    (##structure
     gx#syntax-quote::t
     'runtime-class-info::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<MOP>$<MOP:3>[2]#_g42759_|
    (##structure
     gx#syntax-quote::t
     'expander-type-info::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<MOP>$<MOP:3>[2]#_g42761_|
    (##structure
     gx#syntax-quote::t
     'extended-runtime-type-info::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<MOP>$<MOP:3>[2]#_g42763_|
    (##structure
     gx#syntax-quote::t
     'extended-struct-info::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<MOP>$<MOP:3>[2]#_g42765_|
    (##structure
     gx#syntax-quote::t
     'extended-class-info::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<MOP>$<MOP:3>[2]#_g42767_|
    (##structure
     gx#syntax-quote::t
     'runtime-rtd-exhibitor::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<MOP>$<MOP:3>[2]#_g42769_|
    (##structure
     gx#syntax-quote::t
     'runtime-struct-exhibitor::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<MOP>$<MOP:3>[2]#_g42771_|
    (##structure
     gx#syntax-quote::t
     'runtime-class-exhibitor::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<MOP>$<MOP:3>[2]#_g42775_|
    (##structure
     gx#syntax-quote::t
     'macro-object::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<MOP>$<MOP:3>[2]#_g42776_|
    (##structure
     gx#syntax-quote::t
     'make-macro-object
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<MOP>$<MOP:3>[2]#_g42777_|
    (##structure
     gx#syntax-quote::t
     'macro-object?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<MOP>$<MOP:3>[2]#_g42778_|
    (##structure
     gx#syntax-quote::t
     'macro-object-macro
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<MOP>$<MOP:3>[2]#_g42779_|
    (##structure
     gx#syntax-quote::t
     'macro-object-macro-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core$<MOP>$<MOP:3>[:1:]#runtime-type-info|
      (let ((__tmp42752 |gerbil/core$<MOP>$<MOP:3>[2]#_g42753_|))
        (declare (not safe))
        (make-class-instance
         |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-info::t|
         'runtime-identifier:
         __tmp42752)))
    (define |gerbil/core$<MOP>$<MOP:3>[:1:]#runtime-struct-info|
      (let ((__tmp42754 |gerbil/core$<MOP>$<MOP:3>[2]#_g42755_|))
        (declare (not safe))
        (make-class-instance
         |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-info::t|
         'runtime-identifier:
         __tmp42754)))
    (define |gerbil/core$<MOP>$<MOP:3>[:1:]#runtime-class-info|
      (let ((__tmp42756 |gerbil/core$<MOP>$<MOP:3>[2]#_g42757_|))
        (declare (not safe))
        (make-class-instance
         |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-info::t|
         'runtime-identifier:
         __tmp42756)))
    (define |gerbil/core$<MOP>$<MOP:3>[:1:]#expander-type-info|
      (let ((__tmp42758 |gerbil/core$<MOP>$<MOP:3>[2]#_g42759_|))
        (declare (not safe))
        (make-class-instance
         |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-info::t|
         'runtime-identifier:
         __tmp42758)))
    (define |gerbil/core$<MOP>$<MOP:3>[:1:]#extended-runtime-type-info|
      (let ((__tmp42760 |gerbil/core$<MOP>$<MOP:3>[2]#_g42761_|))
        (declare (not safe))
        (make-class-instance
         |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-info::t|
         'runtime-identifier:
         __tmp42760)))
    (define |gerbil/core$<MOP>$<MOP:3>[:1:]#extended-struct-info|
      (let ((__tmp42762 |gerbil/core$<MOP>$<MOP:3>[2]#_g42763_|))
        (declare (not safe))
        (make-class-instance
         |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-info::t|
         'runtime-identifier:
         __tmp42762)))
    (define |gerbil/core$<MOP>$<MOP:3>[:1:]#extended-class-info|
      (let ((__tmp42764 |gerbil/core$<MOP>$<MOP:3>[2]#_g42765_|))
        (declare (not safe))
        (make-class-instance
         |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-info::t|
         'runtime-identifier:
         __tmp42764)))
    (define |gerbil/core$<MOP>$<MOP:3>[:1:]#runtime-rtd-exhibitor|
      (let ((__tmp42766 |gerbil/core$<MOP>$<MOP:3>[2]#_g42767_|))
        (declare (not safe))
        (make-class-instance
         |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-info::t|
         'runtime-identifier:
         __tmp42766)))
    (define |gerbil/core$<MOP>$<MOP:3>[:1:]#runtime-struct-exhibitor|
      (let ((__tmp42768 |gerbil/core$<MOP>$<MOP:3>[2]#_g42769_|))
        (declare (not safe))
        (make-class-instance
         |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-info::t|
         'runtime-identifier:
         __tmp42768)))
    (define |gerbil/core$<MOP>$<MOP:3>[:1:]#runtime-class-exhibitor|
      (let ((__tmp42770 |gerbil/core$<MOP>$<MOP:3>[2]#_g42771_|))
        (declare (not safe))
        (make-class-instance
         |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-info::t|
         'runtime-identifier:
         __tmp42770)))
    (define |gerbil/core$<MOP>$<MOP:3>[:1:]#macro-object|
      (let ((__tmp42780 |gerbil/core$<MOP>$<MOP:3>[2]#_g42775_|)
            (__tmp42774
             (cons '()
                   (cons |gerbil/core$<MOP>$<MOP:3>[2]#_g42775_|
                         (cons |gerbil/core$<MOP>$<MOP:3>[2]#_g42776_|
                               (cons |gerbil/core$<MOP>$<MOP:3>[2]#_g42777_|
                                     (cons (cons |gerbil/core$<MOP>$<MOP:3>[2]#_g42778_|
                                                 '())
                                           (cons (cons |gerbil/core$<MOP>$<MOP:3>[2]#_g42779_|
                                                       '())
                                                 '())))))))
            (__tmp42772
             (let ((__tmp42773 (list)))
               (declare (not safe))
               (##structure
                |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-exhibitor::t|
                'gerbil.core#macro-object::t
                __tmp42773
                'macro-object
                '#f
                '()
                '(macro)))))
        (declare (not safe))
        (make-class-instance
         |gerbil/core$<MOP>$<MOP:2>[1]#extended-class-info::t|
         'runtime-identifier:
         __tmp42780
         'expander-identifiers:
         __tmp42774
         'type-exhibitor:
         __tmp42772)))))
