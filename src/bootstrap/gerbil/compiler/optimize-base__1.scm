(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g14867_|
    (gx#make-syntax-quote
     'optimizer-info::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g14868_|
    (gx#make-syntax-quote
     'make-optimizer-info
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g14869_|
    (gx#make-syntax-quote
     'optimizer-info?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g14870_|
    (gx#make-syntax-quote
     'optimizer-info-type
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g14871_|
    (gx#make-syntax-quote
     'optimizer-info-ssxi
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g14872_|
    (gx#make-syntax-quote
     'optimizer-info-type-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g14873_|
    (gx#make-syntax-quote
     'optimizer-info-ssxi-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g14874_|
    (gx#make-syntax-quote '!type::t #f (gx#current-expander-context) '()))
  (define |gxc[1]#_g14875_|
    (gx#make-syntax-quote 'make-!type #f (gx#current-expander-context) '()))
  (define |gxc[1]#_g14876_|
    (gx#make-syntax-quote '!type? #f (gx#current-expander-context) '()))
  (define |gxc[1]#_g14877_|
    (gx#make-syntax-quote '!type-id #f (gx#current-expander-context) '()))
  (define |gxc[1]#_g14878_|
    (gx#make-syntax-quote '!type-id-set! #f (gx#current-expander-context) '()))
  (define |gxc[1]#_g14879_|
    (gx#make-syntax-quote '!alias::t #f (gx#current-expander-context) '()))
  (define |gxc[1]#_g14880_|
    (gx#make-syntax-quote 'make-!alias #f (gx#current-expander-context) '()))
  (define |gxc[1]#_g14881_|
    (gx#make-syntax-quote '!alias? #f (gx#current-expander-context) '()))
  (define |gxc[1]#_g14882_|
    (gx#make-syntax-quote '!type #f (gx#current-expander-context) '()))
  (define |gxc[1]#_g14883_|
    (gx#make-syntax-quote
     '!struct-type::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g14884_|
    (gx#make-syntax-quote
     'make-!struct-type
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g14885_|
    (gx#make-syntax-quote '!struct-type? #f (gx#current-expander-context) '()))
  (define |gxc[1]#_g14886_|
    (gx#make-syntax-quote
     '!struct-type-super
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g14887_|
    (gx#make-syntax-quote
     '!struct-type-fields
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g14888_|
    (gx#make-syntax-quote
     '!struct-type-xfields
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g14889_|
    (gx#make-syntax-quote
     '!struct-type-ctor
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g14890_|
    (gx#make-syntax-quote
     '!struct-type-plist
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g14891_|
    (gx#make-syntax-quote
     '!struct-type-methods
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g14892_|
    (gx#make-syntax-quote
     '!struct-type-super-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g14893_|
    (gx#make-syntax-quote
     '!struct-type-fields-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g14894_|
    (gx#make-syntax-quote
     '!struct-type-xfields-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g14895_|
    (gx#make-syntax-quote
     '!struct-type-ctor-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g14896_|
    (gx#make-syntax-quote
     '!struct-type-plist-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g14897_|
    (gx#make-syntax-quote
     '!struct-type-methods-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g14898_|
    (gx#make-syntax-quote '!procedure::t #f (gx#current-expander-context) '()))
  (define |gxc[1]#_g14899_|
    (gx#make-syntax-quote
     'make-!procedure
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g14900_|
    (gx#make-syntax-quote '!procedure? #f (gx#current-expander-context) '()))
  (define |gxc[1]#_g14901_|
    (gx#make-syntax-quote
     '!struct-pred::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g14902_|
    (gx#make-syntax-quote
     'make-!struct-pred
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g14903_|
    (gx#make-syntax-quote '!struct-pred? #f (gx#current-expander-context) '()))
  (define |gxc[1]#_g14904_|
    (gx#make-syntax-quote '!procedure #f (gx#current-expander-context) '()))
  (define |gxc[1]#_g14905_|
    (gx#make-syntax-quote
     '!struct-cons::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g14906_|
    (gx#make-syntax-quote
     'make-!struct-cons
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g14907_|
    (gx#make-syntax-quote '!struct-cons? #f (gx#current-expander-context) '()))
  (define |gxc[1]#_g14908_|
    (gx#make-syntax-quote
     '!struct-getf::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g14909_|
    (gx#make-syntax-quote
     'make-!struct-getf
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g14910_|
    (gx#make-syntax-quote '!struct-getf? #f (gx#current-expander-context) '()))
  (define |gxc[1]#_g14911_|
    (gx#make-syntax-quote
     '!struct-getf-off
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g14912_|
    (gx#make-syntax-quote
     '!struct-getf-unchecked?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g14913_|
    (gx#make-syntax-quote
     '!struct-getf-off-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g14914_|
    (gx#make-syntax-quote
     '!struct-getf-unchecked?-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g14915_|
    (gx#make-syntax-quote
     '!struct-setf::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g14916_|
    (gx#make-syntax-quote
     'make-!struct-setf
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g14917_|
    (gx#make-syntax-quote '!struct-setf? #f (gx#current-expander-context) '()))
  (define |gxc[1]#_g14918_|
    (gx#make-syntax-quote
     '!struct-setf-off
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g14919_|
    (gx#make-syntax-quote
     '!struct-setf-unchecked?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g14920_|
    (gx#make-syntax-quote
     '!struct-setf-off-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g14921_|
    (gx#make-syntax-quote
     '!struct-setf-unchecked?-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g14922_|
    (gx#make-syntax-quote '!lambda::t #f (gx#current-expander-context) '()))
  (define |gxc[1]#_g14923_|
    (gx#make-syntax-quote 'make-!lambda #f (gx#current-expander-context) '()))
  (define |gxc[1]#_g14924_|
    (gx#make-syntax-quote '!lambda? #f (gx#current-expander-context) '()))
  (define |gxc[1]#_g14925_|
    (gx#make-syntax-quote '!lambda-arity #f (gx#current-expander-context) '()))
  (define |gxc[1]#_g14926_|
    (gx#make-syntax-quote
     '!lambda-dispatch
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g14927_|
    (gx#make-syntax-quote
     '!lambda-inline
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g14928_|
    (gx#make-syntax-quote
     '!lambda-inline-typedecl
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g14929_|
    (gx#make-syntax-quote
     '!lambda-arity-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g14930_|
    (gx#make-syntax-quote
     '!lambda-dispatch-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g14931_|
    (gx#make-syntax-quote
     '!lambda-inline-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g14932_|
    (gx#make-syntax-quote
     '!lambda-inline-typedecl-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g14933_|
    (gx#make-syntax-quote
     '!case-lambda::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g14934_|
    (gx#make-syntax-quote
     'make-!case-lambda
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g14935_|
    (gx#make-syntax-quote '!case-lambda? #f (gx#current-expander-context) '()))
  (define |gxc[1]#_g14936_|
    (gx#make-syntax-quote
     '!case-lambda-clauses
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g14937_|
    (gx#make-syntax-quote
     '!case-lambda-clauses-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g14938_|
    (gx#make-syntax-quote '!kw-lambda::t #f (gx#current-expander-context) '()))
  (define |gxc[1]#_g14939_|
    (gx#make-syntax-quote
     'make-!kw-lambda
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g14940_|
    (gx#make-syntax-quote '!kw-lambda? #f (gx#current-expander-context) '()))
  (define |gxc[1]#_g14941_|
    (gx#make-syntax-quote
     '!kw-lambda-table
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g14942_|
    (gx#make-syntax-quote
     '!kw-lambda-dispatch
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g14943_|
    (gx#make-syntax-quote
     '!kw-lambda-table-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g14944_|
    (gx#make-syntax-quote
     '!kw-lambda-dispatch-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g14945_|
    (gx#make-syntax-quote
     '!kw-lambda-primary::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g14946_|
    (gx#make-syntax-quote
     'make-!kw-lambda-primary
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g14947_|
    (gx#make-syntax-quote
     '!kw-lambda-primary?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g14948_|
    (gx#make-syntax-quote
     '!kw-lambda-primary-keys
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g14949_|
    (gx#make-syntax-quote
     '!kw-lambda-primary-main
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g14950_|
    (gx#make-syntax-quote
     '!kw-lambda-primary-keys-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g14951_|
    (gx#make-syntax-quote
     '!kw-lambda-primary-main-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#optimizer-info|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gxc[1]#_g14867_|
       'expander-identifiers:
       (cons '#f
             (cons |gxc[1]#_g14867_|
                   (cons |gxc[1]#_g14868_|
                         (cons |gxc[1]#_g14869_|
                               (cons (cons |gxc[1]#_g14870_|
                                           (cons |gxc[1]#_g14871_| '()))
                                     (cons (cons |gxc[1]#_g14872_|
                                                 (cons |gxc[1]#_g14873_| '()))
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        '#f
        '#f
        'optimizer-info
        ':init!
        '()
        '(type ssxi))))
    (define |gxc[:0:]#!type|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gxc[1]#_g14874_|
       'expander-identifiers:
       (cons '#f
             (cons |gxc[1]#_g14874_|
                   (cons |gxc[1]#_g14875_|
                         (cons |gxc[1]#_g14876_|
                               (cons (cons |gxc[1]#_g14877_| '())
                                     (cons (cons |gxc[1]#_g14878_| '())
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        '#f
        '#f
        '!type
        '#f
        '()
        '(id))))
    (define |gxc[:0:]#!alias|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gxc[1]#_g14879_|
       'expander-identifiers:
       (cons |gxc[1]#_g14874_|
             (cons |gxc[1]#_g14879_|
                   (cons |gxc[1]#_g14880_|
                         (cons |gxc[1]#_g14881_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        '#f
        |gxc[1]#_g14882_|
        '!alias
        '#f
        '()
        '())))
    (define |gxc[:0:]#!struct-type|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gxc[1]#_g14883_|
       'expander-identifiers:
       (cons |gxc[1]#_g14874_|
             (cons |gxc[1]#_g14883_|
                   (cons |gxc[1]#_g14884_|
                         (cons |gxc[1]#_g14885_|
                               (cons (cons |gxc[1]#_g14886_|
                                           (cons |gxc[1]#_g14887_|
                                                 (cons |gxc[1]#_g14888_|
                                                       (cons |gxc[1]#_g14889_|
                                                             (cons |gxc[1]#_g14890_|
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons |gxc[1]#_g14891_| '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons |gxc[1]#_g14892_|
                                                 (cons |gxc[1]#_g14893_|
                                                       (cons |gxc[1]#_g14894_|
                                                             (cons |gxc[1]#_g14895_|
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons |gxc[1]#_g14896_|
                                 (cons |gxc[1]#_g14897_| '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        '#f
        |gxc[1]#_g14882_|
        '!struct-type
        ':init!
        '()
        '(super fields xfields ctor plist methods))))
    (define |gxc[:0:]#!procedure|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gxc[1]#_g14898_|
       'expander-identifiers:
       (cons |gxc[1]#_g14874_|
             (cons |gxc[1]#_g14898_|
                   (cons |gxc[1]#_g14899_|
                         (cons |gxc[1]#_g14900_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        '#f
        |gxc[1]#_g14882_|
        '!procedure
        '#f
        '()
        '())))
    (define |gxc[:0:]#!struct-pred|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gxc[1]#_g14901_|
       'expander-identifiers:
       (cons |gxc[1]#_g14898_|
             (cons |gxc[1]#_g14901_|
                   (cons |gxc[1]#_g14902_|
                         (cons |gxc[1]#_g14903_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        '#f
        |gxc[1]#_g14904_|
        '!struct-pred
        '#f
        '()
        '())))
    (define |gxc[:0:]#!struct-cons|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gxc[1]#_g14905_|
       'expander-identifiers:
       (cons |gxc[1]#_g14898_|
             (cons |gxc[1]#_g14905_|
                   (cons |gxc[1]#_g14906_|
                         (cons |gxc[1]#_g14907_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        '#f
        |gxc[1]#_g14904_|
        '!struct-cons
        '#f
        '()
        '())))
    (define |gxc[:0:]#!struct-getf|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gxc[1]#_g14908_|
       'expander-identifiers:
       (cons |gxc[1]#_g14898_|
             (cons |gxc[1]#_g14908_|
                   (cons |gxc[1]#_g14909_|
                         (cons |gxc[1]#_g14910_|
                               (cons (cons |gxc[1]#_g14911_|
                                           (cons |gxc[1]#_g14912_| '()))
                                     (cons (cons |gxc[1]#_g14913_|
                                                 (cons |gxc[1]#_g14914_| '()))
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        '#f
        |gxc[1]#_g14904_|
        '!struct-getf
        '#f
        '()
        '(off unchecked?))))
    (define |gxc[:0:]#!struct-setf|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gxc[1]#_g14915_|
       'expander-identifiers:
       (cons |gxc[1]#_g14898_|
             (cons |gxc[1]#_g14915_|
                   (cons |gxc[1]#_g14916_|
                         (cons |gxc[1]#_g14917_|
                               (cons (cons |gxc[1]#_g14918_|
                                           (cons |gxc[1]#_g14919_| '()))
                                     (cons (cons |gxc[1]#_g14920_|
                                                 (cons |gxc[1]#_g14921_| '()))
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        '#f
        |gxc[1]#_g14904_|
        '!struct-setf
        '#f
        '()
        '(off unchecked?))))
    (define |gxc[:0:]#!lambda|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gxc[1]#_g14922_|
       'expander-identifiers:
       (cons |gxc[1]#_g14898_|
             (cons |gxc[1]#_g14922_|
                   (cons |gxc[1]#_g14923_|
                         (cons |gxc[1]#_g14924_|
                               (cons (cons |gxc[1]#_g14925_|
                                           (cons |gxc[1]#_g14926_|
                                                 (cons |gxc[1]#_g14927_|
                                                       (cons |gxc[1]#_g14928_|
                                                             '()))))
                                     (cons (cons |gxc[1]#_g14929_|
                                                 (cons |gxc[1]#_g14930_|
                                                       (cons |gxc[1]#_g14931_|
                                                             (cons |gxc[1]#_g14932_|
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        '#f
        |gxc[1]#_g14904_|
        '!lambda
        ':init!
        '()
        '(arity dispatch inline inline-typedecl))))
    (define |gxc[:0:]#!case-lambda|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gxc[1]#_g14933_|
       'expander-identifiers:
       (cons |gxc[1]#_g14898_|
             (cons |gxc[1]#_g14933_|
                   (cons |gxc[1]#_g14934_|
                         (cons |gxc[1]#_g14935_|
                               (cons (cons |gxc[1]#_g14936_| '())
                                     (cons (cons |gxc[1]#_g14937_| '())
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        '#f
        |gxc[1]#_g14904_|
        '!case-lambda
        '#f
        '()
        '(clauses))))
    (define |gxc[:0:]#!kw-lambda|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gxc[1]#_g14938_|
       'expander-identifiers:
       (cons |gxc[1]#_g14898_|
             (cons |gxc[1]#_g14938_|
                   (cons |gxc[1]#_g14939_|
                         (cons |gxc[1]#_g14940_|
                               (cons (cons |gxc[1]#_g14941_|
                                           (cons |gxc[1]#_g14942_| '()))
                                     (cons (cons |gxc[1]#_g14943_|
                                                 (cons |gxc[1]#_g14944_| '()))
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        '#f
        |gxc[1]#_g14904_|
        '!kw-lambda
        '#f
        '()
        '(table dispatch))))
    (define |gxc[:0:]#!kw-lambda-primary|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gxc[1]#_g14945_|
       'expander-identifiers:
       (cons |gxc[1]#_g14898_|
             (cons |gxc[1]#_g14945_|
                   (cons |gxc[1]#_g14946_|
                         (cons |gxc[1]#_g14947_|
                               (cons (cons |gxc[1]#_g14948_|
                                           (cons |gxc[1]#_g14949_| '()))
                                     (cons (cons |gxc[1]#_g14950_|
                                                 (cons |gxc[1]#_g14951_| '()))
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        '#f
        |gxc[1]#_g14904_|
        '!kw-lambda-primary
        '#f
        '()
        '(keys main))))))
