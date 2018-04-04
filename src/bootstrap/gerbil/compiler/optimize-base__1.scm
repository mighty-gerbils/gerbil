(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g16226_|
    (gx#make-syntax-quote
     'optimizer-info::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g16227_|
    (gx#make-syntax-quote
     'make-optimizer-info
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g16228_|
    (gx#make-syntax-quote
     'optimizer-info?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g16229_|
    (gx#make-syntax-quote
     'optimizer-info-type
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g16230_|
    (gx#make-syntax-quote
     'optimizer-info-ssxi
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g16231_|
    (gx#make-syntax-quote
     'optimizer-info-type-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g16232_|
    (gx#make-syntax-quote
     'optimizer-info-ssxi-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g16233_|
    (gx#make-syntax-quote '!type::t #f (gx#current-expander-context) '()))
  (define |gxc[1]#_g16234_|
    (gx#make-syntax-quote 'make-!type #f (gx#current-expander-context) '()))
  (define |gxc[1]#_g16235_|
    (gx#make-syntax-quote '!type? #f (gx#current-expander-context) '()))
  (define |gxc[1]#_g16236_|
    (gx#make-syntax-quote '!type-id #f (gx#current-expander-context) '()))
  (define |gxc[1]#_g16237_|
    (gx#make-syntax-quote '!type-id-set! #f (gx#current-expander-context) '()))
  (define |gxc[1]#_g16238_|
    (gx#make-syntax-quote '!alias::t #f (gx#current-expander-context) '()))
  (define |gxc[1]#_g16239_|
    (gx#make-syntax-quote 'make-!alias #f (gx#current-expander-context) '()))
  (define |gxc[1]#_g16240_|
    (gx#make-syntax-quote '!alias? #f (gx#current-expander-context) '()))
  (define |gxc[1]#_g16241_|
    (gx#make-syntax-quote '!type #f (gx#current-expander-context) '()))
  (define |gxc[1]#_g16242_|
    (gx#make-syntax-quote
     '!struct-type::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g16243_|
    (gx#make-syntax-quote
     'make-!struct-type
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g16244_|
    (gx#make-syntax-quote '!struct-type? #f (gx#current-expander-context) '()))
  (define |gxc[1]#_g16245_|
    (gx#make-syntax-quote
     '!struct-type-super
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g16246_|
    (gx#make-syntax-quote
     '!struct-type-fields
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g16247_|
    (gx#make-syntax-quote
     '!struct-type-xfields
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g16248_|
    (gx#make-syntax-quote
     '!struct-type-ctor
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g16249_|
    (gx#make-syntax-quote
     '!struct-type-plist
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g16250_|
    (gx#make-syntax-quote
     '!struct-type-methods
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g16251_|
    (gx#make-syntax-quote
     '!struct-type-super-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g16252_|
    (gx#make-syntax-quote
     '!struct-type-fields-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g16253_|
    (gx#make-syntax-quote
     '!struct-type-xfields-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g16254_|
    (gx#make-syntax-quote
     '!struct-type-ctor-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g16255_|
    (gx#make-syntax-quote
     '!struct-type-plist-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g16256_|
    (gx#make-syntax-quote
     '!struct-type-methods-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g16257_|
    (gx#make-syntax-quote '!procedure::t #f (gx#current-expander-context) '()))
  (define |gxc[1]#_g16258_|
    (gx#make-syntax-quote
     'make-!procedure
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g16259_|
    (gx#make-syntax-quote '!procedure? #f (gx#current-expander-context) '()))
  (define |gxc[1]#_g16260_|
    (gx#make-syntax-quote
     '!struct-pred::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g16261_|
    (gx#make-syntax-quote
     'make-!struct-pred
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g16262_|
    (gx#make-syntax-quote '!struct-pred? #f (gx#current-expander-context) '()))
  (define |gxc[1]#_g16263_|
    (gx#make-syntax-quote '!procedure #f (gx#current-expander-context) '()))
  (define |gxc[1]#_g16264_|
    (gx#make-syntax-quote
     '!struct-cons::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g16265_|
    (gx#make-syntax-quote
     'make-!struct-cons
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g16266_|
    (gx#make-syntax-quote '!struct-cons? #f (gx#current-expander-context) '()))
  (define |gxc[1]#_g16267_|
    (gx#make-syntax-quote
     '!struct-getf::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g16268_|
    (gx#make-syntax-quote
     'make-!struct-getf
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g16269_|
    (gx#make-syntax-quote '!struct-getf? #f (gx#current-expander-context) '()))
  (define |gxc[1]#_g16270_|
    (gx#make-syntax-quote
     '!struct-getf-off
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g16271_|
    (gx#make-syntax-quote
     '!struct-getf-unchecked?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g16272_|
    (gx#make-syntax-quote
     '!struct-getf-off-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g16273_|
    (gx#make-syntax-quote
     '!struct-getf-unchecked?-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g16274_|
    (gx#make-syntax-quote
     '!struct-setf::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g16275_|
    (gx#make-syntax-quote
     'make-!struct-setf
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g16276_|
    (gx#make-syntax-quote '!struct-setf? #f (gx#current-expander-context) '()))
  (define |gxc[1]#_g16277_|
    (gx#make-syntax-quote
     '!struct-setf-off
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g16278_|
    (gx#make-syntax-quote
     '!struct-setf-unchecked?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g16279_|
    (gx#make-syntax-quote
     '!struct-setf-off-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g16280_|
    (gx#make-syntax-quote
     '!struct-setf-unchecked?-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g16281_|
    (gx#make-syntax-quote '!lambda::t #f (gx#current-expander-context) '()))
  (define |gxc[1]#_g16282_|
    (gx#make-syntax-quote 'make-!lambda #f (gx#current-expander-context) '()))
  (define |gxc[1]#_g16283_|
    (gx#make-syntax-quote '!lambda? #f (gx#current-expander-context) '()))
  (define |gxc[1]#_g16284_|
    (gx#make-syntax-quote '!lambda-arity #f (gx#current-expander-context) '()))
  (define |gxc[1]#_g16285_|
    (gx#make-syntax-quote
     '!lambda-dispatch
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g16286_|
    (gx#make-syntax-quote
     '!lambda-inline
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g16287_|
    (gx#make-syntax-quote
     '!lambda-inline-typedecl
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g16288_|
    (gx#make-syntax-quote
     '!lambda-arity-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g16289_|
    (gx#make-syntax-quote
     '!lambda-dispatch-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g16290_|
    (gx#make-syntax-quote
     '!lambda-inline-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g16291_|
    (gx#make-syntax-quote
     '!lambda-inline-typedecl-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g16292_|
    (gx#make-syntax-quote
     '!case-lambda::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g16293_|
    (gx#make-syntax-quote
     'make-!case-lambda
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g16294_|
    (gx#make-syntax-quote '!case-lambda? #f (gx#current-expander-context) '()))
  (define |gxc[1]#_g16295_|
    (gx#make-syntax-quote
     '!case-lambda-clauses
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g16296_|
    (gx#make-syntax-quote
     '!case-lambda-clauses-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g16297_|
    (gx#make-syntax-quote '!kw-lambda::t #f (gx#current-expander-context) '()))
  (define |gxc[1]#_g16298_|
    (gx#make-syntax-quote
     'make-!kw-lambda
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g16299_|
    (gx#make-syntax-quote '!kw-lambda? #f (gx#current-expander-context) '()))
  (define |gxc[1]#_g16300_|
    (gx#make-syntax-quote
     '!kw-lambda-table
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g16301_|
    (gx#make-syntax-quote
     '!kw-lambda-dispatch
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g16302_|
    (gx#make-syntax-quote
     '!kw-lambda-table-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g16303_|
    (gx#make-syntax-quote
     '!kw-lambda-dispatch-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g16304_|
    (gx#make-syntax-quote
     '!kw-lambda-primary::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g16305_|
    (gx#make-syntax-quote
     'make-!kw-lambda-primary
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g16306_|
    (gx#make-syntax-quote
     '!kw-lambda-primary?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g16307_|
    (gx#make-syntax-quote
     '!kw-lambda-primary-keys
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g16308_|
    (gx#make-syntax-quote
     '!kw-lambda-primary-main
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g16309_|
    (gx#make-syntax-quote
     '!kw-lambda-primary-keys-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g16310_|
    (gx#make-syntax-quote
     '!kw-lambda-primary-main-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#optimizer-info|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gxc[1]#_g16226_|
       'expander-identifiers:
       (cons '#f
             (cons |gxc[1]#_g16226_|
                   (cons |gxc[1]#_g16227_|
                         (cons |gxc[1]#_g16228_|
                               (cons (cons |gxc[1]#_g16229_|
                                           (cons |gxc[1]#_g16230_| '()))
                                     (cons (cons |gxc[1]#_g16231_|
                                                 (cons |gxc[1]#_g16232_| '()))
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
       |gxc[1]#_g16233_|
       'expander-identifiers:
       (cons '#f
             (cons |gxc[1]#_g16233_|
                   (cons |gxc[1]#_g16234_|
                         (cons |gxc[1]#_g16235_|
                               (cons (cons |gxc[1]#_g16236_| '())
                                     (cons (cons |gxc[1]#_g16237_| '())
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
       |gxc[1]#_g16238_|
       'expander-identifiers:
       (cons |gxc[1]#_g16233_|
             (cons |gxc[1]#_g16238_|
                   (cons |gxc[1]#_g16239_|
                         (cons |gxc[1]#_g16240_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        '#f
        |gxc[1]#_g16241_|
        '!alias
        '#f
        '()
        '())))
    (define |gxc[:0:]#!struct-type|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gxc[1]#_g16242_|
       'expander-identifiers:
       (cons |gxc[1]#_g16233_|
             (cons |gxc[1]#_g16242_|
                   (cons |gxc[1]#_g16243_|
                         (cons |gxc[1]#_g16244_|
                               (cons (cons |gxc[1]#_g16245_|
                                           (cons |gxc[1]#_g16246_|
                                                 (cons |gxc[1]#_g16247_|
                                                       (cons |gxc[1]#_g16248_|
                                                             (cons |gxc[1]#_g16249_|
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons |gxc[1]#_g16250_| '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons |gxc[1]#_g16251_|
                                                 (cons |gxc[1]#_g16252_|
                                                       (cons |gxc[1]#_g16253_|
                                                             (cons |gxc[1]#_g16254_|
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons |gxc[1]#_g16255_|
                                 (cons |gxc[1]#_g16256_| '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        '#f
        |gxc[1]#_g16241_|
        '!struct-type
        ':init!
        '()
        '(super fields xfields ctor plist methods))))
    (define |gxc[:0:]#!procedure|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gxc[1]#_g16257_|
       'expander-identifiers:
       (cons |gxc[1]#_g16233_|
             (cons |gxc[1]#_g16257_|
                   (cons |gxc[1]#_g16258_|
                         (cons |gxc[1]#_g16259_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        '#f
        |gxc[1]#_g16241_|
        '!procedure
        '#f
        '()
        '())))
    (define |gxc[:0:]#!struct-pred|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gxc[1]#_g16260_|
       'expander-identifiers:
       (cons |gxc[1]#_g16257_|
             (cons |gxc[1]#_g16260_|
                   (cons |gxc[1]#_g16261_|
                         (cons |gxc[1]#_g16262_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        '#f
        |gxc[1]#_g16263_|
        '!struct-pred
        '#f
        '()
        '())))
    (define |gxc[:0:]#!struct-cons|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gxc[1]#_g16264_|
       'expander-identifiers:
       (cons |gxc[1]#_g16257_|
             (cons |gxc[1]#_g16264_|
                   (cons |gxc[1]#_g16265_|
                         (cons |gxc[1]#_g16266_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        '#f
        |gxc[1]#_g16263_|
        '!struct-cons
        '#f
        '()
        '())))
    (define |gxc[:0:]#!struct-getf|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gxc[1]#_g16267_|
       'expander-identifiers:
       (cons |gxc[1]#_g16257_|
             (cons |gxc[1]#_g16267_|
                   (cons |gxc[1]#_g16268_|
                         (cons |gxc[1]#_g16269_|
                               (cons (cons |gxc[1]#_g16270_|
                                           (cons |gxc[1]#_g16271_| '()))
                                     (cons (cons |gxc[1]#_g16272_|
                                                 (cons |gxc[1]#_g16273_| '()))
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        '#f
        |gxc[1]#_g16263_|
        '!struct-getf
        '#f
        '()
        '(off unchecked?))))
    (define |gxc[:0:]#!struct-setf|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gxc[1]#_g16274_|
       'expander-identifiers:
       (cons |gxc[1]#_g16257_|
             (cons |gxc[1]#_g16274_|
                   (cons |gxc[1]#_g16275_|
                         (cons |gxc[1]#_g16276_|
                               (cons (cons |gxc[1]#_g16277_|
                                           (cons |gxc[1]#_g16278_| '()))
                                     (cons (cons |gxc[1]#_g16279_|
                                                 (cons |gxc[1]#_g16280_| '()))
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        '#f
        |gxc[1]#_g16263_|
        '!struct-setf
        '#f
        '()
        '(off unchecked?))))
    (define |gxc[:0:]#!lambda|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gxc[1]#_g16281_|
       'expander-identifiers:
       (cons |gxc[1]#_g16257_|
             (cons |gxc[1]#_g16281_|
                   (cons |gxc[1]#_g16282_|
                         (cons |gxc[1]#_g16283_|
                               (cons (cons |gxc[1]#_g16284_|
                                           (cons |gxc[1]#_g16285_|
                                                 (cons |gxc[1]#_g16286_|
                                                       (cons |gxc[1]#_g16287_|
                                                             '()))))
                                     (cons (cons |gxc[1]#_g16288_|
                                                 (cons |gxc[1]#_g16289_|
                                                       (cons |gxc[1]#_g16290_|
                                                             (cons |gxc[1]#_g16291_|
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        '#f
        |gxc[1]#_g16263_|
        '!lambda
        ':init!
        '()
        '(arity dispatch inline inline-typedecl))))
    (define |gxc[:0:]#!case-lambda|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gxc[1]#_g16292_|
       'expander-identifiers:
       (cons |gxc[1]#_g16257_|
             (cons |gxc[1]#_g16292_|
                   (cons |gxc[1]#_g16293_|
                         (cons |gxc[1]#_g16294_|
                               (cons (cons |gxc[1]#_g16295_| '())
                                     (cons (cons |gxc[1]#_g16296_| '())
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        '#f
        |gxc[1]#_g16263_|
        '!case-lambda
        '#f
        '()
        '(clauses))))
    (define |gxc[:0:]#!kw-lambda|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gxc[1]#_g16297_|
       'expander-identifiers:
       (cons |gxc[1]#_g16257_|
             (cons |gxc[1]#_g16297_|
                   (cons |gxc[1]#_g16298_|
                         (cons |gxc[1]#_g16299_|
                               (cons (cons |gxc[1]#_g16300_|
                                           (cons |gxc[1]#_g16301_| '()))
                                     (cons (cons |gxc[1]#_g16302_|
                                                 (cons |gxc[1]#_g16303_| '()))
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        '#f
        |gxc[1]#_g16263_|
        '!kw-lambda
        '#f
        '()
        '(table dispatch))))
    (define |gxc[:0:]#!kw-lambda-primary|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gxc[1]#_g16304_|
       'expander-identifiers:
       (cons |gxc[1]#_g16257_|
             (cons |gxc[1]#_g16304_|
                   (cons |gxc[1]#_g16305_|
                         (cons |gxc[1]#_g16306_|
                               (cons (cons |gxc[1]#_g16307_|
                                           (cons |gxc[1]#_g16308_| '()))
                                     (cons (cons |gxc[1]#_g16309_|
                                                 (cons |gxc[1]#_g16310_| '()))
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        '#f
        |gxc[1]#_g16263_|
        '!kw-lambda-primary
        '#f
        '()
        '(keys main))))))
