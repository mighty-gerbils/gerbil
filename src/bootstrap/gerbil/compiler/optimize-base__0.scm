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
    (lambda _$args13497_
      (apply make-struct-instance gxc#optimizer-info::t _$args13497_)))
  (define gxc#optimizer-info-type
    (make-struct-field-accessor gxc#optimizer-info::t '0))
  (define gxc#optimizer-info-ssxi
    (make-struct-field-accessor gxc#optimizer-info::t '1))
  (define gxc#optimizer-info-type-set!
    (make-struct-field-mutator gxc#optimizer-info::t '0))
  (define gxc#optimizer-info-ssxi-set!
    (make-struct-field-mutator gxc#optimizer-info::t '1))
  (define gxc#optimizer-info:::init!
    (lambda (_self13495_)
      (if (##fx< '2 (##vector-length _self13495_))
          (begin
            (##vector-set! _self13495_ '1 (make-hash-table-eq))
            (##vector-set! _self13495_ '2 (make-hash-table-eq)))
          (error '"struct-instance-init!: too many arguments for struct"
                 _self13495_))))
  (bind-method! gxc#optimizer-info::t ':init! gxc#optimizer-info:::init! '#f)
  (define gxc#!type::t
    (make-struct-type 'gxc#!type::t '#f '1 '!type '() '#f '(id)))
  (define gxc#!type? (make-struct-predicate gxc#!type::t))
  (define gxc#make-!type
    (lambda _$args13370_
      (apply make-struct-instance gxc#!type::t _$args13370_)))
  (define gxc#!type-id (make-struct-field-accessor gxc#!type::t '0))
  (define gxc#!type-id-set! (make-struct-field-mutator gxc#!type::t '0))
  (define gxc#!alias::t
    (make-struct-type 'gxc#!alias::t gxc#!type::t '0 '!alias '() '#f '()))
  (define gxc#!alias? (make-struct-predicate gxc#!alias::t))
  (define gxc#make-!alias
    (lambda _$args13367_
      (apply make-struct-instance gxc#!alias::t _$args13367_)))
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
    (lambda _$args13364_
      (apply make-struct-instance gxc#!struct-type::t _$args13364_)))
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
    (lambda _$args13361_
      (apply make-struct-instance gxc#!procedure::t _$args13361_)))
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
    (lambda _$args13358_
      (apply make-struct-instance gxc#!struct-pred::t _$args13358_)))
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
    (lambda _$args13355_
      (apply make-struct-instance gxc#!struct-cons::t _$args13355_)))
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
    (lambda _$args13352_
      (apply make-struct-instance gxc#!struct-getf::t _$args13352_)))
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
    (lambda _$args13349_
      (apply make-struct-instance gxc#!struct-setf::t _$args13349_)))
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
    (lambda _$args13346_
      (apply make-struct-instance gxc#!lambda::t _$args13346_)))
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
    (lambda _$args13343_
      (apply make-struct-instance gxc#!case-lambda::t _$args13343_)))
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
    (lambda _$args13340_
      (apply make-struct-instance gxc#!kw-lambda::t _$args13340_)))
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
    (lambda _$args13337_
      (apply make-struct-instance gxc#!kw-lambda-primary::t _$args13337_)))
  (define gxc#!kw-lambda-primary-keys
    (make-struct-field-accessor gxc#!kw-lambda-primary::t '0))
  (define gxc#!kw-lambda-primary-main
    (make-struct-field-accessor gxc#!kw-lambda-primary::t '1))
  (define gxc#!kw-lambda-primary-keys-set!
    (make-struct-field-mutator gxc#!kw-lambda-primary::t '0))
  (define gxc#!kw-lambda-primary-main-set!
    (make-struct-field-mutator gxc#!kw-lambda-primary::t '1))
  (define gxc#!struct-type:::init!
    (lambda (_self13329_
             _id13330_
             _super13331_
             _fields13332_
             _xfields13333_
             _ctor13334_
             _plist13335_)
      (if (##fx< '7 (##vector-length _self13329_))
          (begin
            (##vector-set! _self13329_ '1 _id13330_)
            (##vector-set! _self13329_ '2 _super13331_)
            (##vector-set! _self13329_ '3 _fields13332_)
            (##vector-set! _self13329_ '4 _xfields13333_)
            (##vector-set! _self13329_ '5 _ctor13334_)
            (##vector-set! _self13329_ '6 _plist13335_)
            (##vector-set! _self13329_ '7 '#f))
          (error '"struct-instance-init!: too many arguments for struct"
                 _self13329_))))
  (bind-method! gxc#!struct-type::t ':init! gxc#!struct-type:::init! '#f)
  (begin
    (define gxc#!lambda:::init!__%
      (lambda (_self13173_
               _id13174_
               _arity13175_
               _dispatch13176_
               _inline13177_
               _typedecl13178_)
        (if (##fx< '5 (##vector-length _self13173_))
            (begin
              (##vector-set! _self13173_ '1 _id13174_)
              (##vector-set! _self13173_ '2 _arity13175_)
              (##vector-set! _self13173_ '3 _dispatch13176_)
              (##vector-set! _self13173_ '4 _inline13177_)
              (##vector-set! _self13173_ '5 _typedecl13178_))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self13173_))))
    (begin
      (define gxc#!lambda:::init!__0
        (lambda (_self13183_ _id13184_ _arity13185_ _dispatch13186_)
          (let* ((_inline13188_ '#f) (_typedecl13190_ '#f))
            (if (##fx< '5 (##vector-length _self13183_))
                (begin
                  (##vector-set! _self13183_ '1 _id13184_)
                  (##vector-set! _self13183_ '2 _arity13185_)
                  (##vector-set! _self13183_ '3 _dispatch13186_)
                  (##vector-set! _self13183_ '4 _inline13188_)
                  (##vector-set! _self13183_ '5 _typedecl13190_))
                (error '"struct-instance-init!: too many arguments for struct"
                       _self13183_)))))
      (define gxc#!lambda:::init!__1
        (lambda (_self13192_
                 _id13193_
                 _arity13194_
                 _dispatch13195_
                 _inline13196_)
          (let ((_typedecl13198_ '#f))
            (if (##fx< '5 (##vector-length _self13192_))
                (begin
                  (##vector-set! _self13192_ '1 _id13193_)
                  (##vector-set! _self13192_ '2 _arity13194_)
                  (##vector-set! _self13192_ '3 _dispatch13195_)
                  (##vector-set! _self13192_ '4 _inline13196_)
                  (##vector-set! _self13192_ '5 _typedecl13198_))
                (error '"struct-instance-init!: too many arguments for struct"
                       _self13192_)))))
      (define gxc#!lambda:::init!
        (lambda _g13500_
          (let ((_g13499_ (length _g13500_)))
            (cond ((##fx= _g13499_ 4) (apply gxc#!lambda:::init!__0 _g13500_))
                  ((##fx= _g13499_ 5) (apply gxc#!lambda:::init!__1 _g13500_))
                  ((##fx= _g13499_ 6)
                   (apply (lambda (_self13200_
                                   _id13201_
                                   _arity13202_
                                   _dispatch13203_
                                   _inline13204_
                                   _typedecl13205_)
                            (if (##fx< '5 (##vector-length _self13200_))
                                (begin
                                  (##vector-set! _self13200_ '1 _id13201_)
                                  (##vector-set! _self13200_ '2 _arity13202_)
                                  (##vector-set!
                                   _self13200_
                                   '3
                                   _dispatch13203_)
                                  (##vector-set! _self13200_ '4 _inline13204_)
                                  (##vector-set!
                                   _self13200_
                                   '5
                                   _typedecl13205_))
                                (error '"struct-instance-init!: too many arguments for struct"
                                       _self13200_)))
                          _g13500_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#!lambda:::init!
                    _g13500_))))))))
  (bind-method! gxc#!lambda::t ':init! gxc#!lambda:::init! '#f)
  (define gxc#!struct-type-vtab
    (lambda (_type13042_)
      (let ((_$e13044_
             (##structure-ref _type13042_ '7 gxc#!struct-type::t '#f)))
        (if _$e13044_
            (values _$e13044_)
            (let ((_vtab13047_ (make-hash-table-eq)))
              (begin
                (##structure-set!
                 _type13042_
                 _vtab13047_
                 '7
                 gxc#!struct-type::t
                 '#f)
                _vtab13047_))))))
  (define gxc#!struct-type-lookup-method
    (lambda (_type13033_ _method13034_)
      (let ((_vtab1303513037_
             (##structure-ref _type13033_ '7 gxc#!struct-type::t '#f)))
        (if _vtab1303513037_
            (let ((_vtab13040_ _vtab1303513037_))
              (table-ref _vtab13040_ _method13034_ '#f))
            '#f))))
  (begin
    (define gxc#optimizer-declare-type!__%
      (lambda (_sym13017_ _type13018_ _local?13019_)
        (begin
          (if (##structure-instance-of? _type13018_ 'gxc#!type::t)
              '#!void
              (error '"bad declaration: expected !type"
                     _sym13017_
                     _type13018_))
          (gxc#verbose
           '"declare-type "
           _sym13017_
           '" "
           (struct->list _type13018_))
          (table-set!
           (if _local?13019_
               (gxc#current-compile-local-type)
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '1
                gxc#optimizer-info::t
                '#f))
           _sym13017_
           _type13018_))))
    (begin
      (define gxc#optimizer-declare-type!__0
        (lambda (_sym13024_ _type13025_)
          (let ((_local?13027_ '#f))
            (gxc#optimizer-declare-type!__%
             _sym13024_
             _type13025_
             _local?13027_))))
      (define gxc#optimizer-declare-type!
        (lambda _g13502_
          (let ((_g13501_ (length _g13502_)))
            (cond ((##fx= _g13501_ 2)
                   (apply gxc#optimizer-declare-type!__0 _g13502_))
                  ((##fx= _g13501_ 3)
                   (apply gxc#optimizer-declare-type!__% _g13502_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#optimizer-declare-type!
                    _g13502_))))))))
  (begin
    (define gxc#optimizer-declare-method!__%
      (lambda (_type-t12993_ _method12994_ _sym12995_ _rebind?12996_)
        (let ((_type12998_ (gxc#optimizer-resolve-type _type-t12993_)))
          (if (##structure-instance-of? _type12998_ 'gxc#!struct-type::t)
              (let ((_vtab13000_ (gxc#!struct-type-vtab _type12998_)))
                (if _rebind?12996_
                    (if (hash-key? _vtab13000_ _method12994_)
                        (gxc#verbose
                         '"declare-method: [warning] skip rebind on existing method"
                         _type-t12993_
                         '" "
                         _method12994_)
                        (gxc#verbose
                         '"declare-method: skip rebind method "
                         _type-t12993_
                         '" "
                         _method12994_))
                    (if (hash-key? _vtab13000_ _method12994_)
                        (error '"declare-method: duplicate method declaration")
                        (begin
                          (gxc#verbose
                           '"declare-method "
                           _type-t12993_
                           '" "
                           _method12994_
                           '" => "
                           _sym12995_)
                          (table-set! _vtab13000_ _method12994_ _sym12995_)))))
              (if (not _type12998_)
                  (gxc#verbose '"declare-method: unknown type " _type-t12993_)
                  (error '"declare-method: bad method declaration; no method table"
                         _type-t12993_
                         _type12998_))))))
    (begin
      (define gxc#optimizer-declare-method!__0
        (lambda (_type-t13005_ _method13006_ _sym13007_)
          (let ((_rebind?13009_ '#f))
            (gxc#optimizer-declare-method!__%
             _type-t13005_
             _method13006_
             _sym13007_
             _rebind?13009_))))
      (define gxc#optimizer-declare-method!
        (lambda _g13504_
          (let ((_g13503_ (length _g13504_)))
            (cond ((##fx= _g13503_ 3)
                   (apply gxc#optimizer-declare-method!__0 _g13504_))
                  ((##fx= _g13503_ 4)
                   (apply gxc#optimizer-declare-method!__% _g13504_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#optimizer-declare-method!
                    _g13504_))))))))
  (define gxc#optimizer-lookup-type
    (lambda (_sym12981_)
      (let ((_$e12989_
             (let ((_ht1298212984_ (gxc#current-compile-local-type)))
               (if _ht1298212984_
                   (let ((_ht12987_ _ht1298212984_))
                     (table-ref _ht12987_ _sym12981_ '#f))
                   '#f))))
        (if _$e12989_
            _$e12989_
            (table-ref
             (##structure-ref
              (gxc#current-compile-optimizer-info)
              '1
              gxc#optimizer-info::t
              '#f)
             _sym12981_
             '#f)))))
  (define gxc#optimizer-resolve-type
    (lambda (_sym12973_)
      (let ((_type1297412976_ (gxc#optimizer-lookup-type _sym12973_)))
        (if _type1297412976_
            (let ((_type12979_ _type1297412976_))
              (if (##structure-instance-of? _type12979_ 'gxc#!alias::t)
                  (gxc#optimizer-resolve-type
                   (##structure-ref _type12979_ '1 gxc#!type::t '#f))
                  _type12979_))
            '#f))))
  (define gxc#optimizer-lookup-method
    (lambda (_type-t12968_ _method12969_)
      (let ((_type12971_ (gxc#optimizer-resolve-type _type-t12968_)))
        (if (##structure-instance-of? _type12971_ 'gxc#!struct-type::t)
            (gxc#!struct-type-lookup-method _type12971_ _method12969_)
            '#f))))
  (define gxc#identifier-symbol
    (lambda (_stx12966_)
      (if (##structure-direct-instance-of? _stx12966_ 'gx#syntax-quote::t)
          (gxc#generate-runtime-binding-id _stx12966_)
          (gx#stx-e _stx12966_)))))
