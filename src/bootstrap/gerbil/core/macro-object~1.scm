(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/macro-object[1]#_g24583_|
    (##structure
     gx#syntax-quote::t
     'macro-object::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/macro-object[1]#_g24584_|
    (##structure
     gx#syntax-quote::t
     'make-macro-object
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/macro-object[1]#_g24585_|
    (##structure
     gx#syntax-quote::t
     'macro-object?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/macro-object[1]#_g24586_|
    (##structure
     gx#syntax-quote::t
     'macro-object-macro
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/macro-object[1]#_g24587_|
    (##structure
     gx#syntax-quote::t
     'macro-object-macro-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/macro-object[1]#_g24588_|
    (##structure
     gx#syntax-quote::t
     '&macro-object-macro
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/macro-object[1]#_g24589_|
    (##structure
     gx#syntax-quote::t
     '&macro-object-macro-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/macro-object[:0:]#macro-object|
    (gerbil/core/mop~MOP-2#make-class-type-info
     'id:
     'gerbil/core#macro-object::t
     'name:
     'macro-object
     'slots:
     '(macro)
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
     |gerbil/core/macro-object[1]#_g24583_|
     'constructor:
     |gerbil/core/macro-object[1]#_g24584_|
     'predicate:
     |gerbil/core/macro-object[1]#_g24585_|
     'accessors:
     (cons (cons 'macro |gerbil/core/macro-object[1]#_g24586_|) '())
     'mutators:
     (cons (cons 'macro |gerbil/core/macro-object[1]#_g24587_|) '())
     'unchecked-accessors:
     (cons (cons 'macro |gerbil/core/macro-object[1]#_g24588_|) '())
     'unchecked-mutators:
     (cons (cons 'macro |gerbil/core/macro-object[1]#_g24589_|) '()))))
