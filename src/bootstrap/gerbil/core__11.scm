(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core$<match>[2]#_g41405_|
    (gx#make-syntax-quote
     'match-macro::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[2]#_g41406_|
    (gx#make-syntax-quote
     'macro-object::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[2]#_g41407_|
    (gx#make-syntax-quote
     'make-match-macro
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[2]#_g41408_|
    (gx#make-syntax-quote 'match-macro? #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[2]#_g41409_|
    (gx#make-syntax-quote 'macro-object #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[:1:]#match-macro|
    (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-class-info|
     'runtime-identifier:
     |gerbil/core$<match>[2]#_g41405_|
     'expander-identifiers:
     (cons (cons |gerbil/core$<match>[2]#_g41406_| '())
           (cons |gerbil/core$<match>[2]#_g41405_|
                 (cons |gerbil/core$<match>[2]#_g41407_|
                       (cons |gerbil/core$<match>[2]#_g41408_|
                             (cons '() (cons '() '()))))))
     'type-exhibitor:
     (##structure
      |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-exhibitor::t|
      'gerbil.core#match-macro::t
      (list |gerbil/core$<match>[2]#_g41409_|)
      'match-macro
      '#f
      '()
      '()))))
