(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gxc#current-compile-optimizer-info (make-parameter '#f))
  (define gxc#current-compile-mutators (make-parameter '#f))
  (define gxc#current-compile-local-type (make-parameter '#f))
  (define gxc#optimizer-info::t
    (make-struct-type
     'gxc#optimizer-info::t
     '#f
     '2
     'optimizer-info
     '()
     ':init!
     '(type ssxi)))
  (define gxc#optimizer-info? (make-struct-predicate gxc#optimizer-info::t))
  (define gxc#make-optimizer-info
    (lambda _$args14793_
      (apply make-struct-instance gxc#optimizer-info::t _$args14793_)))
  (define gxc#optimizer-info-type
    (make-struct-field-accessor gxc#optimizer-info::t '0))
  (define gxc#optimizer-info-ssxi
    (make-struct-field-accessor gxc#optimizer-info::t '1))
  (define gxc#optimizer-info-type-set!
    (make-struct-field-mutator gxc#optimizer-info::t '0))
  (define gxc#optimizer-info-ssxi-set!
    (make-struct-field-mutator gxc#optimizer-info::t '1))
  (define gxc#optimizer-info:::init!
    (lambda (_self14791_)
      (if (##fx< '2 (##vector-length _self14791_))
          (begin
            (##vector-set! _self14791_ '1 (make-hash-table-eq))
            (##vector-set! _self14791_ '2 (make-hash-table-eq)))
          (error '"struct-instance-init!: too many arguments for struct"
                 _self14791_))))
  (bind-method! gxc#optimizer-info::t ':init! gxc#optimizer-info:::init! '#f)
  (define gxc#!type::t
    (make-struct-type 'gxc#!type::t '#f '1 '!type '() '#f '(id)))
  (define gxc#!type? (make-struct-predicate gxc#!type::t))
  (define gxc#make-!type
    (lambda _$args14666_
      (apply make-struct-instance gxc#!type::t _$args14666_)))
  (define gxc#!type-id (make-struct-field-accessor gxc#!type::t '0))
  (define gxc#!type-id-set! (make-struct-field-mutator gxc#!type::t '0))
  (define gxc#!alias::t
    (make-struct-type 'gxc#!alias::t gxc#!type::t '0 '!alias '() '#f '()))
  (define gxc#!alias? (make-struct-predicate gxc#!alias::t))
  (define gxc#make-!alias
    (lambda _$args14663_
      (apply make-struct-instance gxc#!alias::t _$args14663_)))
  (define gxc#!struct-type::t
    (make-struct-type
     'gxc#!struct-type::t
     gxc#!type::t
     '6
     '!struct-type
     '()
     ':init!
     '(super fields xfields ctor plist methods)))
  (define gxc#!struct-type? (make-struct-predicate gxc#!struct-type::t))
  (define gxc#make-!struct-type
    (lambda _$args14660_
      (apply make-struct-instance gxc#!struct-type::t _$args14660_)))
  (define gxc#!struct-type-super
    (make-struct-field-accessor gxc#!struct-type::t '0))
  (define gxc#!struct-type-fields
    (make-struct-field-accessor gxc#!struct-type::t '1))
  (define gxc#!struct-type-xfields
    (make-struct-field-accessor gxc#!struct-type::t '2))
  (define gxc#!struct-type-ctor
    (make-struct-field-accessor gxc#!struct-type::t '3))
  (define gxc#!struct-type-plist
    (make-struct-field-accessor gxc#!struct-type::t '4))
  (define gxc#!struct-type-methods
    (make-struct-field-accessor gxc#!struct-type::t '5))
  (define gxc#!struct-type-super-set!
    (make-struct-field-mutator gxc#!struct-type::t '0))
  (define gxc#!struct-type-fields-set!
    (make-struct-field-mutator gxc#!struct-type::t '1))
  (define gxc#!struct-type-xfields-set!
    (make-struct-field-mutator gxc#!struct-type::t '2))
  (define gxc#!struct-type-ctor-set!
    (make-struct-field-mutator gxc#!struct-type::t '3))
  (define gxc#!struct-type-plist-set!
    (make-struct-field-mutator gxc#!struct-type::t '4))
  (define gxc#!struct-type-methods-set!
    (make-struct-field-mutator gxc#!struct-type::t '5))
  (define gxc#!procedure::t
    (make-struct-type
     'gxc#!procedure::t
     gxc#!type::t
     '0
     '!procedure
     '()
     '#f
     '()))
  (define gxc#!procedure? (make-struct-predicate gxc#!procedure::t))
  (define gxc#make-!procedure
    (lambda _$args14657_
      (apply make-struct-instance gxc#!procedure::t _$args14657_)))
  (define gxc#!struct-pred::t
    (make-struct-type
     'gxc#!struct-pred::t
     gxc#!procedure::t
     '0
     '!struct-pred
     '()
     '#f
     '()))
  (define gxc#!struct-pred? (make-struct-predicate gxc#!struct-pred::t))
  (define gxc#make-!struct-pred
    (lambda _$args14654_
      (apply make-struct-instance gxc#!struct-pred::t _$args14654_)))
  (define gxc#!struct-cons::t
    (make-struct-type
     'gxc#!struct-cons::t
     gxc#!procedure::t
     '0
     '!struct-cons
     '()
     '#f
     '()))
  (define gxc#!struct-cons? (make-struct-predicate gxc#!struct-cons::t))
  (define gxc#make-!struct-cons
    (lambda _$args14651_
      (apply make-struct-instance gxc#!struct-cons::t _$args14651_)))
  (define gxc#!struct-getf::t
    (make-struct-type
     'gxc#!struct-getf::t
     gxc#!procedure::t
     '2
     '!struct-getf
     '()
     '#f
     '(off unchecked?)))
  (define gxc#!struct-getf? (make-struct-predicate gxc#!struct-getf::t))
  (define gxc#make-!struct-getf
    (lambda _$args14648_
      (apply make-struct-instance gxc#!struct-getf::t _$args14648_)))
  (define gxc#!struct-getf-off
    (make-struct-field-accessor gxc#!struct-getf::t '0))
  (define gxc#!struct-getf-unchecked?
    (make-struct-field-accessor gxc#!struct-getf::t '1))
  (define gxc#!struct-getf-off-set!
    (make-struct-field-mutator gxc#!struct-getf::t '0))
  (define gxc#!struct-getf-unchecked?-set!
    (make-struct-field-mutator gxc#!struct-getf::t '1))
  (define gxc#!struct-setf::t
    (make-struct-type
     'gxc#!struct-setf::t
     gxc#!procedure::t
     '2
     '!struct-setf
     '()
     '#f
     '(off unchecked?)))
  (define gxc#!struct-setf? (make-struct-predicate gxc#!struct-setf::t))
  (define gxc#make-!struct-setf
    (lambda _$args14645_
      (apply make-struct-instance gxc#!struct-setf::t _$args14645_)))
  (define gxc#!struct-setf-off
    (make-struct-field-accessor gxc#!struct-setf::t '0))
  (define gxc#!struct-setf-unchecked?
    (make-struct-field-accessor gxc#!struct-setf::t '1))
  (define gxc#!struct-setf-off-set!
    (make-struct-field-mutator gxc#!struct-setf::t '0))
  (define gxc#!struct-setf-unchecked?-set!
    (make-struct-field-mutator gxc#!struct-setf::t '1))
  (define gxc#!lambda::t
    (make-struct-type
     'gxc#!lambda::t
     gxc#!procedure::t
     '4
     '!lambda
     '()
     ':init!
     '(arity dispatch inline inline-typedecl)))
  (define gxc#!lambda? (make-struct-predicate gxc#!lambda::t))
  (define gxc#make-!lambda
    (lambda _$args14642_
      (apply make-struct-instance gxc#!lambda::t _$args14642_)))
  (define gxc#!lambda-arity (make-struct-field-accessor gxc#!lambda::t '0))
  (define gxc#!lambda-dispatch (make-struct-field-accessor gxc#!lambda::t '1))
  (define gxc#!lambda-inline (make-struct-field-accessor gxc#!lambda::t '2))
  (define gxc#!lambda-inline-typedecl
    (make-struct-field-accessor gxc#!lambda::t '3))
  (define gxc#!lambda-arity-set! (make-struct-field-mutator gxc#!lambda::t '0))
  (define gxc#!lambda-dispatch-set!
    (make-struct-field-mutator gxc#!lambda::t '1))
  (define gxc#!lambda-inline-set!
    (make-struct-field-mutator gxc#!lambda::t '2))
  (define gxc#!lambda-inline-typedecl-set!
    (make-struct-field-mutator gxc#!lambda::t '3))
  (define gxc#!case-lambda::t
    (make-struct-type
     'gxc#!case-lambda::t
     gxc#!procedure::t
     '1
     '!case-lambda
     '()
     '#f
     '(clauses)))
  (define gxc#!case-lambda? (make-struct-predicate gxc#!case-lambda::t))
  (define gxc#make-!case-lambda
    (lambda _$args14639_
      (apply make-struct-instance gxc#!case-lambda::t _$args14639_)))
  (define gxc#!case-lambda-clauses
    (make-struct-field-accessor gxc#!case-lambda::t '0))
  (define gxc#!case-lambda-clauses-set!
    (make-struct-field-mutator gxc#!case-lambda::t '0))
  (define gxc#!kw-lambda::t
    (make-struct-type
     'gxc#!kw-lambda::t
     gxc#!procedure::t
     '2
     '!kw-lambda
     '()
     '#f
     '(table dispatch)))
  (define gxc#!kw-lambda? (make-struct-predicate gxc#!kw-lambda::t))
  (define gxc#make-!kw-lambda
    (lambda _$args14636_
      (apply make-struct-instance gxc#!kw-lambda::t _$args14636_)))
  (define gxc#!kw-lambda-table
    (make-struct-field-accessor gxc#!kw-lambda::t '0))
  (define gxc#!kw-lambda-dispatch
    (make-struct-field-accessor gxc#!kw-lambda::t '1))
  (define gxc#!kw-lambda-table-set!
    (make-struct-field-mutator gxc#!kw-lambda::t '0))
  (define gxc#!kw-lambda-dispatch-set!
    (make-struct-field-mutator gxc#!kw-lambda::t '1))
  (define gxc#!kw-lambda-primary::t
    (make-struct-type
     'gxc#!kw-lambda-primary::t
     gxc#!procedure::t
     '2
     '!kw-lambda-primary
     '()
     '#f
     '(keys main)))
  (define gxc#!kw-lambda-primary?
    (make-struct-predicate gxc#!kw-lambda-primary::t))
  (define gxc#make-!kw-lambda-primary
    (lambda _$args14633_
      (apply make-struct-instance gxc#!kw-lambda-primary::t _$args14633_)))
  (define gxc#!kw-lambda-primary-keys
    (make-struct-field-accessor gxc#!kw-lambda-primary::t '0))
  (define gxc#!kw-lambda-primary-main
    (make-struct-field-accessor gxc#!kw-lambda-primary::t '1))
  (define gxc#!kw-lambda-primary-keys-set!
    (make-struct-field-mutator gxc#!kw-lambda-primary::t '0))
  (define gxc#!kw-lambda-primary-main-set!
    (make-struct-field-mutator gxc#!kw-lambda-primary::t '1))
  (define gxc#!struct-type:::init!
    (lambda (_self14625_
             _id14626_
             _super14627_
             _fields14628_
             _xfields14629_
             _ctor14630_
             _plist14631_)
      (if (##fx< '7 (##vector-length _self14625_))
          (begin
            (##vector-set! _self14625_ '1 _id14626_)
            (##vector-set! _self14625_ '2 _super14627_)
            (##vector-set! _self14625_ '3 _fields14628_)
            (##vector-set! _self14625_ '4 _xfields14629_)
            (##vector-set! _self14625_ '5 _ctor14630_)
            (##vector-set! _self14625_ '6 _plist14631_)
            (##vector-set! _self14625_ '7 '#f))
          (error '"struct-instance-init!: too many arguments for struct"
                 _self14625_))))
  (bind-method! gxc#!struct-type::t ':init! gxc#!struct-type:::init! '#f)
  (begin
    (define gxc#!lambda:::init!__%
      (lambda (_self14469_
               _id14470_
               _arity14471_
               _dispatch14472_
               _inline14473_
               _typedecl14474_)
        (if (##fx< '5 (##vector-length _self14469_))
            (begin
              (##vector-set! _self14469_ '1 _id14470_)
              (##vector-set! _self14469_ '2 _arity14471_)
              (##vector-set! _self14469_ '3 _dispatch14472_)
              (##vector-set! _self14469_ '4 _inline14473_)
              (##vector-set! _self14469_ '5 _typedecl14474_))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self14469_))))
    (begin
      (define gxc#!lambda:::init!__0
        (lambda (_self14479_ _id14480_ _arity14481_ _dispatch14482_)
          (let* ((_inline14484_ '#f) (_typedecl14486_ '#f))
            (if (##fx< '5 (##vector-length _self14479_))
                (begin
                  (##vector-set! _self14479_ '1 _id14480_)
                  (##vector-set! _self14479_ '2 _arity14481_)
                  (##vector-set! _self14479_ '3 _dispatch14482_)
                  (##vector-set! _self14479_ '4 _inline14484_)
                  (##vector-set! _self14479_ '5 _typedecl14486_))
                (error '"struct-instance-init!: too many arguments for struct"
                       _self14479_)))))
      (define gxc#!lambda:::init!__1
        (lambda (_self14488_
                 _id14489_
                 _arity14490_
                 _dispatch14491_
                 _inline14492_)
          (let ((_typedecl14494_ '#f))
            (if (##fx< '5 (##vector-length _self14488_))
                (begin
                  (##vector-set! _self14488_ '1 _id14489_)
                  (##vector-set! _self14488_ '2 _arity14490_)
                  (##vector-set! _self14488_ '3 _dispatch14491_)
                  (##vector-set! _self14488_ '4 _inline14492_)
                  (##vector-set! _self14488_ '5 _typedecl14494_))
                (error '"struct-instance-init!: too many arguments for struct"
                       _self14488_)))))
      (define gxc#!lambda:::init!
        (lambda _g14796_
          (let ((_g14795_ (length _g14796_)))
            (cond ((##fx= _g14795_ 4) (apply gxc#!lambda:::init!__0 _g14796_))
                  ((##fx= _g14795_ 5) (apply gxc#!lambda:::init!__1 _g14796_))
                  ((##fx= _g14795_ 6)
                   (apply (lambda (_self14496_
                                   _id14497_
                                   _arity14498_
                                   _dispatch14499_
                                   _inline14500_
                                   _typedecl14501_)
                            (if (##fx< '5 (##vector-length _self14496_))
                                (begin
                                  (##vector-set! _self14496_ '1 _id14497_)
                                  (##vector-set! _self14496_ '2 _arity14498_)
                                  (##vector-set!
                                   _self14496_
                                   '3
                                   _dispatch14499_)
                                  (##vector-set! _self14496_ '4 _inline14500_)
                                  (##vector-set!
                                   _self14496_
                                   '5
                                   _typedecl14501_))
                                (error '"struct-instance-init!: too many arguments for struct"
                                       _self14496_)))
                          _g14796_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#!lambda:::init!
                    _g14796_))))))))
  (bind-method! gxc#!lambda::t ':init! gxc#!lambda:::init! '#f)
  (define gxc#!struct-type-vtab
    (lambda (_type14338_)
      (let ((_$e14340_
             (##structure-ref _type14338_ '7 gxc#!struct-type::t '#f)))
        (if _$e14340_
            (values _$e14340_)
            (let ((_vtab14343_ (make-hash-table-eq)))
              (begin
                (##structure-set!
                 _type14338_
                 _vtab14343_
                 '7
                 gxc#!struct-type::t
                 '#f)
                _vtab14343_))))))
  (define gxc#!struct-type-lookup-method
    (lambda (_type14329_ _method14330_)
      (let ((_vtab1433114333_
             (##structure-ref _type14329_ '7 gxc#!struct-type::t '#f)))
        (if _vtab1433114333_
            (let ((_vtab14336_ _vtab1433114333_))
              (table-ref _vtab14336_ _method14330_ '#f))
            '#f))))
  (begin
    (define gxc#optimizer-declare-type!__%
      (lambda (_sym14313_ _type14314_ _local?14315_)
        (begin
          (if (##structure-instance-of? _type14314_ 'gxc#!type::t)
              '#!void
              (error '"bad declaration: expected !type"
                     _sym14313_
                     _type14314_))
          (gxc#verbose
           '"declare-type "
           _sym14313_
           '" "
           (struct->list _type14314_))
          (table-set!
           (if _local?14315_
               (gxc#current-compile-local-type)
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '1
                gxc#optimizer-info::t
                '#f))
           _sym14313_
           _type14314_))))
    (begin
      (define gxc#optimizer-declare-type!__0
        (lambda (_sym14320_ _type14321_)
          (let ((_local?14323_ '#f))
            (gxc#optimizer-declare-type!__%
             _sym14320_
             _type14321_
             _local?14323_))))
      (define gxc#optimizer-declare-type!
        (lambda _g14798_
          (let ((_g14797_ (length _g14798_)))
            (cond ((##fx= _g14797_ 2)
                   (apply gxc#optimizer-declare-type!__0 _g14798_))
                  ((##fx= _g14797_ 3)
                   (apply gxc#optimizer-declare-type!__% _g14798_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#optimizer-declare-type!
                    _g14798_))))))))
  (begin
    (define gxc#optimizer-declare-method!__%
      (lambda (_type-t14289_ _method14290_ _sym14291_ _rebind?14292_)
        (let ((_type14294_ (gxc#optimizer-resolve-type _type-t14289_)))
          (if (##structure-instance-of? _type14294_ 'gxc#!struct-type::t)
              (let ((_vtab14296_ (gxc#!struct-type-vtab _type14294_)))
                (if _rebind?14292_
                    (if (hash-key? _vtab14296_ _method14290_)
                        (gxc#verbose
                         '"declare-method: [warning] skip rebind on existing method"
                         _type-t14289_
                         '" "
                         _method14290_)
                        (gxc#verbose
                         '"declare-method: skip rebind method "
                         _type-t14289_
                         '" "
                         _method14290_))
                    (if (hash-key? _vtab14296_ _method14290_)
                        (error '"declare-method: duplicate method declaration")
                        (begin
                          (gxc#verbose
                           '"declare-method "
                           _type-t14289_
                           '" "
                           _method14290_
                           '" => "
                           _sym14291_)
                          (table-set! _vtab14296_ _method14290_ _sym14291_)))))
              (if (not _type14294_)
                  (gxc#verbose '"declare-method: unknown type " _type-t14289_)
                  (error '"declare-method: bad method declaration; no method table"
                         _type-t14289_
                         _type14294_))))))
    (begin
      (define gxc#optimizer-declare-method!__0
        (lambda (_type-t14301_ _method14302_ _sym14303_)
          (let ((_rebind?14305_ '#f))
            (gxc#optimizer-declare-method!__%
             _type-t14301_
             _method14302_
             _sym14303_
             _rebind?14305_))))
      (define gxc#optimizer-declare-method!
        (lambda _g14800_
          (let ((_g14799_ (length _g14800_)))
            (cond ((##fx= _g14799_ 3)
                   (apply gxc#optimizer-declare-method!__0 _g14800_))
                  ((##fx= _g14799_ 4)
                   (apply gxc#optimizer-declare-method!__% _g14800_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#optimizer-declare-method!
                    _g14800_))))))))
  (define gxc#optimizer-lookup-type
    (lambda (_sym14277_)
      (let ((_$e14285_
             (let ((_ht1427814280_ (gxc#current-compile-local-type)))
               (if _ht1427814280_
                   (let ((_ht14283_ _ht1427814280_))
                     (table-ref _ht14283_ _sym14277_ '#f))
                   '#f))))
        (if _$e14285_
            _$e14285_
            (table-ref
             (##structure-ref
              (gxc#current-compile-optimizer-info)
              '1
              gxc#optimizer-info::t
              '#f)
             _sym14277_
             '#f)))))
  (define gxc#optimizer-resolve-type
    (lambda (_sym14269_)
      (let ((_type1427014272_ (gxc#optimizer-lookup-type _sym14269_)))
        (if _type1427014272_
            (let ((_type14275_ _type1427014272_))
              (if (##structure-instance-of? _type14275_ 'gxc#!alias::t)
                  (gxc#optimizer-resolve-type
                   (##structure-ref _type14275_ '1 gxc#!type::t '#f))
                  _type14275_))
            '#f))))
  (define gxc#optimizer-lookup-method
    (lambda (_type-t14264_ _method14265_)
      (let ((_type14267_ (gxc#optimizer-resolve-type _type-t14264_)))
        (if (##structure-instance-of? _type14267_ 'gxc#!struct-type::t)
            (gxc#!struct-type-lookup-method _type14267_ _method14265_)
            '#f))))
  (define gxc#identifier-symbol
    (lambda (_stx14262_)
      (if (##structure-direct-instance-of? _stx14262_ 'gx#syntax-quote::t)
          (gxc#generate-runtime-binding-id _stx14262_)
          (gx#stx-e _stx14262_)))))
