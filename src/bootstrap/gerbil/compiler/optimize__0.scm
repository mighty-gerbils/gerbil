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
     ':init!))
  (define gxc#optimizer-info? (make-struct-predicate gxc#optimizer-info::t))
  (define gxc#make-optimizer-info
    (lambda _$args19368_
      (apply make-struct-instance gxc#optimizer-info::t _$args19368_)))
  (define gxc#optimizer-info-type
    (make-struct-field-accessor gxc#optimizer-info::t '0))
  (define gxc#optimizer-info-ssxi
    (make-struct-field-accessor gxc#optimizer-info::t '1))
  (define gxc#optimizer-info-type-set!
    (make-struct-field-mutator gxc#optimizer-info::t '0))
  (define gxc#optimizer-info-ssxi-set!
    (make-struct-field-mutator gxc#optimizer-info::t '1))
  (define gxc#optimizer-info:::init!
    (lambda (_self19366_)
      (struct-instance-init!
       _self19366_
       (make-hash-table-eq)
       (make-hash-table-eq))))
  (bind-method! gxc#optimizer-info::t ':init! gxc#optimizer-info:::init! '#f)
  (define gxc#optimizer-info-init!
    (lambda ()
      (if (gxc#current-compile-optimizer-info)
          '#!void
          (gxc#current-compile-optimizer-info
           (let ((__obj19380 (make-object gxc#optimizer-info::t '2)))
             (begin (gxc#optimizer-info:::init! __obj19380) __obj19380))))))
  (define gxc#optimize!
    (lambda (_ctx19360_)
      (call-with-parameters
       (lambda ()
         (begin
           (gxc#optimizer-load-ssxi-deps _ctx19360_)
           (table-set!
            (##structure-ref
             (gxc#current-compile-optimizer-info)
             '2
             gxc#optimizer-info::t
             '#f)
            (##structure-ref _ctx19360_ '1 gx#expander-context::t '#f)
            '#t)
           (let ((_code19363_
                  (gxc#optimize-source
                   (##structure-ref _ctx19360_ '11 gx#module-context::t '#f))))
             (##structure-set!
              _ctx19360_
              _code19363_
              '11
              gx#module-context::t
              '#f))))
       gxc#current-compile-mutators
       (make-hash-table-eq)
       gxc#current-compile-local-type
       (make-hash-table-eq))))
  (define gxc#optimizer-load-ssxi-deps
    (lambda (_ctx19305_)
      (let ((_deps19307_
             (let ((_imports19351_
                    (##structure-ref _ctx19305_ '8 gx#module-context::t '#f)))
               (let ((_$e19353_
                      (gx#core-context-prelude__opt-lambda11346 _ctx19305_)))
                 (if _$e19353_
                     ((lambda (_g1935519357_)
                        (cons _g1935519357_ _imports19351_))
                      _$e19353_)
                     _imports19351_)))))
        ((letrec ((_lp19309_
                   (lambda (_rest19311_)
                     (let ((_rest1931219320_ _rest19311_))
                       (let ((_E1931519324_
                              (lambda ()
                                (error '"No clause matching"
                                       _rest1931219320_))))
                         (let ((_else1931419328_ (lambda () '#!void)))
                           (let ((_K1931619339_
                                  (lambda (_rest19331_ _hd19332_)
                                    (if (##structure-instance-of?
                                         _hd19332_
                                         'gx#module-context::t)
                                        (begin
                                          (if (table-ref
                                               (##structure-ref
                                                (gxc#current-compile-optimizer-info)
                                                '2
                                                gxc#optimizer-info::t
                                                '#f)
                                               (##structure-ref
                                                _hd19332_
                                                '1
                                                gx#expander-context::t
                                                '#f)
                                               '#f)
                                              '#!void
                                              (begin
                                                (let ((_$e19334_
                                                       (gx#core-context-prelude__opt-lambda11346
                                                        _hd19332_)))
                                                  (if _$e19334_
                                                      ((lambda (_pre19337_)
                                                         (_lp19309_
                                                          (cons _pre19337_
                                                                (##structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd19332_
                         '8
                         gx#module-context::t
                         '#f))))
               _$e19334_)
              (_lp19309_
               (##structure-ref _hd19332_ '8 gx#module-context::t '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (gxc#optimizer-load-ssxi
                                                 _hd19332_)))
                                          (_lp19309_ _rest19331_))
                                        (if (##structure-instance-of?
                                             _hd19332_
                                             'gx#prelude-context::t)
                                            (begin
                                              (if (table-ref
                                                   (##structure-ref
                                                    (gxc#current-compile-optimizer-info)
                                                    '2
                                                    gxc#optimizer-info::t
                                                    '#f)
                                                   (##structure-ref
                                                    _hd19332_
                                                    '1
                                                    gx#expander-context::t
                                                    '#f)
                                                   '#f)
                                                  '#!void
                                                  (begin
                                                    (_lp19309_
                                                     (##structure-ref
                                                      _hd19332_
                                                      '7
                                                      gx#prelude-context::t
                                                      '#f))
                                                    (gxc#optimizer-load-ssxi
                                                     _hd19332_)))
                                              (_lp19309_ _rest19331_))
                                            (if (##structure-direct-instance-of?
                                                 _hd19332_
                                                 'gx#module-import::t)
                                                (_lp19309_
                                                 (cons (##structure-ref
                                                        _hd19332_
                                                        '1
                                                        gx#module-import::t
                                                        '#f)
                                                       _rest19331_))
                                                (if (##structure-direct-instance-of?
                                                     _hd19332_
                                                     'gx#module-export::t)
                                                    (_lp19309_
                                                     (cons (##structure-ref
                                                            _hd19332_
                                                            '1
                                                            gx#module-export::t
                                                            '#f)
                                                           _rest19331_))
                                                    (if (##structure-direct-instance-of?
                                                         _hd19332_
                                                         'gx#import-set::t)
                                                        (_lp19309_
                                                         (cons (##structure-ref
                                                                _hd19332_
                                                                '1
                                                                gx#import-set::t
                                                                '#f)
                                                               _rest19331_))
                                                        (error '"Unexpected module import"
                                                               _hd19332_)))))))))
                             (if (##pair? _rest1931219320_)
                                 (let ((_hd1931719342_
                                        (##car _rest1931219320_))
                                       (_tl1931819344_
                                        (##cdr _rest1931219320_)))
                                   (let ((_hd19347_ _hd1931719342_))
                                     (let ((_rest19349_ _tl1931819344_))
                                       (_K1931619339_ _rest19349_ _hd19347_))))
                                 (_else1931419328_)))))))))
           _lp19309_)
         _deps19307_))))
  (define gxc#optimizer-load-ssxi
    (lambda (_ctx19285_)
      (if (if (##structure-instance-of? _ctx19285_ 'gx#module-context::t)
              (list? (##structure-ref _ctx19285_ '7 gx#module-context::t '#f))
              '#f)
          '#!void
          (let ((_ht19287_
                 (##structure-ref
                  (gxc#current-compile-optimizer-info)
                  '2
                  gxc#optimizer-info::t
                  '#f)))
            (let ((_id19289_
                   (##structure-ref _ctx19285_ '1 gx#expander-context::t '#f)))
              (let ((_mod19291_ (table-ref _ht19287_ _id19289_ '#f)))
                (let ()
                  (let ((_$e19294_ _mod19291_))
                    (if _$e19294_
                        _$e19294_
                        (let ((_mod19297_
                               (gxc#optimizer-import-ssxi _ctx19285_)))
                          (let ((_val19302_
                                 (let ((_$e19299_ _mod19297_))
                                   (if _$e19299_ _$e19299_ '#!void))))
                            (let ()
                              (begin
                                (table-set! _ht19287_ _id19289_ _val19302_)
                                _val19302_)))))))))))))
  (define gxc#optimizer-import-ssxi
    (lambda (_ctx19262_)
      (let ((_catch-e19264_
             (lambda (_exn19283_)
               (begin
                 (if (gxc#current-compile-verbose)
                     (begin
                       (displayln
                        '"Failed to load ssxi module for "
                        (##structure-ref
                         _ctx19262_
                         '1
                         gx#expander-context::t
                         '#f))
                       (display-exception _exn19283_))
                     '#!void)
                 '#f))))
        (let ((_import-e19265_
               (lambda ()
                 (let ((_str-id19268_
                        (string-append
                         (symbol->string
                          (##structure-ref
                           _ctx19262_
                           '1
                           gx#expander-context::t
                           '#f))
                         '".ssxi")))
                   (let ((_artefact-path19276_
                          (let ((_odir1926919271_
                                 (gxc#current-compile-output-dir)))
                            (if _odir1926919271_
                                (let ((_odir19274_ _odir1926919271_))
                                  (path-expand
                                   (string-append _str-id19268_ '".ss")
                                   _odir19274_))
                                '#f))))
                     (let ((_library-path19278_
                            (string->symbol
                             (string-append '":" _str-id19268_))))
                       (let ((_ssxi-path19280_
                              (if (if _artefact-path19276_
                                      (file-exists? _artefact-path19276_)
                                      '#f)
                                  _artefact-path19276_
                                  _library-path19278_)))
                         (let ()
                           (begin
                             (gxc#verbose
                              '"Loading ssxi module "
                              _ssxi-path19280_)
                             (gx#import-module__opt-lambda11381
                              _ssxi-path19280_
                              '#t
                              '#t))))))))))
          (if (##structure-ref _ctx19262_ '1 gx#expander-context::t '#f)
              (with-catch _catch-e19264_ _import-e19265_)
              '#f)))))
  (define gxc#!type::t (make-struct-type 'gxc#!type::t '#f '1 '!type '() '#f))
  (define gxc#!type? (make-struct-predicate gxc#!type::t))
  (define gxc#make-!type
    (lambda _$args19259_
      (apply make-struct-instance gxc#!type::t _$args19259_)))
  (define gxc#!type-id (make-struct-field-accessor gxc#!type::t '0))
  (define gxc#!type-id-set! (make-struct-field-mutator gxc#!type::t '0))
  (define gxc#!alias::t
    (make-struct-type 'gxc#!alias::t gxc#!type::t '0 '!alias '() '#f))
  (define gxc#!alias? (make-struct-predicate gxc#!alias::t))
  (define gxc#make-!alias
    (lambda _$args19256_
      (apply make-struct-instance gxc#!alias::t _$args19256_)))
  (define gxc#!struct-type::t
    (make-struct-type
     'gxc#!struct-type::t
     gxc#!type::t
     '6
     '!struct-type
     '()
     ':init!))
  (define gxc#!struct-type? (make-struct-predicate gxc#!struct-type::t))
  (define gxc#make-!struct-type
    (lambda _$args19253_
      (apply make-struct-instance gxc#!struct-type::t _$args19253_)))
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
    (make-struct-type 'gxc#!procedure::t gxc#!type::t '0 '!procedure '() '#f))
  (define gxc#!procedure? (make-struct-predicate gxc#!procedure::t))
  (define gxc#make-!procedure
    (lambda _$args19250_
      (apply make-struct-instance gxc#!procedure::t _$args19250_)))
  (define gxc#!struct-pred::t
    (make-struct-type
     'gxc#!struct-pred::t
     gxc#!procedure::t
     '0
     '!struct-pred
     '()
     '#f))
  (define gxc#!struct-pred? (make-struct-predicate gxc#!struct-pred::t))
  (define gxc#make-!struct-pred
    (lambda _$args19247_
      (apply make-struct-instance gxc#!struct-pred::t _$args19247_)))
  (define gxc#!struct-cons::t
    (make-struct-type
     'gxc#!struct-cons::t
     gxc#!procedure::t
     '0
     '!struct-cons
     '()
     '#f))
  (define gxc#!struct-cons? (make-struct-predicate gxc#!struct-cons::t))
  (define gxc#make-!struct-cons
    (lambda _$args19244_
      (apply make-struct-instance gxc#!struct-cons::t _$args19244_)))
  (define gxc#!struct-getf::t
    (make-struct-type
     'gxc#!struct-getf::t
     gxc#!procedure::t
     '1
     '!struct-getf
     '()
     '#f))
  (define gxc#!struct-getf? (make-struct-predicate gxc#!struct-getf::t))
  (define gxc#make-!struct-getf
    (lambda _$args19241_
      (apply make-struct-instance gxc#!struct-getf::t _$args19241_)))
  (define gxc#!struct-getf-off
    (make-struct-field-accessor gxc#!struct-getf::t '0))
  (define gxc#!struct-getf-off-set!
    (make-struct-field-mutator gxc#!struct-getf::t '0))
  (define gxc#!struct-setf::t
    (make-struct-type
     'gxc#!struct-setf::t
     gxc#!procedure::t
     '1
     '!struct-setf
     '()
     '#f))
  (define gxc#!struct-setf? (make-struct-predicate gxc#!struct-setf::t))
  (define gxc#make-!struct-setf
    (lambda _$args19238_
      (apply make-struct-instance gxc#!struct-setf::t _$args19238_)))
  (define gxc#!struct-setf-off
    (make-struct-field-accessor gxc#!struct-setf::t '0))
  (define gxc#!struct-setf-off-set!
    (make-struct-field-mutator gxc#!struct-setf::t '0))
  (define gxc#!lambda::t
    (make-struct-type
     'gxc#!lambda::t
     gxc#!procedure::t
     '4
     '!lambda
     '()
     ':init!))
  (define gxc#!lambda? (make-struct-predicate gxc#!lambda::t))
  (define gxc#make-!lambda
    (lambda _$args19235_
      (apply make-struct-instance gxc#!lambda::t _$args19235_)))
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
     '#f))
  (define gxc#!case-lambda? (make-struct-predicate gxc#!case-lambda::t))
  (define gxc#make-!case-lambda
    (lambda _$args19232_
      (apply make-struct-instance gxc#!case-lambda::t _$args19232_)))
  (define gxc#!case-lambda-clauses
    (make-struct-field-accessor gxc#!case-lambda::t '0))
  (define gxc#!case-lambda-clauses-set!
    (make-struct-field-mutator gxc#!case-lambda::t '0))
  (define gxc#!struct-type:::init!
    (lambda (_self19224_
             _id19225_
             _super19226_
             _fields19227_
             _xfields19228_
             _ctor19229_
             _plist19230_)
      (struct-instance-init!
       _self19224_
       _id19225_
       _super19226_
       _fields19227_
       _xfields19228_
       _ctor19229_
       _plist19230_
       '#f)))
  (bind-method! gxc#!struct-type::t ':init! gxc#!struct-type:::init! '#f)
  (begin
    (define gxc#!lambda:::init!__opt-lambda19188
      (lambda (_self19190_
               _id19191_
               _arity19192_
               _dispatch19193_
               _inline19194_
               _typedecl19195_)
        (struct-instance-init!
         _self19190_
         _id19191_
         _arity19192_
         _dispatch19193_
         _inline19194_
         _typedecl19195_)))
    (begin
      (define gxc#!lambda:::init!__0
        (lambda (_self19200_ _id19201_ _arity19202_ _dispatch19203_)
          (let ((_inline19205_ '#f))
            (let ((_typedecl19207_ '#f))
              (struct-instance-init!
               _self19200_
               _id19201_
               _arity19202_
               _dispatch19203_
               _inline19205_
               _typedecl19207_)))))
      (define gxc#!lambda:::init!__1
        (lambda (_self19209_
                 _id19210_
                 _arity19211_
                 _dispatch19212_
                 _inline19213_)
          (let ((_typedecl19215_ '#f))
            (struct-instance-init!
             _self19209_
             _id19210_
             _arity19211_
             _dispatch19212_
             _inline19213_
             _typedecl19215_))))
      (define gxc#!lambda:::init!
        (lambda _g19388_
          (let ((_g19387_ (length _g19388_)))
            (cond ((fx= _g19387_ 4) (apply gxc#!lambda:::init!__0 _g19388_))
                  ((fx= _g19387_ 5) (apply gxc#!lambda:::init!__1 _g19388_))
                  ((fx= _g19387_ 6) (apply struct-instance-init! _g19388_))
                  (else (error "No clause matching arguments" _g19388_))))))))
  (bind-method! gxc#!lambda::t ':init! gxc#!lambda:::init! '#f)
  (define gxc#!struct-type-vtab
    (lambda (_type19182_)
      (let ((_$e19184_
             (##structure-ref _type19182_ '7 gxc#!struct-type::t '#f)))
        (if _$e19184_
            (values _$e19184_)
            (let ((_vtab19187_ (make-hash-table-eq)))
              (begin
                (##structure-set!
                 _type19182_
                 _vtab19187_
                 '7
                 gxc#!struct-type::t
                 '#f)
                _vtab19187_))))))
  (define gxc#!struct-type-lookup-method
    (lambda (_type19173_ _method19174_)
      (let ((_vtab1917519177_
             (##structure-ref _type19173_ '7 gxc#!struct-type::t '#f)))
        (if _vtab1917519177_
            (let ((_vtab19180_ _vtab1917519177_))
              (table-ref _vtab19180_ _method19174_ '#f))
            '#f))))
  (begin
    (define gxc#optimizer-declare-type!__opt-lambda19155
      (lambda (_sym19157_ _type19158_ _local?19159_)
        (begin
          (if (##structure-instance-of? _type19158_ 'gxc#!type::t)
              '#!void
              (error '"bad declaration: expected !type"
                     _sym19157_
                     _type19158_))
          (gxc#verbose
           '"declare-type "
           _sym19157_
           '" "
           (##vector->list _type19158_))
          (table-set!
           (if _local?19159_
               (gxc#current-compile-local-type)
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '1
                gxc#optimizer-info::t
                '#f))
           _sym19157_
           _type19158_))))
    (begin
      (define gxc#optimizer-declare-type!__0
        (lambda (_sym19164_ _type19165_)
          (let ((_local?19167_ '#f))
            (gxc#optimizer-declare-type!__opt-lambda19155
             _sym19164_
             _type19165_
             _local?19167_))))
      (define gxc#optimizer-declare-type!
        (lambda _g19390_
          (let ((_g19389_ (length _g19390_)))
            (cond ((fx= _g19389_ 2)
                   (apply gxc#optimizer-declare-type!__0 _g19390_))
                  ((fx= _g19389_ 3)
                   (apply gxc#optimizer-declare-type!__opt-lambda19155
                          _g19390_))
                  (else (error "No clause matching arguments" _g19390_))))))))
  (begin
    (define gxc#optimizer-declare-method!__opt-lambda19131
      (lambda (_type-t19133_ _method19134_ _sym19135_ _rebind?19136_)
        (let ((_type19138_ (gxc#optimizer-resolve-type _type-t19133_)))
          (if (##structure-instance-of? _type19138_ 'gxc#!struct-type::t)
              (let ((_vtab19140_ (gxc#!struct-type-vtab _type19138_)))
                (if _rebind?19136_
                    (if (hash-key? _vtab19140_ _method19134_)
                        (gxc#verbose
                         '"declare-method: [warning] skip rebind on existing method"
                         _type-t19133_
                         '" "
                         _method19134_)
                        (gxc#verbose
                         '"declare-method: skip rebind method "
                         _type-t19133_
                         '" "
                         _method19134_))
                    (if (hash-key? _vtab19140_ _method19134_)
                        (error '"declare-method: duplicate method declaration")
                        (begin
                          (gxc#verbose
                           '"declare-method "
                           _type-t19133_
                           '" "
                           _method19134_
                           '" => "
                           _sym19135_)
                          (table-set! _vtab19140_ _method19134_ _sym19135_)))))
              (if (not _type19138_)
                  (gxc#verbose '"declare-method: unknown type " _type-t19133_)
                  (error '"declare-method: bad method declaration; no method table"
                         _type-t19133_
                         _type19138_))))))
    (begin
      (define gxc#optimizer-declare-method!__0
        (lambda (_type-t19145_ _method19146_ _sym19147_)
          (let ((_rebind?19149_ '#f))
            (gxc#optimizer-declare-method!__opt-lambda19131
             _type-t19145_
             _method19146_
             _sym19147_
             _rebind?19149_))))
      (define gxc#optimizer-declare-method!
        (lambda _g19392_
          (let ((_g19391_ (length _g19392_)))
            (cond ((fx= _g19391_ 3)
                   (apply gxc#optimizer-declare-method!__0 _g19392_))
                  ((fx= _g19391_ 4)
                   (apply gxc#optimizer-declare-method!__opt-lambda19131
                          _g19392_))
                  (else (error "No clause matching arguments" _g19392_))))))))
  (define gxc#optimizer-lookup-type
    (lambda (_sym19121_)
      (let ((_$e19129_
             (let ((_ht1912219124_ (gxc#current-compile-local-type)))
               (if _ht1912219124_
                   (let ((_ht19127_ _ht1912219124_))
                     (table-ref _ht19127_ _sym19121_ '#f))
                   '#f))))
        (if _$e19129_
            _$e19129_
            (table-ref
             (##structure-ref
              (gxc#current-compile-optimizer-info)
              '1
              gxc#optimizer-info::t
              '#f)
             _sym19121_
             '#f)))))
  (define gxc#optimizer-resolve-type
    (lambda (_sym19113_)
      (let ((_type1911419116_ (gxc#optimizer-lookup-type _sym19113_)))
        (if _type1911419116_
            (let ((_type19119_ _type1911419116_))
              (if (##structure-instance-of? _type19119_ 'gxc#!alias::t)
                  (gxc#optimizer-resolve-type
                   (##structure-ref _type19119_ '1 gxc#!type::t '#f))
                  _type19119_))
            '#f))))
  (define gxc#optimizer-lookup-method
    (lambda (_type-t19108_ _method19109_)
      (let ((_type19111_ (gxc#optimizer-resolve-type _type-t19108_)))
        (if (##structure-instance-of? _type19111_ 'gxc#!struct-type::t)
            (gxc#!struct-type-lookup-method _type19111_ _method19109_)
            '#f))))
  (define gxc#optimize-source
    (lambda (_stx19104_)
      (begin
        (gxc#apply-collect-mutators _stx19104_)
        (let ((_stx19106_ (gxc#apply-lift-top-lambdas _stx19104_)))
          (begin
            (gxc#apply-collect-type-info _stx19106_)
            (gxc#apply-optimize-call _stx19106_))))))
  (define gxc#&false-expression
    (make-promise
     (lambda ()
       (let ((_tbl19101_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl19101_ '%#lambda false)
           (table-set! _tbl19101_ '%#case-lambda false)
           (table-set! _tbl19101_ '%#let-values false)
           (table-set! _tbl19101_ '%#letrec-values false)
           (table-set! _tbl19101_ '%#letrec*-values false)
           (table-set! _tbl19101_ '%#quote false)
           (table-set! _tbl19101_ '%#quote-syntax false)
           (table-set! _tbl19101_ '%#call false)
           (table-set! _tbl19101_ '%#if false)
           (table-set! _tbl19101_ '%#ref false)
           (table-set! _tbl19101_ '%#set! false)
           (table-set! _tbl19101_ '%#struct-instance? false)
           (table-set! _tbl19101_ '%#struct-direct-instance? false)
           (table-set! _tbl19101_ '%#struct-ref false)
           (table-set! _tbl19101_ '%#struct-set! false)
           _tbl19101_)))))
  (define gxc#&false-special-form
    (make-promise
     (lambda ()
       (let ((_tbl19097_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl19097_ '%#begin false)
           (table-set! _tbl19097_ '%#begin-syntax false)
           (table-set! _tbl19097_ '%#begin-foreign false)
           (table-set! _tbl19097_ '%#module false)
           (table-set! _tbl19097_ '%#import false)
           (table-set! _tbl19097_ '%#export false)
           (table-set! _tbl19097_ '%#provide false)
           (table-set! _tbl19097_ '%#extern false)
           (table-set! _tbl19097_ '%#define-values false)
           (table-set! _tbl19097_ '%#define-syntax false)
           (table-set! _tbl19097_ '%#define-alias false)
           (table-set! _tbl19097_ '%#declare false)
           _tbl19097_)))))
  (define gxc#&false
    (make-promise
     (lambda ()
       (let ((_tbl19093_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl19093_ (force gxc#&false-special-form))
           (hash-copy! _tbl19093_ (force gxc#&false-expression))
           _tbl19093_)))))
  (define gxc#&identity-expression
    (make-promise
     (lambda ()
       (let ((_tbl19089_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl19089_ '%#lambda gxc#xform-identity)
           (table-set! _tbl19089_ '%#case-lambda gxc#xform-identity)
           (table-set! _tbl19089_ '%#let-values gxc#xform-identity)
           (table-set! _tbl19089_ '%#letrec-values gxc#xform-identity)
           (table-set! _tbl19089_ '%#letrec*-values gxc#xform-identity)
           (table-set! _tbl19089_ '%#quote gxc#xform-identity)
           (table-set! _tbl19089_ '%#quote-syntax gxc#xform-identity)
           (table-set! _tbl19089_ '%#call gxc#xform-identity)
           (table-set! _tbl19089_ '%#if gxc#xform-identity)
           (table-set! _tbl19089_ '%#ref gxc#xform-identity)
           (table-set! _tbl19089_ '%#set! gxc#xform-identity)
           (table-set! _tbl19089_ '%#struct-instance? gxc#xform-identity)
           (table-set!
            _tbl19089_
            '%#struct-direct-instance?
            gxc#xform-identity)
           (table-set! _tbl19089_ '%#struct-ref gxc#xform-identity)
           (table-set! _tbl19089_ '%#struct-set! gxc#xform-identity)
           _tbl19089_)))))
  (define gxc#&identity-special-form
    (make-promise
     (lambda ()
       (let ((_tbl19085_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl19085_ '%#begin gxc#xform-identity)
           (table-set! _tbl19085_ '%#begin-syntax gxc#xform-identity)
           (table-set! _tbl19085_ '%#begin-foreign gxc#xform-identity)
           (table-set! _tbl19085_ '%#module gxc#xform-identity)
           (table-set! _tbl19085_ '%#import gxc#xform-identity)
           (table-set! _tbl19085_ '%#export gxc#xform-identity)
           (table-set! _tbl19085_ '%#provide gxc#xform-identity)
           (table-set! _tbl19085_ '%#extern gxc#xform-identity)
           (table-set! _tbl19085_ '%#define-values gxc#xform-identity)
           (table-set! _tbl19085_ '%#define-syntax gxc#xform-identity)
           (table-set! _tbl19085_ '%#define-alias gxc#xform-identity)
           (table-set! _tbl19085_ '%#declare gxc#xform-identity)
           _tbl19085_)))))
  (define gxc#&identity
    (make-promise
     (lambda ()
       (let ((_tbl19081_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl19081_ (force gxc#&identity-special-form))
           (hash-copy! _tbl19081_ (force gxc#&identity-expression))
           _tbl19081_)))))
  (define gxc#&basic-xform-expression
    (make-promise
     (lambda ()
       (let ((_tbl19077_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl19077_ '%#lambda gxc#xform-lambda%)
           (table-set! _tbl19077_ '%#case-lambda gxc#xform-case-lambda%)
           (table-set! _tbl19077_ '%#let-values gxc#xform-let-values%)
           (table-set! _tbl19077_ '%#letrec-values gxc#xform-let-values%)
           (table-set! _tbl19077_ '%#letrec*-values gxc#xform-let-values%)
           (table-set! _tbl19077_ '%#quote gxc#xform-identity)
           (table-set! _tbl19077_ '%#quote-syntax gxc#xform-identity)
           (table-set! _tbl19077_ '%#call gxc#xform-operands)
           (table-set! _tbl19077_ '%#if gxc#xform-operands)
           (table-set! _tbl19077_ '%#ref gxc#xform-identity)
           (table-set! _tbl19077_ '%#set! gxc#xform-setq%)
           (table-set! _tbl19077_ '%#struct-instance? gxc#xform-operands)
           (table-set!
            _tbl19077_
            '%#struct-direct-instance?
            gxc#xform-operands)
           (table-set! _tbl19077_ '%#struct-ref gxc#xform-operands)
           (table-set! _tbl19077_ '%#struct-set! gxc#xform-operands)
           _tbl19077_)))))
  (define gxc#&basic-xform
    (make-promise
     (lambda ()
       (let ((_tbl19073_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl19073_ (force gxc#&basic-xform-expression))
           (hash-copy! _tbl19073_ (force gxc#&identity))
           (table-set! _tbl19073_ '%#begin gxc#xform-begin%)
           (table-set! _tbl19073_ '%#module gxc#xform-module%)
           (table-set! _tbl19073_ '%#define-values gxc#xform-define-values%)
           _tbl19073_)))))
  (define gxc#&collect-mutators
    (make-promise
     (lambda ()
       (let ((_tbl19069_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl19069_ (force gxc#&void))
           (table-set! _tbl19069_ '%#begin gxc#collect-begin%)
           (table-set! _tbl19069_ '%#module gxc#collect-module%)
           (table-set! _tbl19069_ '%#lambda gxc#collect-body-lambda%)
           (table-set! _tbl19069_ '%#case-lambda gxc#collect-body-case-lambda%)
           (table-set! _tbl19069_ '%#let-values gxc#collect-body-let-values%)
           (table-set!
            _tbl19069_
            '%#letrec-values
            gxc#collect-body-let-values%)
           (table-set!
            _tbl19069_
            '%#letrec*-values
            gxc#collect-body-let-values%)
           (table-set! _tbl19069_ '%#call gxc#collect-operands)
           (table-set! _tbl19069_ '%#if gxc#collect-operands)
           (table-set! _tbl19069_ '%#set! gxc#collect-mutators-setq%)
           (table-set! _tbl19069_ '%#struct-instance? gxc#collect-operands)
           (table-set!
            _tbl19069_
            '%#struct-direct-instance?
            gxc#collect-operands)
           (table-set! _tbl19069_ '%#struct-ref gxc#collect-operands)
           (table-set! _tbl19069_ '%#struct-set! gxc#collect-operands)
           _tbl19069_)))))
  (define gxc#apply-collect-mutators
    (lambda (_stx19062_ . _args19064_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx19062_ _args19064_))
       gxc#current-compile-methods
       (force gxc#&collect-mutators))))
  (define gxc#&lift-top-lambdas
    (make-promise
     (lambda ()
       (let ((_tbl19059_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl19059_ (force gxc#&basic-xform))
           (table-set!
            _tbl19059_
            '%#define-values
            gxc#lift-top-lambda-define-values%)
           (table-set!
            _tbl19059_
            '%#let-values
            gxc#lift-top-lambda-let-values%)
           (table-set!
            _tbl19059_
            '%#letrec-values
            gxc#lift-top-lambda-letrec-values%)
           (table-set!
            _tbl19059_
            '%#letrec*-values
            gxc#lift-top-lambda-letrec-values%)
           _tbl19059_)))))
  (define gxc#apply-lift-top-lambdas
    (lambda (_stx19052_ . _args19054_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx19052_ _args19054_))
       gxc#current-compile-methods
       (force gxc#&lift-top-lambdas))))
  (define gxc#&expression-subst
    (make-promise
     (lambda ()
       (let ((_tbl19049_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl19049_ (force gxc#&basic-xform-expression))
           (table-set! _tbl19049_ '%#begin gxc#xform-begin%)
           (table-set! _tbl19049_ '%#ref gxc#expression-subst-ref%)
           _tbl19049_)))))
  (define gxc#apply-expression-subst
    (lambda (_stx19042_ . _args19044_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx19042_ _args19044_))
       gxc#current-compile-methods
       (force gxc#&expression-subst))))
  (define gxc#&collect-type-info
    (make-promise
     (lambda ()
       (let ((_tbl19039_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl19039_ (force gxc#&void))
           (table-set! _tbl19039_ '%#begin gxc#collect-begin%)
           (table-set! _tbl19039_ '%#module gxc#collect-module%)
           (table-set!
            _tbl19039_
            '%#define-values
            gxc#collect-type-define-values%)
           (table-set! _tbl19039_ '%#lambda gxc#collect-body-lambda%)
           (table-set! _tbl19039_ '%#case-lambda gxc#collect-body-case-lambda%)
           (table-set! _tbl19039_ '%#let-values gxc#collect-type-let-values%)
           (table-set!
            _tbl19039_
            '%#letrec-values
            gxc#collect-type-let-values%)
           (table-set!
            _tbl19039_
            '%#letrec*-values
            gxc#collect-type-let-values%)
           (table-set! _tbl19039_ '%#call gxc#collect-type-call%)
           (table-set! _tbl19039_ '%#if gxc#collect-operands)
           (table-set! _tbl19039_ '%#set! gxc#collect-body-setq%)
           _tbl19039_)))))
  (define gxc#apply-collect-type-info
    (lambda (_stx19032_ . _args19034_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx19032_ _args19034_))
       gxc#current-compile-methods
       (force gxc#&collect-type-info))))
  (define gxc#&basic-expression-type
    (make-promise
     (lambda ()
       (let ((_tbl19029_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl19029_ (force gxc#&false))
           (table-set! _tbl19029_ '%#begin gxc#basic-expression-type-begin%)
           (table-set! _tbl19029_ '%#lambda gxc#basic-expression-type-lambda%)
           (table-set!
            _tbl19029_
            '%#case-lambda
            gxc#basic-expression-type-case-lambda%)
           (table-set! _tbl19029_ '%#call gxc#basic-expression-type-call%)
           (table-set! _tbl19029_ '%#ref gxc#basic-expression-type-ref%)
           _tbl19029_)))))
  (define gxc#apply-basic-expression-type
    (lambda (_stx19022_ . _args19024_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx19022_ _args19024_))
       gxc#current-compile-methods
       (force gxc#&basic-expression-type))))
  (define gxc#&optimize-call
    (make-promise
     (lambda ()
       (let ((_tbl19019_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl19019_ (force gxc#&basic-xform))
           (table-set! _tbl19019_ '%#call gxc#optimize-call%)
           _tbl19019_)))))
  (define gxc#apply-optimize-call
    (lambda (_stx19012_ . _args19014_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx19012_ _args19014_))
       gxc#current-compile-methods
       (force gxc#&optimize-call))))
  (define gxc#&generate-ssxi
    (make-promise
     (lambda ()
       (let ((_tbl19009_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl19009_ (force gxc#&generate-runtime-empty))
           (table-set! _tbl19009_ '%#begin gxc#generate-runtime-begin%)
           (table-set! _tbl19009_ '%#module gxc#generate-ssxi-module%)
           (table-set!
            _tbl19009_
            '%#define-values
            gxc#generate-ssxi-define-values%)
           (table-set! _tbl19009_ '%#call gxc#generate-ssxi-call%)
           _tbl19009_)))))
  (define gxc#apply-generate-ssxi
    (lambda (_stx19002_ . _args19004_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx19002_ _args19004_))
       gxc#current-compile-methods
       (force gxc#&generate-ssxi))))
  (define gxc#xform-identity (lambda (_stx18999_ . _args19000_) _stx18999_))
  (define gxc#xform-wrap-source
    (lambda (_stx18996_ _src-stx18997_)
      (gx#stx-wrap-source _stx18996_ (gx#stx-source _src-stx18997_))))
  (define gxc#xform-apply-compile-e
    (lambda (_args18990_)
      (lambda (_g1899118993_)
        (apply gxc#compile-e _g1899118993_ _args18990_))))
  (define gxc#xform-begin%
    (lambda (_stx18949_ . _args18950_)
      (let ((_g1895218962_
             (lambda (_g1895318959_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1895318959_))))
        (let ((_g1895118987_
               (lambda (_g1895318965_)
                 (if (gx#stx-pair? _g1895318965_)
                     (let ((_e1895518967_ (gx#stx-e _g1895318965_)))
                       (let ((_hd1895618970_ (##car _e1895518967_))
                             (_tl1895718972_ (##cdr _e1895518967_)))
                         ((lambda (_L18975_)
                            (let ((_forms18985_
                                   (map (gxc#xform-apply-compile-e _args18950_)
                                        _L18975_)))
                              (gxc#xform-wrap-source
                               (cons '%#begin _forms18985_)
                               _stx18949_)))
                          _tl1895718972_)))
                     (_g1895218962_ _g1895318965_)))))
          (_g1895118987_ _stx18949_)))))
  (define gxc#xform-module%
    (lambda (_stx18886_ . _args18887_)
      (let ((_g1888918903_
             (lambda (_g1889018900_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1889018900_))))
        (let ((_g1888818946_
               (lambda (_g1889018906_)
                 (if (gx#stx-pair? _g1889018906_)
                     (let ((_e1889318908_ (gx#stx-e _g1889018906_)))
                       (let ((_hd1889418911_ (##car _e1889318908_))
                             (_tl1889518913_ (##cdr _e1889318908_)))
                         (if (gx#stx-pair? _tl1889518913_)
                             (let ((_e1889618916_ (gx#stx-e _tl1889518913_)))
                               (let ((_hd1889718919_ (##car _e1889618916_))
                                     (_tl1889818921_ (##cdr _e1889618916_)))
                                 ((lambda (_L18924_ _L18925_)
                                    (let ((_ctx18938_
                                           (gx#syntax-local-e__0 _L18925_)))
                                      (let ((_code18940_
                                             (##structure-ref
                                              _ctx18938_
                                              '11
                                              gx#module-context::t
                                              '#f)))
                                        (let ((_code18943_
                                               (call-with-parameters
                                                (lambda ()
                                                  (apply gxc#compile-e
                                                         _code18940_
                                                         _args18887_))
                                                gx#current-expander-context
                                                _ctx18938_)))
                                          (let ()
                                            (begin
                                              (##structure-set!
                                               _ctx18938_
                                               _code18943_
                                               '11
                                               gx#module-context::t
                                               '#f)
                                              (gxc#xform-wrap-source
                                               (cons '%#module
                                                     (cons _L18925_
                                                           (cons _code18943_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _stx18886_)))))))
                                  _tl1889818921_
                                  _hd1889718919_)))
                             (_g1888918903_ _g1889018906_))))
                     (_g1888918903_ _g1889018906_)))))
          (_g1888818946_ _stx18886_)))))
  (define gxc#xform-define-values%
    (lambda (_stx18816_ . _args18817_)
      (let ((_g1881918836_
             (lambda (_g1882018833_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1882018833_))))
        (let ((_g1881818883_
               (lambda (_g1882018839_)
                 (if (gx#stx-pair? _g1882018839_)
                     (let ((_e1882318841_ (gx#stx-e _g1882018839_)))
                       (let ((_hd1882418844_ (##car _e1882318841_))
                             (_tl1882518846_ (##cdr _e1882318841_)))
                         (if (gx#stx-pair? _tl1882518846_)
                             (let ((_e1882618849_ (gx#stx-e _tl1882518846_)))
                               (let ((_hd1882718852_ (##car _e1882618849_))
                                     (_tl1882818854_ (##cdr _e1882618849_)))
                                 (if (gx#stx-pair? _tl1882818854_)
                                     (let ((_e1882918857_
                                            (gx#stx-e _tl1882818854_)))
                                       (let ((_hd1883018860_
                                              (##car _e1882918857_))
                                             (_tl1883118862_
                                              (##cdr _e1882918857_)))
                                         (if (gx#stx-null? _tl1883118862_)
                                             ((lambda (_L18865_ _L18866_)
                                                (let ((_expr18881_
                                                       (apply gxc#compile-e
                                                              _L18865_
                                                              _args18817_)))
                                                  (gxc#xform-wrap-source
                                                   (cons '%#define-values
                                                         (cons _L18866_
                                                               (cons _expr18881_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _stx18816_)))
                                              _hd1883018860_
                                              _hd1882718852_)
                                             (_g1881918836_ _g1882018839_))))
                                     (_g1881918836_ _g1882018839_))))
                             (_g1881918836_ _g1882018839_))))
                     (_g1881918836_ _g1882018839_)))))
          (_g1881818883_ _stx18816_)))))
  (define gxc#xform-lambda%
    (lambda (_stx18759_ . _args18760_)
      (let ((_g1876218776_
             (lambda (_g1876318773_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1876318773_))))
        (let ((_g1876118813_
               (lambda (_g1876318779_)
                 (if (gx#stx-pair? _g1876318779_)
                     (let ((_e1876618781_ (gx#stx-e _g1876318779_)))
                       (let ((_hd1876718784_ (##car _e1876618781_))
                             (_tl1876818786_ (##cdr _e1876618781_)))
                         (if (gx#stx-pair? _tl1876818786_)
                             (let ((_e1876918789_ (gx#stx-e _tl1876818786_)))
                               (let ((_hd1877018792_ (##car _e1876918789_))
                                     (_tl1877118794_ (##cdr _e1876918789_)))
                                 ((lambda (_L18797_ _L18798_)
                                    (let ((_body18811_
                                           (map (gxc#xform-apply-compile-e
                                                 _args18760_)
                                                _L18797_)))
                                      (gxc#xform-wrap-source
                                       (cons '%#lambda
                                             (cons _L18798_ _body18811_))
                                       _stx18759_)))
                                  _tl1877118794_
                                  _hd1877018792_)))
                             (_g1876218776_ _g1876318779_))))
                     (_g1876218776_ _g1876318779_)))))
          (_g1876118813_ _stx18759_)))))
  (define gxc#xform-case-lambda%
    (lambda (_stx18672_ . _args18673_)
      (let ((_clause-e18675_
             (lambda (_clause18716_)
               (let ((_g1871818729_
                      (lambda (_g1871918726_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax"
                         _g1871918726_))))
                 (let ((_g1871718756_
                        (lambda (_g1871918732_)
                          (if (gx#stx-pair? _g1871918732_)
                              (let ((_e1872218734_ (gx#stx-e _g1871918732_)))
                                (let ((_hd1872318737_ (##car _e1872218734_))
                                      (_tl1872418739_ (##cdr _e1872218734_)))
                                  ((lambda (_L18742_ _L18743_)
                                     (let ((_body18754_
                                            (map (gxc#xform-apply-compile-e
                                                  _args18673_)
                                                 _L18742_)))
                                       (cons _L18743_ _body18754_)))
                                   _tl1872418739_
                                   _hd1872318737_)))
                              (_g1871818729_ _g1871918732_)))))
                   (_g1871718756_ _clause18716_))))))
        (let ((_g1867718687_
               (lambda (_g1867818684_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1867818684_))))
          (let ((_g1867618713_
                 (lambda (_g1867818690_)
                   (if (gx#stx-pair? _g1867818690_)
                       (let ((_e1868018692_ (gx#stx-e _g1867818690_)))
                         (let ((_hd1868118695_ (##car _e1868018692_))
                               (_tl1868218697_ (##cdr _e1868018692_)))
                           ((lambda (_L18700_)
                              (let ((_clauses18711_
                                     (map _clause-e18675_ _L18700_)))
                                (gxc#xform-wrap-source
                                 (cons '%#case-lambda _clauses18711_)
                                 _stx18672_)))
                            _tl1868218697_)))
                       (_g1867718687_ _g1867818690_)))))
            (_g1867618713_ _stx18672_))))))
  (define gxc#xform-let-values%
    (lambda (_stx18466_ . _args18467_)
      (let ((_g1846918502_
             (lambda (_g1847018499_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1847018499_))))
        (let ((_g1846818669_
               (lambda (_g1847018505_)
                 (if (gx#stx-pair? _g1847018505_)
                     (let ((_e1847518507_ (gx#stx-e _g1847018505_)))
                       (let ((_hd1847618510_ (##car _e1847518507_))
                             (_tl1847718512_ (##cdr _e1847518507_)))
                         (if (gx#stx-pair? _tl1847718512_)
                             (let ((_e1847818515_ (gx#stx-e _tl1847718512_)))
                               (let ((_hd1847918518_ (##car _e1847818515_))
                                     (_tl1848018520_ (##cdr _e1847818515_)))
                                 (if (gx#stx-pair/null? _hd1847918518_)
                                     (if (fx>= (gx#stx-length _hd1847918518_)
                                               '0)
                                         (let ((_g19393_
                                                (gx#syntax-split-splice
                                                 _hd1847918518_
                                                 '0)))
                                           (begin
                                             (let ((_g19394_
                                                    (values-count _g19393_)))
                                               (if (not (fx= _g19394_ 2))
                                                   (error "Context expects 2 values"
                                                          _g19394_)))
                                             (let ((_target1848118523_
                                                    (values-ref _g19393_ 0))
                                                   (_tl1848318525_
                                                    (values-ref _g19393_ 1)))
                                               (if (gx#stx-null?
                                                    _tl1848318525_)
                                                   (letrec ((_loop1848418528_
                                                             (lambda (_hd1848218531_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _expr1848818533_
                              _hd1848918535_)
                       (if (gx#stx-pair? _hd1848218531_)
                           (let ((_e1848518538_ (gx#stx-e _hd1848218531_)))
                             (let ((_lp-hd1848618541_ (##car _e1848518538_))
                                   (_lp-tl1848718543_ (##cdr _e1848518538_)))
                               (if (gx#stx-pair? _lp-hd1848618541_)
                                   (let ((_e1849218546_
                                          (gx#stx-e _lp-hd1848618541_)))
                                     (let ((_hd1849318549_
                                            (##car _e1849218546_))
                                           (_tl1849418551_
                                            (##cdr _e1849218546_)))
                                       (if (gx#stx-pair? _tl1849418551_)
                                           (let ((_e1849518554_
                                                  (gx#stx-e _tl1849418551_)))
                                             (let ((_hd1849618557_
                                                    (##car _e1849518554_))
                                                   (_tl1849718559_
                                                    (##cdr _e1849518554_)))
                                               (if (gx#stx-null?
                                                    _tl1849718559_)
                                                   (_loop1848418528_
                                                    _lp-tl1848718543_
                                                    (cons _hd1849618557_
                                                          _expr1848818533_)
                                                    (cons _hd1849318549_
                                                          _hd1848918535_))
                                                   (_g1846918502_
                                                    _g1847018505_))))
                                           (_g1846918502_ _g1847018505_))))
                                   (_g1846918502_ _g1847018505_))))
                           (let ((_expr1849018562_ (reverse _expr1848818533_))
                                 (_hd1849118564_ (reverse _hd1848918535_)))
                             ((lambda (_L18567_ _L18568_ _L18569_ _L18570_)
                                (let ((_g1858918605_
                                       (lambda (_g1859018602_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g1859018602_))))
                                  (let ((_g1858818659_
                                         (lambda (_g1859018608_)
                                           (if (gx#stx-pair/null?
                                                _g1859018608_)
                                               (if (fx>= (gx#stx-length
                                                          _g1859018608_)
                                                         '0)
                                                   (let ((_g19395_
                                                          (gx#syntax-split-splice
                                                           _g1859018608_
                                                           '0)))
                                                     (begin
                                                       (let ((_g19396_
                                                              (values-count
                                                               _g19395_)))
                                                         (if (not (fx= _g19396_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g19396_)))
               (let ((_target1859218610_ (values-ref _g19395_ 0))
                     (_tl1859418612_ (values-ref _g19395_ 1)))
                 (if (gx#stx-null? _tl1859418612_)
                     (letrec ((_loop1859518615_
                               (lambda (_hd1859318618_ _expr1859918620_)
                                 (if (gx#stx-pair? _hd1859318618_)
                                     (let ((_e1859618623_
                                            (gx#syntax-e _hd1859318618_)))
                                       (let ((_lp-hd1859718626_
                                              (##car _e1859618623_))
                                             (_lp-tl1859818628_
                                              (##cdr _e1859618623_)))
                                         (_loop1859518615_
                                          _lp-tl1859818628_
                                          (cons _lp-hd1859718626_
                                                _expr1859918620_))))
                                     (let ((_expr1860018631_
                                            (reverse _expr1859918620_)))
                                       ((lambda (_L18634_)
                                          (let ()
                                            (let ((_body18647_
                                                   (map (gxc#xform-apply-compile-e
                                                         _args18467_)
                                                        _L18567_)))
                                              (gxc#xform-wrap-source
                                               (cons _L18570_
                                                     (cons (begin
                                                             (gx#syntax-check-splice-targets
                                                              _L18634_
                                                              _L18569_)
                                                             (foldr (lambda (_g1864818652_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g1864918654_
                                     _g1865018656_)
                              (cons (cons _g1864918654_
                                          (cons _g1864818652_ '()))
                                    _g1865018656_))
                            '()
                            _L18634_
                            _L18569_))
                   _body18647_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _stx18466_))))
                                        _expr1860018631_))))))
                       (_loop1859518615_ _target1859218610_ '()))
                     (_g1858918605_ _g1859018608_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1858918605_
                                                    _g1859018608_))
                                               (_g1858918605_
                                                _g1859018608_)))))
                                    (_g1858818659_
                                     (map (gxc#xform-apply-compile-e
                                           _args18467_)
                                          (begin
                                            '#!void
                                            (foldr1 (lambda (_g1866118664_
                                                             _g1866218666_)
                                                      (cons _g1866118664_
                                                            _g1866218666_))
                                                    '()
                                                    _L18568_)))))))
                              _tl1848018520_
                              _expr1849018562_
                              _hd1849118564_
                              _hd1847618510_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop1848418528_
                                                      _target1848118523_
                                                      '()
                                                      '()))
                                                   (_g1846918502_
                                                    _g1847018505_)))))
                                         (_g1846918502_ _g1847018505_))
                                     (_g1846918502_ _g1847018505_))))
                             (_g1846918502_ _g1847018505_))))
                     (_g1846918502_ _g1847018505_)))))
          (_g1846818669_ _stx18466_)))))
  (define gxc#xform-operands
    (lambda (_stx18422_ . _args18423_)
      (let ((_g1842518436_
             (lambda (_g1842618433_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1842618433_))))
        (let ((_g1842418463_
               (lambda (_g1842618439_)
                 (if (gx#stx-pair? _g1842618439_)
                     (let ((_e1842918441_ (gx#stx-e _g1842618439_)))
                       (let ((_hd1843018444_ (##car _e1842918441_))
                             (_tl1843118446_ (##cdr _e1842918441_)))
                         ((lambda (_L18449_ _L18450_)
                            (let ((_rands18461_
                                   (map (gxc#xform-apply-compile-e _args18423_)
                                        _L18449_)))
                              (gxc#xform-wrap-source
                               (cons _L18450_ _rands18461_)
                               _stx18422_)))
                          _tl1843118446_
                          _hd1843018444_)))
                     (_g1842518436_ _g1842618439_)))))
          (_g1842418463_ _stx18422_)))))
  (define gxc#xform-call% gxc#xform-operands)
  (define gxc#xform-setq%
    (lambda (_stx18352_ . _args18353_)
      (let ((_g1835518372_
             (lambda (_g1835618369_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1835618369_))))
        (let ((_g1835418419_
               (lambda (_g1835618375_)
                 (if (gx#stx-pair? _g1835618375_)
                     (let ((_e1835918377_ (gx#stx-e _g1835618375_)))
                       (let ((_hd1836018380_ (##car _e1835918377_))
                             (_tl1836118382_ (##cdr _e1835918377_)))
                         (if (gx#stx-pair? _tl1836118382_)
                             (let ((_e1836218385_ (gx#stx-e _tl1836118382_)))
                               (let ((_hd1836318388_ (##car _e1836218385_))
                                     (_tl1836418390_ (##cdr _e1836218385_)))
                                 (if (gx#stx-pair? _tl1836418390_)
                                     (let ((_e1836518393_
                                            (gx#stx-e _tl1836418390_)))
                                       (let ((_hd1836618396_
                                              (##car _e1836518393_))
                                             (_tl1836718398_
                                              (##cdr _e1836518393_)))
                                         (if (gx#stx-null? _tl1836718398_)
                                             ((lambda (_L18401_ _L18402_)
                                                (let ((_expr18417_
                                                       (apply gxc#compile-e
                                                              _L18401_
                                                              _args18353_)))
                                                  (gxc#xform-wrap-source
                                                   (cons '%#set!
                                                         (cons _L18402_
                                                               (cons _expr18417_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _stx18352_)))
                                              _hd1836618396_
                                              _hd1836318388_)
                                             (_g1835518372_ _g1835618375_))))
                                     (_g1835518372_ _g1835618375_))))
                             (_g1835518372_ _g1835618375_))))
                     (_g1835518372_ _g1835618375_)))))
          (_g1835418419_ _stx18352_)))))
  (define gxc#collect-mutators-setq%
    (lambda (_stx18283_)
      (let ((_g1828518302_
             (lambda (_g1828618299_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1828618299_))))
        (let ((_g1828418349_
               (lambda (_g1828618305_)
                 (if (gx#stx-pair? _g1828618305_)
                     (let ((_e1828918307_ (gx#stx-e _g1828618305_)))
                       (let ((_hd1829018310_ (##car _e1828918307_))
                             (_tl1829118312_ (##cdr _e1828918307_)))
                         (if (gx#stx-pair? _tl1829118312_)
                             (let ((_e1829218315_ (gx#stx-e _tl1829118312_)))
                               (let ((_hd1829318318_ (##car _e1829218315_))
                                     (_tl1829418320_ (##cdr _e1829218315_)))
                                 (if (gx#stx-pair? _tl1829418320_)
                                     (let ((_e1829518323_
                                            (gx#stx-e _tl1829418320_)))
                                       (let ((_hd1829618326_
                                              (##car _e1829518323_))
                                             (_tl1829718328_
                                              (##cdr _e1829518323_)))
                                         (if (gx#stx-null? _tl1829718328_)
                                             ((lambda (_L18331_ _L18332_)
                                                (let ((_sym18347_
                                                       (gxc#generate-runtime-binding-id
                                                        _L18332_)))
                                                  (begin
                                                    (gxc#verbose
                                                     '"collect mutator "
                                                     _sym18347_)
                                                    (table-set!
                                                     (gxc#current-compile-mutators)
                                                     _sym18347_
                                                     '#t)
                                                    (gxc#compile-e _L18331_))))
                                              _hd1829618326_
                                              _hd1829318318_)
                                             (_g1828518302_ _g1828618305_))))
                                     (_g1828518302_ _g1828618305_))))
                             (_g1828518302_ _g1828618305_))))
                     (_g1828518302_ _g1828618305_)))))
          (_g1828418349_ _stx18283_)))))
  (define gxc#dispatch-lambda-form?
    (lambda (_form17517_)
      (let ((_g1752217679_
             (lambda (_g1752317676_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1752317676_))))
        (let ((_g1752117686_ (lambda (_g1752317682_) ((lambda () '#f)))))
          (let ((_g1752017826_
                 (lambda (_g1752317689_)
                   (if (gx#stx-pair? _g1752317689_)
                       (let ((_e1763917691_ (gx#stx-e _g1752317689_)))
                         (let ((_hd1764017694_ (##car _e1763917691_))
                               (_tl1764117696_ (##cdr _e1763917691_)))
                           (if (gx#stx-pair? _tl1764117696_)
                               (let ((_e1764217699_ (gx#stx-e _tl1764117696_)))
                                 (let ((_hd1764317702_ (##car _e1764217699_))
                                       (_tl1764417704_ (##cdr _e1764217699_)))
                                   (if (gx#stx-pair? _hd1764317702_)
                                       (let ((_e1764517707_
                                              (gx#stx-e _hd1764317702_)))
                                         (let ((_hd1764617710_
                                                (##car _e1764517707_))
                                               (_tl1764717712_
                                                (##cdr _e1764517707_)))
                                           (if (gx#identifier? _hd1764617710_)
                                               (if (gx#stx-eq?
                                                    '%#call
                                                    _hd1764617710_)
                                                   (if (gx#stx-pair?
                                                        _tl1764717712_)
                                                       (let ((_e1764817715_
                                                              (gx#stx-e
                                                               _tl1764717712_)))
                                                         (let ((_hd1764917718_
                                                                (##car _e1764817715_))
                                                               (_tl1765017720_
                                                                (##cdr _e1764817715_)))
                                                           (if (gx#stx-pair?
                                                                _hd1764917718_)
                                                               (let ((_e1765117723_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd1764917718_)))
                         (let ((_hd1765217726_ (##car _e1765117723_))
                               (_tl1765317728_ (##cdr _e1765117723_)))
                           (if (gx#identifier? _hd1765217726_)
                               (if (gx#stx-eq? '%#ref _hd1765217726_)
                                   (if (gx#stx-pair? _tl1765317728_)
                                       (let ((_e1765417731_
                                              (gx#stx-e _tl1765317728_)))
                                         (let ((_hd1765517734_
                                                (##car _e1765417731_))
                                               (_tl1765617736_
                                                (##cdr _e1765417731_)))
                                           (if (gx#stx-null? _tl1765617736_)
                                               (if (gx#stx-pair?
                                                    _tl1765017720_)
                                                   (let ((_e1765717739_
                                                          (gx#stx-e
                                                           _tl1765017720_)))
                                                     (let ((_hd1765817742_
                                                            (##car _e1765717739_))
                                                           (_tl1765917744_
                                                            (##cdr _e1765717739_)))
                                                       (if (gx#stx-pair?
                                                            _hd1765817742_)
                                                           (let ((_e1766017747_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd1765817742_)))
                     (let ((_hd1766117750_ (##car _e1766017747_))
                           (_tl1766217752_ (##cdr _e1766017747_)))
                       (if (gx#identifier? _hd1766117750_)
                           (if (gx#stx-eq? '%#ref _hd1766117750_)
                               (if (gx#stx-pair? _tl1766217752_)
                                   (let ((_e1766317755_
                                          (gx#stx-e _tl1766217752_)))
                                     (let ((_hd1766417758_
                                            (##car _e1766317755_))
                                           (_tl1766517760_
                                            (##cdr _e1766317755_)))
                                       (if (gx#stx-null? _tl1766517760_)
                                           (if (gx#stx-pair? _tl1765917744_)
                                               (let ((_e1766617763_
                                                      (gx#stx-e
                                                       _tl1765917744_)))
                                                 (let ((_hd1766717766_
                                                        (##car _e1766617763_))
                                                       (_tl1766817768_
                                                        (##cdr _e1766617763_)))
                                                   (if (gx#stx-pair?
                                                        _hd1766717766_)
                                                       (let ((_e1766917771_
                                                              (gx#stx-e
                                                               _hd1766717766_)))
                                                         (let ((_hd1767017774_
                                                                (##car _e1766917771_))
                                                               (_tl1767117776_
                                                                (##cdr _e1766917771_)))
                                                           (if (gx#identifier?
                                                                _hd1767017774_)
                                                               (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '%#ref
                            _hd1767017774_)
                           (if (gx#stx-pair? _tl1767117776_)
                               (let ((_e1767217779_ (gx#stx-e _tl1767117776_)))
                                 (let ((_hd1767317782_ (##car _e1767217779_))
                                       (_tl1767417784_ (##cdr _e1767217779_)))
                                   (if (gx#stx-null? _tl1767417784_)
                                       (if (gx#stx-null? _tl1766817768_)
                                           (if (gx#stx-null? _tl1764417704_)
                                               ((lambda (_L17787_
                                                         _L17788_
                                                         _L17789_
                                                         _L17790_)
                                                  (if (if (gx#identifier?
                                                           _L17790_)
                                                          (if (eq? (gxc#generate-runtime-binding-id
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L17789_)
                           'apply)
                      (if (gx#free-identifier=? _L17790_ _L17787_)
                          (not (gx#free-identifier=? _L17788_ _L17790_))
                          '#f)
                      '#f)
                  '#f)
              '#t
              (_g1752117686_ _g1752317689_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd1767317782_
                                                _hd1766417758_
                                                _hd1765517734_
                                                _hd1764017694_)
                                               (_g1752117686_ _g1752317689_))
                                           (_g1752117686_ _g1752317689_))
                                       (_g1752117686_ _g1752317689_))))
                               (_g1752117686_ _g1752317689_))
                           (_g1752117686_ _g1752317689_))
                       (_g1752117686_ _g1752317689_))))
               (_g1752117686_ _g1752317689_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1752117686_ _g1752317689_))
                                           (_g1752117686_ _g1752317689_))))
                                   (_g1752117686_ _g1752317689_))
                               (_g1752117686_ _g1752317689_))
                           (_g1752117686_ _g1752317689_))))
                   (_g1752117686_ _g1752317689_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1752117686_
                                                    _g1752317689_))
                                               (_g1752117686_ _g1752317689_))))
                                       (_g1752117686_ _g1752317689_))
                                   (_g1752117686_ _g1752317689_))
                               (_g1752117686_ _g1752317689_))))
                       (_g1752117686_ _g1752317689_))))
               (_g1752117686_ _g1752317689_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1752117686_
                                                    _g1752317689_))
                                               (_g1752117686_ _g1752317689_))))
                                       (_g1752117686_ _g1752317689_))))
                               (_g1752117686_ _g1752317689_))))
                       (_g1752117686_ _g1752317689_)))))
            (let ((_g1751918086_
                   (lambda (_g1752317829_)
                     (if (gx#stx-pair? _g1752317829_)
                         (let ((_e1757517831_ (gx#stx-e _g1752317829_)))
                           (let ((_hd1757617834_ (##car _e1757517831_))
                                 (_tl1757717836_ (##cdr _e1757517831_)))
                             (if (gx#stx-pair/null? _hd1757617834_)
                                 (if (fx>= (gx#stx-length _hd1757617834_) '0)
                                     (let ((_g19397_
                                            (gx#syntax-split-splice
                                             _hd1757617834_
                                             '0)))
                                       (begin
                                         (let ((_g19398_
                                                (values-count _g19397_)))
                                           (if (not (fx= _g19398_ 2))
                                               (error "Context expects 2 values"
                                                      _g19398_)))
                                         (let ((_target1757817839_
                                                (values-ref _g19397_ 0))
                                               (_tl1758017841_
                                                (values-ref _g19397_ 1)))
                                           (letrec ((_loop1758117844_
                                                     (lambda (_hd1757917847_
                                                              _arg1758517849_)
                                                       (if (gx#stx-pair?
                                                            _hd1757917847_)
                                                           (let ((_e1758217852_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd1757917847_)))
                     (let ((_lp-hd1758317855_ (##car _e1758217852_))
                           (_lp-tl1758417857_ (##cdr _e1758217852_)))
                       (_loop1758117844_
                        _lp-tl1758417857_
                        (cons _lp-hd1758317855_ _arg1758517849_))))
                   (let ((_arg1758617860_ (reverse _arg1758517849_)))
                     (if (gx#stx-pair? _tl1757717836_)
                         (let ((_e1758717863_ (gx#stx-e _tl1757717836_)))
                           (let ((_hd1758817866_ (##car _e1758717863_))
                                 (_tl1758917868_ (##cdr _e1758717863_)))
                             (if (gx#stx-pair? _hd1758817866_)
                                 (let ((_e1759017871_
                                        (gx#stx-e _hd1758817866_)))
                                   (let ((_hd1759117874_ (##car _e1759017871_))
                                         (_tl1759217876_
                                          (##cdr _e1759017871_)))
                                     (if (gx#identifier? _hd1759117874_)
                                         (if (gx#stx-eq?
                                              '%#call
                                              _hd1759117874_)
                                             (if (gx#stx-pair? _tl1759217876_)
                                                 (let ((_e1759317879_
                                                        (gx#stx-e
                                                         _tl1759217876_)))
                                                   (let ((_hd1759417882_
                                                          (##car _e1759317879_))
                                                         (_tl1759517884_
                                                          (##cdr _e1759317879_)))
                                                     (if (gx#stx-pair?
                                                          _hd1759417882_)
                                                         (let ((_e1759617887_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1759417882_)))
                   (let ((_hd1759717890_ (##car _e1759617887_))
                         (_tl1759817892_ (##cdr _e1759617887_)))
                     (if (gx#identifier? _hd1759717890_)
                         (if (gx#stx-eq? '%#ref _hd1759717890_)
                             (if (gx#stx-pair? _tl1759817892_)
                                 (let ((_e1759917895_
                                        (gx#stx-e _tl1759817892_)))
                                   (let ((_hd1760017898_ (##car _e1759917895_))
                                         (_tl1760117900_
                                          (##cdr _e1759917895_)))
                                     (if (gx#stx-null? _tl1760117900_)
                                         (if (gx#stx-pair? _tl1759517884_)
                                             (let ((_e1760217903_
                                                    (gx#stx-e _tl1759517884_)))
                                               (let ((_hd1760317906_
                                                      (##car _e1760217903_))
                                                     (_tl1760417908_
                                                      (##cdr _e1760217903_)))
                                                 (if (gx#stx-pair?
                                                      _hd1760317906_)
                                                     (let ((_e1760517911_
                                                            (gx#stx-e
                                                             _hd1760317906_)))
                                                       (let ((_hd1760617914_
                                                              (##car _e1760517911_))
                                                             (_tl1760717916_
                                                              (##cdr _e1760517911_)))
                                                         (if (gx#identifier?
                                                              _hd1760617914_)
                                                             (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '%#ref
                          _hd1760617914_)
                         (if (gx#stx-pair? _tl1760717916_)
                             (let ((_e1760817919_ (gx#stx-e _tl1760717916_)))
                               (let ((_hd1760917922_ (##car _e1760817919_))
                                     (_tl1761017924_ (##cdr _e1760817919_)))
                                 (if (gx#stx-null? _tl1761017924_)
                                     (if (gx#stx-pair/null? _tl1760417908_)
                                         (if (fx>= (gx#stx-length
                                                    _tl1760417908_)
                                                   '1)
                                             (let ((_g19399_
                                                    (gx#syntax-split-splice
                                                     _tl1760417908_
                                                     '1)))
                                               (begin
                                                 (let ((_g19400_
                                                        (values-count
                                                         _g19399_)))
                                                   (if (not (fx= _g19400_ 2))
                                                       (error "Context expects 2 values"
                                                              _g19400_)))
                                                 (let ((_target1761117927_
                                                        (values-ref
                                                         _g19399_
                                                         0))
                                                       (_tl1761317929_
                                                        (values-ref
                                                         _g19399_
                                                         1)))
                                                   (if (gx#stx-pair?
                                                        _tl1761317929_)
                                                       (let ((_e1762017932_
                                                              (gx#stx-e
                                                               _tl1761317929_)))
                                                         (let ((_hd1762117935_
                                                                (##car _e1762017932_))
                                                               (_tl1762217937_
                                                                (##cdr _e1762017932_)))
                                                           (if (gx#stx-pair?
                                                                _hd1762117935_)
                                                               (let ((_e1762317940_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd1762117935_)))
                         (let ((_hd1762417943_ (##car _e1762317940_))
                               (_tl1762517945_ (##cdr _e1762317940_)))
                           (if (gx#identifier? _hd1762417943_)
                               (if (gx#stx-eq? '%#ref _hd1762417943_)
                                   (if (gx#stx-pair? _tl1762517945_)
                                       (let ((_e1762617948_
                                              (gx#stx-e _tl1762517945_)))
                                         (let ((_hd1762717951_
                                                (##car _e1762617948_))
                                               (_tl1762817953_
                                                (##cdr _e1762617948_)))
                                           (if (gx#stx-null? _tl1762817953_)
                                               (if (gx#stx-null?
                                                    _tl1762217937_)
                                                   (letrec ((_loop1761417956_
                                                             (lambda (_hd1761217959_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _xarg1761817961_)
                       (if (gx#stx-pair? _hd1761217959_)
                           (let ((_e1761517964_ (gx#stx-e _hd1761217959_)))
                             (let ((_lp-hd1761617967_ (##car _e1761517964_))
                                   (_lp-tl1761717969_ (##cdr _e1761517964_)))
                               (if (gx#stx-pair? _lp-hd1761617967_)
                                   (let ((_e1762917972_
                                          (gx#stx-e _lp-hd1761617967_)))
                                     (let ((_hd1763017975_
                                            (##car _e1762917972_))
                                           (_tl1763117977_
                                            (##cdr _e1762917972_)))
                                       (if (gx#identifier? _hd1763017975_)
                                           (if (gx#stx-eq?
                                                '%#ref
                                                _hd1763017975_)
                                               (if (gx#stx-pair?
                                                    _tl1763117977_)
                                                   (let ((_e1763217980_
                                                          (gx#stx-e
                                                           _tl1763117977_)))
                                                     (let ((_hd1763317983_
                                                            (##car _e1763217980_))
                                                           (_tl1763417985_
                                                            (##cdr _e1763217980_)))
                                                       (if (gx#stx-null?
                                                            _tl1763417985_)
                                                           (_loop1761417956_
                                                            _lp-tl1761717969_
                                                            (cons _hd1763317983_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _xarg1761817961_))
                   (_g1752017826_ _g1752317829_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1752017826_
                                                    _g1752317829_))
                                               (_g1752017826_ _g1752317829_))
                                           (_g1752017826_ _g1752317829_))))
                                   (_g1752017826_ _g1752317829_))))
                           (let ((_xarg1761917988_ (reverse _xarg1761817961_)))
                             (if (gx#stx-null? _tl1758917868_)
                                 ((lambda (_L17991_
                                           _L17992_
                                           _L17993_
                                           _L17994_
                                           _L17995_
                                           _L17996_)
                                    (if (if (gx#identifier-list?
                                             (begin
                                               '#!void
                                               (foldr1 (lambda (_g1803918042_
                                                                _g1804018044_)
                                                         (cons _g1803918042_
                                                               _g1804018044_))
                                                       '()
                                                       _L17996_)))
                                            (if (gx#identifier? _L17995_)
                                                (if (eq? (gxc#generate-runtime-binding-id
                                                          _L17994_)
                                                         'apply)
                                                    (if (fx= (length (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#!void
                               (foldr1 (lambda (_g1804618049_ _g1804718051_)
                                         (cons _g1804618049_ _g1804718051_))
                                       '()
                                       _L17996_)))
                     (length (begin
                               '#!void
                               (foldr1 (lambda (_g1805318056_ _g1805418058_)
                                         (cons _g1805318056_ _g1805418058_))
                                       '()
                                       _L17992_))))
                (if (andmap gx#free-identifier=?
                            (begin
                              '#!void
                              (foldr1 (lambda (_g1806018063_ _g1806118065_)
                                        (cons _g1806018063_ _g1806118065_))
                                      '()
                                      _L17996_))
                            (begin
                              '#!void
                              (foldr1 (lambda (_g1806718070_ _g1806818072_)
                                        (cons _g1806718070_ _g1806818072_))
                                      '()
                                      _L17992_)))
                    (if (gx#free-identifier=? _L17995_ _L17991_)
                        (not (find (lambda (_g1807418076_)
                                     (gx#free-identifier=?
                                      _g1807418076_
                                      _L17993_))
                                   (begin
                                     '#!void
                                     (foldr1 (lambda (_g1807818081_
                                                      _g1807918083_)
                                               (cons _g1807818081_
                                                     _g1807918083_))
                                             (cons _L17995_ '())
                                             _L17996_))))
                        '#f)
                    '#f)
                '#f)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '#f)
                                                '#f)
                                            '#f)
                                        '#t
                                        (_g1752017826_ _g1752317829_)))
                                  _hd1762717951_
                                  _xarg1761917988_
                                  _hd1760917922_
                                  _hd1760017898_
                                  _tl1758017841_
                                  _arg1758617860_)
                                 (_g1752017826_ _g1752317829_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop1761417956_
                                                      _target1761117927_
                                                      '()))
                                                   (_g1752017826_
                                                    _g1752317829_))
                                               (_g1752017826_ _g1752317829_))))
                                       (_g1752017826_ _g1752317829_))
                                   (_g1752017826_ _g1752317829_))
                               (_g1752017826_ _g1752317829_))))
                       (_g1752017826_ _g1752317829_))))
               (_g1752017826_ _g1752317829_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g1752017826_ _g1752317829_))
                                         (_g1752017826_ _g1752317829_))
                                     (_g1752017826_ _g1752317829_))))
                             (_g1752017826_ _g1752317829_))
                         (_g1752017826_ _g1752317829_))
                     (_g1752017826_ _g1752317829_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1752017826_
                                                      _g1752317829_))))
                                             (_g1752017826_ _g1752317829_))
                                         (_g1752017826_ _g1752317829_))))
                                 (_g1752017826_ _g1752317829_))
                             (_g1752017826_ _g1752317829_))
                         (_g1752017826_ _g1752317829_))))
                 (_g1752017826_ _g1752317829_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1752017826_ _g1752317829_))
                                             (_g1752017826_ _g1752317829_))
                                         (_g1752017826_ _g1752317829_))))
                                 (_g1752017826_ _g1752317829_))))
                         (_g1752017826_ _g1752317829_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_loop1758117844_
                                              _target1757817839_
                                              '())))))
                                     (_g1752017826_ _g1752317829_))
                                 (_g1752017826_ _g1752317829_))))
                         (_g1752017826_ _g1752317829_)))))
              (let ((_g1751818280_
                     (lambda (_g1752318089_)
                       (if (gx#stx-pair? _g1752318089_)
                           (let ((_e1752718091_ (gx#stx-e _g1752318089_)))
                             (let ((_hd1752818094_ (##car _e1752718091_))
                                   (_tl1752918096_ (##cdr _e1752718091_)))
                               (if (gx#stx-pair/null? _hd1752818094_)
                                   (if (fx>= (gx#stx-length _hd1752818094_) '0)
                                       (let ((_g19401_
                                              (gx#syntax-split-splice
                                               _hd1752818094_
                                               '0)))
                                         (begin
                                           (let ((_g19402_
                                                  (values-count _g19401_)))
                                             (if (not (fx= _g19402_ 2))
                                                 (error "Context expects 2 values"
                                                        _g19402_)))
                                           (let ((_target1753018099_
                                                  (values-ref _g19401_ 0))
                                                 (_tl1753218101_
                                                  (values-ref _g19401_ 1)))
                                             (if (gx#stx-null? _tl1753218101_)
                                                 (letrec ((_loop1753318104_
                                                           (lambda (_hd1753118107_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _arg1753718109_)
                     (if (gx#stx-pair? _hd1753118107_)
                         (let ((_e1753418112_ (gx#stx-e _hd1753118107_)))
                           (let ((_lp-hd1753518115_ (##car _e1753418112_))
                                 (_lp-tl1753618117_ (##cdr _e1753418112_)))
                             (_loop1753318104_
                              _lp-tl1753618117_
                              (cons _lp-hd1753518115_ _arg1753718109_))))
                         (let ((_arg1753818120_ (reverse _arg1753718109_)))
                           (if (gx#stx-pair? _tl1752918096_)
                               (let ((_e1753918123_ (gx#stx-e _tl1752918096_)))
                                 (let ((_hd1754018126_ (##car _e1753918123_))
                                       (_tl1754118128_ (##cdr _e1753918123_)))
                                   (if (gx#stx-pair? _hd1754018126_)
                                       (let ((_e1754218131_
                                              (gx#stx-e _hd1754018126_)))
                                         (let ((_hd1754318134_
                                                (##car _e1754218131_))
                                               (_tl1754418136_
                                                (##cdr _e1754218131_)))
                                           (if (gx#identifier? _hd1754318134_)
                                               (if (gx#stx-eq?
                                                    '%#call
                                                    _hd1754318134_)
                                                   (if (gx#stx-pair?
                                                        _tl1754418136_)
                                                       (let ((_e1754518139_
                                                              (gx#stx-e
                                                               _tl1754418136_)))
                                                         (let ((_hd1754618142_
                                                                (##car _e1754518139_))
                                                               (_tl1754718144_
                                                                (##cdr _e1754518139_)))
                                                           (if (gx#stx-pair?
                                                                _hd1754618142_)
                                                               (let ((_e1754818147_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd1754618142_)))
                         (let ((_hd1754918150_ (##car _e1754818147_))
                               (_tl1755018152_ (##cdr _e1754818147_)))
                           (if (gx#identifier? _hd1754918150_)
                               (if (gx#stx-eq? '%#ref _hd1754918150_)
                                   (if (gx#stx-pair? _tl1755018152_)
                                       (let ((_e1755118155_
                                              (gx#stx-e _tl1755018152_)))
                                         (let ((_hd1755218158_
                                                (##car _e1755118155_))
                                               (_tl1755318160_
                                                (##cdr _e1755118155_)))
                                           (if (gx#stx-null? _tl1755318160_)
                                               (if (gx#stx-pair/null?
                                                    _tl1754718144_)
                                                   (if (fx>= (gx#stx-length
                                                              _tl1754718144_)
                                                             '0)
                                                       (let ((_g19403_
                                                              (gx#syntax-split-splice
                                                               _tl1754718144_
                                                               '0)))
                                                         (begin
                                                           (let ((_g19404_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (values-count _g19403_)))
                     (if (not (fx= _g19404_ 2))
                         (error "Context expects 2 values" _g19404_)))
                   (let ((_target1755418163_ (values-ref _g19403_ 0))
                         (_tl1755618165_ (values-ref _g19403_ 1)))
                     (if (gx#stx-null? _tl1755618165_)
                         (letrec ((_loop1755718168_
                                   (lambda (_hd1755518171_ _xarg1756118173_)
                                     (if (gx#stx-pair? _hd1755518171_)
                                         (let ((_e1755818176_
                                                (gx#stx-e _hd1755518171_)))
                                           (let ((_lp-hd1755918179_
                                                  (##car _e1755818176_))
                                                 (_lp-tl1756018181_
                                                  (##cdr _e1755818176_)))
                                             (if (gx#stx-pair?
                                                  _lp-hd1755918179_)
                                                 (let ((_e1756318184_
                                                        (gx#stx-e
                                                         _lp-hd1755918179_)))
                                                   (let ((_hd1756418187_
                                                          (##car _e1756318184_))
                                                         (_tl1756518189_
                                                          (##cdr _e1756318184_)))
                                                     (if (gx#identifier?
                                                          _hd1756418187_)
                                                         (if (gx#stx-eq?
                                                              '%#ref
                                                              _hd1756418187_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1756518189_)
                         (let ((_e1756618192_ (gx#stx-e _tl1756518189_)))
                           (let ((_hd1756718195_ (##car _e1756618192_))
                                 (_tl1756818197_ (##cdr _e1756618192_)))
                             (if (gx#stx-null? _tl1756818197_)
                                 (_loop1755718168_
                                  _lp-tl1756018181_
                                  (cons _hd1756718195_ _xarg1756118173_))
                                 (_g1751918086_ _g1752318089_))))
                         (_g1751918086_ _g1752318089_))
                     (_g1751918086_ _g1752318089_))
                 (_g1751918086_ _g1752318089_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1751918086_
                                                  _g1752318089_))))
                                         (let ((_xarg1756218200_
                                                (reverse _xarg1756118173_)))
                                           (if (gx#stx-null? _tl1754118128_)
                                               ((lambda (_L18203_
                                                         _L18204_
                                                         _L18205_)
                                                  (if (if (gx#identifier-list?
                                                           (begin
                                                             '#!void
                                                             (foldr1 (lambda (_g1823318236_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _g1823418238_)
                               (cons _g1823318236_ _g1823418238_))
                             '()
                             _L18205_)))
                  (if (fx= (length (begin
                                     '#!void
                                     (foldr1 (lambda (_g1824018243_
                                                      _g1824118245_)
                                               (cons _g1824018243_
                                                     _g1824118245_))
                                             '()
                                             _L18205_)))
                           (length (begin
                                     '#!void
                                     (foldr1 (lambda (_g1824718250_
                                                      _g1824818252_)
                                               (cons _g1824718250_
                                                     _g1824818252_))
                                             '()
                                             _L18203_))))
                      (if (andmap gx#free-identifier=?
                                  (begin
                                    '#!void
                                    (foldr1 (lambda (_g1825418257_
                                                     _g1825518259_)
                                              (cons _g1825418257_
                                                    _g1825518259_))
                                            '()
                                            _L18205_))
                                  (begin
                                    '#!void
                                    (foldr1 (lambda (_g1826118264_
                                                     _g1826218266_)
                                              (cons _g1826118264_
                                                    _g1826218266_))
                                            '()
                                            _L18203_)))
                          (not (find (lambda (_g1826818270_)
                                       (gx#free-identifier=?
                                        _g1826818270_
                                        _L18204_))
                                     (begin
                                       '#!void
                                       (foldr1 (lambda (_g1827218275_
                                                        _g1827318277_)
                                                 (cons _g1827218275_
                                                       _g1827318277_))
                                               '()
                                               _L18205_))))
                          '#f)
                      '#f)
                  '#f)
              '#t
              (_g1751918086_ _g1752318089_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _xarg1756218200_
                                                _hd1755218158_
                                                _arg1753818120_)
                                               (_g1751918086_
                                                _g1752318089_)))))))
                           (_loop1755718168_ _target1755418163_ '()))
                         (_g1751918086_ _g1752318089_)))))
               (_g1751918086_ _g1752318089_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1751918086_
                                                    _g1752318089_))
                                               (_g1751918086_ _g1752318089_))))
                                       (_g1751918086_ _g1752318089_))
                                   (_g1751918086_ _g1752318089_))
                               (_g1751918086_ _g1752318089_))))
                       (_g1751918086_ _g1752318089_))))
               (_g1751918086_ _g1752318089_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1751918086_
                                                    _g1752318089_))
                                               (_g1751918086_ _g1752318089_))))
                                       (_g1751918086_ _g1752318089_))))
                               (_g1751918086_ _g1752318089_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_loop1753318104_
                                                    _target1753018099_
                                                    '()))
                                                 (_g1751918086_
                                                  _g1752318089_)))))
                                       (_g1751918086_ _g1752318089_))
                                   (_g1751918086_ _g1752318089_))))
                           (_g1751918086_ _g1752318089_)))))
                (_g1751818280_ _form17517_))))))))
  (define gxc#dispatch-lambda-form-delegate
    (lambda (_form16985_)
      (let ((_g1698917113_
             (lambda (_g1699017110_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1699017110_))))
        (let ((_g1698817230_
               (lambda (_g1699017116_)
                 (if (gx#stx-pair? _g1699017116_)
                     (let ((_e1707917118_ (gx#stx-e _g1699017116_)))
                       (let ((_hd1708017121_ (##car _e1707917118_))
                             (_tl1708117123_ (##cdr _e1707917118_)))
                         (if (gx#stx-pair? _tl1708117123_)
                             (let ((_e1708217126_ (gx#stx-e _tl1708117123_)))
                               (let ((_hd1708317129_ (##car _e1708217126_))
                                     (_tl1708417131_ (##cdr _e1708217126_)))
                                 (if (gx#stx-pair? _hd1708317129_)
                                     (let ((_e1708517134_
                                            (gx#stx-e _hd1708317129_)))
                                       (let ((_hd1708617137_
                                              (##car _e1708517134_))
                                             (_tl1708717139_
                                              (##cdr _e1708517134_)))
                                         (if (gx#identifier? _hd1708617137_)
                                             (if (gx#stx-eq?
                                                  '%#call
                                                  _hd1708617137_)
                                                 (if (gx#stx-pair?
                                                      _tl1708717139_)
                                                     (let ((_e1708817142_
                                                            (gx#stx-e
                                                             _tl1708717139_)))
                                                       (let ((_hd1708917145_
                                                              (##car _e1708817142_))
                                                             (_tl1709017147_
                                                              (##cdr _e1708817142_)))
                                                         (if (gx#stx-pair?
                                                              _hd1708917145_)
                                                             (let ((_e1709117150_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _hd1708917145_)))
                       (let ((_hd1709217153_ (##car _e1709117150_))
                             (_tl1709317155_ (##cdr _e1709117150_)))
                         (if (gx#identifier? _hd1709217153_)
                             (if (gx#stx-eq? '%#ref _hd1709217153_)
                                 (if (gx#stx-pair? _tl1709317155_)
                                     (let ((_e1709417158_
                                            (gx#stx-e _tl1709317155_)))
                                       (let ((_hd1709517161_
                                              (##car _e1709417158_))
                                             (_tl1709617163_
                                              (##cdr _e1709417158_)))
                                         (if (gx#stx-null? _tl1709617163_)
                                             (if (gx#stx-pair? _tl1709017147_)
                                                 (let ((_e1709717166_
                                                        (gx#stx-e
                                                         _tl1709017147_)))
                                                   (let ((_hd1709817169_
                                                          (##car _e1709717166_))
                                                         (_tl1709917171_
                                                          (##cdr _e1709717166_)))
                                                     (if (gx#stx-pair?
                                                          _hd1709817169_)
                                                         (let ((_e1710017174_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1709817169_)))
                   (let ((_hd1710117177_ (##car _e1710017174_))
                         (_tl1710217179_ (##cdr _e1710017174_)))
                     (if (gx#identifier? _hd1710117177_)
                         (if (gx#stx-eq? '%#ref _hd1710117177_)
                             (if (gx#stx-pair? _tl1710217179_)
                                 (let ((_e1710317182_
                                        (gx#stx-e _tl1710217179_)))
                                   (let ((_hd1710417185_ (##car _e1710317182_))
                                         (_tl1710517187_
                                          (##cdr _e1710317182_)))
                                     (if (gx#stx-null? _tl1710517187_)
                                         (if (gx#stx-pair? _tl1709917171_)
                                             (let ((_e1710617190_
                                                    (gx#stx-e _tl1709917171_)))
                                               (let ((_hd1710717193_
                                                      (##car _e1710617190_))
                                                     (_tl1710817195_
                                                      (##cdr _e1710617190_)))
                                                 (if (gx#stx-null?
                                                      _tl1710817195_)
                                                     (if (gx#stx-null?
                                                          _tl1708417131_)
                                                         ((lambda (_L17198_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L17199_
                           _L17200_)
                    (gxc#generate-runtime-binding-id _L17198_))
                  _hd1710417185_
                  _hd1709517161_
                  _hd1708017121_)
                 (_g1698917113_ _g1699017116_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1698917113_
                                                      _g1699017116_))))
                                             (_g1698917113_ _g1699017116_))
                                         (_g1698917113_ _g1699017116_))))
                                 (_g1698917113_ _g1699017116_))
                             (_g1698917113_ _g1699017116_))
                         (_g1698917113_ _g1699017116_))))
                 (_g1698917113_ _g1699017116_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1698917113_ _g1699017116_))
                                             (_g1698917113_ _g1699017116_))))
                                     (_g1698917113_ _g1699017116_))
                                 (_g1698917113_ _g1699017116_))
                             (_g1698917113_ _g1699017116_))))
                     (_g1698917113_ _g1699017116_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1698917113_
                                                      _g1699017116_))
                                                 (_g1698917113_ _g1699017116_))
                                             (_g1698917113_ _g1699017116_))))
                                     (_g1698917113_ _g1699017116_))))
                             (_g1698917113_ _g1699017116_))))
                     (_g1698917113_ _g1699017116_)))))
          (let ((_g1698717366_
                 (lambda (_g1699017233_)
                   (if (gx#stx-pair? _g1699017233_)
                       (let ((_e1704017235_ (gx#stx-e _g1699017233_)))
                         (let ((_hd1704117238_ (##car _e1704017235_))
                               (_tl1704217240_ (##cdr _e1704017235_)))
                           (if (gx#stx-pair/null? _hd1704117238_)
                               (if (fx>= (gx#stx-length _hd1704117238_) '0)
                                   (let ((_g19405_
                                          (gx#syntax-split-splice
                                           _hd1704117238_
                                           '0)))
                                     (begin
                                       (let ((_g19406_
                                              (values-count _g19405_)))
                                         (if (not (fx= _g19406_ 2))
                                             (error "Context expects 2 values"
                                                    _g19406_)))
                                       (let ((_target1704317243_
                                              (values-ref _g19405_ 0))
                                             (_tl1704517245_
                                              (values-ref _g19405_ 1)))
                                         (letrec ((_loop1704617248_
                                                   (lambda (_hd1704417251_
                                                            _arg1705017253_)
                                                     (if (gx#stx-pair?
                                                          _hd1704417251_)
                                                         (let ((_e1704717256_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1704417251_)))
                   (let ((_lp-hd1704817259_ (##car _e1704717256_))
                         (_lp-tl1704917261_ (##cdr _e1704717256_)))
                     (_loop1704617248_
                      _lp-tl1704917261_
                      (cons _lp-hd1704817259_ _arg1705017253_))))
                 (let ((_arg1705117264_ (reverse _arg1705017253_)))
                   (if (gx#stx-pair? _tl1704217240_)
                       (let ((_e1705217267_ (gx#stx-e _tl1704217240_)))
                         (let ((_hd1705317270_ (##car _e1705217267_))
                               (_tl1705417272_ (##cdr _e1705217267_)))
                           (if (gx#stx-pair? _hd1705317270_)
                               (let ((_e1705517275_ (gx#stx-e _hd1705317270_)))
                                 (let ((_hd1705617278_ (##car _e1705517275_))
                                       (_tl1705717280_ (##cdr _e1705517275_)))
                                   (if (gx#identifier? _hd1705617278_)
                                       (if (gx#stx-eq? '%#call _hd1705617278_)
                                           (if (gx#stx-pair? _tl1705717280_)
                                               (let ((_e1705817283_
                                                      (gx#stx-e
                                                       _tl1705717280_)))
                                                 (let ((_hd1705917286_
                                                        (##car _e1705817283_))
                                                       (_tl1706017288_
                                                        (##cdr _e1705817283_)))
                                                   (if (gx#stx-pair?
                                                        _hd1705917286_)
                                                       (let ((_e1706117291_
                                                              (gx#stx-e
                                                               _hd1705917286_)))
                                                         (let ((_hd1706217294_
                                                                (##car _e1706117291_))
                                                               (_tl1706317296_
                                                                (##cdr _e1706117291_)))
                                                           (if (gx#identifier?
                                                                _hd1706217294_)
                                                               (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '%#ref
                            _hd1706217294_)
                           (if (gx#stx-pair? _tl1706317296_)
                               (let ((_e1706417299_ (gx#stx-e _tl1706317296_)))
                                 (let ((_hd1706517302_ (##car _e1706417299_))
                                       (_tl1706617304_ (##cdr _e1706417299_)))
                                   (if (gx#stx-null? _tl1706617304_)
                                       (if (gx#stx-pair? _tl1706017288_)
                                           (let ((_e1706717307_
                                                  (gx#stx-e _tl1706017288_)))
                                             (let ((_hd1706817310_
                                                    (##car _e1706717307_))
                                                   (_tl1706917312_
                                                    (##cdr _e1706717307_)))
                                               (if (gx#stx-pair?
                                                    _hd1706817310_)
                                                   (let ((_e1707017315_
                                                          (gx#stx-e
                                                           _hd1706817310_)))
                                                     (let ((_hd1707117318_
                                                            (##car _e1707017315_))
                                                           (_tl1707217320_
                                                            (##cdr _e1707017315_)))
                                                       (if (gx#identifier?
                                                            _hd1707117318_)
                                                           (if (gx#stx-eq?
                                                                '%#ref
                                                                _hd1707117318_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl1707217320_)
                           (let ((_e1707317323_ (gx#stx-e _tl1707217320_)))
                             (let ((_hd1707417326_ (##car _e1707317323_))
                                   (_tl1707517328_ (##cdr _e1707317323_)))
                               (if (gx#stx-null? _tl1707517328_)
                                   (if (gx#stx-null? _tl1705417272_)
                                       ((lambda (_L17331_
                                                 _L17332_
                                                 _L17333_
                                                 _L17334_)
                                          (gxc#generate-runtime-binding-id
                                           _L17331_))
                                        _hd1707417326_
                                        _hd1706517302_
                                        _tl1704517245_
                                        _arg1705117264_)
                                       (_g1698817230_ _g1699017233_))
                                   (_g1698817230_ _g1699017233_))))
                           (_g1698817230_ _g1699017233_))
                       (_g1698817230_ _g1699017233_))
                   (_g1698817230_ _g1699017233_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1698817230_
                                                    _g1699017233_))))
                                           (_g1698817230_ _g1699017233_))
                                       (_g1698817230_ _g1699017233_))))
                               (_g1698817230_ _g1699017233_))
                           (_g1698817230_ _g1699017233_))
                       (_g1698817230_ _g1699017233_))))
               (_g1698817230_ _g1699017233_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1698817230_ _g1699017233_))
                                           (_g1698817230_ _g1699017233_))
                                       (_g1698817230_ _g1699017233_))))
                               (_g1698817230_ _g1699017233_))))
                       (_g1698817230_ _g1699017233_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_loop1704617248_
                                            _target1704317243_
                                            '())))))
                                   (_g1698817230_ _g1699017233_))
                               (_g1698817230_ _g1699017233_))))
                       (_g1698817230_ _g1699017233_)))))
            (let ((_g1698617514_
                   (lambda (_g1699017369_)
                     (if (gx#stx-pair? _g1699017369_)
                         (let ((_e1699417371_ (gx#stx-e _g1699017369_)))
                           (let ((_hd1699517374_ (##car _e1699417371_))
                                 (_tl1699617376_ (##cdr _e1699417371_)))
                             (if (gx#stx-pair/null? _hd1699517374_)
                                 (if (fx>= (gx#stx-length _hd1699517374_) '0)
                                     (let ((_g19407_
                                            (gx#syntax-split-splice
                                             _hd1699517374_
                                             '0)))
                                       (begin
                                         (let ((_g19408_
                                                (values-count _g19407_)))
                                           (if (not (fx= _g19408_ 2))
                                               (error "Context expects 2 values"
                                                      _g19408_)))
                                         (let ((_target1699717379_
                                                (values-ref _g19407_ 0))
                                               (_tl1699917381_
                                                (values-ref _g19407_ 1)))
                                           (if (gx#stx-null? _tl1699917381_)
                                               (letrec ((_loop1700017384_
                                                         (lambda (_hd1699817387_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _arg1700417389_)
                   (if (gx#stx-pair? _hd1699817387_)
                       (let ((_e1700117392_ (gx#stx-e _hd1699817387_)))
                         (let ((_lp-hd1700217395_ (##car _e1700117392_))
                               (_lp-tl1700317397_ (##cdr _e1700117392_)))
                           (_loop1700017384_
                            _lp-tl1700317397_
                            (cons _lp-hd1700217395_ _arg1700417389_))))
                       (let ((_arg1700517400_ (reverse _arg1700417389_)))
                         (if (gx#stx-pair? _tl1699617376_)
                             (let ((_e1700617403_ (gx#stx-e _tl1699617376_)))
                               (let ((_hd1700717406_ (##car _e1700617403_))
                                     (_tl1700817408_ (##cdr _e1700617403_)))
                                 (if (gx#stx-pair? _hd1700717406_)
                                     (let ((_e1700917411_
                                            (gx#stx-e _hd1700717406_)))
                                       (let ((_hd1701017414_
                                              (##car _e1700917411_))
                                             (_tl1701117416_
                                              (##cdr _e1700917411_)))
                                         (if (gx#identifier? _hd1701017414_)
                                             (if (gx#stx-eq?
                                                  '%#call
                                                  _hd1701017414_)
                                                 (if (gx#stx-pair?
                                                      _tl1701117416_)
                                                     (let ((_e1701217419_
                                                            (gx#stx-e
                                                             _tl1701117416_)))
                                                       (let ((_hd1701317422_
                                                              (##car _e1701217419_))
                                                             (_tl1701417424_
                                                              (##cdr _e1701217419_)))
                                                         (if (gx#stx-pair?
                                                              _hd1701317422_)
                                                             (let ((_e1701517427_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _hd1701317422_)))
                       (let ((_hd1701617430_ (##car _e1701517427_))
                             (_tl1701717432_ (##cdr _e1701517427_)))
                         (if (gx#identifier? _hd1701617430_)
                             (if (gx#stx-eq? '%#ref _hd1701617430_)
                                 (if (gx#stx-pair? _tl1701717432_)
                                     (let ((_e1701817435_
                                            (gx#stx-e _tl1701717432_)))
                                       (let ((_hd1701917438_
                                              (##car _e1701817435_))
                                             (_tl1702017440_
                                              (##cdr _e1701817435_)))
                                         (if (gx#stx-null? _tl1702017440_)
                                             (if (gx#stx-pair/null?
                                                  _tl1701417424_)
                                                 (if (fx>= (gx#stx-length
                                                            _tl1701417424_)
                                                           '0)
                                                     (let ((_g19409_
                                                            (gx#syntax-split-splice
                                                             _tl1701417424_
                                                             '0)))
                                                       (begin
                                                         (let ((_g19410_
                                                                (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g19409_)))
                   (if (not (fx= _g19410_ 2))
                       (error "Context expects 2 values" _g19410_)))
                 (let ((_target1702117443_ (values-ref _g19409_ 0))
                       (_tl1702317445_ (values-ref _g19409_ 1)))
                   (if (gx#stx-null? _tl1702317445_)
                       (letrec ((_loop1702417448_
                                 (lambda (_hd1702217451_ _xarg1702817453_)
                                   (if (gx#stx-pair? _hd1702217451_)
                                       (let ((_e1702517456_
                                              (gx#stx-e _hd1702217451_)))
                                         (let ((_lp-hd1702617459_
                                                (##car _e1702517456_))
                                               (_lp-tl1702717461_
                                                (##cdr _e1702517456_)))
                                           (if (gx#stx-pair? _lp-hd1702617459_)
                                               (let ((_e1703017464_
                                                      (gx#stx-e
                                                       _lp-hd1702617459_)))
                                                 (let ((_hd1703117467_
                                                        (##car _e1703017464_))
                                                       (_tl1703217469_
                                                        (##cdr _e1703017464_)))
                                                   (if (gx#identifier?
                                                        _hd1703117467_)
                                                       (if (gx#stx-eq?
                                                            '%#ref
                                                            _hd1703117467_)
                                                           (if (gx#stx-pair?
                                                                _tl1703217469_)
                                                               (let ((_e1703317472_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl1703217469_)))
                         (let ((_hd1703417475_ (##car _e1703317472_))
                               (_tl1703517477_ (##cdr _e1703317472_)))
                           (if (gx#stx-null? _tl1703517477_)
                               (_loop1702417448_
                                _lp-tl1702717461_
                                (cons _hd1703417475_ _xarg1702817453_))
                               (_g1698717366_ _g1699017369_))))
                       (_g1698717366_ _g1699017369_))
                   (_g1698717366_ _g1699017369_))
               (_g1698717366_ _g1699017369_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1698717366_ _g1699017369_))))
                                       (let ((_xarg1702917480_
                                              (reverse _xarg1702817453_)))
                                         (if (gx#stx-null? _tl1700817408_)
                                             ((lambda (_L17483_
                                                       _L17484_
                                                       _L17485_)
                                                (gxc#generate-runtime-binding-id
                                                 _L17484_))
                                              _xarg1702917480_
                                              _hd1701917438_
                                              _arg1700517400_)
                                             (_g1698717366_
                                              _g1699017369_)))))))
                         (_loop1702417448_ _target1702117443_ '()))
                       (_g1698717366_ _g1699017369_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1698717366_
                                                      _g1699017369_))
                                                 (_g1698717366_ _g1699017369_))
                                             (_g1698717366_ _g1699017369_))))
                                     (_g1698717366_ _g1699017369_))
                                 (_g1698717366_ _g1699017369_))
                             (_g1698717366_ _g1699017369_))))
                     (_g1698717366_ _g1699017369_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1698717366_
                                                      _g1699017369_))
                                                 (_g1698717366_ _g1699017369_))
                                             (_g1698717366_ _g1699017369_))))
                                     (_g1698717366_ _g1699017369_))))
                             (_g1698717366_ _g1699017369_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop1700017384_
                                                  _target1699717379_
                                                  '()))
                                               (_g1698717366_
                                                _g1699017369_)))))
                                     (_g1698717366_ _g1699017369_))
                                 (_g1698717366_ _g1699017369_))))
                         (_g1698717366_ _g1699017369_)))))
              (_g1698617514_ _form16985_)))))))
  (define gxc#lambda-form-arity
    (lambda (_form16789_)
      (let ((_g1679116805_
             (lambda (_g1679216802_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1679216802_))))
        (let ((_g1679016982_
               (lambda (_g1679216808_)
                 (if (gx#stx-pair? _g1679216808_)
                     (let ((_e1679516810_ (gx#stx-e _g1679216808_)))
                       (let ((_hd1679616813_ (##car _e1679516810_))
                             (_tl1679716815_ (##cdr _e1679516810_)))
                         (if (gx#stx-pair? _tl1679716815_)
                             (let ((_e1679816818_ (gx#stx-e _tl1679716815_)))
                               (let ((_hd1679916821_ (##car _e1679816818_))
                                     (_tl1680016823_ (##cdr _e1679816818_)))
                                 (if (gx#stx-null? _tl1680016823_)
                                     ((lambda (_L16826_ _L16827_)
                                        (let ((_g1684216870_
                                               (lambda (_g1684316867_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g1684316867_))))
                                          (let ((_g1684116883_
                                                 (lambda (_g1684316873_)
                                                   ((lambda (_L16875_)
                                                      (cons '0 '()))
                                                    _g1684316873_))))
                                            (let ((_g1684016932_
                                                   (lambda (_g1684316886_)
                                                     (if (gx#stx-pair/null?
                                                          _g1684316886_)
                                                         (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g1684316886_)
                           '0)
                     (let ((_g19411_
                            (gx#syntax-split-splice _g1684316886_ '0)))
                       (begin
                         (let ((_g19412_ (values-count _g19411_)))
                           (if (not (fx= _g19412_ 2))
                               (error "Context expects 2 values" _g19412_)))
                         (let ((_target1685616888_ (values-ref _g19411_ 0))
                               (_tl1685816890_ (values-ref _g19411_ 1)))
                           (letrec ((_loop1685916893_
                                     (lambda (_hd1685716896_ _arg1686316898_)
                                       (if (gx#stx-pair? _hd1685716896_)
                                           (let ((_e1686016901_
                                                  (gx#stx-e _hd1685716896_)))
                                             (let ((_lp-hd1686116904_
                                                    (##car _e1686016901_))
                                                   (_lp-tl1686216906_
                                                    (##cdr _e1686016901_)))
                                               (_loop1685916893_
                                                _lp-tl1686216906_
                                                (cons _lp-hd1686116904_
                                                      _arg1686316898_))))
                                           (let ((_arg1686416909_
                                                  (reverse _arg1686316898_)))
                                             ((lambda (_L16912_ _L16913_)
                                                (cons (length (begin
                                                                '#!void
                                                                (foldr1 (lambda (_g1692416927_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                         _g1692516929_)
                                  (cons _g1692416927_ _g1692516929_))
                                '()
                                _L16913_)))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _tl1685816890_
                                              _arg1686416909_))))))
                             (_loop1685916893_ _target1685616888_ '())))))
                     (_g1684116883_ _g1684316886_))
                 (_g1684116883_ _g1684316886_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_g1683916979_
                                                     (lambda (_g1684316935_)
                                                       (if (gx#stx-pair/null?
                                                            _g1684316935_)
                                                           (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g1684316935_)
                             '0)
                       (let ((_g19413_
                              (gx#syntax-split-splice _g1684316935_ '0)))
                         (begin
                           (let ((_g19414_ (values-count _g19413_)))
                             (if (not (fx= _g19414_ 2))
                                 (error "Context expects 2 values" _g19414_)))
                           (let ((_target1684516937_ (values-ref _g19413_ 0))
                                 (_tl1684716939_ (values-ref _g19413_ 1)))
                             (if (gx#stx-null? _tl1684716939_)
                                 (letrec ((_loop1684816942_
                                           (lambda (_hd1684616945_
                                                    _arg1685216947_)
                                             (if (gx#stx-pair? _hd1684616945_)
                                                 (let ((_e1684916950_
                                                        (gx#stx-e
                                                         _hd1684616945_)))
                                                   (let ((_lp-hd1685016953_
                                                          (##car _e1684916950_))
                                                         (_lp-tl1685116955_
                                                          (##cdr _e1684916950_)))
                                                     (_loop1684816942_
                                                      _lp-tl1685116955_
                                                      (cons _lp-hd1685016953_
                                                            _arg1685216947_))))
                                                 (let ((_arg1685316958_
                                                        (reverse _arg1685216947_)))
                                                   ((lambda (_L16961_)
                                                      (length (begin
                                                                '#!void
                                                                (foldr1 (lambda (_g1697116974_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                         _g1697216976_)
                                  (cons _g1697116974_ _g1697216976_))
                                '()
                                _L16961_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _arg1685316958_))))))
                                   (_loop1684816942_ _target1684516937_ '()))
                                 (_g1684016932_ _g1684316935_)))))
                       (_g1684016932_ _g1684316935_))
                   (_g1684016932_ _g1684316935_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1683916979_ _L16827_))))))
                                      _hd1679916821_
                                      _hd1679616813_)
                                     (_g1679116805_ _g1679216808_))))
                             (_g1679116805_ _g1679216808_))))
                     (_g1679116805_ _g1679216808_)))))
          (_g1679016982_ _form16789_)))))
  (define gxc#lambda-expr?
    (lambda (_expr16742_)
      (let ((_g1674516755_
             (lambda (_g1674616752_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1674616752_))))
        (let ((_g1674416762_ (lambda (_g1674616758_) ((lambda () '#f)))))
          (let ((_g1674316786_
                 (lambda (_g1674616765_)
                   (if (gx#stx-pair? _g1674616765_)
                       (let ((_e1674816767_ (gx#stx-e _g1674616765_)))
                         (let ((_hd1674916770_ (##car _e1674816767_))
                               (_tl1675016772_ (##cdr _e1674816767_)))
                           (if (gx#identifier? _hd1674916770_)
                               (if (gx#stx-eq? '%#lambda _hd1674916770_)
                                   ((lambda (_L16775_) '#t) _tl1675016772_)
                                   (_g1674416762_ _g1674616765_))
                               (_g1674416762_ _g1674616765_))))
                       (_g1674416762_ _g1674616765_)))))
            (_g1674316786_ _expr16742_))))))
  (define gxc#case-lambda-expr?
    (lambda (_expr16695_)
      (let ((_g1669816708_
             (lambda (_g1669916705_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1669916705_))))
        (let ((_g1669716715_ (lambda (_g1669916711_) ((lambda () '#f)))))
          (let ((_g1669616739_
                 (lambda (_g1669916718_)
                   (if (gx#stx-pair? _g1669916718_)
                       (let ((_e1670116720_ (gx#stx-e _g1669916718_)))
                         (let ((_hd1670216723_ (##car _e1670116720_))
                               (_tl1670316725_ (##cdr _e1670116720_)))
                           (if (gx#identifier? _hd1670216723_)
                               (if (gx#stx-eq? '%#case-lambda _hd1670216723_)
                                   ((lambda (_L16728_) '#t) _tl1670316725_)
                                   (_g1669716715_ _g1669916718_))
                               (_g1669716715_ _g1669916718_))))
                       (_g1669716715_ _g1669916718_)))))
            (_g1669616739_ _expr16695_))))))
  (define gxc#opt-lambda-expr?
    (lambda (_expr16564_)
      (let ((_g1656716597_
             (lambda (_g1656816594_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1656816594_))))
        (let ((_g1656616604_ (lambda (_g1656816600_) ((lambda () '#f)))))
          (let ((_g1656516692_
                 (lambda (_g1656816607_)
                   (if (gx#stx-pair? _g1656816607_)
                       (let ((_e1657216609_ (gx#stx-e _g1656816607_)))
                         (let ((_hd1657316612_ (##car _e1657216609_))
                               (_tl1657416614_ (##cdr _e1657216609_)))
                           (if (gx#identifier? _hd1657316612_)
                               (if (gx#stx-eq? '%#let-values _hd1657316612_)
                                   (if (gx#stx-pair? _tl1657416614_)
                                       (let ((_e1657516617_
                                              (gx#stx-e _tl1657416614_)))
                                         (let ((_hd1657616620_
                                                (##car _e1657516617_))
                                               (_tl1657716622_
                                                (##cdr _e1657516617_)))
                                           (if (gx#stx-pair? _hd1657616620_)
                                               (let ((_e1657816625_
                                                      (gx#stx-e
                                                       _hd1657616620_)))
                                                 (let ((_hd1657916628_
                                                        (##car _e1657816625_))
                                                       (_tl1658016630_
                                                        (##cdr _e1657816625_)))
                                                   (if (gx#stx-pair?
                                                        _hd1657916628_)
                                                       (let ((_e1658116633_
                                                              (gx#stx-e
                                                               _hd1657916628_)))
                                                         (let ((_hd1658216636_
                                                                (##car _e1658116633_))
                                                               (_tl1658316638_
                                                                (##cdr _e1658116633_)))
                                                           (if (gx#stx-pair?
                                                                _hd1658216636_)
                                                               (let ((_e1658416641_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd1658216636_)))
                         (let ((_hd1658516644_ (##car _e1658416641_))
                               (_tl1658616646_ (##cdr _e1658416641_)))
                           (if (gx#stx-null? _tl1658616646_)
                               (if (gx#stx-pair? _tl1658316638_)
                                   (let ((_e1658716649_
                                          (gx#stx-e _tl1658316638_)))
                                     (let ((_hd1658816652_
                                            (##car _e1658716649_))
                                           (_tl1658916654_
                                            (##cdr _e1658716649_)))
                                       (if (gx#stx-null? _tl1658916654_)
                                           (if (gx#stx-null? _tl1658016630_)
                                               (if (gx#stx-pair?
                                                    _tl1657716622_)
                                                   (let ((_e1659016657_
                                                          (gx#stx-e
                                                           _tl1657716622_)))
                                                     (let ((_hd1659116660_
                                                            (##car _e1659016657_))
                                                           (_tl1659216662_
                                                            (##cdr _e1659016657_)))
                                                       (if (gx#stx-null?
                                                            _tl1659216662_)
                                                           ((lambda (_L16665_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L16666_
                             _L16667_)
                      (if (gx#identifier? _L16667_)
                          (if (gxc#lambda-expr? _L16666_)
                              (gxc#case-lambda-expr? _L16665_)
                              '#f)
                          '#f))
                    _hd1659116660_
                    _hd1658816652_
                    _hd1658516644_)
                   (_g1656616604_ _g1656816607_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1656616604_
                                                    _g1656816607_))
                                               (_g1656616604_ _g1656816607_))
                                           (_g1656616604_ _g1656816607_))))
                                   (_g1656616604_ _g1656816607_))
                               (_g1656616604_ _g1656816607_))))
                       (_g1656616604_ _g1656816607_))))
               (_g1656616604_ _g1656816607_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1656616604_ _g1656816607_))))
                                       (_g1656616604_ _g1656816607_))
                                   (_g1656616604_ _g1656816607_))
                               (_g1656616604_ _g1656816607_))))
                       (_g1656616604_ _g1656816607_)))))
            (_g1656516692_ _expr16564_))))))
  (begin
    (define gxc#lift-case-lambda-clauses__opt-lambda16304
      (lambda (_stx16306_ _id16307_ _clauses16308_ _gensym?16309_)
        ((letrec ((_lp16311_
                   (lambda (_rest16313_ _ids16314_ _impls16315_ _clauses16316_)
                     (let ((_rest1631716325_ _rest16313_))
                       (let ((_E1632016329_
                              (lambda ()
                                (error '"No clause matching"
                                       _rest1631716325_))))
                         (let ((_else1631916333_
                                (lambda ()
                                  (values (reverse _ids16314_)
                                          (reverse _impls16315_)
                                          (reverse _clauses16316_)))))
                           (let ((_K1632116538_
                                  (lambda (_rest16336_ _clause16337_)
                                    (if (gxc#dispatch-lambda-form?
                                         _clause16337_)
                                        (_lp16311_
                                         _rest16336_
                                         _ids16314_
                                         _impls16315_
                                         (cons _clause16337_ _clauses16316_))
                                        (let ((_g1633916350_
                                               (lambda (_g1634016347_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g1634016347_))))
                                          (let ((_g1633816535_
                                                 (lambda (_g1634016353_)
                                                   (if (gx#stx-pair?
                                                        _g1634016353_)
                                                       (let ((_e1634316355_
                                                              (gx#stx-e
                                                               _g1634016353_)))
                                                         (let ((_hd1634416358_
                                                                (##car _e1634316355_))
                                                               (_tl1634516360_
                                                                (##cdr _e1634316355_)))
                                                           ((lambda (_L16363_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L16364_)
                      (let ((_id16381_
                             (make-symbol
                              (gx#stx-e _id16307_)
                              '"__"
                              (length _clauses16316_)
                              (if _gensym?16309_ (gensym '__) '""))))
                        (let ((_id16383_
                               (gx#core-quote-syntax__1
                                _id16381_
                                (gx#stx-source _stx16306_))))
                          (let ((_impl16385_
                                 (gxc#xform-wrap-source
                                  (cons (gx#datum->syntax__0 '#f '%#lambda)
                                        (cons _L16364_ _L16363_))
                                  _stx16306_)))
                            (let ((_clause16532_
                                   (let ((_g1638916417_
                                          (lambda (_g1639016414_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax"
                                             _g1639016414_))))
                                     (let ((_g1638816433_
                                            (lambda (_g1639016420_)
                                              ((lambda (_L16422_)
                                                 (cons _L16364_
                                                       (cons (gxc#xform-wrap-source
                                                              (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons '%#ref (cons 'apply '()))
                                  (cons (cons '%#ref (cons _id16383_ '()))
                                        (cons (cons (gx#datum->syntax__0
                                                     '#f
                                                     '%#ref)
                                                    (cons _L16422_ '()))
                                              '()))))
                      _stx16306_)
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _g1639016420_))))
                                       (let ((_g1638716482_
                                              (lambda (_g1639016436_)
                                                (if (gx#stx-pair/null?
                                                     _g1639016436_)
                                                    (if (fx>= (gx#stx-length
                                                               _g1639016436_)
                                                              '0)
                                                        (let ((_g19415_
                                                               (gx#syntax-split-splice
                                                                _g1639016436_
                                                                '0)))
                                                          (begin
                                                            (let ((_g19416_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (values-count _g19415_)))
                      (if (not (fx= _g19416_ 2))
                          (error "Context expects 2 values" _g19416_)))
                    (let ((_target1640316438_ (values-ref _g19415_ 0))
                          (_tl1640516440_ (values-ref _g19415_ 1)))
                      (letrec ((_loop1640616443_
                                (lambda (_hd1640416446_ _arg1641016448_)
                                  (if (gx#stx-pair? _hd1640416446_)
                                      (let ((_e1640716451_
                                             (gx#stx-e _hd1640416446_)))
                                        (let ((_lp-hd1640816454_
                                               (##car _e1640716451_))
                                              (_lp-tl1640916456_
                                               (##cdr _e1640716451_)))
                                          (_loop1640616443_
                                           _lp-tl1640916456_
                                           (cons _lp-hd1640816454_
                                                 _arg1641016448_))))
                                      (let ((_arg1641116459_
                                             (reverse _arg1641016448_)))
                                        ((lambda (_L16462_ _L16463_)
                                           (cons _L16364_
                                                 (cons (gxc#xform-wrap-source
                                                        (cons '%#call
                                                              (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons 'apply '()))
                            (cons (cons '%#ref (cons _id16383_ '()))
                                  (foldr1 cons
                                          (cons (cons (gx#datum->syntax__0
                                                       '#f
                                                       '%#ref)
                                                      (cons _L16462_ '()))
                                                '())
                                          (begin
                                            '#!void
                                            (foldr1 (lambda (_g1647416477_
                                                             _g1647516479_)
                                                      (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           '%#ref)
                          (cons _g1647416477_ '()))
                    _g1647516479_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()
                                                    _L16463_))))))
                _stx16306_)
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _tl1640516440_
                                         _arg1641116459_))))))
                        (_loop1640616443_ _target1640316438_ '())))))
                (_g1638816433_ _g1639016436_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1638816433_
                                                     _g1639016436_)))))
                                         (let ((_g1638616529_
                                                (lambda (_g1639016485_)
                                                  (if (gx#stx-pair/null?
                                                       _g1639016485_)
                                                      (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1639016485_)
                        '0)
                  (let ((_g19417_ (gx#syntax-split-splice _g1639016485_ '0)))
                    (begin
                      (let ((_g19418_ (values-count _g19417_)))
                        (if (not (fx= _g19418_ 2))
                            (error "Context expects 2 values" _g19418_)))
                      (let ((_target1639216487_ (values-ref _g19417_ 0))
                            (_tl1639416489_ (values-ref _g19417_ 1)))
                        (if (gx#stx-null? _tl1639416489_)
                            (letrec ((_loop1639516492_
                                      (lambda (_hd1639316495_ _arg1639916497_)
                                        (if (gx#stx-pair? _hd1639316495_)
                                            (let ((_e1639616500_
                                                   (gx#stx-e _hd1639316495_)))
                                              (let ((_lp-hd1639716503_
                                                     (##car _e1639616500_))
                                                    (_lp-tl1639816505_
                                                     (##cdr _e1639616500_)))
                                                (_loop1639516492_
                                                 _lp-tl1639816505_
                                                 (cons _lp-hd1639716503_
                                                       _arg1639916497_))))
                                            (let ((_arg1640016508_
                                                   (reverse _arg1639916497_)))
                                              ((lambda (_L16511_)
                                                 (cons _L16364_
                                                       (cons (gxc#xform-wrap-source
                                                              (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons '%#ref (cons _id16383_ '()))
                                  (begin
                                    '#!void
                                    (foldr1 (lambda (_g1652116524_
                                                     _g1652216526_)
                                              (cons (cons (gx#datum->syntax__0
                                                           '#f
                                                           '%#ref)
                                                          (cons _g1652116524_
                                                                '()))
                                                    _g1652216526_))
                                            '()
                                            _L16511_))))
                      _stx16306_)
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _arg1640016508_))))))
                              (_loop1639516492_ _target1639216487_ '()))
                            (_g1638716482_ _g1639016485_)))))
                  (_g1638716482_ _g1639016485_))
              (_g1638716482_ _g1639016485_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_g1638616529_ _L16364_)))))))
                              (let ()
                                (_lp16311_
                                 _rest16336_
                                 (cons _id16383_ _ids16314_)
                                 (cons _impl16385_ _impls16315_)
                                 (cons _clause16532_ _clauses16316_))))))))
                    _tl1634516360_
                    _hd1634416358_)))
               (_g1633916350_ _g1634016353_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g1633816535_ _clause16337_)))))))
                             (if (##pair? _rest1631716325_)
                                 (let ((_hd1632216541_
                                        (##car _rest1631716325_))
                                       (_tl1632316543_
                                        (##cdr _rest1631716325_)))
                                   (let ((_clause16546_ _hd1632216541_))
                                     (let ((_rest16548_ _tl1632316543_))
                                       (_K1632116538_
                                        _rest16548_
                                        _clause16546_))))
                                 (_else1631916333_)))))))))
           _lp16311_)
         _clauses16308_
         '()
         '()
         '())))
    (begin
      (define gxc#lift-case-lambda-clauses__0
        (lambda (_stx16553_ _id16554_ _clauses16555_)
          (let ((_gensym?16557_ '#f))
            (gxc#lift-case-lambda-clauses__opt-lambda16304
             _stx16553_
             _id16554_
             _clauses16555_
             _gensym?16557_))))
      (define gxc#lift-case-lambda-clauses
        (lambda _g19420_
          (let ((_g19419_ (length _g19420_)))
            (cond ((fx= _g19419_ 3)
                   (apply gxc#lift-case-lambda-clauses__0 _g19420_))
                  ((fx= _g19419_ 4)
                   (apply gxc#lift-case-lambda-clauses__opt-lambda16304
                          _g19420_))
                  (else (error "No clause matching arguments" _g19420_))))))))
  (define gxc#lift-top-lambda-define-values%
    (lambda (_stx15895_)
      (let ((_case-lambda-clause-def15897_
             (lambda (_id16302_ _impl16303_)
               (gxc#xform-wrap-source
                (cons '%#define-values
                      (cons (cons _id16302_ '())
                            (cons (gxc#compile-e _impl16303_) '())))
                _stx15895_))))
        (let ((_g1590115946_
               (lambda (_g1590215943_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1590215943_))))
          (let ((_g1590015992_
                 (lambda (_g1590215949_)
                   (if (gx#stx-pair? _g1590215949_)
                       (let ((_e1593315951_ (gx#stx-e _g1590215949_)))
                         (let ((_hd1593415954_ (##car _e1593315951_))
                               (_tl1593515956_ (##cdr _e1593315951_)))
                           (if (gx#stx-pair? _tl1593515956_)
                               (let ((_e1593615959_ (gx#stx-e _tl1593515956_)))
                                 (let ((_hd1593715962_ (##car _e1593615959_))
                                       (_tl1593815964_ (##cdr _e1593615959_)))
                                   (if (gx#stx-pair? _tl1593815964_)
                                       (let ((_e1593915967_
                                              (gx#stx-e _tl1593815964_)))
                                         (let ((_hd1594015970_
                                                (##car _e1593915967_))
                                               (_tl1594115972_
                                                (##cdr _e1593915967_)))
                                           (if (gx#stx-null? _tl1594115972_)
                                               ((lambda (_L15975_ _L15976_)
                                                  (gxc#xform-wrap-source
                                                   (cons '%#define-values
                                                         (cons _L15976_
                                                               (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L15975_)
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _stx15895_))
                                                _hd1594015970_
                                                _hd1593715962_)
                                               (_g1590115946_ _g1590215949_))))
                                       (_g1590115946_ _g1590215949_))))
                               (_g1590115946_ _g1590215949_))))
                       (_g1590115946_ _g1590215949_)))))
            (let ((_g1589916174_
                   (lambda (_g1590215995_)
                     (if (gx#stx-pair? _g1590215995_)
                         (let ((_e1591915997_ (gx#stx-e _g1590215995_)))
                           (let ((_hd1592016000_ (##car _e1591915997_))
                                 (_tl1592116002_ (##cdr _e1591915997_)))
                             (if (gx#stx-pair? _tl1592116002_)
                                 (let ((_e1592216005_
                                        (gx#stx-e _tl1592116002_)))
                                   (let ((_hd1592316008_ (##car _e1592216005_))
                                         (_tl1592416010_
                                          (##cdr _e1592216005_)))
                                     (if (gx#stx-pair? _hd1592316008_)
                                         (let ((_e1592516013_
                                                (gx#stx-e _hd1592316008_)))
                                           (let ((_hd1592616016_
                                                  (##car _e1592516013_))
                                                 (_tl1592716018_
                                                  (##cdr _e1592516013_)))
                                             (if (gx#stx-null? _tl1592716018_)
                                                 (if (gx#stx-pair?
                                                      _tl1592416010_)
                                                     (let ((_e1592816021_
                                                            (gx#stx-e
                                                             _tl1592416010_)))
                                                       (let ((_hd1592916024_
                                                              (##car _e1592816021_))
                                                             (_tl1593016026_
                                                              (##cdr _e1592816021_)))
                                                         (if (gx#stx-null?
                                                              _tl1593016026_)
                                                             ((lambda (_L16029_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L16030_)
                        (if (if (gx#identifier? _L16030_)
                                (gxc#opt-lambda-expr? _L16029_)
                                '#f)
                            (let ((_g1604616076_
                                   (lambda (_g1604716073_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g1604716073_))))
                              (let ((_g1604516171_
                                     (lambda (_g1604716079_)
                                       (if (gx#stx-pair? _g1604716079_)
                                           (let ((_e1605116081_
                                                  (gx#stx-e _g1604716079_)))
                                             (let ((_hd1605216084_
                                                    (##car _e1605116081_))
                                                   (_tl1605316086_
                                                    (##cdr _e1605116081_)))
                                               (if (gx#stx-pair?
                                                    _tl1605316086_)
                                                   (let ((_e1605416089_
                                                          (gx#stx-e
                                                           _tl1605316086_)))
                                                     (let ((_hd1605516092_
                                                            (##car _e1605416089_))
                                                           (_tl1605616094_
                                                            (##cdr _e1605416089_)))
                                                       (if (gx#stx-pair?
                                                            _hd1605516092_)
                                                           (let ((_e1605716097_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd1605516092_)))
                     (let ((_hd1605816100_ (##car _e1605716097_))
                           (_tl1605916102_ (##cdr _e1605716097_)))
                       (if (gx#stx-pair? _hd1605816100_)
                           (let ((_e1606016105_ (gx#stx-e _hd1605816100_)))
                             (let ((_hd1606116108_ (##car _e1606016105_))
                                   (_tl1606216110_ (##cdr _e1606016105_)))
                               (if (gx#stx-pair? _hd1606116108_)
                                   (let ((_e1606316113_
                                          (gx#stx-e _hd1606116108_)))
                                     (let ((_hd1606416116_
                                            (##car _e1606316113_))
                                           (_tl1606516118_
                                            (##cdr _e1606316113_)))
                                       (if (gx#stx-null? _tl1606516118_)
                                           (if (gx#stx-pair? _tl1606216110_)
                                               (let ((_e1606616121_
                                                      (gx#stx-e
                                                       _tl1606216110_)))
                                                 (let ((_hd1606716124_
                                                        (##car _e1606616121_))
                                                       (_tl1606816126_
                                                        (##cdr _e1606616121_)))
                                                   (if (gx#stx-null?
                                                        _tl1606816126_)
                                                       (if (gx#stx-null?
                                                            _tl1605916102_)
                                                           (if (gx#stx-pair?
                                                                _tl1605616094_)
                                                               (let ((_e1606916129_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl1605616094_)))
                         (let ((_hd1607016132_ (##car _e1606916129_))
                               (_tl1607116134_ (##cdr _e1606916129_)))
                           (if (gx#stx-null? _tl1607116134_)
                               ((lambda (_L16137_ _L16138_ _L16139_)
                                  (let ((_lambda-id16163_
                                         (make-symbol
                                          (gx#stx-e _L16030_)
                                          '"__"
                                          (gx#stx-e _L16139_))))
                                    (let ((_lambda-id16165_
                                           (gx#core-quote-syntax__1
                                            _lambda-id16163_
                                            (gx#stx-source _stx15895_))))
                                      (let ((_g19421_
                                             (gx#core-bind-runtime!__0
                                              _lambda-id16165_)))
                                        (let ((_new-case-lambda-expr16168_
                                               (gxc#apply-expression-subst
                                                _L16137_
                                                _L16139_
                                                _lambda-id16165_)))
                                          (let ()
                                            (begin
                                              (gxc#verbose
                                               '"lift opt-lambda dispatch "
                                               (gxc#generate-runtime-binding-id
                                                _L16030_)
                                               '" => "
                                               (gxc#generate-runtime-binding-id
                                                _lambda-id16165_))
                                              (gxc#xform-wrap-source
                                               (cons '%#begin
                                                     (cons (gxc#xform-wrap-source
                                                            (cons '%#define-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons _lambda-id16165_ '())
                                (cons (gxc#compile-e _L16138_) '())))
                    _stx15895_)
                   (cons (gxc#lift-top-lambda-define-values%
                          (gxc#xform-wrap-source
                           (cons '%#define-values
                                 (cons (cons _L16030_ '())
                                       (cons _new-case-lambda-expr16168_ '())))
                           _stx15895_))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _stx15895_))))))))
                                _hd1607016132_
                                _hd1606716124_
                                _hd1606416116_)
                               (_g1604616076_ _g1604716079_))))
                       (_g1604616076_ _g1604716079_))
                   (_g1604616076_ _g1604716079_))
               (_g1604616076_ _g1604716079_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1604616076_ _g1604716079_))
                                           (_g1604616076_ _g1604716079_))))
                                   (_g1604616076_ _g1604716079_))))
                           (_g1604616076_ _g1604716079_))))
                   (_g1604616076_ _g1604716079_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1604616076_
                                                    _g1604716079_))))
                                           (_g1604616076_ _g1604716079_)))))
                                (_g1604516171_ _L16029_)))
                            (_g1590015992_ _g1590215995_)))
                      _hd1592916024_
                      _hd1592616016_)
                     (_g1590015992_ _g1590215995_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1590015992_
                                                      _g1590215995_))
                                                 (_g1590015992_
                                                  _g1590215995_))))
                                         (_g1590015992_ _g1590215995_))))
                                 (_g1590015992_ _g1590215995_))))
                         (_g1590015992_ _g1590215995_)))))
              (let ((_g1589816299_
                     (lambda (_g1590216177_)
                       (if (gx#stx-pair? _g1590216177_)
                           (let ((_e1590516179_ (gx#stx-e _g1590216177_)))
                             (let ((_hd1590616182_ (##car _e1590516179_))
                                   (_tl1590716184_ (##cdr _e1590516179_)))
                               (if (gx#stx-pair? _tl1590716184_)
                                   (let ((_e1590816187_
                                          (gx#stx-e _tl1590716184_)))
                                     (let ((_hd1590916190_
                                            (##car _e1590816187_))
                                           (_tl1591016192_
                                            (##cdr _e1590816187_)))
                                       (if (gx#stx-pair? _hd1590916190_)
                                           (let ((_e1591116195_
                                                  (gx#stx-e _hd1590916190_)))
                                             (let ((_hd1591216198_
                                                    (##car _e1591116195_))
                                                   (_tl1591316200_
                                                    (##cdr _e1591116195_)))
                                               (if (gx#stx-null?
                                                    _tl1591316200_)
                                                   (if (gx#stx-pair?
                                                        _tl1591016192_)
                                                       (let ((_e1591416203_
                                                              (gx#stx-e
                                                               _tl1591016192_)))
                                                         (let ((_hd1591516206_
                                                                (##car _e1591416203_))
                                                               (_tl1591616208_
                                                                (##cdr _e1591416203_)))
                                                           (if (gx#stx-null?
                                                                _tl1591616208_)
                                                               ((lambda (_L16211_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _L16212_)
                          (if (if (gx#identifier? _L16212_)
                                  (gxc#case-lambda-expr? _L16211_)
                                  '#f)
                              (let ((_g1622916243_
                                     (lambda (_g1623016240_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g1623016240_))))
                                (let ((_g1622816274_
                                       (lambda (_g1623016246_)
                                         (if (gx#stx-pair? _g1623016246_)
                                             (let ((_e1623616248_
                                                    (gx#stx-e _g1623016246_)))
                                               (let ((_hd1623716251_
                                                      (##car _e1623616248_))
                                                     (_tl1623816253_
                                                      (##cdr _e1623616248_)))
                                                 ((lambda (_L16256_)
                                                    (let ((_g19422_
                                                           (gxc#lift-case-lambda-clauses__0
                                                            _stx15895_
                                                            _L16212_
                                                            _L16256_)))
                                                      (begin
                                                        (let ((_g19423_
                                                               (values-count
                                                                _g19422_)))
                                                          (if (not (fx= _g19423_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                3))
                      (error "Context expects 3 values" _g19423_)))
                (let ((_ids16266_ (values-ref _g19422_ 0))
                      (_impls16267_ (values-ref _g19422_ 1))
                      (_clauses16268_ (values-ref _g19422_ 2)))
                  (let ((_g19424_ (for-each gx#core-bind-runtime! _ids16266_)))
                    (let ((_defs16271_
                           (map _case-lambda-clause-def15897_
                                _ids16266_
                                _impls16267_)))
                      (let ()
                        (begin
                          (gxc#verbose
                           '"lift case-lambda clauses "
                           (gxc#generate-runtime-binding-id _L16212_)
                           '" => "
                           (map gxc#identifier-symbol _ids16266_))
                          (gxc#xform-wrap-source
                           (cons '%#begin
                                 (foldr1 cons
                                         (cons (gxc#xform-wrap-source
                                                (cons '%#define-values
                                                      (cons (cons _L16212_ '())
                                                            (cons (gxc#xform-wrap-source
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '%#case-lambda _clauses16268_)
                           (gx#datum->syntax__0 '#f 'case-lambda-expr))
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _stx15895_)
                                               '())
                                         _defs16271_))
                           _stx15895_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _tl1623816253_)))
                                             (_g1622916243_ _g1623016246_)))))
                                  (let ((_g1622716296_
                                         (lambda (_g1623016277_)
                                           (if (gx#stx-pair? _g1623016277_)
                                               (let ((_e1623216279_
                                                      (gx#stx-e
                                                       _g1623016277_)))
                                                 (let ((_hd1623316282_
                                                        (##car _e1623216279_))
                                                       (_tl1623416284_
                                                        (##cdr _e1623216279_)))
                                                   ((lambda (_L16287_)
                                                      (if (andmap1 gxc#dispatch-lambda-form?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L16287_)
                  _stx15895_
                  (_g1622816274_ _g1623016277_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _tl1623416284_)))
                                               (_g1622816274_
                                                _g1623016277_)))))
                                    (_g1622716296_ _L16211_))))
                              (_g1589916174_ _g1590216177_)))
                        _hd1591516206_
                        _hd1591216198_)
                       (_g1589916174_ _g1590216177_))))
               (_g1589916174_ _g1590216177_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1589916174_
                                                    _g1590216177_))))
                                           (_g1589916174_ _g1590216177_))))
                                   (_g1589916174_ _g1590216177_))))
                           (_g1589916174_ _g1590216177_)))))
                (_g1589816299_ _stx15895_))))))))
  (define gxc#lift-top-lambda-let-values%
    (lambda (_stx15318_)
      (let ((_bind-e__opt-lambda15877__1937119372_
             (lambda (_id15879_ _expr15880_ _compile?15881_)
               (cons (cons _id15879_ '())
                     (cons (if _compile?15881_
                               (gxc#compile-e _expr15880_)
                               _expr15880_)
                           '())))))
        (let ((_bind-e__0__1937319374_
               (lambda (_id15886_ _expr15887_)
                 (let ((_compile?15889_ '#t))
                   (_bind-e__opt-lambda15877__1937119372_
                    _id15886_
                    _expr15887_
                    _compile?15889_)))))
          (let ((_bind-e15320_
                 (lambda _g19434_
                   (let ((_g19433_ (length _g19434_)))
                     (cond ((fx= _g19433_ 2)
                            (apply _bind-e__0__1937319374_ _g19434_))
                           ((fx= _g19433_ 3)
                            (apply _bind-e__opt-lambda15877__1937119372_
                                   _g19434_))
                           (else
                            (error "No clause matching arguments"
                                   _g19434_)))))))
            (let ((_compile-bindings15321_
                   (lambda (_rest15463_)
                     ((letrec ((_lp15465_
                                (lambda (_rest15467_
                                         _lift115468_
                                         _lift215469_
                                         _bind15470_)
                                  (let ((_rest1547115479_ _rest15467_))
                                    (let ((_E1547415483_
                                           (lambda ()
                                             (error '"No clause matching"
                                                    _rest1547115479_))))
                                      (let ((_else1547315487_
                                             (lambda ()
                                               (values (reverse _lift115468_)
                                                       (reverse _lift215469_)
                                                       (reverse _bind15470_)))))
                                        (let ((_K1547515866_
                                               (lambda (_rest15490_ _hd15491_)
                                                 (let ((_g1549515531_
                                                        (lambda (_g1549615528_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax"
                                                           _g1549615528_))))
                                                   (let ((_g1549415572_
                                                          (lambda (_g1549615534_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1549615534_)
                        (let ((_e1552115536_ (gx#stx-e _g1549615534_)))
                          (let ((_hd1552215539_ (##car _e1552115536_))
                                (_tl1552315541_ (##cdr _e1552115536_)))
                            (if (gx#stx-pair? _tl1552315541_)
                                (let ((_e1552415544_
                                       (gx#stx-e _tl1552315541_)))
                                  (let ((_hd1552515547_ (##car _e1552415544_))
                                        (_tl1552615549_ (##cdr _e1552415544_)))
                                    (if (gx#stx-null? _tl1552615549_)
                                        ((lambda (_L15552_ _L15553_)
                                           (_lp15465_
                                            _rest15490_
                                            _lift115468_
                                            _lift215469_
                                            (cons (cons _L15553_
                                                        (cons (gxc#compile-e
                                                               _L15552_)
                                                              '()))
                                                  _bind15470_)))
                                         _hd1552515547_
                                         _hd1552215539_)
                                        (_g1549515531_ _g1549615534_))))
                                (_g1549515531_ _g1549615534_))))
                        (_g1549515531_ _g1549615534_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_g1549315744_
                                                            (lambda (_g1549615575_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g1549615575_)
                          (let ((_e1551015577_ (gx#stx-e _g1549615575_)))
                            (let ((_hd1551115580_ (##car _e1551015577_))
                                  (_tl1551215582_ (##cdr _e1551015577_)))
                              (if (gx#stx-pair? _hd1551115580_)
                                  (let ((_e1551315585_
                                         (gx#stx-e _hd1551115580_)))
                                    (let ((_hd1551415588_
                                           (##car _e1551315585_))
                                          (_tl1551515590_
                                           (##cdr _e1551315585_)))
                                      (if (gx#stx-null? _tl1551515590_)
                                          (if (gx#stx-pair? _tl1551215582_)
                                              (let ((_e1551615593_
                                                     (gx#stx-e
                                                      _tl1551215582_)))
                                                (let ((_hd1551715596_
                                                       (##car _e1551615593_))
                                                      (_tl1551815598_
                                                       (##cdr _e1551615593_)))
                                                  (if (gx#stx-null?
                                                       _tl1551815598_)
                                                      ((lambda (_L15601_
                                                                _L15602_)
                                                         (if (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L15602_)
                         (gxc#opt-lambda-expr? _L15601_)
                         '#f)
                     (let ((_g1561615646_
                            (lambda (_g1561715643_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g1561715643_))))
                       (let ((_g1561515741_
                              (lambda (_g1561715649_)
                                (if (gx#stx-pair? _g1561715649_)
                                    (let ((_e1562115651_
                                           (gx#stx-e _g1561715649_)))
                                      (let ((_hd1562215654_
                                             (##car _e1562115651_))
                                            (_tl1562315656_
                                             (##cdr _e1562115651_)))
                                        (if (gx#stx-pair? _tl1562315656_)
                                            (let ((_e1562415659_
                                                   (gx#stx-e _tl1562315656_)))
                                              (let ((_hd1562515662_
                                                     (##car _e1562415659_))
                                                    (_tl1562615664_
                                                     (##cdr _e1562415659_)))
                                                (if (gx#stx-pair?
                                                     _hd1562515662_)
                                                    (let ((_e1562715667_
                                                           (gx#stx-e
                                                            _hd1562515662_)))
                                                      (let ((_hd1562815670_
                                                             (##car _e1562715667_))
                                                            (_tl1562915672_
                                                             (##cdr _e1562715667_)))
                                                        (if (gx#stx-pair?
                                                             _hd1562815670_)
                                                            (let ((_e1563015675_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1562815670_)))
                      (let ((_hd1563115678_ (##car _e1563015675_))
                            (_tl1563215680_ (##cdr _e1563015675_)))
                        (if (gx#stx-pair? _hd1563115678_)
                            (let ((_e1563315683_ (gx#stx-e _hd1563115678_)))
                              (let ((_hd1563415686_ (##car _e1563315683_))
                                    (_tl1563515688_ (##cdr _e1563315683_)))
                                (if (gx#stx-null? _tl1563515688_)
                                    (if (gx#stx-pair? _tl1563215680_)
                                        (let ((_e1563615691_
                                               (gx#stx-e _tl1563215680_)))
                                          (let ((_hd1563715694_
                                                 (##car _e1563615691_))
                                                (_tl1563815696_
                                                 (##cdr _e1563615691_)))
                                            (if (gx#stx-null? _tl1563815696_)
                                                (if (gx#stx-null?
                                                     _tl1562915672_)
                                                    (if (gx#stx-pair?
                                                         _tl1562615664_)
                                                        (let ((_e1563915699_
                                                               (gx#stx-e
                                                                _tl1562615664_)))
                                                          (let ((_hd1564015702_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1563915699_))
                        (_tl1564115704_ (##cdr _e1563915699_)))
                    (if (gx#stx-null? _tl1564115704_)
                        ((lambda (_L15707_ _L15708_ _L15709_)
                           (let ((_lambda-id15733_
                                  (make-symbol
                                   (gx#stx-e _L15602_)
                                   '"__"
                                   (gx#stx-e _L15709_)
                                   (gensym '__))))
                             (let ((_lambda-id15735_
                                    (gx#core-quote-syntax__1
                                     _lambda-id15733_
                                     (gx#stx-source _stx15318_))))
                               (let ((_g19429_
                                      (gx#core-bind-runtime!__0
                                       _lambda-id15735_)))
                                 (let ((_new-case-lambda-expr15738_
                                        (gxc#apply-expression-subst
                                         _L15707_
                                         _L15709_
                                         _lambda-id15735_)))
                                   (let ()
                                     (begin
                                       (gxc#verbose
                                        '"lift opt-lambda dispatch "
                                        (gxc#generate-runtime-binding-id
                                         _L15602_)
                                        '" => "
                                        (gxc#generate-runtime-binding-id
                                         _lambda-id15735_))
                                       (_lp15465_
                                        (cons (_bind-e__opt-lambda15877__1937119372_
                                               _L15602_
                                               _new-case-lambda-expr15738_
                                               '#f)
                                              _rest15490_)
                                        (cons (_bind-e__0__1937319374_
                                               _lambda-id15735_
                                               _L15708_)
                                              _lift115468_)
                                        _lift215469_
                                        _bind15470_))))))))
                         _hd1564015702_
                         _hd1563715694_
                         _hd1563415686_)
                        (_g1561615646_ _g1561715649_))))
                (_g1561615646_ _g1561715649_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1561615646_
                                                     _g1561715649_))
                                                (_g1561615646_
                                                 _g1561715649_))))
                                        (_g1561615646_ _g1561715649_))
                                    (_g1561615646_ _g1561715649_))))
                            (_g1561615646_ _g1561715649_))))
                    (_g1561615646_ _g1561715649_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1561615646_
                                                     _g1561715649_))))
                                            (_g1561615646_ _g1561715649_))))
                                    (_g1561615646_ _g1561715649_)))))
                         (_g1561515741_ _L15601_)))
                     (_g1549415572_ _g1549615575_)))
               _hd1551715596_
               _hd1551415588_)
              (_g1549415572_ _g1549615575_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1549415572_ _g1549615575_))
                                          (_g1549415572_ _g1549615575_))))
                                  (_g1549415572_ _g1549615575_))))
                          (_g1549415572_ _g1549615575_)))))
               (let ((_g1549215863_
                      (lambda (_g1549615747_)
                        (if (gx#stx-pair? _g1549615747_)
                            (let ((_e1549915749_ (gx#stx-e _g1549615747_)))
                              (let ((_hd1550015752_ (##car _e1549915749_))
                                    (_tl1550115754_ (##cdr _e1549915749_)))
                                (if (gx#stx-pair? _hd1550015752_)
                                    (let ((_e1550215757_
                                           (gx#stx-e _hd1550015752_)))
                                      (let ((_hd1550315760_
                                             (##car _e1550215757_))
                                            (_tl1550415762_
                                             (##cdr _e1550215757_)))
                                        (if (gx#stx-null? _tl1550415762_)
                                            (if (gx#stx-pair? _tl1550115754_)
                                                (let ((_e1550515765_
                                                       (gx#stx-e
                                                        _tl1550115754_)))
                                                  (let ((_hd1550615768_
                                                         (##car _e1550515765_))
                                                        (_tl1550715770_
                                                         (##cdr _e1550515765_)))
                                                    (if (gx#stx-null?
                                                         _tl1550715770_)
                                                        ((lambda (_L15773_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L15774_)
                   (if (if (gx#identifier? _L15774_)
                           (gxc#case-lambda-expr? _L15773_)
                           '#f)
                       (let ((_g1578915803_
                              (lambda (_g1579015800_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g1579015800_))))
                         (let ((_g1578815838_
                                (lambda (_g1579015806_)
                                  (if (gx#stx-pair? _g1579015806_)
                                      (let ((_e1579615808_
                                             (gx#stx-e _g1579015806_)))
                                        (let ((_hd1579715811_
                                               (##car _e1579615808_))
                                              (_tl1579815813_
                                               (##cdr _e1579615808_)))
                                          ((lambda (_L15816_)
                                             (let ((_g19430_
                                                    (gxc#lift-case-lambda-clauses__opt-lambda16304
                                                     _stx15318_
                                                     _L15774_
                                                     _L15816_
                                                     '#t)))
                                               (begin
                                                 (let ((_g19431_
                                                        (values-count
                                                         _g19430_)))
                                                   (if (not (fx= _g19431_ 3))
                                                       (error "Context expects 3 values"
                                                              _g19431_)))
                                                 (let ((_ids15826_
                                                        (values-ref
                                                         _g19430_
                                                         0))
                                                       (_impls15827_
                                                        (values-ref
                                                         _g19430_
                                                         1))
                                                       (_clauses15828_
                                                        (values-ref
                                                         _g19430_
                                                         2)))
                                                   (let ((_g19432_
                                                          (for-each
                                                           gx#core-bind-runtime!
                                                           _ids15826_)))
                                                     (let ((_xbind15831_
                                                            (map _bind-e15320_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _ids15826_
                         _impls15827_)))
               (let ((_expr*15833_
                      (gxc#xform-wrap-source
                       (cons '%#case-lambda _clauses15828_)
                       (gx#datum->syntax__0 '#f 'case-lambda-expr))))
                 (let ((_bind*15835_
                        (_bind-e__opt-lambda15877__1937119372_
                         _L15774_
                         _expr*15833_
                         '#f)))
                   (let ()
                     (begin
                       (gxc#verbose
                        '"lift case-lambda clauses "
                        (gxc#generate-runtime-binding-id _L15774_)
                        '" => "
                        (map gxc#identifier-symbol _ids15826_))
                       (_lp15465_
                        _rest15490_
                        _lift115468_
                        (foldl1 cons _lift215469_ _xbind15831_)
                        (cons _bind*15835_ _bind15470_))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _tl1579815813_)))
                                      (_g1578915803_ _g1579015806_)))))
                           (let ((_g1578715860_
                                  (lambda (_g1579015841_)
                                    (if (gx#stx-pair? _g1579015841_)
                                        (let ((_e1579215843_
                                               (gx#stx-e _g1579015841_)))
                                          (let ((_hd1579315846_
                                                 (##car _e1579215843_))
                                                (_tl1579415848_
                                                 (##cdr _e1579215843_)))
                                            ((lambda (_L15851_)
                                               (if (andmap1 gxc#dispatch-lambda-form?
                                                            _L15851_)
                                                   (_lp15465_
                                                    _rest15490_
                                                    _lift115468_
                                                    _lift215469_
                                                    (cons (_bind-e__opt-lambda15877__1937119372_
                                                           _L15774_
                                                           _L15773_
                                                           '#f)
                                                          _bind15470_))
                                                   (_g1578815838_
                                                    _g1579015841_)))
                                             _tl1579415848_)))
                                        (_g1578815838_ _g1579015841_)))))
                             (_g1578715860_ _L15773_))))
                       (_g1549315744_ _g1549615747_)))
                 _hd1550615768_
                 _hd1550315760_)
                (_g1549315744_ _g1549615747_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1549315744_ _g1549615747_))
                                            (_g1549315744_ _g1549615747_))))
                                    (_g1549315744_ _g1549615747_))))
                            (_g1549315744_ _g1549615747_)))))
                 (_g1549215863_ _hd15491_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (##pair? _rest1547115479_)
                                              (let ((_hd1547615869_
                                                     (##car _rest1547115479_))
                                                    (_tl1547715871_
                                                     (##cdr _rest1547115479_)))
                                                (let ((_hd15874_
                                                       _hd1547615869_))
                                                  (let ((_rest15876_
                                                         _tl1547715871_))
                                                    (_K1547515866_
                                                     _rest15876_
                                                     _hd15874_))))
                                              (_else1547315487_)))))))))
                        _lp15465_)
                      _rest15463_
                      '()
                      '()
                      '()))))
              (let ((_g1532415350_
                     (lambda (_g1532515347_)
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax"
                        _g1532515347_))))
                (let ((_g1532315357_
                       (lambda (_g1532515353_)
                         ((lambda () (gxc#xform-let-values% _stx15318_))))))
                  (let ((_g1532215460_
                         (lambda (_g1532515360_)
                           (if (gx#stx-pair? _g1532515360_)
                               (let ((_e1532815362_ (gx#stx-e _g1532515360_)))
                                 (let ((_hd1532915365_ (##car _e1532815362_))
                                       (_tl1533015367_ (##cdr _e1532815362_)))
                                   (if (gx#stx-pair? _tl1533015367_)
                                       (let ((_e1533115370_
                                              (gx#stx-e _tl1533015367_)))
                                         (let ((_hd1533215373_
                                                (##car _e1533115370_))
                                               (_tl1533315375_
                                                (##cdr _e1533115370_)))
                                           (if (gx#stx-pair/null?
                                                _hd1533215373_)
                                               (if (fx>= (gx#stx-length
                                                          _hd1533215373_)
                                                         '0)
                                                   (let ((_g19425_
                                                          (gx#syntax-split-splice
                                                           _hd1533215373_
                                                           '0)))
                                                     (begin
                                                       (let ((_g19426_
                                                              (values-count
                                                               _g19425_)))
                                                         (if (not (fx= _g19426_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g19426_)))
               (let ((_target1533415378_ (values-ref _g19425_ 0))
                     (_tl1533615380_ (values-ref _g19425_ 1)))
                 (if (gx#stx-null? _tl1533615380_)
                     (letrec ((_loop1533715383_
                               (lambda (_hd1533515386_ _bind1534115388_)
                                 (if (gx#stx-pair? _hd1533515386_)
                                     (let ((_e1533815391_
                                            (gx#stx-e _hd1533515386_)))
                                       (let ((_lp-hd1533915394_
                                              (##car _e1533815391_))
                                             (_lp-tl1534015396_
                                              (##cdr _e1533815391_)))
                                         (_loop1533715383_
                                          _lp-tl1534015396_
                                          (cons _lp-hd1533915394_
                                                _bind1534115388_))))
                                     (let ((_bind1534215399_
                                            (reverse _bind1534115388_)))
                                       (if (gx#stx-pair? _tl1533315375_)
                                           (let ((_e1534315402_
                                                  (gx#stx-e _tl1533315375_)))
                                             (let ((_hd1534415405_
                                                    (##car _e1534315402_))
                                                   (_tl1534515407_
                                                    (##cdr _e1534315402_)))
                                               (if (gx#stx-null?
                                                    _tl1534515407_)
                                                   ((lambda (_L15410_ _L15411_)
                                                      (if (ormap1 gxc#lift-top-lambda-binding?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (begin
                            '#!void
                            (foldr1 (lambda (_g1543115434_ _g1543215436_)
                                      (cons _g1543115434_ _g1543215436_))
                                    '()
                                    _L15411_)))
                  (call-with-parameters
                   (lambda ()
                     (let ((_g19427_
                            (_compile-bindings15321_
                             (begin
                               '#!void
                               (foldr1 (lambda (_g1543915442_ _g1544015444_)
                                         (cons _g1543915442_ _g1544015444_))
                                       '()
                                       _L15411_)))))
                       (begin
                         (let ((_g19428_ (values-count _g19427_)))
                           (if (not (fx= _g19428_ 3))
                               (error "Context expects 3 values" _g19428_)))
                         (let ((_lift115447_ (values-ref _g19427_ 0))
                               (_lift215448_ (values-ref _g19427_ 1))
                               (_hd15449_ (values-ref _g19427_ 2)))
                           (let ((_body15451_ (gxc#compile-e _L15410_)))
                             (let ((_expr15453_
                                    (gxc#xform-wrap-source
                                     (cons '%#let-values
                                           (cons _hd15449_
                                                 (cons _body15451_ '())))
                                     _stx15318_)))
                               (let ((_expr15455_
                                      (if (null? _lift215448_)
                                          _expr15453_
                                          (gxc#xform-wrap-source
                                           (cons '%#let-values
                                                 (cons _lift215448_
                                                       (cons _expr15453_ '())))
                                           _stx15318_))))
                                 (let ((_expr15457_
                                        (if (null? _lift115447_)
                                            _expr15455_
                                            (gxc#xform-wrap-source
                                             (cons '%#let-values
                                                   (cons _lift115447_
                                                         (cons _expr15455_
                                                               '())))
                                             _stx15318_))))
                                   (let () _expr15457_)))))))))
                   gx#current-expander-context
                   (let ((__obj19381 (make-object gx#local-context::t '5)))
                     (begin
                       (gx#local-context:::init!__0 __obj19381)
                       __obj19381)))
                  (_g1532315357_ _g1532515360_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd1534415405_
                                                    _bind1534215399_)
                                                   (_g1532315357_
                                                    _g1532515360_))))
                                           (_g1532315357_ _g1532515360_)))))))
                       (_loop1533715383_ _target1533415378_ '()))
                     (_g1532315357_ _g1532515360_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1532315357_
                                                    _g1532515360_))
                                               (_g1532315357_ _g1532515360_))))
                                       (_g1532315357_ _g1532515360_))))
                               (_g1532315357_ _g1532515360_)))))
                    (_g1532215460_ _stx15318_))))))))))
  (define gxc#lift-top-lambda-letrec-values%
    (lambda (_stx14750_)
      (let ((_bind-e__opt-lambda15300__1937619377_
             (lambda (_id15302_ _expr15303_ _compile?15304_)
               (cons (cons _id15302_ '())
                     (cons (if _compile?15304_
                               (gxc#compile-e _expr15303_)
                               _expr15303_)
                           '())))))
        (let ((_bind-e__0__1937819379_
               (lambda (_id15309_ _expr15310_)
                 (let ((_compile?15312_ '#t))
                   (_bind-e__opt-lambda15300__1937619377_
                    _id15309_
                    _expr15310_
                    _compile?15312_)))))
          (let ((_bind-e14752_
                 (lambda _g19442_
                   (let ((_g19441_ (length _g19442_)))
                     (cond ((fx= _g19441_ 2)
                            (apply _bind-e__0__1937819379_ _g19442_))
                           ((fx= _g19441_ 3)
                            (apply _bind-e__opt-lambda15300__1937619377_
                                   _g19442_))
                           (else
                            (error "No clause matching arguments"
                                   _g19442_)))))))
            (let ((_compile-bindings14753_
                   (lambda (_rest14888_)
                     ((letrec ((_lp14890_
                                (lambda (_rest14892_ _bind14893_)
                                  (let ((_rest1489414902_ _rest14892_))
                                    (let ((_E1489714906_
                                           (lambda ()
                                             (error '"No clause matching"
                                                    _rest1489414902_))))
                                      (let ((_else1489614910_
                                             (lambda ()
                                               (reverse _bind14893_))))
                                        (let ((_K1489815289_
                                               (lambda (_rest14913_ _hd14914_)
                                                 (let ((_g1491814954_
                                                        (lambda (_g1491914951_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax"
                                                           _g1491914951_))))
                                                   (let ((_g1491714995_
                                                          (lambda (_g1491914957_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1491914957_)
                        (let ((_e1494414959_ (gx#stx-e _g1491914957_)))
                          (let ((_hd1494514962_ (##car _e1494414959_))
                                (_tl1494614964_ (##cdr _e1494414959_)))
                            (if (gx#stx-pair? _tl1494614964_)
                                (let ((_e1494714967_
                                       (gx#stx-e _tl1494614964_)))
                                  (let ((_hd1494814970_ (##car _e1494714967_))
                                        (_tl1494914972_ (##cdr _e1494714967_)))
                                    (if (gx#stx-null? _tl1494914972_)
                                        ((lambda (_L14975_ _L14976_)
                                           (_lp14890_
                                            _rest14913_
                                            (cons (cons _L14976_
                                                        (cons (gxc#compile-e
                                                               _L14975_)
                                                              '()))
                                                  _bind14893_)))
                                         _hd1494814970_
                                         _hd1494514962_)
                                        (_g1491814954_ _g1491914957_))))
                                (_g1491814954_ _g1491914957_))))
                        (_g1491814954_ _g1491914957_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_g1491615167_
                                                            (lambda (_g1491914998_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g1491914998_)
                          (let ((_e1493315000_ (gx#stx-e _g1491914998_)))
                            (let ((_hd1493415003_ (##car _e1493315000_))
                                  (_tl1493515005_ (##cdr _e1493315000_)))
                              (if (gx#stx-pair? _hd1493415003_)
                                  (let ((_e1493615008_
                                         (gx#stx-e _hd1493415003_)))
                                    (let ((_hd1493715011_
                                           (##car _e1493615008_))
                                          (_tl1493815013_
                                           (##cdr _e1493615008_)))
                                      (if (gx#stx-null? _tl1493815013_)
                                          (if (gx#stx-pair? _tl1493515005_)
                                              (let ((_e1493915016_
                                                     (gx#stx-e
                                                      _tl1493515005_)))
                                                (let ((_hd1494015019_
                                                       (##car _e1493915016_))
                                                      (_tl1494115021_
                                                       (##cdr _e1493915016_)))
                                                  (if (gx#stx-null?
                                                       _tl1494115021_)
                                                      ((lambda (_L15024_
                                                                _L15025_)
                                                         (if (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L15025_)
                         (gxc#opt-lambda-expr? _L15024_)
                         '#f)
                     (let ((_g1503915069_
                            (lambda (_g1504015066_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g1504015066_))))
                       (let ((_g1503815164_
                              (lambda (_g1504015072_)
                                (if (gx#stx-pair? _g1504015072_)
                                    (let ((_e1504415074_
                                           (gx#stx-e _g1504015072_)))
                                      (let ((_hd1504515077_
                                             (##car _e1504415074_))
                                            (_tl1504615079_
                                             (##cdr _e1504415074_)))
                                        (if (gx#stx-pair? _tl1504615079_)
                                            (let ((_e1504715082_
                                                   (gx#stx-e _tl1504615079_)))
                                              (let ((_hd1504815085_
                                                     (##car _e1504715082_))
                                                    (_tl1504915087_
                                                     (##cdr _e1504715082_)))
                                                (if (gx#stx-pair?
                                                     _hd1504815085_)
                                                    (let ((_e1505015090_
                                                           (gx#stx-e
                                                            _hd1504815085_)))
                                                      (let ((_hd1505115093_
                                                             (##car _e1505015090_))
                                                            (_tl1505215095_
                                                             (##cdr _e1505015090_)))
                                                        (if (gx#stx-pair?
                                                             _hd1505115093_)
                                                            (let ((_e1505315098_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1505115093_)))
                      (let ((_hd1505415101_ (##car _e1505315098_))
                            (_tl1505515103_ (##cdr _e1505315098_)))
                        (if (gx#stx-pair? _hd1505415101_)
                            (let ((_e1505615106_ (gx#stx-e _hd1505415101_)))
                              (let ((_hd1505715109_ (##car _e1505615106_))
                                    (_tl1505815111_ (##cdr _e1505615106_)))
                                (if (gx#stx-null? _tl1505815111_)
                                    (if (gx#stx-pair? _tl1505515103_)
                                        (let ((_e1505915114_
                                               (gx#stx-e _tl1505515103_)))
                                          (let ((_hd1506015117_
                                                 (##car _e1505915114_))
                                                (_tl1506115119_
                                                 (##cdr _e1505915114_)))
                                            (if (gx#stx-null? _tl1506115119_)
                                                (if (gx#stx-null?
                                                     _tl1505215095_)
                                                    (if (gx#stx-pair?
                                                         _tl1504915087_)
                                                        (let ((_e1506215122_
                                                               (gx#stx-e
                                                                _tl1504915087_)))
                                                          (let ((_hd1506315125_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1506215122_))
                        (_tl1506415127_ (##cdr _e1506215122_)))
                    (if (gx#stx-null? _tl1506415127_)
                        ((lambda (_L15130_ _L15131_ _L15132_)
                           (let ((_lambda-id15156_
                                  (make-symbol
                                   (gx#stx-e _L15025_)
                                   '"__"
                                   (gx#stx-e _L15132_)
                                   (gensym '__))))
                             (let ((_lambda-id15158_
                                    (gx#core-quote-syntax__1
                                     _lambda-id15156_
                                     (gx#stx-source _stx14750_))))
                               (let ((_g19437_
                                      (gx#core-bind-runtime!__0
                                       _lambda-id15158_)))
                                 (let ((_new-case-lambda-expr15161_
                                        (gxc#apply-expression-subst
                                         _L15130_
                                         _L15132_
                                         _lambda-id15158_)))
                                   (let ()
                                     (begin
                                       (gxc#verbose
                                        '"lift opt-lambda dispatch "
                                        (gxc#generate-runtime-binding-id
                                         _L15025_)
                                        '" => "
                                        (gxc#generate-runtime-binding-id
                                         _lambda-id15158_))
                                       (_lp14890_
                                        (cons (_bind-e__opt-lambda15300__1937619377_
                                               _L15025_
                                               _new-case-lambda-expr15161_
                                               '#f)
                                              _rest14913_)
                                        (cons (_bind-e__0__1937819379_
                                               _lambda-id15158_
                                               _L15131_)
                                              _bind14893_)))))))))
                         _hd1506315125_
                         _hd1506015117_
                         _hd1505715109_)
                        (_g1503915069_ _g1504015072_))))
                (_g1503915069_ _g1504015072_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1503915069_
                                                     _g1504015072_))
                                                (_g1503915069_
                                                 _g1504015072_))))
                                        (_g1503915069_ _g1504015072_))
                                    (_g1503915069_ _g1504015072_))))
                            (_g1503915069_ _g1504015072_))))
                    (_g1503915069_ _g1504015072_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1503915069_
                                                     _g1504015072_))))
                                            (_g1503915069_ _g1504015072_))))
                                    (_g1503915069_ _g1504015072_)))))
                         (_g1503815164_ _L15024_)))
                     (_g1491714995_ _g1491914998_)))
               _hd1494015019_
               _hd1493715011_)
              (_g1491714995_ _g1491914998_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1491714995_ _g1491914998_))
                                          (_g1491714995_ _g1491914998_))))
                                  (_g1491714995_ _g1491914998_))))
                          (_g1491714995_ _g1491914998_)))))
               (let ((_g1491515286_
                      (lambda (_g1491915170_)
                        (if (gx#stx-pair? _g1491915170_)
                            (let ((_e1492215172_ (gx#stx-e _g1491915170_)))
                              (let ((_hd1492315175_ (##car _e1492215172_))
                                    (_tl1492415177_ (##cdr _e1492215172_)))
                                (if (gx#stx-pair? _hd1492315175_)
                                    (let ((_e1492515180_
                                           (gx#stx-e _hd1492315175_)))
                                      (let ((_hd1492615183_
                                             (##car _e1492515180_))
                                            (_tl1492715185_
                                             (##cdr _e1492515180_)))
                                        (if (gx#stx-null? _tl1492715185_)
                                            (if (gx#stx-pair? _tl1492415177_)
                                                (let ((_e1492815188_
                                                       (gx#stx-e
                                                        _tl1492415177_)))
                                                  (let ((_hd1492915191_
                                                         (##car _e1492815188_))
                                                        (_tl1493015193_
                                                         (##cdr _e1492815188_)))
                                                    (if (gx#stx-null?
                                                         _tl1493015193_)
                                                        ((lambda (_L15196_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L15197_)
                   (if (if (gx#identifier? _L15197_)
                           (gxc#case-lambda-expr? _L15196_)
                           '#f)
                       (let ((_g1521215226_
                              (lambda (_g1521315223_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g1521315223_))))
                         (let ((_g1521115261_
                                (lambda (_g1521315229_)
                                  (if (gx#stx-pair? _g1521315229_)
                                      (let ((_e1521915231_
                                             (gx#stx-e _g1521315229_)))
                                        (let ((_hd1522015234_
                                               (##car _e1521915231_))
                                              (_tl1522115236_
                                               (##cdr _e1521915231_)))
                                          ((lambda (_L15239_)
                                             (let ((_g19438_
                                                    (gxc#lift-case-lambda-clauses__opt-lambda16304
                                                     _stx14750_
                                                     _L15197_
                                                     _L15239_
                                                     '#t)))
                                               (begin
                                                 (let ((_g19439_
                                                        (values-count
                                                         _g19438_)))
                                                   (if (not (fx= _g19439_ 3))
                                                       (error "Context expects 3 values"
                                                              _g19439_)))
                                                 (let ((_ids15249_
                                                        (values-ref
                                                         _g19438_
                                                         0))
                                                       (_impls15250_
                                                        (values-ref
                                                         _g19438_
                                                         1))
                                                       (_clauses15251_
                                                        (values-ref
                                                         _g19438_
                                                         2)))
                                                   (let ((_g19440_
                                                          (for-each
                                                           gx#core-bind-runtime!
                                                           _ids15249_)))
                                                     (let ((_xbind15254_
                                                            (map _bind-e14752_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _ids15249_
                         _impls15250_)))
               (let ((_expr*15256_
                      (gxc#xform-wrap-source
                       (cons '%#case-lambda _clauses15251_)
                       (gx#datum->syntax__0 '#f 'case-lambda-expr))))
                 (let ((_bind*15258_
                        (_bind-e__opt-lambda15300__1937619377_
                         _L15197_
                         _expr*15256_
                         '#f)))
                   (let ()
                     (begin
                       (gxc#verbose
                        '"lift case-lambda clauses "
                        (gxc#generate-runtime-binding-id _L15197_)
                        '" => "
                        (map gxc#identifier-symbol _ids15249_))
                       (_lp14890_
                        _rest14913_
                        (cons _bind*15258_
                              (foldl1 cons
                                      _bind14893_
                                      _xbind15254_)))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _tl1522115236_)))
                                      (_g1521215226_ _g1521315229_)))))
                           (let ((_g1521015283_
                                  (lambda (_g1521315264_)
                                    (if (gx#stx-pair? _g1521315264_)
                                        (let ((_e1521515266_
                                               (gx#stx-e _g1521315264_)))
                                          (let ((_hd1521615269_
                                                 (##car _e1521515266_))
                                                (_tl1521715271_
                                                 (##cdr _e1521515266_)))
                                            ((lambda (_L15274_)
                                               (if (andmap1 gxc#dispatch-lambda-form?
                                                            _L15274_)
                                                   (_lp14890_
                                                    _rest14913_
                                                    (cons (_bind-e__opt-lambda15300__1937619377_
                                                           _L15197_
                                                           _L15196_
                                                           '#f)
                                                          _bind14893_))
                                                   (_g1521115261_
                                                    _g1521315264_)))
                                             _tl1521715271_)))
                                        (_g1521115261_ _g1521315264_)))))
                             (_g1521015283_ _L15196_))))
                       (_g1491615167_ _g1491915170_)))
                 _hd1492915191_
                 _hd1492615183_)
                (_g1491615167_ _g1491915170_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1491615167_ _g1491915170_))
                                            (_g1491615167_ _g1491915170_))))
                                    (_g1491615167_ _g1491915170_))))
                            (_g1491615167_ _g1491915170_)))))
                 (_g1491515286_ _hd14914_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (##pair? _rest1489414902_)
                                              (let ((_hd1489915292_
                                                     (##car _rest1489414902_))
                                                    (_tl1490015294_
                                                     (##cdr _rest1489414902_)))
                                                (let ((_hd15297_
                                                       _hd1489915292_))
                                                  (let ((_rest15299_
                                                         _tl1490015294_))
                                                    (_K1489815289_
                                                     _rest15299_
                                                     _hd15297_))))
                                              (_else1489614910_)))))))))
                        _lp14890_)
                      _rest14888_
                      '()))))
              (let ((_g1475614783_
                     (lambda (_g1475714780_)
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax"
                        _g1475714780_))))
                (let ((_g1475514790_
                       (lambda (_g1475714786_)
                         ((lambda () (gxc#xform-let-values% _stx14750_))))))
                  (let ((_g1475414885_
                         (lambda (_g1475714793_)
                           (if (gx#stx-pair? _g1475714793_)
                               (let ((_e1476114795_ (gx#stx-e _g1475714793_)))
                                 (let ((_hd1476214798_ (##car _e1476114795_))
                                       (_tl1476314800_ (##cdr _e1476114795_)))
                                   (if (gx#stx-pair? _tl1476314800_)
                                       (let ((_e1476414803_
                                              (gx#stx-e _tl1476314800_)))
                                         (let ((_hd1476514806_
                                                (##car _e1476414803_))
                                               (_tl1476614808_
                                                (##cdr _e1476414803_)))
                                           (if (gx#stx-pair/null?
                                                _hd1476514806_)
                                               (if (fx>= (gx#stx-length
                                                          _hd1476514806_)
                                                         '0)
                                                   (let ((_g19435_
                                                          (gx#syntax-split-splice
                                                           _hd1476514806_
                                                           '0)))
                                                     (begin
                                                       (let ((_g19436_
                                                              (values-count
                                                               _g19435_)))
                                                         (if (not (fx= _g19436_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g19436_)))
               (let ((_target1476714811_ (values-ref _g19435_ 0))
                     (_tl1476914813_ (values-ref _g19435_ 1)))
                 (if (gx#stx-null? _tl1476914813_)
                     (letrec ((_loop1477014816_
                               (lambda (_hd1476814819_ _bind1477414821_)
                                 (if (gx#stx-pair? _hd1476814819_)
                                     (let ((_e1477114824_
                                            (gx#stx-e _hd1476814819_)))
                                       (let ((_lp-hd1477214827_
                                              (##car _e1477114824_))
                                             (_lp-tl1477314829_
                                              (##cdr _e1477114824_)))
                                         (_loop1477014816_
                                          _lp-tl1477314829_
                                          (cons _lp-hd1477214827_
                                                _bind1477414821_))))
                                     (let ((_bind1477514832_
                                            (reverse _bind1477414821_)))
                                       (if (gx#stx-pair? _tl1476614808_)
                                           (let ((_e1477614835_
                                                  (gx#stx-e _tl1476614808_)))
                                             (let ((_hd1477714838_
                                                    (##car _e1477614835_))
                                                   (_tl1477814840_
                                                    (##cdr _e1477614835_)))
                                               (if (gx#stx-null?
                                                    _tl1477814840_)
                                                   ((lambda (_L14843_
                                                             _L14844_
                                                             _L14845_)
                                                      (if (ormap1 gxc#lift-top-lambda-binding?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (begin
                            '#!void
                            (foldr1 (lambda (_g1486614869_ _g1486714871_)
                                      (cons _g1486614869_ _g1486714871_))
                                    '()
                                    _L14844_)))
                  (call-with-parameters
                   (lambda ()
                     (let ((_hd14882_
                            (_compile-bindings14753_
                             (begin
                               '#!void
                               (foldr1 (lambda (_g1487414877_ _g1487514879_)
                                         (cons _g1487414877_ _g1487514879_))
                                       '()
                                       _L14844_))))
                           (_body14883_ (gxc#compile-e _L14843_)))
                       (gxc#xform-wrap-source
                        (cons _L14845_ (cons _hd14882_ (cons _body14883_ '())))
                        _stx14750_)))
                   gx#current-expander-context
                   (let ((__obj19382 (make-object gx#local-context::t '5)))
                     (begin
                       (gx#local-context:::init!__0 __obj19382)
                       __obj19382)))
                  (_g1475514790_ _g1475714793_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd1477714838_
                                                    _bind1477514832_
                                                    _hd1476214798_)
                                                   (_g1475514790_
                                                    _g1475714793_))))
                                           (_g1475514790_ _g1475714793_)))))))
                       (_loop1477014816_ _target1476714811_ '()))
                     (_g1475514790_ _g1475714793_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1475514790_
                                                    _g1475714793_))
                                               (_g1475514790_ _g1475714793_))))
                                       (_g1475514790_ _g1475714793_))))
                               (_g1475514790_ _g1475714793_)))))
                    (_g1475414885_ _stx14750_))))))))))
  (define gxc#lift-top-lambda-binding?
    (lambda (_bind14671_)
      (let ((_g1467414691_
             (lambda (_g1467514688_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1467514688_))))
        (let ((_g1467314698_ (lambda (_g1467514694_) ((lambda () '#f)))))
          (let ((_g1467214747_
                 (lambda (_g1467514701_)
                   (if (gx#stx-pair? _g1467514701_)
                       (let ((_e1467814703_ (gx#stx-e _g1467514701_)))
                         (let ((_hd1467914706_ (##car _e1467814703_))
                               (_tl1468014708_ (##cdr _e1467814703_)))
                           (if (gx#stx-pair? _hd1467914706_)
                               (let ((_e1468114711_ (gx#stx-e _hd1467914706_)))
                                 (let ((_hd1468214714_ (##car _e1468114711_))
                                       (_tl1468314716_ (##cdr _e1468114711_)))
                                   (if (gx#stx-null? _tl1468314716_)
                                       (if (gx#stx-pair? _tl1468014708_)
                                           (let ((_e1468414719_
                                                  (gx#stx-e _tl1468014708_)))
                                             (let ((_hd1468514722_
                                                    (##car _e1468414719_))
                                                   (_tl1468614724_
                                                    (##cdr _e1468414719_)))
                                               (if (gx#stx-null?
                                                    _tl1468614724_)
                                                   ((lambda (_L14727_ _L14728_)
                                                      (if (gx#identifier?
                                                           _L14728_)
                                                          (let ((_$e14744_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gxc#case-lambda-expr? _L14727_)))
                    (if _$e14744_ _$e14744_ (gxc#opt-lambda-expr? _L14727_)))
                  '#f))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd1468514722_
                                                    _hd1468214714_)
                                                   (_g1467314698_
                                                    _g1467514701_))))
                                           (_g1467314698_ _g1467514701_))
                                       (_g1467314698_ _g1467514701_))))
                               (_g1467314698_ _g1467514701_))))
                       (_g1467314698_ _g1467514701_)))))
            (_g1467214747_ _bind14671_))))))
  (define gxc#expression-subst-ref%
    (lambda (_stx14609_ _id14610_ _new-id14611_)
      (let ((_g1461414627_
             (lambda (_g1461514624_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1461514624_))))
        (let ((_g1461314634_
               (lambda (_g1461514630_) ((lambda () _stx14609_)))))
          (let ((_g1461214668_
                 (lambda (_g1461514637_)
                   (if (gx#stx-pair? _g1461514637_)
                       (let ((_e1461714639_ (gx#stx-e _g1461514637_)))
                         (let ((_hd1461814642_ (##car _e1461714639_))
                               (_tl1461914644_ (##cdr _e1461714639_)))
                           (if (gx#stx-pair? _tl1461914644_)
                               (let ((_e1462014647_ (gx#stx-e _tl1461914644_)))
                                 (let ((_hd1462114650_ (##car _e1462014647_))
                                       (_tl1462214652_ (##cdr _e1462014647_)))
                                   (if (gx#stx-null? _tl1462214652_)
                                       ((lambda (_L14655_)
                                          (if (gx#free-identifier=?
                                               _L14655_
                                               _id14610_)
                                              (gxc#xform-wrap-source
                                               (cons '%#ref
                                                     (cons _new-id14611_ '()))
                                               _stx14609_)
                                              (_g1461314634_ _g1461514637_)))
                                        _hd1462114650_)
                                       (_g1461314634_ _g1461514637_))))
                               (_g1461314634_ _g1461514637_))))
                       (_g1461314634_ _g1461514637_)))))
            (_g1461214668_ _stx14609_))))))
  (define gxc#collect-type-define-values%
    (lambda (_stx14465_)
      (let ((_g1446814499_
             (lambda (_g1446914496_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1446914496_))))
        (let ((_g1446714544_
               (lambda (_g1446914502_)
                 (if (gx#stx-pair? _g1446914502_)
                     (let ((_e1448614504_ (gx#stx-e _g1446914502_)))
                       (let ((_hd1448714507_ (##car _e1448614504_))
                             (_tl1448814509_ (##cdr _e1448614504_)))
                         (if (gx#stx-pair? _tl1448814509_)
                             (let ((_e1448914512_ (gx#stx-e _tl1448814509_)))
                               (let ((_hd1449014515_ (##car _e1448914512_))
                                     (_tl1449114517_ (##cdr _e1448914512_)))
                                 (if (gx#stx-pair? _tl1449114517_)
                                     (let ((_e1449214520_
                                            (gx#stx-e _tl1449114517_)))
                                       (let ((_hd1449314523_
                                              (##car _e1449214520_))
                                             (_tl1449414525_
                                              (##cdr _e1449214520_)))
                                         (if (gx#stx-null? _tl1449414525_)
                                             ((lambda (_L14528_ _L14529_)
                                                (gxc#compile-e _L14528_))
                                              _hd1449314523_
                                              _hd1449014515_)
                                             (_g1446814499_ _g1446914502_))))
                                     (_g1446814499_ _g1446914502_))))
                             (_g1446814499_ _g1446914502_))))
                     (_g1446814499_ _g1446914502_)))))
          (let ((_g1446614606_
                 (lambda (_g1446914547_)
                   (if (gx#stx-pair? _g1446914547_)
                       (let ((_e1447214549_ (gx#stx-e _g1446914547_)))
                         (let ((_hd1447314552_ (##car _e1447214549_))
                               (_tl1447414554_ (##cdr _e1447214549_)))
                           (if (gx#stx-pair? _tl1447414554_)
                               (let ((_e1447514557_ (gx#stx-e _tl1447414554_)))
                                 (let ((_hd1447614560_ (##car _e1447514557_))
                                       (_tl1447714562_ (##cdr _e1447514557_)))
                                   (if (gx#stx-pair? _hd1447614560_)
                                       (let ((_e1447814565_
                                              (gx#stx-e _hd1447614560_)))
                                         (let ((_hd1447914568_
                                                (##car _e1447814565_))
                                               (_tl1448014570_
                                                (##cdr _e1447814565_)))
                                           (if (gx#stx-null? _tl1448014570_)
                                               (if (gx#stx-pair?
                                                    _tl1447714562_)
                                                   (let ((_e1448114573_
                                                          (gx#stx-e
                                                           _tl1447714562_)))
                                                     (let ((_hd1448214576_
                                                            (##car _e1448114573_))
                                                           (_tl1448314578_
                                                            (##cdr _e1448114573_)))
                                                       (if (gx#stx-null?
                                                            _tl1448314578_)
                                                           ((lambda (_L14581_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L14582_)
                      (if (gx#identifier? _L14582_)
                          (let ((_sym14598_
                                 (gxc#generate-runtime-binding-id _L14582_)))
                            (begin
                              (if (table-ref
                                   (gxc#current-compile-mutators)
                                   _sym14598_
                                   '#f)
                                  (gxc#verbose
                                   '"skipping type declaration for mutable binding "
                                   _sym14598_)
                                  (let ((_type1459914601_
                                         (gxc#apply-basic-expression-type
                                          _L14581_)))
                                    (if _type1459914601_
                                        (let ((_type14604_ _type1459914601_))
                                          (gxc#optimizer-declare-type!__0
                                           _sym14598_
                                           _type14604_))
                                        '#f)))
                              (gxc#compile-e _L14581_)))
                          (_g1446714544_ _g1446914547_)))
                    _hd1448214576_
                    _hd1447914568_)
                   (_g1446714544_ _g1446914547_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1446714544_
                                                    _g1446914547_))
                                               (_g1446714544_ _g1446914547_))))
                                       (_g1446714544_ _g1446914547_))))
                               (_g1446714544_ _g1446914547_))))
                       (_g1446714544_ _g1446914547_)))))
            (_g1446614606_ _stx14465_))))))
  (define gxc#collect-type-let-values%
    (lambda (_stx14250_)
      (let ((_collect-e14252_
             (lambda (_hd14409_ _expr14410_)
               (let ((_g1441314423_
                      (lambda (_g1441414420_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax"
                         _g1441414420_))))
                 (let ((_g1441214430_
                        (lambda (_g1441414426_) ((lambda () '#!void)))))
                   (let ((_g1441114462_
                          (lambda (_g1441414433_)
                            (if (gx#stx-pair? _g1441414433_)
                                (let ((_e1441614435_ (gx#stx-e _g1441414433_)))
                                  (let ((_hd1441714438_ (##car _e1441614435_))
                                        (_tl1441814440_ (##cdr _e1441614435_)))
                                    (if (gx#stx-null? _tl1441814440_)
                                        ((lambda (_L14443_)
                                           (if (gx#identifier? _L14443_)
                                               (let ((_sym14454_
                                                      (gxc#generate-runtime-binding-id
                                                       _L14443_)))
                                                 (if (table-ref
                                                      (gxc#current-compile-mutators)
                                                      _sym14454_
                                                      '#f)
                                                     (gxc#verbose
                                                      '"skipping type declaration for mutable binding "
                                                      _sym14454_)
                                                     (let ((_type1445514457_
                                                            (gxc#apply-basic-expression-type
                                                             _expr14410_)))
                                                       (if _type1445514457_
                                                           (let ((_type14460_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _type1445514457_))
                     (gxc#optimizer-declare-type!__opt-lambda19155
                      _sym14454_
                      _type14460_
                      '#t))
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1441214430_ _g1441414433_)))
                                         _hd1441714438_)
                                        (_g1441214430_ _g1441414433_))))
                                (_g1441214430_ _g1441414433_)))))
                     (_g1441114462_ _hd14409_)))))))
        (let ((_g1425414289_
               (lambda (_g1425514286_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1425514286_))))
          (let ((_g1425314406_
                 (lambda (_g1425514292_)
                   (if (gx#stx-pair? _g1425514292_)
                       (let ((_e1425914294_ (gx#stx-e _g1425514292_)))
                         (let ((_hd1426014297_ (##car _e1425914294_))
                               (_tl1426114299_ (##cdr _e1425914294_)))
                           (if (gx#stx-pair? _tl1426114299_)
                               (let ((_e1426214302_ (gx#stx-e _tl1426114299_)))
                                 (let ((_hd1426314305_ (##car _e1426214302_))
                                       (_tl1426414307_ (##cdr _e1426214302_)))
                                   (if (gx#stx-pair/null? _hd1426314305_)
                                       (if (fx>= (gx#stx-length _hd1426314305_)
                                                 '0)
                                           (let ((_g19443_
                                                  (gx#syntax-split-splice
                                                   _hd1426314305_
                                                   '0)))
                                             (begin
                                               (let ((_g19444_
                                                      (values-count _g19443_)))
                                                 (if (not (fx= _g19444_ 2))
                                                     (error "Context expects 2 values"
                                                            _g19444_)))
                                               (let ((_target1426514310_
                                                      (values-ref _g19443_ 0))
                                                     (_tl1426714312_
                                                      (values-ref _g19443_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl1426714312_)
                                                     (letrec ((_loop1426814315_
                                                               (lambda (_hd1426614318_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _expr1427214320_
                                _hd1427314322_)
                         (if (gx#stx-pair? _hd1426614318_)
                             (let ((_e1426914325_ (gx#stx-e _hd1426614318_)))
                               (let ((_lp-hd1427014328_ (##car _e1426914325_))
                                     (_lp-tl1427114330_ (##cdr _e1426914325_)))
                                 (if (gx#stx-pair? _lp-hd1427014328_)
                                     (let ((_e1427614333_
                                            (gx#stx-e _lp-hd1427014328_)))
                                       (let ((_hd1427714336_
                                              (##car _e1427614333_))
                                             (_tl1427814338_
                                              (##cdr _e1427614333_)))
                                         (if (gx#stx-pair? _tl1427814338_)
                                             (let ((_e1427914341_
                                                    (gx#stx-e _tl1427814338_)))
                                               (let ((_hd1428014344_
                                                      (##car _e1427914341_))
                                                     (_tl1428114346_
                                                      (##cdr _e1427914341_)))
                                                 (if (gx#stx-null?
                                                      _tl1428114346_)
                                                     (_loop1426814315_
                                                      _lp-tl1427114330_
                                                      (cons _hd1428014344_
                                                            _expr1427214320_)
                                                      (cons _hd1427714336_
                                                            _hd1427314322_))
                                                     (_g1425414289_
                                                      _g1425514292_))))
                                             (_g1425414289_ _g1425514292_))))
                                     (_g1425414289_ _g1425514292_))))
                             (let ((_expr1427414349_
                                    (reverse _expr1427214320_))
                                   (_hd1427514351_ (reverse _hd1427314322_)))
                               (if (gx#stx-pair? _tl1426414307_)
                                   (let ((_e1428214354_
                                          (gx#stx-e _tl1426414307_)))
                                     (let ((_hd1428314357_
                                            (##car _e1428214354_))
                                           (_tl1428414359_
                                            (##cdr _e1428214354_)))
                                       (if (gx#stx-null? _tl1428414359_)
                                           ((lambda (_L14362_
                                                     _L14363_
                                                     _L14364_)
                                              (begin
                                                (for-each
                                                 _collect-e14252_
                                                 (begin
                                                   '#!void
                                                   (foldr1 (lambda (_g1438414387_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g1438514389_)
                     (cons _g1438414387_ _g1438514389_))
                   '()
                   _L14364_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (begin
                                                   '#!void
                                                   (foldr1 (lambda (_g1439114394_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g1439214396_)
                     (cons _g1439114394_ _g1439214396_))
                   '()
                   _L14363_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (for-each
                                                 gxc#compile-e
                                                 (begin
                                                   '#!void
                                                   (foldr1 (lambda (_g1439814401_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g1439914403_)
                     (cons _g1439814401_ _g1439914403_))
                   '()
                   _L14363_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (gxc#compile-e _L14362_)))
                                            _hd1428314357_
                                            _expr1427414349_
                                            _hd1427514351_)
                                           (_g1425414289_ _g1425514292_))))
                                   (_g1425414289_ _g1425514292_)))))))
               (_loop1426814315_ _target1426514310_ '() '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1425414289_
                                                      _g1425514292_)))))
                                           (_g1425414289_ _g1425514292_))
                                       (_g1425414289_ _g1425514292_))))
                               (_g1425414289_ _g1425514292_))))
                       (_g1425414289_ _g1425514292_)))))
            (_g1425314406_ _stx14250_))))))
  (define gxc#collect-type-call%
    (lambda (_stx13804_)
      (let ((_g1380813910_
             (lambda (_g1380913907_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1380913907_))))
        (let ((_g1380713917_ (lambda (_g1380913913_) ((lambda () '#!void)))))
          (let ((_g1380614067_
                 (lambda (_g1380913920_)
                   (if (gx#stx-pair? _g1380913920_)
                       (let ((_e1386713922_ (gx#stx-e _g1380913920_)))
                         (let ((_hd1386813925_ (##car _e1386713922_))
                               (_tl1386913927_ (##cdr _e1386713922_)))
                           (if (gx#stx-pair? _tl1386913927_)
                               (let ((_e1387013930_ (gx#stx-e _tl1386913927_)))
                                 (let ((_hd1387113933_ (##car _e1387013930_))
                                       (_tl1387213935_ (##cdr _e1387013930_)))
                                   (if (gx#stx-pair? _hd1387113933_)
                                       (let ((_e1387313938_
                                              (gx#stx-e _hd1387113933_)))
                                         (let ((_hd1387413941_
                                                (##car _e1387313938_))
                                               (_tl1387513943_
                                                (##cdr _e1387313938_)))
                                           (if (gx#identifier? _hd1387413941_)
                                               (if (gx#stx-eq?
                                                    '%#ref
                                                    _hd1387413941_)
                                                   (if (gx#stx-pair?
                                                        _tl1387513943_)
                                                       (let ((_e1387613946_
                                                              (gx#stx-e
                                                               _tl1387513943_)))
                                                         (let ((_hd1387713949_
                                                                (##car _e1387613946_))
                                                               (_tl1387813951_
                                                                (##cdr _e1387613946_)))
                                                           (if (gx#stx-null?
                                                                _tl1387813951_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl1387213935_)
                           (let ((_e1387913954_ (gx#stx-e _tl1387213935_)))
                             (let ((_hd1388013957_ (##car _e1387913954_))
                                   (_tl1388113959_ (##cdr _e1387913954_)))
                               (if (gx#stx-pair? _hd1388013957_)
                                   (let ((_e1388213962_
                                          (gx#stx-e _hd1388013957_)))
                                     (let ((_hd1388313965_
                                            (##car _e1388213962_))
                                           (_tl1388413967_
                                            (##cdr _e1388213962_)))
                                       (if (gx#identifier? _hd1388313965_)
                                           (if (gx#stx-eq?
                                                '%#ref
                                                _hd1388313965_)
                                               (if (gx#stx-pair?
                                                    _tl1388413967_)
                                                   (let ((_e1388513970_
                                                          (gx#stx-e
                                                           _tl1388413967_)))
                                                     (let ((_hd1388613973_
                                                            (##car _e1388513970_))
                                                           (_tl1388713975_
                                                            (##cdr _e1388513970_)))
                                                       (if (gx#stx-null?
                                                            _tl1388713975_)
                                                           (if (gx#stx-pair?
                                                                _tl1388113959_)
                                                               (let ((_e1388813978_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl1388113959_)))
                         (let ((_hd1388913981_ (##car _e1388813978_))
                               (_tl1389013983_ (##cdr _e1388813978_)))
                           (if (gx#stx-pair? _hd1388913981_)
                               (let ((_e1389113986_ (gx#stx-e _hd1388913981_)))
                                 (let ((_hd1389213989_ (##car _e1389113986_))
                                       (_tl1389313991_ (##cdr _e1389113986_)))
                                   (if (gx#identifier? _hd1389213989_)
                                       (if (gx#stx-eq? '%#quote _hd1389213989_)
                                           (if (gx#stx-pair? _tl1389313991_)
                                               (let ((_e1389413994_
                                                      (gx#stx-e
                                                       _tl1389313991_)))
                                                 (let ((_hd1389513997_
                                                        (##car _e1389413994_))
                                                       (_tl1389613999_
                                                        (##cdr _e1389413994_)))
                                                   (if (gx#stx-null?
                                                        _tl1389613999_)
                                                       (if (gx#stx-pair?
                                                            _tl1389013983_)
                                                           (let ((_e1389714002_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl1389013983_)))
                     (let ((_hd1389814005_ (##car _e1389714002_))
                           (_tl1389914007_ (##cdr _e1389714002_)))
                       (if (gx#stx-pair? _hd1389814005_)
                           (let ((_e1390014010_ (gx#stx-e _hd1389814005_)))
                             (let ((_hd1390114013_ (##car _e1390014010_))
                                   (_tl1390214015_ (##cdr _e1390014010_)))
                               (if (gx#identifier? _hd1390114013_)
                                   (if (gx#stx-eq? '%#ref _hd1390114013_)
                                       (if (gx#stx-pair? _tl1390214015_)
                                           (let ((_e1390314018_
                                                  (gx#stx-e _tl1390214015_)))
                                             (let ((_hd1390414021_
                                                    (##car _e1390314018_))
                                                   (_tl1390514023_
                                                    (##cdr _e1390314018_)))
                                               (if (gx#stx-null?
                                                    _tl1390514023_)
                                                   (if (gx#stx-null?
                                                        _tl1389914007_)
                                                       ((lambda (_L14026_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L14027_
                         _L14028_
                         _L14029_)
                  (if (eq? (gxc#generate-runtime-binding-id
                            (gx#datum->syntax__0 '#f '-bind-method))
                           'bind-method!)
                      (gxc#optimizer-declare-method!__opt-lambda19131
                       (gxc#generate-runtime-binding-id _L14028_)
                       (gx#stx-e _L14027_)
                       (gxc#generate-runtime-binding-id _L14026_)
                       '#f)
                      (_g1380713917_ _g1380913920_)))
                _hd1390414021_
                _hd1389513997_
                _hd1388613973_
                _hd1387713949_)
               (_g1380713917_ _g1380913920_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1380713917_
                                                    _g1380913920_))))
                                           (_g1380713917_ _g1380913920_))
                                       (_g1380713917_ _g1380913920_))
                                   (_g1380713917_ _g1380913920_))))
                           (_g1380713917_ _g1380913920_))))
                   (_g1380713917_ _g1380913920_))
               (_g1380713917_ _g1380913920_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1380713917_ _g1380913920_))
                                           (_g1380713917_ _g1380913920_))
                                       (_g1380713917_ _g1380913920_))))
                               (_g1380713917_ _g1380913920_))))
                       (_g1380713917_ _g1380913920_))
                   (_g1380713917_ _g1380913920_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1380713917_
                                                    _g1380913920_))
                                               (_g1380713917_ _g1380913920_))
                                           (_g1380713917_ _g1380913920_))))
                                   (_g1380713917_ _g1380913920_))))
                           (_g1380713917_ _g1380913920_))
                       (_g1380713917_ _g1380913920_))))
               (_g1380713917_ _g1380913920_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1380713917_
                                                    _g1380913920_))
                                               (_g1380713917_ _g1380913920_))))
                                       (_g1380713917_ _g1380913920_))))
                               (_g1380713917_ _g1380913920_))))
                       (_g1380713917_ _g1380913920_)))))
            (let ((_g1380514247_
                   (lambda (_g1380914070_)
                     (if (gx#stx-pair? _g1380914070_)
                         (let ((_e1381514072_ (gx#stx-e _g1380914070_)))
                           (let ((_hd1381614075_ (##car _e1381514072_))
                                 (_tl1381714077_ (##cdr _e1381514072_)))
                             (if (gx#stx-pair? _tl1381714077_)
                                 (let ((_e1381814080_
                                        (gx#stx-e _tl1381714077_)))
                                   (let ((_hd1381914083_ (##car _e1381814080_))
                                         (_tl1382014085_
                                          (##cdr _e1381814080_)))
                                     (if (gx#stx-pair? _hd1381914083_)
                                         (let ((_e1382114088_
                                                (gx#stx-e _hd1381914083_)))
                                           (let ((_hd1382214091_
                                                  (##car _e1382114088_))
                                                 (_tl1382314093_
                                                  (##cdr _e1382114088_)))
                                             (if (gx#identifier?
                                                  _hd1382214091_)
                                                 (if (gx#stx-eq?
                                                      '%#ref
                                                      _hd1382214091_)
                                                     (if (gx#stx-pair?
                                                          _tl1382314093_)
                                                         (let ((_e1382414096_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1382314093_)))
                   (let ((_hd1382514099_ (##car _e1382414096_))
                         (_tl1382614101_ (##cdr _e1382414096_)))
                     (if (gx#stx-null? _tl1382614101_)
                         (if (gx#stx-pair? _tl1382014085_)
                             (let ((_e1382714104_ (gx#stx-e _tl1382014085_)))
                               (let ((_hd1382814107_ (##car _e1382714104_))
                                     (_tl1382914109_ (##cdr _e1382714104_)))
                                 (if (gx#stx-pair? _hd1382814107_)
                                     (let ((_e1383014112_
                                            (gx#stx-e _hd1382814107_)))
                                       (let ((_hd1383114115_
                                              (##car _e1383014112_))
                                             (_tl1383214117_
                                              (##cdr _e1383014112_)))
                                         (if (gx#identifier? _hd1383114115_)
                                             (if (gx#stx-eq?
                                                  '%#ref
                                                  _hd1383114115_)
                                                 (if (gx#stx-pair?
                                                      _tl1383214117_)
                                                     (let ((_e1383314120_
                                                            (gx#stx-e
                                                             _tl1383214117_)))
                                                       (let ((_hd1383414123_
                                                              (##car _e1383314120_))
                                                             (_tl1383514125_
                                                              (##cdr _e1383314120_)))
                                                         (if (gx#stx-null?
                                                              _tl1383514125_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1382914109_)
                         (let ((_e1383614128_ (gx#stx-e _tl1382914109_)))
                           (let ((_hd1383714131_ (##car _e1383614128_))
                                 (_tl1383814133_ (##cdr _e1383614128_)))
                             (if (gx#stx-pair? _hd1383714131_)
                                 (let ((_e1383914136_
                                        (gx#stx-e _hd1383714131_)))
                                   (let ((_hd1384014139_ (##car _e1383914136_))
                                         (_tl1384114141_
                                          (##cdr _e1383914136_)))
                                     (if (gx#identifier? _hd1384014139_)
                                         (if (gx#stx-eq?
                                              '%#quote
                                              _hd1384014139_)
                                             (if (gx#stx-pair? _tl1384114141_)
                                                 (let ((_e1384214144_
                                                        (gx#stx-e
                                                         _tl1384114141_)))
                                                   (let ((_hd1384314147_
                                                          (##car _e1384214144_))
                                                         (_tl1384414149_
                                                          (##cdr _e1384214144_)))
                                                     (if (gx#stx-null?
                                                          _tl1384414149_)
                                                         (if (gx#stx-pair?
                                                              _tl1383814133_)
                                                             (let ((_e1384514152_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl1383814133_)))
                       (let ((_hd1384614155_ (##car _e1384514152_))
                             (_tl1384714157_ (##cdr _e1384514152_)))
                         (if (gx#stx-pair? _hd1384614155_)
                             (let ((_e1384814160_ (gx#stx-e _hd1384614155_)))
                               (let ((_hd1384914163_ (##car _e1384814160_))
                                     (_tl1385014165_ (##cdr _e1384814160_)))
                                 (if (gx#identifier? _hd1384914163_)
                                     (if (gx#stx-eq? '%#ref _hd1384914163_)
                                         (if (gx#stx-pair? _tl1385014165_)
                                             (let ((_e1385114168_
                                                    (gx#stx-e _tl1385014165_)))
                                               (let ((_hd1385214171_
                                                      (##car _e1385114168_))
                                                     (_tl1385314173_
                                                      (##cdr _e1385114168_)))
                                                 (if (gx#stx-null?
                                                      _tl1385314173_)
                                                     (if (gx#stx-pair?
                                                          _tl1384714157_)
                                                         (let ((_e1385414176_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1384714157_)))
                   (let ((_hd1385514179_ (##car _e1385414176_))
                         (_tl1385614181_ (##cdr _e1385414176_)))
                     (if (gx#stx-pair? _hd1385514179_)
                         (let ((_e1385714184_ (gx#stx-e _hd1385514179_)))
                           (let ((_hd1385814187_ (##car _e1385714184_))
                                 (_tl1385914189_ (##cdr _e1385714184_)))
                             (if (gx#identifier? _hd1385814187_)
                                 (if (gx#stx-eq? '%#quote _hd1385814187_)
                                     (if (gx#stx-pair? _tl1385914189_)
                                         (let ((_e1386014192_
                                                (gx#stx-e _tl1385914189_)))
                                           (let ((_hd1386114195_
                                                  (##car _e1386014192_))
                                                 (_tl1386214197_
                                                  (##cdr _e1386014192_)))
                                             (if (gx#stx-null? _tl1386214197_)
                                                 (if (gx#stx-null?
                                                      _tl1385614181_)
                                                     ((lambda (_L14200_
                                                               _L14201_
                                                               _L14202_
                                                               _L14203_
                                                               _L14204_)
                                                        (if (eq? (gxc#generate-runtime-binding-id
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L14204_)
                         'bind-method!)
                    (gxc#optimizer-declare-method!__opt-lambda19131
                     (gxc#generate-runtime-binding-id _L14203_)
                     (gx#stx-e _L14202_)
                     (gxc#generate-runtime-binding-id _L14201_)
                     (gx#stx-e _L14200_))
                    (_g1380614067_ _g1380914070_)))
              _hd1386114195_
              _hd1385214171_
              _hd1384314147_
              _hd1383414123_
              _hd1382514099_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1380614067_
                                                      _g1380914070_))
                                                 (_g1380614067_
                                                  _g1380914070_))))
                                         (_g1380614067_ _g1380914070_))
                                     (_g1380614067_ _g1380914070_))
                                 (_g1380614067_ _g1380914070_))))
                         (_g1380614067_ _g1380914070_))))
                 (_g1380614067_ _g1380914070_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1380614067_
                                                      _g1380914070_))))
                                             (_g1380614067_ _g1380914070_))
                                         (_g1380614067_ _g1380914070_))
                                     (_g1380614067_ _g1380914070_))))
                             (_g1380614067_ _g1380914070_))))
                     (_g1380614067_ _g1380914070_))
                 (_g1380614067_ _g1380914070_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1380614067_ _g1380914070_))
                                             (_g1380614067_ _g1380914070_))
                                         (_g1380614067_ _g1380914070_))))
                                 (_g1380614067_ _g1380914070_))))
                         (_g1380614067_ _g1380914070_))
                     (_g1380614067_ _g1380914070_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1380614067_
                                                      _g1380914070_))
                                                 (_g1380614067_ _g1380914070_))
                                             (_g1380614067_ _g1380914070_))))
                                     (_g1380614067_ _g1380914070_))))
                             (_g1380614067_ _g1380914070_))
                         (_g1380614067_ _g1380914070_))))
                 (_g1380614067_ _g1380914070_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1380614067_
                                                      _g1380914070_))
                                                 (_g1380614067_
                                                  _g1380914070_))))
                                         (_g1380614067_ _g1380914070_))))
                                 (_g1380614067_ _g1380914070_))))
                         (_g1380614067_ _g1380914070_)))))
              (_g1380514247_ _stx13804_)))))))
  (define gxc#basic-expression-type-begin%
    (lambda (_stx13744_)
      (let ((_g1374713760_
             (lambda (_g1374813757_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1374813757_))))
        (let ((_g1374613767_ (lambda (_g1374813763_) ((lambda () '#f)))))
          (let ((_g1374513801_
                 (lambda (_g1374813770_)
                   (if (gx#stx-pair? _g1374813770_)
                       (let ((_e1375013772_ (gx#stx-e _g1374813770_)))
                         (let ((_hd1375113775_ (##car _e1375013772_))
                               (_tl1375213777_ (##cdr _e1375013772_)))
                           (if (gx#stx-pair? _tl1375213777_)
                               (let ((_e1375313780_ (gx#stx-e _tl1375213777_)))
                                 (let ((_hd1375413783_ (##car _e1375313780_))
                                       (_tl1375513785_ (##cdr _e1375313780_)))
                                   (if (gx#stx-null? _tl1375513785_)
                                       ((lambda (_L13788_)
                                          (gxc#compile-e _L13788_))
                                        _hd1375413783_)
                                       (_g1374613767_ _g1374813770_))))
                               (_g1374613767_ _g1374813770_))))
                       (_g1374613767_ _g1374813770_)))))
            (_g1374513801_ _stx13744_))))))
  (define gxc#basic-expression-type-lambda%
    (lambda (_stx13169_)
      (let ((_g1317413295_
             (lambda (_g1317513292_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1317513292_))))
        (let ((_g1317313302_ (lambda (_g1317513298_) ((lambda () '#f)))))
          (let ((_g1317213326_
                 (lambda (_g1317513305_)
                   (if (gx#stx-pair? _g1317513305_)
                       (let ((_e1328813307_ (gx#stx-e _g1317513305_)))
                         (let ((_hd1328913310_ (##car _e1328813307_))
                               (_tl1329013312_ (##cdr _e1328813307_)))
                           ((lambda (_L13315_)
                              (if (gxc#dispatch-lambda-form? _L13315_)
                                  (let ((__obj19383
                                         (make-object gxc#!lambda::t '5)))
                                    (begin
                                      (gxc#!lambda:::init!__0
                                       __obj19383
                                       'lambda
                                       (gxc#lambda-form-arity _L13315_)
                                       (gxc#dispatch-lambda-form-delegate
                                        _L13315_))
                                      __obj19383))
                                  (_g1317313302_ _g1317513305_)))
                            _tl1329013312_)))
                       (_g1317313302_ _g1317513305_)))))
            (let ((_g1317113556_
                   (lambda (_g1317513329_)
                     (if (gx#stx-pair? _g1317513329_)
                         (let ((_e1323313331_ (gx#stx-e _g1317513329_)))
                           (let ((_hd1323413334_ (##car _e1323313331_))
                                 (_tl1323513336_ (##cdr _e1323313331_)))
                             (if (gx#stx-pair? _tl1323513336_)
                                 (let ((_e1323613339_
                                        (gx#stx-e _tl1323513336_)))
                                   (let ((_hd1323713342_ (##car _e1323613339_))
                                         (_tl1323813344_
                                          (##cdr _e1323613339_)))
                                     (if (gx#stx-pair/null? _hd1323713342_)
                                         (if (fx>= (gx#stx-length
                                                    _hd1323713342_)
                                                   '0)
                                             (let ((_g19445_
                                                    (gx#syntax-split-splice
                                                     _hd1323713342_
                                                     '0)))
                                               (begin
                                                 (let ((_g19446_
                                                        (values-count
                                                         _g19445_)))
                                                   (if (not (fx= _g19446_ 2))
                                                       (error "Context expects 2 values"
                                                              _g19446_)))
                                                 (let ((_target1323913347_
                                                        (values-ref
                                                         _g19445_
                                                         0))
                                                       (_tl1324113349_
                                                        (values-ref
                                                         _g19445_
                                                         1)))
                                                   (if (gx#stx-null?
                                                        _tl1324113349_)
                                                       (letrec ((_loop1324213352_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd1324013355_ _arg1324613357_)
                           (if (gx#stx-pair? _hd1324013355_)
                               (let ((_e1324313360_ (gx#stx-e _hd1324013355_)))
                                 (let ((_lp-hd1324413363_
                                        (##car _e1324313360_))
                                       (_lp-tl1324513365_
                                        (##cdr _e1324313360_)))
                                   (_loop1324213352_
                                    _lp-tl1324513365_
                                    (cons _lp-hd1324413363_ _arg1324613357_))))
                               (let ((_arg1324713368_
                                      (reverse _arg1324613357_)))
                                 (if (gx#stx-pair? _tl1323813344_)
                                     (let ((_e1324813371_
                                            (gx#stx-e _tl1323813344_)))
                                       (let ((_hd1324913374_
                                              (##car _e1324813371_))
                                             (_tl1325013376_
                                              (##cdr _e1324813371_)))
                                         (if (gx#stx-pair? _hd1324913374_)
                                             (let ((_e1325113379_
                                                    (gx#stx-e _hd1324913374_)))
                                               (let ((_hd1325213382_
                                                      (##car _e1325113379_))
                                                     (_tl1325313384_
                                                      (##cdr _e1325113379_)))
                                                 (if (gx#identifier?
                                                      _hd1325213382_)
                                                     (if (gx#stx-eq?
                                                          '%#call
                                                          _hd1325213382_)
                                                         (if (gx#stx-pair?
                                                              _tl1325313384_)
                                                             (let ((_e1325413387_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl1325313384_)))
                       (let ((_hd1325513390_ (##car _e1325413387_))
                             (_tl1325613392_ (##cdr _e1325413387_)))
                         (if (gx#stx-pair? _hd1325513390_)
                             (let ((_e1325713395_ (gx#stx-e _hd1325513390_)))
                               (let ((_hd1325813398_ (##car _e1325713395_))
                                     (_tl1325913400_ (##cdr _e1325713395_)))
                                 (if (gx#identifier? _hd1325813398_)
                                     (if (gx#stx-eq? '%#ref _hd1325813398_)
                                         (if (gx#stx-pair? _tl1325913400_)
                                             (let ((_e1326013403_
                                                    (gx#stx-e _tl1325913400_)))
                                               (let ((_hd1326113406_
                                                      (##car _e1326013403_))
                                                     (_tl1326213408_
                                                      (##cdr _e1326013403_)))
                                                 (if (gx#stx-null?
                                                      _tl1326213408_)
                                                     (if (gx#stx-pair?
                                                          _tl1325613392_)
                                                         (let ((_e1326313411_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1325613392_)))
                   (let ((_hd1326413414_ (##car _e1326313411_))
                         (_tl1326513416_ (##cdr _e1326313411_)))
                     (if (gx#stx-pair? _hd1326413414_)
                         (let ((_e1326613419_ (gx#stx-e _hd1326413414_)))
                           (let ((_hd1326713422_ (##car _e1326613419_))
                                 (_tl1326813424_ (##cdr _e1326613419_)))
                             (if (gx#identifier? _hd1326713422_)
                                 (if (gx#stx-eq? '%#ref _hd1326713422_)
                                     (if (gx#stx-pair? _tl1326813424_)
                                         (let ((_e1326913427_
                                                (gx#stx-e _tl1326813424_)))
                                           (let ((_hd1327013430_
                                                  (##car _e1326913427_))
                                                 (_tl1327113432_
                                                  (##cdr _e1326913427_)))
                                             (if (gx#stx-null? _tl1327113432_)
                                                 (if (gx#stx-pair/null?
                                                      _tl1326513416_)
                                                     (if (fx>= (gx#stx-length
                                                                _tl1326513416_)
                                                               '0)
                                                         (let ((_g19447_
                                                                (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1326513416_
                         '0)))
                   (begin
                     (let ((_g19448_ (values-count _g19447_)))
                       (if (not (fx= _g19448_ 2))
                           (error "Context expects 2 values" _g19448_)))
                     (let ((_target1327213435_ (values-ref _g19447_ 0))
                           (_tl1327413437_ (values-ref _g19447_ 1)))
                       (if (gx#stx-null? _tl1327413437_)
                           (letrec ((_loop1327513440_
                                     (lambda (_hd1327313443_ _xarg1327913445_)
                                       (if (gx#stx-pair? _hd1327313443_)
                                           (let ((_e1327613448_
                                                  (gx#stx-e _hd1327313443_)))
                                             (let ((_lp-hd1327713451_
                                                    (##car _e1327613448_))
                                                   (_lp-tl1327813453_
                                                    (##cdr _e1327613448_)))
                                               (if (gx#stx-pair?
                                                    _lp-hd1327713451_)
                                                   (let ((_e1328113456_
                                                          (gx#stx-e
                                                           _lp-hd1327713451_)))
                                                     (let ((_hd1328213459_
                                                            (##car _e1328113456_))
                                                           (_tl1328313461_
                                                            (##cdr _e1328113456_)))
                                                       (if (gx#identifier?
                                                            _hd1328213459_)
                                                           (if (gx#stx-eq?
                                                                '%#ref
                                                                _hd1328213459_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl1328313461_)
                           (let ((_e1328413464_ (gx#stx-e _tl1328313461_)))
                             (let ((_hd1328513467_ (##car _e1328413464_))
                                   (_tl1328613469_ (##cdr _e1328413464_)))
                               (if (gx#stx-null? _tl1328613469_)
                                   (_loop1327513440_
                                    _lp-tl1327813453_
                                    (cons _hd1328513467_ _xarg1327913445_))
                                   (_g1317213326_ _g1317513329_))))
                           (_g1317213326_ _g1317513329_))
                       (_g1317213326_ _g1317513329_))
                   (_g1317213326_ _g1317513329_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1317213326_
                                                    _g1317513329_))))
                                           (let ((_xarg1328013472_
                                                  (reverse _xarg1327913445_)))
                                             (if (gx#stx-null? _tl1325013376_)
                                                 ((lambda (_L13475_
                                                           _L13476_
                                                           _L13477_
                                                           _L13478_)
                                                    (if (if (gx#identifier-list?
                                                             (begin
                                                               '#!void
                                                               (foldr1 (lambda (_g1351513518_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                        _g1351613520_)
                                 (cons _g1351513518_ _g1351613520_))
                               '()
                               _L13478_)))
                    (if (eq? (gxc#generate-runtime-binding-id _L13477_)
                             'make-struct-instance)
                        (if (fx= (length (begin
                                           '#!void
                                           (foldr1 (lambda (_g1352213525_
                                                            _g1352313527_)
                                                     (cons _g1352213525_
                                                           _g1352313527_))
                                                   '()
                                                   _L13478_)))
                                 (length (begin
                                           '#!void
                                           (foldr1 (lambda (_g1352913532_
                                                            _g1353013534_)
                                                     (cons _g1352913532_
                                                           _g1353013534_))
                                                   '()
                                                   _L13475_))))
                            (andmap gx#free-identifier=?
                                    (begin
                                      '#!void
                                      (foldr1 (lambda (_g1353613539_
                                                       _g1353713541_)
                                                (cons _g1353613539_
                                                      _g1353713541_))
                                              '()
                                              _L13478_))
                                    (begin
                                      '#!void
                                      (foldr1 (lambda (_g1354313546_
                                                       _g1354413548_)
                                                (cons _g1354313546_
                                                      _g1354413548_))
                                              '()
                                              _L13475_)))
                            '#f)
                        '#f)
                    '#f)
                (let ((_type-t13551_
                       (gxc#generate-runtime-binding-id _L13476_)))
                  (let ((_type13553_
                         (gxc#optimizer-resolve-type _type-t13551_)))
                    (let ()
                      (if (##structure-instance-of?
                           _type13553_
                           'gxc#!struct-type::t)
                          (##structure gxc#!struct-cons::t _type-t13551_)
                          '#f))))
                (_g1317213326_ _g1317513329_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _xarg1328013472_
                                                  _hd1327013430_
                                                  _hd1326113406_
                                                  _arg1324713368_)
                                                 (_g1317213326_
                                                  _g1317513329_)))))))
                             (_loop1327513440_ _target1327213435_ '()))
                           (_g1317213326_ _g1317513329_)))))
                 (_g1317213326_ _g1317513329_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1317213326_
                                                      _g1317513329_))
                                                 (_g1317213326_
                                                  _g1317513329_))))
                                         (_g1317213326_ _g1317513329_))
                                     (_g1317213326_ _g1317513329_))
                                 (_g1317213326_ _g1317513329_))))
                         (_g1317213326_ _g1317513329_))))
                 (_g1317213326_ _g1317513329_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1317213326_
                                                      _g1317513329_))))
                                             (_g1317213326_ _g1317513329_))
                                         (_g1317213326_ _g1317513329_))
                                     (_g1317213326_ _g1317513329_))))
                             (_g1317213326_ _g1317513329_))))
                     (_g1317213326_ _g1317513329_))
                 (_g1317213326_ _g1317513329_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1317213326_
                                                      _g1317513329_))))
                                             (_g1317213326_ _g1317513329_))))
                                     (_g1317213326_ _g1317513329_)))))))
                 (_loop1324213352_ _target1323913347_ '()))
               (_g1317213326_ _g1317513329_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g1317213326_ _g1317513329_))
                                         (_g1317213326_ _g1317513329_))))
                                 (_g1317213326_ _g1317513329_))))
                         (_g1317213326_ _g1317513329_)))))
              (let ((_g1317013741_
                     (lambda (_g1317513559_)
                       (if (gx#stx-pair? _g1317513559_)
                           (let ((_e1318113561_ (gx#stx-e _g1317513559_)))
                             (let ((_hd1318213564_ (##car _e1318113561_))
                                   (_tl1318313566_ (##cdr _e1318113561_)))
                               (if (gx#stx-pair? _tl1318313566_)
                                   (let ((_e1318413569_
                                          (gx#stx-e _tl1318313566_)))
                                     (let ((_hd1318513572_
                                            (##car _e1318413569_))
                                           (_tl1318613574_
                                            (##cdr _e1318413569_)))
                                       (if (gx#stx-pair? _tl1318613574_)
                                           (let ((_e1318713577_
                                                  (gx#stx-e _tl1318613574_)))
                                             (let ((_hd1318813580_
                                                    (##car _e1318713577_))
                                                   (_tl1318913582_
                                                    (##cdr _e1318713577_)))
                                               (if (gx#stx-pair?
                                                    _hd1318813580_)
                                                   (let ((_e1319013585_
                                                          (gx#stx-e
                                                           _hd1318813580_)))
                                                     (let ((_hd1319113588_
                                                            (##car _e1319013585_))
                                                           (_tl1319213590_
                                                            (##cdr _e1319013585_)))
                                                       (if (gx#identifier?
                                                            _hd1319113588_)
                                                           (if (gx#stx-eq?
                                                                '%#call
                                                                _hd1319113588_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl1319213590_)
                           (let ((_e1319313593_ (gx#stx-e _tl1319213590_)))
                             (let ((_hd1319413596_ (##car _e1319313593_))
                                   (_tl1319513598_ (##cdr _e1319313593_)))
                               (if (gx#stx-pair? _hd1319413596_)
                                   (let ((_e1319613601_
                                          (gx#stx-e _hd1319413596_)))
                                     (let ((_hd1319713604_
                                            (##car _e1319613601_))
                                           (_tl1319813606_
                                            (##cdr _e1319613601_)))
                                       (if (gx#identifier? _hd1319713604_)
                                           (if (gx#stx-eq?
                                                '%#ref
                                                _hd1319713604_)
                                               (if (gx#stx-pair?
                                                    _tl1319813606_)
                                                   (let ((_e1319913609_
                                                          (gx#stx-e
                                                           _tl1319813606_)))
                                                     (let ((_hd1320013612_
                                                            (##car _e1319913609_))
                                                           (_tl1320113614_
                                                            (##cdr _e1319913609_)))
                                                       (if (gx#stx-null?
                                                            _tl1320113614_)
                                                           (if (gx#stx-pair?
                                                                _tl1319513598_)
                                                               (let ((_e1320213617_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl1319513598_)))
                         (let ((_hd1320313620_ (##car _e1320213617_))
                               (_tl1320413622_ (##cdr _e1320213617_)))
                           (if (gx#stx-pair? _hd1320313620_)
                               (let ((_e1320513625_ (gx#stx-e _hd1320313620_)))
                                 (let ((_hd1320613628_ (##car _e1320513625_))
                                       (_tl1320713630_ (##cdr _e1320513625_)))
                                   (if (gx#identifier? _hd1320613628_)
                                       (if (gx#stx-eq? '%#ref _hd1320613628_)
                                           (if (gx#stx-pair? _tl1320713630_)
                                               (let ((_e1320813633_
                                                      (gx#stx-e
                                                       _tl1320713630_)))
                                                 (let ((_hd1320913636_
                                                        (##car _e1320813633_))
                                                       (_tl1321013638_
                                                        (##cdr _e1320813633_)))
                                                   (if (gx#stx-null?
                                                        _tl1321013638_)
                                                       (if (gx#stx-pair?
                                                            _tl1320413622_)
                                                           (let ((_e1321113641_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl1320413622_)))
                     (let ((_hd1321213644_ (##car _e1321113641_))
                           (_tl1321313646_ (##cdr _e1321113641_)))
                       (if (gx#stx-pair? _hd1321213644_)
                           (let ((_e1321413649_ (gx#stx-e _hd1321213644_)))
                             (let ((_hd1321513652_ (##car _e1321413649_))
                                   (_tl1321613654_ (##cdr _e1321413649_)))
                               (if (gx#identifier? _hd1321513652_)
                                   (if (gx#stx-eq? '%#ref _hd1321513652_)
                                       (if (gx#stx-pair? _tl1321613654_)
                                           (let ((_e1321713657_
                                                  (gx#stx-e _tl1321613654_)))
                                             (let ((_hd1321813660_
                                                    (##car _e1321713657_))
                                                   (_tl1321913662_
                                                    (##cdr _e1321713657_)))
                                               (if (gx#stx-null?
                                                    _tl1321913662_)
                                                   (if (gx#stx-pair?
                                                        _tl1321313646_)
                                                       (let ((_e1322013665_
                                                              (gx#stx-e
                                                               _tl1321313646_)))
                                                         (let ((_hd1322113668_
                                                                (##car _e1322013665_))
                                                               (_tl1322213670_
                                                                (##cdr _e1322013665_)))
                                                           (if (gx#stx-pair?
                                                                _hd1322113668_)
                                                               (let ((_e1322313673_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd1322113668_)))
                         (let ((_hd1322413676_ (##car _e1322313673_))
                               (_tl1322513678_ (##cdr _e1322313673_)))
                           (if (gx#identifier? _hd1322413676_)
                               (if (gx#stx-eq? '%#ref _hd1322413676_)
                                   (if (gx#stx-pair? _tl1322513678_)
                                       (let ((_e1322613681_
                                              (gx#stx-e _tl1322513678_)))
                                         (let ((_hd1322713684_
                                                (##car _e1322613681_))
                                               (_tl1322813686_
                                                (##cdr _e1322613681_)))
                                           (if (gx#stx-null? _tl1322813686_)
                                               (if (gx#stx-null?
                                                    _tl1322213670_)
                                                   (if (gx#stx-null?
                                                        _tl1318913582_)
                                                       ((lambda (_L13689_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L13690_
                         _L13691_
                         _L13692_
                         _L13693_)
                  (if (if (gx#identifier? _L13693_)
                          (if (eq? (gxc#generate-runtime-binding-id _L13692_)
                                   'apply)
                              (if (eq? (gxc#generate-runtime-binding-id
                                        _L13691_)
                                       'make-struct-instance)
                                  (gx#free-identifier=? _L13693_ _L13689_)
                                  '#f)
                              '#f)
                          '#f)
                      (let ((_type-t13736_
                             (gxc#generate-runtime-binding-id _L13690_)))
                        (let ((_type13738_
                               (gxc#optimizer-resolve-type _type-t13736_)))
                          (let ()
                            (if (##structure-instance-of?
                                 _type13738_
                                 'gxc#!struct-type::t)
                                (##structure gxc#!struct-cons::t _type-t13736_)
                                '#f))))
                      (_g1317113556_ _g1317513559_)))
                _hd1322713684_
                _hd1321813660_
                _hd1320913636_
                _hd1320013612_
                _hd1318513572_)
               (_g1317113556_ _g1317513559_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1317113556_
                                                    _g1317513559_))
                                               (_g1317113556_ _g1317513559_))))
                                       (_g1317113556_ _g1317513559_))
                                   (_g1317113556_ _g1317513559_))
                               (_g1317113556_ _g1317513559_))))
                       (_g1317113556_ _g1317513559_))))
               (_g1317113556_ _g1317513559_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1317113556_
                                                    _g1317513559_))))
                                           (_g1317113556_ _g1317513559_))
                                       (_g1317113556_ _g1317513559_))
                                   (_g1317113556_ _g1317513559_))))
                           (_g1317113556_ _g1317513559_))))
                   (_g1317113556_ _g1317513559_))
               (_g1317113556_ _g1317513559_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1317113556_ _g1317513559_))
                                           (_g1317113556_ _g1317513559_))
                                       (_g1317113556_ _g1317513559_))))
                               (_g1317113556_ _g1317513559_))))
                       (_g1317113556_ _g1317513559_))
                   (_g1317113556_ _g1317513559_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1317113556_
                                                    _g1317513559_))
                                               (_g1317113556_ _g1317513559_))
                                           (_g1317113556_ _g1317513559_))))
                                   (_g1317113556_ _g1317513559_))))
                           (_g1317113556_ _g1317513559_))
                       (_g1317113556_ _g1317513559_))
                   (_g1317113556_ _g1317513559_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1317113556_
                                                    _g1317513559_))))
                                           (_g1317113556_ _g1317513559_))))
                                   (_g1317113556_ _g1317513559_))))
                           (_g1317113556_ _g1317513559_)))))
                (_g1317013741_ _stx13169_))))))))
  (define gxc#basic-expression-type-case-lambda%
    (lambda (_stx13115_)
      (let ((_clause-e13117_
             (lambda (_form13167_)
               (let ((__obj19384 (make-object gxc#!lambda::t '5)))
                 (begin
                   (gxc#!lambda:::init!__0
                    __obj19384
                    'case-lambda-clause
                    (gxc#lambda-form-arity _form13167_)
                    (gxc#dispatch-lambda-form-delegate _form13167_))
                   __obj19384)))))
        (let ((_g1312013130_
               (lambda (_g1312113127_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1312113127_))))
          (let ((_g1311913137_ (lambda (_g1312113133_) ((lambda () '#f)))))
            (let ((_g1311813164_
                   (lambda (_g1312113140_)
                     (if (gx#stx-pair? _g1312113140_)
                         (let ((_e1312313142_ (gx#stx-e _g1312113140_)))
                           (let ((_hd1312413145_ (##car _e1312313142_))
                                 (_tl1312513147_ (##cdr _e1312313142_)))
                             ((lambda (_L13150_)
                                (if (andmap1 gxc#dispatch-lambda-form?
                                             _L13150_)
                                    (let ((_clauses13162_
                                           (map _clause-e13117_ _L13150_)))
                                      (##structure
                                       gxc#!case-lambda::t
                                       'case-lambda
                                       _clauses13162_))
                                    (_g1311913137_ _g1312113140_)))
                              _tl1312513147_)))
                         (_g1311913137_ _g1312113140_)))))
              (_g1311813164_ _stx13115_)))))))
  (define gxc#basic-expression-type-builtin (make-hash-table-eq))
  (define gxc#basic-expression-type-call%
    (lambda (_stx13020_)
      (let ((_g1302313043_
             (lambda (_g1302413040_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1302413040_))))
        (let ((_g1302213050_ (lambda (_g1302413046_) ((lambda () '#f)))))
          (let ((_g1302113112_
                 (lambda (_g1302413053_)
                   (if (gx#stx-pair? _g1302413053_)
                       (let ((_e1302713055_ (gx#stx-e _g1302413053_)))
                         (let ((_hd1302813058_ (##car _e1302713055_))
                               (_tl1302913060_ (##cdr _e1302713055_)))
                           (if (gx#stx-pair? _tl1302913060_)
                               (let ((_e1303013063_ (gx#stx-e _tl1302913060_)))
                                 (let ((_hd1303113066_ (##car _e1303013063_))
                                       (_tl1303213068_ (##cdr _e1303013063_)))
                                   (if (gx#stx-pair? _hd1303113066_)
                                       (let ((_e1303313071_
                                              (gx#stx-e _hd1303113066_)))
                                         (let ((_hd1303413074_
                                                (##car _e1303313071_))
                                               (_tl1303513076_
                                                (##cdr _e1303313071_)))
                                           (if (gx#identifier? _hd1303413074_)
                                               (if (gx#stx-eq?
                                                    '%#ref
                                                    _hd1303413074_)
                                                   (if (gx#stx-pair?
                                                        _tl1303513076_)
                                                       (let ((_e1303613079_
                                                              (gx#stx-e
                                                               _tl1303513076_)))
                                                         (let ((_hd1303713082_
                                                                (##car _e1303613079_))
                                                               (_tl1303813084_
                                                                (##cdr _e1303613079_)))
                                                           (if (gx#stx-null?
                                                                _tl1303813084_)
                                                               ((lambda (_L13087_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _L13088_)
                          (let ((_type-e1310513107_
                                 (table-ref
                                  gxc#basic-expression-type-builtin
                                  (gxc#generate-runtime-binding-id _L13088_)
                                  '#f)))
                            (if _type-e1310513107_
                                (let ((_type-e13110_ _type-e1310513107_))
                                  (_type-e13110_ _stx13020_ _L13087_))
                                '#f)))
                        _tl1303213068_
                        _hd1303713082_)
                       (_g1302213050_ _g1302413053_))))
               (_g1302213050_ _g1302413053_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1302213050_
                                                    _g1302413053_))
                                               (_g1302213050_ _g1302413053_))))
                                       (_g1302213050_ _g1302413053_))))
                               (_g1302213050_ _g1302413053_))))
                       (_g1302213050_ _g1302413053_)))))
            (_g1302113112_ _stx13020_))))))
  (define gxc#basic-expression-type-make-struct-type
    (lambda (_stx12505_ _args12506_)
      (let ((_g1251012623_
             (lambda (_g1251112620_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1251112620_))))
        (let ((_g1250912630_
               (lambda (_g1251112626_)
                 ((lambda ()
                    (begin
                      (gxc#verbose
                       '"make-struct-type: can't infer type "
                       (gx#syntax->datum _stx12505_))
                      '#f))))))
          (let ((_g1250812837_
                 (lambda (_g1251112633_)
                   (if (gx#stx-pair? _g1251112633_)
                       (let ((_e1257112635_ (gx#stx-e _g1251112633_)))
                         (let ((_hd1257212638_ (##car _e1257112635_))
                               (_tl1257312640_ (##cdr _e1257112635_)))
                           (if (gx#stx-pair? _hd1257212638_)
                               (let ((_e1257412643_ (gx#stx-e _hd1257212638_)))
                                 (let ((_hd1257512646_ (##car _e1257412643_))
                                       (_tl1257612648_ (##cdr _e1257412643_)))
                                   (if (gx#identifier? _hd1257512646_)
                                       (if (gx#stx-eq? '%#quote _hd1257512646_)
                                           (if (gx#stx-pair? _tl1257612648_)
                                               (let ((_e1257712651_
                                                      (gx#stx-e
                                                       _tl1257612648_)))
                                                 (let ((_hd1257812654_
                                                        (##car _e1257712651_))
                                                       (_tl1257912656_
                                                        (##cdr _e1257712651_)))
                                                   (if (gx#stx-null?
                                                        _tl1257912656_)
                                                       (if (gx#stx-pair?
                                                            _tl1257312640_)
                                                           (let ((_e1258012659_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl1257312640_)))
                     (let ((_hd1258112662_ (##car _e1258012659_))
                           (_tl1258212664_ (##cdr _e1258012659_)))
                       (if (gx#stx-pair? _hd1258112662_)
                           (let ((_e1258312667_ (gx#stx-e _hd1258112662_)))
                             (let ((_hd1258412670_ (##car _e1258312667_))
                                   (_tl1258512672_ (##cdr _e1258312667_)))
                               (if (gx#identifier? _hd1258412670_)
                                   (if (gx#stx-eq? '%#ref _hd1258412670_)
                                       (if (gx#stx-pair? _tl1258512672_)
                                           (let ((_e1258612675_
                                                  (gx#stx-e _tl1258512672_)))
                                             (let ((_hd1258712678_
                                                    (##car _e1258612675_))
                                                   (_tl1258812680_
                                                    (##cdr _e1258612675_)))
                                               (if (gx#stx-null?
                                                    _tl1258812680_)
                                                   (if (gx#stx-pair?
                                                        _tl1258212664_)
                                                       (let ((_e1258912683_
                                                              (gx#stx-e
                                                               _tl1258212664_)))
                                                         (let ((_hd1259012686_
                                                                (##car _e1258912683_))
                                                               (_tl1259112688_
                                                                (##cdr _e1258912683_)))
                                                           (if (gx#stx-pair?
                                                                _hd1259012686_)
                                                               (let ((_e1259212691_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd1259012686_)))
                         (let ((_hd1259312694_ (##car _e1259212691_))
                               (_tl1259412696_ (##cdr _e1259212691_)))
                           (if (gx#identifier? _hd1259312694_)
                               (if (gx#stx-eq? '%#quote _hd1259312694_)
                                   (if (gx#stx-pair? _tl1259412696_)
                                       (let ((_e1259512699_
                                              (gx#stx-e _tl1259412696_)))
                                         (let ((_hd1259612702_
                                                (##car _e1259512699_))
                                               (_tl1259712704_
                                                (##cdr _e1259512699_)))
                                           (if (gx#stx-null? _tl1259712704_)
                                               (if (gx#stx-pair?
                                                    _tl1259112688_)
                                                   (let ((_e1259812707_
                                                          (gx#stx-e
                                                           _tl1259112688_)))
                                                     (let ((_hd1259912710_
                                                            (##car _e1259812707_))
                                                           (_tl1260012712_
                                                            (##cdr _e1259812707_)))
                                                       (if (gx#stx-pair?
                                                            _tl1260012712_)
                                                           (let ((_e1260112715_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl1260012712_)))
                     (let ((_hd1260212718_ (##car _e1260112715_))
                           (_tl1260312720_ (##cdr _e1260112715_)))
                       (if (gx#stx-pair? _hd1260212718_)
                           (let ((_e1260412723_ (gx#stx-e _hd1260212718_)))
                             (let ((_hd1260512726_ (##car _e1260412723_))
                                   (_tl1260612728_ (##cdr _e1260412723_)))
                               (if (gx#identifier? _hd1260512726_)
                                   (if (gx#stx-eq? '%#quote _hd1260512726_)
                                       (if (gx#stx-pair? _tl1260612728_)
                                           (let ((_e1260712731_
                                                  (gx#stx-e _tl1260612728_)))
                                             (let ((_hd1260812734_
                                                    (##car _e1260712731_))
                                                   (_tl1260912736_
                                                    (##cdr _e1260712731_)))
                                               (if (gx#stx-null?
                                                    _tl1260912736_)
                                                   (if (gx#stx-pair?
                                                        _tl1260312720_)
                                                       (let ((_e1261012739_
                                                              (gx#stx-e
                                                               _tl1260312720_)))
                                                         (let ((_hd1261112742_
                                                                (##car _e1261012739_))
                                                               (_tl1261212744_
                                                                (##cdr _e1261012739_)))
                                                           (if (gx#stx-pair?
                                                                _hd1261112742_)
                                                               (let ((_e1261312747_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd1261112742_)))
                         (let ((_hd1261412750_ (##car _e1261312747_))
                               (_tl1261512752_ (##cdr _e1261312747_)))
                           (if (gx#identifier? _hd1261412750_)
                               (if (gx#stx-eq? '%#quote _hd1261412750_)
                                   (if (gx#stx-pair? _tl1261512752_)
                                       (let ((_e1261612755_
                                              (gx#stx-e _tl1261512752_)))
                                         (let ((_hd1261712758_
                                                (##car _e1261612755_))
                                               (_tl1261812760_
                                                (##cdr _e1261612755_)))
                                           (if (gx#stx-null? _tl1261812760_)
                                               (if (gx#stx-null?
                                                    _tl1261212744_)
                                                   ((lambda (_L12763_
                                                             _L12764_
                                                             _L12765_
                                                             _L12766_
                                                             _L12767_
                                                             _L12768_)
                                                      (let ((_super-t12814_
                                                             (if (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L12767_)
                         (gxc#generate-runtime-binding-id _L12767_)
                         '#f)))
                (let ((_super-type12816_
                       (if _super-t12814_
                           (gxc#optimizer-resolve-type _super-t12814_)
                           '#f)))
                  (let ()
                    (begin
                      (if (if _super-type12816_
                              (not (##structure-instance-of?
                                    _super-type12816_
                                    'gxc#!struct-type::t))
                              '#f)
                          (gxc#raise-compile-error
                           '"Illegal struct-type construction; invalid super type"
                           _stx12505_
                           _L12767_)
                          '#!void)
                      (let ((_fields12832_ (gx#stx-e _L12766_))
                            (_xfields12833_
                             (if _super-type12816_
                                 (let ((_super-fields1281812821_
                                        (##structure-ref
                                         _super-type12816_
                                         '3
                                         gxc#!struct-type::t
                                         '#f))
                                       (_super-xfields1281912823_
                                        (##structure-ref
                                         _super-type12816_
                                         '4
                                         gxc#!struct-type::t
                                         '#f)))
                                   (if _super-fields1281812821_
                                       (if _super-xfields1281912823_
                                           (let ((_super-fields12826_
                                                  _super-fields1281812821_)
                                                 (_super-xfields12827_
                                                  _super-xfields1281912823_))
                                             (fx+ _super-fields12826_
                                                  _super-xfields12827_))
                                           '#f)
                                       '#f))
                                 '#f))
                            (_plist12834_ (gx#stx-e _L12764_))
                            (_ctor12835_
                             (let ((_$e12829_ (gx#stx-e _L12763_)))
                               (if _$e12829_
                                   (values _$e12829_)
                                   (if _super-type12816_
                                       (##structure-ref
                                        _super-type12816_
                                        '5
                                        gxc#!struct-type::t
                                        '#f)
                                       (if _super-t12814_ '#!void '#f))))))
                        (let ((__obj19385
                               (make-object gxc#!struct-type::t '7)))
                          (begin
                            (gxc#!struct-type:::init!
                             __obj19385
                             (gx#stx-e _L12768_)
                             _super-t12814_
                             _fields12832_
                             _xfields12833_
                             _ctor12835_
                             _plist12834_)
                            __obj19385))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd1261712758_
                                                    _hd1260812734_
                                                    _hd1259912710_
                                                    _hd1259612702_
                                                    _hd1258712678_
                                                    _hd1257812654_)
                                                   (_g1250912630_
                                                    _g1251112633_))
                                               (_g1250912630_ _g1251112633_))))
                                       (_g1250912630_ _g1251112633_))
                                   (_g1250912630_ _g1251112633_))
                               (_g1250912630_ _g1251112633_))))
                       (_g1250912630_ _g1251112633_))))
               (_g1250912630_ _g1251112633_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1250912630_
                                                    _g1251112633_))))
                                           (_g1250912630_ _g1251112633_))
                                       (_g1250912630_ _g1251112633_))
                                   (_g1250912630_ _g1251112633_))))
                           (_g1250912630_ _g1251112633_))))
                   (_g1250912630_ _g1251112633_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1250912630_
                                                    _g1251112633_))
                                               (_g1250912630_ _g1251112633_))))
                                       (_g1250912630_ _g1251112633_))
                                   (_g1250912630_ _g1251112633_))
                               (_g1250912630_ _g1251112633_))))
                       (_g1250912630_ _g1251112633_))))
               (_g1250912630_ _g1251112633_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1250912630_
                                                    _g1251112633_))))
                                           (_g1250912630_ _g1251112633_))
                                       (_g1250912630_ _g1251112633_))
                                   (_g1250912630_ _g1251112633_))))
                           (_g1250912630_ _g1251112633_))))
                   (_g1250912630_ _g1251112633_))
               (_g1250912630_ _g1251112633_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1250912630_ _g1251112633_))
                                           (_g1250912630_ _g1251112633_))
                                       (_g1250912630_ _g1251112633_))))
                               (_g1250912630_ _g1251112633_))))
                       (_g1250912630_ _g1251112633_)))))
            (let ((_g1250713017_
                   (lambda (_g1251112840_)
                     (if (gx#stx-pair? _g1251112840_)
                         (let ((_e1251712842_ (gx#stx-e _g1251112840_)))
                           (let ((_hd1251812845_ (##car _e1251712842_))
                                 (_tl1251912847_ (##cdr _e1251712842_)))
                             (if (gx#stx-pair? _hd1251812845_)
                                 (let ((_e1252012850_
                                        (gx#stx-e _hd1251812845_)))
                                   (let ((_hd1252112853_ (##car _e1252012850_))
                                         (_tl1252212855_
                                          (##cdr _e1252012850_)))
                                     (if (gx#identifier? _hd1252112853_)
                                         (if (gx#stx-eq?
                                              '%#quote
                                              _hd1252112853_)
                                             (if (gx#stx-pair? _tl1252212855_)
                                                 (let ((_e1252312858_
                                                        (gx#stx-e
                                                         _tl1252212855_)))
                                                   (let ((_hd1252412861_
                                                          (##car _e1252312858_))
                                                         (_tl1252512863_
                                                          (##cdr _e1252312858_)))
                                                     (if (gx#stx-null?
                                                          _tl1252512863_)
                                                         (if (gx#stx-pair?
                                                              _tl1251912847_)
                                                             (let ((_e1252612866_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl1251912847_)))
                       (let ((_hd1252712869_ (##car _e1252612866_))
                             (_tl1252812871_ (##cdr _e1252612866_)))
                         (if (gx#stx-pair? _hd1252712869_)
                             (let ((_e1252912874_ (gx#stx-e _hd1252712869_)))
                               (let ((_hd1253012877_ (##car _e1252912874_))
                                     (_tl1253112879_ (##cdr _e1252912874_)))
                                 (if (gx#identifier? _hd1253012877_)
                                     (if (gx#stx-eq? '%#quote _hd1253012877_)
                                         (if (gx#stx-pair? _tl1253112879_)
                                             (let ((_e1253212882_
                                                    (gx#stx-e _tl1253112879_)))
                                               (let ((_hd1253312885_
                                                      (##car _e1253212882_))
                                                     (_tl1253412887_
                                                      (##cdr _e1253212882_)))
                                                 (if (gx#stx-datum?
                                                      _hd1253312885_)
                                                     (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd1253312885_)
                         '#f)
                 (if (gx#stx-null? _tl1253412887_)
                     (if (gx#stx-pair? _tl1252812871_)
                         (let ((_e1253512890_ (gx#stx-e _tl1252812871_)))
                           (let ((_hd1253612893_ (##car _e1253512890_))
                                 (_tl1253712895_ (##cdr _e1253512890_)))
                             (if (gx#stx-pair? _hd1253612893_)
                                 (let ((_e1253812898_
                                        (gx#stx-e _hd1253612893_)))
                                   (let ((_hd1253912901_ (##car _e1253812898_))
                                         (_tl1254012903_
                                          (##cdr _e1253812898_)))
                                     (if (gx#identifier? _hd1253912901_)
                                         (if (gx#stx-eq?
                                              '%#quote
                                              _hd1253912901_)
                                             (if (gx#stx-pair? _tl1254012903_)
                                                 (let ((_e1254112906_
                                                        (gx#stx-e
                                                         _tl1254012903_)))
                                                   (let ((_hd1254212909_
                                                          (##car _e1254112906_))
                                                         (_tl1254312911_
                                                          (##cdr _e1254112906_)))
                                                     (if (gx#stx-null?
                                                          _tl1254312911_)
                                                         (if (gx#stx-pair?
                                                              _tl1253712895_)
                                                             (let ((_e1254412914_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl1253712895_)))
                       (let ((_hd1254512917_ (##car _e1254412914_))
                             (_tl1254612919_ (##cdr _e1254412914_)))
                         (if (gx#stx-pair? _tl1254612919_)
                             (let ((_e1254712922_ (gx#stx-e _tl1254612919_)))
                               (let ((_hd1254812925_ (##car _e1254712922_))
                                     (_tl1254912927_ (##cdr _e1254712922_)))
                                 (if (gx#stx-pair? _hd1254812925_)
                                     (let ((_e1255012930_
                                            (gx#stx-e _hd1254812925_)))
                                       (let ((_hd1255112933_
                                              (##car _e1255012930_))
                                             (_tl1255212935_
                                              (##cdr _e1255012930_)))
                                         (if (gx#identifier? _hd1255112933_)
                                             (if (gx#stx-eq?
                                                  '%#quote
                                                  _hd1255112933_)
                                                 (if (gx#stx-pair?
                                                      _tl1255212935_)
                                                     (let ((_e1255312938_
                                                            (gx#stx-e
                                                             _tl1255212935_)))
                                                       (let ((_hd1255412941_
                                                              (##car _e1255312938_))
                                                             (_tl1255512943_
                                                              (##cdr _e1255312938_)))
                                                         (if (gx#stx-null?
                                                              _tl1255512943_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1254912927_)
                         (let ((_e1255612946_ (gx#stx-e _tl1254912927_)))
                           (let ((_hd1255712949_ (##car _e1255612946_))
                                 (_tl1255812951_ (##cdr _e1255612946_)))
                             (if (gx#stx-pair? _hd1255712949_)
                                 (let ((_e1255912954_
                                        (gx#stx-e _hd1255712949_)))
                                   (let ((_hd1256012957_ (##car _e1255912954_))
                                         (_tl1256112959_
                                          (##cdr _e1255912954_)))
                                     (if (gx#identifier? _hd1256012957_)
                                         (if (gx#stx-eq?
                                              '%#quote
                                              _hd1256012957_)
                                             (if (gx#stx-pair? _tl1256112959_)
                                                 (let ((_e1256212962_
                                                        (gx#stx-e
                                                         _tl1256112959_)))
                                                   (let ((_hd1256312965_
                                                          (##car _e1256212962_))
                                                         (_tl1256412967_
                                                          (##cdr _e1256212962_)))
                                                     (if (gx#stx-null?
                                                          _tl1256412967_)
                                                         (if (gx#stx-null?
                                                              _tl1255812951_)
                                                             ((lambda (_L12970_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L12971_
                               _L12972_
                               _L12973_
                               _L12974_)
                        (let ((__obj19386
                               (make-object gxc#!struct-type::t '7)))
                          (begin
                            (gxc#!struct-type:::init!
                             __obj19386
                             (gx#stx-e _L12974_)
                             '#f
                             (gx#stx-e _L12973_)
                             '0
                             (gx#stx-e _L12970_)
                             (gx#stx-e _L12971_))
                            __obj19386)))
                      _hd1256312965_
                      _hd1255412941_
                      _hd1254512917_
                      _hd1254212909_
                      _hd1252412861_)
                     (_g1250812837_ _g1251112840_))
                 (_g1250812837_ _g1251112840_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1250812837_ _g1251112840_))
                                             (_g1250812837_ _g1251112840_))
                                         (_g1250812837_ _g1251112840_))))
                                 (_g1250812837_ _g1251112840_))))
                         (_g1250812837_ _g1251112840_))
                     (_g1250812837_ _g1251112840_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1250812837_
                                                      _g1251112840_))
                                                 (_g1250812837_ _g1251112840_))
                                             (_g1250812837_ _g1251112840_))))
                                     (_g1250812837_ _g1251112840_))))
                             (_g1250812837_ _g1251112840_))))
                     (_g1250812837_ _g1251112840_))
                 (_g1250812837_ _g1251112840_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1250812837_ _g1251112840_))
                                             (_g1250812837_ _g1251112840_))
                                         (_g1250812837_ _g1251112840_))))
                                 (_g1250812837_ _g1251112840_))))
                         (_g1250812837_ _g1251112840_))
                     (_g1250812837_ _g1251112840_))
                 (_g1250812837_ _g1251112840_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1250812837_
                                                      _g1251112840_))))
                                             (_g1250812837_ _g1251112840_))
                                         (_g1250812837_ _g1251112840_))
                                     (_g1250812837_ _g1251112840_))))
                             (_g1250812837_ _g1251112840_))))
                     (_g1250812837_ _g1251112840_))
                 (_g1250812837_ _g1251112840_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1250812837_ _g1251112840_))
                                             (_g1250812837_ _g1251112840_))
                                         (_g1250812837_ _g1251112840_))))
                                 (_g1250812837_ _g1251112840_))))
                         (_g1250812837_ _g1251112840_)))))
              (_g1250713017_ _args12506_)))))))
  (define gxc#basic-expression-type-make-struct-predicate
    (lambda (_stx12431_ _args12432_)
      (let ((_g1243512451_
             (lambda (_g1243612448_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1243612448_))))
        (let ((_g1243412458_ (lambda (_g1243612454_) ((lambda () '#f)))))
          (let ((_g1243312502_
                 (lambda (_g1243612461_)
                   (if (gx#stx-pair? _g1243612461_)
                       (let ((_e1243812463_ (gx#stx-e _g1243612461_)))
                         (let ((_hd1243912466_ (##car _e1243812463_))
                               (_tl1244012468_ (##cdr _e1243812463_)))
                           (if (gx#stx-pair? _hd1243912466_)
                               (let ((_e1244112471_ (gx#stx-e _hd1243912466_)))
                                 (let ((_hd1244212474_ (##car _e1244112471_))
                                       (_tl1244312476_ (##cdr _e1244112471_)))
                                   (if (gx#identifier? _hd1244212474_)
                                       (if (gx#stx-eq? '%#ref _hd1244212474_)
                                           (if (gx#stx-pair? _tl1244312476_)
                                               (let ((_e1244412479_
                                                      (gx#stx-e
                                                       _tl1244312476_)))
                                                 (let ((_hd1244512482_
                                                        (##car _e1244412479_))
                                                       (_tl1244612484_
                                                        (##cdr _e1244412479_)))
                                                   (if (gx#stx-null?
                                                        _tl1244612484_)
                                                       (if (gx#stx-null?
                                                            _tl1244012468_)
                                                           ((lambda (_L12487_)
                                                              (##structure
                                                               gxc#!struct-pred::t
                                                               (gxc#generate-runtime-binding-id
                                                                _L12487_)))
                                                            _hd1244512482_)
                                                           (_g1243412458_
                                                            _g1243612461_))
                                                       (_g1243412458_
                                                        _g1243612461_))))
                                               (_g1243412458_ _g1243612461_))
                                           (_g1243412458_ _g1243612461_))
                                       (_g1243412458_ _g1243612461_))))
                               (_g1243412458_ _g1243612461_))))
                       (_g1243412458_ _g1243612461_)))))
            (_g1243312502_ _args12432_))))))
  (define gxc#basic-expression-type-make-struct-field-accessor
    (lambda (_stx12315_ _args12316_)
      (let ((_g1231912345_
             (lambda (_g1232012342_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1232012342_))))
        (let ((_g1231812352_ (lambda (_g1232012348_) ((lambda () '#f)))))
          (let ((_g1231712428_
                 (lambda (_g1232012355_)
                   (if (gx#stx-pair? _g1232012355_)
                       (let ((_e1232312357_ (gx#stx-e _g1232012355_)))
                         (let ((_hd1232412360_ (##car _e1232312357_))
                               (_tl1232512362_ (##cdr _e1232312357_)))
                           (if (gx#stx-pair? _hd1232412360_)
                               (let ((_e1232612365_ (gx#stx-e _hd1232412360_)))
                                 (let ((_hd1232712368_ (##car _e1232612365_))
                                       (_tl1232812370_ (##cdr _e1232612365_)))
                                   (if (gx#identifier? _hd1232712368_)
                                       (if (gx#stx-eq? '%#ref _hd1232712368_)
                                           (if (gx#stx-pair? _tl1232812370_)
                                               (let ((_e1232912373_
                                                      (gx#stx-e
                                                       _tl1232812370_)))
                                                 (let ((_hd1233012376_
                                                        (##car _e1232912373_))
                                                       (_tl1233112378_
                                                        (##cdr _e1232912373_)))
                                                   (if (gx#stx-null?
                                                        _tl1233112378_)
                                                       (if (gx#stx-pair?
                                                            _tl1232512362_)
                                                           (let ((_e1233212381_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl1232512362_)))
                     (let ((_hd1233312384_ (##car _e1233212381_))
                           (_tl1233412386_ (##cdr _e1233212381_)))
                       (if (gx#stx-pair? _hd1233312384_)
                           (let ((_e1233512389_ (gx#stx-e _hd1233312384_)))
                             (let ((_hd1233612392_ (##car _e1233512389_))
                                   (_tl1233712394_ (##cdr _e1233512389_)))
                               (if (gx#identifier? _hd1233612392_)
                                   (if (gx#stx-eq? '%#quote _hd1233612392_)
                                       (if (gx#stx-pair? _tl1233712394_)
                                           (let ((_e1233812397_
                                                  (gx#stx-e _tl1233712394_)))
                                             (let ((_hd1233912400_
                                                    (##car _e1233812397_))
                                                   (_tl1234012402_
                                                    (##cdr _e1233812397_)))
                                               (if (gx#stx-null?
                                                    _tl1234012402_)
                                                   (if (gx#stx-null?
                                                        _tl1233412386_)
                                                       ((lambda (_L12405_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L12406_)
                  (##structure
                   gxc#!struct-getf::t
                   (gxc#generate-runtime-binding-id _L12406_)
                   (gx#stx-e _L12405_)))
                _hd1233912400_
                _hd1233012376_)
               (_g1231812352_ _g1232012355_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1231812352_
                                                    _g1232012355_))))
                                           (_g1231812352_ _g1232012355_))
                                       (_g1231812352_ _g1232012355_))
                                   (_g1231812352_ _g1232012355_))))
                           (_g1231812352_ _g1232012355_))))
                   (_g1231812352_ _g1232012355_))
               (_g1231812352_ _g1232012355_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1231812352_ _g1232012355_))
                                           (_g1231812352_ _g1232012355_))
                                       (_g1231812352_ _g1232012355_))))
                               (_g1231812352_ _g1232012355_))))
                       (_g1231812352_ _g1232012355_)))))
            (_g1231712428_ _args12316_))))))
  (define gxc#basic-expression-type-make-struct-field-mutator
    (lambda (_stx12199_ _args12200_)
      (let ((_g1220312229_
             (lambda (_g1220412226_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1220412226_))))
        (let ((_g1220212236_ (lambda (_g1220412232_) ((lambda () '#f)))))
          (let ((_g1220112312_
                 (lambda (_g1220412239_)
                   (if (gx#stx-pair? _g1220412239_)
                       (let ((_e1220712241_ (gx#stx-e _g1220412239_)))
                         (let ((_hd1220812244_ (##car _e1220712241_))
                               (_tl1220912246_ (##cdr _e1220712241_)))
                           (if (gx#stx-pair? _hd1220812244_)
                               (let ((_e1221012249_ (gx#stx-e _hd1220812244_)))
                                 (let ((_hd1221112252_ (##car _e1221012249_))
                                       (_tl1221212254_ (##cdr _e1221012249_)))
                                   (if (gx#identifier? _hd1221112252_)
                                       (if (gx#stx-eq? '%#ref _hd1221112252_)
                                           (if (gx#stx-pair? _tl1221212254_)
                                               (let ((_e1221312257_
                                                      (gx#stx-e
                                                       _tl1221212254_)))
                                                 (let ((_hd1221412260_
                                                        (##car _e1221312257_))
                                                       (_tl1221512262_
                                                        (##cdr _e1221312257_)))
                                                   (if (gx#stx-null?
                                                        _tl1221512262_)
                                                       (if (gx#stx-pair?
                                                            _tl1220912246_)
                                                           (let ((_e1221612265_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl1220912246_)))
                     (let ((_hd1221712268_ (##car _e1221612265_))
                           (_tl1221812270_ (##cdr _e1221612265_)))
                       (if (gx#stx-pair? _hd1221712268_)
                           (let ((_e1221912273_ (gx#stx-e _hd1221712268_)))
                             (let ((_hd1222012276_ (##car _e1221912273_))
                                   (_tl1222112278_ (##cdr _e1221912273_)))
                               (if (gx#identifier? _hd1222012276_)
                                   (if (gx#stx-eq? '%#quote _hd1222012276_)
                                       (if (gx#stx-pair? _tl1222112278_)
                                           (let ((_e1222212281_
                                                  (gx#stx-e _tl1222112278_)))
                                             (let ((_hd1222312284_
                                                    (##car _e1222212281_))
                                                   (_tl1222412286_
                                                    (##cdr _e1222212281_)))
                                               (if (gx#stx-null?
                                                    _tl1222412286_)
                                                   (if (gx#stx-null?
                                                        _tl1221812270_)
                                                       ((lambda (_L12289_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L12290_)
                  (##structure
                   gxc#!struct-setf::t
                   (gxc#generate-runtime-binding-id _L12290_)
                   (gx#stx-e _L12289_)))
                _hd1222312284_
                _hd1221412260_)
               (_g1220212236_ _g1220412239_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1220212236_
                                                    _g1220412239_))))
                                           (_g1220212236_ _g1220412239_))
                                       (_g1220212236_ _g1220412239_))
                                   (_g1220212236_ _g1220412239_))))
                           (_g1220212236_ _g1220412239_))))
                   (_g1220212236_ _g1220412239_))
               (_g1220212236_ _g1220412239_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1220212236_ _g1220412239_))
                                           (_g1220212236_ _g1220412239_))
                                       (_g1220212236_ _g1220412239_))))
                               (_g1220212236_ _g1220412239_))))
                       (_g1220212236_ _g1220412239_)))))
            (_g1220112312_ _args12200_))))))
  (table-set!
   gxc#basic-expression-type-builtin
   'make-struct-type
   gxc#basic-expression-type-make-struct-type)
  (table-set!
   gxc#basic-expression-type-builtin
   'make-struct-predicate
   gxc#basic-expression-type-make-struct-predicate)
  (table-set!
   gxc#basic-expression-type-builtin
   'make-struct-field-accessor
   gxc#basic-expression-type-make-struct-field-accessor)
  (table-set!
   gxc#basic-expression-type-builtin
   'make-struct-field-mutator
   gxc#basic-expression-type-make-struct-field-mutator)
  (define gxc#basic-expression-type-ref%
    (lambda (_stx12148_)
      (let ((_g1215012163_
             (lambda (_g1215112160_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1215112160_))))
        (let ((_g1214912196_
               (lambda (_g1215112166_)
                 (if (gx#stx-pair? _g1215112166_)
                     (let ((_e1215312168_ (gx#stx-e _g1215112166_)))
                       (let ((_hd1215412171_ (##car _e1215312168_))
                             (_tl1215512173_ (##cdr _e1215312168_)))
                         (if (gx#stx-pair? _tl1215512173_)
                             (let ((_e1215612176_ (gx#stx-e _tl1215512173_)))
                               (let ((_hd1215712179_ (##car _e1215612176_))
                                     (_tl1215812181_ (##cdr _e1215612176_)))
                                 (if (gx#stx-null? _tl1215812181_)
                                     ((lambda (_L12184_)
                                        (gxc#optimizer-lookup-type
                                         (gxc#generate-runtime-binding-id
                                          _L12184_)))
                                      _hd1215712179_)
                                     (_g1215012163_ _g1215112166_))))
                             (_g1215012163_ _g1215112166_))))
                     (_g1215012163_ _g1215112166_)))))
          (_g1214912196_ _stx12148_)))))
  (define gxc#optimize-call%
    (lambda (_stx12054_)
      (let ((_g1205712077_
             (lambda (_g1205812074_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1205812074_))))
        (let ((_g1205612084_
               (lambda (_g1205812080_)
                 ((lambda () (gxc#xform-call% _stx12054_))))))
          (let ((_g1205512145_
                 (lambda (_g1205812087_)
                   (if (gx#stx-pair? _g1205812087_)
                       (let ((_e1206112089_ (gx#stx-e _g1205812087_)))
                         (let ((_hd1206212092_ (##car _e1206112089_))
                               (_tl1206312094_ (##cdr _e1206112089_)))
                           (if (gx#stx-pair? _tl1206312094_)
                               (let ((_e1206412097_ (gx#stx-e _tl1206312094_)))
                                 (let ((_hd1206512100_ (##car _e1206412097_))
                                       (_tl1206612102_ (##cdr _e1206412097_)))
                                   (if (gx#stx-pair? _hd1206512100_)
                                       (let ((_e1206712105_
                                              (gx#stx-e _hd1206512100_)))
                                         (let ((_hd1206812108_
                                                (##car _e1206712105_))
                                               (_tl1206912110_
                                                (##cdr _e1206712105_)))
                                           (if (gx#identifier? _hd1206812108_)
                                               (if (gx#stx-eq?
                                                    '%#ref
                                                    _hd1206812108_)
                                                   (if (gx#stx-pair?
                                                        _tl1206912110_)
                                                       (let ((_e1207012113_
                                                              (gx#stx-e
                                                               _tl1206912110_)))
                                                         (let ((_hd1207112116_
                                                                (##car _e1207012113_))
                                                               (_tl1207212118_
                                                                (##cdr _e1207012113_)))
                                                           (if (gx#stx-null?
                                                                _tl1207212118_)
                                                               ((lambda (_L12121_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _L12122_)
                          (let ((_rator-id12140_
                                 (gxc#generate-runtime-binding-id _L12122_)))
                            (let ((_rator-type12142_
                                   (gxc#optimizer-resolve-type
                                    _rator-id12140_)))
                              (let ()
                                (if (##structure-instance-of?
                                     _rator-type12142_
                                     'gxc#!procedure::t)
                                    (begin
                                      (gxc#verbose
                                       '"optimize-call "
                                       _rator-id12140_
                                       '" => "
                                       _rator-type12142_
                                       '" "
                                       (##structure-ref
                                        _rator-type12142_
                                        '1
                                        gxc#!type::t
                                        '#f))
                                      (call-method
                                       _rator-type12142_
                                       'optimize-call
                                       _stx12054_
                                       _L12121_))
                                    (if (not _rator-type12142_)
                                        (gxc#xform-call% _stx12054_)
                                        (gxc#raise-compile-error
                                         '"Illegal application; not a procedure"
                                         _stx12054_
                                         _rator-type12142_)))))))
                        _tl1206612102_
                        _hd1207112116_)
                       (_g1205612084_ _g1205812087_))))
               (_g1205612084_ _g1205812087_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1205612084_
                                                    _g1205812087_))
                                               (_g1205612084_ _g1205812087_))))
                                       (_g1205612084_ _g1205812087_))))
                               (_g1205612084_ _g1205812087_))))
                       (_g1205612084_ _g1205812087_)))))
            (_g1205512145_ _stx12054_))))))
  (define gxc#!struct-pred::optimize-call
    (lambda (_self11909_ _stx11910_ _args11911_)
      (let ((_self1191211918_ _self11909_))
        (let ((_E1191411922_
               (lambda () (error '"No clause matching" _self1191211918_))))
          (let ((_K1191512046_
                 (lambda (_struct-t11925_)
                   (let ((_struct-type11927_
                          (gxc#optimizer-resolve-type _struct-t11925_)))
                     (let ((_struct-type1192811942_ _struct-type11927_))
                       (let ((_E1193211946_
                              (lambda ()
                                (error '"No clause matching"
                                       _struct-type1192811942_))))
                         (let ((_else1193111950_
                                (lambda ()
                                  (gxc#raise-compile-error
                                   '"Illegal struct predicate application; not a struct type"
                                   _stx11910_
                                   _struct-t11925_
                                   _struct-type11927_))))
                           (let ((_try-match1193011958_
                                  (lambda ()
                                    (let ((_K1193311955_
                                           (lambda ()
                                             (gxc#xform-call% _stx11910_))))
                                      (if (##eq? _struct-type1192811942_ '#f)
                                          (_K1193311955_)
                                          (_else1193111950_))))))
                             (let ((_K1193412021_
                                    (lambda (_plist11961_
                                             _struct-type-id11962_)
                                      (let ((_g1196511975_
                                             (lambda (_g1196611972_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g1196611972_))))
                                        (let ((_g1196411982_
                                               (lambda (_g1196611978_)
                                                 ((lambda ()
                                                    (gxc#raise-compile-error
                                                     '"Illegal struct predicate application"
                                                     _stx11910_))))))
                                          (let ((_g1196312018_
                                                 (lambda (_g1196611985_)
                                                   (if (gx#stx-pair?
                                                        _g1196611985_)
                                                       (let ((_e1196811987_
                                                              (gx#stx-e
                                                               _g1196611985_)))
                                                         (let ((_hd1196911990_
                                                                (##car _e1196811987_))
                                                               (_tl1197011992_
                                                                (##cdr _e1196811987_)))
                                                           (if (gx#stx-null?
                                                                _tl1197011992_)
                                                               ((lambda (_L11995_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((_expr12015_ (gxc#compile-e _L11995_))
                                (_op12016_
                                 (if (if _plist11961_
                                         (assgetq 'final: _plist11961_)
                                         '#f)
                                     '%#struct-direct-instance?
                                     '%#struct-instance?)))
                            (gxc#xform-wrap-source
                             (cons _op12016_
                                   (cons (cons '%#quote
                                               (cons _struct-type-id11962_
                                                     '()))
                                         (cons _expr12015_ '())))
                             _stx11910_)))
                        _hd1196911990_)
                       (_g1196411982_ _g1196611985_))))
               (_g1196411982_ _g1196611985_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g1196312018_ _args11911_)))))))
                               (if (##structure-instance-of?
                                    _struct-type1192811942_
                                    (##type-id gxc#!struct-type::t))
                                   (let ((_e1193512024_
                                          (##vector-ref
                                           _struct-type1192811942_
                                           '1)))
                                     (let ((_struct-type-id12027_
                                            _e1193512024_))
                                       (let ((_e1193612029_
                                              (##vector-ref
                                               _struct-type1192811942_
                                               '2)))
                                         (let ((_e1193712032_
                                                (##vector-ref
                                                 _struct-type1192811942_
                                                 '3)))
                                           (let ((_e1193812035_
                                                  (##vector-ref
                                                   _struct-type1192811942_
                                                   '4)))
                                             (let ((_e1193912038_
                                                    (##vector-ref
                                                     _struct-type1192811942_
                                                     '5)))
                                               (let ((_e1194012041_
                                                      (##vector-ref
                                                       _struct-type1192811942_
                                                       '6)))
                                                 (let ((_plist12044_
                                                        _e1194012041_))
                                                   (_K1193412021_
                                                    _plist12044_
                                                    _struct-type-id12027_)))))))))
                                   (_try-match1193011958_)))))))))))
            (if (##structure-instance-of?
                 _self1191211918_
                 (##type-id gxc#!struct-pred::t))
                (let ((_e1191612049_ (##vector-ref _self1191211918_ '1)))
                  (let ((_struct-t12052_ _e1191612049_))
                    (_K1191512046_ _struct-t12052_)))
                (_E1191411922_)))))))
  (bind-method!
   gxc#!struct-pred::t
   'optimize-call
   gxc#!struct-pred::optimize-call
   '#f)
  (define gxc#!struct-cons::optimize-call
    (lambda (_self11805_ _stx11806_ _args11807_)
      (let ((_self1180811814_ _self11805_))
        (let ((_E1181011818_
               (lambda () (error '"No clause matching" _self1180811814_))))
          (let ((_K1181111901_
                 (lambda (_struct-t11821_)
                   (let ((_struct-type11823_
                          (gxc#optimizer-resolve-type _struct-t11821_)))
                     (let ((_struct-type1182411837_ _struct-type11823_))
                       (let ((_E1182811841_
                              (lambda ()
                                (error '"No clause matching"
                                       _struct-type1182411837_))))
                         (let ((_else1182711845_
                                (lambda ()
                                  (gxc#raise-compile-error
                                   '"Illegal struct constructor application; not a struct type"
                                   _stx11806_
                                   _struct-t11821_
                                   _struct-type11823_))))
                           (let ((_try-match1182611853_
                                  (lambda ()
                                    (let ((_K1182911850_
                                           (lambda ()
                                             (begin
                                               (gxc#verbose
                                                '"cannot inline struct constructor; unknown struct type "
                                                _struct-t11821_)
                                               (gxc#xform-call% _stx11806_)))))
                                      (if (##eq? _struct-type1182411837_ '#f)
                                          (_K1182911850_)
                                          (_else1182711845_))))))
                             (let ((_K1183011875_
                                    (lambda (_ctor11856_
                                             _xfields11857_
                                             _fields11858_
                                             _type-id11859_)
                                      (let ((_args11861_
                                             (map gxc#compile-e _args11807_)))
                                        (let ((_$e11863_
                                               (if _ctor11856_
                                                   (if _xfields11857_
                                                       (gxc#!struct-type-lookup-method
                                                        _struct-type11823_
                                                        _ctor11856_)
                                                       '#f)
                                                   '#f)))
                                          (if _$e11863_
                                              ((lambda (_kons11866_)
                                                 (let ((_$obj11868_
                                                        (make-symbol
                                                         (gensym '__obj))))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#let-values
                                                          (cons (cons (cons (cons _$obj11868_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                          '())
                                    (cons (cons '%#call
                                                (cons (cons '%#ref
                                                            (cons 'make-object
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#ref (cons _struct-t11821_ '()))
                    (cons (cons '%#quote
                                (cons (fx+ _fields11858_ _xfields11857_) '()))
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '()))
                              '())
                        (cons (cons '%#begin
                                    (cons (gxc#compile-e
                                           (gxc#xform-wrap-source
                                            (cons '%#call
                                                  (cons (cons '%#ref
                                                              (cons _kons11866_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '%#ref (cons _$obj11868_ '())) _args11861_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _stx11806_))
                                          (cons (cons '%#ref
                                                      (cons _$obj11868_ '()))
                                                '())))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _stx11806_)))
                                               _$e11863_)
                                              (if (let ((_$e11870_
                                                         _ctor11856_))
                                                    (if _$e11870_
                                                        _$e11870_
                                                        (not _xfields11857_)))
                                                  (gxc#xform-wrap-source
                                                   (cons '%#call
                                                         (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons 'make-struct-instance '()))
                       (cons (cons '%#ref (cons _struct-t11821_ '()))
                             _args11861_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _stx11806_)
                                                  (let ((_arity11873_
                                                         (fx+ _fields11858_
                                                              _xfields11857_)))
                                                    (if (fx= _arity11873_
                                                             (length _args11861_))
                                                        (gxc#xform-wrap-source
                                                         (cons '%#call
                                                               (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons '##structure '()))
                             (cons (cons '%#ref (cons _struct-t11821_ '()))
                                   _args11861_)))
                 _stx11806_)
                (gxc#raise-compile-error
                 '"Illegal struct constructor application; arity mismatch"
                 _stx11806_
                 _struct-t11821_
                 _arity11873_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (if (##structure-instance-of?
                                    _struct-type1182411837_
                                    (##type-id gxc#!struct-type::t))
                                   (let ((_e1183111878_
                                          (##vector-ref
                                           _struct-type1182411837_
                                           '1)))
                                     (let ((_type-id11881_ _e1183111878_))
                                       (let ((_e1183211883_
                                              (##vector-ref
                                               _struct-type1182411837_
                                               '2)))
                                         (let ((_e1183311886_
                                                (##vector-ref
                                                 _struct-type1182411837_
                                                 '3)))
                                           (let ((_fields11889_ _e1183311886_))
                                             (let ((_e1183411891_
                                                    (##vector-ref
                                                     _struct-type1182411837_
                                                     '4)))
                                               (let ((_xfields11894_
                                                      _e1183411891_))
                                                 (let ((_e1183511896_
                                                        (##vector-ref
                                                         _struct-type1182411837_
                                                         '5)))
                                                   (let ((_ctor11899_
                                                          _e1183511896_))
                                                     (_K1183011875_
                                                      _ctor11899_
                                                      _xfields11894_
                                                      _fields11889_
                                                      _type-id11881_))))))))))
                                   (_try-match1182611853_)))))))))))
            (if (##structure-instance-of?
                 _self1180811814_
                 (##type-id gxc#!struct-cons::t))
                (let ((_e1181211904_ (##vector-ref _self1180811814_ '1)))
                  (let ((_struct-t11907_ _e1181211904_))
                    (_K1181111901_ _struct-t11907_)))
                (_E1181011818_)))))))
  (bind-method!
   gxc#!struct-cons::t
   'optimize-call
   gxc#!struct-cons::optimize-call
   '#f)
  (define gxc#!struct-getf::optimize-call
    (lambda (_self11658_ _stx11659_ _args11660_)
      (let ((_self1166111668_ _self11658_))
        (let ((_E1166311672_
               (lambda () (error '"No clause matching" _self1166111668_))))
          (let ((_K1166411792_
                 (lambda (_off11675_ _struct-t11676_)
                   (let ((_struct-type11678_
                          (gxc#optimizer-resolve-type _struct-t11676_)))
                     (let ((_struct-type1167911691_ _struct-type11678_))
                       (let ((_E1168311695_
                              (lambda ()
                                (error '"No clause matching"
                                       _struct-type1167911691_))))
                         (let ((_else1168211699_
                                (lambda ()
                                  (gxc#raise-compile-error
                                   '"Illegal struct predicate application; not a struct type"
                                   _stx11659_
                                   _struct-t11676_
                                   _struct-type11678_))))
                           (let ((_try-match1168111707_
                                  (lambda ()
                                    (let ((_K1168411704_
                                           (lambda ()
                                             (gxc#xform-call% _stx11659_))))
                                      (if (##eq? _struct-type1167911691_ '#f)
                                          (_K1168411704_)
                                          (_else1168211699_))))))
                             (let ((_K1168511771_
                                    (lambda (_xfields11710_
                                             _fields11711_
                                             _struct-type-id11712_)
                                      (if _xfields11710_
                                          (let ((_g1171511725_
                                                 (lambda (_g1171611722_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1171611722_))))
                                            (let ((_g1171411732_
                                                   (lambda (_g1171611728_)
                                                     ((lambda ()
                                                        (gxc#raise-compile-error
                                                         '"Illegal struct accessor application"
                                                         _stx11659_))))))
                                              (let ((_g1171311768_
                                                     (lambda (_g1171611735_)
                                                       (if (gx#stx-pair?
                                                            _g1171611735_)
                                                           (let ((_e1171811737_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _g1171611735_)))
                     (let ((_hd1171911740_ (##car _e1171811737_))
                           (_tl1172011742_ (##cdr _e1171811737_)))
                       (if (gx#stx-null? _tl1172011742_)
                           ((lambda (_L11745_)
                              (let ((_expr11765_ (gxc#compile-e _L11745_))
                                    (_off11766_
                                     (fx+ _off11675_ _xfields11710_ '1)))
                                (gxc#xform-wrap-source
                                 (cons '%#struct-ref
                                       (cons (cons '%#ref
                                                   (cons _struct-t11676_ '()))
                                             (cons (cons '%#quote
                                                         (cons _off11766_ '()))
                                                   (cons _expr11765_ '()))))
                                 _stx11659_)))
                            _hd1171911740_)
                           (_g1171411732_ _g1171611735_))))
                   (_g1171411732_ _g1171611735_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1171311768_ _args11660_))))
                                          (begin
                                            (gxc#verbose
                                             '"struct-getf: incomplete struct "
                                             _struct-type-id11712_)
                                            (gxc#xform-call% _stx11659_))))))
                               (if (##structure-instance-of?
                                    _struct-type1167911691_
                                    (##type-id gxc#!struct-type::t))
                                   (let ((_e1168611774_
                                          (##vector-ref
                                           _struct-type1167911691_
                                           '1)))
                                     (let ((_struct-type-id11777_
                                            _e1168611774_))
                                       (let ((_e1168711779_
                                              (##vector-ref
                                               _struct-type1167911691_
                                               '2)))
                                         (let ((_e1168811782_
                                                (##vector-ref
                                                 _struct-type1167911691_
                                                 '3)))
                                           (let ((_fields11785_ _e1168811782_))
                                             (let ((_e1168911787_
                                                    (##vector-ref
                                                     _struct-type1167911691_
                                                     '4)))
                                               (let ((_xfields11790_
                                                      _e1168911787_))
                                                 (_K1168511771_
                                                  _xfields11790_
                                                  _fields11785_
                                                  _struct-type-id11777_))))))))
                                   (_try-match1168111707_)))))))))))
            (if (##structure-instance-of?
                 _self1166111668_
                 (##type-id gxc#!struct-getf::t))
                (let ((_e1166511795_ (##vector-ref _self1166111668_ '1)))
                  (let ((_struct-t11798_ _e1166511795_))
                    (let ((_e1166611800_ (##vector-ref _self1166111668_ '2)))
                      (let ((_off11803_ _e1166611800_))
                        (_K1166411792_ _off11803_ _struct-t11798_)))))
                (_E1166311672_)))))))
  (bind-method!
   gxc#!struct-getf::t
   'optimize-call
   gxc#!struct-getf::optimize-call
   '#f)
  (define gxc#!struct-setf::optimize-call
    (lambda (_self11494_ _stx11495_ _args11496_)
      (let ((_self1149711504_ _self11494_))
        (let ((_E1149911508_
               (lambda () (error '"No clause matching" _self1149711504_))))
          (let ((_K1150011645_
                 (lambda (_off11511_ _struct-t11512_)
                   (let ((_struct-type11514_
                          (gxc#optimizer-resolve-type _struct-t11512_)))
                     (let ((_struct-type1151511527_ _struct-type11514_))
                       (let ((_E1151911531_
                              (lambda ()
                                (error '"No clause matching"
                                       _struct-type1151511527_))))
                         (let ((_else1151811535_
                                (lambda ()
                                  (gxc#raise-compile-error
                                   '"Illegal struct predicate application; not a struct type"
                                   _stx11495_
                                   _struct-t11512_
                                   _struct-type11514_))))
                           (let ((_try-match1151711543_
                                  (lambda ()
                                    (let ((_K1152011540_
                                           (lambda ()
                                             (gxc#xform-call% _stx11495_))))
                                      (if (##eq? _struct-type1151511527_ '#f)
                                          (_K1152011540_)
                                          (_else1151811535_))))))
                             (let ((_K1152111624_
                                    (lambda (_xfields11546_
                                             _fields11547_
                                             _struct-type-id11548_)
                                      (if _xfields11546_
                                          (let ((_g1155111565_
                                                 (lambda (_g1155211562_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1155211562_))))
                                            (let ((_g1155011572_
                                                   (lambda (_g1155211568_)
                                                     ((lambda ()
                                                        (gxc#raise-compile-error
                                                         '"Illegal struct mutator application"
                                                         _stx11495_))))))
                                              (let ((_g1154911621_
                                                     (lambda (_g1155211575_)
                                                       (if (gx#stx-pair?
                                                            _g1155211575_)
                                                           (let ((_e1155511577_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _g1155211575_)))
                     (let ((_hd1155611580_ (##car _e1155511577_))
                           (_tl1155711582_ (##cdr _e1155511577_)))
                       (if (gx#stx-pair? _tl1155711582_)
                           (let ((_e1155811585_ (gx#stx-e _tl1155711582_)))
                             (let ((_hd1155911588_ (##car _e1155811585_))
                                   (_tl1156011590_ (##cdr _e1155811585_)))
                               (if (gx#stx-null? _tl1156011590_)
                                   ((lambda (_L11593_ _L11594_)
                                      (let ((_expr11617_
                                             (gxc#compile-e _L11594_))
                                            (_val11618_
                                             (gxc#compile-e _L11593_))
                                            (_off11619_
                                             (fx+ _off11511_
                                                  _xfields11546_
                                                  '1)))
                                        (gxc#xform-wrap-source
                                         (cons '%#struct-set!
                                               (cons (cons '%#ref
                                                           (cons _struct-t11512_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _off11619_ '()))
                   (cons _expr11617_ (cons _val11618_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _stx11495_)))
                                    _hd1155911588_
                                    _hd1155611580_)
                                   (_g1155011572_ _g1155211575_))))
                           (_g1155011572_ _g1155211575_))))
                   (_g1155011572_ _g1155211575_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1154911621_ _args11496_))))
                                          (begin
                                            (gxc#verbose
                                             '"struct-setf: incomplete struct "
                                             _struct-type-id11548_)
                                            (gxc#xform-call% _stx11495_))))))
                               (if (##structure-instance-of?
                                    _struct-type1151511527_
                                    (##type-id gxc#!struct-type::t))
                                   (let ((_e1152211627_
                                          (##vector-ref
                                           _struct-type1151511527_
                                           '1)))
                                     (let ((_struct-type-id11630_
                                            _e1152211627_))
                                       (let ((_e1152311632_
                                              (##vector-ref
                                               _struct-type1151511527_
                                               '2)))
                                         (let ((_e1152411635_
                                                (##vector-ref
                                                 _struct-type1151511527_
                                                 '3)))
                                           (let ((_fields11638_ _e1152411635_))
                                             (let ((_e1152511640_
                                                    (##vector-ref
                                                     _struct-type1151511527_
                                                     '4)))
                                               (let ((_xfields11643_
                                                      _e1152511640_))
                                                 (_K1152111624_
                                                  _xfields11643_
                                                  _fields11638_
                                                  _struct-type-id11630_))))))))
                                   (_try-match1151711543_)))))))))))
            (if (##structure-instance-of?
                 _self1149711504_
                 (##type-id gxc#!struct-setf::t))
                (let ((_e1150111648_ (##vector-ref _self1149711504_ '1)))
                  (let ((_struct-t11651_ _e1150111648_))
                    (let ((_e1150211653_ (##vector-ref _self1149711504_ '2)))
                      (let ((_off11656_ _e1150211653_))
                        (_K1150011645_ _off11656_ _struct-t11651_)))))
                (_E1149911508_)))))))
  (bind-method!
   gxc#!struct-setf::t
   'optimize-call
   gxc#!struct-setf::optimize-call
   '#f)
  (define gxc#!lambda::optimize-call
    (lambda (_self11450_ _stx11451_ _args11452_)
      (let ((_self1145311462_ _self11450_))
        (let ((_E1145511466_
               (lambda () (error '"No clause matching" _self1145311462_))))
          (let ((_K1145611473_
                 (lambda (_inline11469_ _dispatch11470_ _arity11471_)
                   (begin
                     (if (gxc#!lambda-arity-match? _self11450_ _args11452_)
                         '#!void
                         (gxc#raise-compile-error
                          '"Illegal lambda application; arity mismatch"
                          _stx11451_
                          _arity11471_))
                     (if _inline11469_
                         (begin
                           (gxc#verbose '"inline lambda")
                           (gxc#compile-e
                            (gxc#xform-wrap-source
                             (_inline11469_ _stx11451_)
                             _stx11451_)))
                         (if _dispatch11470_
                             (begin
                               (gxc#verbose
                                '"dispatch lambda => "
                                _dispatch11470_)
                               (gxc#compile-e
                                (gxc#xform-wrap-source
                                 (cons '%#call
                                       (cons (cons '%#ref
                                                   (cons _dispatch11470_ '()))
                                             _args11452_))
                                 _stx11451_)))
                             (gxc#xform-call% _stx11451_)))))))
            (if (##structure-instance-of?
                 _self1145311462_
                 (##type-id gxc#!lambda::t))
                (let ((_e1145711476_ (##vector-ref _self1145311462_ '1)))
                  (let ((_e1145811479_ (##vector-ref _self1145311462_ '2)))
                    (let ((_arity11482_ _e1145811479_))
                      (let ((_e1145911484_ (##vector-ref _self1145311462_ '3)))
                        (let ((_dispatch11487_ _e1145911484_))
                          (let ((_e1146011489_
                                 (##vector-ref _self1145311462_ '4)))
                            (let ((_inline11492_ _e1146011489_))
                              (_K1145611473_
                               _inline11492_
                               _dispatch11487_
                               _arity11482_))))))))
                (_E1145511466_)))))))
  (bind-method! gxc#!lambda::t 'optimize-call gxc#!lambda::optimize-call '#f)
  (define gxc#!case-lambda::optimize-call
    (lambda (_self11410_ _stx11411_ _args11412_)
      (let ((_self1141311420_ _self11410_))
        (let ((_E1141511424_
               (lambda () (error '"No clause matching" _self1141311420_))))
          (let ((_K1141611439_
                 (lambda (_clauses11427_)
                   (let ((_$e11433_
                          (find (lambda (_g1142811430_)
                                  (gxc#!lambda-arity-match?
                                   _g1142811430_
                                   _args11412_))
                                _clauses11427_)))
                     (if _$e11433_
                         ((lambda (_clause11436_)
                            (call-method
                             _clause11436_
                             'optimize-call
                             _stx11411_
                             _args11412_))
                          _$e11433_)
                         (gxc#raise-compile-error
                          '"Illegal case-lambda application; arity mismatch"
                          _stx11411_
                          (map (lambda ()
                                 (##structure-ref
                                  _clauses11427_
                                  '2
                                  gxc#!lambda::t
                                  '#f))
                               _clauses11427_)))))))
            (if (##structure-instance-of?
                 _self1141311420_
                 (##type-id gxc#!case-lambda::t))
                (let ((_e1141711442_ (##vector-ref _self1141311420_ '1)))
                  (let ((_e1141811445_ (##vector-ref _self1141311420_ '2)))
                    (let ((_clauses11448_ _e1141811445_))
                      (_K1141611439_ _clauses11448_))))
                (_E1141511424_)))))))
  (bind-method!
   gxc#!case-lambda::t
   'optimize-call
   gxc#!case-lambda::optimize-call
   '#f)
  (define gxc#!lambda-arity-match?
    (lambda (_self11346_ _args11347_)
      (let ((_self1134811355_ _self11346_))
        (let ((_E1135011359_
               (lambda () (error '"No clause matching" _self1134811355_))))
          (let ((_K1135111399_
                 (lambda (_arity11362_)
                   (let ((_arity1136311372_ _arity11362_))
                     (let ((_E1136611376_
                            (lambda ()
                              (error '"No clause matching"
                                     _arity1136311372_))))
                       (let ((_try-match1136511392_
                              (lambda ()
                                (let ((_K1136711382_
                                       (lambda (_arity11380_)
                                         (fx>= (length _args11347_)
                                               _arity11380_))))
                                  (if (##pair? _arity1136311372_)
                                      (let ((_hd1136811385_
                                             (##car _arity1136311372_))
                                            (_tl1136911387_
                                             (##cdr _arity1136311372_)))
                                        (let ((_arity11390_ _hd1136811385_))
                                          (if (##null? _tl1136911387_)
                                              (_K1136711382_ _arity11390_)
                                              (_E1136611376_))))
                                      (_E1136611376_))))))
                         (let ((_K1137011396_
                                (lambda ()
                                  (fx= (length _args11347_) _arity11362_))))
                           (if (fixnum? _arity1136311372_)
                               (_K1137011396_)
                               (_try-match1136511392_)))))))))
            (if (##structure-instance-of?
                 _self1134811355_
                 (##type-id gxc#!lambda::t))
                (let ((_e1135211402_ (##vector-ref _self1134811355_ '1)))
                  (let ((_e1135311405_ (##vector-ref _self1134811355_ '2)))
                    (let ((_arity11408_ _e1135311405_))
                      (_K1135111399_ _arity11408_))))
                (_E1135011359_)))))))
  (define gxc#generate-ssxi-module%
    (lambda (_stx11286_)
      (let ((_g1128811302_
             (lambda (_g1128911299_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1128911299_))))
        (let ((_g1128711343_
               (lambda (_g1128911305_)
                 (if (gx#stx-pair? _g1128911305_)
                     (let ((_e1129211307_ (gx#stx-e _g1128911305_)))
                       (let ((_hd1129311310_ (##car _e1129211307_))
                             (_tl1129411312_ (##cdr _e1129211307_)))
                         (if (gx#stx-pair? _tl1129411312_)
                             (let ((_e1129511315_ (gx#stx-e _tl1129411312_)))
                               (let ((_hd1129611318_ (##car _e1129511315_))
                                     (_tl1129711320_ (##cdr _e1129511315_)))
                                 ((lambda (_L11323_ _L11324_)
                                    (let ((_ctx11337_
                                           (gx#syntax-local-e__0 _L11324_)))
                                      (let ((_code11339_
                                             (##structure-ref
                                              _ctx11337_
                                              '11
                                              gx#module-context::t
                                              '#f)))
                                        (let ()
                                          (call-with-parameters
                                           (lambda ()
                                             (gxc#compile-e _code11339_))
                                           gx#current-expander-context
                                           _ctx11337_)))))
                                  _tl1129711320_
                                  _hd1129611318_)))
                             (_g1128811302_ _g1128911305_))))
                     (_g1128811302_ _g1128911305_)))))
          (_g1128711343_ _stx11286_)))))
  (define gxc#generate-ssxi-define-values%
    (lambda (_stx11096_)
      (let ((_generate-e11098_
             (lambda (_id11275_)
               (let ((_sym11277_
                      (if (gx#identifier? (gx#datum->syntax__0 '#f 'id))
                          (gxc#generate-runtime-binding-id _id11275_)
                          '#f)))
                 (let ((_$e11279_
                        (if _sym11277_
                            (gxc#optimizer-lookup-type _sym11277_)
                            '#f)))
                   (if _$e11279_
                       ((lambda (_type11282_)
                          (begin
                            (gxc#verbose '"generate typedecl " _sym11277_)
                            (let ((_typedecl11284_
                                   (call-method _type11282_ 'typedecl)))
                              (cons 'declare-type
                                    (cons _sym11277_
                                          (cons _typedecl11284_ '()))))))
                        _$e11279_)
                       '(begin)))))))
        (let ((_g1110111139_
               (lambda (_g1110211136_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1110211136_))))
          (let ((_g1110011220_
                 (lambda (_g1110211142_)
                   (if (gx#stx-pair? _g1110211142_)
                       (let ((_e1111711144_ (gx#stx-e _g1110211142_)))
                         (let ((_hd1111811147_ (##car _e1111711144_))
                               (_tl1111911149_ (##cdr _e1111711144_)))
                           (if (gx#stx-pair? _tl1111911149_)
                               (let ((_e1112011152_ (gx#stx-e _tl1111911149_)))
                                 (let ((_hd1112111155_ (##car _e1112011152_))
                                       (_tl1112211157_ (##cdr _e1112011152_)))
                                   (if (gx#stx-pair/null? _hd1112111155_)
                                       (if (fx>= (gx#stx-length _hd1112111155_)
                                                 '0)
                                           (let ((_g19449_
                                                  (gx#syntax-split-splice
                                                   _hd1112111155_
                                                   '0)))
                                             (begin
                                               (let ((_g19450_
                                                      (values-count _g19449_)))
                                                 (if (not (fx= _g19450_ 2))
                                                     (error "Context expects 2 values"
                                                            _g19450_)))
                                               (let ((_target1112311160_
                                                      (values-ref _g19449_ 0))
                                                     (_tl1112511162_
                                                      (values-ref _g19449_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl1112511162_)
                                                     (letrec ((_loop1112611165_
                                                               (lambda (_hd1112411168_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _id1113011170_)
                         (if (gx#stx-pair? _hd1112411168_)
                             (let ((_e1112711173_ (gx#stx-e _hd1112411168_)))
                               (let ((_lp-hd1112811176_ (##car _e1112711173_))
                                     (_lp-tl1112911178_ (##cdr _e1112711173_)))
                                 (_loop1112611165_
                                  _lp-tl1112911178_
                                  (cons _lp-hd1112811176_ _id1113011170_))))
                             (let ((_id1113111181_ (reverse _id1113011170_)))
                               (if (gx#stx-pair? _tl1112211157_)
                                   (let ((_e1113211184_
                                          (gx#stx-e _tl1112211157_)))
                                     (let ((_hd1113311187_
                                            (##car _e1113211184_))
                                           (_tl1113411189_
                                            (##cdr _e1113211184_)))
                                       (if (gx#stx-null? _tl1113411189_)
                                           ((lambda (_L11192_)
                                              (let ((_types11218_
                                                     (map _generate-e11098_
                                                          (begin
                                                            '#!void
                                                            (foldr1 (lambda (_g1121011213_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g1121111215_)
                              (cons _g1121011213_ _g1121111215_))
                            '()
                            _L11192_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons 'begin _types11218_)))
                                            _id1113111181_)
                                           (_g1110111139_ _g1110211142_))))
                                   (_g1110111139_ _g1110211142_)))))))
               (_loop1112611165_ _target1112311160_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1110111139_
                                                      _g1110211142_)))))
                                           (_g1110111139_ _g1110211142_))
                                       (_g1110111139_ _g1110211142_))))
                               (_g1110111139_ _g1110211142_))))
                       (_g1110111139_ _g1110211142_)))))
            (let ((_g1109911272_
                   (lambda (_g1110211223_)
                     (if (gx#stx-pair? _g1110211223_)
                         (let ((_e1110411225_ (gx#stx-e _g1110211223_)))
                           (let ((_hd1110511228_ (##car _e1110411225_))
                                 (_tl1110611230_ (##cdr _e1110411225_)))
                             (if (gx#stx-pair? _tl1110611230_)
                                 (let ((_e1110711233_
                                        (gx#stx-e _tl1110611230_)))
                                   (let ((_hd1110811236_ (##car _e1110711233_))
                                         (_tl1110911238_
                                          (##cdr _e1110711233_)))
                                     (if (gx#stx-pair? _hd1110811236_)
                                         (let ((_e1111011241_
                                                (gx#stx-e _hd1110811236_)))
                                           (let ((_hd1111111244_
                                                  (##car _e1111011241_))
                                                 (_tl1111211246_
                                                  (##cdr _e1111011241_)))
                                             (if (gx#stx-null? _tl1111211246_)
                                                 (if (gx#stx-pair?
                                                      _tl1110911238_)
                                                     (let ((_e1111311249_
                                                            (gx#stx-e
                                                             _tl1110911238_)))
                                                       (let ((_hd1111411252_
                                                              (##car _e1111311249_))
                                                             (_tl1111511254_
                                                              (##cdr _e1111311249_)))
                                                         (if (gx#stx-null?
                                                              _tl1111511254_)
                                                             ((lambda (_L11257_)
                                                                (_generate-e11098_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L11257_))
                      _hd1111111244_)
                     (_g1110011220_ _g1110211223_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1110011220_
                                                      _g1110211223_))
                                                 (_g1110011220_
                                                  _g1110211223_))))
                                         (_g1110011220_ _g1110211223_))))
                                 (_g1110011220_ _g1110211223_))))
                         (_g1110011220_ _g1110211223_)))))
              (_g1109911272_ _stx11096_)))))))
  (define gxc#generate-ssxi-call%
    (lambda (_stx10650_)
      (let ((_g1065410756_
             (lambda (_g1065510753_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1065510753_))))
        (let ((_g1065310763_ (lambda (_g1065510759_) ((lambda () '(begin))))))
          (let ((_g1065210913_
                 (lambda (_g1065510766_)
                   (if (gx#stx-pair? _g1065510766_)
                       (let ((_e1071310768_ (gx#stx-e _g1065510766_)))
                         (let ((_hd1071410771_ (##car _e1071310768_))
                               (_tl1071510773_ (##cdr _e1071310768_)))
                           (if (gx#stx-pair? _tl1071510773_)
                               (let ((_e1071610776_ (gx#stx-e _tl1071510773_)))
                                 (let ((_hd1071710779_ (##car _e1071610776_))
                                       (_tl1071810781_ (##cdr _e1071610776_)))
                                   (if (gx#stx-pair? _hd1071710779_)
                                       (let ((_e1071910784_
                                              (gx#stx-e _hd1071710779_)))
                                         (let ((_hd1072010787_
                                                (##car _e1071910784_))
                                               (_tl1072110789_
                                                (##cdr _e1071910784_)))
                                           (if (gx#identifier? _hd1072010787_)
                                               (if (gx#stx-eq?
                                                    '%#ref
                                                    _hd1072010787_)
                                                   (if (gx#stx-pair?
                                                        _tl1072110789_)
                                                       (let ((_e1072210792_
                                                              (gx#stx-e
                                                               _tl1072110789_)))
                                                         (let ((_hd1072310795_
                                                                (##car _e1072210792_))
                                                               (_tl1072410797_
                                                                (##cdr _e1072210792_)))
                                                           (if (gx#stx-null?
                                                                _tl1072410797_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl1071810781_)
                           (let ((_e1072510800_ (gx#stx-e _tl1071810781_)))
                             (let ((_hd1072610803_ (##car _e1072510800_))
                                   (_tl1072710805_ (##cdr _e1072510800_)))
                               (if (gx#stx-pair? _hd1072610803_)
                                   (let ((_e1072810808_
                                          (gx#stx-e _hd1072610803_)))
                                     (let ((_hd1072910811_
                                            (##car _e1072810808_))
                                           (_tl1073010813_
                                            (##cdr _e1072810808_)))
                                       (if (gx#identifier? _hd1072910811_)
                                           (if (gx#stx-eq?
                                                '%#ref
                                                _hd1072910811_)
                                               (if (gx#stx-pair?
                                                    _tl1073010813_)
                                                   (let ((_e1073110816_
                                                          (gx#stx-e
                                                           _tl1073010813_)))
                                                     (let ((_hd1073210819_
                                                            (##car _e1073110816_))
                                                           (_tl1073310821_
                                                            (##cdr _e1073110816_)))
                                                       (if (gx#stx-null?
                                                            _tl1073310821_)
                                                           (if (gx#stx-pair?
                                                                _tl1072710805_)
                                                               (let ((_e1073410824_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl1072710805_)))
                         (let ((_hd1073510827_ (##car _e1073410824_))
                               (_tl1073610829_ (##cdr _e1073410824_)))
                           (if (gx#stx-pair? _hd1073510827_)
                               (let ((_e1073710832_ (gx#stx-e _hd1073510827_)))
                                 (let ((_hd1073810835_ (##car _e1073710832_))
                                       (_tl1073910837_ (##cdr _e1073710832_)))
                                   (if (gx#identifier? _hd1073810835_)
                                       (if (gx#stx-eq? '%#quote _hd1073810835_)
                                           (if (gx#stx-pair? _tl1073910837_)
                                               (let ((_e1074010840_
                                                      (gx#stx-e
                                                       _tl1073910837_)))
                                                 (let ((_hd1074110843_
                                                        (##car _e1074010840_))
                                                       (_tl1074210845_
                                                        (##cdr _e1074010840_)))
                                                   (if (gx#stx-null?
                                                        _tl1074210845_)
                                                       (if (gx#stx-pair?
                                                            _tl1073610829_)
                                                           (let ((_e1074310848_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl1073610829_)))
                     (let ((_hd1074410851_ (##car _e1074310848_))
                           (_tl1074510853_ (##cdr _e1074310848_)))
                       (if (gx#stx-pair? _hd1074410851_)
                           (let ((_e1074610856_ (gx#stx-e _hd1074410851_)))
                             (let ((_hd1074710859_ (##car _e1074610856_))
                                   (_tl1074810861_ (##cdr _e1074610856_)))
                               (if (gx#identifier? _hd1074710859_)
                                   (if (gx#stx-eq? '%#ref _hd1074710859_)
                                       (if (gx#stx-pair? _tl1074810861_)
                                           (let ((_e1074910864_
                                                  (gx#stx-e _tl1074810861_)))
                                             (let ((_hd1075010867_
                                                    (##car _e1074910864_))
                                                   (_tl1075110869_
                                                    (##cdr _e1074910864_)))
                                               (if (gx#stx-null?
                                                    _tl1075110869_)
                                                   (if (gx#stx-null?
                                                        _tl1074510853_)
                                                       ((lambda (_L10872_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L10873_
                         _L10874_
                         _L10875_)
                  (if (eq? (gxc#generate-runtime-binding-id
                            (gx#datum->syntax__0 '#f '-bind-method))
                           'bind-method!)
                      (cons 'declare-method
                            (cons (gxc#generate-runtime-binding-id _L10874_)
                                  (cons (gx#stx-e _L10873_)
                                        (cons (gxc#generate-runtime-binding-id
                                               _L10872_)
                                              (cons '#f '())))))
                      (_g1065310763_ _g1065510766_)))
                _hd1075010867_
                _hd1074110843_
                _hd1073210819_
                _hd1072310795_)
               (_g1065310763_ _g1065510766_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1065310763_
                                                    _g1065510766_))))
                                           (_g1065310763_ _g1065510766_))
                                       (_g1065310763_ _g1065510766_))
                                   (_g1065310763_ _g1065510766_))))
                           (_g1065310763_ _g1065510766_))))
                   (_g1065310763_ _g1065510766_))
               (_g1065310763_ _g1065510766_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1065310763_ _g1065510766_))
                                           (_g1065310763_ _g1065510766_))
                                       (_g1065310763_ _g1065510766_))))
                               (_g1065310763_ _g1065510766_))))
                       (_g1065310763_ _g1065510766_))
                   (_g1065310763_ _g1065510766_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1065310763_
                                                    _g1065510766_))
                                               (_g1065310763_ _g1065510766_))
                                           (_g1065310763_ _g1065510766_))))
                                   (_g1065310763_ _g1065510766_))))
                           (_g1065310763_ _g1065510766_))
                       (_g1065310763_ _g1065510766_))))
               (_g1065310763_ _g1065510766_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1065310763_
                                                    _g1065510766_))
                                               (_g1065310763_ _g1065510766_))))
                                       (_g1065310763_ _g1065510766_))))
                               (_g1065310763_ _g1065510766_))))
                       (_g1065310763_ _g1065510766_)))))
            (let ((_g1065111093_
                   (lambda (_g1065510916_)
                     (if (gx#stx-pair? _g1065510916_)
                         (let ((_e1066110918_ (gx#stx-e _g1065510916_)))
                           (let ((_hd1066210921_ (##car _e1066110918_))
                                 (_tl1066310923_ (##cdr _e1066110918_)))
                             (if (gx#stx-pair? _tl1066310923_)
                                 (let ((_e1066410926_
                                        (gx#stx-e _tl1066310923_)))
                                   (let ((_hd1066510929_ (##car _e1066410926_))
                                         (_tl1066610931_
                                          (##cdr _e1066410926_)))
                                     (if (gx#stx-pair? _hd1066510929_)
                                         (let ((_e1066710934_
                                                (gx#stx-e _hd1066510929_)))
                                           (let ((_hd1066810937_
                                                  (##car _e1066710934_))
                                                 (_tl1066910939_
                                                  (##cdr _e1066710934_)))
                                             (if (gx#identifier?
                                                  _hd1066810937_)
                                                 (if (gx#stx-eq?
                                                      '%#ref
                                                      _hd1066810937_)
                                                     (if (gx#stx-pair?
                                                          _tl1066910939_)
                                                         (let ((_e1067010942_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1066910939_)))
                   (let ((_hd1067110945_ (##car _e1067010942_))
                         (_tl1067210947_ (##cdr _e1067010942_)))
                     (if (gx#stx-null? _tl1067210947_)
                         (if (gx#stx-pair? _tl1066610931_)
                             (let ((_e1067310950_ (gx#stx-e _tl1066610931_)))
                               (let ((_hd1067410953_ (##car _e1067310950_))
                                     (_tl1067510955_ (##cdr _e1067310950_)))
                                 (if (gx#stx-pair? _hd1067410953_)
                                     (let ((_e1067610958_
                                            (gx#stx-e _hd1067410953_)))
                                       (let ((_hd1067710961_
                                              (##car _e1067610958_))
                                             (_tl1067810963_
                                              (##cdr _e1067610958_)))
                                         (if (gx#identifier? _hd1067710961_)
                                             (if (gx#stx-eq?
                                                  '%#ref
                                                  _hd1067710961_)
                                                 (if (gx#stx-pair?
                                                      _tl1067810963_)
                                                     (let ((_e1067910966_
                                                            (gx#stx-e
                                                             _tl1067810963_)))
                                                       (let ((_hd1068010969_
                                                              (##car _e1067910966_))
                                                             (_tl1068110971_
                                                              (##cdr _e1067910966_)))
                                                         (if (gx#stx-null?
                                                              _tl1068110971_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1067510955_)
                         (let ((_e1068210974_ (gx#stx-e _tl1067510955_)))
                           (let ((_hd1068310977_ (##car _e1068210974_))
                                 (_tl1068410979_ (##cdr _e1068210974_)))
                             (if (gx#stx-pair? _hd1068310977_)
                                 (let ((_e1068510982_
                                        (gx#stx-e _hd1068310977_)))
                                   (let ((_hd1068610985_ (##car _e1068510982_))
                                         (_tl1068710987_
                                          (##cdr _e1068510982_)))
                                     (if (gx#identifier? _hd1068610985_)
                                         (if (gx#stx-eq?
                                              '%#quote
                                              _hd1068610985_)
                                             (if (gx#stx-pair? _tl1068710987_)
                                                 (let ((_e1068810990_
                                                        (gx#stx-e
                                                         _tl1068710987_)))
                                                   (let ((_hd1068910993_
                                                          (##car _e1068810990_))
                                                         (_tl1069010995_
                                                          (##cdr _e1068810990_)))
                                                     (if (gx#stx-null?
                                                          _tl1069010995_)
                                                         (if (gx#stx-pair?
                                                              _tl1068410979_)
                                                             (let ((_e1069110998_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl1068410979_)))
                       (let ((_hd1069211001_ (##car _e1069110998_))
                             (_tl1069311003_ (##cdr _e1069110998_)))
                         (if (gx#stx-pair? _hd1069211001_)
                             (let ((_e1069411006_ (gx#stx-e _hd1069211001_)))
                               (let ((_hd1069511009_ (##car _e1069411006_))
                                     (_tl1069611011_ (##cdr _e1069411006_)))
                                 (if (gx#identifier? _hd1069511009_)
                                     (if (gx#stx-eq? '%#ref _hd1069511009_)
                                         (if (gx#stx-pair? _tl1069611011_)
                                             (let ((_e1069711014_
                                                    (gx#stx-e _tl1069611011_)))
                                               (let ((_hd1069811017_
                                                      (##car _e1069711014_))
                                                     (_tl1069911019_
                                                      (##cdr _e1069711014_)))
                                                 (if (gx#stx-null?
                                                      _tl1069911019_)
                                                     (if (gx#stx-pair?
                                                          _tl1069311003_)
                                                         (let ((_e1070011022_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1069311003_)))
                   (let ((_hd1070111025_ (##car _e1070011022_))
                         (_tl1070211027_ (##cdr _e1070011022_)))
                     (if (gx#stx-pair? _hd1070111025_)
                         (let ((_e1070311030_ (gx#stx-e _hd1070111025_)))
                           (let ((_hd1070411033_ (##car _e1070311030_))
                                 (_tl1070511035_ (##cdr _e1070311030_)))
                             (if (gx#identifier? _hd1070411033_)
                                 (if (gx#stx-eq? '%#quote _hd1070411033_)
                                     (if (gx#stx-pair? _tl1070511035_)
                                         (let ((_e1070611038_
                                                (gx#stx-e _tl1070511035_)))
                                           (let ((_hd1070711041_
                                                  (##car _e1070611038_))
                                                 (_tl1070811043_
                                                  (##cdr _e1070611038_)))
                                             (if (gx#stx-null? _tl1070811043_)
                                                 (if (gx#stx-null?
                                                      _tl1070211027_)
                                                     ((lambda (_L11046_
                                                               _L11047_
                                                               _L11048_
                                                               _L11049_
                                                               _L11050_)
                                                        (if (eq? (gxc#generate-runtime-binding-id
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L11050_)
                         'bind-method!)
                    (cons 'declare-method
                          (cons (gxc#generate-runtime-binding-id _L11049_)
                                (cons (gx#stx-e _L11048_)
                                      (cons (gxc#generate-runtime-binding-id
                                             _L11047_)
                                            (cons (gx#stx-e _L11046_) '())))))
                    (_g1065210913_ _g1065510916_)))
              _hd1070711041_
              _hd1069811017_
              _hd1068910993_
              _hd1068010969_
              _hd1067110945_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1065210913_
                                                      _g1065510916_))
                                                 (_g1065210913_
                                                  _g1065510916_))))
                                         (_g1065210913_ _g1065510916_))
                                     (_g1065210913_ _g1065510916_))
                                 (_g1065210913_ _g1065510916_))))
                         (_g1065210913_ _g1065510916_))))
                 (_g1065210913_ _g1065510916_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1065210913_
                                                      _g1065510916_))))
                                             (_g1065210913_ _g1065510916_))
                                         (_g1065210913_ _g1065510916_))
                                     (_g1065210913_ _g1065510916_))))
                             (_g1065210913_ _g1065510916_))))
                     (_g1065210913_ _g1065510916_))
                 (_g1065210913_ _g1065510916_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1065210913_ _g1065510916_))
                                             (_g1065210913_ _g1065510916_))
                                         (_g1065210913_ _g1065510916_))))
                                 (_g1065210913_ _g1065510916_))))
                         (_g1065210913_ _g1065510916_))
                     (_g1065210913_ _g1065510916_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1065210913_
                                                      _g1065510916_))
                                                 (_g1065210913_ _g1065510916_))
                                             (_g1065210913_ _g1065510916_))))
                                     (_g1065210913_ _g1065510916_))))
                             (_g1065210913_ _g1065510916_))
                         (_g1065210913_ _g1065510916_))))
                 (_g1065210913_ _g1065510916_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1065210913_
                                                      _g1065510916_))
                                                 (_g1065210913_
                                                  _g1065510916_))))
                                         (_g1065210913_ _g1065510916_))))
                                 (_g1065210913_ _g1065510916_))))
                         (_g1065210913_ _g1065510916_)))))
              (_g1065111093_ _stx10650_)))))))
  (define gxc#!alias::typedecl
    (lambda (_self10626_)
      (let ((_self1062710633_ _self10626_))
        (let ((_E1062910637_
               (lambda () (error '"No clause matching" _self1062710633_))))
          (let ((_K1063010642_
                 (lambda (_alias-id10640_)
                   (cons '@alias (cons _alias-id10640_ '())))))
            (if (##structure-instance-of?
                 _self1062710633_
                 (##type-id gxc#!alias::t))
                (let ((_e1063110645_ (##vector-ref _self1062710633_ '1)))
                  (let ((_alias-id10648_ _e1063110645_))
                    (_K1063010642_ _alias-id10648_)))
                (_E1062910637_)))))))
  (bind-method! gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f)
  (define gxc#!struct-type::typedecl
    (lambda (_self10570_)
      (let ((_self1057110582_ _self10570_))
        (let ((_E1057310586_
               (lambda () (error '"No clause matching" _self1057110582_))))
          (let ((_K1057410595_
                 (lambda (_plist10589_
                          _ctor10590_
                          _fields10591_
                          _super10592_
                          _type-id10593_)
                   (cons '@struct-type
                         (cons _type-id10593_
                               (cons _super10592_
                                     (cons _fields10591_
                                           (cons _ctor10590_
                                                 (cons _plist10589_
                                                       '())))))))))
            (if (##structure-instance-of?
                 _self1057110582_
                 (##type-id gxc#!struct-type::t))
                (let ((_e1057510598_ (##vector-ref _self1057110582_ '1)))
                  (let ((_type-id10601_ _e1057510598_))
                    (let ((_e1057610603_ (##vector-ref _self1057110582_ '2)))
                      (let ((_super10606_ _e1057610603_))
                        (let ((_e1057710608_
                               (##vector-ref _self1057110582_ '3)))
                          (let ((_fields10611_ _e1057710608_))
                            (let ((_e1057810613_
                                   (##vector-ref _self1057110582_ '4)))
                              (let ((_e1057910616_
                                     (##vector-ref _self1057110582_ '5)))
                                (let ((_ctor10619_ _e1057910616_))
                                  (let ((_e1058010621_
                                         (##vector-ref _self1057110582_ '6)))
                                    (let ((_plist10624_ _e1058010621_))
                                      (_K1057410595_
                                       _plist10624_
                                       _ctor10619_
                                       _fields10611_
                                       _super10606_
                                       _type-id10601_))))))))))))
                (_E1057310586_)))))))
  (bind-method! gxc#!struct-type::t 'typedecl gxc#!struct-type::typedecl '#f)
  (define gxc#!struct-pred::typedecl
    (lambda (_self10546_)
      (let ((_self1054710553_ _self10546_))
        (let ((_E1054910557_
               (lambda () (error '"No clause matching" _self1054710553_))))
          (let ((_K1055010562_
                 (lambda (_struct-t10560_)
                   (cons '@struct-pred (cons _struct-t10560_ '())))))
            (if (##structure-instance-of?
                 _self1054710553_
                 (##type-id gxc#!struct-pred::t))
                (let ((_e1055110565_ (##vector-ref _self1054710553_ '1)))
                  (let ((_struct-t10568_ _e1055110565_))
                    (_K1055010562_ _struct-t10568_)))
                (_E1054910557_)))))))
  (bind-method! gxc#!struct-pred::t 'typedecl gxc#!struct-pred::typedecl '#f)
  (define gxc#!struct-cons::typedecl
    (lambda (_self10522_)
      (let ((_self1052310529_ _self10522_))
        (let ((_E1052510533_
               (lambda () (error '"No clause matching" _self1052310529_))))
          (let ((_K1052610538_
                 (lambda (_struct-t10536_)
                   (cons '@struct-cons (cons _struct-t10536_ '())))))
            (if (##structure-instance-of?
                 _self1052310529_
                 (##type-id gxc#!struct-cons::t))
                (let ((_e1052710541_ (##vector-ref _self1052310529_ '1)))
                  (let ((_struct-t10544_ _e1052710541_))
                    (_K1052610538_ _struct-t10544_)))
                (_E1052510533_)))))))
  (bind-method! gxc#!struct-cons::t 'typedecl gxc#!struct-cons::typedecl '#f)
  (define gxc#!struct-getf::typedecl
    (lambda (_self10491_)
      (let ((_self1049210499_ _self10491_))
        (let ((_E1049410503_
               (lambda () (error '"No clause matching" _self1049210499_))))
          (let ((_K1049510509_
                 (lambda (_off10506_ _struct-t10507_)
                   (cons '@struct-getf
                         (cons _struct-t10507_ (cons _off10506_ '()))))))
            (if (##structure-instance-of?
                 _self1049210499_
                 (##type-id gxc#!struct-getf::t))
                (let ((_e1049610512_ (##vector-ref _self1049210499_ '1)))
                  (let ((_struct-t10515_ _e1049610512_))
                    (let ((_e1049710517_ (##vector-ref _self1049210499_ '2)))
                      (let ((_off10520_ _e1049710517_))
                        (_K1049510509_ _off10520_ _struct-t10515_)))))
                (_E1049410503_)))))))
  (bind-method! gxc#!struct-getf::t 'typedecl gxc#!struct-getf::typedecl '#f)
  (define gxc#!struct-setf::typedecl
    (lambda (_self10460_)
      (let ((_self1046110468_ _self10460_))
        (let ((_E1046310472_
               (lambda () (error '"No clause matching" _self1046110468_))))
          (let ((_K1046410478_
                 (lambda (_off10475_ _struct-t10476_)
                   (cons '@struct-setf
                         (cons _struct-t10476_ (cons _off10475_ '()))))))
            (if (##structure-instance-of?
                 _self1046110468_
                 (##type-id gxc#!struct-setf::t))
                (let ((_e1046510481_ (##vector-ref _self1046110468_ '1)))
                  (let ((_struct-t10484_ _e1046510481_))
                    (let ((_e1046610486_ (##vector-ref _self1046110468_ '2)))
                      (let ((_off10489_ _e1046610486_))
                        (_K1046410478_ _off10489_ _struct-t10484_)))))
                (_E1046310472_)))))))
  (bind-method! gxc#!struct-setf::t 'typedecl gxc#!struct-setf::typedecl '#f)
  (define gxc#!lambda::typedecl
    (lambda (_self10408_)
      (let ((_self1040910419_ _self10408_))
        (let ((_E1041110423_
               (lambda () (error '"No clause matching" _self1040910419_))))
          (let ((_K1041210434_
                 (lambda (_typedecl10426_
                          _inline10427_
                          _dispatch10428_
                          _arity10429_)
                   (if _inline10427_
                       (let ((_$e10431_ _typedecl10426_))
                         (if _$e10431_
                             _$e10431_
                             (error '"Cannot generate typedecl for inline rules")))
                       (cons '@lambda
                             (cons _arity10429_
                                   (cons _dispatch10428_ '())))))))
            (if (##structure-instance-of?
                 _self1040910419_
                 (##type-id gxc#!lambda::t))
                (let ((_e1041310437_ (##vector-ref _self1040910419_ '1)))
                  (let ((_e1041410440_ (##vector-ref _self1040910419_ '2)))
                    (let ((_arity10443_ _e1041410440_))
                      (let ((_e1041510445_ (##vector-ref _self1040910419_ '3)))
                        (let ((_dispatch10448_ _e1041510445_))
                          (let ((_e1041610450_
                                 (##vector-ref _self1040910419_ '4)))
                            (let ((_inline10453_ _e1041610450_))
                              (let ((_e1041710455_
                                     (##vector-ref _self1040910419_ '5)))
                                (let ((_typedecl10458_ _e1041710455_))
                                  (_K1041210434_
                                   _typedecl10458_
                                   _inline10453_
                                   _dispatch10448_
                                   _arity10443_))))))))))
                (_E1041110423_)))))))
  (bind-method! gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f)
  (define gxc#!case-lambda::typedecl
    (lambda (_self10341_)
      (let ((_clause-e10343_
             (lambda (_clause10373_)
               (let ((_clause1037410382_ _clause10373_))
                 (let ((_E1037610386_
                        (lambda ()
                          (error '"No clause matching" _clause1037410382_))))
                   (let ((_K1037710392_
                          (lambda (_dispatch10389_ _arity10390_)
                            (cons _arity10390_ (cons _dispatch10389_ '())))))
                     (if (##structure-instance-of?
                          _clause1037410382_
                          (##type-id gxc#!lambda::t))
                         (let ((_e1037810395_
                                (##vector-ref _clause1037410382_ '1)))
                           (let ((_e1037910398_
                                  (##vector-ref _clause1037410382_ '2)))
                             (let ((_arity10401_ _e1037910398_))
                               (let ((_e1038010403_
                                      (##vector-ref _clause1037410382_ '3)))
                                 (let ((_dispatch10406_ _e1038010403_))
                                   (_K1037710392_
                                    _dispatch10406_
                                    _arity10401_))))))
                         (_E1037610386_))))))))
        (let ((_self1034410351_ _self10341_))
          (let ((_E1034610355_
                 (lambda () (error '"No clause matching" _self1034410351_))))
            (let ((_K1034710362_
                   (lambda (_clauses10358_)
                     (let ((_clauses10360_
                            (map _clause-e10343_ _clauses10358_)))
                       (cons '@case-lambda _clauses10360_)))))
              (if (##structure-instance-of?
                   _self1034410351_
                   (##type-id gxc#!case-lambda::t))
                  (let ((_e1034810365_ (##vector-ref _self1034410351_ '1)))
                    (let ((_e1034910368_ (##vector-ref _self1034410351_ '2)))
                      (let ((_clauses10371_ _e1034910368_))
                        (_K1034710362_ _clauses10371_))))
                  (_E1034610355_))))))))
  (bind-method! gxc#!case-lambda::t 'typedecl gxc#!case-lambda::typedecl '#f)
  (define gxc#identifier-symbol
    (lambda (_stx10339_) (gxc#generate-runtime-binding-id _stx10339_))))
