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
    (lambda _$args14843_
      (apply make-struct-instance gxc#optimizer-info::t _$args14843_)))
  (define gxc#optimizer-info-type
    (make-struct-field-accessor gxc#optimizer-info::t '0))
  (define gxc#optimizer-info-ssxi
    (make-struct-field-accessor gxc#optimizer-info::t '1))
  (define gxc#optimizer-info-type-set!
    (make-struct-field-mutator gxc#optimizer-info::t '0))
  (define gxc#optimizer-info-ssxi-set!
    (make-struct-field-mutator gxc#optimizer-info::t '1))
  (define gxc#optimizer-info:::init!
    (lambda (_self14841_)
      (if (##fx< '2 (##vector-length _self14841_))
          (begin
            (##vector-set! _self14841_ '1 (make-hash-table-eq))
            (##vector-set! _self14841_ '2 (make-hash-table-eq)))
          (error '"struct-instance-init!: too many arguments for struct"
                 _self14841_))))
  (bind-method! gxc#optimizer-info::t ':init! gxc#optimizer-info:::init! '#f)
  (define gxc#!type::t
    (make-struct-type 'gxc#!type::t '#f '1 '!type '() '#f '(id)))
  (define gxc#!type? (make-struct-predicate gxc#!type::t))
  (define gxc#make-!type
    (lambda _$args14716_
      (apply make-struct-instance gxc#!type::t _$args14716_)))
  (define gxc#!type-id (make-struct-field-accessor gxc#!type::t '0))
  (define gxc#!type-id-set! (make-struct-field-mutator gxc#!type::t '0))
  (define gxc#!alias::t
    (make-struct-type 'gxc#!alias::t gxc#!type::t '0 '!alias '() '#f '()))
  (define gxc#!alias? (make-struct-predicate gxc#!alias::t))
  (define gxc#make-!alias
    (lambda _$args14713_
      (apply make-struct-instance gxc#!alias::t _$args14713_)))
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
    (lambda _$args14710_
      (apply make-struct-instance gxc#!struct-type::t _$args14710_)))
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
    (lambda _$args14707_
      (apply make-struct-instance gxc#!procedure::t _$args14707_)))
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
    (lambda _$args14704_
      (apply make-struct-instance gxc#!struct-pred::t _$args14704_)))
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
    (lambda _$args14701_
      (apply make-struct-instance gxc#!struct-cons::t _$args14701_)))
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
    (lambda _$args14698_
      (apply make-struct-instance gxc#!struct-getf::t _$args14698_)))
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
    (lambda _$args14695_
      (apply make-struct-instance gxc#!struct-setf::t _$args14695_)))
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
    (lambda _$args14692_
      (apply make-struct-instance gxc#!lambda::t _$args14692_)))
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
    (lambda _$args14689_
      (apply make-struct-instance gxc#!case-lambda::t _$args14689_)))
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
    (lambda _$args14686_
      (apply make-struct-instance gxc#!kw-lambda::t _$args14686_)))
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
    (lambda _$args14683_
      (apply make-struct-instance gxc#!kw-lambda-primary::t _$args14683_)))
  (define gxc#!kw-lambda-primary-keys
    (make-struct-field-accessor gxc#!kw-lambda-primary::t '0))
  (define gxc#!kw-lambda-primary-main
    (make-struct-field-accessor gxc#!kw-lambda-primary::t '1))
  (define gxc#!kw-lambda-primary-keys-set!
    (make-struct-field-mutator gxc#!kw-lambda-primary::t '0))
  (define gxc#!kw-lambda-primary-main-set!
    (make-struct-field-mutator gxc#!kw-lambda-primary::t '1))
  (define gxc#!struct-type:::init!
    (lambda (_self14675_
             _id14676_
             _super14677_
             _fields14678_
             _xfields14679_
             _ctor14680_
             _plist14681_)
      (if (##fx< '7 (##vector-length _self14675_))
          (begin
            (##vector-set! _self14675_ '1 _id14676_)
            (##vector-set! _self14675_ '2 _super14677_)
            (##vector-set! _self14675_ '3 _fields14678_)
            (##vector-set! _self14675_ '4 _xfields14679_)
            (##vector-set! _self14675_ '5 _ctor14680_)
            (##vector-set! _self14675_ '6 _plist14681_)
            (##vector-set! _self14675_ '7 '#f))
          (error '"struct-instance-init!: too many arguments for struct"
                 _self14675_))))
  (bind-method! gxc#!struct-type::t ':init! gxc#!struct-type:::init! '#f)
  (begin
    (define gxc#!lambda:::init!__%
      (lambda (_self14519_
               _id14520_
               _arity14521_
               _dispatch14522_
               _inline14523_
               _typedecl14524_)
        (if (##fx< '5 (##vector-length _self14519_))
            (begin
              (##vector-set! _self14519_ '1 _id14520_)
              (##vector-set! _self14519_ '2 _arity14521_)
              (##vector-set! _self14519_ '3 _dispatch14522_)
              (##vector-set! _self14519_ '4 _inline14523_)
              (##vector-set! _self14519_ '5 _typedecl14524_))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self14519_))))
    (begin
      (define gxc#!lambda:::init!__0
        (lambda (_self14529_ _id14530_ _arity14531_ _dispatch14532_)
          (let* ((_inline14534_ '#f) (_typedecl14536_ '#f))
            (if (##fx< '5 (##vector-length _self14529_))
                (begin
                  (##vector-set! _self14529_ '1 _id14530_)
                  (##vector-set! _self14529_ '2 _arity14531_)
                  (##vector-set! _self14529_ '3 _dispatch14532_)
                  (##vector-set! _self14529_ '4 _inline14534_)
                  (##vector-set! _self14529_ '5 _typedecl14536_))
                (error '"struct-instance-init!: too many arguments for struct"
                       _self14529_)))))
      (define gxc#!lambda:::init!__1
        (lambda (_self14538_
                 _id14539_
                 _arity14540_
                 _dispatch14541_
                 _inline14542_)
          (let ((_typedecl14544_ '#f))
            (if (##fx< '5 (##vector-length _self14538_))
                (begin
                  (##vector-set! _self14538_ '1 _id14539_)
                  (##vector-set! _self14538_ '2 _arity14540_)
                  (##vector-set! _self14538_ '3 _dispatch14541_)
                  (##vector-set! _self14538_ '4 _inline14542_)
                  (##vector-set! _self14538_ '5 _typedecl14544_))
                (error '"struct-instance-init!: too many arguments for struct"
                       _self14538_)))))
      (define gxc#!lambda:::init!
        (lambda _g14846_
          (let ((_g14845_ (length _g14846_)))
            (cond ((##fx= _g14845_ 4) (apply gxc#!lambda:::init!__0 _g14846_))
                  ((##fx= _g14845_ 5) (apply gxc#!lambda:::init!__1 _g14846_))
                  ((##fx= _g14845_ 6)
                   (apply (lambda (_self14546_
                                   _id14547_
                                   _arity14548_
                                   _dispatch14549_
                                   _inline14550_
                                   _typedecl14551_)
                            (if (##fx< '5 (##vector-length _self14546_))
                                (begin
                                  (##vector-set! _self14546_ '1 _id14547_)
                                  (##vector-set! _self14546_ '2 _arity14548_)
                                  (##vector-set!
                                   _self14546_
                                   '3
                                   _dispatch14549_)
                                  (##vector-set! _self14546_ '4 _inline14550_)
                                  (##vector-set!
                                   _self14546_
                                   '5
                                   _typedecl14551_))
                                (error '"struct-instance-init!: too many arguments for struct"
                                       _self14546_)))
                          _g14846_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#!lambda:::init!
                    _g14846_))))))))
  (bind-method! gxc#!lambda::t ':init! gxc#!lambda:::init! '#f)
  (define gxc#!struct-type-vtab
    (lambda (_type14388_)
      (let ((_$e14390_
             (##structure-ref _type14388_ '7 gxc#!struct-type::t '#f)))
        (if _$e14390_
            (values _$e14390_)
            (let ((_vtab14393_ (make-hash-table-eq)))
              (begin
                (##structure-set!
                 _type14388_
                 _vtab14393_
                 '7
                 gxc#!struct-type::t
                 '#f)
                _vtab14393_))))))
  (define gxc#!struct-type-lookup-method
    (lambda (_type14379_ _method14380_)
      (let ((_vtab1438114383_
             (##structure-ref _type14379_ '7 gxc#!struct-type::t '#f)))
        (if _vtab1438114383_
            (let ((_vtab14386_ _vtab1438114383_))
              (table-ref _vtab14386_ _method14380_ '#f))
            '#f))))
  (begin
    (define gxc#optimizer-declare-type!__%
      (lambda (_sym14363_ _type14364_ _local?14365_)
        (begin
          (if (##structure-instance-of? _type14364_ 'gxc#!type::t)
              '#!void
              (error '"bad declaration: expected !type"
                     _sym14363_
                     _type14364_))
          (gxc#verbose
           '"declare-type "
           _sym14363_
           '" "
           (struct->list _type14364_))
          (table-set!
           (if _local?14365_
               (gxc#current-compile-local-type)
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '1
                gxc#optimizer-info::t
                '#f))
           _sym14363_
           _type14364_))))
    (begin
      (define gxc#optimizer-declare-type!__0
        (lambda (_sym14370_ _type14371_)
          (let ((_local?14373_ '#f))
            (gxc#optimizer-declare-type!__%
             _sym14370_
             _type14371_
             _local?14373_))))
      (define gxc#optimizer-declare-type!
        (lambda _g14848_
          (let ((_g14847_ (length _g14848_)))
            (cond ((##fx= _g14847_ 2)
                   (apply gxc#optimizer-declare-type!__0 _g14848_))
                  ((##fx= _g14847_ 3)
                   (apply gxc#optimizer-declare-type!__% _g14848_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#optimizer-declare-type!
                    _g14848_))))))))
  (begin
    (define gxc#optimizer-declare-method!__%
      (lambda (_type-t14339_ _method14340_ _sym14341_ _rebind?14342_)
        (let ((_type14344_ (gxc#optimizer-resolve-type _type-t14339_)))
          (if (##structure-instance-of? _type14344_ 'gxc#!struct-type::t)
              (let ((_vtab14346_ (gxc#!struct-type-vtab _type14344_)))
                (if _rebind?14342_
                    (if (hash-key? _vtab14346_ _method14340_)
                        (gxc#verbose
                         '"declare-method: [warning] skip rebind on existing method"
                         _type-t14339_
                         '" "
                         _method14340_)
                        (gxc#verbose
                         '"declare-method: skip rebind method "
                         _type-t14339_
                         '" "
                         _method14340_))
                    (if (hash-key? _vtab14346_ _method14340_)
                        (error '"declare-method: duplicate method declaration")
                        (begin
                          (gxc#verbose
                           '"declare-method "
                           _type-t14339_
                           '" "
                           _method14340_
                           '" => "
                           _sym14341_)
                          (table-set! _vtab14346_ _method14340_ _sym14341_)))))
              (if (not _type14344_)
                  (gxc#verbose '"declare-method: unknown type " _type-t14339_)
                  (error '"declare-method: bad method declaration; no method table"
                         _type-t14339_
                         _type14344_))))))
    (begin
      (define gxc#optimizer-declare-method!__0
        (lambda (_type-t14351_ _method14352_ _sym14353_)
          (let ((_rebind?14355_ '#f))
            (gxc#optimizer-declare-method!__%
             _type-t14351_
             _method14352_
             _sym14353_
             _rebind?14355_))))
      (define gxc#optimizer-declare-method!
        (lambda _g14850_
          (let ((_g14849_ (length _g14850_)))
            (cond ((##fx= _g14849_ 3)
                   (apply gxc#optimizer-declare-method!__0 _g14850_))
                  ((##fx= _g14849_ 4)
                   (apply gxc#optimizer-declare-method!__% _g14850_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#optimizer-declare-method!
                    _g14850_))))))))
  (define gxc#optimizer-lookup-type
    (lambda (_sym14327_)
      (let ((_$e14335_
             (let ((_ht1432814330_ (gxc#current-compile-local-type)))
               (if _ht1432814330_
                   (let ((_ht14333_ _ht1432814330_))
                     (table-ref _ht14333_ _sym14327_ '#f))
                   '#f))))
        (if _$e14335_
            _$e14335_
            (table-ref
             (##structure-ref
              (gxc#current-compile-optimizer-info)
              '1
              gxc#optimizer-info::t
              '#f)
             _sym14327_
             '#f)))))
  (define gxc#optimizer-resolve-type
    (lambda (_sym14319_)
      (let ((_type1432014322_ (gxc#optimizer-lookup-type _sym14319_)))
        (if _type1432014322_
            (let ((_type14325_ _type1432014322_))
              (if (##structure-instance-of? _type14325_ 'gxc#!alias::t)
                  (gxc#optimizer-resolve-type
                   (##structure-ref _type14325_ '1 gxc#!type::t '#f))
                  _type14325_))
            '#f))))
  (define gxc#optimizer-lookup-method
    (lambda (_type-t14314_ _method14315_)
      (let ((_type14317_ (gxc#optimizer-resolve-type _type-t14314_)))
        (if (##structure-instance-of? _type14317_ 'gxc#!struct-type::t)
            (gxc#!struct-type-lookup-method _type14317_ _method14315_)
            '#f))))
  (define gxc#identifier-symbol
    (lambda (_stx14312_)
      (if (##structure-direct-instance-of? _stx14312_ 'gx#syntax-quote::t)
          (gxc#generate-runtime-binding-id _stx14312_)
          (gx#stx-e _stx14312_)))))
