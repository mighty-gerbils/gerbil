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
    (lambda _$args15209_
      (apply make-struct-instance gxc#optimizer-info::t _$args15209_)))
  (define gxc#optimizer-info-type
    (make-struct-field-accessor gxc#optimizer-info::t '0))
  (define gxc#optimizer-info-ssxi
    (make-struct-field-accessor gxc#optimizer-info::t '1))
  (define gxc#optimizer-info-type-set!
    (make-struct-field-mutator gxc#optimizer-info::t '0))
  (define gxc#optimizer-info-ssxi-set!
    (make-struct-field-mutator gxc#optimizer-info::t '1))
  (define gxc#optimizer-info:::init!
    (lambda (_self15207_)
      (if (##fx< '2 (##vector-length _self15207_))
          (begin
            (##vector-set! _self15207_ '1 (make-hash-table-eq))
            (##vector-set! _self15207_ '2 (make-hash-table-eq)))
          (error '"struct-instance-init!: too many arguments for struct"
                 _self15207_))))
  (bind-method! gxc#optimizer-info::t ':init! gxc#optimizer-info:::init! '#f)
  (define gxc#!type::t
    (make-struct-type 'gxc#!type::t '#f '1 '!type '() '#f '(id)))
  (define gxc#!type? (make-struct-predicate gxc#!type::t))
  (define gxc#make-!type
    (lambda _$args15082_
      (apply make-struct-instance gxc#!type::t _$args15082_)))
  (define gxc#!type-id (make-struct-field-accessor gxc#!type::t '0))
  (define gxc#!type-id-set! (make-struct-field-mutator gxc#!type::t '0))
  (define gxc#!alias::t
    (make-struct-type 'gxc#!alias::t gxc#!type::t '0 '!alias '() '#f '()))
  (define gxc#!alias? (make-struct-predicate gxc#!alias::t))
  (define gxc#make-!alias
    (lambda _$args15079_
      (apply make-struct-instance gxc#!alias::t _$args15079_)))
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
    (lambda _$args15076_
      (apply make-struct-instance gxc#!struct-type::t _$args15076_)))
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
    (lambda _$args15073_
      (apply make-struct-instance gxc#!procedure::t _$args15073_)))
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
    (lambda _$args15070_
      (apply make-struct-instance gxc#!struct-pred::t _$args15070_)))
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
    (lambda _$args15067_
      (apply make-struct-instance gxc#!struct-cons::t _$args15067_)))
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
    (lambda _$args15064_
      (apply make-struct-instance gxc#!struct-getf::t _$args15064_)))
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
    (lambda _$args15061_
      (apply make-struct-instance gxc#!struct-setf::t _$args15061_)))
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
    (lambda _$args15058_
      (apply make-struct-instance gxc#!lambda::t _$args15058_)))
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
    (lambda _$args15055_
      (apply make-struct-instance gxc#!case-lambda::t _$args15055_)))
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
    (lambda _$args15052_
      (apply make-struct-instance gxc#!kw-lambda::t _$args15052_)))
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
    (lambda _$args15049_
      (apply make-struct-instance gxc#!kw-lambda-primary::t _$args15049_)))
  (define gxc#!kw-lambda-primary-keys
    (make-struct-field-accessor gxc#!kw-lambda-primary::t '0))
  (define gxc#!kw-lambda-primary-main
    (make-struct-field-accessor gxc#!kw-lambda-primary::t '1))
  (define gxc#!kw-lambda-primary-keys-set!
    (make-struct-field-mutator gxc#!kw-lambda-primary::t '0))
  (define gxc#!kw-lambda-primary-main-set!
    (make-struct-field-mutator gxc#!kw-lambda-primary::t '1))
  (define gxc#!struct-type:::init!
    (lambda (_self15041_
             _id15042_
             _super15043_
             _fields15044_
             _xfields15045_
             _ctor15046_
             _plist15047_)
      (if (##fx< '7 (##vector-length _self15041_))
          (begin
            (##vector-set! _self15041_ '1 _id15042_)
            (##vector-set! _self15041_ '2 _super15043_)
            (##vector-set! _self15041_ '3 _fields15044_)
            (##vector-set! _self15041_ '4 _xfields15045_)
            (##vector-set! _self15041_ '5 _ctor15046_)
            (##vector-set! _self15041_ '6 _plist15047_)
            (##vector-set! _self15041_ '7 '#f))
          (error '"struct-instance-init!: too many arguments for struct"
                 _self15041_))))
  (bind-method! gxc#!struct-type::t ':init! gxc#!struct-type:::init! '#f)
  (begin
    (define gxc#!lambda:::init!__%
      (lambda (_self14885_
               _id14886_
               _arity14887_
               _dispatch14888_
               _inline14889_
               _typedecl14890_)
        (if (##fx< '5 (##vector-length _self14885_))
            (begin
              (##vector-set! _self14885_ '1 _id14886_)
              (##vector-set! _self14885_ '2 _arity14887_)
              (##vector-set! _self14885_ '3 _dispatch14888_)
              (##vector-set! _self14885_ '4 _inline14889_)
              (##vector-set! _self14885_ '5 _typedecl14890_))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self14885_))))
    (begin
      (define gxc#!lambda:::init!__0
        (lambda (_self14895_ _id14896_ _arity14897_ _dispatch14898_)
          (let* ((_inline14900_ '#f) (_typedecl14902_ '#f))
            (if (##fx< '5 (##vector-length _self14895_))
                (begin
                  (##vector-set! _self14895_ '1 _id14896_)
                  (##vector-set! _self14895_ '2 _arity14897_)
                  (##vector-set! _self14895_ '3 _dispatch14898_)
                  (##vector-set! _self14895_ '4 _inline14900_)
                  (##vector-set! _self14895_ '5 _typedecl14902_))
                (error '"struct-instance-init!: too many arguments for struct"
                       _self14895_)))))
      (define gxc#!lambda:::init!__1
        (lambda (_self14904_
                 _id14905_
                 _arity14906_
                 _dispatch14907_
                 _inline14908_)
          (let ((_typedecl14910_ '#f))
            (if (##fx< '5 (##vector-length _self14904_))
                (begin
                  (##vector-set! _self14904_ '1 _id14905_)
                  (##vector-set! _self14904_ '2 _arity14906_)
                  (##vector-set! _self14904_ '3 _dispatch14907_)
                  (##vector-set! _self14904_ '4 _inline14908_)
                  (##vector-set! _self14904_ '5 _typedecl14910_))
                (error '"struct-instance-init!: too many arguments for struct"
                       _self14904_)))))
      (define gxc#!lambda:::init!
        (lambda _g15212_
          (let ((_g15211_ (length _g15212_)))
            (cond ((##fx= _g15211_ 4) (apply gxc#!lambda:::init!__0 _g15212_))
                  ((##fx= _g15211_ 5) (apply gxc#!lambda:::init!__1 _g15212_))
                  ((##fx= _g15211_ 6)
                   (apply (lambda (_self14912_
                                   _id14913_
                                   _arity14914_
                                   _dispatch14915_
                                   _inline14916_
                                   _typedecl14917_)
                            (if (##fx< '5 (##vector-length _self14912_))
                                (begin
                                  (##vector-set! _self14912_ '1 _id14913_)
                                  (##vector-set! _self14912_ '2 _arity14914_)
                                  (##vector-set!
                                   _self14912_
                                   '3
                                   _dispatch14915_)
                                  (##vector-set! _self14912_ '4 _inline14916_)
                                  (##vector-set!
                                   _self14912_
                                   '5
                                   _typedecl14917_))
                                (error '"struct-instance-init!: too many arguments for struct"
                                       _self14912_)))
                          _g15212_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#!lambda:::init!
                    _g15212_))))))))
  (bind-method! gxc#!lambda::t ':init! gxc#!lambda:::init! '#f)
  (define gxc#!struct-type-vtab
    (lambda (_type14754_)
      (let ((_$e14756_
             (##structure-ref _type14754_ '7 gxc#!struct-type::t '#f)))
        (if _$e14756_
            (values _$e14756_)
            (let ((_vtab14759_ (make-hash-table-eq)))
              (begin
                (##structure-set!
                 _type14754_
                 _vtab14759_
                 '7
                 gxc#!struct-type::t
                 '#f)
                _vtab14759_))))))
  (define gxc#!struct-type-lookup-method
    (lambda (_type14745_ _method14746_)
      (let ((_vtab1474714749_
             (##structure-ref _type14745_ '7 gxc#!struct-type::t '#f)))
        (if _vtab1474714749_
            (let ((_vtab14752_ _vtab1474714749_))
              (table-ref _vtab14752_ _method14746_ '#f))
            '#f))))
  (begin
    (define gxc#optimizer-declare-type!__%
      (lambda (_sym14729_ _type14730_ _local?14731_)
        (begin
          (if (##structure-instance-of? _type14730_ 'gxc#!type::t)
              '#!void
              (error '"bad declaration: expected !type"
                     _sym14729_
                     _type14730_))
          (gxc#verbose
           '"declare-type "
           _sym14729_
           '" "
           (struct->list _type14730_))
          (table-set!
           (if _local?14731_
               (gxc#current-compile-local-type)
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '1
                gxc#optimizer-info::t
                '#f))
           _sym14729_
           _type14730_))))
    (begin
      (define gxc#optimizer-declare-type!__0
        (lambda (_sym14736_ _type14737_)
          (let ((_local?14739_ '#f))
            (gxc#optimizer-declare-type!__%
             _sym14736_
             _type14737_
             _local?14739_))))
      (define gxc#optimizer-declare-type!
        (lambda _g15214_
          (let ((_g15213_ (length _g15214_)))
            (cond ((##fx= _g15213_ 2)
                   (apply gxc#optimizer-declare-type!__0 _g15214_))
                  ((##fx= _g15213_ 3)
                   (apply gxc#optimizer-declare-type!__% _g15214_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#optimizer-declare-type!
                    _g15214_))))))))
  (begin
    (define gxc#optimizer-declare-method!__%
      (lambda (_type-t14705_ _method14706_ _sym14707_ _rebind?14708_)
        (let ((_type14710_ (gxc#optimizer-resolve-type _type-t14705_)))
          (if (##structure-instance-of? _type14710_ 'gxc#!struct-type::t)
              (let ((_vtab14712_ (gxc#!struct-type-vtab _type14710_)))
                (if _rebind?14708_
                    (if (hash-key? _vtab14712_ _method14706_)
                        (gxc#verbose
                         '"declare-method: [warning] skip rebind on existing method"
                         _type-t14705_
                         '" "
                         _method14706_)
                        (gxc#verbose
                         '"declare-method: skip rebind method "
                         _type-t14705_
                         '" "
                         _method14706_))
                    (if (hash-key? _vtab14712_ _method14706_)
                        (error '"declare-method: duplicate method declaration")
                        (begin
                          (gxc#verbose
                           '"declare-method "
                           _type-t14705_
                           '" "
                           _method14706_
                           '" => "
                           _sym14707_)
                          (table-set! _vtab14712_ _method14706_ _sym14707_)))))
              (if (not _type14710_)
                  (gxc#verbose '"declare-method: unknown type " _type-t14705_)
                  (error '"declare-method: bad method declaration; no method table"
                         _type-t14705_
                         _type14710_))))))
    (begin
      (define gxc#optimizer-declare-method!__0
        (lambda (_type-t14717_ _method14718_ _sym14719_)
          (let ((_rebind?14721_ '#f))
            (gxc#optimizer-declare-method!__%
             _type-t14717_
             _method14718_
             _sym14719_
             _rebind?14721_))))
      (define gxc#optimizer-declare-method!
        (lambda _g15216_
          (let ((_g15215_ (length _g15216_)))
            (cond ((##fx= _g15215_ 3)
                   (apply gxc#optimizer-declare-method!__0 _g15216_))
                  ((##fx= _g15215_ 4)
                   (apply gxc#optimizer-declare-method!__% _g15216_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#optimizer-declare-method!
                    _g15216_))))))))
  (define gxc#optimizer-lookup-type
    (lambda (_sym14693_)
      (let ((_$e14701_
             (let ((_ht1469414696_ (gxc#current-compile-local-type)))
               (if _ht1469414696_
                   (let ((_ht14699_ _ht1469414696_))
                     (table-ref _ht14699_ _sym14693_ '#f))
                   '#f))))
        (if _$e14701_
            _$e14701_
            (table-ref
             (##structure-ref
              (gxc#current-compile-optimizer-info)
              '1
              gxc#optimizer-info::t
              '#f)
             _sym14693_
             '#f)))))
  (define gxc#optimizer-resolve-type
    (lambda (_sym14685_)
      (let ((_type1468614688_ (gxc#optimizer-lookup-type _sym14685_)))
        (if _type1468614688_
            (let ((_type14691_ _type1468614688_))
              (if (##structure-instance-of? _type14691_ 'gxc#!alias::t)
                  (gxc#optimizer-resolve-type
                   (##structure-ref _type14691_ '1 gxc#!type::t '#f))
                  _type14691_))
            '#f))))
  (define gxc#optimizer-lookup-method
    (lambda (_type-t14680_ _method14681_)
      (let ((_type14683_ (gxc#optimizer-resolve-type _type-t14680_)))
        (if (##structure-instance-of? _type14683_ 'gxc#!struct-type::t)
            (gxc#!struct-type-lookup-method _type14683_ _method14681_)
            '#f))))
  (define gxc#identifier-symbol
    (lambda (_stx14678_)
      (if (##structure-direct-instance-of? _stx14678_ 'gx#syntax-quote::t)
          (gxc#generate-runtime-binding-id _stx14678_)
          (gx#stx-e _stx14678_)))))
