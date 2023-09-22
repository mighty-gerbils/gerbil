(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core$<match>[2]#_g42567_|
    (##structure
     gx#syntax-quote::t
     'macro-object
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[2]#_g42569_|
    (##structure
     gx#syntax-quote::t
     'macro-object::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[2]#_g42570_|
    (##structure
     gx#syntax-quote::t
     'match-macro::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[2]#_g42571_|
    (##structure
     gx#syntax-quote::t
     'make-match-macro
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[2]#_g42572_|
    (##structure
     gx#syntax-quote::t
     'match-macro?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[:1:]#match-macro|
    (let ((__tmp42573 |gerbil/core$<match>[2]#_g42570_|)
          (__tmp42568
           (cons (cons |gerbil/core$<match>[2]#_g42569_| '())
                 (cons |gerbil/core$<match>[2]#_g42570_|
                       (cons |gerbil/core$<match>[2]#_g42571_|
                             (cons |gerbil/core$<match>[2]#_g42572_|
                                   (cons '() (cons '() '())))))))
          (__tmp42565
           (let ((__tmp42566 (list |gerbil/core$<match>[2]#_g42567_|)))
             (declare (not safe))
             (##structure
              |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-exhibitor::t|
              'gerbil.core#match-macro::t
              __tmp42566
              'match-macro
              '#f
              '()
              '()))))
      (declare (not safe))
      (make-class-instance
       |gerbil/core$<MOP>$<MOP:2>[1]#extended-class-info::t|
       'runtime-identifier:
       __tmp42573
       'expander-identifiers:
       __tmp42568
       'type-exhibitor:
       __tmp42565))))
