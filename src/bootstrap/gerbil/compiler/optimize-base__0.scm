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
    (lambda _$args16218_
      (apply make-struct-instance gxc#optimizer-info::t _$args16218_)))
  (define gxc#optimizer-info-type
    (make-struct-field-accessor gxc#optimizer-info::t '0))
  (define gxc#optimizer-info-ssxi
    (make-struct-field-accessor gxc#optimizer-info::t '1))
  (define gxc#optimizer-info-type-set!
    (make-struct-field-mutator gxc#optimizer-info::t '0))
  (define gxc#optimizer-info-ssxi-set!
    (make-struct-field-mutator gxc#optimizer-info::t '1))
  (define gxc#optimizer-info:::init!
    (lambda (_self16216_)
      (struct-instance-init!
       _self16216_
       (make-table 'test: eq?)
       (make-table 'test: eq?))))
  (bind-method! gxc#optimizer-info::t ':init! gxc#optimizer-info:::init! '#f)
  (define gxc#!type::t
    (make-struct-type 'gxc#!type::t '#f '1 '!type '() '#f '(id)))
  (define gxc#!type? (make-struct-predicate gxc#!type::t))
  (define gxc#make-!type
    (lambda _$args16091_
      (apply make-struct-instance gxc#!type::t _$args16091_)))
  (define gxc#!type-id (make-struct-field-accessor gxc#!type::t '0))
  (define gxc#!type-id-set! (make-struct-field-mutator gxc#!type::t '0))
  (define gxc#!alias::t
    (make-struct-type 'gxc#!alias::t gxc#!type::t '0 '!alias '() '#f '()))
  (define gxc#!alias? (make-struct-predicate gxc#!alias::t))
  (define gxc#make-!alias
    (lambda _$args16088_
      (apply make-struct-instance gxc#!alias::t _$args16088_)))
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
    (lambda _$args16085_
      (apply make-struct-instance gxc#!struct-type::t _$args16085_)))
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
    (lambda _$args16082_
      (apply make-struct-instance gxc#!procedure::t _$args16082_)))
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
    (lambda _$args16079_
      (apply make-struct-instance gxc#!struct-pred::t _$args16079_)))
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
    (lambda _$args16076_
      (apply make-struct-instance gxc#!struct-cons::t _$args16076_)))
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
    (lambda _$args16073_
      (apply make-struct-instance gxc#!struct-getf::t _$args16073_)))
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
    (lambda _$args16070_
      (apply make-struct-instance gxc#!struct-setf::t _$args16070_)))
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
    (lambda _$args16067_
      (apply make-struct-instance gxc#!lambda::t _$args16067_)))
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
    (lambda _$args16064_
      (apply make-struct-instance gxc#!case-lambda::t _$args16064_)))
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
    (lambda _$args16061_
      (apply make-struct-instance gxc#!kw-lambda::t _$args16061_)))
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
    (lambda _$args16058_
      (apply make-struct-instance gxc#!kw-lambda-primary::t _$args16058_)))
  (define gxc#!kw-lambda-primary-keys
    (make-struct-field-accessor gxc#!kw-lambda-primary::t '0))
  (define gxc#!kw-lambda-primary-main
    (make-struct-field-accessor gxc#!kw-lambda-primary::t '1))
  (define gxc#!kw-lambda-primary-keys-set!
    (make-struct-field-mutator gxc#!kw-lambda-primary::t '0))
  (define gxc#!kw-lambda-primary-main-set!
    (make-struct-field-mutator gxc#!kw-lambda-primary::t '1))
  (define gxc#!struct-type:::init!
    (lambda (_self16050_
             _id16051_
             _super16052_
             _fields16053_
             _xfields16054_
             _ctor16055_
             _plist16056_)
      (struct-instance-init!
       _self16050_
       _id16051_
       _super16052_
       _fields16053_
       _xfields16054_
       _ctor16055_
       _plist16056_
       '#f)))
  (bind-method! gxc#!struct-type::t ':init! gxc#!struct-type:::init! '#f)
  (begin
    (define gxc#!lambda:::init!__%
      (lambda (_self15894_
               _id15895_
               _arity15896_
               _dispatch15897_
               _inline15898_
               _typedecl15899_)
        (struct-instance-init!
         _self15894_
         _id15895_
         _arity15896_
         _dispatch15897_
         _inline15898_
         _typedecl15899_)))
    (begin
      (define gxc#!lambda:::init!__0
        (lambda (_self15904_ _id15905_ _arity15906_ _dispatch15907_)
          (let* ((_inline15909_ '#f) (_typedecl15911_ '#f))
            (struct-instance-init!
             _self15904_
             _id15905_
             _arity15906_
             _dispatch15907_
             _inline15909_
             _typedecl15911_))))
      (define gxc#!lambda:::init!__1
        (lambda (_self15913_
                 _id15914_
                 _arity15915_
                 _dispatch15916_
                 _inline15917_)
          (let ((_typedecl15919_ '#f))
            (struct-instance-init!
             _self15913_
             _id15914_
             _arity15915_
             _dispatch15916_
             _inline15917_
             _typedecl15919_))))
      (define gxc#!lambda:::init!
        (lambda _g16221_
          (let ((_g16220_ (length _g16221_)))
            (cond ((##fx= _g16220_ 4) (apply gxc#!lambda:::init!__0 _g16221_))
                  ((##fx= _g16220_ 5) (apply gxc#!lambda:::init!__1 _g16221_))
                  ((##fx= _g16220_ 6) (apply struct-instance-init! _g16221_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#!lambda:::init!
                    _g16221_))))))))
  (bind-method! gxc#!lambda::t ':init! gxc#!lambda:::init! '#f)
  (define gxc#!struct-type-vtab
    (lambda (_type15763_)
      (let ((_$e15765_
             (##structure-ref _type15763_ '7 gxc#!struct-type::t '#f)))
        (if _$e15765_
            (values _$e15765_)
            (let ((_vtab15768_ (make-table 'test: eq?)))
              (begin
                (##structure-set!
                 _type15763_
                 _vtab15768_
                 '7
                 gxc#!struct-type::t
                 '#f)
                _vtab15768_))))))
  (define gxc#!struct-type-lookup-method
    (lambda (_type15754_ _method15755_)
      (let ((_vtab1575615758_
             (##structure-ref _type15754_ '7 gxc#!struct-type::t '#f)))
        (if _vtab1575615758_
            (let ((_vtab15761_ _vtab1575615758_))
              (table-ref _vtab15761_ _method15755_ '#f))
            '#f))))
  (begin
    (define gxc#optimizer-declare-type!__%
      (lambda (_sym15738_ _type15739_ _local?15740_)
        (begin
          (if (##structure-instance-of? _type15739_ 'gxc#!type::t)
              '#!void
              (error '"bad declaration: expected !type"
                     _sym15738_
                     _type15739_))
          (gxc#verbose
           '"declare-type "
           _sym15738_
           '" "
           (struct->list _type15739_))
          (table-set!
           (if _local?15740_
               (gxc#current-compile-local-type)
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '1
                gxc#optimizer-info::t
                '#f))
           _sym15738_
           _type15739_))))
    (begin
      (define gxc#optimizer-declare-type!__0
        (lambda (_sym15745_ _type15746_)
          (let ((_local?15748_ '#f))
            (gxc#optimizer-declare-type!__%
             _sym15745_
             _type15746_
             _local?15748_))))
      (define gxc#optimizer-declare-type!
        (lambda _g16223_
          (let ((_g16222_ (length _g16223_)))
            (cond ((##fx= _g16222_ 2)
                   (apply gxc#optimizer-declare-type!__0 _g16223_))
                  ((##fx= _g16222_ 3)
                   (apply gxc#optimizer-declare-type!__% _g16223_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#optimizer-declare-type!
                    _g16223_))))))))
  (begin
    (define gxc#optimizer-clear-type!__%
      (lambda (_sym15724_ _local?15725_)
        (begin
          (gxc#verbose '"clear-type " _sym15724_)
          (table-set!
           (if _local?15725_
               (gxc#current-compile-local-type)
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '1
                gxc#optimizer-info::t
                '#f))
           _sym15724_))))
    (begin
      (define gxc#optimizer-clear-type!__0
        (lambda (_sym15730_)
          (let ((_local?15732_ '#f))
            (gxc#optimizer-clear-type!__% _sym15730_ _local?15732_))))
      (define gxc#optimizer-clear-type!
        (lambda _g16225_
          (let ((_g16224_ (length _g16225_)))
            (cond ((##fx= _g16224_ 1)
                   (apply gxc#optimizer-clear-type!__0 _g16225_))
                  ((##fx= _g16224_ 2)
                   (apply gxc#optimizer-clear-type!__% _g16225_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#optimizer-clear-type!
                    _g16225_))))))))
  (begin
    (define gxc#optimizer-declare-method!__%
      (lambda (_type-t15700_ _method15701_ _sym15702_ _rebind?15703_)
        (let ((_type15705_ (gxc#optimizer-resolve-type _type-t15700_)))
          (if (##structure-instance-of? _type15705_ 'gxc#!struct-type::t)
              (let ((_vtab15707_ (gxc#!struct-type-vtab _type15705_)))
                (if _rebind?15703_
                    (if (hash-key? _vtab15707_ _method15701_)
                        (gxc#verbose
                         '"declare-method: [warning] skip rebind on existing method"
                         _type-t15700_
                         '" "
                         _method15701_)
                        (gxc#verbose
                         '"declare-method: skip rebind method "
                         _type-t15700_
                         '" "
                         _method15701_))
                    (if (hash-key? _vtab15707_ _method15701_)
                        (error '"declare-method: duplicate method declaration")
                        (begin
                          (gxc#verbose
                           '"declare-method "
                           _type-t15700_
                           '" "
                           _method15701_
                           '" => "
                           _sym15702_)
                          (table-set! _vtab15707_ _method15701_ _sym15702_)))))
              (if (not _type15705_)
                  (gxc#verbose '"declare-method: unknown type " _type-t15700_)
                  (error '"declare-method: bad method declaration; no method table"
                         _type-t15700_
                         _type15705_))))))
    (begin
      (define gxc#optimizer-declare-method!__0
        (lambda (_type-t15712_ _method15713_ _sym15714_)
          (let ((_rebind?15716_ '#f))
            (gxc#optimizer-declare-method!__%
             _type-t15712_
             _method15713_
             _sym15714_
             _rebind?15716_))))
      (define gxc#optimizer-declare-method!
        (lambda _g16227_
          (let ((_g16226_ (length _g16227_)))
            (cond ((##fx= _g16226_ 3)
                   (apply gxc#optimizer-declare-method!__0 _g16227_))
                  ((##fx= _g16226_ 4)
                   (apply gxc#optimizer-declare-method!__% _g16227_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#optimizer-declare-method!
                    _g16227_))))))))
  (define gxc#optimizer-lookup-type
    (lambda (_sym15688_)
      (let ((_$e15696_
             (let ((_ht1568915691_ (gxc#current-compile-local-type)))
               (if _ht1568915691_
                   (let ((_ht15694_ _ht1568915691_))
                     (table-ref _ht15694_ _sym15688_ '#f))
                   '#f))))
        (if _$e15696_
            _$e15696_
            (table-ref
             (##structure-ref
              (gxc#current-compile-optimizer-info)
              '1
              gxc#optimizer-info::t
              '#f)
             _sym15688_
             '#f)))))
  (define gxc#optimizer-resolve-type
    (lambda (_sym15680_)
      (let ((_type1568115683_ (gxc#optimizer-lookup-type _sym15680_)))
        (if _type1568115683_
            (let ((_type15686_ _type1568115683_))
              (if (##structure-instance-of? _type15686_ 'gxc#!alias::t)
                  (gxc#optimizer-resolve-type
                   (##structure-ref _type15686_ '1 gxc#!type::t '#f))
                  _type15686_))
            '#f))))
  (define gxc#optimizer-lookup-method
    (lambda (_type-t15675_ _method15676_)
      (let ((_type15678_ (gxc#optimizer-resolve-type _type-t15675_)))
        (if (##structure-instance-of? _type15678_ 'gxc#!struct-type::t)
            (gxc#!struct-type-lookup-method _type15678_ _method15676_)
            '#f))))
  (define gxc#identifier-symbol
    (lambda (_stx15673_)
      (if (##structure-direct-instance-of? _stx15673_ 'gx#syntax-quote::t)
          (gxc#generate-runtime-binding-id _stx15673_)
          (gx#stx-e _stx15673_)))))
