(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core$<match>[2]#_g43027_|
    (##structure
     gx#syntax-quote::t
     'macro-object
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[2]#_g43029_|
    (##structure
     gx#syntax-quote::t
     'macro-object::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[2]#_g43030_|
    (##structure
     gx#syntax-quote::t
     'match-macro::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[2]#_g43031_|
    (##structure
     gx#syntax-quote::t
     'make-match-macro
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[2]#_g43032_|
    (##structure
     gx#syntax-quote::t
     'match-macro?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[:1:]#match-macro|
    (let ((__tmp43033 |gerbil/core$<match>[2]#_g43030_|)
          (__tmp43028
           (cons (cons |gerbil/core$<match>[2]#_g43029_| '())
                 (cons |gerbil/core$<match>[2]#_g43030_|
                       (cons |gerbil/core$<match>[2]#_g43031_|
                             (cons |gerbil/core$<match>[2]#_g43032_|
                                   (cons '() (cons '() '())))))))
          (__tmp43025
           (let ((__tmp43026 (list |gerbil/core$<match>[2]#_g43027_|)))
             (declare (not safe))
             (##structure
              |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-exhibitor::t|
              'gerbil.core#match-macro::t
              __tmp43026
              'match-macro
              '#f
              '()
              '()))))
      (declare (not safe))
      (make-class-instance
       |gerbil/core$<MOP>$<MOP:2>[1]#extended-class-info::t|
       'runtime-identifier:
       __tmp43033
       'expander-identifiers:
       __tmp43028
       'type-exhibitor:
       __tmp43025))))
