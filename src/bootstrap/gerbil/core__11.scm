(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core$<match>[2]#_g41307_|
    (gx#make-syntax-quote
     'match-macro::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[2]#_g41308_|
    (gx#make-syntax-quote
     'macro-object::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[2]#_g41309_|
    (gx#make-syntax-quote
     'match-macro::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[2]#_g41310_|
    (gx#make-syntax-quote
     'make-match-macro
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[2]#_g41311_|
    (gx#make-syntax-quote 'match-macro? #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[2]#_g41312_|
    (gx#make-syntax-quote 'macro-object #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[:1:]#match-macro|
    (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-class-info|
     'runtime-identifier:
     |gerbil/core$<match>[2]#_g41307_|
     'expander-identifiers:
     (cons (cons |gerbil/core$<match>[2]#_g41308_| '())
           (cons |gerbil/core$<match>[2]#_g41309_|
                 (cons |gerbil/core$<match>[2]#_g41310_|
                       (cons |gerbil/core$<match>[2]#_g41311_|
                             (cons '() (cons '() '()))))))
     'type-exhibitor:
     (##structure
      |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-exhibitor::t|
      'gerbil.core#match-macro::t
      (list |gerbil/core$<match>[2]#_g41312_|)
      'match-macro
      '#f
      '()
      '()))))
