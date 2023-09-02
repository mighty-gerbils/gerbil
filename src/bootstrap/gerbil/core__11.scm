(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core$<match>[2]#_g42323_|
    (##structure
     gx#syntax-quote::t
     'match-macro::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[2]#_g42324_|
    (##structure
     gx#syntax-quote::t
     'macro-object::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[2]#_g42325_|
    (##structure
     gx#syntax-quote::t
     'make-match-macro
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[2]#_g42326_|
    (##structure
     gx#syntax-quote::t
     'match-macro?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[2]#_g42328_|
    (##structure
     gx#syntax-quote::t
     'macro-object
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[:1:]#match-macro|
    (make-class-instance
     |gerbil/core$<MOP>$<MOP:2>[1]#extended-class-info::t|
     'runtime-identifier:
     |gerbil/core$<match>[2]#_g42323_|
     'expander-identifiers:
     (cons (cons |gerbil/core$<match>[2]#_g42324_| '())
           (cons |gerbil/core$<match>[2]#_g42323_|
                 (cons |gerbil/core$<match>[2]#_g42325_|
                       (cons |gerbil/core$<match>[2]#_g42326_|
                             (cons '() (cons '() '()))))))
     'type-exhibitor:
     (let ((__tmp42327 (list |gerbil/core$<match>[2]#_g42328_|)))
       (declare (not safe))
       (##structure
        |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-exhibitor::t|
        'gerbil.core#match-macro::t
        __tmp42327
        'match-macro
        '#f
        '()
        '())))))
