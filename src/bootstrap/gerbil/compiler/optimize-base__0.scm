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
    (lambda _$args16216_
      (apply make-struct-instance gxc#optimizer-info::t _$args16216_)))
  (define gxc#optimizer-info-type
    (make-struct-field-accessor gxc#optimizer-info::t '0))
  (define gxc#optimizer-info-ssxi
    (make-struct-field-accessor gxc#optimizer-info::t '1))
  (define gxc#optimizer-info-type-set!
    (make-struct-field-mutator gxc#optimizer-info::t '0))
  (define gxc#optimizer-info-ssxi-set!
    (make-struct-field-mutator gxc#optimizer-info::t '1))
  (define gxc#optimizer-info:::init!
    (lambda (_self16214_)
      (struct-instance-init!
       _self16214_
       (make-table 'test: eq?)
       (make-table 'test: eq?))))
  (bind-method! gxc#optimizer-info::t ':init! gxc#optimizer-info:::init! '#f)
  (define gxc#!type::t
    (make-struct-type 'gxc#!type::t '#f '1 '!type '() '#f '(id)))
  (define gxc#!type? (make-struct-predicate gxc#!type::t))
  (define gxc#make-!type
    (lambda _$args16089_
      (apply make-struct-instance gxc#!type::t _$args16089_)))
  (define gxc#!type-id (make-struct-field-accessor gxc#!type::t '0))
  (define gxc#!type-id-set! (make-struct-field-mutator gxc#!type::t '0))
  (define gxc#!alias::t
    (make-struct-type 'gxc#!alias::t gxc#!type::t '0 '!alias '() '#f '()))
  (define gxc#!alias? (make-struct-predicate gxc#!alias::t))
  (define gxc#make-!alias
    (lambda _$args16086_
      (apply make-struct-instance gxc#!alias::t _$args16086_)))
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
    (lambda _$args16083_
      (apply make-struct-instance gxc#!struct-type::t _$args16083_)))
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
    (lambda _$args16080_
      (apply make-struct-instance gxc#!procedure::t _$args16080_)))
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
    (lambda _$args16077_
      (apply make-struct-instance gxc#!struct-pred::t _$args16077_)))
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
    (lambda _$args16074_
      (apply make-struct-instance gxc#!struct-cons::t _$args16074_)))
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
    (lambda _$args16071_
      (apply make-struct-instance gxc#!struct-getf::t _$args16071_)))
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
    (lambda _$args16068_
      (apply make-struct-instance gxc#!struct-setf::t _$args16068_)))
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
    (lambda _$args16065_
      (apply make-struct-instance gxc#!lambda::t _$args16065_)))
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
    (lambda _$args16062_
      (apply make-struct-instance gxc#!case-lambda::t _$args16062_)))
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
    (lambda _$args16059_
      (apply make-struct-instance gxc#!kw-lambda::t _$args16059_)))
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
    (lambda _$args16056_
      (apply make-struct-instance gxc#!kw-lambda-primary::t _$args16056_)))
  (define gxc#!kw-lambda-primary-keys
    (make-struct-field-accessor gxc#!kw-lambda-primary::t '0))
  (define gxc#!kw-lambda-primary-main
    (make-struct-field-accessor gxc#!kw-lambda-primary::t '1))
  (define gxc#!kw-lambda-primary-keys-set!
    (make-struct-field-mutator gxc#!kw-lambda-primary::t '0))
  (define gxc#!kw-lambda-primary-main-set!
    (make-struct-field-mutator gxc#!kw-lambda-primary::t '1))
  (define gxc#!struct-type:::init!
    (lambda (_self16048_
             _id16049_
             _super16050_
             _fields16051_
             _xfields16052_
             _ctor16053_
             _plist16054_)
      (struct-instance-init!
       _self16048_
       _id16049_
       _super16050_
       _fields16051_
       _xfields16052_
       _ctor16053_
       _plist16054_
       '#f)))
  (bind-method! gxc#!struct-type::t ':init! gxc#!struct-type:::init! '#f)
  (begin
    (define gxc#!lambda:::init!__%
      (lambda (_self15892_
               _id15893_
               _arity15894_
               _dispatch15895_
               _inline15896_
               _typedecl15897_)
        (struct-instance-init!
         _self15892_
         _id15893_
         _arity15894_
         _dispatch15895_
         _inline15896_
         _typedecl15897_)))
    (begin
      (define gxc#!lambda:::init!__0
        (lambda (_self15902_ _id15903_ _arity15904_ _dispatch15905_)
          (let* ((_inline15907_ '#f) (_typedecl15909_ '#f))
            (struct-instance-init!
             _self15902_
             _id15903_
             _arity15904_
             _dispatch15905_
             _inline15907_
             _typedecl15909_))))
      (define gxc#!lambda:::init!__1
        (lambda (_self15911_
                 _id15912_
                 _arity15913_
                 _dispatch15914_
                 _inline15915_)
          (let ((_typedecl15917_ '#f))
            (struct-instance-init!
             _self15911_
             _id15912_
             _arity15913_
             _dispatch15914_
             _inline15915_
             _typedecl15917_))))
      (define gxc#!lambda:::init!
        (lambda _g16219_
          (let ((_g16218_ (length _g16219_)))
            (cond ((##fx= _g16218_ 4) (apply gxc#!lambda:::init!__0 _g16219_))
                  ((##fx= _g16218_ 5) (apply gxc#!lambda:::init!__1 _g16219_))
                  ((##fx= _g16218_ 6) (apply struct-instance-init! _g16219_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#!lambda:::init!
                    _g16219_))))))))
  (bind-method! gxc#!lambda::t ':init! gxc#!lambda:::init! '#f)
  (define gxc#!struct-type-vtab
    (lambda (_type15761_)
      (let ((_$e15763_
             (##structure-ref _type15761_ '7 gxc#!struct-type::t '#f)))
        (if _$e15763_
            (values _$e15763_)
            (let ((_vtab15766_ (make-table 'test: eq?)))
              (begin
                (##structure-set!
                 _type15761_
                 _vtab15766_
                 '7
                 gxc#!struct-type::t
                 '#f)
                _vtab15766_))))))
  (define gxc#!struct-type-lookup-method
    (lambda (_type15752_ _method15753_)
      (let ((_vtab1575415756_
             (##structure-ref _type15752_ '7 gxc#!struct-type::t '#f)))
        (if _vtab1575415756_
            (let ((_vtab15759_ _vtab1575415756_))
              (table-ref _vtab15759_ _method15753_ '#f))
            '#f))))
  (begin
    (define gxc#optimizer-declare-type!__%
      (lambda (_sym15736_ _type15737_ _local?15738_)
        (begin
          (if (##structure-instance-of? _type15737_ 'gxc#!type::t)
              '#!void
              (error '"bad declaration: expected !type"
                     _sym15736_
                     _type15737_))
          (gxc#verbose
           '"declare-type "
           _sym15736_
           '" "
           (struct->list _type15737_))
          (table-set!
           (if _local?15738_
               (gxc#current-compile-local-type)
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '1
                gxc#optimizer-info::t
                '#f))
           _sym15736_
           _type15737_))))
    (begin
      (define gxc#optimizer-declare-type!__0
        (lambda (_sym15743_ _type15744_)
          (let ((_local?15746_ '#f))
            (gxc#optimizer-declare-type!__%
             _sym15743_
             _type15744_
             _local?15746_))))
      (define gxc#optimizer-declare-type!
        (lambda _g16221_
          (let ((_g16220_ (length _g16221_)))
            (cond ((##fx= _g16220_ 2)
                   (apply gxc#optimizer-declare-type!__0 _g16221_))
                  ((##fx= _g16220_ 3)
                   (apply gxc#optimizer-declare-type!__% _g16221_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#optimizer-declare-type!
                    _g16221_))))))))
  (begin
    (define gxc#optimizer-clear-type!__%
      (lambda (_sym15722_ _local?15723_)
        (begin
          (gxc#verbose '"clear-type " _sym15722_)
          (table-set!
           (if _local?15723_
               (gxc#current-compile-local-type)
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '1
                gxc#optimizer-info::t
                '#f))
           _sym15722_))))
    (begin
      (define gxc#optimizer-clear-type!__0
        (lambda (_sym15728_)
          (let ((_local?15730_ '#f))
            (gxc#optimizer-clear-type!__% _sym15728_ _local?15730_))))
      (define gxc#optimizer-clear-type!
        (lambda _g16223_
          (let ((_g16222_ (length _g16223_)))
            (cond ((##fx= _g16222_ 1)
                   (apply gxc#optimizer-clear-type!__0 _g16223_))
                  ((##fx= _g16222_ 2)
                   (apply gxc#optimizer-clear-type!__% _g16223_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#optimizer-clear-type!
                    _g16223_))))))))
  (begin
    (define gxc#optimizer-declare-method!__%
      (lambda (_type-t15698_ _method15699_ _sym15700_ _rebind?15701_)
        (let ((_type15703_ (gxc#optimizer-resolve-type _type-t15698_)))
          (if (##structure-instance-of? _type15703_ 'gxc#!struct-type::t)
              (let ((_vtab15705_ (gxc#!struct-type-vtab _type15703_)))
                (if _rebind?15701_
                    (if (hash-key? _vtab15705_ _method15699_)
                        (gxc#verbose
                         '"declare-method: [warning] skip rebind on existing method"
                         _type-t15698_
                         '" "
                         _method15699_)
                        (gxc#verbose
                         '"declare-method: skip rebind method "
                         _type-t15698_
                         '" "
                         _method15699_))
                    (if (hash-key? _vtab15705_ _method15699_)
                        (error '"declare-method: duplicate method declaration")
                        (begin
                          (gxc#verbose
                           '"declare-method "
                           _type-t15698_
                           '" "
                           _method15699_
                           '" => "
                           _sym15700_)
                          (table-set! _vtab15705_ _method15699_ _sym15700_)))))
              (if (not _type15703_)
                  (gxc#verbose '"declare-method: unknown type " _type-t15698_)
                  (error '"declare-method: bad method declaration; no method table"
                         _type-t15698_
                         _type15703_))))))
    (begin
      (define gxc#optimizer-declare-method!__0
        (lambda (_type-t15710_ _method15711_ _sym15712_)
          (let ((_rebind?15714_ '#f))
            (gxc#optimizer-declare-method!__%
             _type-t15710_
             _method15711_
             _sym15712_
             _rebind?15714_))))
      (define gxc#optimizer-declare-method!
        (lambda _g16225_
          (let ((_g16224_ (length _g16225_)))
            (cond ((##fx= _g16224_ 3)
                   (apply gxc#optimizer-declare-method!__0 _g16225_))
                  ((##fx= _g16224_ 4)
                   (apply gxc#optimizer-declare-method!__% _g16225_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#optimizer-declare-method!
                    _g16225_))))))))
  (define gxc#optimizer-lookup-type
    (lambda (_sym15686_)
      (let ((_$e15694_
             (let ((_ht1568715689_ (gxc#current-compile-local-type)))
               (if _ht1568715689_
                   (let ((_ht15692_ _ht1568715689_))
                     (table-ref _ht15692_ _sym15686_ '#f))
                   '#f))))
        (if _$e15694_
            _$e15694_
            (table-ref
             (##structure-ref
              (gxc#current-compile-optimizer-info)
              '1
              gxc#optimizer-info::t
              '#f)
             _sym15686_
             '#f)))))
  (define gxc#optimizer-resolve-type
    (lambda (_sym15678_)
      (let ((_type1567915681_ (gxc#optimizer-lookup-type _sym15678_)))
        (if _type1567915681_
            (let ((_type15684_ _type1567915681_))
              (if (##structure-instance-of? _type15684_ 'gxc#!alias::t)
                  (gxc#optimizer-resolve-type
                   (##structure-ref _type15684_ '1 gxc#!type::t '#f))
                  _type15684_))
            '#f))))
  (define gxc#optimizer-lookup-method
    (lambda (_type-t15673_ _method15674_)
      (let ((_type15676_ (gxc#optimizer-resolve-type _type-t15673_)))
        (if (##structure-instance-of? _type15676_ 'gxc#!struct-type::t)
            (gxc#!struct-type-lookup-method _type15676_ _method15674_)
            '#f))))
  (define gxc#identifier-symbol
    (lambda (_stx15671_)
      (if (##structure-direct-instance-of? _stx15671_ 'gx#syntax-quote::t)
          (gxc#generate-runtime-binding-id _stx15671_)
          (gx#stx-e _stx15671_)))))
