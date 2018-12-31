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
    (lambda _$args16072_
      (apply make-struct-instance gxc#optimizer-info::t _$args16072_)))
  (define gxc#optimizer-info-type
    (make-struct-field-accessor gxc#optimizer-info::t '0))
  (define gxc#optimizer-info-ssxi
    (make-struct-field-accessor gxc#optimizer-info::t '1))
  (define gxc#optimizer-info-type-set!
    (make-struct-field-mutator gxc#optimizer-info::t '0))
  (define gxc#optimizer-info-ssxi-set!
    (make-struct-field-mutator gxc#optimizer-info::t '1))
  (define gxc#optimizer-info:::init!
    (lambda (_self16070_)
      (if (##fx< '2 (##vector-length _self16070_))
          (begin
            (##vector-set! _self16070_ '1 (make-table 'test: eq?))
            (##vector-set! _self16070_ '2 (make-table 'test: eq?)))
          (error '"struct-instance-init!: too many arguments for struct"
                 _self16070_))))
  (bind-method! gxc#optimizer-info::t ':init! gxc#optimizer-info:::init! '#f)
  (define gxc#!type::t
    (make-struct-type 'gxc#!type::t '#f '1 '!type '() '#f '(id)))
  (define gxc#!type? (make-struct-predicate gxc#!type::t))
  (define gxc#make-!type
    (lambda _$args15945_
      (apply make-struct-instance gxc#!type::t _$args15945_)))
  (define gxc#!type-id (make-struct-field-accessor gxc#!type::t '0))
  (define gxc#!type-id-set! (make-struct-field-mutator gxc#!type::t '0))
  (define gxc#!alias::t
    (make-struct-type 'gxc#!alias::t gxc#!type::t '0 '!alias '() '#f '()))
  (define gxc#!alias? (make-struct-predicate gxc#!alias::t))
  (define gxc#make-!alias
    (lambda _$args15942_
      (apply make-struct-instance gxc#!alias::t _$args15942_)))
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
    (lambda _$args15939_
      (apply make-struct-instance gxc#!struct-type::t _$args15939_)))
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
    (lambda _$args15936_
      (apply make-struct-instance gxc#!procedure::t _$args15936_)))
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
    (lambda _$args15933_
      (apply make-struct-instance gxc#!struct-pred::t _$args15933_)))
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
    (lambda _$args15930_
      (apply make-struct-instance gxc#!struct-cons::t _$args15930_)))
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
    (lambda _$args15927_
      (apply make-struct-instance gxc#!struct-getf::t _$args15927_)))
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
    (lambda _$args15924_
      (apply make-struct-instance gxc#!struct-setf::t _$args15924_)))
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
    (lambda _$args15921_
      (apply make-struct-instance gxc#!lambda::t _$args15921_)))
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
    (lambda _$args15918_
      (apply make-struct-instance gxc#!case-lambda::t _$args15918_)))
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
    (lambda _$args15915_
      (apply make-struct-instance gxc#!kw-lambda::t _$args15915_)))
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
    (lambda _$args15912_
      (apply make-struct-instance gxc#!kw-lambda-primary::t _$args15912_)))
  (define gxc#!kw-lambda-primary-keys
    (make-struct-field-accessor gxc#!kw-lambda-primary::t '0))
  (define gxc#!kw-lambda-primary-main
    (make-struct-field-accessor gxc#!kw-lambda-primary::t '1))
  (define gxc#!kw-lambda-primary-keys-set!
    (make-struct-field-mutator gxc#!kw-lambda-primary::t '0))
  (define gxc#!kw-lambda-primary-main-set!
    (make-struct-field-mutator gxc#!kw-lambda-primary::t '1))
  (define gxc#!struct-type:::init!
    (lambda (_self15904_
             _id15905_
             _super15906_
             _fields15907_
             _xfields15908_
             _ctor15909_
             _plist15910_)
      (if (##fx< '7 (##vector-length _self15904_))
          (begin
            (##vector-set! _self15904_ '1 _id15905_)
            (##vector-set! _self15904_ '2 _super15906_)
            (##vector-set! _self15904_ '3 _fields15907_)
            (##vector-set! _self15904_ '4 _xfields15908_)
            (##vector-set! _self15904_ '5 _ctor15909_)
            (##vector-set! _self15904_ '6 _plist15910_)
            (##vector-set! _self15904_ '7 '#f))
          (error '"struct-instance-init!: too many arguments for struct"
                 _self15904_))))
  (bind-method! gxc#!struct-type::t ':init! gxc#!struct-type:::init! '#f)
  (define gxc#!lambda:::init!__%
    (lambda (_self15748_
             _id15749_
             _arity15750_
             _dispatch15751_
             _inline15752_
             _typedecl15753_)
      (if (##fx< '5 (##vector-length _self15748_))
          (begin
            (##vector-set! _self15748_ '1 _id15749_)
            (##vector-set! _self15748_ '2 _arity15750_)
            (##vector-set! _self15748_ '3 _dispatch15751_)
            (##vector-set! _self15748_ '4 _inline15752_)
            (##vector-set! _self15748_ '5 _typedecl15753_))
          (error '"struct-instance-init!: too many arguments for struct"
                 _self15748_))))
  (define gxc#!lambda:::init!__0
    (lambda (_self15758_ _id15759_ _arity15760_ _dispatch15761_)
      (let* ((_inline15763_ '#f) (_typedecl15765_ '#f))
        (if (##fx< '5 (##vector-length _self15758_))
            (begin
              (##vector-set! _self15758_ '1 _id15759_)
              (##vector-set! _self15758_ '2 _arity15760_)
              (##vector-set! _self15758_ '3 _dispatch15761_)
              (##vector-set! _self15758_ '4 _inline15763_)
              (##vector-set! _self15758_ '5 _typedecl15765_))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self15758_)))))
  (define gxc#!lambda:::init!__1
    (lambda (_self15767_ _id15768_ _arity15769_ _dispatch15770_ _inline15771_)
      (let ((_typedecl15773_ '#f))
        (if (##fx< '5 (##vector-length _self15767_))
            (begin
              (##vector-set! _self15767_ '1 _id15768_)
              (##vector-set! _self15767_ '2 _arity15769_)
              (##vector-set! _self15767_ '3 _dispatch15770_)
              (##vector-set! _self15767_ '4 _inline15771_)
              (##vector-set! _self15767_ '5 _typedecl15773_))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self15767_)))))
  (define gxc#!lambda:::init!
    (lambda _g16075_
      (let ((_g16074_ (length _g16075_)))
        (cond ((##fx= _g16074_ 4) (apply gxc#!lambda:::init!__0 _g16075_))
              ((##fx= _g16074_ 5) (apply gxc#!lambda:::init!__1 _g16075_))
              ((##fx= _g16074_ 6)
               (apply (lambda (_self15775_
                               _id15776_
                               _arity15777_
                               _dispatch15778_
                               _inline15779_
                               _typedecl15780_)
                        (if (##fx< '5 (##vector-length _self15775_))
                            (begin
                              (##vector-set! _self15775_ '1 _id15776_)
                              (##vector-set! _self15775_ '2 _arity15777_)
                              (##vector-set! _self15775_ '3 _dispatch15778_)
                              (##vector-set! _self15775_ '4 _inline15779_)
                              (##vector-set! _self15775_ '5 _typedecl15780_))
                            (error '"struct-instance-init!: too many arguments for struct"
                                   _self15775_)))
                      _g16075_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gxc#!lambda:::init!
                _g16075_))))))
  (bind-method! gxc#!lambda::t ':init! gxc#!lambda:::init! '#f)
  (define gxc#!struct-type-vtab
    (lambda (_type15617_)
      (let ((_$e15619_
             (##structure-ref _type15617_ '7 gxc#!struct-type::t '#f)))
        (if _$e15619_
            (values _$e15619_)
            (let ((_vtab15622_ (make-table 'test: eq?)))
              (##structure-set!
               _type15617_
               _vtab15622_
               '7
               gxc#!struct-type::t
               '#f)
              _vtab15622_)))))
  (define gxc#!struct-type-lookup-method
    (lambda (_type15608_ _method15609_)
      (let ((_vtab1561015612_
             (##structure-ref _type15608_ '7 gxc#!struct-type::t '#f)))
        (if _vtab1561015612_
            (let ((_vtab15615_ _vtab1561015612_))
              (table-ref _vtab15615_ _method15609_ '#f))
            '#f))))
  (define gxc#optimizer-declare-type!__%
    (lambda (_sym15592_ _type15593_ _local?15594_)
      (if (##structure-instance-of? _type15593_ 'gxc#!type::t)
          '#!void
          (error '"bad declaration: expected !type" _sym15592_ _type15593_))
      (gxc#verbose '"declare-type " _sym15592_ '" " (struct->list _type15593_))
      (table-set!
       (if _local?15594_
           (gxc#current-compile-local-type)
           (##structure-ref
            (gxc#current-compile-optimizer-info)
            '1
            gxc#optimizer-info::t
            '#f))
       _sym15592_
       _type15593_)))
  (define gxc#optimizer-declare-type!__0
    (lambda (_sym15599_ _type15600_)
      (let ((_local?15602_ '#f))
        (gxc#optimizer-declare-type!__%
         _sym15599_
         _type15600_
         _local?15602_))))
  (define gxc#optimizer-declare-type!
    (lambda _g16077_
      (let ((_g16076_ (length _g16077_)))
        (cond ((##fx= _g16076_ 2)
               (apply gxc#optimizer-declare-type!__0 _g16077_))
              ((##fx= _g16076_ 3)
               (apply gxc#optimizer-declare-type!__% _g16077_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gxc#optimizer-declare-type!
                _g16077_))))))
  (define gxc#optimizer-clear-type!__%
    (lambda (_sym15578_ _local?15579_)
      (gxc#verbose '"clear-type " _sym15578_)
      (table-set!
       (if _local?15579_
           (gxc#current-compile-local-type)
           (##structure-ref
            (gxc#current-compile-optimizer-info)
            '1
            gxc#optimizer-info::t
            '#f))
       _sym15578_)))
  (define gxc#optimizer-clear-type!__0
    (lambda (_sym15584_)
      (let ((_local?15586_ '#f))
        (gxc#optimizer-clear-type!__% _sym15584_ _local?15586_))))
  (define gxc#optimizer-clear-type!
    (lambda _g16079_
      (let ((_g16078_ (length _g16079_)))
        (cond ((##fx= _g16078_ 1)
               (apply gxc#optimizer-clear-type!__0 _g16079_))
              ((##fx= _g16078_ 2)
               (apply gxc#optimizer-clear-type!__% _g16079_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gxc#optimizer-clear-type!
                _g16079_))))))
  (define gxc#optimizer-declare-method!__%
    (lambda (_type-t15554_ _method15555_ _sym15556_ _rebind?15557_)
      (let ((_type15559_ (gxc#optimizer-resolve-type _type-t15554_)))
        (if (##structure-instance-of? _type15559_ 'gxc#!struct-type::t)
            (let ((_vtab15561_ (gxc#!struct-type-vtab _type15559_)))
              (if _rebind?15557_
                  (if (hash-key? _vtab15561_ _method15555_)
                      (gxc#verbose
                       '"declare-method: [warning] skip rebind on existing method"
                       _type-t15554_
                       '" "
                       _method15555_)
                      (gxc#verbose
                       '"declare-method: skip rebind method "
                       _type-t15554_
                       '" "
                       _method15555_))
                  (if (hash-key? _vtab15561_ _method15555_)
                      (error '"declare-method: duplicate method declaration")
                      (begin
                        (gxc#verbose
                         '"declare-method "
                         _type-t15554_
                         '" "
                         _method15555_
                         '" => "
                         _sym15556_)
                        (table-set! _vtab15561_ _method15555_ _sym15556_)))))
            (if (not _type15559_)
                (gxc#verbose '"declare-method: unknown type " _type-t15554_)
                (error '"declare-method: bad method declaration; no method table"
                       _type-t15554_
                       _type15559_))))))
  (define gxc#optimizer-declare-method!__0
    (lambda (_type-t15566_ _method15567_ _sym15568_)
      (let ((_rebind?15570_ '#f))
        (gxc#optimizer-declare-method!__%
         _type-t15566_
         _method15567_
         _sym15568_
         _rebind?15570_))))
  (define gxc#optimizer-declare-method!
    (lambda _g16081_
      (let ((_g16080_ (length _g16081_)))
        (cond ((##fx= _g16080_ 3)
               (apply gxc#optimizer-declare-method!__0 _g16081_))
              ((##fx= _g16080_ 4)
               (apply gxc#optimizer-declare-method!__% _g16081_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gxc#optimizer-declare-method!
                _g16081_))))))
  (define gxc#optimizer-lookup-type
    (lambda (_sym15542_)
      (let ((_$e15550_
             (let ((_ht1554315545_ (gxc#current-compile-local-type)))
               (if _ht1554315545_
                   (let ((_ht15548_ _ht1554315545_))
                     (table-ref _ht15548_ _sym15542_ '#f))
                   '#f))))
        (if _$e15550_
            _$e15550_
            (table-ref
             (##structure-ref
              (gxc#current-compile-optimizer-info)
              '1
              gxc#optimizer-info::t
              '#f)
             _sym15542_
             '#f)))))
  (define gxc#optimizer-resolve-type
    (lambda (_sym15534_)
      (let ((_type1553515537_ (gxc#optimizer-lookup-type _sym15534_)))
        (if _type1553515537_
            (let ((_type15540_ _type1553515537_))
              (if (##structure-instance-of? _type15540_ 'gxc#!alias::t)
                  (gxc#optimizer-resolve-type
                   (##structure-ref _type15540_ '1 gxc#!type::t '#f))
                  _type15540_))
            '#f))))
  (define gxc#optimizer-lookup-method
    (lambda (_type-t15529_ _method15530_)
      (let ((_type15532_ (gxc#optimizer-resolve-type _type-t15529_)))
        (if (##structure-instance-of? _type15532_ 'gxc#!struct-type::t)
            (gxc#!struct-type-lookup-method _type15532_ _method15530_)
            '#f))))
  (define gxc#identifier-symbol
    (lambda (_stx15527_)
      (if (##structure-direct-instance-of? _stx15527_ 'gx#syntax-quote::t)
          (gxc#generate-runtime-binding-id _stx15527_)
          (gx#stx-e _stx15527_)))))
