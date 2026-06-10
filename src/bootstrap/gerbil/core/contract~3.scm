(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~TypeReference[2]#_g87612_|
    (##structure
     gx#syntax-quote::t
     'type-reference::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeReference[2]#_g87613_|
    (##structure
     gx#syntax-quote::t
     'make-type-reference
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeReference[2]#_g87614_|
    (##structure
     gx#syntax-quote::t
     'type-reference?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeReference[2]#_g87615_|
    (##structure
     gx#syntax-quote::t
     'type-reference-identifier
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeReference[2]#_g87616_|
    (##structure
     gx#syntax-quote::t
     'type-reference-identifier-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeReference[2]#_g87617_|
    (##structure
     gx#syntax-quote::t
     '&type-reference-identifier
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeReference[2]#_g87618_|
    (##structure
     gx#syntax-quote::t
     '&type-reference-identifier-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeReference[:1:]#type-reference|
    (gerbil/core/mop~MOP-2#make-class-type-info
     'id:
     'gerbil/core/contract~TypeReference#type-reference::t
     'name:
     'type-reference
     'slots:
     '(identifier)
     'super:
     '()
     'struct?:
     '#f
     'final?:
     '#f
     'metaclass:
     '#f
     'constructor-method:
     '#f
     'type-descriptor:
     |gerbil/core/contract~TypeReference[2]#_g87612_|
     'constructor:
     |gerbil/core/contract~TypeReference[2]#_g87613_|
     'predicate:
     |gerbil/core/contract~TypeReference[2]#_g87614_|
     'accessors:
     (cons (cons 'identifier |gerbil/core/contract~TypeReference[2]#_g87615_|)
           '())
     'mutators:
     (cons (cons 'identifier |gerbil/core/contract~TypeReference[2]#_g87616_|)
           '())
     'unchecked-accessors:
     (cons (cons 'identifier |gerbil/core/contract~TypeReference[2]#_g87617_|)
           '())
     'unchecked-mutators:
     (cons (cons 'identifier |gerbil/core/contract~TypeReference[2]#_g87618_|)
           '()))))
