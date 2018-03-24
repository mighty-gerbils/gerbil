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
    (lambda _$args14838_
      (apply make-struct-instance gxc#optimizer-info::t _$args14838_)))
  (define gxc#optimizer-info-type
    (make-struct-field-accessor gxc#optimizer-info::t '0))
  (define gxc#optimizer-info-ssxi
    (make-struct-field-accessor gxc#optimizer-info::t '1))
  (define gxc#optimizer-info-type-set!
    (make-struct-field-mutator gxc#optimizer-info::t '0))
  (define gxc#optimizer-info-ssxi-set!
    (make-struct-field-mutator gxc#optimizer-info::t '1))
  (define gxc#optimizer-info:::init!
    (lambda (_self14836_)
      (if (##fx< '2 (##vector-length _self14836_))
          (begin
            (##vector-set! _self14836_ '1 (make-hash-table-eq))
            (##vector-set! _self14836_ '2 (make-hash-table-eq)))
          (error '"struct-instance-init!: too many arguments for struct"
                 _self14836_))))
  (bind-method! gxc#optimizer-info::t ':init! gxc#optimizer-info:::init! '#f)
  (define gxc#!type::t
    (make-struct-type 'gxc#!type::t '#f '1 '!type '() '#f '(id)))
  (define gxc#!type? (make-struct-predicate gxc#!type::t))
  (define gxc#make-!type
    (lambda _$args14711_
      (apply make-struct-instance gxc#!type::t _$args14711_)))
  (define gxc#!type-id (make-struct-field-accessor gxc#!type::t '0))
  (define gxc#!type-id-set! (make-struct-field-mutator gxc#!type::t '0))
  (define gxc#!alias::t
    (make-struct-type 'gxc#!alias::t gxc#!type::t '0 '!alias '() '#f '()))
  (define gxc#!alias? (make-struct-predicate gxc#!alias::t))
  (define gxc#make-!alias
    (lambda _$args14708_
      (apply make-struct-instance gxc#!alias::t _$args14708_)))
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
    (lambda _$args14705_
      (apply make-struct-instance gxc#!struct-type::t _$args14705_)))
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
    (lambda _$args14702_
      (apply make-struct-instance gxc#!procedure::t _$args14702_)))
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
    (lambda _$args14699_
      (apply make-struct-instance gxc#!struct-pred::t _$args14699_)))
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
    (lambda _$args14696_
      (apply make-struct-instance gxc#!struct-cons::t _$args14696_)))
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
    (lambda _$args14693_
      (apply make-struct-instance gxc#!struct-getf::t _$args14693_)))
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
    (lambda _$args14690_
      (apply make-struct-instance gxc#!struct-setf::t _$args14690_)))
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
    (lambda _$args14687_
      (apply make-struct-instance gxc#!lambda::t _$args14687_)))
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
    (lambda _$args14684_
      (apply make-struct-instance gxc#!case-lambda::t _$args14684_)))
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
    (lambda _$args14681_
      (apply make-struct-instance gxc#!kw-lambda::t _$args14681_)))
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
    (lambda _$args14678_
      (apply make-struct-instance gxc#!kw-lambda-primary::t _$args14678_)))
  (define gxc#!kw-lambda-primary-keys
    (make-struct-field-accessor gxc#!kw-lambda-primary::t '0))
  (define gxc#!kw-lambda-primary-main
    (make-struct-field-accessor gxc#!kw-lambda-primary::t '1))
  (define gxc#!kw-lambda-primary-keys-set!
    (make-struct-field-mutator gxc#!kw-lambda-primary::t '0))
  (define gxc#!kw-lambda-primary-main-set!
    (make-struct-field-mutator gxc#!kw-lambda-primary::t '1))
  (define gxc#!struct-type:::init!
    (lambda (_self14670_
             _id14671_
             _super14672_
             _fields14673_
             _xfields14674_
             _ctor14675_
             _plist14676_)
      (if (##fx< '7 (##vector-length _self14670_))
          (begin
            (##vector-set! _self14670_ '1 _id14671_)
            (##vector-set! _self14670_ '2 _super14672_)
            (##vector-set! _self14670_ '3 _fields14673_)
            (##vector-set! _self14670_ '4 _xfields14674_)
            (##vector-set! _self14670_ '5 _ctor14675_)
            (##vector-set! _self14670_ '6 _plist14676_)
            (##vector-set! _self14670_ '7 '#f))
          (error '"struct-instance-init!: too many arguments for struct"
                 _self14670_))))
  (bind-method! gxc#!struct-type::t ':init! gxc#!struct-type:::init! '#f)
  (begin
    (define gxc#!lambda:::init!__%
      (lambda (_self14514_
               _id14515_
               _arity14516_
               _dispatch14517_
               _inline14518_
               _typedecl14519_)
        (if (##fx< '5 (##vector-length _self14514_))
            (begin
              (##vector-set! _self14514_ '1 _id14515_)
              (##vector-set! _self14514_ '2 _arity14516_)
              (##vector-set! _self14514_ '3 _dispatch14517_)
              (##vector-set! _self14514_ '4 _inline14518_)
              (##vector-set! _self14514_ '5 _typedecl14519_))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self14514_))))
    (begin
      (define gxc#!lambda:::init!__0
        (lambda (_self14524_ _id14525_ _arity14526_ _dispatch14527_)
          (let* ((_inline14529_ '#f) (_typedecl14531_ '#f))
            (if (##fx< '5 (##vector-length _self14524_))
                (begin
                  (##vector-set! _self14524_ '1 _id14525_)
                  (##vector-set! _self14524_ '2 _arity14526_)
                  (##vector-set! _self14524_ '3 _dispatch14527_)
                  (##vector-set! _self14524_ '4 _inline14529_)
                  (##vector-set! _self14524_ '5 _typedecl14531_))
                (error '"struct-instance-init!: too many arguments for struct"
                       _self14524_)))))
      (define gxc#!lambda:::init!__1
        (lambda (_self14533_
                 _id14534_
                 _arity14535_
                 _dispatch14536_
                 _inline14537_)
          (let ((_typedecl14539_ '#f))
            (if (##fx< '5 (##vector-length _self14533_))
                (begin
                  (##vector-set! _self14533_ '1 _id14534_)
                  (##vector-set! _self14533_ '2 _arity14535_)
                  (##vector-set! _self14533_ '3 _dispatch14536_)
                  (##vector-set! _self14533_ '4 _inline14537_)
                  (##vector-set! _self14533_ '5 _typedecl14539_))
                (error '"struct-instance-init!: too many arguments for struct"
                       _self14533_)))))
      (define gxc#!lambda:::init!
        (lambda _g14841_
          (let ((_g14840_ (length _g14841_)))
            (cond ((##fx= _g14840_ 4) (apply gxc#!lambda:::init!__0 _g14841_))
                  ((##fx= _g14840_ 5) (apply gxc#!lambda:::init!__1 _g14841_))
                  ((##fx= _g14840_ 6)
                   (apply (lambda (_self14541_
                                   _id14542_
                                   _arity14543_
                                   _dispatch14544_
                                   _inline14545_
                                   _typedecl14546_)
                            (if (##fx< '5 (##vector-length _self14541_))
                                (begin
                                  (##vector-set! _self14541_ '1 _id14542_)
                                  (##vector-set! _self14541_ '2 _arity14543_)
                                  (##vector-set!
                                   _self14541_
                                   '3
                                   _dispatch14544_)
                                  (##vector-set! _self14541_ '4 _inline14545_)
                                  (##vector-set!
                                   _self14541_
                                   '5
                                   _typedecl14546_))
                                (error '"struct-instance-init!: too many arguments for struct"
                                       _self14541_)))
                          _g14841_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#!lambda:::init!
                    _g14841_))))))))
  (bind-method! gxc#!lambda::t ':init! gxc#!lambda:::init! '#f)
  (define gxc#!struct-type-vtab
    (lambda (_type14383_)
      (let ((_$e14385_
             (##structure-ref _type14383_ '7 gxc#!struct-type::t '#f)))
        (if _$e14385_
            (values _$e14385_)
            (let ((_vtab14388_ (make-hash-table-eq)))
              (begin
                (##structure-set!
                 _type14383_
                 _vtab14388_
                 '7
                 gxc#!struct-type::t
                 '#f)
                _vtab14388_))))))
  (define gxc#!struct-type-lookup-method
    (lambda (_type14374_ _method14375_)
      (let ((_vtab1437614378_
             (##structure-ref _type14374_ '7 gxc#!struct-type::t '#f)))
        (if _vtab1437614378_
            (let ((_vtab14381_ _vtab1437614378_))
              (table-ref _vtab14381_ _method14375_ '#f))
            '#f))))
  (begin
    (define gxc#optimizer-declare-type!__%
      (lambda (_sym14358_ _type14359_ _local?14360_)
        (begin
          (if (##structure-instance-of? _type14359_ 'gxc#!type::t)
              '#!void
              (error '"bad declaration: expected !type"
                     _sym14358_
                     _type14359_))
          (gxc#verbose
           '"declare-type "
           _sym14358_
           '" "
           (struct->list _type14359_))
          (table-set!
           (if _local?14360_
               (gxc#current-compile-local-type)
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '1
                gxc#optimizer-info::t
                '#f))
           _sym14358_
           _type14359_))))
    (begin
      (define gxc#optimizer-declare-type!__0
        (lambda (_sym14365_ _type14366_)
          (let ((_local?14368_ '#f))
            (gxc#optimizer-declare-type!__%
             _sym14365_
             _type14366_
             _local?14368_))))
      (define gxc#optimizer-declare-type!
        (lambda _g14843_
          (let ((_g14842_ (length _g14843_)))
            (cond ((##fx= _g14842_ 2)
                   (apply gxc#optimizer-declare-type!__0 _g14843_))
                  ((##fx= _g14842_ 3)
                   (apply gxc#optimizer-declare-type!__% _g14843_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#optimizer-declare-type!
                    _g14843_))))))))
  (begin
    (define gxc#optimizer-declare-method!__%
      (lambda (_type-t14334_ _method14335_ _sym14336_ _rebind?14337_)
        (let ((_type14339_ (gxc#optimizer-resolve-type _type-t14334_)))
          (if (##structure-instance-of? _type14339_ 'gxc#!struct-type::t)
              (let ((_vtab14341_ (gxc#!struct-type-vtab _type14339_)))
                (if _rebind?14337_
                    (if (hash-key? _vtab14341_ _method14335_)
                        (gxc#verbose
                         '"declare-method: [warning] skip rebind on existing method"
                         _type-t14334_
                         '" "
                         _method14335_)
                        (gxc#verbose
                         '"declare-method: skip rebind method "
                         _type-t14334_
                         '" "
                         _method14335_))
                    (if (hash-key? _vtab14341_ _method14335_)
                        (error '"declare-method: duplicate method declaration")
                        (begin
                          (gxc#verbose
                           '"declare-method "
                           _type-t14334_
                           '" "
                           _method14335_
                           '" => "
                           _sym14336_)
                          (table-set! _vtab14341_ _method14335_ _sym14336_)))))
              (if (not _type14339_)
                  (gxc#verbose '"declare-method: unknown type " _type-t14334_)
                  (error '"declare-method: bad method declaration; no method table"
                         _type-t14334_
                         _type14339_))))))
    (begin
      (define gxc#optimizer-declare-method!__0
        (lambda (_type-t14346_ _method14347_ _sym14348_)
          (let ((_rebind?14350_ '#f))
            (gxc#optimizer-declare-method!__%
             _type-t14346_
             _method14347_
             _sym14348_
             _rebind?14350_))))
      (define gxc#optimizer-declare-method!
        (lambda _g14845_
          (let ((_g14844_ (length _g14845_)))
            (cond ((##fx= _g14844_ 3)
                   (apply gxc#optimizer-declare-method!__0 _g14845_))
                  ((##fx= _g14844_ 4)
                   (apply gxc#optimizer-declare-method!__% _g14845_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#optimizer-declare-method!
                    _g14845_))))))))
  (define gxc#optimizer-lookup-type
    (lambda (_sym14322_)
      (let ((_$e14330_
             (let ((_ht1432314325_ (gxc#current-compile-local-type)))
               (if _ht1432314325_
                   (let ((_ht14328_ _ht1432314325_))
                     (table-ref _ht14328_ _sym14322_ '#f))
                   '#f))))
        (if _$e14330_
            _$e14330_
            (table-ref
             (##structure-ref
              (gxc#current-compile-optimizer-info)
              '1
              gxc#optimizer-info::t
              '#f)
             _sym14322_
             '#f)))))
  (define gxc#optimizer-resolve-type
    (lambda (_sym14314_)
      (let ((_type1431514317_ (gxc#optimizer-lookup-type _sym14314_)))
        (if _type1431514317_
            (let ((_type14320_ _type1431514317_))
              (if (##structure-instance-of? _type14320_ 'gxc#!alias::t)
                  (gxc#optimizer-resolve-type
                   (##structure-ref _type14320_ '1 gxc#!type::t '#f))
                  _type14320_))
            '#f))))
  (define gxc#optimizer-lookup-method
    (lambda (_type-t14309_ _method14310_)
      (let ((_type14312_ (gxc#optimizer-resolve-type _type-t14309_)))
        (if (##structure-instance-of? _type14312_ 'gxc#!struct-type::t)
            (gxc#!struct-type-lookup-method _type14312_ _method14310_)
            '#f))))
  (define gxc#identifier-symbol
    (lambda (_stx14307_)
      (if (##structure-direct-instance-of? _stx14307_ 'gx#syntax-quote::t)
          (gxc#generate-runtime-binding-id _stx14307_)
          (gx#stx-e _stx14307_)))))
