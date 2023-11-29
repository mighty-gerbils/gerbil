(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core$<match>[2]#_g42950_|
    (##structure
     gx#syntax-quote::t
     'macro-object
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[2]#_g42952_|
    (##structure
     gx#syntax-quote::t
     'macro-object::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[2]#_g42953_|
    (##structure
     gx#syntax-quote::t
     'match-macro::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[2]#_g42954_|
    (##structure
     gx#syntax-quote::t
     'make-match-macro
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[2]#_g42955_|
    (##structure
     gx#syntax-quote::t
     'match-macro?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[:1:]#match-macro|
    (let ((__tmp42956 |gerbil/core$<match>[2]#_g42953_|)
          (__tmp42951
           (cons (cons |gerbil/core$<match>[2]#_g42952_| '())
                 (cons |gerbil/core$<match>[2]#_g42953_|
                       (cons |gerbil/core$<match>[2]#_g42954_|
                             (cons |gerbil/core$<match>[2]#_g42955_|
                                   (cons '() (cons '() '())))))))
          (__tmp42948
           (let ((__tmp42949 (list |gerbil/core$<match>[2]#_g42950_|)))
             (declare (not safe))
             (##structure
              |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-exhibitor::t|
              'gerbil.core#match-macro::t
              __tmp42949
              'match-macro
              '#f
              '()
              '()))))
      (declare (not safe))
      (make-class-instance
       |gerbil/core$<MOP>$<MOP:2>[1]#extended-class-info::t|
       'runtime-identifier:
       __tmp42956
       'expander-identifiers:
       __tmp42951
       'type-exhibitor:
       __tmp42948))))
