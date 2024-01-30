(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core$<match>[2]#_g42874_|
    (##structure
     gx#syntax-quote::t
     'macro-object
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[2]#_g42876_|
    (##structure
     gx#syntax-quote::t
     'macro-object::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[2]#_g42877_|
    (##structure
     gx#syntax-quote::t
     'match-macro::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[2]#_g42878_|
    (##structure
     gx#syntax-quote::t
     'make-match-macro
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[2]#_g42879_|
    (##structure
     gx#syntax-quote::t
     'match-macro?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[:1:]#match-macro|
    (let ((__tmp42880 |gerbil/core$<match>[2]#_g42877_|)
          (__tmp42875
           (cons (cons |gerbil/core$<match>[2]#_g42876_| '())
                 (cons |gerbil/core$<match>[2]#_g42877_|
                       (cons |gerbil/core$<match>[2]#_g42878_|
                             (cons |gerbil/core$<match>[2]#_g42879_|
                                   (cons '() (cons '() '())))))))
          (__tmp42872
           (let ((__tmp42873 (list |gerbil/core$<match>[2]#_g42874_|)))
             (declare (not safe))
             (##structure
              |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-exhibitor::t|
              'gerbil.core#match-macro::t
              __tmp42873
              'match-macro
              '#f
              '()
              '()))))
      (declare (not safe))
      (make-class-instance
       |gerbil/core$<MOP>$<MOP:2>[1]#extended-class-info::t|
       'runtime-identifier:
       __tmp42880
       'expander-identifiers:
       __tmp42875
       'type-exhibitor:
       __tmp42872))))
