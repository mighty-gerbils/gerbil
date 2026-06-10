(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g219169_|
    (##structure
     gx#syntax-quote::t
     '::basic-xform
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g219170_|
    (##structure
     gx#syntax-quote::t
     '::optimize-annotated::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g219171_|
    (##structure
     gx#syntax-quote::t
     'make-::optimize-annotated
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g219172_|
    (##structure
     gx#syntax-quote::t
     '::optimize-annotated?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g219173_|
    (##structure
     gx#syntax-quote::t
     '::generate-runtime
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g219174_|
    (##structure
     gx#syntax-quote::t
     '::generate-runtime-repr::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g219175_|
    (##structure
     gx#syntax-quote::t
     'make-::generate-runtime-repr
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g219176_|
    (##structure
     gx#syntax-quote::t
     '::generate-runtime-repr?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g219177_|
    (##structure
     gx#syntax-quote::t
     '::push-match-vars::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g219178_|
    (##structure
     gx#syntax-quote::t
     'make-::push-match-vars
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g219179_|
    (##structure
     gx#syntax-quote::t
     '::push-match-vars?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g219180_|
    (##structure
     gx#syntax-quote::t
     '::push-match-vars-vars
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g219181_|
    (##structure
     gx#syntax-quote::t
     '::push-match-vars-K
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g219182_|
    (##structure
     gx#syntax-quote::t
     '::push-match-vars-vars-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g219183_|
    (##structure
     gx#syntax-quote::t
     '::push-match-vars-K-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g219184_|
    (##structure
     gx#syntax-quote::t
     '&::push-match-vars-vars
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g219185_|
    (##structure
     gx#syntax-quote::t
     '&::push-match-vars-K
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g219186_|
    (##structure
     gx#syntax-quote::t
     '&::push-match-vars-vars-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g219187_|
    (##structure
     gx#syntax-quote::t
     '&::push-match-vars-K-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#::optimize-annotated|
      (gerbil/core/mop~MOP-2#make-class-type-info
       'id:
       'gxc#::optimize-annotated::t
       'name:
       '::optimize-annotated
       'slots:
       '()
       'ordered-slots:
       '()
       'super:
       (cons |gxc[1]#_g219169_| '())
       'struct?:
       '#f
       'final?:
       '#t
       'metaclass:
       '#f
       'constructor-method:
       '#f
       'type-descriptor:
       |gxc[1]#_g219170_|
       'constructor:
       |gxc[1]#_g219171_|
       'predicate:
       |gxc[1]#_g219172_|
       'accessors:
       '()
       'mutators:
       '()
       'unchecked-accessors:
       '()
       'unchecked-mutators:
       '()
       'slot-types:
       '()
       'slot-contracts:
       '()
       'slot-defaults:
       '()))
    (define |gxc[:0:]#::generate-runtime-repr|
      (gerbil/core/mop~MOP-2#make-class-type-info
       'id:
       'gxc#::generate-runtime-repr::t
       'name:
       '::generate-runtime-repr
       'slots:
       '()
       'ordered-slots:
       '()
       'super:
       (cons |gxc[1]#_g219173_| '())
       'struct?:
       '#f
       'final?:
       '#t
       'metaclass:
       '#f
       'constructor-method:
       '#f
       'type-descriptor:
       |gxc[1]#_g219174_|
       'constructor:
       |gxc[1]#_g219175_|
       'predicate:
       |gxc[1]#_g219176_|
       'accessors:
       '()
       'mutators:
       '()
       'unchecked-accessors:
       '()
       'unchecked-mutators:
       '()
       'slot-types:
       '()
       'slot-contracts:
       '()
       'slot-defaults:
       '()))
    (define |gxc[:0:]#::push-match-vars|
      (gerbil/core/mop~MOP-2#make-class-type-info
       'id:
       'gxc#::push-match-vars::t
       'name:
       '::push-match-vars
       'slots:
       '(vars K)
       'ordered-slots:
       '(vars K)
       'super:
       '()
       'struct?:
       '#f
       'final?:
       '#t
       'metaclass:
       '#f
       'constructor-method:
       '#f
       'type-descriptor:
       |gxc[1]#_g219177_|
       'constructor:
       |gxc[1]#_g219178_|
       'predicate:
       |gxc[1]#_g219179_|
       'accessors:
       (cons (cons 'vars |gxc[1]#_g219180_|)
             (cons (cons 'K |gxc[1]#_g219181_|) '()))
       'mutators:
       (cons (cons 'vars |gxc[1]#_g219182_|)
             (cons (cons 'K |gxc[1]#_g219183_|) '()))
       'unchecked-accessors:
       (cons (cons 'vars |gxc[1]#_g219184_|)
             (cons (cons 'K |gxc[1]#_g219185_|) '()))
       'unchecked-mutators:
       (cons (cons 'vars |gxc[1]#_g219186_|)
             (cons (cons 'K |gxc[1]#_g219187_|) '()))
       'slot-types:
       '()
       'slot-contracts:
       '()
       'slot-defaults:
       '()))))
