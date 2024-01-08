(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core$<match>[2]#_g42947_|
    (##structure
     gx#syntax-quote::t
     'macro-object
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[2]#_g42949_|
    (##structure
     gx#syntax-quote::t
     'macro-object::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[2]#_g42950_|
    (##structure
     gx#syntax-quote::t
     'match-macro::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[2]#_g42951_|
    (##structure
     gx#syntax-quote::t
     'make-match-macro
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[2]#_g42952_|
    (##structure
     gx#syntax-quote::t
     'match-macro?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[:1:]#match-macro|
    (let ((__tmp42953 |gerbil/core$<match>[2]#_g42950_|)
          (__tmp42948
           (cons (cons |gerbil/core$<match>[2]#_g42949_| '())
                 (cons |gerbil/core$<match>[2]#_g42950_|
                       (cons |gerbil/core$<match>[2]#_g42951_|
                             (cons |gerbil/core$<match>[2]#_g42952_|
                                   (cons '() (cons '() '())))))))
          (__tmp42945
           (let ((__tmp42946 (list |gerbil/core$<match>[2]#_g42947_|)))
             (declare (not safe))
             (##structure
              |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-exhibitor::t|
              'gerbil.core#match-macro::t
              __tmp42946
              'match-macro
              '#f
              '()
              '()))))
      (declare (not safe))
      (make-class-instance
       |gerbil/core$<MOP>$<MOP:2>[1]#extended-class-info::t|
       'runtime-identifier:
       __tmp42953
       'expander-identifiers:
       __tmp42948
       'type-exhibitor:
       __tmp42945))))
