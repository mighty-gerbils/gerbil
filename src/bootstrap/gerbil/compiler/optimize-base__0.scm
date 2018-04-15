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
    (lambda _$args16961_
      (apply make-struct-instance gxc#optimizer-info::t _$args16961_)))
  (define gxc#optimizer-info-type
    (make-struct-field-accessor gxc#optimizer-info::t '0))
  (define gxc#optimizer-info-ssxi
    (make-struct-field-accessor gxc#optimizer-info::t '1))
  (define gxc#optimizer-info-type-set!
    (make-struct-field-mutator gxc#optimizer-info::t '0))
  (define gxc#optimizer-info-ssxi-set!
    (make-struct-field-mutator gxc#optimizer-info::t '1))
  (define gxc#optimizer-info:::init!
    (lambda (_self16959_)
      (struct-instance-init!
       _self16959_
       (make-table 'test: eq?)
       (make-table 'test: eq?))))
  (bind-method! gxc#optimizer-info::t ':init! gxc#optimizer-info:::init! '#f)
  (define gxc#!type::t
    (make-struct-type 'gxc#!type::t '#f '1 '!type '() '#f '(id)))
  (define gxc#!type? (make-struct-predicate gxc#!type::t))
  (define gxc#make-!type
    (lambda _$args16834_
      (apply make-struct-instance gxc#!type::t _$args16834_)))
  (define gxc#!type-id (make-struct-field-accessor gxc#!type::t '0))
  (define gxc#!type-id-set! (make-struct-field-mutator gxc#!type::t '0))
  (define gxc#!alias::t
    (make-struct-type 'gxc#!alias::t gxc#!type::t '0 '!alias '() '#f '()))
  (define gxc#!alias? (make-struct-predicate gxc#!alias::t))
  (define gxc#make-!alias
    (lambda _$args16831_
      (apply make-struct-instance gxc#!alias::t _$args16831_)))
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
    (lambda _$args16828_
      (apply make-struct-instance gxc#!struct-type::t _$args16828_)))
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
    (lambda _$args16825_
      (apply make-struct-instance gxc#!procedure::t _$args16825_)))
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
    (lambda _$args16822_
      (apply make-struct-instance gxc#!struct-pred::t _$args16822_)))
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
    (lambda _$args16819_
      (apply make-struct-instance gxc#!struct-cons::t _$args16819_)))
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
    (lambda _$args16816_
      (apply make-struct-instance gxc#!struct-getf::t _$args16816_)))
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
    (lambda _$args16813_
      (apply make-struct-instance gxc#!struct-setf::t _$args16813_)))
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
    (lambda _$args16810_
      (apply make-struct-instance gxc#!lambda::t _$args16810_)))
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
    (lambda _$args16807_
      (apply make-struct-instance gxc#!case-lambda::t _$args16807_)))
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
    (lambda _$args16804_
      (apply make-struct-instance gxc#!kw-lambda::t _$args16804_)))
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
    (lambda _$args16801_
      (apply make-struct-instance gxc#!kw-lambda-primary::t _$args16801_)))
  (define gxc#!kw-lambda-primary-keys
    (make-struct-field-accessor gxc#!kw-lambda-primary::t '0))
  (define gxc#!kw-lambda-primary-main
    (make-struct-field-accessor gxc#!kw-lambda-primary::t '1))
  (define gxc#!kw-lambda-primary-keys-set!
    (make-struct-field-mutator gxc#!kw-lambda-primary::t '0))
  (define gxc#!kw-lambda-primary-main-set!
    (make-struct-field-mutator gxc#!kw-lambda-primary::t '1))
  (define gxc#!struct-type:::init!
    (lambda (_self16793_
             _id16794_
             _super16795_
             _fields16796_
             _xfields16797_
             _ctor16798_
             _plist16799_)
      (struct-instance-init!
       _self16793_
       _id16794_
       _super16795_
       _fields16796_
       _xfields16797_
       _ctor16798_
       _plist16799_
       '#f)))
  (bind-method! gxc#!struct-type::t ':init! gxc#!struct-type:::init! '#f)
  (define gxc#!lambda:::init!__%
    (lambda (_self16637_
             _id16638_
             _arity16639_
             _dispatch16640_
             _inline16641_
             _typedecl16642_)
      (struct-instance-init!
       _self16637_
       _id16638_
       _arity16639_
       _dispatch16640_
       _inline16641_
       _typedecl16642_)))
  (define gxc#!lambda:::init!__0
    (lambda (_self16647_ _id16648_ _arity16649_ _dispatch16650_)
      (let* ((_inline16652_ '#f) (_typedecl16654_ '#f))
        (struct-instance-init!
         _self16647_
         _id16648_
         _arity16649_
         _dispatch16650_
         _inline16652_
         _typedecl16654_))))
  (define gxc#!lambda:::init!__1
    (lambda (_self16656_ _id16657_ _arity16658_ _dispatch16659_ _inline16660_)
      (let ((_typedecl16662_ '#f))
        (struct-instance-init!
         _self16656_
         _id16657_
         _arity16658_
         _dispatch16659_
         _inline16660_
         _typedecl16662_))))
  (define gxc#!lambda:::init!
    (lambda _g16964_
      (let ((_g16963_ (length _g16964_)))
        (cond ((##fx= _g16963_ 4) (apply gxc#!lambda:::init!__0 _g16964_))
              ((##fx= _g16963_ 5) (apply gxc#!lambda:::init!__1 _g16964_))
              ((##fx= _g16963_ 6) (apply struct-instance-init! _g16964_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gxc#!lambda:::init!
                _g16964_))))))
  (bind-method! gxc#!lambda::t ':init! gxc#!lambda:::init! '#f)
  (define gxc#!struct-type-vtab
    (lambda (_type16506_)
      (let ((_$e16508_
             (##structure-ref _type16506_ '7 gxc#!struct-type::t '#f)))
        (if _$e16508_
            (values _$e16508_)
            (let ((_vtab16511_ (make-table 'test: eq?)))
              (##structure-set!
               _type16506_
               _vtab16511_
               '7
               gxc#!struct-type::t
               '#f)
              _vtab16511_)))))
  (define gxc#!struct-type-lookup-method
    (lambda (_type16497_ _method16498_)
      (let ((_vtab1649916501_
             (##structure-ref _type16497_ '7 gxc#!struct-type::t '#f)))
        (if _vtab1649916501_
            (let ((_vtab16504_ _vtab1649916501_))
              (table-ref _vtab16504_ _method16498_ '#f))
            '#f))))
  (define gxc#optimizer-declare-type!__%
    (lambda (_sym16481_ _type16482_ _local?16483_)
      (if (##structure-instance-of? _type16482_ 'gxc#!type::t)
          '#!void
          (error '"bad declaration: expected !type" _sym16481_ _type16482_))
      (gxc#verbose '"declare-type " _sym16481_ '" " (struct->list _type16482_))
      (table-set!
       (if _local?16483_
           (gxc#current-compile-local-type)
           (##structure-ref
            (gxc#current-compile-optimizer-info)
            '1
            gxc#optimizer-info::t
            '#f))
       _sym16481_
       _type16482_)))
  (define gxc#optimizer-declare-type!__0
    (lambda (_sym16488_ _type16489_)
      (let ((_local?16491_ '#f))
        (gxc#optimizer-declare-type!__%
         _sym16488_
         _type16489_
         _local?16491_))))
  (define gxc#optimizer-declare-type!
    (lambda _g16966_
      (let ((_g16965_ (length _g16966_)))
        (cond ((##fx= _g16965_ 2)
               (apply gxc#optimizer-declare-type!__0 _g16966_))
              ((##fx= _g16965_ 3)
               (apply gxc#optimizer-declare-type!__% _g16966_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gxc#optimizer-declare-type!
                _g16966_))))))
  (define gxc#optimizer-clear-type!__%
    (lambda (_sym16467_ _local?16468_)
      (gxc#verbose '"clear-type " _sym16467_)
      (table-set!
       (if _local?16468_
           (gxc#current-compile-local-type)
           (##structure-ref
            (gxc#current-compile-optimizer-info)
            '1
            gxc#optimizer-info::t
            '#f))
       _sym16467_)))
  (define gxc#optimizer-clear-type!__0
    (lambda (_sym16473_)
      (let ((_local?16475_ '#f))
        (gxc#optimizer-clear-type!__% _sym16473_ _local?16475_))))
  (define gxc#optimizer-clear-type!
    (lambda _g16968_
      (let ((_g16967_ (length _g16968_)))
        (cond ((##fx= _g16967_ 1)
               (apply gxc#optimizer-clear-type!__0 _g16968_))
              ((##fx= _g16967_ 2)
               (apply gxc#optimizer-clear-type!__% _g16968_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gxc#optimizer-clear-type!
                _g16968_))))))
  (define gxc#optimizer-declare-method!__%
    (lambda (_type-t16443_ _method16444_ _sym16445_ _rebind?16446_)
      (let ((_type16448_ (gxc#optimizer-resolve-type _type-t16443_)))
        (if (##structure-instance-of? _type16448_ 'gxc#!struct-type::t)
            (let ((_vtab16450_ (gxc#!struct-type-vtab _type16448_)))
              (if _rebind?16446_
                  (if (hash-key? _vtab16450_ _method16444_)
                      (gxc#verbose
                       '"declare-method: [warning] skip rebind on existing method"
                       _type-t16443_
                       '" "
                       _method16444_)
                      (gxc#verbose
                       '"declare-method: skip rebind method "
                       _type-t16443_
                       '" "
                       _method16444_))
                  (if (hash-key? _vtab16450_ _method16444_)
                      (error '"declare-method: duplicate method declaration")
                      (begin
                        (gxc#verbose
                         '"declare-method "
                         _type-t16443_
                         '" "
                         _method16444_
                         '" => "
                         _sym16445_)
                        (table-set! _vtab16450_ _method16444_ _sym16445_)))))
            (if (not _type16448_)
                (gxc#verbose '"declare-method: unknown type " _type-t16443_)
                (error '"declare-method: bad method declaration; no method table"
                       _type-t16443_
                       _type16448_))))))
  (define gxc#optimizer-declare-method!__0
    (lambda (_type-t16455_ _method16456_ _sym16457_)
      (let ((_rebind?16459_ '#f))
        (gxc#optimizer-declare-method!__%
         _type-t16455_
         _method16456_
         _sym16457_
         _rebind?16459_))))
  (define gxc#optimizer-declare-method!
    (lambda _g16970_
      (let ((_g16969_ (length _g16970_)))
        (cond ((##fx= _g16969_ 3)
               (apply gxc#optimizer-declare-method!__0 _g16970_))
              ((##fx= _g16969_ 4)
               (apply gxc#optimizer-declare-method!__% _g16970_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gxc#optimizer-declare-method!
                _g16970_))))))
  (define gxc#optimizer-lookup-type
    (lambda (_sym16431_)
      (let ((_$e16439_
             (let ((_ht1643216434_ (gxc#current-compile-local-type)))
               (if _ht1643216434_
                   (let ((_ht16437_ _ht1643216434_))
                     (table-ref _ht16437_ _sym16431_ '#f))
                   '#f))))
        (if _$e16439_
            _$e16439_
            (table-ref
             (##structure-ref
              (gxc#current-compile-optimizer-info)
              '1
              gxc#optimizer-info::t
              '#f)
             _sym16431_
             '#f)))))
  (define gxc#optimizer-resolve-type
    (lambda (_sym16423_)
      (let ((_type1642416426_ (gxc#optimizer-lookup-type _sym16423_)))
        (if _type1642416426_
            (let ((_type16429_ _type1642416426_))
              (if (##structure-instance-of? _type16429_ 'gxc#!alias::t)
                  (gxc#optimizer-resolve-type
                   (##structure-ref _type16429_ '1 gxc#!type::t '#f))
                  _type16429_))
            '#f))))
  (define gxc#optimizer-lookup-method
    (lambda (_type-t16418_ _method16419_)
      (let ((_type16421_ (gxc#optimizer-resolve-type _type-t16418_)))
        (if (##structure-instance-of? _type16421_ 'gxc#!struct-type::t)
            (gxc#!struct-type-lookup-method _type16421_ _method16419_)
            '#f))))
  (define gxc#identifier-symbol
    (lambda (_stx16416_)
      (if (##structure-direct-instance-of? _stx16416_ 'gx#syntax-quote::t)
          (gxc#generate-runtime-binding-id _stx16416_)
          (gx#stx-e _stx16416_)))))
