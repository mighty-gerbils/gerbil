(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core$<more-sugar>[2]#_g43087_|
    (##structure
     gx#syntax-quote::t
     'macro-object
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<more-sugar>[2]#_g43089_|
    (##structure
     gx#syntax-quote::t
     'macro-object::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<more-sugar>[2]#_g43090_|
    (##structure
     gx#syntax-quote::t
     'setq-macro::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<more-sugar>[2]#_g43091_|
    (##structure
     gx#syntax-quote::t
     'make-setq-macro
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<more-sugar>[2]#_g43092_|
    (##structure
     gx#syntax-quote::t
     'setq-macro?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<more-sugar>[2]#_g43097_|
    (##structure
     gx#syntax-quote::t
     'setf-macro::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<more-sugar>[2]#_g43098_|
    (##structure
     gx#syntax-quote::t
     'make-setf-macro
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<more-sugar>[2]#_g43099_|
    (##structure
     gx#syntax-quote::t
     'setf-macro?
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core$<more-sugar>[:1:]#setq-macro|
      (let ((__tmp43093 |gerbil/core$<more-sugar>[2]#_g43090_|)
            (__tmp43088
             (cons (cons |gerbil/core$<more-sugar>[2]#_g43089_| '())
                   (cons |gerbil/core$<more-sugar>[2]#_g43090_|
                         (cons |gerbil/core$<more-sugar>[2]#_g43091_|
                               (cons |gerbil/core$<more-sugar>[2]#_g43092_|
                                     (cons '() (cons '() '())))))))
            (__tmp43085
             (let ((__tmp43086 (list |gerbil/core$<more-sugar>[2]#_g43087_|)))
               (declare (not safe))
               (##structure
                |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-exhibitor::t|
                'gerbil.core#setq-macro::t
                __tmp43086
                'setq-macro
                '#f
                '()
                '()))))
        (declare (not safe))
        (make-class-instance
         |gerbil/core$<MOP>$<MOP:2>[1]#extended-class-info::t|
         'runtime-identifier:
         __tmp43093
         'expander-identifiers:
         __tmp43088
         'type-exhibitor:
         __tmp43085)))
    (define |gerbil/core$<more-sugar>[:1:]#setf-macro|
      (let ((__tmp43100 |gerbil/core$<more-sugar>[2]#_g43097_|)
            (__tmp43096
             (cons (cons |gerbil/core$<more-sugar>[2]#_g43089_| '())
                   (cons |gerbil/core$<more-sugar>[2]#_g43097_|
                         (cons |gerbil/core$<more-sugar>[2]#_g43098_|
                               (cons |gerbil/core$<more-sugar>[2]#_g43099_|
                                     (cons '() (cons '() '())))))))
            (__tmp43094
             (let ((__tmp43095 (list |gerbil/core$<more-sugar>[2]#_g43087_|)))
               (declare (not safe))
               (##structure
                |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-exhibitor::t|
                'gerbil.core#setf-macro::t
                __tmp43095
                'setf-macro
                '#f
                '()
                '()))))
        (declare (not safe))
        (make-class-instance
         |gerbil/core$<MOP>$<MOP:2>[1]#extended-class-info::t|
         'runtime-identifier:
         __tmp43100
         'expander-identifiers:
         __tmp43096
         'type-exhibitor:
         __tmp43094)))))
