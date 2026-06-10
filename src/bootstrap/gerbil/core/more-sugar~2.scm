(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/more-sugar[2]#_g39053_|
    (##structure
     gx#syntax-quote::t
     'macro-object
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/more-sugar[2]#_g39054_|
    (##structure
     gx#syntax-quote::t
     'setq-macro::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/more-sugar[2]#_g39055_|
    (##structure
     gx#syntax-quote::t
     'make-setq-macro
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/more-sugar[2]#_g39056_|
    (##structure
     gx#syntax-quote::t
     'setq-macro?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/more-sugar[2]#_g39057_|
    (##structure
     gx#syntax-quote::t
     'setq-macro-macro
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/more-sugar[2]#_g39058_|
    (##structure
     gx#syntax-quote::t
     'setq-macro-macro-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/more-sugar[2]#_g39059_|
    (##structure
     gx#syntax-quote::t
     '&setq-macro-macro
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/more-sugar[2]#_g39060_|
    (##structure
     gx#syntax-quote::t
     '&setq-macro-macro-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/more-sugar[2]#_g39061_|
    (##structure
     gx#syntax-quote::t
     'setf-macro::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/more-sugar[2]#_g39062_|
    (##structure
     gx#syntax-quote::t
     'make-setf-macro
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/more-sugar[2]#_g39063_|
    (##structure
     gx#syntax-quote::t
     'setf-macro?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/more-sugar[2]#_g39064_|
    (##structure
     gx#syntax-quote::t
     'setf-macro-macro
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/more-sugar[2]#_g39065_|
    (##structure
     gx#syntax-quote::t
     'setf-macro-macro-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/more-sugar[2]#_g39066_|
    (##structure
     gx#syntax-quote::t
     '&setf-macro-macro
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/more-sugar[2]#_g39067_|
    (##structure
     gx#syntax-quote::t
     '&setf-macro-macro-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core/more-sugar[:1:]#setq-macro|
      (gerbil/core/mop~MOP-2#make-class-type-info
       'id:
       'gerbil/core/more-sugar#setq-macro::t
       'name:
       'setq-macro
       'slots:
       '()
       'super:
       (cons |gerbil/core/more-sugar[2]#_g39053_| '())
       'struct?:
       '#f
       'final?:
       '#f
       'metaclass:
       '#f
       'constructor-method:
       '#f
       'type-descriptor:
       |gerbil/core/more-sugar[2]#_g39054_|
       'constructor:
       |gerbil/core/more-sugar[2]#_g39055_|
       'predicate:
       |gerbil/core/more-sugar[2]#_g39056_|
       'accessors:
       (cons (cons 'macro |gerbil/core/more-sugar[2]#_g39057_|) '())
       'mutators:
       (cons (cons 'macro |gerbil/core/more-sugar[2]#_g39058_|) '())
       'unchecked-accessors:
       (cons (cons 'macro |gerbil/core/more-sugar[2]#_g39059_|) '())
       'unchecked-mutators:
       (cons (cons 'macro |gerbil/core/more-sugar[2]#_g39060_|) '())))
    (define |gerbil/core/more-sugar[:1:]#setf-macro|
      (gerbil/core/mop~MOP-2#make-class-type-info
       'id:
       'gerbil/core/more-sugar#setf-macro::t
       'name:
       'setf-macro
       'slots:
       '()
       'super:
       (cons |gerbil/core/more-sugar[2]#_g39053_| '())
       'struct?:
       '#f
       'final?:
       '#f
       'metaclass:
       '#f
       'constructor-method:
       '#f
       'type-descriptor:
       |gerbil/core/more-sugar[2]#_g39061_|
       'constructor:
       |gerbil/core/more-sugar[2]#_g39062_|
       'predicate:
       |gerbil/core/more-sugar[2]#_g39063_|
       'accessors:
       (cons (cons 'macro |gerbil/core/more-sugar[2]#_g39064_|) '())
       'mutators:
       (cons (cons 'macro |gerbil/core/more-sugar[2]#_g39065_|) '())
       'unchecked-accessors:
       (cons (cons 'macro |gerbil/core/more-sugar[2]#_g39066_|) '())
       'unchecked-mutators:
       (cons (cons 'macro |gerbil/core/more-sugar[2]#_g39067_|) '())))))
