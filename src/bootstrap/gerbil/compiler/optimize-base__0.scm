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
    (lambda _$args16220_
      (apply make-struct-instance gxc#optimizer-info::t _$args16220_)))
  (define gxc#optimizer-info-type
    (make-struct-field-accessor gxc#optimizer-info::t '0))
  (define gxc#optimizer-info-ssxi
    (make-struct-field-accessor gxc#optimizer-info::t '1))
  (define gxc#optimizer-info-type-set!
    (make-struct-field-mutator gxc#optimizer-info::t '0))
  (define gxc#optimizer-info-ssxi-set!
    (make-struct-field-mutator gxc#optimizer-info::t '1))
  (define gxc#optimizer-info:::init!
    (lambda (_self16218_)
      (struct-instance-init!
       _self16218_
       (make-table 'test: eq?)
       (make-table 'test: eq?))))
  (bind-method! gxc#optimizer-info::t ':init! gxc#optimizer-info:::init! '#f)
  (define gxc#!type::t
    (make-struct-type 'gxc#!type::t '#f '1 '!type '() '#f '(id)))
  (define gxc#!type? (make-struct-predicate gxc#!type::t))
  (define gxc#make-!type
    (lambda _$args16093_
      (apply make-struct-instance gxc#!type::t _$args16093_)))
  (define gxc#!type-id (make-struct-field-accessor gxc#!type::t '0))
  (define gxc#!type-id-set! (make-struct-field-mutator gxc#!type::t '0))
  (define gxc#!alias::t
    (make-struct-type 'gxc#!alias::t gxc#!type::t '0 '!alias '() '#f '()))
  (define gxc#!alias? (make-struct-predicate gxc#!alias::t))
  (define gxc#make-!alias
    (lambda _$args16090_
      (apply make-struct-instance gxc#!alias::t _$args16090_)))
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
    (lambda _$args16087_
      (apply make-struct-instance gxc#!struct-type::t _$args16087_)))
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
    (lambda _$args16084_
      (apply make-struct-instance gxc#!procedure::t _$args16084_)))
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
    (lambda _$args16081_
      (apply make-struct-instance gxc#!struct-pred::t _$args16081_)))
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
    (lambda _$args16078_
      (apply make-struct-instance gxc#!struct-cons::t _$args16078_)))
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
    (lambda _$args16075_
      (apply make-struct-instance gxc#!struct-getf::t _$args16075_)))
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
    (lambda _$args16072_
      (apply make-struct-instance gxc#!struct-setf::t _$args16072_)))
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
    (lambda _$args16069_
      (apply make-struct-instance gxc#!lambda::t _$args16069_)))
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
    (lambda _$args16066_
      (apply make-struct-instance gxc#!case-lambda::t _$args16066_)))
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
    (lambda _$args16063_
      (apply make-struct-instance gxc#!kw-lambda::t _$args16063_)))
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
    (lambda _$args16060_
      (apply make-struct-instance gxc#!kw-lambda-primary::t _$args16060_)))
  (define gxc#!kw-lambda-primary-keys
    (make-struct-field-accessor gxc#!kw-lambda-primary::t '0))
  (define gxc#!kw-lambda-primary-main
    (make-struct-field-accessor gxc#!kw-lambda-primary::t '1))
  (define gxc#!kw-lambda-primary-keys-set!
    (make-struct-field-mutator gxc#!kw-lambda-primary::t '0))
  (define gxc#!kw-lambda-primary-main-set!
    (make-struct-field-mutator gxc#!kw-lambda-primary::t '1))
  (define gxc#!struct-type:::init!
    (lambda (_self16052_
             _id16053_
             _super16054_
             _fields16055_
             _xfields16056_
             _ctor16057_
             _plist16058_)
      (struct-instance-init!
       _self16052_
       _id16053_
       _super16054_
       _fields16055_
       _xfields16056_
       _ctor16057_
       _plist16058_
       '#f)))
  (bind-method! gxc#!struct-type::t ':init! gxc#!struct-type:::init! '#f)
  (begin
    (define gxc#!lambda:::init!__%
      (lambda (_self15896_
               _id15897_
               _arity15898_
               _dispatch15899_
               _inline15900_
               _typedecl15901_)
        (struct-instance-init!
         _self15896_
         _id15897_
         _arity15898_
         _dispatch15899_
         _inline15900_
         _typedecl15901_)))
    (begin
      (define gxc#!lambda:::init!__0
        (lambda (_self15906_ _id15907_ _arity15908_ _dispatch15909_)
          (let* ((_inline15911_ '#f) (_typedecl15913_ '#f))
            (struct-instance-init!
             _self15906_
             _id15907_
             _arity15908_
             _dispatch15909_
             _inline15911_
             _typedecl15913_))))
      (define gxc#!lambda:::init!__1
        (lambda (_self15915_
                 _id15916_
                 _arity15917_
                 _dispatch15918_
                 _inline15919_)
          (let ((_typedecl15921_ '#f))
            (struct-instance-init!
             _self15915_
             _id15916_
             _arity15917_
             _dispatch15918_
             _inline15919_
             _typedecl15921_))))
      (define gxc#!lambda:::init!
        (lambda _g16223_
          (let ((_g16222_ (length _g16223_)))
            (cond ((##fx= _g16222_ 4) (apply gxc#!lambda:::init!__0 _g16223_))
                  ((##fx= _g16222_ 5) (apply gxc#!lambda:::init!__1 _g16223_))
                  ((##fx= _g16222_ 6) (apply struct-instance-init! _g16223_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#!lambda:::init!
                    _g16223_))))))))
  (bind-method! gxc#!lambda::t ':init! gxc#!lambda:::init! '#f)
  (define gxc#!struct-type-vtab
    (lambda (_type15765_)
      (let ((_$e15767_
             (##structure-ref _type15765_ '7 gxc#!struct-type::t '#f)))
        (if _$e15767_
            (values _$e15767_)
            (let ((_vtab15770_ (make-table 'test: eq?)))
              (begin
                (##structure-set!
                 _type15765_
                 _vtab15770_
                 '7
                 gxc#!struct-type::t
                 '#f)
                _vtab15770_))))))
  (define gxc#!struct-type-lookup-method
    (lambda (_type15756_ _method15757_)
      (let ((_vtab1575815760_
             (##structure-ref _type15756_ '7 gxc#!struct-type::t '#f)))
        (if _vtab1575815760_
            (let ((_vtab15763_ _vtab1575815760_))
              (table-ref _vtab15763_ _method15757_ '#f))
            '#f))))
  (begin
    (define gxc#optimizer-declare-type!__%
      (lambda (_sym15740_ _type15741_ _local?15742_)
        (begin
          (if (##structure-instance-of? _type15741_ 'gxc#!type::t)
              '#!void
              (error '"bad declaration: expected !type"
                     _sym15740_
                     _type15741_))
          (gxc#verbose
           '"declare-type "
           _sym15740_
           '" "
           (struct->list _type15741_))
          (table-set!
           (if _local?15742_
               (gxc#current-compile-local-type)
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '1
                gxc#optimizer-info::t
                '#f))
           _sym15740_
           _type15741_))))
    (begin
      (define gxc#optimizer-declare-type!__0
        (lambda (_sym15747_ _type15748_)
          (let ((_local?15750_ '#f))
            (gxc#optimizer-declare-type!__%
             _sym15747_
             _type15748_
             _local?15750_))))
      (define gxc#optimizer-declare-type!
        (lambda _g16225_
          (let ((_g16224_ (length _g16225_)))
            (cond ((##fx= _g16224_ 2)
                   (apply gxc#optimizer-declare-type!__0 _g16225_))
                  ((##fx= _g16224_ 3)
                   (apply gxc#optimizer-declare-type!__% _g16225_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#optimizer-declare-type!
                    _g16225_))))))))
  (begin
    (define gxc#optimizer-clear-type!__%
      (lambda (_sym15726_ _local?15727_)
        (begin
          (gxc#verbose '"clear-type " _sym15726_)
          (table-set!
           (if _local?15727_
               (gxc#current-compile-local-type)
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '1
                gxc#optimizer-info::t
                '#f))
           _sym15726_))))
    (begin
      (define gxc#optimizer-clear-type!__0
        (lambda (_sym15732_)
          (let ((_local?15734_ '#f))
            (gxc#optimizer-clear-type!__% _sym15732_ _local?15734_))))
      (define gxc#optimizer-clear-type!
        (lambda _g16227_
          (let ((_g16226_ (length _g16227_)))
            (cond ((##fx= _g16226_ 1)
                   (apply gxc#optimizer-clear-type!__0 _g16227_))
                  ((##fx= _g16226_ 2)
                   (apply gxc#optimizer-clear-type!__% _g16227_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#optimizer-clear-type!
                    _g16227_))))))))
  (begin
    (define gxc#optimizer-declare-method!__%
      (lambda (_type-t15702_ _method15703_ _sym15704_ _rebind?15705_)
        (let ((_type15707_ (gxc#optimizer-resolve-type _type-t15702_)))
          (if (##structure-instance-of? _type15707_ 'gxc#!struct-type::t)
              (let ((_vtab15709_ (gxc#!struct-type-vtab _type15707_)))
                (if _rebind?15705_
                    (if (hash-key? _vtab15709_ _method15703_)
                        (gxc#verbose
                         '"declare-method: [warning] skip rebind on existing method"
                         _type-t15702_
                         '" "
                         _method15703_)
                        (gxc#verbose
                         '"declare-method: skip rebind method "
                         _type-t15702_
                         '" "
                         _method15703_))
                    (if (hash-key? _vtab15709_ _method15703_)
                        (error '"declare-method: duplicate method declaration")
                        (begin
                          (gxc#verbose
                           '"declare-method "
                           _type-t15702_
                           '" "
                           _method15703_
                           '" => "
                           _sym15704_)
                          (table-set! _vtab15709_ _method15703_ _sym15704_)))))
              (if (not _type15707_)
                  (gxc#verbose '"declare-method: unknown type " _type-t15702_)
                  (error '"declare-method: bad method declaration; no method table"
                         _type-t15702_
                         _type15707_))))))
    (begin
      (define gxc#optimizer-declare-method!__0
        (lambda (_type-t15714_ _method15715_ _sym15716_)
          (let ((_rebind?15718_ '#f))
            (gxc#optimizer-declare-method!__%
             _type-t15714_
             _method15715_
             _sym15716_
             _rebind?15718_))))
      (define gxc#optimizer-declare-method!
        (lambda _g16229_
          (let ((_g16228_ (length _g16229_)))
            (cond ((##fx= _g16228_ 3)
                   (apply gxc#optimizer-declare-method!__0 _g16229_))
                  ((##fx= _g16228_ 4)
                   (apply gxc#optimizer-declare-method!__% _g16229_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#optimizer-declare-method!
                    _g16229_))))))))
  (define gxc#optimizer-lookup-type
    (lambda (_sym15690_)
      (let ((_$e15698_
             (let ((_ht1569115693_ (gxc#current-compile-local-type)))
               (if _ht1569115693_
                   (let ((_ht15696_ _ht1569115693_))
                     (table-ref _ht15696_ _sym15690_ '#f))
                   '#f))))
        (if _$e15698_
            _$e15698_
            (table-ref
             (##structure-ref
              (gxc#current-compile-optimizer-info)
              '1
              gxc#optimizer-info::t
              '#f)
             _sym15690_
             '#f)))))
  (define gxc#optimizer-resolve-type
    (lambda (_sym15682_)
      (let ((_type1568315685_ (gxc#optimizer-lookup-type _sym15682_)))
        (if _type1568315685_
            (let ((_type15688_ _type1568315685_))
              (if (##structure-instance-of? _type15688_ 'gxc#!alias::t)
                  (gxc#optimizer-resolve-type
                   (##structure-ref _type15688_ '1 gxc#!type::t '#f))
                  _type15688_))
            '#f))))
  (define gxc#optimizer-lookup-method
    (lambda (_type-t15677_ _method15678_)
      (let ((_type15680_ (gxc#optimizer-resolve-type _type-t15677_)))
        (if (##structure-instance-of? _type15680_ 'gxc#!struct-type::t)
            (gxc#!struct-type-lookup-method _type15680_ _method15678_)
            '#f))))
  (define gxc#identifier-symbol
    (lambda (_stx15675_)
      (if (##structure-direct-instance-of? _stx15675_ 'gx#syntax-quote::t)
          (gxc#generate-runtime-binding-id _stx15675_)
          (gx#stx-e _stx15675_)))))
