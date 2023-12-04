(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core$<match>[2]#_g43063_|
    (##structure
     gx#syntax-quote::t
     'macro-object
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[2]#_g43065_|
    (##structure
     gx#syntax-quote::t
     'macro-object::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[2]#_g43066_|
    (##structure
     gx#syntax-quote::t
     'match-macro::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[2]#_g43067_|
    (##structure
     gx#syntax-quote::t
     'make-match-macro
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[2]#_g43068_|
    (##structure
     gx#syntax-quote::t
     'match-macro?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[:1:]#match-macro|
    (let ((__tmp43069 |gerbil/core$<match>[2]#_g43066_|)
          (__tmp43064
           (cons (cons |gerbil/core$<match>[2]#_g43065_| '())
                 (cons |gerbil/core$<match>[2]#_g43066_|
                       (cons |gerbil/core$<match>[2]#_g43067_|
                             (cons |gerbil/core$<match>[2]#_g43068_|
                                   (cons '() (cons '() '())))))))
          (__tmp43061
           (let ((__tmp43062 (list |gerbil/core$<match>[2]#_g43063_|)))
             (declare (not safe))
             (##structure
              |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-exhibitor::t|
              'gerbil.core#match-macro::t
              __tmp43062
              'match-macro
              '#f
              '()
              '()))))
      (declare (not safe))
      (make-class-instance
       |gerbil/core$<MOP>$<MOP:2>[1]#extended-class-info::t|
       'runtime-identifier:
       __tmp43069
       'expander-identifiers:
       __tmp43064
       'type-exhibitor:
       __tmp43061))))
