(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 100))
(begin
  (define |gerbil/core$<match>[2]#_g41248_|
    (gx#make-syntax-quote
     'match-macro::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[2]#_g41249_|
    (gx#make-syntax-quote
     'macro-object::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[2]#_g41250_|
    (gx#make-syntax-quote
     'match-macro::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[2]#_g41251_|
    (gx#make-syntax-quote
     'make-match-macro
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[2]#_g41252_|
    (gx#make-syntax-quote 'match-macro? #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[2]#_g41253_|
    (gx#make-syntax-quote 'macro-object #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[:1:]#match-macro|
    (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-class-info|
     'runtime-identifier:
     |gerbil/core$<match>[2]#_g41248_|
     'expander-identifiers:
     (cons (cons |gerbil/core$<match>[2]#_g41249_| '())
           (cons |gerbil/core$<match>[2]#_g41250_|
                 (cons |gerbil/core$<match>[2]#_g41251_|
                       (cons |gerbil/core$<match>[2]#_g41252_|
                             (cons '() (cons '() '()))))))
     'type-exhibitor:
     (##structure
      |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-exhibitor::t|
      'gerbil.core#match-macro::t
      (list |gerbil/core$<match>[2]#_g41253_|)
      'match-macro
      '#f
      '()
      '()))))
