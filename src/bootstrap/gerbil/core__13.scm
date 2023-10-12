(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core$<more-sugar>[2]#_g43051_|
    (##structure
     gx#syntax-quote::t
     'macro-object
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<more-sugar>[2]#_g43053_|
    (##structure
     gx#syntax-quote::t
     'macro-object::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<more-sugar>[2]#_g43054_|
    (##structure
     gx#syntax-quote::t
     'setq-macro::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<more-sugar>[2]#_g43055_|
    (##structure
     gx#syntax-quote::t
     'make-setq-macro
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<more-sugar>[2]#_g43056_|
    (##structure
     gx#syntax-quote::t
     'setq-macro?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<more-sugar>[2]#_g43061_|
    (##structure
     gx#syntax-quote::t
     'setf-macro::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<more-sugar>[2]#_g43062_|
    (##structure
     gx#syntax-quote::t
     'make-setf-macro
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<more-sugar>[2]#_g43063_|
    (##structure
     gx#syntax-quote::t
     'setf-macro?
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core$<more-sugar>[:1:]#setq-macro|
      (let ((__tmp43057 |gerbil/core$<more-sugar>[2]#_g43054_|)
            (__tmp43052
             (cons (cons |gerbil/core$<more-sugar>[2]#_g43053_| '())
                   (cons |gerbil/core$<more-sugar>[2]#_g43054_|
                         (cons |gerbil/core$<more-sugar>[2]#_g43055_|
                               (cons |gerbil/core$<more-sugar>[2]#_g43056_|
                                     (cons '() (cons '() '())))))))
            (__tmp43049
             (let ((__tmp43050 (list |gerbil/core$<more-sugar>[2]#_g43051_|)))
               (declare (not safe))
               (##structure
                |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-exhibitor::t|
                'gerbil.core#setq-macro::t
                __tmp43050
                'setq-macro
                '#f
                '()
                '()))))
        (declare (not safe))
        (make-class-instance
         |gerbil/core$<MOP>$<MOP:2>[1]#extended-class-info::t|
         'runtime-identifier:
         __tmp43057
         'expander-identifiers:
         __tmp43052
         'type-exhibitor:
         __tmp43049)))
    (define |gerbil/core$<more-sugar>[:1:]#setf-macro|
      (let ((__tmp43064 |gerbil/core$<more-sugar>[2]#_g43061_|)
            (__tmp43060
             (cons (cons |gerbil/core$<more-sugar>[2]#_g43053_| '())
                   (cons |gerbil/core$<more-sugar>[2]#_g43061_|
                         (cons |gerbil/core$<more-sugar>[2]#_g43062_|
                               (cons |gerbil/core$<more-sugar>[2]#_g43063_|
                                     (cons '() (cons '() '())))))))
            (__tmp43058
             (let ((__tmp43059 (list |gerbil/core$<more-sugar>[2]#_g43051_|)))
               (declare (not safe))
               (##structure
                |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-exhibitor::t|
                'gerbil.core#setf-macro::t
                __tmp43059
                'setf-macro
                '#f
                '()
                '()))))
        (declare (not safe))
        (make-class-instance
         |gerbil/core$<MOP>$<MOP:2>[1]#extended-class-info::t|
         'runtime-identifier:
         __tmp43064
         'expander-identifiers:
         __tmp43060
         'type-exhibitor:
         __tmp43058)))))
