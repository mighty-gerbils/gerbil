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
    (lambda _$args19372_
      (apply make-struct-instance gxc#optimizer-info::t _$args19372_)))
  (define gxc#optimizer-info-type
    (make-struct-field-accessor gxc#optimizer-info::t '0))
  (define gxc#optimizer-info-ssxi
    (make-struct-field-accessor gxc#optimizer-info::t '1))
  (define gxc#optimizer-info-type-set!
    (make-struct-field-mutator gxc#optimizer-info::t '0))
  (define gxc#optimizer-info-ssxi-set!
    (make-struct-field-mutator gxc#optimizer-info::t '1))
  (define gxc#optimizer-info:::init!
    (lambda (_self19370_)
      (struct-instance-init!
       _self19370_
       (make-hash-table-eq)
       (make-hash-table-eq))))
  (bind-method! gxc#optimizer-info::t ':init! gxc#optimizer-info:::init! '#f)
  (define gxc#optimizer-info-init!
    (lambda ()
      (if (gxc#current-compile-optimizer-info)
          '#!void
          (gxc#current-compile-optimizer-info
           (let ((__obj19384 (make-object gxc#optimizer-info::t '2)))
             (begin (gxc#optimizer-info:::init! __obj19384) __obj19384))))))
  (define gxc#optimize!
    (lambda (_ctx19364_)
      (call-with-parameters
       (lambda ()
         (begin
           (gxc#optimizer-load-ssxi-deps _ctx19364_)
           (table-set!
            (##structure-ref
             (gxc#current-compile-optimizer-info)
             '2
             gxc#optimizer-info::t
             '#f)
            (##structure-ref _ctx19364_ '1 gx#expander-context::t '#f)
            '#t)
           (let ((_code19367_
                  (gxc#optimize-source
                   (##structure-ref _ctx19364_ '11 gx#module-context::t '#f))))
             (##structure-set!
              _ctx19364_
              _code19367_
              '11
              gx#module-context::t
              '#f))))
       gxc#current-compile-mutators
       (make-hash-table-eq)
       gxc#current-compile-local-type
       (make-hash-table-eq))))
  (define gxc#optimizer-load-ssxi-deps
    (lambda (_ctx19309_)
      (let ((_deps19311_
             (let ((_imports19355_
                    (##structure-ref _ctx19309_ '8 gx#module-context::t '#f)))
               (let ((_$e19357_
                      (gx#core-context-prelude__opt-lambda11357 _ctx19309_)))
                 (if _$e19357_
                     ((lambda (_g1935919361_)
                        (cons _g1935919361_ _imports19355_))
                      _$e19357_)
                     _imports19355_)))))
        ((letrec ((_lp19313_
                   (lambda (_rest19315_)
                     (let ((_rest1931619324_ _rest19315_))
                       (let ((_E1931919328_
                              (lambda ()
                                (error '"No clause matching"
                                       _rest1931619324_))))
                         (let ((_else1931819332_ (lambda () '#!void)))
                           (let ((_K1932019343_
                                  (lambda (_rest19335_ _hd19336_)
                                    (if (##structure-instance-of?
                                         _hd19336_
                                         'gx#module-context::t)
                                        (begin
                                          (if (table-ref
                                               (##structure-ref
                                                (gxc#current-compile-optimizer-info)
                                                '2
                                                gxc#optimizer-info::t
                                                '#f)
                                               (##structure-ref
                                                _hd19336_
                                                '1
                                                gx#expander-context::t
                                                '#f)
                                               '#f)
                                              '#!void
                                              (begin
                                                (let ((_$e19338_
                                                       (gx#core-context-prelude__opt-lambda11357
                                                        _hd19336_)))
                                                  (if _$e19338_
                                                      ((lambda (_pre19341_)
                                                         (_lp19313_
                                                          (cons _pre19341_
                                                                (##structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd19336_
                         '8
                         gx#module-context::t
                         '#f))))
               _$e19338_)
              (_lp19313_
               (##structure-ref _hd19336_ '8 gx#module-context::t '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (gxc#optimizer-load-ssxi
                                                 _hd19336_)))
                                          (_lp19313_ _rest19335_))
                                        (if (##structure-instance-of?
                                             _hd19336_
                                             'gx#prelude-context::t)
                                            (begin
                                              (if (table-ref
                                                   (##structure-ref
                                                    (gxc#current-compile-optimizer-info)
                                                    '2
                                                    gxc#optimizer-info::t
                                                    '#f)
                                                   (##structure-ref
                                                    _hd19336_
                                                    '1
                                                    gx#expander-context::t
                                                    '#f)
                                                   '#f)
                                                  '#!void
                                                  (begin
                                                    (_lp19313_
                                                     (##structure-ref
                                                      _hd19336_
                                                      '7
                                                      gx#prelude-context::t
                                                      '#f))
                                                    (gxc#optimizer-load-ssxi
                                                     _hd19336_)))
                                              (_lp19313_ _rest19335_))
                                            (if (##structure-direct-instance-of?
                                                 _hd19336_
                                                 'gx#module-import::t)
                                                (_lp19313_
                                                 (cons (##structure-ref
                                                        _hd19336_
                                                        '1
                                                        gx#module-import::t
                                                        '#f)
                                                       _rest19335_))
                                                (if (##structure-direct-instance-of?
                                                     _hd19336_
                                                     'gx#module-export::t)
                                                    (_lp19313_
                                                     (cons (##structure-ref
                                                            _hd19336_
                                                            '1
                                                            gx#module-export::t
                                                            '#f)
                                                           _rest19335_))
                                                    (if (##structure-direct-instance-of?
                                                         _hd19336_
                                                         'gx#import-set::t)
                                                        (_lp19313_
                                                         (cons (##structure-ref
                                                                _hd19336_
                                                                '1
                                                                gx#import-set::t
                                                                '#f)
                                                               _rest19335_))
                                                        (error '"Unexpected module import"
                                                               _hd19336_)))))))))
                             (if (##pair? _rest1931619324_)
                                 (let ((_hd1932119346_
                                        (##car _rest1931619324_))
                                       (_tl1932219348_
                                        (##cdr _rest1931619324_)))
                                   (let ((_hd19351_ _hd1932119346_))
                                     (let ((_rest19353_ _tl1932219348_))
                                       (_K1932019343_ _rest19353_ _hd19351_))))
                                 (_else1931819332_)))))))))
           _lp19313_)
         _deps19311_))))
  (define gxc#optimizer-load-ssxi
    (lambda (_ctx19289_)
      (if (if (##structure-instance-of? _ctx19289_ 'gx#module-context::t)
              (list? (##structure-ref _ctx19289_ '7 gx#module-context::t '#f))
              '#f)
          '#!void
          (let ((_ht19291_
                 (##structure-ref
                  (gxc#current-compile-optimizer-info)
                  '2
                  gxc#optimizer-info::t
                  '#f)))
            (let ((_id19293_
                   (##structure-ref _ctx19289_ '1 gx#expander-context::t '#f)))
              (let ((_mod19295_ (table-ref _ht19291_ _id19293_ '#f)))
                (let ()
                  (let ((_$e19298_ _mod19295_))
                    (if _$e19298_
                        _$e19298_
                        (let ((_mod19301_
                               (gxc#optimizer-import-ssxi _ctx19289_)))
                          (let ((_val19306_
                                 (let ((_$e19303_ _mod19301_))
                                   (if _$e19303_ _$e19303_ '#!void))))
                            (let ()
                              (begin
                                (table-set! _ht19291_ _id19293_ _val19306_)
                                _val19306_)))))))))))))
  (define gxc#optimizer-import-ssxi
    (lambda (_ctx19266_)
      (let ((_catch-e19268_
             (lambda (_exn19287_)
               (begin
                 (if (gxc#current-compile-verbose)
                     (begin
                       (displayln
                        '"Failed to load ssxi module for "
                        (##structure-ref
                         _ctx19266_
                         '1
                         gx#expander-context::t
                         '#f))
                       (display-exception _exn19287_))
                     '#!void)
                 '#f))))
        (let ((_import-e19269_
               (lambda ()
                 (let ((_str-id19272_
                        (string-append
                         (symbol->string
                          (##structure-ref
                           _ctx19266_
                           '1
                           gx#expander-context::t
                           '#f))
                         '".ssxi")))
                   (let ((_artefact-path19280_
                          (let ((_odir1927319275_
                                 (gxc#current-compile-output-dir)))
                            (if _odir1927319275_
                                (let ((_odir19278_ _odir1927319275_))
                                  (path-expand
                                   (string-append _str-id19272_ '".ss")
                                   _odir19278_))
                                '#f))))
                     (let ((_library-path19282_
                            (string->symbol
                             (string-append '":" _str-id19272_))))
                       (let ((_ssxi-path19284_
                              (if (if _artefact-path19280_
                                      (file-exists? _artefact-path19280_)
                                      '#f)
                                  _artefact-path19280_
                                  _library-path19282_)))
                         (let ()
                           (begin
                             (gxc#verbose
                              '"Loading ssxi module "
                              _ssxi-path19284_)
                             (gx#import-module__opt-lambda11392
                              _ssxi-path19284_
                              '#t
                              '#t))))))))))
          (if (##structure-ref _ctx19266_ '1 gx#expander-context::t '#f)
              (with-exception-catcher _catch-e19268_ _import-e19269_)
              '#f)))))
  (define gxc#!type::t (make-struct-type 'gxc#!type::t '#f '1 '!type '() '#f))
  (define gxc#!type? (make-struct-predicate gxc#!type::t))
  (define gxc#make-!type
    (lambda _$args19263_
      (apply make-struct-instance gxc#!type::t _$args19263_)))
  (define gxc#!type-id (make-struct-field-accessor gxc#!type::t '0))
  (define gxc#!type-id-set! (make-struct-field-mutator gxc#!type::t '0))
  (define gxc#!alias::t
    (make-struct-type 'gxc#!alias::t gxc#!type::t '0 '!alias '() '#f))
  (define gxc#!alias? (make-struct-predicate gxc#!alias::t))
  (define gxc#make-!alias
    (lambda _$args19260_
      (apply make-struct-instance gxc#!alias::t _$args19260_)))
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
    (lambda _$args19257_
      (apply make-struct-instance gxc#!struct-type::t _$args19257_)))
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
    (lambda _$args19254_
      (apply make-struct-instance gxc#!procedure::t _$args19254_)))
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
    (lambda _$args19251_
      (apply make-struct-instance gxc#!struct-pred::t _$args19251_)))
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
    (lambda _$args19248_
      (apply make-struct-instance gxc#!struct-cons::t _$args19248_)))
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
    (lambda _$args19245_
      (apply make-struct-instance gxc#!struct-getf::t _$args19245_)))
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
    (lambda _$args19242_
      (apply make-struct-instance gxc#!struct-setf::t _$args19242_)))
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
    (lambda _$args19239_
      (apply make-struct-instance gxc#!lambda::t _$args19239_)))
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
    (lambda _$args19236_
      (apply make-struct-instance gxc#!case-lambda::t _$args19236_)))
  (define gxc#!case-lambda-clauses
    (make-struct-field-accessor gxc#!case-lambda::t '0))
  (define gxc#!case-lambda-clauses-set!
    (make-struct-field-mutator gxc#!case-lambda::t '0))
  (define gxc#!struct-type:::init!
    (lambda (_self19228_
             _id19229_
             _super19230_
             _fields19231_
             _xfields19232_
             _ctor19233_
             _plist19234_)
      (struct-instance-init!
       _self19228_
       _id19229_
       _super19230_
       _fields19231_
       _xfields19232_
       _ctor19233_
       _plist19234_
       '#f)))
  (bind-method! gxc#!struct-type::t ':init! gxc#!struct-type:::init! '#f)
  (begin
    (define gxc#!lambda:::init!__opt-lambda19192
      (lambda (_self19194_
               _id19195_
               _arity19196_
               _dispatch19197_
               _inline19198_
               _typedecl19199_)
        (struct-instance-init!
         _self19194_
         _id19195_
         _arity19196_
         _dispatch19197_
         _inline19198_
         _typedecl19199_)))
    (begin
      (define gxc#!lambda:::init!__0
        (lambda (_self19204_ _id19205_ _arity19206_ _dispatch19207_)
          (let ((_inline19209_ '#f))
            (let ((_typedecl19211_ '#f))
              (struct-instance-init!
               _self19204_
               _id19205_
               _arity19206_
               _dispatch19207_
               _inline19209_
               _typedecl19211_)))))
      (define gxc#!lambda:::init!__1
        (lambda (_self19213_
                 _id19214_
                 _arity19215_
                 _dispatch19216_
                 _inline19217_)
          (let ((_typedecl19219_ '#f))
            (struct-instance-init!
             _self19213_
             _id19214_
             _arity19215_
             _dispatch19216_
             _inline19217_
             _typedecl19219_))))
      (define gxc#!lambda:::init!
        (lambda _g19392_
          (let ((_g19391_ (length _g19392_)))
            (cond ((fx= _g19391_ 4) (apply gxc#!lambda:::init!__0 _g19392_))
                  ((fx= _g19391_ 5) (apply gxc#!lambda:::init!__1 _g19392_))
                  ((fx= _g19391_ 6) (apply struct-instance-init! _g19392_))
                  (else (error "No clause matching arguments" _g19392_))))))))
  (bind-method! gxc#!lambda::t ':init! gxc#!lambda:::init! '#f)
  (define gxc#!struct-type-vtab
    (lambda (_type19186_)
      (let ((_$e19188_
             (##structure-ref _type19186_ '7 gxc#!struct-type::t '#f)))
        (if _$e19188_
            (values _$e19188_)
            (let ((_vtab19191_ (make-hash-table-eq)))
              (begin
                (##structure-set!
                 _type19186_
                 _vtab19191_
                 '7
                 gxc#!struct-type::t
                 '#f)
                _vtab19191_))))))
  (define gxc#!struct-type-lookup-method
    (lambda (_type19177_ _method19178_)
      (let ((_vtab1917919181_
             (##structure-ref _type19177_ '7 gxc#!struct-type::t '#f)))
        (if _vtab1917919181_
            (let ((_vtab19184_ _vtab1917919181_))
              (table-ref _vtab19184_ _method19178_ '#f))
            '#f))))
  (begin
    (define gxc#optimizer-declare-type!__opt-lambda19159
      (lambda (_sym19161_ _type19162_ _local?19163_)
        (begin
          (if (##structure-instance-of? _type19162_ 'gxc#!type::t)
              '#!void
              (error '"bad declaration: expected !type"
                     _sym19161_
                     _type19162_))
          (gxc#verbose
           '"declare-type "
           _sym19161_
           '" "
           (##vector->list _type19162_))
          (table-set!
           (if _local?19163_
               (gxc#current-compile-local-type)
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '1
                gxc#optimizer-info::t
                '#f))
           _sym19161_
           _type19162_))))
    (begin
      (define gxc#optimizer-declare-type!__0
        (lambda (_sym19168_ _type19169_)
          (let ((_local?19171_ '#f))
            (gxc#optimizer-declare-type!__opt-lambda19159
             _sym19168_
             _type19169_
             _local?19171_))))
      (define gxc#optimizer-declare-type!
        (lambda _g19394_
          (let ((_g19393_ (length _g19394_)))
            (cond ((fx= _g19393_ 2)
                   (apply gxc#optimizer-declare-type!__0 _g19394_))
                  ((fx= _g19393_ 3)
                   (apply gxc#optimizer-declare-type!__opt-lambda19159
                          _g19394_))
                  (else (error "No clause matching arguments" _g19394_))))))))
  (begin
    (define gxc#optimizer-declare-method!__opt-lambda19135
      (lambda (_type-t19137_ _method19138_ _sym19139_ _rebind?19140_)
        (let ((_type19142_ (gxc#optimizer-resolve-type _type-t19137_)))
          (if (##structure-instance-of? _type19142_ 'gxc#!struct-type::t)
              (let ((_vtab19144_ (gxc#!struct-type-vtab _type19142_)))
                (if _rebind?19140_
                    (if (hash-key? _vtab19144_ _method19138_)
                        (gxc#verbose
                         '"declare-method: [warning] skip rebind on existing method"
                         _type-t19137_
                         '" "
                         _method19138_)
                        (gxc#verbose
                         '"declare-method: skip rebind method "
                         _type-t19137_
                         '" "
                         _method19138_))
                    (if (hash-key? _vtab19144_ _method19138_)
                        (error '"declare-method: duplicate method declaration")
                        (begin
                          (gxc#verbose
                           '"declare-method "
                           _type-t19137_
                           '" "
                           _method19138_
                           '" => "
                           _sym19139_)
                          (table-set! _vtab19144_ _method19138_ _sym19139_)))))
              (if (not _type19142_)
                  (gxc#verbose '"declare-method: unknown type " _type-t19137_)
                  (error '"declare-method: bad method declaration; no method table"
                         _type-t19137_
                         _type19142_))))))
    (begin
      (define gxc#optimizer-declare-method!__0
        (lambda (_type-t19149_ _method19150_ _sym19151_)
          (let ((_rebind?19153_ '#f))
            (gxc#optimizer-declare-method!__opt-lambda19135
             _type-t19149_
             _method19150_
             _sym19151_
             _rebind?19153_))))
      (define gxc#optimizer-declare-method!
        (lambda _g19396_
          (let ((_g19395_ (length _g19396_)))
            (cond ((fx= _g19395_ 3)
                   (apply gxc#optimizer-declare-method!__0 _g19396_))
                  ((fx= _g19395_ 4)
                   (apply gxc#optimizer-declare-method!__opt-lambda19135
                          _g19396_))
                  (else (error "No clause matching arguments" _g19396_))))))))
  (define gxc#optimizer-lookup-type
    (lambda (_sym19125_)
      (let ((_$e19133_
             (let ((_ht1912619128_ (gxc#current-compile-local-type)))
               (if _ht1912619128_
                   (let ((_ht19131_ _ht1912619128_))
                     (table-ref _ht19131_ _sym19125_ '#f))
                   '#f))))
        (if _$e19133_
            _$e19133_
            (table-ref
             (##structure-ref
              (gxc#current-compile-optimizer-info)
              '1
              gxc#optimizer-info::t
              '#f)
             _sym19125_
             '#f)))))
  (define gxc#optimizer-resolve-type
    (lambda (_sym19117_)
      (let ((_type1911819120_ (gxc#optimizer-lookup-type _sym19117_)))
        (if _type1911819120_
            (let ((_type19123_ _type1911819120_))
              (if (##structure-instance-of? _type19123_ 'gxc#!alias::t)
                  (gxc#optimizer-resolve-type
                   (##structure-ref _type19123_ '1 gxc#!type::t '#f))
                  _type19123_))
            '#f))))
  (define gxc#optimizer-lookup-method
    (lambda (_type-t19112_ _method19113_)
      (let ((_type19115_ (gxc#optimizer-resolve-type _type-t19112_)))
        (if (##structure-instance-of? _type19115_ 'gxc#!struct-type::t)
            (gxc#!struct-type-lookup-method _type19115_ _method19113_)
            '#f))))
  (define gxc#optimize-source
    (lambda (_stx19108_)
      (begin
        (gxc#apply-collect-mutators _stx19108_)
        (let ((_stx19110_ (gxc#apply-lift-top-lambdas _stx19108_)))
          (begin
            (gxc#apply-collect-type-info _stx19110_)
            (gxc#apply-optimize-call _stx19110_))))))
  (define gxc#&false-expression
    (make-promise
     (lambda ()
       (let ((_tbl19105_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl19105_ '%#lambda false)
           (table-set! _tbl19105_ '%#case-lambda false)
           (table-set! _tbl19105_ '%#let-values false)
           (table-set! _tbl19105_ '%#letrec-values false)
           (table-set! _tbl19105_ '%#letrec*-values false)
           (table-set! _tbl19105_ '%#quote false)
           (table-set! _tbl19105_ '%#quote-syntax false)
           (table-set! _tbl19105_ '%#call false)
           (table-set! _tbl19105_ '%#if false)
           (table-set! _tbl19105_ '%#ref false)
           (table-set! _tbl19105_ '%#set! false)
           (table-set! _tbl19105_ '%#struct-instance? false)
           (table-set! _tbl19105_ '%#struct-direct-instance? false)
           (table-set! _tbl19105_ '%#struct-ref false)
           (table-set! _tbl19105_ '%#struct-set! false)
           _tbl19105_)))))
  (define gxc#&false-special-form
    (make-promise
     (lambda ()
       (let ((_tbl19101_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl19101_ '%#begin false)
           (table-set! _tbl19101_ '%#begin-syntax false)
           (table-set! _tbl19101_ '%#begin-foreign false)
           (table-set! _tbl19101_ '%#module false)
           (table-set! _tbl19101_ '%#import false)
           (table-set! _tbl19101_ '%#export false)
           (table-set! _tbl19101_ '%#provide false)
           (table-set! _tbl19101_ '%#extern false)
           (table-set! _tbl19101_ '%#define-values false)
           (table-set! _tbl19101_ '%#define-syntax false)
           (table-set! _tbl19101_ '%#define-alias false)
           (table-set! _tbl19101_ '%#declare false)
           _tbl19101_)))))
  (define gxc#&false
    (make-promise
     (lambda ()
       (let ((_tbl19097_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl19097_ (force gxc#&false-special-form))
           (hash-copy! _tbl19097_ (force gxc#&false-expression))
           _tbl19097_)))))
  (define gxc#&identity-expression
    (make-promise
     (lambda ()
       (let ((_tbl19093_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl19093_ '%#lambda gxc#xform-identity)
           (table-set! _tbl19093_ '%#case-lambda gxc#xform-identity)
           (table-set! _tbl19093_ '%#let-values gxc#xform-identity)
           (table-set! _tbl19093_ '%#letrec-values gxc#xform-identity)
           (table-set! _tbl19093_ '%#letrec*-values gxc#xform-identity)
           (table-set! _tbl19093_ '%#quote gxc#xform-identity)
           (table-set! _tbl19093_ '%#quote-syntax gxc#xform-identity)
           (table-set! _tbl19093_ '%#call gxc#xform-identity)
           (table-set! _tbl19093_ '%#if gxc#xform-identity)
           (table-set! _tbl19093_ '%#ref gxc#xform-identity)
           (table-set! _tbl19093_ '%#set! gxc#xform-identity)
           (table-set! _tbl19093_ '%#struct-instance? gxc#xform-identity)
           (table-set!
            _tbl19093_
            '%#struct-direct-instance?
            gxc#xform-identity)
           (table-set! _tbl19093_ '%#struct-ref gxc#xform-identity)
           (table-set! _tbl19093_ '%#struct-set! gxc#xform-identity)
           _tbl19093_)))))
  (define gxc#&identity-special-form
    (make-promise
     (lambda ()
       (let ((_tbl19089_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl19089_ '%#begin gxc#xform-identity)
           (table-set! _tbl19089_ '%#begin-syntax gxc#xform-identity)
           (table-set! _tbl19089_ '%#begin-foreign gxc#xform-identity)
           (table-set! _tbl19089_ '%#module gxc#xform-identity)
           (table-set! _tbl19089_ '%#import gxc#xform-identity)
           (table-set! _tbl19089_ '%#export gxc#xform-identity)
           (table-set! _tbl19089_ '%#provide gxc#xform-identity)
           (table-set! _tbl19089_ '%#extern gxc#xform-identity)
           (table-set! _tbl19089_ '%#define-values gxc#xform-identity)
           (table-set! _tbl19089_ '%#define-syntax gxc#xform-identity)
           (table-set! _tbl19089_ '%#define-alias gxc#xform-identity)
           (table-set! _tbl19089_ '%#declare gxc#xform-identity)
           _tbl19089_)))))
  (define gxc#&identity
    (make-promise
     (lambda ()
       (let ((_tbl19085_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl19085_ (force gxc#&identity-special-form))
           (hash-copy! _tbl19085_ (force gxc#&identity-expression))
           _tbl19085_)))))
  (define gxc#&basic-xform-expression
    (make-promise
     (lambda ()
       (let ((_tbl19081_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl19081_ '%#lambda gxc#xform-lambda%)
           (table-set! _tbl19081_ '%#case-lambda gxc#xform-case-lambda%)
           (table-set! _tbl19081_ '%#let-values gxc#xform-let-values%)
           (table-set! _tbl19081_ '%#letrec-values gxc#xform-let-values%)
           (table-set! _tbl19081_ '%#letrec*-values gxc#xform-let-values%)
           (table-set! _tbl19081_ '%#quote gxc#xform-identity)
           (table-set! _tbl19081_ '%#quote-syntax gxc#xform-identity)
           (table-set! _tbl19081_ '%#call gxc#xform-operands)
           (table-set! _tbl19081_ '%#if gxc#xform-operands)
           (table-set! _tbl19081_ '%#ref gxc#xform-identity)
           (table-set! _tbl19081_ '%#set! gxc#xform-setq%)
           (table-set! _tbl19081_ '%#struct-instance? gxc#xform-operands)
           (table-set!
            _tbl19081_
            '%#struct-direct-instance?
            gxc#xform-operands)
           (table-set! _tbl19081_ '%#struct-ref gxc#xform-operands)
           (table-set! _tbl19081_ '%#struct-set! gxc#xform-operands)
           _tbl19081_)))))
  (define gxc#&basic-xform
    (make-promise
     (lambda ()
       (let ((_tbl19077_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl19077_ (force gxc#&basic-xform-expression))
           (hash-copy! _tbl19077_ (force gxc#&identity))
           (table-set! _tbl19077_ '%#begin gxc#xform-begin%)
           (table-set! _tbl19077_ '%#module gxc#xform-module%)
           (table-set! _tbl19077_ '%#define-values gxc#xform-define-values%)
           _tbl19077_)))))
  (define gxc#&collect-mutators
    (make-promise
     (lambda ()
       (let ((_tbl19073_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl19073_ (force gxc#&void))
           (table-set! _tbl19073_ '%#begin gxc#collect-begin%)
           (table-set! _tbl19073_ '%#module gxc#collect-module%)
           (table-set! _tbl19073_ '%#lambda gxc#collect-body-lambda%)
           (table-set! _tbl19073_ '%#case-lambda gxc#collect-body-case-lambda%)
           (table-set! _tbl19073_ '%#let-values gxc#collect-body-let-values%)
           (table-set!
            _tbl19073_
            '%#letrec-values
            gxc#collect-body-let-values%)
           (table-set!
            _tbl19073_
            '%#letrec*-values
            gxc#collect-body-let-values%)
           (table-set! _tbl19073_ '%#call gxc#collect-operands)
           (table-set! _tbl19073_ '%#if gxc#collect-operands)
           (table-set! _tbl19073_ '%#set! gxc#collect-mutators-setq%)
           (table-set! _tbl19073_ '%#struct-instance? gxc#collect-operands)
           (table-set!
            _tbl19073_
            '%#struct-direct-instance?
            gxc#collect-operands)
           (table-set! _tbl19073_ '%#struct-ref gxc#collect-operands)
           (table-set! _tbl19073_ '%#struct-set! gxc#collect-operands)
           _tbl19073_)))))
  (define gxc#apply-collect-mutators
    (lambda (_stx19066_ . _args19068_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx19066_ _args19068_))
       gxc#current-compile-methods
       (force gxc#&collect-mutators))))
  (define gxc#&lift-top-lambdas
    (make-promise
     (lambda ()
       (let ((_tbl19063_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl19063_ (force gxc#&basic-xform))
           (table-set!
            _tbl19063_
            '%#define-values
            gxc#lift-top-lambda-define-values%)
           (table-set!
            _tbl19063_
            '%#let-values
            gxc#lift-top-lambda-let-values%)
           (table-set!
            _tbl19063_
            '%#letrec-values
            gxc#lift-top-lambda-letrec-values%)
           (table-set!
            _tbl19063_
            '%#letrec*-values
            gxc#lift-top-lambda-letrec-values%)
           _tbl19063_)))))
  (define gxc#apply-lift-top-lambdas
    (lambda (_stx19056_ . _args19058_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx19056_ _args19058_))
       gxc#current-compile-methods
       (force gxc#&lift-top-lambdas))))
  (define gxc#&expression-subst
    (make-promise
     (lambda ()
       (let ((_tbl19053_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl19053_ (force gxc#&basic-xform-expression))
           (table-set! _tbl19053_ '%#begin gxc#xform-begin%)
           (table-set! _tbl19053_ '%#ref gxc#expression-subst-ref%)
           _tbl19053_)))))
  (define gxc#apply-expression-subst
    (lambda (_stx19046_ . _args19048_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx19046_ _args19048_))
       gxc#current-compile-methods
       (force gxc#&expression-subst))))
  (define gxc#&collect-type-info
    (make-promise
     (lambda ()
       (let ((_tbl19043_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl19043_ (force gxc#&void))
           (table-set! _tbl19043_ '%#begin gxc#collect-begin%)
           (table-set! _tbl19043_ '%#module gxc#collect-module%)
           (table-set!
            _tbl19043_
            '%#define-values
            gxc#collect-type-define-values%)
           (table-set! _tbl19043_ '%#lambda gxc#collect-body-lambda%)
           (table-set! _tbl19043_ '%#case-lambda gxc#collect-body-case-lambda%)
           (table-set! _tbl19043_ '%#let-values gxc#collect-type-let-values%)
           (table-set!
            _tbl19043_
            '%#letrec-values
            gxc#collect-type-let-values%)
           (table-set!
            _tbl19043_
            '%#letrec*-values
            gxc#collect-type-let-values%)
           (table-set! _tbl19043_ '%#call gxc#collect-type-call%)
           (table-set! _tbl19043_ '%#if gxc#collect-operands)
           (table-set! _tbl19043_ '%#set! gxc#collect-body-setq%)
           _tbl19043_)))))
  (define gxc#apply-collect-type-info
    (lambda (_stx19036_ . _args19038_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx19036_ _args19038_))
       gxc#current-compile-methods
       (force gxc#&collect-type-info))))
  (define gxc#&basic-expression-type
    (make-promise
     (lambda ()
       (let ((_tbl19033_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl19033_ (force gxc#&false))
           (table-set! _tbl19033_ '%#begin gxc#basic-expression-type-begin%)
           (table-set! _tbl19033_ '%#lambda gxc#basic-expression-type-lambda%)
           (table-set!
            _tbl19033_
            '%#case-lambda
            gxc#basic-expression-type-case-lambda%)
           (table-set! _tbl19033_ '%#call gxc#basic-expression-type-call%)
           (table-set! _tbl19033_ '%#ref gxc#basic-expression-type-ref%)
           _tbl19033_)))))
  (define gxc#apply-basic-expression-type
    (lambda (_stx19026_ . _args19028_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx19026_ _args19028_))
       gxc#current-compile-methods
       (force gxc#&basic-expression-type))))
  (define gxc#&optimize-call
    (make-promise
     (lambda ()
       (let ((_tbl19023_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl19023_ (force gxc#&basic-xform))
           (table-set! _tbl19023_ '%#call gxc#optimize-call%)
           _tbl19023_)))))
  (define gxc#apply-optimize-call
    (lambda (_stx19016_ . _args19018_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx19016_ _args19018_))
       gxc#current-compile-methods
       (force gxc#&optimize-call))))
  (define gxc#&generate-ssxi
    (make-promise
     (lambda ()
       (let ((_tbl19013_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl19013_ (force gxc#&generate-runtime-empty))
           (table-set! _tbl19013_ '%#begin gxc#generate-runtime-begin%)
           (table-set! _tbl19013_ '%#module gxc#generate-ssxi-module%)
           (table-set!
            _tbl19013_
            '%#define-values
            gxc#generate-ssxi-define-values%)
           (table-set! _tbl19013_ '%#call gxc#generate-ssxi-call%)
           _tbl19013_)))))
  (define gxc#apply-generate-ssxi
    (lambda (_stx19006_ . _args19008_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx19006_ _args19008_))
       gxc#current-compile-methods
       (force gxc#&generate-ssxi))))
  (define gxc#xform-identity (lambda (_stx19003_ . _args19004_) _stx19003_))
  (define gxc#xform-wrap-source
    (lambda (_stx19000_ _src-stx19001_)
      (gx#stx-wrap-source _stx19000_ (gx#stx-source _src-stx19001_))))
  (define gxc#xform-apply-compile-e
    (lambda (_args18994_)
      (lambda (_g1899518997_)
        (apply gxc#compile-e _g1899518997_ _args18994_))))
  (define gxc#xform-begin%
    (lambda (_stx18953_ . _args18954_)
      (let ((_g1895618966_
             (lambda (_g1895718963_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1895718963_))))
        (let ((_g1895518991_
               (lambda (_g1895718969_)
                 (if (gx#stx-pair? _g1895718969_)
                     (let ((_e1895918971_ (gx#stx-e _g1895718969_)))
                       (let ((_hd1896018974_ (##car _e1895918971_))
                             (_tl1896118976_ (##cdr _e1895918971_)))
                         ((lambda (_L18979_)
                            (let ((_forms18989_
                                   (map (gxc#xform-apply-compile-e _args18954_)
                                        _L18979_)))
                              (gxc#xform-wrap-source
                               (cons '%#begin _forms18989_)
                               _stx18953_)))
                          _tl1896118976_)))
                     (_g1895618966_ _g1895718969_)))))
          (_g1895518991_ _stx18953_)))))
  (define gxc#xform-module%
    (lambda (_stx18890_ . _args18891_)
      (let ((_g1889318907_
             (lambda (_g1889418904_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1889418904_))))
        (let ((_g1889218950_
               (lambda (_g1889418910_)
                 (if (gx#stx-pair? _g1889418910_)
                     (let ((_e1889718912_ (gx#stx-e _g1889418910_)))
                       (let ((_hd1889818915_ (##car _e1889718912_))
                             (_tl1889918917_ (##cdr _e1889718912_)))
                         (if (gx#stx-pair? _tl1889918917_)
                             (let ((_e1890018920_ (gx#stx-e _tl1889918917_)))
                               (let ((_hd1890118923_ (##car _e1890018920_))
                                     (_tl1890218925_ (##cdr _e1890018920_)))
                                 ((lambda (_L18928_ _L18929_)
                                    (let ((_ctx18942_
                                           (gx#syntax-local-e__0 _L18929_)))
                                      (let ((_code18944_
                                             (##structure-ref
                                              _ctx18942_
                                              '11
                                              gx#module-context::t
                                              '#f)))
                                        (let ((_code18947_
                                               (call-with-parameters
                                                (lambda ()
                                                  (apply gxc#compile-e
                                                         _code18944_
                                                         _args18891_))
                                                gx#current-expander-context
                                                _ctx18942_)))
                                          (let ()
                                            (begin
                                              (##structure-set!
                                               _ctx18942_
                                               _code18947_
                                               '11
                                               gx#module-context::t
                                               '#f)
                                              (gxc#xform-wrap-source
                                               (cons '%#module
                                                     (cons _L18929_
                                                           (cons _code18947_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _stx18890_)))))))
                                  _tl1890218925_
                                  _hd1890118923_)))
                             (_g1889318907_ _g1889418910_))))
                     (_g1889318907_ _g1889418910_)))))
          (_g1889218950_ _stx18890_)))))
  (define gxc#xform-define-values%
    (lambda (_stx18820_ . _args18821_)
      (let ((_g1882318840_
             (lambda (_g1882418837_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1882418837_))))
        (let ((_g1882218887_
               (lambda (_g1882418843_)
                 (if (gx#stx-pair? _g1882418843_)
                     (let ((_e1882718845_ (gx#stx-e _g1882418843_)))
                       (let ((_hd1882818848_ (##car _e1882718845_))
                             (_tl1882918850_ (##cdr _e1882718845_)))
                         (if (gx#stx-pair? _tl1882918850_)
                             (let ((_e1883018853_ (gx#stx-e _tl1882918850_)))
                               (let ((_hd1883118856_ (##car _e1883018853_))
                                     (_tl1883218858_ (##cdr _e1883018853_)))
                                 (if (gx#stx-pair? _tl1883218858_)
                                     (let ((_e1883318861_
                                            (gx#stx-e _tl1883218858_)))
                                       (let ((_hd1883418864_
                                              (##car _e1883318861_))
                                             (_tl1883518866_
                                              (##cdr _e1883318861_)))
                                         (if (gx#stx-null? _tl1883518866_)
                                             ((lambda (_L18869_ _L18870_)
                                                (let ((_expr18885_
                                                       (apply gxc#compile-e
                                                              _L18869_
                                                              _args18821_)))
                                                  (gxc#xform-wrap-source
                                                   (cons '%#define-values
                                                         (cons _L18870_
                                                               (cons _expr18885_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _stx18820_)))
                                              _hd1883418864_
                                              _hd1883118856_)
                                             (_g1882318840_ _g1882418843_))))
                                     (_g1882318840_ _g1882418843_))))
                             (_g1882318840_ _g1882418843_))))
                     (_g1882318840_ _g1882418843_)))))
          (_g1882218887_ _stx18820_)))))
  (define gxc#xform-lambda%
    (lambda (_stx18763_ . _args18764_)
      (let ((_g1876618780_
             (lambda (_g1876718777_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1876718777_))))
        (let ((_g1876518817_
               (lambda (_g1876718783_)
                 (if (gx#stx-pair? _g1876718783_)
                     (let ((_e1877018785_ (gx#stx-e _g1876718783_)))
                       (let ((_hd1877118788_ (##car _e1877018785_))
                             (_tl1877218790_ (##cdr _e1877018785_)))
                         (if (gx#stx-pair? _tl1877218790_)
                             (let ((_e1877318793_ (gx#stx-e _tl1877218790_)))
                               (let ((_hd1877418796_ (##car _e1877318793_))
                                     (_tl1877518798_ (##cdr _e1877318793_)))
                                 ((lambda (_L18801_ _L18802_)
                                    (let ((_body18815_
                                           (map (gxc#xform-apply-compile-e
                                                 _args18764_)
                                                _L18801_)))
                                      (gxc#xform-wrap-source
                                       (cons '%#lambda
                                             (cons _L18802_ _body18815_))
                                       _stx18763_)))
                                  _tl1877518798_
                                  _hd1877418796_)))
                             (_g1876618780_ _g1876718783_))))
                     (_g1876618780_ _g1876718783_)))))
          (_g1876518817_ _stx18763_)))))
  (define gxc#xform-case-lambda%
    (lambda (_stx18676_ . _args18677_)
      (let ((_clause-e18679_
             (lambda (_clause18720_)
               (let ((_g1872218733_
                      (lambda (_g1872318730_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax"
                         _g1872318730_))))
                 (let ((_g1872118760_
                        (lambda (_g1872318736_)
                          (if (gx#stx-pair? _g1872318736_)
                              (let ((_e1872618738_ (gx#stx-e _g1872318736_)))
                                (let ((_hd1872718741_ (##car _e1872618738_))
                                      (_tl1872818743_ (##cdr _e1872618738_)))
                                  ((lambda (_L18746_ _L18747_)
                                     (let ((_body18758_
                                            (map (gxc#xform-apply-compile-e
                                                  _args18677_)
                                                 _L18746_)))
                                       (cons _L18747_ _body18758_)))
                                   _tl1872818743_
                                   _hd1872718741_)))
                              (_g1872218733_ _g1872318736_)))))
                   (_g1872118760_ _clause18720_))))))
        (let ((_g1868118691_
               (lambda (_g1868218688_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1868218688_))))
          (let ((_g1868018717_
                 (lambda (_g1868218694_)
                   (if (gx#stx-pair? _g1868218694_)
                       (let ((_e1868418696_ (gx#stx-e _g1868218694_)))
                         (let ((_hd1868518699_ (##car _e1868418696_))
                               (_tl1868618701_ (##cdr _e1868418696_)))
                           ((lambda (_L18704_)
                              (let ((_clauses18715_
                                     (map _clause-e18679_ _L18704_)))
                                (gxc#xform-wrap-source
                                 (cons '%#case-lambda _clauses18715_)
                                 _stx18676_)))
                            _tl1868618701_)))
                       (_g1868118691_ _g1868218694_)))))
            (_g1868018717_ _stx18676_))))))
  (define gxc#xform-let-values%
    (lambda (_stx18470_ . _args18471_)
      (let ((_g1847318506_
             (lambda (_g1847418503_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1847418503_))))
        (let ((_g1847218673_
               (lambda (_g1847418509_)
                 (if (gx#stx-pair? _g1847418509_)
                     (let ((_e1847918511_ (gx#stx-e _g1847418509_)))
                       (let ((_hd1848018514_ (##car _e1847918511_))
                             (_tl1848118516_ (##cdr _e1847918511_)))
                         (if (gx#stx-pair? _tl1848118516_)
                             (let ((_e1848218519_ (gx#stx-e _tl1848118516_)))
                               (let ((_hd1848318522_ (##car _e1848218519_))
                                     (_tl1848418524_ (##cdr _e1848218519_)))
                                 (if (gx#stx-pair/null? _hd1848318522_)
                                     (if (fx>= (gx#stx-length _hd1848318522_)
                                               '0)
                                         (let ((_g19397_
                                                (gx#syntax-split-splice
                                                 _hd1848318522_
                                                 '0)))
                                           (begin
                                             (let ((_g19398_
                                                    (values-count _g19397_)))
                                               (if (not (fx= _g19398_ 2))
                                                   (error "Context expects 2 values"
                                                          _g19398_)))
                                             (let ((_target1848518527_
                                                    (values-ref _g19397_ 0))
                                                   (_tl1848718529_
                                                    (values-ref _g19397_ 1)))
                                               (if (gx#stx-null?
                                                    _tl1848718529_)
                                                   (letrec ((_loop1848818532_
                                                             (lambda (_hd1848618535_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _expr1849218537_
                              _hd1849318539_)
                       (if (gx#stx-pair? _hd1848618535_)
                           (let ((_e1848918542_ (gx#stx-e _hd1848618535_)))
                             (let ((_lp-hd1849018545_ (##car _e1848918542_))
                                   (_lp-tl1849118547_ (##cdr _e1848918542_)))
                               (if (gx#stx-pair? _lp-hd1849018545_)
                                   (let ((_e1849618550_
                                          (gx#stx-e _lp-hd1849018545_)))
                                     (let ((_hd1849718553_
                                            (##car _e1849618550_))
                                           (_tl1849818555_
                                            (##cdr _e1849618550_)))
                                       (if (gx#stx-pair? _tl1849818555_)
                                           (let ((_e1849918558_
                                                  (gx#stx-e _tl1849818555_)))
                                             (let ((_hd1850018561_
                                                    (##car _e1849918558_))
                                                   (_tl1850118563_
                                                    (##cdr _e1849918558_)))
                                               (if (gx#stx-null?
                                                    _tl1850118563_)
                                                   (_loop1848818532_
                                                    _lp-tl1849118547_
                                                    (cons _hd1850018561_
                                                          _expr1849218537_)
                                                    (cons _hd1849718553_
                                                          _hd1849318539_))
                                                   (_g1847318506_
                                                    _g1847418509_))))
                                           (_g1847318506_ _g1847418509_))))
                                   (_g1847318506_ _g1847418509_))))
                           (let ((_expr1849418566_ (reverse _expr1849218537_))
                                 (_hd1849518568_ (reverse _hd1849318539_)))
                             ((lambda (_L18571_ _L18572_ _L18573_ _L18574_)
                                (let ((_g1859318609_
                                       (lambda (_g1859418606_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g1859418606_))))
                                  (let ((_g1859218663_
                                         (lambda (_g1859418612_)
                                           (if (gx#stx-pair/null?
                                                _g1859418612_)
                                               (if (fx>= (gx#stx-length
                                                          _g1859418612_)
                                                         '0)
                                                   (let ((_g19399_
                                                          (gx#syntax-split-splice
                                                           _g1859418612_
                                                           '0)))
                                                     (begin
                                                       (let ((_g19400_
                                                              (values-count
                                                               _g19399_)))
                                                         (if (not (fx= _g19400_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g19400_)))
               (let ((_target1859618614_ (values-ref _g19399_ 0))
                     (_tl1859818616_ (values-ref _g19399_ 1)))
                 (if (gx#stx-null? _tl1859818616_)
                     (letrec ((_loop1859918619_
                               (lambda (_hd1859718622_ _expr1860318624_)
                                 (if (gx#stx-pair? _hd1859718622_)
                                     (let ((_e1860018627_
                                            (gx#syntax-e _hd1859718622_)))
                                       (let ((_lp-hd1860118630_
                                              (##car _e1860018627_))
                                             (_lp-tl1860218632_
                                              (##cdr _e1860018627_)))
                                         (_loop1859918619_
                                          _lp-tl1860218632_
                                          (cons _lp-hd1860118630_
                                                _expr1860318624_))))
                                     (let ((_expr1860418635_
                                            (reverse _expr1860318624_)))
                                       ((lambda (_L18638_)
                                          (let ()
                                            (let ((_body18651_
                                                   (map (gxc#xform-apply-compile-e
                                                         _args18471_)
                                                        _L18571_)))
                                              (gxc#xform-wrap-source
                                               (cons _L18574_
                                                     (cons (begin
                                                             (gx#syntax-check-splice-targets
                                                              _L18638_
                                                              _L18573_)
                                                             (foldr (lambda (_g1865218656_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g1865318658_
                                     _g1865418660_)
                              (cons (cons _g1865318658_
                                          (cons _g1865218656_ '()))
                                    _g1865418660_))
                            '()
                            _L18638_
                            _L18573_))
                   _body18651_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _stx18470_))))
                                        _expr1860418635_))))))
                       (_loop1859918619_ _target1859618614_ '()))
                     (_g1859318609_ _g1859418612_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1859318609_
                                                    _g1859418612_))
                                               (_g1859318609_
                                                _g1859418612_)))))
                                    (_g1859218663_
                                     (map (gxc#xform-apply-compile-e
                                           _args18471_)
                                          (begin
                                            '#!void
                                            (foldr1 (lambda (_g1866518668_
                                                             _g1866618670_)
                                                      (cons _g1866518668_
                                                            _g1866618670_))
                                                    '()
                                                    _L18572_)))))))
                              _tl1848418524_
                              _expr1849418566_
                              _hd1849518568_
                              _hd1848018514_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop1848818532_
                                                      _target1848518527_
                                                      '()
                                                      '()))
                                                   (_g1847318506_
                                                    _g1847418509_)))))
                                         (_g1847318506_ _g1847418509_))
                                     (_g1847318506_ _g1847418509_))))
                             (_g1847318506_ _g1847418509_))))
                     (_g1847318506_ _g1847418509_)))))
          (_g1847218673_ _stx18470_)))))
  (define gxc#xform-operands
    (lambda (_stx18426_ . _args18427_)
      (let ((_g1842918440_
             (lambda (_g1843018437_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1843018437_))))
        (let ((_g1842818467_
               (lambda (_g1843018443_)
                 (if (gx#stx-pair? _g1843018443_)
                     (let ((_e1843318445_ (gx#stx-e _g1843018443_)))
                       (let ((_hd1843418448_ (##car _e1843318445_))
                             (_tl1843518450_ (##cdr _e1843318445_)))
                         ((lambda (_L18453_ _L18454_)
                            (let ((_rands18465_
                                   (map (gxc#xform-apply-compile-e _args18427_)
                                        _L18453_)))
                              (gxc#xform-wrap-source
                               (cons _L18454_ _rands18465_)
                               _stx18426_)))
                          _tl1843518450_
                          _hd1843418448_)))
                     (_g1842918440_ _g1843018443_)))))
          (_g1842818467_ _stx18426_)))))
  (define gxc#xform-call% gxc#xform-operands)
  (define gxc#xform-setq%
    (lambda (_stx18356_ . _args18357_)
      (let ((_g1835918376_
             (lambda (_g1836018373_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1836018373_))))
        (let ((_g1835818423_
               (lambda (_g1836018379_)
                 (if (gx#stx-pair? _g1836018379_)
                     (let ((_e1836318381_ (gx#stx-e _g1836018379_)))
                       (let ((_hd1836418384_ (##car _e1836318381_))
                             (_tl1836518386_ (##cdr _e1836318381_)))
                         (if (gx#stx-pair? _tl1836518386_)
                             (let ((_e1836618389_ (gx#stx-e _tl1836518386_)))
                               (let ((_hd1836718392_ (##car _e1836618389_))
                                     (_tl1836818394_ (##cdr _e1836618389_)))
                                 (if (gx#stx-pair? _tl1836818394_)
                                     (let ((_e1836918397_
                                            (gx#stx-e _tl1836818394_)))
                                       (let ((_hd1837018400_
                                              (##car _e1836918397_))
                                             (_tl1837118402_
                                              (##cdr _e1836918397_)))
                                         (if (gx#stx-null? _tl1837118402_)
                                             ((lambda (_L18405_ _L18406_)
                                                (let ((_expr18421_
                                                       (apply gxc#compile-e
                                                              _L18405_
                                                              _args18357_)))
                                                  (gxc#xform-wrap-source
                                                   (cons '%#set!
                                                         (cons _L18406_
                                                               (cons _expr18421_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _stx18356_)))
                                              _hd1837018400_
                                              _hd1836718392_)
                                             (_g1835918376_ _g1836018379_))))
                                     (_g1835918376_ _g1836018379_))))
                             (_g1835918376_ _g1836018379_))))
                     (_g1835918376_ _g1836018379_)))))
          (_g1835818423_ _stx18356_)))))
  (define gxc#collect-mutators-setq%
    (lambda (_stx18287_)
      (let ((_g1828918306_
             (lambda (_g1829018303_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1829018303_))))
        (let ((_g1828818353_
               (lambda (_g1829018309_)
                 (if (gx#stx-pair? _g1829018309_)
                     (let ((_e1829318311_ (gx#stx-e _g1829018309_)))
                       (let ((_hd1829418314_ (##car _e1829318311_))
                             (_tl1829518316_ (##cdr _e1829318311_)))
                         (if (gx#stx-pair? _tl1829518316_)
                             (let ((_e1829618319_ (gx#stx-e _tl1829518316_)))
                               (let ((_hd1829718322_ (##car _e1829618319_))
                                     (_tl1829818324_ (##cdr _e1829618319_)))
                                 (if (gx#stx-pair? _tl1829818324_)
                                     (let ((_e1829918327_
                                            (gx#stx-e _tl1829818324_)))
                                       (let ((_hd1830018330_
                                              (##car _e1829918327_))
                                             (_tl1830118332_
                                              (##cdr _e1829918327_)))
                                         (if (gx#stx-null? _tl1830118332_)
                                             ((lambda (_L18335_ _L18336_)
                                                (let ((_sym18351_
                                                       (gxc#generate-runtime-binding-id
                                                        _L18336_)))
                                                  (begin
                                                    (gxc#verbose
                                                     '"collect mutator "
                                                     _sym18351_)
                                                    (table-set!
                                                     (gxc#current-compile-mutators)
                                                     _sym18351_
                                                     '#t)
                                                    (gxc#compile-e _L18335_))))
                                              _hd1830018330_
                                              _hd1829718322_)
                                             (_g1828918306_ _g1829018309_))))
                                     (_g1828918306_ _g1829018309_))))
                             (_g1828918306_ _g1829018309_))))
                     (_g1828918306_ _g1829018309_)))))
          (_g1828818353_ _stx18287_)))))
  (define gxc#dispatch-lambda-form?
    (lambda (_form17521_)
      (let ((_g1752617683_
             (lambda (_g1752717680_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1752717680_))))
        (let ((_g1752517690_ (lambda (_g1752717686_) ((lambda () '#f)))))
          (let ((_g1752417830_
                 (lambda (_g1752717693_)
                   (if (gx#stx-pair? _g1752717693_)
                       (let ((_e1764317695_ (gx#stx-e _g1752717693_)))
                         (let ((_hd1764417698_ (##car _e1764317695_))
                               (_tl1764517700_ (##cdr _e1764317695_)))
                           (if (gx#stx-pair? _tl1764517700_)
                               (let ((_e1764617703_ (gx#stx-e _tl1764517700_)))
                                 (let ((_hd1764717706_ (##car _e1764617703_))
                                       (_tl1764817708_ (##cdr _e1764617703_)))
                                   (if (gx#stx-pair? _hd1764717706_)
                                       (let ((_e1764917711_
                                              (gx#stx-e _hd1764717706_)))
                                         (let ((_hd1765017714_
                                                (##car _e1764917711_))
                                               (_tl1765117716_
                                                (##cdr _e1764917711_)))
                                           (if (gx#identifier? _hd1765017714_)
                                               (if (gx#stx-eq?
                                                    '%#call
                                                    _hd1765017714_)
                                                   (if (gx#stx-pair?
                                                        _tl1765117716_)
                                                       (let ((_e1765217719_
                                                              (gx#stx-e
                                                               _tl1765117716_)))
                                                         (let ((_hd1765317722_
                                                                (##car _e1765217719_))
                                                               (_tl1765417724_
                                                                (##cdr _e1765217719_)))
                                                           (if (gx#stx-pair?
                                                                _hd1765317722_)
                                                               (let ((_e1765517727_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd1765317722_)))
                         (let ((_hd1765617730_ (##car _e1765517727_))
                               (_tl1765717732_ (##cdr _e1765517727_)))
                           (if (gx#identifier? _hd1765617730_)
                               (if (gx#stx-eq? '%#ref _hd1765617730_)
                                   (if (gx#stx-pair? _tl1765717732_)
                                       (let ((_e1765817735_
                                              (gx#stx-e _tl1765717732_)))
                                         (let ((_hd1765917738_
                                                (##car _e1765817735_))
                                               (_tl1766017740_
                                                (##cdr _e1765817735_)))
                                           (if (gx#stx-null? _tl1766017740_)
                                               (if (gx#stx-pair?
                                                    _tl1765417724_)
                                                   (let ((_e1766117743_
                                                          (gx#stx-e
                                                           _tl1765417724_)))
                                                     (let ((_hd1766217746_
                                                            (##car _e1766117743_))
                                                           (_tl1766317748_
                                                            (##cdr _e1766117743_)))
                                                       (if (gx#stx-pair?
                                                            _hd1766217746_)
                                                           (let ((_e1766417751_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd1766217746_)))
                     (let ((_hd1766517754_ (##car _e1766417751_))
                           (_tl1766617756_ (##cdr _e1766417751_)))
                       (if (gx#identifier? _hd1766517754_)
                           (if (gx#stx-eq? '%#ref _hd1766517754_)
                               (if (gx#stx-pair? _tl1766617756_)
                                   (let ((_e1766717759_
                                          (gx#stx-e _tl1766617756_)))
                                     (let ((_hd1766817762_
                                            (##car _e1766717759_))
                                           (_tl1766917764_
                                            (##cdr _e1766717759_)))
                                       (if (gx#stx-null? _tl1766917764_)
                                           (if (gx#stx-pair? _tl1766317748_)
                                               (let ((_e1767017767_
                                                      (gx#stx-e
                                                       _tl1766317748_)))
                                                 (let ((_hd1767117770_
                                                        (##car _e1767017767_))
                                                       (_tl1767217772_
                                                        (##cdr _e1767017767_)))
                                                   (if (gx#stx-pair?
                                                        _hd1767117770_)
                                                       (let ((_e1767317775_
                                                              (gx#stx-e
                                                               _hd1767117770_)))
                                                         (let ((_hd1767417778_
                                                                (##car _e1767317775_))
                                                               (_tl1767517780_
                                                                (##cdr _e1767317775_)))
                                                           (if (gx#identifier?
                                                                _hd1767417778_)
                                                               (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '%#ref
                            _hd1767417778_)
                           (if (gx#stx-pair? _tl1767517780_)
                               (let ((_e1767617783_ (gx#stx-e _tl1767517780_)))
                                 (let ((_hd1767717786_ (##car _e1767617783_))
                                       (_tl1767817788_ (##cdr _e1767617783_)))
                                   (if (gx#stx-null? _tl1767817788_)
                                       (if (gx#stx-null? _tl1767217772_)
                                           (if (gx#stx-null? _tl1764817708_)
                                               ((lambda (_L17791_
                                                         _L17792_
                                                         _L17793_
                                                         _L17794_)
                                                  (if (if (gx#identifier?
                                                           _L17794_)
                                                          (if (eq? (gxc#generate-runtime-binding-id
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L17793_)
                           'apply)
                      (if (gx#free-identifier=? _L17794_ _L17791_)
                          (not (gx#free-identifier=? _L17792_ _L17794_))
                          '#f)
                      '#f)
                  '#f)
              '#t
              (_g1752517690_ _g1752717693_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd1767717786_
                                                _hd1766817762_
                                                _hd1765917738_
                                                _hd1764417698_)
                                               (_g1752517690_ _g1752717693_))
                                           (_g1752517690_ _g1752717693_))
                                       (_g1752517690_ _g1752717693_))))
                               (_g1752517690_ _g1752717693_))
                           (_g1752517690_ _g1752717693_))
                       (_g1752517690_ _g1752717693_))))
               (_g1752517690_ _g1752717693_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1752517690_ _g1752717693_))
                                           (_g1752517690_ _g1752717693_))))
                                   (_g1752517690_ _g1752717693_))
                               (_g1752517690_ _g1752717693_))
                           (_g1752517690_ _g1752717693_))))
                   (_g1752517690_ _g1752717693_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1752517690_
                                                    _g1752717693_))
                                               (_g1752517690_ _g1752717693_))))
                                       (_g1752517690_ _g1752717693_))
                                   (_g1752517690_ _g1752717693_))
                               (_g1752517690_ _g1752717693_))))
                       (_g1752517690_ _g1752717693_))))
               (_g1752517690_ _g1752717693_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1752517690_
                                                    _g1752717693_))
                                               (_g1752517690_ _g1752717693_))))
                                       (_g1752517690_ _g1752717693_))))
                               (_g1752517690_ _g1752717693_))))
                       (_g1752517690_ _g1752717693_)))))
            (let ((_g1752318090_
                   (lambda (_g1752717833_)
                     (if (gx#stx-pair? _g1752717833_)
                         (let ((_e1757917835_ (gx#stx-e _g1752717833_)))
                           (let ((_hd1758017838_ (##car _e1757917835_))
                                 (_tl1758117840_ (##cdr _e1757917835_)))
                             (if (gx#stx-pair/null? _hd1758017838_)
                                 (if (fx>= (gx#stx-length _hd1758017838_) '0)
                                     (let ((_g19401_
                                            (gx#syntax-split-splice
                                             _hd1758017838_
                                             '0)))
                                       (begin
                                         (let ((_g19402_
                                                (values-count _g19401_)))
                                           (if (not (fx= _g19402_ 2))
                                               (error "Context expects 2 values"
                                                      _g19402_)))
                                         (let ((_target1758217843_
                                                (values-ref _g19401_ 0))
                                               (_tl1758417845_
                                                (values-ref _g19401_ 1)))
                                           (letrec ((_loop1758517848_
                                                     (lambda (_hd1758317851_
                                                              _arg1758917853_)
                                                       (if (gx#stx-pair?
                                                            _hd1758317851_)
                                                           (let ((_e1758617856_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd1758317851_)))
                     (let ((_lp-hd1758717859_ (##car _e1758617856_))
                           (_lp-tl1758817861_ (##cdr _e1758617856_)))
                       (_loop1758517848_
                        _lp-tl1758817861_
                        (cons _lp-hd1758717859_ _arg1758917853_))))
                   (let ((_arg1759017864_ (reverse _arg1758917853_)))
                     (if (gx#stx-pair? _tl1758117840_)
                         (let ((_e1759117867_ (gx#stx-e _tl1758117840_)))
                           (let ((_hd1759217870_ (##car _e1759117867_))
                                 (_tl1759317872_ (##cdr _e1759117867_)))
                             (if (gx#stx-pair? _hd1759217870_)
                                 (let ((_e1759417875_
                                        (gx#stx-e _hd1759217870_)))
                                   (let ((_hd1759517878_ (##car _e1759417875_))
                                         (_tl1759617880_
                                          (##cdr _e1759417875_)))
                                     (if (gx#identifier? _hd1759517878_)
                                         (if (gx#stx-eq?
                                              '%#call
                                              _hd1759517878_)
                                             (if (gx#stx-pair? _tl1759617880_)
                                                 (let ((_e1759717883_
                                                        (gx#stx-e
                                                         _tl1759617880_)))
                                                   (let ((_hd1759817886_
                                                          (##car _e1759717883_))
                                                         (_tl1759917888_
                                                          (##cdr _e1759717883_)))
                                                     (if (gx#stx-pair?
                                                          _hd1759817886_)
                                                         (let ((_e1760017891_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1759817886_)))
                   (let ((_hd1760117894_ (##car _e1760017891_))
                         (_tl1760217896_ (##cdr _e1760017891_)))
                     (if (gx#identifier? _hd1760117894_)
                         (if (gx#stx-eq? '%#ref _hd1760117894_)
                             (if (gx#stx-pair? _tl1760217896_)
                                 (let ((_e1760317899_
                                        (gx#stx-e _tl1760217896_)))
                                   (let ((_hd1760417902_ (##car _e1760317899_))
                                         (_tl1760517904_
                                          (##cdr _e1760317899_)))
                                     (if (gx#stx-null? _tl1760517904_)
                                         (if (gx#stx-pair? _tl1759917888_)
                                             (let ((_e1760617907_
                                                    (gx#stx-e _tl1759917888_)))
                                               (let ((_hd1760717910_
                                                      (##car _e1760617907_))
                                                     (_tl1760817912_
                                                      (##cdr _e1760617907_)))
                                                 (if (gx#stx-pair?
                                                      _hd1760717910_)
                                                     (let ((_e1760917915_
                                                            (gx#stx-e
                                                             _hd1760717910_)))
                                                       (let ((_hd1761017918_
                                                              (##car _e1760917915_))
                                                             (_tl1761117920_
                                                              (##cdr _e1760917915_)))
                                                         (if (gx#identifier?
                                                              _hd1761017918_)
                                                             (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '%#ref
                          _hd1761017918_)
                         (if (gx#stx-pair? _tl1761117920_)
                             (let ((_e1761217923_ (gx#stx-e _tl1761117920_)))
                               (let ((_hd1761317926_ (##car _e1761217923_))
                                     (_tl1761417928_ (##cdr _e1761217923_)))
                                 (if (gx#stx-null? _tl1761417928_)
                                     (if (gx#stx-pair/null? _tl1760817912_)
                                         (if (fx>= (gx#stx-length
                                                    _tl1760817912_)
                                                   '1)
                                             (let ((_g19403_
                                                    (gx#syntax-split-splice
                                                     _tl1760817912_
                                                     '1)))
                                               (begin
                                                 (let ((_g19404_
                                                        (values-count
                                                         _g19403_)))
                                                   (if (not (fx= _g19404_ 2))
                                                       (error "Context expects 2 values"
                                                              _g19404_)))
                                                 (let ((_target1761517931_
                                                        (values-ref
                                                         _g19403_
                                                         0))
                                                       (_tl1761717933_
                                                        (values-ref
                                                         _g19403_
                                                         1)))
                                                   (if (gx#stx-pair?
                                                        _tl1761717933_)
                                                       (let ((_e1762417936_
                                                              (gx#stx-e
                                                               _tl1761717933_)))
                                                         (let ((_hd1762517939_
                                                                (##car _e1762417936_))
                                                               (_tl1762617941_
                                                                (##cdr _e1762417936_)))
                                                           (if (gx#stx-pair?
                                                                _hd1762517939_)
                                                               (let ((_e1762717944_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd1762517939_)))
                         (let ((_hd1762817947_ (##car _e1762717944_))
                               (_tl1762917949_ (##cdr _e1762717944_)))
                           (if (gx#identifier? _hd1762817947_)
                               (if (gx#stx-eq? '%#ref _hd1762817947_)
                                   (if (gx#stx-pair? _tl1762917949_)
                                       (let ((_e1763017952_
                                              (gx#stx-e _tl1762917949_)))
                                         (let ((_hd1763117955_
                                                (##car _e1763017952_))
                                               (_tl1763217957_
                                                (##cdr _e1763017952_)))
                                           (if (gx#stx-null? _tl1763217957_)
                                               (if (gx#stx-null?
                                                    _tl1762617941_)
                                                   (letrec ((_loop1761817960_
                                                             (lambda (_hd1761617963_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _xarg1762217965_)
                       (if (gx#stx-pair? _hd1761617963_)
                           (let ((_e1761917968_ (gx#stx-e _hd1761617963_)))
                             (let ((_lp-hd1762017971_ (##car _e1761917968_))
                                   (_lp-tl1762117973_ (##cdr _e1761917968_)))
                               (if (gx#stx-pair? _lp-hd1762017971_)
                                   (let ((_e1763317976_
                                          (gx#stx-e _lp-hd1762017971_)))
                                     (let ((_hd1763417979_
                                            (##car _e1763317976_))
                                           (_tl1763517981_
                                            (##cdr _e1763317976_)))
                                       (if (gx#identifier? _hd1763417979_)
                                           (if (gx#stx-eq?
                                                '%#ref
                                                _hd1763417979_)
                                               (if (gx#stx-pair?
                                                    _tl1763517981_)
                                                   (let ((_e1763617984_
                                                          (gx#stx-e
                                                           _tl1763517981_)))
                                                     (let ((_hd1763717987_
                                                            (##car _e1763617984_))
                                                           (_tl1763817989_
                                                            (##cdr _e1763617984_)))
                                                       (if (gx#stx-null?
                                                            _tl1763817989_)
                                                           (_loop1761817960_
                                                            _lp-tl1762117973_
                                                            (cons _hd1763717987_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _xarg1762217965_))
                   (_g1752417830_ _g1752717833_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1752417830_
                                                    _g1752717833_))
                                               (_g1752417830_ _g1752717833_))
                                           (_g1752417830_ _g1752717833_))))
                                   (_g1752417830_ _g1752717833_))))
                           (let ((_xarg1762317992_ (reverse _xarg1762217965_)))
                             (if (gx#stx-null? _tl1759317872_)
                                 ((lambda (_L17995_
                                           _L17996_
                                           _L17997_
                                           _L17998_
                                           _L17999_
                                           _L18000_)
                                    (if (if (gx#identifier-list?
                                             (begin
                                               '#!void
                                               (foldr1 (lambda (_g1804318046_
                                                                _g1804418048_)
                                                         (cons _g1804318046_
                                                               _g1804418048_))
                                                       '()
                                                       _L18000_)))
                                            (if (gx#identifier? _L17999_)
                                                (if (eq? (gxc#generate-runtime-binding-id
                                                          _L17998_)
                                                         'apply)
                                                    (if (fx= (length (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#!void
                               (foldr1 (lambda (_g1805018053_ _g1805118055_)
                                         (cons _g1805018053_ _g1805118055_))
                                       '()
                                       _L18000_)))
                     (length (begin
                               '#!void
                               (foldr1 (lambda (_g1805718060_ _g1805818062_)
                                         (cons _g1805718060_ _g1805818062_))
                                       '()
                                       _L17996_))))
                (if (andmap gx#free-identifier=?
                            (begin
                              '#!void
                              (foldr1 (lambda (_g1806418067_ _g1806518069_)
                                        (cons _g1806418067_ _g1806518069_))
                                      '()
                                      _L18000_))
                            (begin
                              '#!void
                              (foldr1 (lambda (_g1807118074_ _g1807218076_)
                                        (cons _g1807118074_ _g1807218076_))
                                      '()
                                      _L17996_)))
                    (if (gx#free-identifier=? _L17999_ _L17995_)
                        (not (find (lambda (_g1807818080_)
                                     (gx#free-identifier=?
                                      _g1807818080_
                                      _L17997_))
                                   (begin
                                     '#!void
                                     (foldr1 (lambda (_g1808218085_
                                                      _g1808318087_)
                                               (cons _g1808218085_
                                                     _g1808318087_))
                                             (cons _L17999_ '())
                                             _L18000_))))
                        '#f)
                    '#f)
                '#f)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '#f)
                                                '#f)
                                            '#f)
                                        '#t
                                        (_g1752417830_ _g1752717833_)))
                                  _hd1763117955_
                                  _xarg1762317992_
                                  _hd1761317926_
                                  _hd1760417902_
                                  _tl1758417845_
                                  _arg1759017864_)
                                 (_g1752417830_ _g1752717833_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop1761817960_
                                                      _target1761517931_
                                                      '()))
                                                   (_g1752417830_
                                                    _g1752717833_))
                                               (_g1752417830_ _g1752717833_))))
                                       (_g1752417830_ _g1752717833_))
                                   (_g1752417830_ _g1752717833_))
                               (_g1752417830_ _g1752717833_))))
                       (_g1752417830_ _g1752717833_))))
               (_g1752417830_ _g1752717833_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g1752417830_ _g1752717833_))
                                         (_g1752417830_ _g1752717833_))
                                     (_g1752417830_ _g1752717833_))))
                             (_g1752417830_ _g1752717833_))
                         (_g1752417830_ _g1752717833_))
                     (_g1752417830_ _g1752717833_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1752417830_
                                                      _g1752717833_))))
                                             (_g1752417830_ _g1752717833_))
                                         (_g1752417830_ _g1752717833_))))
                                 (_g1752417830_ _g1752717833_))
                             (_g1752417830_ _g1752717833_))
                         (_g1752417830_ _g1752717833_))))
                 (_g1752417830_ _g1752717833_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1752417830_ _g1752717833_))
                                             (_g1752417830_ _g1752717833_))
                                         (_g1752417830_ _g1752717833_))))
                                 (_g1752417830_ _g1752717833_))))
                         (_g1752417830_ _g1752717833_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_loop1758517848_
                                              _target1758217843_
                                              '())))))
                                     (_g1752417830_ _g1752717833_))
                                 (_g1752417830_ _g1752717833_))))
                         (_g1752417830_ _g1752717833_)))))
              (let ((_g1752218284_
                     (lambda (_g1752718093_)
                       (if (gx#stx-pair? _g1752718093_)
                           (let ((_e1753118095_ (gx#stx-e _g1752718093_)))
                             (let ((_hd1753218098_ (##car _e1753118095_))
                                   (_tl1753318100_ (##cdr _e1753118095_)))
                               (if (gx#stx-pair/null? _hd1753218098_)
                                   (if (fx>= (gx#stx-length _hd1753218098_) '0)
                                       (let ((_g19405_
                                              (gx#syntax-split-splice
                                               _hd1753218098_
                                               '0)))
                                         (begin
                                           (let ((_g19406_
                                                  (values-count _g19405_)))
                                             (if (not (fx= _g19406_ 2))
                                                 (error "Context expects 2 values"
                                                        _g19406_)))
                                           (let ((_target1753418103_
                                                  (values-ref _g19405_ 0))
                                                 (_tl1753618105_
                                                  (values-ref _g19405_ 1)))
                                             (if (gx#stx-null? _tl1753618105_)
                                                 (letrec ((_loop1753718108_
                                                           (lambda (_hd1753518111_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _arg1754118113_)
                     (if (gx#stx-pair? _hd1753518111_)
                         (let ((_e1753818116_ (gx#stx-e _hd1753518111_)))
                           (let ((_lp-hd1753918119_ (##car _e1753818116_))
                                 (_lp-tl1754018121_ (##cdr _e1753818116_)))
                             (_loop1753718108_
                              _lp-tl1754018121_
                              (cons _lp-hd1753918119_ _arg1754118113_))))
                         (let ((_arg1754218124_ (reverse _arg1754118113_)))
                           (if (gx#stx-pair? _tl1753318100_)
                               (let ((_e1754318127_ (gx#stx-e _tl1753318100_)))
                                 (let ((_hd1754418130_ (##car _e1754318127_))
                                       (_tl1754518132_ (##cdr _e1754318127_)))
                                   (if (gx#stx-pair? _hd1754418130_)
                                       (let ((_e1754618135_
                                              (gx#stx-e _hd1754418130_)))
                                         (let ((_hd1754718138_
                                                (##car _e1754618135_))
                                               (_tl1754818140_
                                                (##cdr _e1754618135_)))
                                           (if (gx#identifier? _hd1754718138_)
                                               (if (gx#stx-eq?
                                                    '%#call
                                                    _hd1754718138_)
                                                   (if (gx#stx-pair?
                                                        _tl1754818140_)
                                                       (let ((_e1754918143_
                                                              (gx#stx-e
                                                               _tl1754818140_)))
                                                         (let ((_hd1755018146_
                                                                (##car _e1754918143_))
                                                               (_tl1755118148_
                                                                (##cdr _e1754918143_)))
                                                           (if (gx#stx-pair?
                                                                _hd1755018146_)
                                                               (let ((_e1755218151_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd1755018146_)))
                         (let ((_hd1755318154_ (##car _e1755218151_))
                               (_tl1755418156_ (##cdr _e1755218151_)))
                           (if (gx#identifier? _hd1755318154_)
                               (if (gx#stx-eq? '%#ref _hd1755318154_)
                                   (if (gx#stx-pair? _tl1755418156_)
                                       (let ((_e1755518159_
                                              (gx#stx-e _tl1755418156_)))
                                         (let ((_hd1755618162_
                                                (##car _e1755518159_))
                                               (_tl1755718164_
                                                (##cdr _e1755518159_)))
                                           (if (gx#stx-null? _tl1755718164_)
                                               (if (gx#stx-pair/null?
                                                    _tl1755118148_)
                                                   (if (fx>= (gx#stx-length
                                                              _tl1755118148_)
                                                             '0)
                                                       (let ((_g19407_
                                                              (gx#syntax-split-splice
                                                               _tl1755118148_
                                                               '0)))
                                                         (begin
                                                           (let ((_g19408_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (values-count _g19407_)))
                     (if (not (fx= _g19408_ 2))
                         (error "Context expects 2 values" _g19408_)))
                   (let ((_target1755818167_ (values-ref _g19407_ 0))
                         (_tl1756018169_ (values-ref _g19407_ 1)))
                     (if (gx#stx-null? _tl1756018169_)
                         (letrec ((_loop1756118172_
                                   (lambda (_hd1755918175_ _xarg1756518177_)
                                     (if (gx#stx-pair? _hd1755918175_)
                                         (let ((_e1756218180_
                                                (gx#stx-e _hd1755918175_)))
                                           (let ((_lp-hd1756318183_
                                                  (##car _e1756218180_))
                                                 (_lp-tl1756418185_
                                                  (##cdr _e1756218180_)))
                                             (if (gx#stx-pair?
                                                  _lp-hd1756318183_)
                                                 (let ((_e1756718188_
                                                        (gx#stx-e
                                                         _lp-hd1756318183_)))
                                                   (let ((_hd1756818191_
                                                          (##car _e1756718188_))
                                                         (_tl1756918193_
                                                          (##cdr _e1756718188_)))
                                                     (if (gx#identifier?
                                                          _hd1756818191_)
                                                         (if (gx#stx-eq?
                                                              '%#ref
                                                              _hd1756818191_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1756918193_)
                         (let ((_e1757018196_ (gx#stx-e _tl1756918193_)))
                           (let ((_hd1757118199_ (##car _e1757018196_))
                                 (_tl1757218201_ (##cdr _e1757018196_)))
                             (if (gx#stx-null? _tl1757218201_)
                                 (_loop1756118172_
                                  _lp-tl1756418185_
                                  (cons _hd1757118199_ _xarg1756518177_))
                                 (_g1752318090_ _g1752718093_))))
                         (_g1752318090_ _g1752718093_))
                     (_g1752318090_ _g1752718093_))
                 (_g1752318090_ _g1752718093_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1752318090_
                                                  _g1752718093_))))
                                         (let ((_xarg1756618204_
                                                (reverse _xarg1756518177_)))
                                           (if (gx#stx-null? _tl1754518132_)
                                               ((lambda (_L18207_
                                                         _L18208_
                                                         _L18209_)
                                                  (if (if (gx#identifier-list?
                                                           (begin
                                                             '#!void
                                                             (foldr1 (lambda (_g1823718240_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _g1823818242_)
                               (cons _g1823718240_ _g1823818242_))
                             '()
                             _L18209_)))
                  (if (fx= (length (begin
                                     '#!void
                                     (foldr1 (lambda (_g1824418247_
                                                      _g1824518249_)
                                               (cons _g1824418247_
                                                     _g1824518249_))
                                             '()
                                             _L18209_)))
                           (length (begin
                                     '#!void
                                     (foldr1 (lambda (_g1825118254_
                                                      _g1825218256_)
                                               (cons _g1825118254_
                                                     _g1825218256_))
                                             '()
                                             _L18207_))))
                      (if (andmap gx#free-identifier=?
                                  (begin
                                    '#!void
                                    (foldr1 (lambda (_g1825818261_
                                                     _g1825918263_)
                                              (cons _g1825818261_
                                                    _g1825918263_))
                                            '()
                                            _L18209_))
                                  (begin
                                    '#!void
                                    (foldr1 (lambda (_g1826518268_
                                                     _g1826618270_)
                                              (cons _g1826518268_
                                                    _g1826618270_))
                                            '()
                                            _L18207_)))
                          (not (find (lambda (_g1827218274_)
                                       (gx#free-identifier=?
                                        _g1827218274_
                                        _L18208_))
                                     (begin
                                       '#!void
                                       (foldr1 (lambda (_g1827618279_
                                                        _g1827718281_)
                                                 (cons _g1827618279_
                                                       _g1827718281_))
                                               '()
                                               _L18209_))))
                          '#f)
                      '#f)
                  '#f)
              '#t
              (_g1752318090_ _g1752718093_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _xarg1756618204_
                                                _hd1755618162_
                                                _arg1754218124_)
                                               (_g1752318090_
                                                _g1752718093_)))))))
                           (_loop1756118172_ _target1755818167_ '()))
                         (_g1752318090_ _g1752718093_)))))
               (_g1752318090_ _g1752718093_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1752318090_
                                                    _g1752718093_))
                                               (_g1752318090_ _g1752718093_))))
                                       (_g1752318090_ _g1752718093_))
                                   (_g1752318090_ _g1752718093_))
                               (_g1752318090_ _g1752718093_))))
                       (_g1752318090_ _g1752718093_))))
               (_g1752318090_ _g1752718093_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1752318090_
                                                    _g1752718093_))
                                               (_g1752318090_ _g1752718093_))))
                                       (_g1752318090_ _g1752718093_))))
                               (_g1752318090_ _g1752718093_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_loop1753718108_
                                                    _target1753418103_
                                                    '()))
                                                 (_g1752318090_
                                                  _g1752718093_)))))
                                       (_g1752318090_ _g1752718093_))
                                   (_g1752318090_ _g1752718093_))))
                           (_g1752318090_ _g1752718093_)))))
                (_g1752218284_ _form17521_))))))))
  (define gxc#dispatch-lambda-form-delegate
    (lambda (_form16989_)
      (let ((_g1699317117_
             (lambda (_g1699417114_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1699417114_))))
        (let ((_g1699217234_
               (lambda (_g1699417120_)
                 (if (gx#stx-pair? _g1699417120_)
                     (let ((_e1708317122_ (gx#stx-e _g1699417120_)))
                       (let ((_hd1708417125_ (##car _e1708317122_))
                             (_tl1708517127_ (##cdr _e1708317122_)))
                         (if (gx#stx-pair? _tl1708517127_)
                             (let ((_e1708617130_ (gx#stx-e _tl1708517127_)))
                               (let ((_hd1708717133_ (##car _e1708617130_))
                                     (_tl1708817135_ (##cdr _e1708617130_)))
                                 (if (gx#stx-pair? _hd1708717133_)
                                     (let ((_e1708917138_
                                            (gx#stx-e _hd1708717133_)))
                                       (let ((_hd1709017141_
                                              (##car _e1708917138_))
                                             (_tl1709117143_
                                              (##cdr _e1708917138_)))
                                         (if (gx#identifier? _hd1709017141_)
                                             (if (gx#stx-eq?
                                                  '%#call
                                                  _hd1709017141_)
                                                 (if (gx#stx-pair?
                                                      _tl1709117143_)
                                                     (let ((_e1709217146_
                                                            (gx#stx-e
                                                             _tl1709117143_)))
                                                       (let ((_hd1709317149_
                                                              (##car _e1709217146_))
                                                             (_tl1709417151_
                                                              (##cdr _e1709217146_)))
                                                         (if (gx#stx-pair?
                                                              _hd1709317149_)
                                                             (let ((_e1709517154_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _hd1709317149_)))
                       (let ((_hd1709617157_ (##car _e1709517154_))
                             (_tl1709717159_ (##cdr _e1709517154_)))
                         (if (gx#identifier? _hd1709617157_)
                             (if (gx#stx-eq? '%#ref _hd1709617157_)
                                 (if (gx#stx-pair? _tl1709717159_)
                                     (let ((_e1709817162_
                                            (gx#stx-e _tl1709717159_)))
                                       (let ((_hd1709917165_
                                              (##car _e1709817162_))
                                             (_tl1710017167_
                                              (##cdr _e1709817162_)))
                                         (if (gx#stx-null? _tl1710017167_)
                                             (if (gx#stx-pair? _tl1709417151_)
                                                 (let ((_e1710117170_
                                                        (gx#stx-e
                                                         _tl1709417151_)))
                                                   (let ((_hd1710217173_
                                                          (##car _e1710117170_))
                                                         (_tl1710317175_
                                                          (##cdr _e1710117170_)))
                                                     (if (gx#stx-pair?
                                                          _hd1710217173_)
                                                         (let ((_e1710417178_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1710217173_)))
                   (let ((_hd1710517181_ (##car _e1710417178_))
                         (_tl1710617183_ (##cdr _e1710417178_)))
                     (if (gx#identifier? _hd1710517181_)
                         (if (gx#stx-eq? '%#ref _hd1710517181_)
                             (if (gx#stx-pair? _tl1710617183_)
                                 (let ((_e1710717186_
                                        (gx#stx-e _tl1710617183_)))
                                   (let ((_hd1710817189_ (##car _e1710717186_))
                                         (_tl1710917191_
                                          (##cdr _e1710717186_)))
                                     (if (gx#stx-null? _tl1710917191_)
                                         (if (gx#stx-pair? _tl1710317175_)
                                             (let ((_e1711017194_
                                                    (gx#stx-e _tl1710317175_)))
                                               (let ((_hd1711117197_
                                                      (##car _e1711017194_))
                                                     (_tl1711217199_
                                                      (##cdr _e1711017194_)))
                                                 (if (gx#stx-null?
                                                      _tl1711217199_)
                                                     (if (gx#stx-null?
                                                          _tl1708817135_)
                                                         ((lambda (_L17202_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L17203_
                           _L17204_)
                    (gxc#generate-runtime-binding-id _L17202_))
                  _hd1710817189_
                  _hd1709917165_
                  _hd1708417125_)
                 (_g1699317117_ _g1699417120_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1699317117_
                                                      _g1699417120_))))
                                             (_g1699317117_ _g1699417120_))
                                         (_g1699317117_ _g1699417120_))))
                                 (_g1699317117_ _g1699417120_))
                             (_g1699317117_ _g1699417120_))
                         (_g1699317117_ _g1699417120_))))
                 (_g1699317117_ _g1699417120_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1699317117_ _g1699417120_))
                                             (_g1699317117_ _g1699417120_))))
                                     (_g1699317117_ _g1699417120_))
                                 (_g1699317117_ _g1699417120_))
                             (_g1699317117_ _g1699417120_))))
                     (_g1699317117_ _g1699417120_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1699317117_
                                                      _g1699417120_))
                                                 (_g1699317117_ _g1699417120_))
                                             (_g1699317117_ _g1699417120_))))
                                     (_g1699317117_ _g1699417120_))))
                             (_g1699317117_ _g1699417120_))))
                     (_g1699317117_ _g1699417120_)))))
          (let ((_g1699117370_
                 (lambda (_g1699417237_)
                   (if (gx#stx-pair? _g1699417237_)
                       (let ((_e1704417239_ (gx#stx-e _g1699417237_)))
                         (let ((_hd1704517242_ (##car _e1704417239_))
                               (_tl1704617244_ (##cdr _e1704417239_)))
                           (if (gx#stx-pair/null? _hd1704517242_)
                               (if (fx>= (gx#stx-length _hd1704517242_) '0)
                                   (let ((_g19409_
                                          (gx#syntax-split-splice
                                           _hd1704517242_
                                           '0)))
                                     (begin
                                       (let ((_g19410_
                                              (values-count _g19409_)))
                                         (if (not (fx= _g19410_ 2))
                                             (error "Context expects 2 values"
                                                    _g19410_)))
                                       (let ((_target1704717247_
                                              (values-ref _g19409_ 0))
                                             (_tl1704917249_
                                              (values-ref _g19409_ 1)))
                                         (letrec ((_loop1705017252_
                                                   (lambda (_hd1704817255_
                                                            _arg1705417257_)
                                                     (if (gx#stx-pair?
                                                          _hd1704817255_)
                                                         (let ((_e1705117260_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1704817255_)))
                   (let ((_lp-hd1705217263_ (##car _e1705117260_))
                         (_lp-tl1705317265_ (##cdr _e1705117260_)))
                     (_loop1705017252_
                      _lp-tl1705317265_
                      (cons _lp-hd1705217263_ _arg1705417257_))))
                 (let ((_arg1705517268_ (reverse _arg1705417257_)))
                   (if (gx#stx-pair? _tl1704617244_)
                       (let ((_e1705617271_ (gx#stx-e _tl1704617244_)))
                         (let ((_hd1705717274_ (##car _e1705617271_))
                               (_tl1705817276_ (##cdr _e1705617271_)))
                           (if (gx#stx-pair? _hd1705717274_)
                               (let ((_e1705917279_ (gx#stx-e _hd1705717274_)))
                                 (let ((_hd1706017282_ (##car _e1705917279_))
                                       (_tl1706117284_ (##cdr _e1705917279_)))
                                   (if (gx#identifier? _hd1706017282_)
                                       (if (gx#stx-eq? '%#call _hd1706017282_)
                                           (if (gx#stx-pair? _tl1706117284_)
                                               (let ((_e1706217287_
                                                      (gx#stx-e
                                                       _tl1706117284_)))
                                                 (let ((_hd1706317290_
                                                        (##car _e1706217287_))
                                                       (_tl1706417292_
                                                        (##cdr _e1706217287_)))
                                                   (if (gx#stx-pair?
                                                        _hd1706317290_)
                                                       (let ((_e1706517295_
                                                              (gx#stx-e
                                                               _hd1706317290_)))
                                                         (let ((_hd1706617298_
                                                                (##car _e1706517295_))
                                                               (_tl1706717300_
                                                                (##cdr _e1706517295_)))
                                                           (if (gx#identifier?
                                                                _hd1706617298_)
                                                               (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '%#ref
                            _hd1706617298_)
                           (if (gx#stx-pair? _tl1706717300_)
                               (let ((_e1706817303_ (gx#stx-e _tl1706717300_)))
                                 (let ((_hd1706917306_ (##car _e1706817303_))
                                       (_tl1707017308_ (##cdr _e1706817303_)))
                                   (if (gx#stx-null? _tl1707017308_)
                                       (if (gx#stx-pair? _tl1706417292_)
                                           (let ((_e1707117311_
                                                  (gx#stx-e _tl1706417292_)))
                                             (let ((_hd1707217314_
                                                    (##car _e1707117311_))
                                                   (_tl1707317316_
                                                    (##cdr _e1707117311_)))
                                               (if (gx#stx-pair?
                                                    _hd1707217314_)
                                                   (let ((_e1707417319_
                                                          (gx#stx-e
                                                           _hd1707217314_)))
                                                     (let ((_hd1707517322_
                                                            (##car _e1707417319_))
                                                           (_tl1707617324_
                                                            (##cdr _e1707417319_)))
                                                       (if (gx#identifier?
                                                            _hd1707517322_)
                                                           (if (gx#stx-eq?
                                                                '%#ref
                                                                _hd1707517322_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl1707617324_)
                           (let ((_e1707717327_ (gx#stx-e _tl1707617324_)))
                             (let ((_hd1707817330_ (##car _e1707717327_))
                                   (_tl1707917332_ (##cdr _e1707717327_)))
                               (if (gx#stx-null? _tl1707917332_)
                                   (if (gx#stx-null? _tl1705817276_)
                                       ((lambda (_L17335_
                                                 _L17336_
                                                 _L17337_
                                                 _L17338_)
                                          (gxc#generate-runtime-binding-id
                                           _L17335_))
                                        _hd1707817330_
                                        _hd1706917306_
                                        _tl1704917249_
                                        _arg1705517268_)
                                       (_g1699217234_ _g1699417237_))
                                   (_g1699217234_ _g1699417237_))))
                           (_g1699217234_ _g1699417237_))
                       (_g1699217234_ _g1699417237_))
                   (_g1699217234_ _g1699417237_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1699217234_
                                                    _g1699417237_))))
                                           (_g1699217234_ _g1699417237_))
                                       (_g1699217234_ _g1699417237_))))
                               (_g1699217234_ _g1699417237_))
                           (_g1699217234_ _g1699417237_))
                       (_g1699217234_ _g1699417237_))))
               (_g1699217234_ _g1699417237_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1699217234_ _g1699417237_))
                                           (_g1699217234_ _g1699417237_))
                                       (_g1699217234_ _g1699417237_))))
                               (_g1699217234_ _g1699417237_))))
                       (_g1699217234_ _g1699417237_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_loop1705017252_
                                            _target1704717247_
                                            '())))))
                                   (_g1699217234_ _g1699417237_))
                               (_g1699217234_ _g1699417237_))))
                       (_g1699217234_ _g1699417237_)))))
            (let ((_g1699017518_
                   (lambda (_g1699417373_)
                     (if (gx#stx-pair? _g1699417373_)
                         (let ((_e1699817375_ (gx#stx-e _g1699417373_)))
                           (let ((_hd1699917378_ (##car _e1699817375_))
                                 (_tl1700017380_ (##cdr _e1699817375_)))
                             (if (gx#stx-pair/null? _hd1699917378_)
                                 (if (fx>= (gx#stx-length _hd1699917378_) '0)
                                     (let ((_g19411_
                                            (gx#syntax-split-splice
                                             _hd1699917378_
                                             '0)))
                                       (begin
                                         (let ((_g19412_
                                                (values-count _g19411_)))
                                           (if (not (fx= _g19412_ 2))
                                               (error "Context expects 2 values"
                                                      _g19412_)))
                                         (let ((_target1700117383_
                                                (values-ref _g19411_ 0))
                                               (_tl1700317385_
                                                (values-ref _g19411_ 1)))
                                           (if (gx#stx-null? _tl1700317385_)
                                               (letrec ((_loop1700417388_
                                                         (lambda (_hd1700217391_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _arg1700817393_)
                   (if (gx#stx-pair? _hd1700217391_)
                       (let ((_e1700517396_ (gx#stx-e _hd1700217391_)))
                         (let ((_lp-hd1700617399_ (##car _e1700517396_))
                               (_lp-tl1700717401_ (##cdr _e1700517396_)))
                           (_loop1700417388_
                            _lp-tl1700717401_
                            (cons _lp-hd1700617399_ _arg1700817393_))))
                       (let ((_arg1700917404_ (reverse _arg1700817393_)))
                         (if (gx#stx-pair? _tl1700017380_)
                             (let ((_e1701017407_ (gx#stx-e _tl1700017380_)))
                               (let ((_hd1701117410_ (##car _e1701017407_))
                                     (_tl1701217412_ (##cdr _e1701017407_)))
                                 (if (gx#stx-pair? _hd1701117410_)
                                     (let ((_e1701317415_
                                            (gx#stx-e _hd1701117410_)))
                                       (let ((_hd1701417418_
                                              (##car _e1701317415_))
                                             (_tl1701517420_
                                              (##cdr _e1701317415_)))
                                         (if (gx#identifier? _hd1701417418_)
                                             (if (gx#stx-eq?
                                                  '%#call
                                                  _hd1701417418_)
                                                 (if (gx#stx-pair?
                                                      _tl1701517420_)
                                                     (let ((_e1701617423_
                                                            (gx#stx-e
                                                             _tl1701517420_)))
                                                       (let ((_hd1701717426_
                                                              (##car _e1701617423_))
                                                             (_tl1701817428_
                                                              (##cdr _e1701617423_)))
                                                         (if (gx#stx-pair?
                                                              _hd1701717426_)
                                                             (let ((_e1701917431_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _hd1701717426_)))
                       (let ((_hd1702017434_ (##car _e1701917431_))
                             (_tl1702117436_ (##cdr _e1701917431_)))
                         (if (gx#identifier? _hd1702017434_)
                             (if (gx#stx-eq? '%#ref _hd1702017434_)
                                 (if (gx#stx-pair? _tl1702117436_)
                                     (let ((_e1702217439_
                                            (gx#stx-e _tl1702117436_)))
                                       (let ((_hd1702317442_
                                              (##car _e1702217439_))
                                             (_tl1702417444_
                                              (##cdr _e1702217439_)))
                                         (if (gx#stx-null? _tl1702417444_)
                                             (if (gx#stx-pair/null?
                                                  _tl1701817428_)
                                                 (if (fx>= (gx#stx-length
                                                            _tl1701817428_)
                                                           '0)
                                                     (let ((_g19413_
                                                            (gx#syntax-split-splice
                                                             _tl1701817428_
                                                             '0)))
                                                       (begin
                                                         (let ((_g19414_
                                                                (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g19413_)))
                   (if (not (fx= _g19414_ 2))
                       (error "Context expects 2 values" _g19414_)))
                 (let ((_target1702517447_ (values-ref _g19413_ 0))
                       (_tl1702717449_ (values-ref _g19413_ 1)))
                   (if (gx#stx-null? _tl1702717449_)
                       (letrec ((_loop1702817452_
                                 (lambda (_hd1702617455_ _xarg1703217457_)
                                   (if (gx#stx-pair? _hd1702617455_)
                                       (let ((_e1702917460_
                                              (gx#stx-e _hd1702617455_)))
                                         (let ((_lp-hd1703017463_
                                                (##car _e1702917460_))
                                               (_lp-tl1703117465_
                                                (##cdr _e1702917460_)))
                                           (if (gx#stx-pair? _lp-hd1703017463_)
                                               (let ((_e1703417468_
                                                      (gx#stx-e
                                                       _lp-hd1703017463_)))
                                                 (let ((_hd1703517471_
                                                        (##car _e1703417468_))
                                                       (_tl1703617473_
                                                        (##cdr _e1703417468_)))
                                                   (if (gx#identifier?
                                                        _hd1703517471_)
                                                       (if (gx#stx-eq?
                                                            '%#ref
                                                            _hd1703517471_)
                                                           (if (gx#stx-pair?
                                                                _tl1703617473_)
                                                               (let ((_e1703717476_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl1703617473_)))
                         (let ((_hd1703817479_ (##car _e1703717476_))
                               (_tl1703917481_ (##cdr _e1703717476_)))
                           (if (gx#stx-null? _tl1703917481_)
                               (_loop1702817452_
                                _lp-tl1703117465_
                                (cons _hd1703817479_ _xarg1703217457_))
                               (_g1699117370_ _g1699417373_))))
                       (_g1699117370_ _g1699417373_))
                   (_g1699117370_ _g1699417373_))
               (_g1699117370_ _g1699417373_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1699117370_ _g1699417373_))))
                                       (let ((_xarg1703317484_
                                              (reverse _xarg1703217457_)))
                                         (if (gx#stx-null? _tl1701217412_)
                                             ((lambda (_L17487_
                                                       _L17488_
                                                       _L17489_)
                                                (gxc#generate-runtime-binding-id
                                                 _L17488_))
                                              _xarg1703317484_
                                              _hd1702317442_
                                              _arg1700917404_)
                                             (_g1699117370_
                                              _g1699417373_)))))))
                         (_loop1702817452_ _target1702517447_ '()))
                       (_g1699117370_ _g1699417373_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1699117370_
                                                      _g1699417373_))
                                                 (_g1699117370_ _g1699417373_))
                                             (_g1699117370_ _g1699417373_))))
                                     (_g1699117370_ _g1699417373_))
                                 (_g1699117370_ _g1699417373_))
                             (_g1699117370_ _g1699417373_))))
                     (_g1699117370_ _g1699417373_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1699117370_
                                                      _g1699417373_))
                                                 (_g1699117370_ _g1699417373_))
                                             (_g1699117370_ _g1699417373_))))
                                     (_g1699117370_ _g1699417373_))))
                             (_g1699117370_ _g1699417373_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop1700417388_
                                                  _target1700117383_
                                                  '()))
                                               (_g1699117370_
                                                _g1699417373_)))))
                                     (_g1699117370_ _g1699417373_))
                                 (_g1699117370_ _g1699417373_))))
                         (_g1699117370_ _g1699417373_)))))
              (_g1699017518_ _form16989_)))))))
  (define gxc#lambda-form-arity
    (lambda (_form16793_)
      (let ((_g1679516809_
             (lambda (_g1679616806_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1679616806_))))
        (let ((_g1679416986_
               (lambda (_g1679616812_)
                 (if (gx#stx-pair? _g1679616812_)
                     (let ((_e1679916814_ (gx#stx-e _g1679616812_)))
                       (let ((_hd1680016817_ (##car _e1679916814_))
                             (_tl1680116819_ (##cdr _e1679916814_)))
                         (if (gx#stx-pair? _tl1680116819_)
                             (let ((_e1680216822_ (gx#stx-e _tl1680116819_)))
                               (let ((_hd1680316825_ (##car _e1680216822_))
                                     (_tl1680416827_ (##cdr _e1680216822_)))
                                 (if (gx#stx-null? _tl1680416827_)
                                     ((lambda (_L16830_ _L16831_)
                                        (let ((_g1684616874_
                                               (lambda (_g1684716871_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g1684716871_))))
                                          (let ((_g1684516887_
                                                 (lambda (_g1684716877_)
                                                   ((lambda (_L16879_)
                                                      (cons '0 '()))
                                                    _g1684716877_))))
                                            (let ((_g1684416936_
                                                   (lambda (_g1684716890_)
                                                     (if (gx#stx-pair/null?
                                                          _g1684716890_)
                                                         (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g1684716890_)
                           '0)
                     (let ((_g19415_
                            (gx#syntax-split-splice _g1684716890_ '0)))
                       (begin
                         (let ((_g19416_ (values-count _g19415_)))
                           (if (not (fx= _g19416_ 2))
                               (error "Context expects 2 values" _g19416_)))
                         (let ((_target1686016892_ (values-ref _g19415_ 0))
                               (_tl1686216894_ (values-ref _g19415_ 1)))
                           (letrec ((_loop1686316897_
                                     (lambda (_hd1686116900_ _arg1686716902_)
                                       (if (gx#stx-pair? _hd1686116900_)
                                           (let ((_e1686416905_
                                                  (gx#stx-e _hd1686116900_)))
                                             (let ((_lp-hd1686516908_
                                                    (##car _e1686416905_))
                                                   (_lp-tl1686616910_
                                                    (##cdr _e1686416905_)))
                                               (_loop1686316897_
                                                _lp-tl1686616910_
                                                (cons _lp-hd1686516908_
                                                      _arg1686716902_))))
                                           (let ((_arg1686816913_
                                                  (reverse _arg1686716902_)))
                                             ((lambda (_L16916_ _L16917_)
                                                (cons (length (begin
                                                                '#!void
                                                                (foldr1 (lambda (_g1692816931_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                         _g1692916933_)
                                  (cons _g1692816931_ _g1692916933_))
                                '()
                                _L16917_)))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _tl1686216894_
                                              _arg1686816913_))))))
                             (_loop1686316897_ _target1686016892_ '())))))
                     (_g1684516887_ _g1684716890_))
                 (_g1684516887_ _g1684716890_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_g1684316983_
                                                     (lambda (_g1684716939_)
                                                       (if (gx#stx-pair/null?
                                                            _g1684716939_)
                                                           (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g1684716939_)
                             '0)
                       (let ((_g19417_
                              (gx#syntax-split-splice _g1684716939_ '0)))
                         (begin
                           (let ((_g19418_ (values-count _g19417_)))
                             (if (not (fx= _g19418_ 2))
                                 (error "Context expects 2 values" _g19418_)))
                           (let ((_target1684916941_ (values-ref _g19417_ 0))
                                 (_tl1685116943_ (values-ref _g19417_ 1)))
                             (if (gx#stx-null? _tl1685116943_)
                                 (letrec ((_loop1685216946_
                                           (lambda (_hd1685016949_
                                                    _arg1685616951_)
                                             (if (gx#stx-pair? _hd1685016949_)
                                                 (let ((_e1685316954_
                                                        (gx#stx-e
                                                         _hd1685016949_)))
                                                   (let ((_lp-hd1685416957_
                                                          (##car _e1685316954_))
                                                         (_lp-tl1685516959_
                                                          (##cdr _e1685316954_)))
                                                     (_loop1685216946_
                                                      _lp-tl1685516959_
                                                      (cons _lp-hd1685416957_
                                                            _arg1685616951_))))
                                                 (let ((_arg1685716962_
                                                        (reverse _arg1685616951_)))
                                                   ((lambda (_L16965_)
                                                      (length (begin
                                                                '#!void
                                                                (foldr1 (lambda (_g1697516978_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                         _g1697616980_)
                                  (cons _g1697516978_ _g1697616980_))
                                '()
                                _L16965_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _arg1685716962_))))))
                                   (_loop1685216946_ _target1684916941_ '()))
                                 (_g1684416936_ _g1684716939_)))))
                       (_g1684416936_ _g1684716939_))
                   (_g1684416936_ _g1684716939_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1684316983_ _L16831_))))))
                                      _hd1680316825_
                                      _hd1680016817_)
                                     (_g1679516809_ _g1679616812_))))
                             (_g1679516809_ _g1679616812_))))
                     (_g1679516809_ _g1679616812_)))))
          (_g1679416986_ _form16793_)))))
  (define gxc#lambda-expr?
    (lambda (_expr16746_)
      (let ((_g1674916759_
             (lambda (_g1675016756_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1675016756_))))
        (let ((_g1674816766_ (lambda (_g1675016762_) ((lambda () '#f)))))
          (let ((_g1674716790_
                 (lambda (_g1675016769_)
                   (if (gx#stx-pair? _g1675016769_)
                       (let ((_e1675216771_ (gx#stx-e _g1675016769_)))
                         (let ((_hd1675316774_ (##car _e1675216771_))
                               (_tl1675416776_ (##cdr _e1675216771_)))
                           (if (gx#identifier? _hd1675316774_)
                               (if (gx#stx-eq? '%#lambda _hd1675316774_)
                                   ((lambda (_L16779_) '#t) _tl1675416776_)
                                   (_g1674816766_ _g1675016769_))
                               (_g1674816766_ _g1675016769_))))
                       (_g1674816766_ _g1675016769_)))))
            (_g1674716790_ _expr16746_))))))
  (define gxc#case-lambda-expr?
    (lambda (_expr16699_)
      (let ((_g1670216712_
             (lambda (_g1670316709_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1670316709_))))
        (let ((_g1670116719_ (lambda (_g1670316715_) ((lambda () '#f)))))
          (let ((_g1670016743_
                 (lambda (_g1670316722_)
                   (if (gx#stx-pair? _g1670316722_)
                       (let ((_e1670516724_ (gx#stx-e _g1670316722_)))
                         (let ((_hd1670616727_ (##car _e1670516724_))
                               (_tl1670716729_ (##cdr _e1670516724_)))
                           (if (gx#identifier? _hd1670616727_)
                               (if (gx#stx-eq? '%#case-lambda _hd1670616727_)
                                   ((lambda (_L16732_) '#t) _tl1670716729_)
                                   (_g1670116719_ _g1670316722_))
                               (_g1670116719_ _g1670316722_))))
                       (_g1670116719_ _g1670316722_)))))
            (_g1670016743_ _expr16699_))))))
  (define gxc#opt-lambda-expr?
    (lambda (_expr16568_)
      (let ((_g1657116601_
             (lambda (_g1657216598_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1657216598_))))
        (let ((_g1657016608_ (lambda (_g1657216604_) ((lambda () '#f)))))
          (let ((_g1656916696_
                 (lambda (_g1657216611_)
                   (if (gx#stx-pair? _g1657216611_)
                       (let ((_e1657616613_ (gx#stx-e _g1657216611_)))
                         (let ((_hd1657716616_ (##car _e1657616613_))
                               (_tl1657816618_ (##cdr _e1657616613_)))
                           (if (gx#identifier? _hd1657716616_)
                               (if (gx#stx-eq? '%#let-values _hd1657716616_)
                                   (if (gx#stx-pair? _tl1657816618_)
                                       (let ((_e1657916621_
                                              (gx#stx-e _tl1657816618_)))
                                         (let ((_hd1658016624_
                                                (##car _e1657916621_))
                                               (_tl1658116626_
                                                (##cdr _e1657916621_)))
                                           (if (gx#stx-pair? _hd1658016624_)
                                               (let ((_e1658216629_
                                                      (gx#stx-e
                                                       _hd1658016624_)))
                                                 (let ((_hd1658316632_
                                                        (##car _e1658216629_))
                                                       (_tl1658416634_
                                                        (##cdr _e1658216629_)))
                                                   (if (gx#stx-pair?
                                                        _hd1658316632_)
                                                       (let ((_e1658516637_
                                                              (gx#stx-e
                                                               _hd1658316632_)))
                                                         (let ((_hd1658616640_
                                                                (##car _e1658516637_))
                                                               (_tl1658716642_
                                                                (##cdr _e1658516637_)))
                                                           (if (gx#stx-pair?
                                                                _hd1658616640_)
                                                               (let ((_e1658816645_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd1658616640_)))
                         (let ((_hd1658916648_ (##car _e1658816645_))
                               (_tl1659016650_ (##cdr _e1658816645_)))
                           (if (gx#stx-null? _tl1659016650_)
                               (if (gx#stx-pair? _tl1658716642_)
                                   (let ((_e1659116653_
                                          (gx#stx-e _tl1658716642_)))
                                     (let ((_hd1659216656_
                                            (##car _e1659116653_))
                                           (_tl1659316658_
                                            (##cdr _e1659116653_)))
                                       (if (gx#stx-null? _tl1659316658_)
                                           (if (gx#stx-null? _tl1658416634_)
                                               (if (gx#stx-pair?
                                                    _tl1658116626_)
                                                   (let ((_e1659416661_
                                                          (gx#stx-e
                                                           _tl1658116626_)))
                                                     (let ((_hd1659516664_
                                                            (##car _e1659416661_))
                                                           (_tl1659616666_
                                                            (##cdr _e1659416661_)))
                                                       (if (gx#stx-null?
                                                            _tl1659616666_)
                                                           ((lambda (_L16669_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L16670_
                             _L16671_)
                      (if (gx#identifier? _L16671_)
                          (if (gxc#lambda-expr? _L16670_)
                              (gxc#case-lambda-expr? _L16669_)
                              '#f)
                          '#f))
                    _hd1659516664_
                    _hd1659216656_
                    _hd1658916648_)
                   (_g1657016608_ _g1657216611_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1657016608_
                                                    _g1657216611_))
                                               (_g1657016608_ _g1657216611_))
                                           (_g1657016608_ _g1657216611_))))
                                   (_g1657016608_ _g1657216611_))
                               (_g1657016608_ _g1657216611_))))
                       (_g1657016608_ _g1657216611_))))
               (_g1657016608_ _g1657216611_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1657016608_ _g1657216611_))))
                                       (_g1657016608_ _g1657216611_))
                                   (_g1657016608_ _g1657216611_))
                               (_g1657016608_ _g1657216611_))))
                       (_g1657016608_ _g1657216611_)))))
            (_g1656916696_ _expr16568_))))))
  (begin
    (define gxc#lift-case-lambda-clauses__opt-lambda16308
      (lambda (_stx16310_ _id16311_ _clauses16312_ _gensym?16313_)
        ((letrec ((_lp16315_
                   (lambda (_rest16317_ _ids16318_ _impls16319_ _clauses16320_)
                     (let ((_rest1632116329_ _rest16317_))
                       (let ((_E1632416333_
                              (lambda ()
                                (error '"No clause matching"
                                       _rest1632116329_))))
                         (let ((_else1632316337_
                                (lambda ()
                                  (values (reverse _ids16318_)
                                          (reverse _impls16319_)
                                          (reverse _clauses16320_)))))
                           (let ((_K1632516542_
                                  (lambda (_rest16340_ _clause16341_)
                                    (if (gxc#dispatch-lambda-form?
                                         _clause16341_)
                                        (_lp16315_
                                         _rest16340_
                                         _ids16318_
                                         _impls16319_
                                         (cons _clause16341_ _clauses16320_))
                                        (let ((_g1634316354_
                                               (lambda (_g1634416351_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g1634416351_))))
                                          (let ((_g1634216539_
                                                 (lambda (_g1634416357_)
                                                   (if (gx#stx-pair?
                                                        _g1634416357_)
                                                       (let ((_e1634716359_
                                                              (gx#stx-e
                                                               _g1634416357_)))
                                                         (let ((_hd1634816362_
                                                                (##car _e1634716359_))
                                                               (_tl1634916364_
                                                                (##cdr _e1634716359_)))
                                                           ((lambda (_L16367_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L16368_)
                      (let ((_id16385_
                             (make-symbol
                              (gx#stx-e _id16311_)
                              '"__"
                              (length _clauses16320_)
                              (if _gensym?16313_ (gensym '__) '""))))
                        (let ((_id16387_
                               (gx#core-quote-syntax__1
                                _id16385_
                                (gx#stx-source _stx16310_))))
                          (let ((_impl16389_
                                 (gxc#xform-wrap-source
                                  (cons (gx#datum->syntax__0 '#f '%#lambda)
                                        (cons _L16368_ _L16367_))
                                  _stx16310_)))
                            (let ((_clause16536_
                                   (let ((_g1639316421_
                                          (lambda (_g1639416418_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax"
                                             _g1639416418_))))
                                     (let ((_g1639216437_
                                            (lambda (_g1639416424_)
                                              ((lambda (_L16426_)
                                                 (cons _L16368_
                                                       (cons (gxc#xform-wrap-source
                                                              (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons '%#ref (cons 'apply '()))
                                  (cons (cons '%#ref (cons _id16387_ '()))
                                        (cons (cons (gx#datum->syntax__0
                                                     '#f
                                                     '%#ref)
                                                    (cons _L16426_ '()))
                                              '()))))
                      _stx16310_)
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _g1639416424_))))
                                       (let ((_g1639116486_
                                              (lambda (_g1639416440_)
                                                (if (gx#stx-pair/null?
                                                     _g1639416440_)
                                                    (if (fx>= (gx#stx-length
                                                               _g1639416440_)
                                                              '0)
                                                        (let ((_g19419_
                                                               (gx#syntax-split-splice
                                                                _g1639416440_
                                                                '0)))
                                                          (begin
                                                            (let ((_g19420_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (values-count _g19419_)))
                      (if (not (fx= _g19420_ 2))
                          (error "Context expects 2 values" _g19420_)))
                    (let ((_target1640716442_ (values-ref _g19419_ 0))
                          (_tl1640916444_ (values-ref _g19419_ 1)))
                      (letrec ((_loop1641016447_
                                (lambda (_hd1640816450_ _arg1641416452_)
                                  (if (gx#stx-pair? _hd1640816450_)
                                      (let ((_e1641116455_
                                             (gx#stx-e _hd1640816450_)))
                                        (let ((_lp-hd1641216458_
                                               (##car _e1641116455_))
                                              (_lp-tl1641316460_
                                               (##cdr _e1641116455_)))
                                          (_loop1641016447_
                                           _lp-tl1641316460_
                                           (cons _lp-hd1641216458_
                                                 _arg1641416452_))))
                                      (let ((_arg1641516463_
                                             (reverse _arg1641416452_)))
                                        ((lambda (_L16466_ _L16467_)
                                           (cons _L16368_
                                                 (cons (gxc#xform-wrap-source
                                                        (cons '%#call
                                                              (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons 'apply '()))
                            (cons (cons '%#ref (cons _id16387_ '()))
                                  (foldr1 cons
                                          (cons (cons (gx#datum->syntax__0
                                                       '#f
                                                       '%#ref)
                                                      (cons _L16466_ '()))
                                                '())
                                          (begin
                                            '#!void
                                            (foldr1 (lambda (_g1647816481_
                                                             _g1647916483_)
                                                      (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           '%#ref)
                          (cons _g1647816481_ '()))
                    _g1647916483_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()
                                                    _L16467_))))))
                _stx16310_)
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _tl1640916444_
                                         _arg1641516463_))))))
                        (_loop1641016447_ _target1640716442_ '())))))
                (_g1639216437_ _g1639416440_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1639216437_
                                                     _g1639416440_)))))
                                         (let ((_g1639016533_
                                                (lambda (_g1639416489_)
                                                  (if (gx#stx-pair/null?
                                                       _g1639416489_)
                                                      (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1639416489_)
                        '0)
                  (let ((_g19421_ (gx#syntax-split-splice _g1639416489_ '0)))
                    (begin
                      (let ((_g19422_ (values-count _g19421_)))
                        (if (not (fx= _g19422_ 2))
                            (error "Context expects 2 values" _g19422_)))
                      (let ((_target1639616491_ (values-ref _g19421_ 0))
                            (_tl1639816493_ (values-ref _g19421_ 1)))
                        (if (gx#stx-null? _tl1639816493_)
                            (letrec ((_loop1639916496_
                                      (lambda (_hd1639716499_ _arg1640316501_)
                                        (if (gx#stx-pair? _hd1639716499_)
                                            (let ((_e1640016504_
                                                   (gx#stx-e _hd1639716499_)))
                                              (let ((_lp-hd1640116507_
                                                     (##car _e1640016504_))
                                                    (_lp-tl1640216509_
                                                     (##cdr _e1640016504_)))
                                                (_loop1639916496_
                                                 _lp-tl1640216509_
                                                 (cons _lp-hd1640116507_
                                                       _arg1640316501_))))
                                            (let ((_arg1640416512_
                                                   (reverse _arg1640316501_)))
                                              ((lambda (_L16515_)
                                                 (cons _L16368_
                                                       (cons (gxc#xform-wrap-source
                                                              (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons '%#ref (cons _id16387_ '()))
                                  (begin
                                    '#!void
                                    (foldr1 (lambda (_g1652516528_
                                                     _g1652616530_)
                                              (cons (cons (gx#datum->syntax__0
                                                           '#f
                                                           '%#ref)
                                                          (cons _g1652516528_
                                                                '()))
                                                    _g1652616530_))
                                            '()
                                            _L16515_))))
                      _stx16310_)
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _arg1640416512_))))))
                              (_loop1639916496_ _target1639616491_ '()))
                            (_g1639116486_ _g1639416489_)))))
                  (_g1639116486_ _g1639416489_))
              (_g1639116486_ _g1639416489_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_g1639016533_ _L16368_)))))))
                              (let ()
                                (_lp16315_
                                 _rest16340_
                                 (cons _id16387_ _ids16318_)
                                 (cons _impl16389_ _impls16319_)
                                 (cons _clause16536_ _clauses16320_))))))))
                    _tl1634916364_
                    _hd1634816362_)))
               (_g1634316354_ _g1634416357_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g1634216539_ _clause16341_)))))))
                             (if (##pair? _rest1632116329_)
                                 (let ((_hd1632616545_
                                        (##car _rest1632116329_))
                                       (_tl1632716547_
                                        (##cdr _rest1632116329_)))
                                   (let ((_clause16550_ _hd1632616545_))
                                     (let ((_rest16552_ _tl1632716547_))
                                       (_K1632516542_
                                        _rest16552_
                                        _clause16550_))))
                                 (_else1632316337_)))))))))
           _lp16315_)
         _clauses16312_
         '()
         '()
         '())))
    (begin
      (define gxc#lift-case-lambda-clauses__0
        (lambda (_stx16557_ _id16558_ _clauses16559_)
          (let ((_gensym?16561_ '#f))
            (gxc#lift-case-lambda-clauses__opt-lambda16308
             _stx16557_
             _id16558_
             _clauses16559_
             _gensym?16561_))))
      (define gxc#lift-case-lambda-clauses
        (lambda _g19424_
          (let ((_g19423_ (length _g19424_)))
            (cond ((fx= _g19423_ 3)
                   (apply gxc#lift-case-lambda-clauses__0 _g19424_))
                  ((fx= _g19423_ 4)
                   (apply gxc#lift-case-lambda-clauses__opt-lambda16308
                          _g19424_))
                  (else (error "No clause matching arguments" _g19424_))))))))
  (define gxc#lift-top-lambda-define-values%
    (lambda (_stx15899_)
      (let ((_case-lambda-clause-def15901_
             (lambda (_id16306_ _impl16307_)
               (gxc#xform-wrap-source
                (cons '%#define-values
                      (cons (cons _id16306_ '())
                            (cons (gxc#compile-e _impl16307_) '())))
                _stx15899_))))
        (let ((_g1590515950_
               (lambda (_g1590615947_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1590615947_))))
          (let ((_g1590415996_
                 (lambda (_g1590615953_)
                   (if (gx#stx-pair? _g1590615953_)
                       (let ((_e1593715955_ (gx#stx-e _g1590615953_)))
                         (let ((_hd1593815958_ (##car _e1593715955_))
                               (_tl1593915960_ (##cdr _e1593715955_)))
                           (if (gx#stx-pair? _tl1593915960_)
                               (let ((_e1594015963_ (gx#stx-e _tl1593915960_)))
                                 (let ((_hd1594115966_ (##car _e1594015963_))
                                       (_tl1594215968_ (##cdr _e1594015963_)))
                                   (if (gx#stx-pair? _tl1594215968_)
                                       (let ((_e1594315971_
                                              (gx#stx-e _tl1594215968_)))
                                         (let ((_hd1594415974_
                                                (##car _e1594315971_))
                                               (_tl1594515976_
                                                (##cdr _e1594315971_)))
                                           (if (gx#stx-null? _tl1594515976_)
                                               ((lambda (_L15979_ _L15980_)
                                                  (gxc#xform-wrap-source
                                                   (cons '%#define-values
                                                         (cons _L15980_
                                                               (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L15979_)
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _stx15899_))
                                                _hd1594415974_
                                                _hd1594115966_)
                                               (_g1590515950_ _g1590615953_))))
                                       (_g1590515950_ _g1590615953_))))
                               (_g1590515950_ _g1590615953_))))
                       (_g1590515950_ _g1590615953_)))))
            (let ((_g1590316178_
                   (lambda (_g1590615999_)
                     (if (gx#stx-pair? _g1590615999_)
                         (let ((_e1592316001_ (gx#stx-e _g1590615999_)))
                           (let ((_hd1592416004_ (##car _e1592316001_))
                                 (_tl1592516006_ (##cdr _e1592316001_)))
                             (if (gx#stx-pair? _tl1592516006_)
                                 (let ((_e1592616009_
                                        (gx#stx-e _tl1592516006_)))
                                   (let ((_hd1592716012_ (##car _e1592616009_))
                                         (_tl1592816014_
                                          (##cdr _e1592616009_)))
                                     (if (gx#stx-pair? _hd1592716012_)
                                         (let ((_e1592916017_
                                                (gx#stx-e _hd1592716012_)))
                                           (let ((_hd1593016020_
                                                  (##car _e1592916017_))
                                                 (_tl1593116022_
                                                  (##cdr _e1592916017_)))
                                             (if (gx#stx-null? _tl1593116022_)
                                                 (if (gx#stx-pair?
                                                      _tl1592816014_)
                                                     (let ((_e1593216025_
                                                            (gx#stx-e
                                                             _tl1592816014_)))
                                                       (let ((_hd1593316028_
                                                              (##car _e1593216025_))
                                                             (_tl1593416030_
                                                              (##cdr _e1593216025_)))
                                                         (if (gx#stx-null?
                                                              _tl1593416030_)
                                                             ((lambda (_L16033_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L16034_)
                        (if (if (gx#identifier? _L16034_)
                                (gxc#opt-lambda-expr? _L16033_)
                                '#f)
                            (let ((_g1605016080_
                                   (lambda (_g1605116077_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g1605116077_))))
                              (let ((_g1604916175_
                                     (lambda (_g1605116083_)
                                       (if (gx#stx-pair? _g1605116083_)
                                           (let ((_e1605516085_
                                                  (gx#stx-e _g1605116083_)))
                                             (let ((_hd1605616088_
                                                    (##car _e1605516085_))
                                                   (_tl1605716090_
                                                    (##cdr _e1605516085_)))
                                               (if (gx#stx-pair?
                                                    _tl1605716090_)
                                                   (let ((_e1605816093_
                                                          (gx#stx-e
                                                           _tl1605716090_)))
                                                     (let ((_hd1605916096_
                                                            (##car _e1605816093_))
                                                           (_tl1606016098_
                                                            (##cdr _e1605816093_)))
                                                       (if (gx#stx-pair?
                                                            _hd1605916096_)
                                                           (let ((_e1606116101_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd1605916096_)))
                     (let ((_hd1606216104_ (##car _e1606116101_))
                           (_tl1606316106_ (##cdr _e1606116101_)))
                       (if (gx#stx-pair? _hd1606216104_)
                           (let ((_e1606416109_ (gx#stx-e _hd1606216104_)))
                             (let ((_hd1606516112_ (##car _e1606416109_))
                                   (_tl1606616114_ (##cdr _e1606416109_)))
                               (if (gx#stx-pair? _hd1606516112_)
                                   (let ((_e1606716117_
                                          (gx#stx-e _hd1606516112_)))
                                     (let ((_hd1606816120_
                                            (##car _e1606716117_))
                                           (_tl1606916122_
                                            (##cdr _e1606716117_)))
                                       (if (gx#stx-null? _tl1606916122_)
                                           (if (gx#stx-pair? _tl1606616114_)
                                               (let ((_e1607016125_
                                                      (gx#stx-e
                                                       _tl1606616114_)))
                                                 (let ((_hd1607116128_
                                                        (##car _e1607016125_))
                                                       (_tl1607216130_
                                                        (##cdr _e1607016125_)))
                                                   (if (gx#stx-null?
                                                        _tl1607216130_)
                                                       (if (gx#stx-null?
                                                            _tl1606316106_)
                                                           (if (gx#stx-pair?
                                                                _tl1606016098_)
                                                               (let ((_e1607316133_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl1606016098_)))
                         (let ((_hd1607416136_ (##car _e1607316133_))
                               (_tl1607516138_ (##cdr _e1607316133_)))
                           (if (gx#stx-null? _tl1607516138_)
                               ((lambda (_L16141_ _L16142_ _L16143_)
                                  (let ((_lambda-id16167_
                                         (make-symbol
                                          (gx#stx-e _L16034_)
                                          '"__"
                                          (gx#stx-e _L16143_))))
                                    (let ((_lambda-id16169_
                                           (gx#core-quote-syntax__1
                                            _lambda-id16167_
                                            (gx#stx-source _stx15899_))))
                                      (let ((_g19425_
                                             (gx#core-bind-runtime!__0
                                              _lambda-id16169_)))
                                        (let ((_new-case-lambda-expr16172_
                                               (gxc#apply-expression-subst
                                                _L16141_
                                                _L16143_
                                                _lambda-id16169_)))
                                          (let ()
                                            (begin
                                              (gxc#verbose
                                               '"lift opt-lambda dispatch "
                                               (gxc#generate-runtime-binding-id
                                                _L16034_)
                                               '" => "
                                               (gxc#generate-runtime-binding-id
                                                _lambda-id16169_))
                                              (gxc#xform-wrap-source
                                               (cons '%#begin
                                                     (cons (gxc#xform-wrap-source
                                                            (cons '%#define-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons _lambda-id16169_ '())
                                (cons (gxc#compile-e _L16142_) '())))
                    _stx15899_)
                   (cons (gxc#lift-top-lambda-define-values%
                          (gxc#xform-wrap-source
                           (cons '%#define-values
                                 (cons (cons _L16034_ '())
                                       (cons _new-case-lambda-expr16172_ '())))
                           _stx15899_))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _stx15899_))))))))
                                _hd1607416136_
                                _hd1607116128_
                                _hd1606816120_)
                               (_g1605016080_ _g1605116083_))))
                       (_g1605016080_ _g1605116083_))
                   (_g1605016080_ _g1605116083_))
               (_g1605016080_ _g1605116083_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1605016080_ _g1605116083_))
                                           (_g1605016080_ _g1605116083_))))
                                   (_g1605016080_ _g1605116083_))))
                           (_g1605016080_ _g1605116083_))))
                   (_g1605016080_ _g1605116083_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1605016080_
                                                    _g1605116083_))))
                                           (_g1605016080_ _g1605116083_)))))
                                (_g1604916175_ _L16033_)))
                            (_g1590415996_ _g1590615999_)))
                      _hd1593316028_
                      _hd1593016020_)
                     (_g1590415996_ _g1590615999_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1590415996_
                                                      _g1590615999_))
                                                 (_g1590415996_
                                                  _g1590615999_))))
                                         (_g1590415996_ _g1590615999_))))
                                 (_g1590415996_ _g1590615999_))))
                         (_g1590415996_ _g1590615999_)))))
              (let ((_g1590216303_
                     (lambda (_g1590616181_)
                       (if (gx#stx-pair? _g1590616181_)
                           (let ((_e1590916183_ (gx#stx-e _g1590616181_)))
                             (let ((_hd1591016186_ (##car _e1590916183_))
                                   (_tl1591116188_ (##cdr _e1590916183_)))
                               (if (gx#stx-pair? _tl1591116188_)
                                   (let ((_e1591216191_
                                          (gx#stx-e _tl1591116188_)))
                                     (let ((_hd1591316194_
                                            (##car _e1591216191_))
                                           (_tl1591416196_
                                            (##cdr _e1591216191_)))
                                       (if (gx#stx-pair? _hd1591316194_)
                                           (let ((_e1591516199_
                                                  (gx#stx-e _hd1591316194_)))
                                             (let ((_hd1591616202_
                                                    (##car _e1591516199_))
                                                   (_tl1591716204_
                                                    (##cdr _e1591516199_)))
                                               (if (gx#stx-null?
                                                    _tl1591716204_)
                                                   (if (gx#stx-pair?
                                                        _tl1591416196_)
                                                       (let ((_e1591816207_
                                                              (gx#stx-e
                                                               _tl1591416196_)))
                                                         (let ((_hd1591916210_
                                                                (##car _e1591816207_))
                                                               (_tl1592016212_
                                                                (##cdr _e1591816207_)))
                                                           (if (gx#stx-null?
                                                                _tl1592016212_)
                                                               ((lambda (_L16215_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _L16216_)
                          (if (if (gx#identifier? _L16216_)
                                  (gxc#case-lambda-expr? _L16215_)
                                  '#f)
                              (let ((_g1623316247_
                                     (lambda (_g1623416244_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g1623416244_))))
                                (let ((_g1623216278_
                                       (lambda (_g1623416250_)
                                         (if (gx#stx-pair? _g1623416250_)
                                             (let ((_e1624016252_
                                                    (gx#stx-e _g1623416250_)))
                                               (let ((_hd1624116255_
                                                      (##car _e1624016252_))
                                                     (_tl1624216257_
                                                      (##cdr _e1624016252_)))
                                                 ((lambda (_L16260_)
                                                    (let ((_g19426_
                                                           (gxc#lift-case-lambda-clauses__0
                                                            _stx15899_
                                                            _L16216_
                                                            _L16260_)))
                                                      (begin
                                                        (let ((_g19427_
                                                               (values-count
                                                                _g19426_)))
                                                          (if (not (fx= _g19427_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                3))
                      (error "Context expects 3 values" _g19427_)))
                (let ((_ids16270_ (values-ref _g19426_ 0))
                      (_impls16271_ (values-ref _g19426_ 1))
                      (_clauses16272_ (values-ref _g19426_ 2)))
                  (let ((_g19428_ (for-each gx#core-bind-runtime! _ids16270_)))
                    (let ((_defs16275_
                           (map _case-lambda-clause-def15901_
                                _ids16270_
                                _impls16271_)))
                      (let ()
                        (begin
                          (gxc#verbose
                           '"lift case-lambda clauses "
                           (gxc#generate-runtime-binding-id _L16216_)
                           '" => "
                           (map gxc#identifier-symbol _ids16270_))
                          (gxc#xform-wrap-source
                           (cons '%#begin
                                 (foldr1 cons
                                         (cons (gxc#xform-wrap-source
                                                (cons '%#define-values
                                                      (cons (cons _L16216_ '())
                                                            (cons (gxc#xform-wrap-source
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '%#case-lambda _clauses16272_)
                           (gx#datum->syntax__0 '#f 'case-lambda-expr))
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _stx15899_)
                                               '())
                                         _defs16275_))
                           _stx15899_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _tl1624216257_)))
                                             (_g1623316247_ _g1623416250_)))))
                                  (let ((_g1623116300_
                                         (lambda (_g1623416281_)
                                           (if (gx#stx-pair? _g1623416281_)
                                               (let ((_e1623616283_
                                                      (gx#stx-e
                                                       _g1623416281_)))
                                                 (let ((_hd1623716286_
                                                        (##car _e1623616283_))
                                                       (_tl1623816288_
                                                        (##cdr _e1623616283_)))
                                                   ((lambda (_L16291_)
                                                      (if (andmap1 gxc#dispatch-lambda-form?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L16291_)
                  _stx15899_
                  (_g1623216278_ _g1623416281_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _tl1623816288_)))
                                               (_g1623216278_
                                                _g1623416281_)))))
                                    (_g1623116300_ _L16215_))))
                              (_g1590316178_ _g1590616181_)))
                        _hd1591916210_
                        _hd1591616202_)
                       (_g1590316178_ _g1590616181_))))
               (_g1590316178_ _g1590616181_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1590316178_
                                                    _g1590616181_))))
                                           (_g1590316178_ _g1590616181_))))
                                   (_g1590316178_ _g1590616181_))))
                           (_g1590316178_ _g1590616181_)))))
                (_g1590216303_ _stx15899_))))))))
  (define gxc#lift-top-lambda-let-values%
    (lambda (_stx15322_)
      (let ((_bind-e__opt-lambda15881__1937519376_
             (lambda (_id15883_ _expr15884_ _compile?15885_)
               (cons (cons _id15883_ '())
                     (cons (if _compile?15885_
                               (gxc#compile-e _expr15884_)
                               _expr15884_)
                           '())))))
        (let ((_bind-e__0__1937719378_
               (lambda (_id15890_ _expr15891_)
                 (let ((_compile?15893_ '#t))
                   (_bind-e__opt-lambda15881__1937519376_
                    _id15890_
                    _expr15891_
                    _compile?15893_)))))
          (let ((_bind-e15324_
                 (lambda _g19438_
                   (let ((_g19437_ (length _g19438_)))
                     (cond ((fx= _g19437_ 2)
                            (apply _bind-e__0__1937719378_ _g19438_))
                           ((fx= _g19437_ 3)
                            (apply _bind-e__opt-lambda15881__1937519376_
                                   _g19438_))
                           (else
                            (error "No clause matching arguments"
                                   _g19438_)))))))
            (let ((_compile-bindings15325_
                   (lambda (_rest15467_)
                     ((letrec ((_lp15469_
                                (lambda (_rest15471_
                                         _lift115472_
                                         _lift215473_
                                         _bind15474_)
                                  (let ((_rest1547515483_ _rest15471_))
                                    (let ((_E1547815487_
                                           (lambda ()
                                             (error '"No clause matching"
                                                    _rest1547515483_))))
                                      (let ((_else1547715491_
                                             (lambda ()
                                               (values (reverse _lift115472_)
                                                       (reverse _lift215473_)
                                                       (reverse _bind15474_)))))
                                        (let ((_K1547915870_
                                               (lambda (_rest15494_ _hd15495_)
                                                 (let ((_g1549915535_
                                                        (lambda (_g1550015532_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax"
                                                           _g1550015532_))))
                                                   (let ((_g1549815576_
                                                          (lambda (_g1550015538_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1550015538_)
                        (let ((_e1552515540_ (gx#stx-e _g1550015538_)))
                          (let ((_hd1552615543_ (##car _e1552515540_))
                                (_tl1552715545_ (##cdr _e1552515540_)))
                            (if (gx#stx-pair? _tl1552715545_)
                                (let ((_e1552815548_
                                       (gx#stx-e _tl1552715545_)))
                                  (let ((_hd1552915551_ (##car _e1552815548_))
                                        (_tl1553015553_ (##cdr _e1552815548_)))
                                    (if (gx#stx-null? _tl1553015553_)
                                        ((lambda (_L15556_ _L15557_)
                                           (_lp15469_
                                            _rest15494_
                                            _lift115472_
                                            _lift215473_
                                            (cons (cons _L15557_
                                                        (cons (gxc#compile-e
                                                               _L15556_)
                                                              '()))
                                                  _bind15474_)))
                                         _hd1552915551_
                                         _hd1552615543_)
                                        (_g1549915535_ _g1550015538_))))
                                (_g1549915535_ _g1550015538_))))
                        (_g1549915535_ _g1550015538_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_g1549715748_
                                                            (lambda (_g1550015579_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g1550015579_)
                          (let ((_e1551415581_ (gx#stx-e _g1550015579_)))
                            (let ((_hd1551515584_ (##car _e1551415581_))
                                  (_tl1551615586_ (##cdr _e1551415581_)))
                              (if (gx#stx-pair? _hd1551515584_)
                                  (let ((_e1551715589_
                                         (gx#stx-e _hd1551515584_)))
                                    (let ((_hd1551815592_
                                           (##car _e1551715589_))
                                          (_tl1551915594_
                                           (##cdr _e1551715589_)))
                                      (if (gx#stx-null? _tl1551915594_)
                                          (if (gx#stx-pair? _tl1551615586_)
                                              (let ((_e1552015597_
                                                     (gx#stx-e
                                                      _tl1551615586_)))
                                                (let ((_hd1552115600_
                                                       (##car _e1552015597_))
                                                      (_tl1552215602_
                                                       (##cdr _e1552015597_)))
                                                  (if (gx#stx-null?
                                                       _tl1552215602_)
                                                      ((lambda (_L15605_
                                                                _L15606_)
                                                         (if (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L15606_)
                         (gxc#opt-lambda-expr? _L15605_)
                         '#f)
                     (let ((_g1562015650_
                            (lambda (_g1562115647_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g1562115647_))))
                       (let ((_g1561915745_
                              (lambda (_g1562115653_)
                                (if (gx#stx-pair? _g1562115653_)
                                    (let ((_e1562515655_
                                           (gx#stx-e _g1562115653_)))
                                      (let ((_hd1562615658_
                                             (##car _e1562515655_))
                                            (_tl1562715660_
                                             (##cdr _e1562515655_)))
                                        (if (gx#stx-pair? _tl1562715660_)
                                            (let ((_e1562815663_
                                                   (gx#stx-e _tl1562715660_)))
                                              (let ((_hd1562915666_
                                                     (##car _e1562815663_))
                                                    (_tl1563015668_
                                                     (##cdr _e1562815663_)))
                                                (if (gx#stx-pair?
                                                     _hd1562915666_)
                                                    (let ((_e1563115671_
                                                           (gx#stx-e
                                                            _hd1562915666_)))
                                                      (let ((_hd1563215674_
                                                             (##car _e1563115671_))
                                                            (_tl1563315676_
                                                             (##cdr _e1563115671_)))
                                                        (if (gx#stx-pair?
                                                             _hd1563215674_)
                                                            (let ((_e1563415679_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1563215674_)))
                      (let ((_hd1563515682_ (##car _e1563415679_))
                            (_tl1563615684_ (##cdr _e1563415679_)))
                        (if (gx#stx-pair? _hd1563515682_)
                            (let ((_e1563715687_ (gx#stx-e _hd1563515682_)))
                              (let ((_hd1563815690_ (##car _e1563715687_))
                                    (_tl1563915692_ (##cdr _e1563715687_)))
                                (if (gx#stx-null? _tl1563915692_)
                                    (if (gx#stx-pair? _tl1563615684_)
                                        (let ((_e1564015695_
                                               (gx#stx-e _tl1563615684_)))
                                          (let ((_hd1564115698_
                                                 (##car _e1564015695_))
                                                (_tl1564215700_
                                                 (##cdr _e1564015695_)))
                                            (if (gx#stx-null? _tl1564215700_)
                                                (if (gx#stx-null?
                                                     _tl1563315676_)
                                                    (if (gx#stx-pair?
                                                         _tl1563015668_)
                                                        (let ((_e1564315703_
                                                               (gx#stx-e
                                                                _tl1563015668_)))
                                                          (let ((_hd1564415706_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1564315703_))
                        (_tl1564515708_ (##cdr _e1564315703_)))
                    (if (gx#stx-null? _tl1564515708_)
                        ((lambda (_L15711_ _L15712_ _L15713_)
                           (let ((_lambda-id15737_
                                  (make-symbol
                                   (gx#stx-e _L15606_)
                                   '"__"
                                   (gx#stx-e _L15713_)
                                   (gensym '__))))
                             (let ((_lambda-id15739_
                                    (gx#core-quote-syntax__1
                                     _lambda-id15737_
                                     (gx#stx-source _stx15322_))))
                               (let ((_g19433_
                                      (gx#core-bind-runtime!__0
                                       _lambda-id15739_)))
                                 (let ((_new-case-lambda-expr15742_
                                        (gxc#apply-expression-subst
                                         _L15711_
                                         _L15713_
                                         _lambda-id15739_)))
                                   (let ()
                                     (begin
                                       (gxc#verbose
                                        '"lift opt-lambda dispatch "
                                        (gxc#generate-runtime-binding-id
                                         _L15606_)
                                        '" => "
                                        (gxc#generate-runtime-binding-id
                                         _lambda-id15739_))
                                       (_lp15469_
                                        (cons (_bind-e__opt-lambda15881__1937519376_
                                               _L15606_
                                               _new-case-lambda-expr15742_
                                               '#f)
                                              _rest15494_)
                                        (cons (_bind-e__0__1937719378_
                                               _lambda-id15739_
                                               _L15712_)
                                              _lift115472_)
                                        _lift215473_
                                        _bind15474_))))))))
                         _hd1564415706_
                         _hd1564115698_
                         _hd1563815690_)
                        (_g1562015650_ _g1562115653_))))
                (_g1562015650_ _g1562115653_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1562015650_
                                                     _g1562115653_))
                                                (_g1562015650_
                                                 _g1562115653_))))
                                        (_g1562015650_ _g1562115653_))
                                    (_g1562015650_ _g1562115653_))))
                            (_g1562015650_ _g1562115653_))))
                    (_g1562015650_ _g1562115653_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1562015650_
                                                     _g1562115653_))))
                                            (_g1562015650_ _g1562115653_))))
                                    (_g1562015650_ _g1562115653_)))))
                         (_g1561915745_ _L15605_)))
                     (_g1549815576_ _g1550015579_)))
               _hd1552115600_
               _hd1551815592_)
              (_g1549815576_ _g1550015579_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1549815576_ _g1550015579_))
                                          (_g1549815576_ _g1550015579_))))
                                  (_g1549815576_ _g1550015579_))))
                          (_g1549815576_ _g1550015579_)))))
               (let ((_g1549615867_
                      (lambda (_g1550015751_)
                        (if (gx#stx-pair? _g1550015751_)
                            (let ((_e1550315753_ (gx#stx-e _g1550015751_)))
                              (let ((_hd1550415756_ (##car _e1550315753_))
                                    (_tl1550515758_ (##cdr _e1550315753_)))
                                (if (gx#stx-pair? _hd1550415756_)
                                    (let ((_e1550615761_
                                           (gx#stx-e _hd1550415756_)))
                                      (let ((_hd1550715764_
                                             (##car _e1550615761_))
                                            (_tl1550815766_
                                             (##cdr _e1550615761_)))
                                        (if (gx#stx-null? _tl1550815766_)
                                            (if (gx#stx-pair? _tl1550515758_)
                                                (let ((_e1550915769_
                                                       (gx#stx-e
                                                        _tl1550515758_)))
                                                  (let ((_hd1551015772_
                                                         (##car _e1550915769_))
                                                        (_tl1551115774_
                                                         (##cdr _e1550915769_)))
                                                    (if (gx#stx-null?
                                                         _tl1551115774_)
                                                        ((lambda (_L15777_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L15778_)
                   (if (if (gx#identifier? _L15778_)
                           (gxc#case-lambda-expr? _L15777_)
                           '#f)
                       (let ((_g1579315807_
                              (lambda (_g1579415804_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g1579415804_))))
                         (let ((_g1579215842_
                                (lambda (_g1579415810_)
                                  (if (gx#stx-pair? _g1579415810_)
                                      (let ((_e1580015812_
                                             (gx#stx-e _g1579415810_)))
                                        (let ((_hd1580115815_
                                               (##car _e1580015812_))
                                              (_tl1580215817_
                                               (##cdr _e1580015812_)))
                                          ((lambda (_L15820_)
                                             (let ((_g19434_
                                                    (gxc#lift-case-lambda-clauses__opt-lambda16308
                                                     _stx15322_
                                                     _L15778_
                                                     _L15820_
                                                     '#t)))
                                               (begin
                                                 (let ((_g19435_
                                                        (values-count
                                                         _g19434_)))
                                                   (if (not (fx= _g19435_ 3))
                                                       (error "Context expects 3 values"
                                                              _g19435_)))
                                                 (let ((_ids15830_
                                                        (values-ref
                                                         _g19434_
                                                         0))
                                                       (_impls15831_
                                                        (values-ref
                                                         _g19434_
                                                         1))
                                                       (_clauses15832_
                                                        (values-ref
                                                         _g19434_
                                                         2)))
                                                   (let ((_g19436_
                                                          (for-each
                                                           gx#core-bind-runtime!
                                                           _ids15830_)))
                                                     (let ((_xbind15835_
                                                            (map _bind-e15324_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _ids15830_
                         _impls15831_)))
               (let ((_expr*15837_
                      (gxc#xform-wrap-source
                       (cons '%#case-lambda _clauses15832_)
                       (gx#datum->syntax__0 '#f 'case-lambda-expr))))
                 (let ((_bind*15839_
                        (_bind-e__opt-lambda15881__1937519376_
                         _L15778_
                         _expr*15837_
                         '#f)))
                   (let ()
                     (begin
                       (gxc#verbose
                        '"lift case-lambda clauses "
                        (gxc#generate-runtime-binding-id _L15778_)
                        '" => "
                        (map gxc#identifier-symbol _ids15830_))
                       (_lp15469_
                        _rest15494_
                        _lift115472_
                        (foldl1 cons _lift215473_ _xbind15835_)
                        (cons _bind*15839_ _bind15474_))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _tl1580215817_)))
                                      (_g1579315807_ _g1579415810_)))))
                           (let ((_g1579115864_
                                  (lambda (_g1579415845_)
                                    (if (gx#stx-pair? _g1579415845_)
                                        (let ((_e1579615847_
                                               (gx#stx-e _g1579415845_)))
                                          (let ((_hd1579715850_
                                                 (##car _e1579615847_))
                                                (_tl1579815852_
                                                 (##cdr _e1579615847_)))
                                            ((lambda (_L15855_)
                                               (if (andmap1 gxc#dispatch-lambda-form?
                                                            _L15855_)
                                                   (_lp15469_
                                                    _rest15494_
                                                    _lift115472_
                                                    _lift215473_
                                                    (cons (_bind-e__opt-lambda15881__1937519376_
                                                           _L15778_
                                                           _L15777_
                                                           '#f)
                                                          _bind15474_))
                                                   (_g1579215842_
                                                    _g1579415845_)))
                                             _tl1579815852_)))
                                        (_g1579215842_ _g1579415845_)))))
                             (_g1579115864_ _L15777_))))
                       (_g1549715748_ _g1550015751_)))
                 _hd1551015772_
                 _hd1550715764_)
                (_g1549715748_ _g1550015751_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1549715748_ _g1550015751_))
                                            (_g1549715748_ _g1550015751_))))
                                    (_g1549715748_ _g1550015751_))))
                            (_g1549715748_ _g1550015751_)))))
                 (_g1549615867_ _hd15495_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (##pair? _rest1547515483_)
                                              (let ((_hd1548015873_
                                                     (##car _rest1547515483_))
                                                    (_tl1548115875_
                                                     (##cdr _rest1547515483_)))
                                                (let ((_hd15878_
                                                       _hd1548015873_))
                                                  (let ((_rest15880_
                                                         _tl1548115875_))
                                                    (_K1547915870_
                                                     _rest15880_
                                                     _hd15878_))))
                                              (_else1547715491_)))))))))
                        _lp15469_)
                      _rest15467_
                      '()
                      '()
                      '()))))
              (let ((_g1532815354_
                     (lambda (_g1532915351_)
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax"
                        _g1532915351_))))
                (let ((_g1532715361_
                       (lambda (_g1532915357_)
                         ((lambda () (gxc#xform-let-values% _stx15322_))))))
                  (let ((_g1532615464_
                         (lambda (_g1532915364_)
                           (if (gx#stx-pair? _g1532915364_)
                               (let ((_e1533215366_ (gx#stx-e _g1532915364_)))
                                 (let ((_hd1533315369_ (##car _e1533215366_))
                                       (_tl1533415371_ (##cdr _e1533215366_)))
                                   (if (gx#stx-pair? _tl1533415371_)
                                       (let ((_e1533515374_
                                              (gx#stx-e _tl1533415371_)))
                                         (let ((_hd1533615377_
                                                (##car _e1533515374_))
                                               (_tl1533715379_
                                                (##cdr _e1533515374_)))
                                           (if (gx#stx-pair/null?
                                                _hd1533615377_)
                                               (if (fx>= (gx#stx-length
                                                          _hd1533615377_)
                                                         '0)
                                                   (let ((_g19429_
                                                          (gx#syntax-split-splice
                                                           _hd1533615377_
                                                           '0)))
                                                     (begin
                                                       (let ((_g19430_
                                                              (values-count
                                                               _g19429_)))
                                                         (if (not (fx= _g19430_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g19430_)))
               (let ((_target1533815382_ (values-ref _g19429_ 0))
                     (_tl1534015384_ (values-ref _g19429_ 1)))
                 (if (gx#stx-null? _tl1534015384_)
                     (letrec ((_loop1534115387_
                               (lambda (_hd1533915390_ _bind1534515392_)
                                 (if (gx#stx-pair? _hd1533915390_)
                                     (let ((_e1534215395_
                                            (gx#stx-e _hd1533915390_)))
                                       (let ((_lp-hd1534315398_
                                              (##car _e1534215395_))
                                             (_lp-tl1534415400_
                                              (##cdr _e1534215395_)))
                                         (_loop1534115387_
                                          _lp-tl1534415400_
                                          (cons _lp-hd1534315398_
                                                _bind1534515392_))))
                                     (let ((_bind1534615403_
                                            (reverse _bind1534515392_)))
                                       (if (gx#stx-pair? _tl1533715379_)
                                           (let ((_e1534715406_
                                                  (gx#stx-e _tl1533715379_)))
                                             (let ((_hd1534815409_
                                                    (##car _e1534715406_))
                                                   (_tl1534915411_
                                                    (##cdr _e1534715406_)))
                                               (if (gx#stx-null?
                                                    _tl1534915411_)
                                                   ((lambda (_L15414_ _L15415_)
                                                      (if (ormap1 gxc#lift-top-lambda-binding?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (begin
                            '#!void
                            (foldr1 (lambda (_g1543515438_ _g1543615440_)
                                      (cons _g1543515438_ _g1543615440_))
                                    '()
                                    _L15415_)))
                  (call-with-parameters
                   (lambda ()
                     (let ((_g19431_
                            (_compile-bindings15325_
                             (begin
                               '#!void
                               (foldr1 (lambda (_g1544315446_ _g1544415448_)
                                         (cons _g1544315446_ _g1544415448_))
                                       '()
                                       _L15415_)))))
                       (begin
                         (let ((_g19432_ (values-count _g19431_)))
                           (if (not (fx= _g19432_ 3))
                               (error "Context expects 3 values" _g19432_)))
                         (let ((_lift115451_ (values-ref _g19431_ 0))
                               (_lift215452_ (values-ref _g19431_ 1))
                               (_hd15453_ (values-ref _g19431_ 2)))
                           (let ((_body15455_ (gxc#compile-e _L15414_)))
                             (let ((_expr15457_
                                    (gxc#xform-wrap-source
                                     (cons '%#let-values
                                           (cons _hd15453_
                                                 (cons _body15455_ '())))
                                     _stx15322_)))
                               (let ((_expr15459_
                                      (if (null? _lift215452_)
                                          _expr15457_
                                          (gxc#xform-wrap-source
                                           (cons '%#let-values
                                                 (cons _lift215452_
                                                       (cons _expr15457_ '())))
                                           _stx15322_))))
                                 (let ((_expr15461_
                                        (if (null? _lift115451_)
                                            _expr15459_
                                            (gxc#xform-wrap-source
                                             (cons '%#let-values
                                                   (cons _lift115451_
                                                         (cons _expr15459_
                                                               '())))
                                             _stx15322_))))
                                   (let () _expr15461_)))))))))
                   gx#current-expander-context
                   (let ((__obj19385 (make-object gx#local-context::t '5)))
                     (begin
                       (gx#local-context:::init!__0 __obj19385)
                       __obj19385)))
                  (_g1532715361_ _g1532915364_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd1534815409_
                                                    _bind1534615403_)
                                                   (_g1532715361_
                                                    _g1532915364_))))
                                           (_g1532715361_ _g1532915364_)))))))
                       (_loop1534115387_ _target1533815382_ '()))
                     (_g1532715361_ _g1532915364_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1532715361_
                                                    _g1532915364_))
                                               (_g1532715361_ _g1532915364_))))
                                       (_g1532715361_ _g1532915364_))))
                               (_g1532715361_ _g1532915364_)))))
                    (_g1532615464_ _stx15322_))))))))))
  (define gxc#lift-top-lambda-letrec-values%
    (lambda (_stx14754_)
      (let ((_bind-e__opt-lambda15304__1938019381_
             (lambda (_id15306_ _expr15307_ _compile?15308_)
               (cons (cons _id15306_ '())
                     (cons (if _compile?15308_
                               (gxc#compile-e _expr15307_)
                               _expr15307_)
                           '())))))
        (let ((_bind-e__0__1938219383_
               (lambda (_id15313_ _expr15314_)
                 (let ((_compile?15316_ '#t))
                   (_bind-e__opt-lambda15304__1938019381_
                    _id15313_
                    _expr15314_
                    _compile?15316_)))))
          (let ((_bind-e14756_
                 (lambda _g19446_
                   (let ((_g19445_ (length _g19446_)))
                     (cond ((fx= _g19445_ 2)
                            (apply _bind-e__0__1938219383_ _g19446_))
                           ((fx= _g19445_ 3)
                            (apply _bind-e__opt-lambda15304__1938019381_
                                   _g19446_))
                           (else
                            (error "No clause matching arguments"
                                   _g19446_)))))))
            (let ((_compile-bindings14757_
                   (lambda (_rest14892_)
                     ((letrec ((_lp14894_
                                (lambda (_rest14896_ _bind14897_)
                                  (let ((_rest1489814906_ _rest14896_))
                                    (let ((_E1490114910_
                                           (lambda ()
                                             (error '"No clause matching"
                                                    _rest1489814906_))))
                                      (let ((_else1490014914_
                                             (lambda ()
                                               (reverse _bind14897_))))
                                        (let ((_K1490215293_
                                               (lambda (_rest14917_ _hd14918_)
                                                 (let ((_g1492214958_
                                                        (lambda (_g1492314955_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax"
                                                           _g1492314955_))))
                                                   (let ((_g1492114999_
                                                          (lambda (_g1492314961_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1492314961_)
                        (let ((_e1494814963_ (gx#stx-e _g1492314961_)))
                          (let ((_hd1494914966_ (##car _e1494814963_))
                                (_tl1495014968_ (##cdr _e1494814963_)))
                            (if (gx#stx-pair? _tl1495014968_)
                                (let ((_e1495114971_
                                       (gx#stx-e _tl1495014968_)))
                                  (let ((_hd1495214974_ (##car _e1495114971_))
                                        (_tl1495314976_ (##cdr _e1495114971_)))
                                    (if (gx#stx-null? _tl1495314976_)
                                        ((lambda (_L14979_ _L14980_)
                                           (_lp14894_
                                            _rest14917_
                                            (cons (cons _L14980_
                                                        (cons (gxc#compile-e
                                                               _L14979_)
                                                              '()))
                                                  _bind14897_)))
                                         _hd1495214974_
                                         _hd1494914966_)
                                        (_g1492214958_ _g1492314961_))))
                                (_g1492214958_ _g1492314961_))))
                        (_g1492214958_ _g1492314961_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_g1492015171_
                                                            (lambda (_g1492315002_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g1492315002_)
                          (let ((_e1493715004_ (gx#stx-e _g1492315002_)))
                            (let ((_hd1493815007_ (##car _e1493715004_))
                                  (_tl1493915009_ (##cdr _e1493715004_)))
                              (if (gx#stx-pair? _hd1493815007_)
                                  (let ((_e1494015012_
                                         (gx#stx-e _hd1493815007_)))
                                    (let ((_hd1494115015_
                                           (##car _e1494015012_))
                                          (_tl1494215017_
                                           (##cdr _e1494015012_)))
                                      (if (gx#stx-null? _tl1494215017_)
                                          (if (gx#stx-pair? _tl1493915009_)
                                              (let ((_e1494315020_
                                                     (gx#stx-e
                                                      _tl1493915009_)))
                                                (let ((_hd1494415023_
                                                       (##car _e1494315020_))
                                                      (_tl1494515025_
                                                       (##cdr _e1494315020_)))
                                                  (if (gx#stx-null?
                                                       _tl1494515025_)
                                                      ((lambda (_L15028_
                                                                _L15029_)
                                                         (if (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L15029_)
                         (gxc#opt-lambda-expr? _L15028_)
                         '#f)
                     (let ((_g1504315073_
                            (lambda (_g1504415070_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g1504415070_))))
                       (let ((_g1504215168_
                              (lambda (_g1504415076_)
                                (if (gx#stx-pair? _g1504415076_)
                                    (let ((_e1504815078_
                                           (gx#stx-e _g1504415076_)))
                                      (let ((_hd1504915081_
                                             (##car _e1504815078_))
                                            (_tl1505015083_
                                             (##cdr _e1504815078_)))
                                        (if (gx#stx-pair? _tl1505015083_)
                                            (let ((_e1505115086_
                                                   (gx#stx-e _tl1505015083_)))
                                              (let ((_hd1505215089_
                                                     (##car _e1505115086_))
                                                    (_tl1505315091_
                                                     (##cdr _e1505115086_)))
                                                (if (gx#stx-pair?
                                                     _hd1505215089_)
                                                    (let ((_e1505415094_
                                                           (gx#stx-e
                                                            _hd1505215089_)))
                                                      (let ((_hd1505515097_
                                                             (##car _e1505415094_))
                                                            (_tl1505615099_
                                                             (##cdr _e1505415094_)))
                                                        (if (gx#stx-pair?
                                                             _hd1505515097_)
                                                            (let ((_e1505715102_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1505515097_)))
                      (let ((_hd1505815105_ (##car _e1505715102_))
                            (_tl1505915107_ (##cdr _e1505715102_)))
                        (if (gx#stx-pair? _hd1505815105_)
                            (let ((_e1506015110_ (gx#stx-e _hd1505815105_)))
                              (let ((_hd1506115113_ (##car _e1506015110_))
                                    (_tl1506215115_ (##cdr _e1506015110_)))
                                (if (gx#stx-null? _tl1506215115_)
                                    (if (gx#stx-pair? _tl1505915107_)
                                        (let ((_e1506315118_
                                               (gx#stx-e _tl1505915107_)))
                                          (let ((_hd1506415121_
                                                 (##car _e1506315118_))
                                                (_tl1506515123_
                                                 (##cdr _e1506315118_)))
                                            (if (gx#stx-null? _tl1506515123_)
                                                (if (gx#stx-null?
                                                     _tl1505615099_)
                                                    (if (gx#stx-pair?
                                                         _tl1505315091_)
                                                        (let ((_e1506615126_
                                                               (gx#stx-e
                                                                _tl1505315091_)))
                                                          (let ((_hd1506715129_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1506615126_))
                        (_tl1506815131_ (##cdr _e1506615126_)))
                    (if (gx#stx-null? _tl1506815131_)
                        ((lambda (_L15134_ _L15135_ _L15136_)
                           (let ((_lambda-id15160_
                                  (make-symbol
                                   (gx#stx-e _L15029_)
                                   '"__"
                                   (gx#stx-e _L15136_)
                                   (gensym '__))))
                             (let ((_lambda-id15162_
                                    (gx#core-quote-syntax__1
                                     _lambda-id15160_
                                     (gx#stx-source _stx14754_))))
                               (let ((_g19441_
                                      (gx#core-bind-runtime!__0
                                       _lambda-id15162_)))
                                 (let ((_new-case-lambda-expr15165_
                                        (gxc#apply-expression-subst
                                         _L15134_
                                         _L15136_
                                         _lambda-id15162_)))
                                   (let ()
                                     (begin
                                       (gxc#verbose
                                        '"lift opt-lambda dispatch "
                                        (gxc#generate-runtime-binding-id
                                         _L15029_)
                                        '" => "
                                        (gxc#generate-runtime-binding-id
                                         _lambda-id15162_))
                                       (_lp14894_
                                        (cons (_bind-e__opt-lambda15304__1938019381_
                                               _L15029_
                                               _new-case-lambda-expr15165_
                                               '#f)
                                              _rest14917_)
                                        (cons (_bind-e__0__1938219383_
                                               _lambda-id15162_
                                               _L15135_)
                                              _bind14897_)))))))))
                         _hd1506715129_
                         _hd1506415121_
                         _hd1506115113_)
                        (_g1504315073_ _g1504415076_))))
                (_g1504315073_ _g1504415076_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1504315073_
                                                     _g1504415076_))
                                                (_g1504315073_
                                                 _g1504415076_))))
                                        (_g1504315073_ _g1504415076_))
                                    (_g1504315073_ _g1504415076_))))
                            (_g1504315073_ _g1504415076_))))
                    (_g1504315073_ _g1504415076_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1504315073_
                                                     _g1504415076_))))
                                            (_g1504315073_ _g1504415076_))))
                                    (_g1504315073_ _g1504415076_)))))
                         (_g1504215168_ _L15028_)))
                     (_g1492114999_ _g1492315002_)))
               _hd1494415023_
               _hd1494115015_)
              (_g1492114999_ _g1492315002_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1492114999_ _g1492315002_))
                                          (_g1492114999_ _g1492315002_))))
                                  (_g1492114999_ _g1492315002_))))
                          (_g1492114999_ _g1492315002_)))))
               (let ((_g1491915290_
                      (lambda (_g1492315174_)
                        (if (gx#stx-pair? _g1492315174_)
                            (let ((_e1492615176_ (gx#stx-e _g1492315174_)))
                              (let ((_hd1492715179_ (##car _e1492615176_))
                                    (_tl1492815181_ (##cdr _e1492615176_)))
                                (if (gx#stx-pair? _hd1492715179_)
                                    (let ((_e1492915184_
                                           (gx#stx-e _hd1492715179_)))
                                      (let ((_hd1493015187_
                                             (##car _e1492915184_))
                                            (_tl1493115189_
                                             (##cdr _e1492915184_)))
                                        (if (gx#stx-null? _tl1493115189_)
                                            (if (gx#stx-pair? _tl1492815181_)
                                                (let ((_e1493215192_
                                                       (gx#stx-e
                                                        _tl1492815181_)))
                                                  (let ((_hd1493315195_
                                                         (##car _e1493215192_))
                                                        (_tl1493415197_
                                                         (##cdr _e1493215192_)))
                                                    (if (gx#stx-null?
                                                         _tl1493415197_)
                                                        ((lambda (_L15200_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L15201_)
                   (if (if (gx#identifier? _L15201_)
                           (gxc#case-lambda-expr? _L15200_)
                           '#f)
                       (let ((_g1521615230_
                              (lambda (_g1521715227_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g1521715227_))))
                         (let ((_g1521515265_
                                (lambda (_g1521715233_)
                                  (if (gx#stx-pair? _g1521715233_)
                                      (let ((_e1522315235_
                                             (gx#stx-e _g1521715233_)))
                                        (let ((_hd1522415238_
                                               (##car _e1522315235_))
                                              (_tl1522515240_
                                               (##cdr _e1522315235_)))
                                          ((lambda (_L15243_)
                                             (let ((_g19442_
                                                    (gxc#lift-case-lambda-clauses__opt-lambda16308
                                                     _stx14754_
                                                     _L15201_
                                                     _L15243_
                                                     '#t)))
                                               (begin
                                                 (let ((_g19443_
                                                        (values-count
                                                         _g19442_)))
                                                   (if (not (fx= _g19443_ 3))
                                                       (error "Context expects 3 values"
                                                              _g19443_)))
                                                 (let ((_ids15253_
                                                        (values-ref
                                                         _g19442_
                                                         0))
                                                       (_impls15254_
                                                        (values-ref
                                                         _g19442_
                                                         1))
                                                       (_clauses15255_
                                                        (values-ref
                                                         _g19442_
                                                         2)))
                                                   (let ((_g19444_
                                                          (for-each
                                                           gx#core-bind-runtime!
                                                           _ids15253_)))
                                                     (let ((_xbind15258_
                                                            (map _bind-e14756_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _ids15253_
                         _impls15254_)))
               (let ((_expr*15260_
                      (gxc#xform-wrap-source
                       (cons '%#case-lambda _clauses15255_)
                       (gx#datum->syntax__0 '#f 'case-lambda-expr))))
                 (let ((_bind*15262_
                        (_bind-e__opt-lambda15304__1938019381_
                         _L15201_
                         _expr*15260_
                         '#f)))
                   (let ()
                     (begin
                       (gxc#verbose
                        '"lift case-lambda clauses "
                        (gxc#generate-runtime-binding-id _L15201_)
                        '" => "
                        (map gxc#identifier-symbol _ids15253_))
                       (_lp14894_
                        _rest14917_
                        (cons _bind*15262_
                              (foldl1 cons
                                      _bind14897_
                                      _xbind15258_)))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _tl1522515240_)))
                                      (_g1521615230_ _g1521715233_)))))
                           (let ((_g1521415287_
                                  (lambda (_g1521715268_)
                                    (if (gx#stx-pair? _g1521715268_)
                                        (let ((_e1521915270_
                                               (gx#stx-e _g1521715268_)))
                                          (let ((_hd1522015273_
                                                 (##car _e1521915270_))
                                                (_tl1522115275_
                                                 (##cdr _e1521915270_)))
                                            ((lambda (_L15278_)
                                               (if (andmap1 gxc#dispatch-lambda-form?
                                                            _L15278_)
                                                   (_lp14894_
                                                    _rest14917_
                                                    (cons (_bind-e__opt-lambda15304__1938019381_
                                                           _L15201_
                                                           _L15200_
                                                           '#f)
                                                          _bind14897_))
                                                   (_g1521515265_
                                                    _g1521715268_)))
                                             _tl1522115275_)))
                                        (_g1521515265_ _g1521715268_)))))
                             (_g1521415287_ _L15200_))))
                       (_g1492015171_ _g1492315174_)))
                 _hd1493315195_
                 _hd1493015187_)
                (_g1492015171_ _g1492315174_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1492015171_ _g1492315174_))
                                            (_g1492015171_ _g1492315174_))))
                                    (_g1492015171_ _g1492315174_))))
                            (_g1492015171_ _g1492315174_)))))
                 (_g1491915290_ _hd14918_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (##pair? _rest1489814906_)
                                              (let ((_hd1490315296_
                                                     (##car _rest1489814906_))
                                                    (_tl1490415298_
                                                     (##cdr _rest1489814906_)))
                                                (let ((_hd15301_
                                                       _hd1490315296_))
                                                  (let ((_rest15303_
                                                         _tl1490415298_))
                                                    (_K1490215293_
                                                     _rest15303_
                                                     _hd15301_))))
                                              (_else1490014914_)))))))))
                        _lp14894_)
                      _rest14892_
                      '()))))
              (let ((_g1476014787_
                     (lambda (_g1476114784_)
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax"
                        _g1476114784_))))
                (let ((_g1475914794_
                       (lambda (_g1476114790_)
                         ((lambda () (gxc#xform-let-values% _stx14754_))))))
                  (let ((_g1475814889_
                         (lambda (_g1476114797_)
                           (if (gx#stx-pair? _g1476114797_)
                               (let ((_e1476514799_ (gx#stx-e _g1476114797_)))
                                 (let ((_hd1476614802_ (##car _e1476514799_))
                                       (_tl1476714804_ (##cdr _e1476514799_)))
                                   (if (gx#stx-pair? _tl1476714804_)
                                       (let ((_e1476814807_
                                              (gx#stx-e _tl1476714804_)))
                                         (let ((_hd1476914810_
                                                (##car _e1476814807_))
                                               (_tl1477014812_
                                                (##cdr _e1476814807_)))
                                           (if (gx#stx-pair/null?
                                                _hd1476914810_)
                                               (if (fx>= (gx#stx-length
                                                          _hd1476914810_)
                                                         '0)
                                                   (let ((_g19439_
                                                          (gx#syntax-split-splice
                                                           _hd1476914810_
                                                           '0)))
                                                     (begin
                                                       (let ((_g19440_
                                                              (values-count
                                                               _g19439_)))
                                                         (if (not (fx= _g19440_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g19440_)))
               (let ((_target1477114815_ (values-ref _g19439_ 0))
                     (_tl1477314817_ (values-ref _g19439_ 1)))
                 (if (gx#stx-null? _tl1477314817_)
                     (letrec ((_loop1477414820_
                               (lambda (_hd1477214823_ _bind1477814825_)
                                 (if (gx#stx-pair? _hd1477214823_)
                                     (let ((_e1477514828_
                                            (gx#stx-e _hd1477214823_)))
                                       (let ((_lp-hd1477614831_
                                              (##car _e1477514828_))
                                             (_lp-tl1477714833_
                                              (##cdr _e1477514828_)))
                                         (_loop1477414820_
                                          _lp-tl1477714833_
                                          (cons _lp-hd1477614831_
                                                _bind1477814825_))))
                                     (let ((_bind1477914836_
                                            (reverse _bind1477814825_)))
                                       (if (gx#stx-pair? _tl1477014812_)
                                           (let ((_e1478014839_
                                                  (gx#stx-e _tl1477014812_)))
                                             (let ((_hd1478114842_
                                                    (##car _e1478014839_))
                                                   (_tl1478214844_
                                                    (##cdr _e1478014839_)))
                                               (if (gx#stx-null?
                                                    _tl1478214844_)
                                                   ((lambda (_L14847_
                                                             _L14848_
                                                             _L14849_)
                                                      (if (ormap1 gxc#lift-top-lambda-binding?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (begin
                            '#!void
                            (foldr1 (lambda (_g1487014873_ _g1487114875_)
                                      (cons _g1487014873_ _g1487114875_))
                                    '()
                                    _L14848_)))
                  (call-with-parameters
                   (lambda ()
                     (let ((_hd14886_
                            (_compile-bindings14757_
                             (begin
                               '#!void
                               (foldr1 (lambda (_g1487814881_ _g1487914883_)
                                         (cons _g1487814881_ _g1487914883_))
                                       '()
                                       _L14848_))))
                           (_body14887_ (gxc#compile-e _L14847_)))
                       (gxc#xform-wrap-source
                        (cons _L14849_ (cons _hd14886_ (cons _body14887_ '())))
                        _stx14754_)))
                   gx#current-expander-context
                   (let ((__obj19386 (make-object gx#local-context::t '5)))
                     (begin
                       (gx#local-context:::init!__0 __obj19386)
                       __obj19386)))
                  (_g1475914794_ _g1476114797_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd1478114842_
                                                    _bind1477914836_
                                                    _hd1476614802_)
                                                   (_g1475914794_
                                                    _g1476114797_))))
                                           (_g1475914794_ _g1476114797_)))))))
                       (_loop1477414820_ _target1477114815_ '()))
                     (_g1475914794_ _g1476114797_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1475914794_
                                                    _g1476114797_))
                                               (_g1475914794_ _g1476114797_))))
                                       (_g1475914794_ _g1476114797_))))
                               (_g1475914794_ _g1476114797_)))))
                    (_g1475814889_ _stx14754_))))))))))
  (define gxc#lift-top-lambda-binding?
    (lambda (_bind14675_)
      (let ((_g1467814695_
             (lambda (_g1467914692_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1467914692_))))
        (let ((_g1467714702_ (lambda (_g1467914698_) ((lambda () '#f)))))
          (let ((_g1467614751_
                 (lambda (_g1467914705_)
                   (if (gx#stx-pair? _g1467914705_)
                       (let ((_e1468214707_ (gx#stx-e _g1467914705_)))
                         (let ((_hd1468314710_ (##car _e1468214707_))
                               (_tl1468414712_ (##cdr _e1468214707_)))
                           (if (gx#stx-pair? _hd1468314710_)
                               (let ((_e1468514715_ (gx#stx-e _hd1468314710_)))
                                 (let ((_hd1468614718_ (##car _e1468514715_))
                                       (_tl1468714720_ (##cdr _e1468514715_)))
                                   (if (gx#stx-null? _tl1468714720_)
                                       (if (gx#stx-pair? _tl1468414712_)
                                           (let ((_e1468814723_
                                                  (gx#stx-e _tl1468414712_)))
                                             (let ((_hd1468914726_
                                                    (##car _e1468814723_))
                                                   (_tl1469014728_
                                                    (##cdr _e1468814723_)))
                                               (if (gx#stx-null?
                                                    _tl1469014728_)
                                                   ((lambda (_L14731_ _L14732_)
                                                      (if (gx#identifier?
                                                           _L14732_)
                                                          (let ((_$e14748_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gxc#case-lambda-expr? _L14731_)))
                    (if _$e14748_ _$e14748_ (gxc#opt-lambda-expr? _L14731_)))
                  '#f))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd1468914726_
                                                    _hd1468614718_)
                                                   (_g1467714702_
                                                    _g1467914705_))))
                                           (_g1467714702_ _g1467914705_))
                                       (_g1467714702_ _g1467914705_))))
                               (_g1467714702_ _g1467914705_))))
                       (_g1467714702_ _g1467914705_)))))
            (_g1467614751_ _bind14675_))))))
  (define gxc#expression-subst-ref%
    (lambda (_stx14613_ _id14614_ _new-id14615_)
      (let ((_g1461814631_
             (lambda (_g1461914628_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1461914628_))))
        (let ((_g1461714638_
               (lambda (_g1461914634_) ((lambda () _stx14613_)))))
          (let ((_g1461614672_
                 (lambda (_g1461914641_)
                   (if (gx#stx-pair? _g1461914641_)
                       (let ((_e1462114643_ (gx#stx-e _g1461914641_)))
                         (let ((_hd1462214646_ (##car _e1462114643_))
                               (_tl1462314648_ (##cdr _e1462114643_)))
                           (if (gx#stx-pair? _tl1462314648_)
                               (let ((_e1462414651_ (gx#stx-e _tl1462314648_)))
                                 (let ((_hd1462514654_ (##car _e1462414651_))
                                       (_tl1462614656_ (##cdr _e1462414651_)))
                                   (if (gx#stx-null? _tl1462614656_)
                                       ((lambda (_L14659_)
                                          (if (gx#free-identifier=?
                                               _L14659_
                                               _id14614_)
                                              (gxc#xform-wrap-source
                                               (cons '%#ref
                                                     (cons _new-id14615_ '()))
                                               _stx14613_)
                                              (_g1461714638_ _g1461914641_)))
                                        _hd1462514654_)
                                       (_g1461714638_ _g1461914641_))))
                               (_g1461714638_ _g1461914641_))))
                       (_g1461714638_ _g1461914641_)))))
            (_g1461614672_ _stx14613_))))))
  (define gxc#collect-type-define-values%
    (lambda (_stx14469_)
      (let ((_g1447214503_
             (lambda (_g1447314500_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1447314500_))))
        (let ((_g1447114548_
               (lambda (_g1447314506_)
                 (if (gx#stx-pair? _g1447314506_)
                     (let ((_e1449014508_ (gx#stx-e _g1447314506_)))
                       (let ((_hd1449114511_ (##car _e1449014508_))
                             (_tl1449214513_ (##cdr _e1449014508_)))
                         (if (gx#stx-pair? _tl1449214513_)
                             (let ((_e1449314516_ (gx#stx-e _tl1449214513_)))
                               (let ((_hd1449414519_ (##car _e1449314516_))
                                     (_tl1449514521_ (##cdr _e1449314516_)))
                                 (if (gx#stx-pair? _tl1449514521_)
                                     (let ((_e1449614524_
                                            (gx#stx-e _tl1449514521_)))
                                       (let ((_hd1449714527_
                                              (##car _e1449614524_))
                                             (_tl1449814529_
                                              (##cdr _e1449614524_)))
                                         (if (gx#stx-null? _tl1449814529_)
                                             ((lambda (_L14532_ _L14533_)
                                                (gxc#compile-e _L14532_))
                                              _hd1449714527_
                                              _hd1449414519_)
                                             (_g1447214503_ _g1447314506_))))
                                     (_g1447214503_ _g1447314506_))))
                             (_g1447214503_ _g1447314506_))))
                     (_g1447214503_ _g1447314506_)))))
          (let ((_g1447014610_
                 (lambda (_g1447314551_)
                   (if (gx#stx-pair? _g1447314551_)
                       (let ((_e1447614553_ (gx#stx-e _g1447314551_)))
                         (let ((_hd1447714556_ (##car _e1447614553_))
                               (_tl1447814558_ (##cdr _e1447614553_)))
                           (if (gx#stx-pair? _tl1447814558_)
                               (let ((_e1447914561_ (gx#stx-e _tl1447814558_)))
                                 (let ((_hd1448014564_ (##car _e1447914561_))
                                       (_tl1448114566_ (##cdr _e1447914561_)))
                                   (if (gx#stx-pair? _hd1448014564_)
                                       (let ((_e1448214569_
                                              (gx#stx-e _hd1448014564_)))
                                         (let ((_hd1448314572_
                                                (##car _e1448214569_))
                                               (_tl1448414574_
                                                (##cdr _e1448214569_)))
                                           (if (gx#stx-null? _tl1448414574_)
                                               (if (gx#stx-pair?
                                                    _tl1448114566_)
                                                   (let ((_e1448514577_
                                                          (gx#stx-e
                                                           _tl1448114566_)))
                                                     (let ((_hd1448614580_
                                                            (##car _e1448514577_))
                                                           (_tl1448714582_
                                                            (##cdr _e1448514577_)))
                                                       (if (gx#stx-null?
                                                            _tl1448714582_)
                                                           ((lambda (_L14585_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L14586_)
                      (if (gx#identifier? _L14586_)
                          (let ((_sym14602_
                                 (gxc#generate-runtime-binding-id _L14586_)))
                            (begin
                              (if (table-ref
                                   (gxc#current-compile-mutators)
                                   _sym14602_
                                   '#f)
                                  (gxc#verbose
                                   '"skipping type declaration for mutable binding "
                                   _sym14602_)
                                  (let ((_type1460314605_
                                         (gxc#apply-basic-expression-type
                                          _L14585_)))
                                    (if _type1460314605_
                                        (let ((_type14608_ _type1460314605_))
                                          (gxc#optimizer-declare-type!__0
                                           _sym14602_
                                           _type14608_))
                                        '#f)))
                              (gxc#compile-e _L14585_)))
                          (_g1447114548_ _g1447314551_)))
                    _hd1448614580_
                    _hd1448314572_)
                   (_g1447114548_ _g1447314551_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1447114548_
                                                    _g1447314551_))
                                               (_g1447114548_ _g1447314551_))))
                                       (_g1447114548_ _g1447314551_))))
                               (_g1447114548_ _g1447314551_))))
                       (_g1447114548_ _g1447314551_)))))
            (_g1447014610_ _stx14469_))))))
  (define gxc#collect-type-let-values%
    (lambda (_stx14254_)
      (let ((_collect-e14256_
             (lambda (_hd14413_ _expr14414_)
               (let ((_g1441714427_
                      (lambda (_g1441814424_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax"
                         _g1441814424_))))
                 (let ((_g1441614434_
                        (lambda (_g1441814430_) ((lambda () '#!void)))))
                   (let ((_g1441514466_
                          (lambda (_g1441814437_)
                            (if (gx#stx-pair? _g1441814437_)
                                (let ((_e1442014439_ (gx#stx-e _g1441814437_)))
                                  (let ((_hd1442114442_ (##car _e1442014439_))
                                        (_tl1442214444_ (##cdr _e1442014439_)))
                                    (if (gx#stx-null? _tl1442214444_)
                                        ((lambda (_L14447_)
                                           (if (gx#identifier? _L14447_)
                                               (let ((_sym14458_
                                                      (gxc#generate-runtime-binding-id
                                                       _L14447_)))
                                                 (if (table-ref
                                                      (gxc#current-compile-mutators)
                                                      _sym14458_
                                                      '#f)
                                                     (gxc#verbose
                                                      '"skipping type declaration for mutable binding "
                                                      _sym14458_)
                                                     (let ((_type1445914461_
                                                            (gxc#apply-basic-expression-type
                                                             _expr14414_)))
                                                       (if _type1445914461_
                                                           (let ((_type14464_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _type1445914461_))
                     (gxc#optimizer-declare-type!__opt-lambda19159
                      _sym14458_
                      _type14464_
                      '#t))
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1441614434_ _g1441814437_)))
                                         _hd1442114442_)
                                        (_g1441614434_ _g1441814437_))))
                                (_g1441614434_ _g1441814437_)))))
                     (_g1441514466_ _hd14413_)))))))
        (let ((_g1425814293_
               (lambda (_g1425914290_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1425914290_))))
          (let ((_g1425714410_
                 (lambda (_g1425914296_)
                   (if (gx#stx-pair? _g1425914296_)
                       (let ((_e1426314298_ (gx#stx-e _g1425914296_)))
                         (let ((_hd1426414301_ (##car _e1426314298_))
                               (_tl1426514303_ (##cdr _e1426314298_)))
                           (if (gx#stx-pair? _tl1426514303_)
                               (let ((_e1426614306_ (gx#stx-e _tl1426514303_)))
                                 (let ((_hd1426714309_ (##car _e1426614306_))
                                       (_tl1426814311_ (##cdr _e1426614306_)))
                                   (if (gx#stx-pair/null? _hd1426714309_)
                                       (if (fx>= (gx#stx-length _hd1426714309_)
                                                 '0)
                                           (let ((_g19447_
                                                  (gx#syntax-split-splice
                                                   _hd1426714309_
                                                   '0)))
                                             (begin
                                               (let ((_g19448_
                                                      (values-count _g19447_)))
                                                 (if (not (fx= _g19448_ 2))
                                                     (error "Context expects 2 values"
                                                            _g19448_)))
                                               (let ((_target1426914314_
                                                      (values-ref _g19447_ 0))
                                                     (_tl1427114316_
                                                      (values-ref _g19447_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl1427114316_)
                                                     (letrec ((_loop1427214319_
                                                               (lambda (_hd1427014322_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _expr1427614324_
                                _hd1427714326_)
                         (if (gx#stx-pair? _hd1427014322_)
                             (let ((_e1427314329_ (gx#stx-e _hd1427014322_)))
                               (let ((_lp-hd1427414332_ (##car _e1427314329_))
                                     (_lp-tl1427514334_ (##cdr _e1427314329_)))
                                 (if (gx#stx-pair? _lp-hd1427414332_)
                                     (let ((_e1428014337_
                                            (gx#stx-e _lp-hd1427414332_)))
                                       (let ((_hd1428114340_
                                              (##car _e1428014337_))
                                             (_tl1428214342_
                                              (##cdr _e1428014337_)))
                                         (if (gx#stx-pair? _tl1428214342_)
                                             (let ((_e1428314345_
                                                    (gx#stx-e _tl1428214342_)))
                                               (let ((_hd1428414348_
                                                      (##car _e1428314345_))
                                                     (_tl1428514350_
                                                      (##cdr _e1428314345_)))
                                                 (if (gx#stx-null?
                                                      _tl1428514350_)
                                                     (_loop1427214319_
                                                      _lp-tl1427514334_
                                                      (cons _hd1428414348_
                                                            _expr1427614324_)
                                                      (cons _hd1428114340_
                                                            _hd1427714326_))
                                                     (_g1425814293_
                                                      _g1425914296_))))
                                             (_g1425814293_ _g1425914296_))))
                                     (_g1425814293_ _g1425914296_))))
                             (let ((_expr1427814353_
                                    (reverse _expr1427614324_))
                                   (_hd1427914355_ (reverse _hd1427714326_)))
                               (if (gx#stx-pair? _tl1426814311_)
                                   (let ((_e1428614358_
                                          (gx#stx-e _tl1426814311_)))
                                     (let ((_hd1428714361_
                                            (##car _e1428614358_))
                                           (_tl1428814363_
                                            (##cdr _e1428614358_)))
                                       (if (gx#stx-null? _tl1428814363_)
                                           ((lambda (_L14366_
                                                     _L14367_
                                                     _L14368_)
                                              (begin
                                                (for-each
                                                 _collect-e14256_
                                                 (begin
                                                   '#!void
                                                   (foldr1 (lambda (_g1438814391_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g1438914393_)
                     (cons _g1438814391_ _g1438914393_))
                   '()
                   _L14368_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (begin
                                                   '#!void
                                                   (foldr1 (lambda (_g1439514398_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g1439614400_)
                     (cons _g1439514398_ _g1439614400_))
                   '()
                   _L14367_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (for-each
                                                 gxc#compile-e
                                                 (begin
                                                   '#!void
                                                   (foldr1 (lambda (_g1440214405_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g1440314407_)
                     (cons _g1440214405_ _g1440314407_))
                   '()
                   _L14367_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (gxc#compile-e _L14366_)))
                                            _hd1428714361_
                                            _expr1427814353_
                                            _hd1427914355_)
                                           (_g1425814293_ _g1425914296_))))
                                   (_g1425814293_ _g1425914296_)))))))
               (_loop1427214319_ _target1426914314_ '() '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1425814293_
                                                      _g1425914296_)))))
                                           (_g1425814293_ _g1425914296_))
                                       (_g1425814293_ _g1425914296_))))
                               (_g1425814293_ _g1425914296_))))
                       (_g1425814293_ _g1425914296_)))))
            (_g1425714410_ _stx14254_))))))
  (define gxc#collect-type-call%
    (lambda (_stx13808_)
      (let ((_g1381213914_
             (lambda (_g1381313911_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1381313911_))))
        (let ((_g1381113921_ (lambda (_g1381313917_) ((lambda () '#!void)))))
          (let ((_g1381014071_
                 (lambda (_g1381313924_)
                   (if (gx#stx-pair? _g1381313924_)
                       (let ((_e1387113926_ (gx#stx-e _g1381313924_)))
                         (let ((_hd1387213929_ (##car _e1387113926_))
                               (_tl1387313931_ (##cdr _e1387113926_)))
                           (if (gx#stx-pair? _tl1387313931_)
                               (let ((_e1387413934_ (gx#stx-e _tl1387313931_)))
                                 (let ((_hd1387513937_ (##car _e1387413934_))
                                       (_tl1387613939_ (##cdr _e1387413934_)))
                                   (if (gx#stx-pair? _hd1387513937_)
                                       (let ((_e1387713942_
                                              (gx#stx-e _hd1387513937_)))
                                         (let ((_hd1387813945_
                                                (##car _e1387713942_))
                                               (_tl1387913947_
                                                (##cdr _e1387713942_)))
                                           (if (gx#identifier? _hd1387813945_)
                                               (if (gx#stx-eq?
                                                    '%#ref
                                                    _hd1387813945_)
                                                   (if (gx#stx-pair?
                                                        _tl1387913947_)
                                                       (let ((_e1388013950_
                                                              (gx#stx-e
                                                               _tl1387913947_)))
                                                         (let ((_hd1388113953_
                                                                (##car _e1388013950_))
                                                               (_tl1388213955_
                                                                (##cdr _e1388013950_)))
                                                           (if (gx#stx-null?
                                                                _tl1388213955_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl1387613939_)
                           (let ((_e1388313958_ (gx#stx-e _tl1387613939_)))
                             (let ((_hd1388413961_ (##car _e1388313958_))
                                   (_tl1388513963_ (##cdr _e1388313958_)))
                               (if (gx#stx-pair? _hd1388413961_)
                                   (let ((_e1388613966_
                                          (gx#stx-e _hd1388413961_)))
                                     (let ((_hd1388713969_
                                            (##car _e1388613966_))
                                           (_tl1388813971_
                                            (##cdr _e1388613966_)))
                                       (if (gx#identifier? _hd1388713969_)
                                           (if (gx#stx-eq?
                                                '%#ref
                                                _hd1388713969_)
                                               (if (gx#stx-pair?
                                                    _tl1388813971_)
                                                   (let ((_e1388913974_
                                                          (gx#stx-e
                                                           _tl1388813971_)))
                                                     (let ((_hd1389013977_
                                                            (##car _e1388913974_))
                                                           (_tl1389113979_
                                                            (##cdr _e1388913974_)))
                                                       (if (gx#stx-null?
                                                            _tl1389113979_)
                                                           (if (gx#stx-pair?
                                                                _tl1388513963_)
                                                               (let ((_e1389213982_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl1388513963_)))
                         (let ((_hd1389313985_ (##car _e1389213982_))
                               (_tl1389413987_ (##cdr _e1389213982_)))
                           (if (gx#stx-pair? _hd1389313985_)
                               (let ((_e1389513990_ (gx#stx-e _hd1389313985_)))
                                 (let ((_hd1389613993_ (##car _e1389513990_))
                                       (_tl1389713995_ (##cdr _e1389513990_)))
                                   (if (gx#identifier? _hd1389613993_)
                                       (if (gx#stx-eq? '%#quote _hd1389613993_)
                                           (if (gx#stx-pair? _tl1389713995_)
                                               (let ((_e1389813998_
                                                      (gx#stx-e
                                                       _tl1389713995_)))
                                                 (let ((_hd1389914001_
                                                        (##car _e1389813998_))
                                                       (_tl1390014003_
                                                        (##cdr _e1389813998_)))
                                                   (if (gx#stx-null?
                                                        _tl1390014003_)
                                                       (if (gx#stx-pair?
                                                            _tl1389413987_)
                                                           (let ((_e1390114006_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl1389413987_)))
                     (let ((_hd1390214009_ (##car _e1390114006_))
                           (_tl1390314011_ (##cdr _e1390114006_)))
                       (if (gx#stx-pair? _hd1390214009_)
                           (let ((_e1390414014_ (gx#stx-e _hd1390214009_)))
                             (let ((_hd1390514017_ (##car _e1390414014_))
                                   (_tl1390614019_ (##cdr _e1390414014_)))
                               (if (gx#identifier? _hd1390514017_)
                                   (if (gx#stx-eq? '%#ref _hd1390514017_)
                                       (if (gx#stx-pair? _tl1390614019_)
                                           (let ((_e1390714022_
                                                  (gx#stx-e _tl1390614019_)))
                                             (let ((_hd1390814025_
                                                    (##car _e1390714022_))
                                                   (_tl1390914027_
                                                    (##cdr _e1390714022_)))
                                               (if (gx#stx-null?
                                                    _tl1390914027_)
                                                   (if (gx#stx-null?
                                                        _tl1390314011_)
                                                       ((lambda (_L14030_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L14031_
                         _L14032_
                         _L14033_)
                  (if (eq? (gxc#generate-runtime-binding-id
                            (gx#datum->syntax__0 '#f '-bind-method))
                           'bind-method!)
                      (gxc#optimizer-declare-method!__opt-lambda19135
                       (gxc#generate-runtime-binding-id _L14032_)
                       (gx#stx-e _L14031_)
                       (gxc#generate-runtime-binding-id _L14030_)
                       '#f)
                      (_g1381113921_ _g1381313924_)))
                _hd1390814025_
                _hd1389914001_
                _hd1389013977_
                _hd1388113953_)
               (_g1381113921_ _g1381313924_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1381113921_
                                                    _g1381313924_))))
                                           (_g1381113921_ _g1381313924_))
                                       (_g1381113921_ _g1381313924_))
                                   (_g1381113921_ _g1381313924_))))
                           (_g1381113921_ _g1381313924_))))
                   (_g1381113921_ _g1381313924_))
               (_g1381113921_ _g1381313924_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1381113921_ _g1381313924_))
                                           (_g1381113921_ _g1381313924_))
                                       (_g1381113921_ _g1381313924_))))
                               (_g1381113921_ _g1381313924_))))
                       (_g1381113921_ _g1381313924_))
                   (_g1381113921_ _g1381313924_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1381113921_
                                                    _g1381313924_))
                                               (_g1381113921_ _g1381313924_))
                                           (_g1381113921_ _g1381313924_))))
                                   (_g1381113921_ _g1381313924_))))
                           (_g1381113921_ _g1381313924_))
                       (_g1381113921_ _g1381313924_))))
               (_g1381113921_ _g1381313924_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1381113921_
                                                    _g1381313924_))
                                               (_g1381113921_ _g1381313924_))))
                                       (_g1381113921_ _g1381313924_))))
                               (_g1381113921_ _g1381313924_))))
                       (_g1381113921_ _g1381313924_)))))
            (let ((_g1380914251_
                   (lambda (_g1381314074_)
                     (if (gx#stx-pair? _g1381314074_)
                         (let ((_e1381914076_ (gx#stx-e _g1381314074_)))
                           (let ((_hd1382014079_ (##car _e1381914076_))
                                 (_tl1382114081_ (##cdr _e1381914076_)))
                             (if (gx#stx-pair? _tl1382114081_)
                                 (let ((_e1382214084_
                                        (gx#stx-e _tl1382114081_)))
                                   (let ((_hd1382314087_ (##car _e1382214084_))
                                         (_tl1382414089_
                                          (##cdr _e1382214084_)))
                                     (if (gx#stx-pair? _hd1382314087_)
                                         (let ((_e1382514092_
                                                (gx#stx-e _hd1382314087_)))
                                           (let ((_hd1382614095_
                                                  (##car _e1382514092_))
                                                 (_tl1382714097_
                                                  (##cdr _e1382514092_)))
                                             (if (gx#identifier?
                                                  _hd1382614095_)
                                                 (if (gx#stx-eq?
                                                      '%#ref
                                                      _hd1382614095_)
                                                     (if (gx#stx-pair?
                                                          _tl1382714097_)
                                                         (let ((_e1382814100_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1382714097_)))
                   (let ((_hd1382914103_ (##car _e1382814100_))
                         (_tl1383014105_ (##cdr _e1382814100_)))
                     (if (gx#stx-null? _tl1383014105_)
                         (if (gx#stx-pair? _tl1382414089_)
                             (let ((_e1383114108_ (gx#stx-e _tl1382414089_)))
                               (let ((_hd1383214111_ (##car _e1383114108_))
                                     (_tl1383314113_ (##cdr _e1383114108_)))
                                 (if (gx#stx-pair? _hd1383214111_)
                                     (let ((_e1383414116_
                                            (gx#stx-e _hd1383214111_)))
                                       (let ((_hd1383514119_
                                              (##car _e1383414116_))
                                             (_tl1383614121_
                                              (##cdr _e1383414116_)))
                                         (if (gx#identifier? _hd1383514119_)
                                             (if (gx#stx-eq?
                                                  '%#ref
                                                  _hd1383514119_)
                                                 (if (gx#stx-pair?
                                                      _tl1383614121_)
                                                     (let ((_e1383714124_
                                                            (gx#stx-e
                                                             _tl1383614121_)))
                                                       (let ((_hd1383814127_
                                                              (##car _e1383714124_))
                                                             (_tl1383914129_
                                                              (##cdr _e1383714124_)))
                                                         (if (gx#stx-null?
                                                              _tl1383914129_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1383314113_)
                         (let ((_e1384014132_ (gx#stx-e _tl1383314113_)))
                           (let ((_hd1384114135_ (##car _e1384014132_))
                                 (_tl1384214137_ (##cdr _e1384014132_)))
                             (if (gx#stx-pair? _hd1384114135_)
                                 (let ((_e1384314140_
                                        (gx#stx-e _hd1384114135_)))
                                   (let ((_hd1384414143_ (##car _e1384314140_))
                                         (_tl1384514145_
                                          (##cdr _e1384314140_)))
                                     (if (gx#identifier? _hd1384414143_)
                                         (if (gx#stx-eq?
                                              '%#quote
                                              _hd1384414143_)
                                             (if (gx#stx-pair? _tl1384514145_)
                                                 (let ((_e1384614148_
                                                        (gx#stx-e
                                                         _tl1384514145_)))
                                                   (let ((_hd1384714151_
                                                          (##car _e1384614148_))
                                                         (_tl1384814153_
                                                          (##cdr _e1384614148_)))
                                                     (if (gx#stx-null?
                                                          _tl1384814153_)
                                                         (if (gx#stx-pair?
                                                              _tl1384214137_)
                                                             (let ((_e1384914156_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl1384214137_)))
                       (let ((_hd1385014159_ (##car _e1384914156_))
                             (_tl1385114161_ (##cdr _e1384914156_)))
                         (if (gx#stx-pair? _hd1385014159_)
                             (let ((_e1385214164_ (gx#stx-e _hd1385014159_)))
                               (let ((_hd1385314167_ (##car _e1385214164_))
                                     (_tl1385414169_ (##cdr _e1385214164_)))
                                 (if (gx#identifier? _hd1385314167_)
                                     (if (gx#stx-eq? '%#ref _hd1385314167_)
                                         (if (gx#stx-pair? _tl1385414169_)
                                             (let ((_e1385514172_
                                                    (gx#stx-e _tl1385414169_)))
                                               (let ((_hd1385614175_
                                                      (##car _e1385514172_))
                                                     (_tl1385714177_
                                                      (##cdr _e1385514172_)))
                                                 (if (gx#stx-null?
                                                      _tl1385714177_)
                                                     (if (gx#stx-pair?
                                                          _tl1385114161_)
                                                         (let ((_e1385814180_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1385114161_)))
                   (let ((_hd1385914183_ (##car _e1385814180_))
                         (_tl1386014185_ (##cdr _e1385814180_)))
                     (if (gx#stx-pair? _hd1385914183_)
                         (let ((_e1386114188_ (gx#stx-e _hd1385914183_)))
                           (let ((_hd1386214191_ (##car _e1386114188_))
                                 (_tl1386314193_ (##cdr _e1386114188_)))
                             (if (gx#identifier? _hd1386214191_)
                                 (if (gx#stx-eq? '%#quote _hd1386214191_)
                                     (if (gx#stx-pair? _tl1386314193_)
                                         (let ((_e1386414196_
                                                (gx#stx-e _tl1386314193_)))
                                           (let ((_hd1386514199_
                                                  (##car _e1386414196_))
                                                 (_tl1386614201_
                                                  (##cdr _e1386414196_)))
                                             (if (gx#stx-null? _tl1386614201_)
                                                 (if (gx#stx-null?
                                                      _tl1386014185_)
                                                     ((lambda (_L14204_
                                                               _L14205_
                                                               _L14206_
                                                               _L14207_
                                                               _L14208_)
                                                        (if (eq? (gxc#generate-runtime-binding-id
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L14208_)
                         'bind-method!)
                    (gxc#optimizer-declare-method!__opt-lambda19135
                     (gxc#generate-runtime-binding-id _L14207_)
                     (gx#stx-e _L14206_)
                     (gxc#generate-runtime-binding-id _L14205_)
                     (gx#stx-e _L14204_))
                    (_g1381014071_ _g1381314074_)))
              _hd1386514199_
              _hd1385614175_
              _hd1384714151_
              _hd1383814127_
              _hd1382914103_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1381014071_
                                                      _g1381314074_))
                                                 (_g1381014071_
                                                  _g1381314074_))))
                                         (_g1381014071_ _g1381314074_))
                                     (_g1381014071_ _g1381314074_))
                                 (_g1381014071_ _g1381314074_))))
                         (_g1381014071_ _g1381314074_))))
                 (_g1381014071_ _g1381314074_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1381014071_
                                                      _g1381314074_))))
                                             (_g1381014071_ _g1381314074_))
                                         (_g1381014071_ _g1381314074_))
                                     (_g1381014071_ _g1381314074_))))
                             (_g1381014071_ _g1381314074_))))
                     (_g1381014071_ _g1381314074_))
                 (_g1381014071_ _g1381314074_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1381014071_ _g1381314074_))
                                             (_g1381014071_ _g1381314074_))
                                         (_g1381014071_ _g1381314074_))))
                                 (_g1381014071_ _g1381314074_))))
                         (_g1381014071_ _g1381314074_))
                     (_g1381014071_ _g1381314074_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1381014071_
                                                      _g1381314074_))
                                                 (_g1381014071_ _g1381314074_))
                                             (_g1381014071_ _g1381314074_))))
                                     (_g1381014071_ _g1381314074_))))
                             (_g1381014071_ _g1381314074_))
                         (_g1381014071_ _g1381314074_))))
                 (_g1381014071_ _g1381314074_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1381014071_
                                                      _g1381314074_))
                                                 (_g1381014071_
                                                  _g1381314074_))))
                                         (_g1381014071_ _g1381314074_))))
                                 (_g1381014071_ _g1381314074_))))
                         (_g1381014071_ _g1381314074_)))))
              (_g1380914251_ _stx13808_)))))))
  (define gxc#basic-expression-type-begin%
    (lambda (_stx13748_)
      (let ((_g1375113764_
             (lambda (_g1375213761_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1375213761_))))
        (let ((_g1375013771_ (lambda (_g1375213767_) ((lambda () '#f)))))
          (let ((_g1374913805_
                 (lambda (_g1375213774_)
                   (if (gx#stx-pair? _g1375213774_)
                       (let ((_e1375413776_ (gx#stx-e _g1375213774_)))
                         (let ((_hd1375513779_ (##car _e1375413776_))
                               (_tl1375613781_ (##cdr _e1375413776_)))
                           (if (gx#stx-pair? _tl1375613781_)
                               (let ((_e1375713784_ (gx#stx-e _tl1375613781_)))
                                 (let ((_hd1375813787_ (##car _e1375713784_))
                                       (_tl1375913789_ (##cdr _e1375713784_)))
                                   (if (gx#stx-null? _tl1375913789_)
                                       ((lambda (_L13792_)
                                          (gxc#compile-e _L13792_))
                                        _hd1375813787_)
                                       (_g1375013771_ _g1375213774_))))
                               (_g1375013771_ _g1375213774_))))
                       (_g1375013771_ _g1375213774_)))))
            (_g1374913805_ _stx13748_))))))
  (define gxc#basic-expression-type-lambda%
    (lambda (_stx13173_)
      (let ((_g1317813299_
             (lambda (_g1317913296_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1317913296_))))
        (let ((_g1317713306_ (lambda (_g1317913302_) ((lambda () '#f)))))
          (let ((_g1317613330_
                 (lambda (_g1317913309_)
                   (if (gx#stx-pair? _g1317913309_)
                       (let ((_e1329213311_ (gx#stx-e _g1317913309_)))
                         (let ((_hd1329313314_ (##car _e1329213311_))
                               (_tl1329413316_ (##cdr _e1329213311_)))
                           ((lambda (_L13319_)
                              (if (gxc#dispatch-lambda-form? _L13319_)
                                  (let ((__obj19387
                                         (make-object gxc#!lambda::t '5)))
                                    (begin
                                      (gxc#!lambda:::init!__0
                                       __obj19387
                                       'lambda
                                       (gxc#lambda-form-arity _L13319_)
                                       (gxc#dispatch-lambda-form-delegate
                                        _L13319_))
                                      __obj19387))
                                  (_g1317713306_ _g1317913309_)))
                            _tl1329413316_)))
                       (_g1317713306_ _g1317913309_)))))
            (let ((_g1317513560_
                   (lambda (_g1317913333_)
                     (if (gx#stx-pair? _g1317913333_)
                         (let ((_e1323713335_ (gx#stx-e _g1317913333_)))
                           (let ((_hd1323813338_ (##car _e1323713335_))
                                 (_tl1323913340_ (##cdr _e1323713335_)))
                             (if (gx#stx-pair? _tl1323913340_)
                                 (let ((_e1324013343_
                                        (gx#stx-e _tl1323913340_)))
                                   (let ((_hd1324113346_ (##car _e1324013343_))
                                         (_tl1324213348_
                                          (##cdr _e1324013343_)))
                                     (if (gx#stx-pair/null? _hd1324113346_)
                                         (if (fx>= (gx#stx-length
                                                    _hd1324113346_)
                                                   '0)
                                             (let ((_g19449_
                                                    (gx#syntax-split-splice
                                                     _hd1324113346_
                                                     '0)))
                                               (begin
                                                 (let ((_g19450_
                                                        (values-count
                                                         _g19449_)))
                                                   (if (not (fx= _g19450_ 2))
                                                       (error "Context expects 2 values"
                                                              _g19450_)))
                                                 (let ((_target1324313351_
                                                        (values-ref
                                                         _g19449_
                                                         0))
                                                       (_tl1324513353_
                                                        (values-ref
                                                         _g19449_
                                                         1)))
                                                   (if (gx#stx-null?
                                                        _tl1324513353_)
                                                       (letrec ((_loop1324613356_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd1324413359_ _arg1325013361_)
                           (if (gx#stx-pair? _hd1324413359_)
                               (let ((_e1324713364_ (gx#stx-e _hd1324413359_)))
                                 (let ((_lp-hd1324813367_
                                        (##car _e1324713364_))
                                       (_lp-tl1324913369_
                                        (##cdr _e1324713364_)))
                                   (_loop1324613356_
                                    _lp-tl1324913369_
                                    (cons _lp-hd1324813367_ _arg1325013361_))))
                               (let ((_arg1325113372_
                                      (reverse _arg1325013361_)))
                                 (if (gx#stx-pair? _tl1324213348_)
                                     (let ((_e1325213375_
                                            (gx#stx-e _tl1324213348_)))
                                       (let ((_hd1325313378_
                                              (##car _e1325213375_))
                                             (_tl1325413380_
                                              (##cdr _e1325213375_)))
                                         (if (gx#stx-pair? _hd1325313378_)
                                             (let ((_e1325513383_
                                                    (gx#stx-e _hd1325313378_)))
                                               (let ((_hd1325613386_
                                                      (##car _e1325513383_))
                                                     (_tl1325713388_
                                                      (##cdr _e1325513383_)))
                                                 (if (gx#identifier?
                                                      _hd1325613386_)
                                                     (if (gx#stx-eq?
                                                          '%#call
                                                          _hd1325613386_)
                                                         (if (gx#stx-pair?
                                                              _tl1325713388_)
                                                             (let ((_e1325813391_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl1325713388_)))
                       (let ((_hd1325913394_ (##car _e1325813391_))
                             (_tl1326013396_ (##cdr _e1325813391_)))
                         (if (gx#stx-pair? _hd1325913394_)
                             (let ((_e1326113399_ (gx#stx-e _hd1325913394_)))
                               (let ((_hd1326213402_ (##car _e1326113399_))
                                     (_tl1326313404_ (##cdr _e1326113399_)))
                                 (if (gx#identifier? _hd1326213402_)
                                     (if (gx#stx-eq? '%#ref _hd1326213402_)
                                         (if (gx#stx-pair? _tl1326313404_)
                                             (let ((_e1326413407_
                                                    (gx#stx-e _tl1326313404_)))
                                               (let ((_hd1326513410_
                                                      (##car _e1326413407_))
                                                     (_tl1326613412_
                                                      (##cdr _e1326413407_)))
                                                 (if (gx#stx-null?
                                                      _tl1326613412_)
                                                     (if (gx#stx-pair?
                                                          _tl1326013396_)
                                                         (let ((_e1326713415_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1326013396_)))
                   (let ((_hd1326813418_ (##car _e1326713415_))
                         (_tl1326913420_ (##cdr _e1326713415_)))
                     (if (gx#stx-pair? _hd1326813418_)
                         (let ((_e1327013423_ (gx#stx-e _hd1326813418_)))
                           (let ((_hd1327113426_ (##car _e1327013423_))
                                 (_tl1327213428_ (##cdr _e1327013423_)))
                             (if (gx#identifier? _hd1327113426_)
                                 (if (gx#stx-eq? '%#ref _hd1327113426_)
                                     (if (gx#stx-pair? _tl1327213428_)
                                         (let ((_e1327313431_
                                                (gx#stx-e _tl1327213428_)))
                                           (let ((_hd1327413434_
                                                  (##car _e1327313431_))
                                                 (_tl1327513436_
                                                  (##cdr _e1327313431_)))
                                             (if (gx#stx-null? _tl1327513436_)
                                                 (if (gx#stx-pair/null?
                                                      _tl1326913420_)
                                                     (if (fx>= (gx#stx-length
                                                                _tl1326913420_)
                                                               '0)
                                                         (let ((_g19451_
                                                                (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1326913420_
                         '0)))
                   (begin
                     (let ((_g19452_ (values-count _g19451_)))
                       (if (not (fx= _g19452_ 2))
                           (error "Context expects 2 values" _g19452_)))
                     (let ((_target1327613439_ (values-ref _g19451_ 0))
                           (_tl1327813441_ (values-ref _g19451_ 1)))
                       (if (gx#stx-null? _tl1327813441_)
                           (letrec ((_loop1327913444_
                                     (lambda (_hd1327713447_ _xarg1328313449_)
                                       (if (gx#stx-pair? _hd1327713447_)
                                           (let ((_e1328013452_
                                                  (gx#stx-e _hd1327713447_)))
                                             (let ((_lp-hd1328113455_
                                                    (##car _e1328013452_))
                                                   (_lp-tl1328213457_
                                                    (##cdr _e1328013452_)))
                                               (if (gx#stx-pair?
                                                    _lp-hd1328113455_)
                                                   (let ((_e1328513460_
                                                          (gx#stx-e
                                                           _lp-hd1328113455_)))
                                                     (let ((_hd1328613463_
                                                            (##car _e1328513460_))
                                                           (_tl1328713465_
                                                            (##cdr _e1328513460_)))
                                                       (if (gx#identifier?
                                                            _hd1328613463_)
                                                           (if (gx#stx-eq?
                                                                '%#ref
                                                                _hd1328613463_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl1328713465_)
                           (let ((_e1328813468_ (gx#stx-e _tl1328713465_)))
                             (let ((_hd1328913471_ (##car _e1328813468_))
                                   (_tl1329013473_ (##cdr _e1328813468_)))
                               (if (gx#stx-null? _tl1329013473_)
                                   (_loop1327913444_
                                    _lp-tl1328213457_
                                    (cons _hd1328913471_ _xarg1328313449_))
                                   (_g1317613330_ _g1317913333_))))
                           (_g1317613330_ _g1317913333_))
                       (_g1317613330_ _g1317913333_))
                   (_g1317613330_ _g1317913333_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1317613330_
                                                    _g1317913333_))))
                                           (let ((_xarg1328413476_
                                                  (reverse _xarg1328313449_)))
                                             (if (gx#stx-null? _tl1325413380_)
                                                 ((lambda (_L13479_
                                                           _L13480_
                                                           _L13481_
                                                           _L13482_)
                                                    (if (if (gx#identifier-list?
                                                             (begin
                                                               '#!void
                                                               (foldr1 (lambda (_g1351913522_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                        _g1352013524_)
                                 (cons _g1351913522_ _g1352013524_))
                               '()
                               _L13482_)))
                    (if (eq? (gxc#generate-runtime-binding-id _L13481_)
                             'make-struct-instance)
                        (if (fx= (length (begin
                                           '#!void
                                           (foldr1 (lambda (_g1352613529_
                                                            _g1352713531_)
                                                     (cons _g1352613529_
                                                           _g1352713531_))
                                                   '()
                                                   _L13482_)))
                                 (length (begin
                                           '#!void
                                           (foldr1 (lambda (_g1353313536_
                                                            _g1353413538_)
                                                     (cons _g1353313536_
                                                           _g1353413538_))
                                                   '()
                                                   _L13479_))))
                            (andmap gx#free-identifier=?
                                    (begin
                                      '#!void
                                      (foldr1 (lambda (_g1354013543_
                                                       _g1354113545_)
                                                (cons _g1354013543_
                                                      _g1354113545_))
                                              '()
                                              _L13482_))
                                    (begin
                                      '#!void
                                      (foldr1 (lambda (_g1354713550_
                                                       _g1354813552_)
                                                (cons _g1354713550_
                                                      _g1354813552_))
                                              '()
                                              _L13479_)))
                            '#f)
                        '#f)
                    '#f)
                (let ((_type-t13555_
                       (gxc#generate-runtime-binding-id _L13480_)))
                  (let ((_type13557_
                         (gxc#optimizer-resolve-type _type-t13555_)))
                    (let ()
                      (if (##structure-instance-of?
                           _type13557_
                           'gxc#!struct-type::t)
                          (##structure gxc#!struct-cons::t _type-t13555_)
                          '#f))))
                (_g1317613330_ _g1317913333_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _xarg1328413476_
                                                  _hd1327413434_
                                                  _hd1326513410_
                                                  _arg1325113372_)
                                                 (_g1317613330_
                                                  _g1317913333_)))))))
                             (_loop1327913444_ _target1327613439_ '()))
                           (_g1317613330_ _g1317913333_)))))
                 (_g1317613330_ _g1317913333_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1317613330_
                                                      _g1317913333_))
                                                 (_g1317613330_
                                                  _g1317913333_))))
                                         (_g1317613330_ _g1317913333_))
                                     (_g1317613330_ _g1317913333_))
                                 (_g1317613330_ _g1317913333_))))
                         (_g1317613330_ _g1317913333_))))
                 (_g1317613330_ _g1317913333_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1317613330_
                                                      _g1317913333_))))
                                             (_g1317613330_ _g1317913333_))
                                         (_g1317613330_ _g1317913333_))
                                     (_g1317613330_ _g1317913333_))))
                             (_g1317613330_ _g1317913333_))))
                     (_g1317613330_ _g1317913333_))
                 (_g1317613330_ _g1317913333_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1317613330_
                                                      _g1317913333_))))
                                             (_g1317613330_ _g1317913333_))))
                                     (_g1317613330_ _g1317913333_)))))))
                 (_loop1324613356_ _target1324313351_ '()))
               (_g1317613330_ _g1317913333_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g1317613330_ _g1317913333_))
                                         (_g1317613330_ _g1317913333_))))
                                 (_g1317613330_ _g1317913333_))))
                         (_g1317613330_ _g1317913333_)))))
              (let ((_g1317413745_
                     (lambda (_g1317913563_)
                       (if (gx#stx-pair? _g1317913563_)
                           (let ((_e1318513565_ (gx#stx-e _g1317913563_)))
                             (let ((_hd1318613568_ (##car _e1318513565_))
                                   (_tl1318713570_ (##cdr _e1318513565_)))
                               (if (gx#stx-pair? _tl1318713570_)
                                   (let ((_e1318813573_
                                          (gx#stx-e _tl1318713570_)))
                                     (let ((_hd1318913576_
                                            (##car _e1318813573_))
                                           (_tl1319013578_
                                            (##cdr _e1318813573_)))
                                       (if (gx#stx-pair? _tl1319013578_)
                                           (let ((_e1319113581_
                                                  (gx#stx-e _tl1319013578_)))
                                             (let ((_hd1319213584_
                                                    (##car _e1319113581_))
                                                   (_tl1319313586_
                                                    (##cdr _e1319113581_)))
                                               (if (gx#stx-pair?
                                                    _hd1319213584_)
                                                   (let ((_e1319413589_
                                                          (gx#stx-e
                                                           _hd1319213584_)))
                                                     (let ((_hd1319513592_
                                                            (##car _e1319413589_))
                                                           (_tl1319613594_
                                                            (##cdr _e1319413589_)))
                                                       (if (gx#identifier?
                                                            _hd1319513592_)
                                                           (if (gx#stx-eq?
                                                                '%#call
                                                                _hd1319513592_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl1319613594_)
                           (let ((_e1319713597_ (gx#stx-e _tl1319613594_)))
                             (let ((_hd1319813600_ (##car _e1319713597_))
                                   (_tl1319913602_ (##cdr _e1319713597_)))
                               (if (gx#stx-pair? _hd1319813600_)
                                   (let ((_e1320013605_
                                          (gx#stx-e _hd1319813600_)))
                                     (let ((_hd1320113608_
                                            (##car _e1320013605_))
                                           (_tl1320213610_
                                            (##cdr _e1320013605_)))
                                       (if (gx#identifier? _hd1320113608_)
                                           (if (gx#stx-eq?
                                                '%#ref
                                                _hd1320113608_)
                                               (if (gx#stx-pair?
                                                    _tl1320213610_)
                                                   (let ((_e1320313613_
                                                          (gx#stx-e
                                                           _tl1320213610_)))
                                                     (let ((_hd1320413616_
                                                            (##car _e1320313613_))
                                                           (_tl1320513618_
                                                            (##cdr _e1320313613_)))
                                                       (if (gx#stx-null?
                                                            _tl1320513618_)
                                                           (if (gx#stx-pair?
                                                                _tl1319913602_)
                                                               (let ((_e1320613621_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl1319913602_)))
                         (let ((_hd1320713624_ (##car _e1320613621_))
                               (_tl1320813626_ (##cdr _e1320613621_)))
                           (if (gx#stx-pair? _hd1320713624_)
                               (let ((_e1320913629_ (gx#stx-e _hd1320713624_)))
                                 (let ((_hd1321013632_ (##car _e1320913629_))
                                       (_tl1321113634_ (##cdr _e1320913629_)))
                                   (if (gx#identifier? _hd1321013632_)
                                       (if (gx#stx-eq? '%#ref _hd1321013632_)
                                           (if (gx#stx-pair? _tl1321113634_)
                                               (let ((_e1321213637_
                                                      (gx#stx-e
                                                       _tl1321113634_)))
                                                 (let ((_hd1321313640_
                                                        (##car _e1321213637_))
                                                       (_tl1321413642_
                                                        (##cdr _e1321213637_)))
                                                   (if (gx#stx-null?
                                                        _tl1321413642_)
                                                       (if (gx#stx-pair?
                                                            _tl1320813626_)
                                                           (let ((_e1321513645_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl1320813626_)))
                     (let ((_hd1321613648_ (##car _e1321513645_))
                           (_tl1321713650_ (##cdr _e1321513645_)))
                       (if (gx#stx-pair? _hd1321613648_)
                           (let ((_e1321813653_ (gx#stx-e _hd1321613648_)))
                             (let ((_hd1321913656_ (##car _e1321813653_))
                                   (_tl1322013658_ (##cdr _e1321813653_)))
                               (if (gx#identifier? _hd1321913656_)
                                   (if (gx#stx-eq? '%#ref _hd1321913656_)
                                       (if (gx#stx-pair? _tl1322013658_)
                                           (let ((_e1322113661_
                                                  (gx#stx-e _tl1322013658_)))
                                             (let ((_hd1322213664_
                                                    (##car _e1322113661_))
                                                   (_tl1322313666_
                                                    (##cdr _e1322113661_)))
                                               (if (gx#stx-null?
                                                    _tl1322313666_)
                                                   (if (gx#stx-pair?
                                                        _tl1321713650_)
                                                       (let ((_e1322413669_
                                                              (gx#stx-e
                                                               _tl1321713650_)))
                                                         (let ((_hd1322513672_
                                                                (##car _e1322413669_))
                                                               (_tl1322613674_
                                                                (##cdr _e1322413669_)))
                                                           (if (gx#stx-pair?
                                                                _hd1322513672_)
                                                               (let ((_e1322713677_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd1322513672_)))
                         (let ((_hd1322813680_ (##car _e1322713677_))
                               (_tl1322913682_ (##cdr _e1322713677_)))
                           (if (gx#identifier? _hd1322813680_)
                               (if (gx#stx-eq? '%#ref _hd1322813680_)
                                   (if (gx#stx-pair? _tl1322913682_)
                                       (let ((_e1323013685_
                                              (gx#stx-e _tl1322913682_)))
                                         (let ((_hd1323113688_
                                                (##car _e1323013685_))
                                               (_tl1323213690_
                                                (##cdr _e1323013685_)))
                                           (if (gx#stx-null? _tl1323213690_)
                                               (if (gx#stx-null?
                                                    _tl1322613674_)
                                                   (if (gx#stx-null?
                                                        _tl1319313586_)
                                                       ((lambda (_L13693_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L13694_
                         _L13695_
                         _L13696_
                         _L13697_)
                  (if (if (gx#identifier? _L13697_)
                          (if (eq? (gxc#generate-runtime-binding-id _L13696_)
                                   'apply)
                              (if (eq? (gxc#generate-runtime-binding-id
                                        _L13695_)
                                       'make-struct-instance)
                                  (gx#free-identifier=? _L13697_ _L13693_)
                                  '#f)
                              '#f)
                          '#f)
                      (let ((_type-t13740_
                             (gxc#generate-runtime-binding-id _L13694_)))
                        (let ((_type13742_
                               (gxc#optimizer-resolve-type _type-t13740_)))
                          (let ()
                            (if (##structure-instance-of?
                                 _type13742_
                                 'gxc#!struct-type::t)
                                (##structure gxc#!struct-cons::t _type-t13740_)
                                '#f))))
                      (_g1317513560_ _g1317913563_)))
                _hd1323113688_
                _hd1322213664_
                _hd1321313640_
                _hd1320413616_
                _hd1318913576_)
               (_g1317513560_ _g1317913563_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1317513560_
                                                    _g1317913563_))
                                               (_g1317513560_ _g1317913563_))))
                                       (_g1317513560_ _g1317913563_))
                                   (_g1317513560_ _g1317913563_))
                               (_g1317513560_ _g1317913563_))))
                       (_g1317513560_ _g1317913563_))))
               (_g1317513560_ _g1317913563_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1317513560_
                                                    _g1317913563_))))
                                           (_g1317513560_ _g1317913563_))
                                       (_g1317513560_ _g1317913563_))
                                   (_g1317513560_ _g1317913563_))))
                           (_g1317513560_ _g1317913563_))))
                   (_g1317513560_ _g1317913563_))
               (_g1317513560_ _g1317913563_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1317513560_ _g1317913563_))
                                           (_g1317513560_ _g1317913563_))
                                       (_g1317513560_ _g1317913563_))))
                               (_g1317513560_ _g1317913563_))))
                       (_g1317513560_ _g1317913563_))
                   (_g1317513560_ _g1317913563_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1317513560_
                                                    _g1317913563_))
                                               (_g1317513560_ _g1317913563_))
                                           (_g1317513560_ _g1317913563_))))
                                   (_g1317513560_ _g1317913563_))))
                           (_g1317513560_ _g1317913563_))
                       (_g1317513560_ _g1317913563_))
                   (_g1317513560_ _g1317913563_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1317513560_
                                                    _g1317913563_))))
                                           (_g1317513560_ _g1317913563_))))
                                   (_g1317513560_ _g1317913563_))))
                           (_g1317513560_ _g1317913563_)))))
                (_g1317413745_ _stx13173_))))))))
  (define gxc#basic-expression-type-case-lambda%
    (lambda (_stx13119_)
      (let ((_clause-e13121_
             (lambda (_form13171_)
               (let ((__obj19388 (make-object gxc#!lambda::t '5)))
                 (begin
                   (gxc#!lambda:::init!__0
                    __obj19388
                    'case-lambda-clause
                    (gxc#lambda-form-arity _form13171_)
                    (gxc#dispatch-lambda-form-delegate _form13171_))
                   __obj19388)))))
        (let ((_g1312413134_
               (lambda (_g1312513131_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1312513131_))))
          (let ((_g1312313141_ (lambda (_g1312513137_) ((lambda () '#f)))))
            (let ((_g1312213168_
                   (lambda (_g1312513144_)
                     (if (gx#stx-pair? _g1312513144_)
                         (let ((_e1312713146_ (gx#stx-e _g1312513144_)))
                           (let ((_hd1312813149_ (##car _e1312713146_))
                                 (_tl1312913151_ (##cdr _e1312713146_)))
                             ((lambda (_L13154_)
                                (if (andmap1 gxc#dispatch-lambda-form?
                                             _L13154_)
                                    (let ((_clauses13166_
                                           (map _clause-e13121_ _L13154_)))
                                      (##structure
                                       gxc#!case-lambda::t
                                       'case-lambda
                                       _clauses13166_))
                                    (_g1312313141_ _g1312513144_)))
                              _tl1312913151_)))
                         (_g1312313141_ _g1312513144_)))))
              (_g1312213168_ _stx13119_)))))))
  (define gxc#basic-expression-type-builtin (make-hash-table-eq))
  (define gxc#basic-expression-type-call%
    (lambda (_stx13024_)
      (let ((_g1302713047_
             (lambda (_g1302813044_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1302813044_))))
        (let ((_g1302613054_ (lambda (_g1302813050_) ((lambda () '#f)))))
          (let ((_g1302513116_
                 (lambda (_g1302813057_)
                   (if (gx#stx-pair? _g1302813057_)
                       (let ((_e1303113059_ (gx#stx-e _g1302813057_)))
                         (let ((_hd1303213062_ (##car _e1303113059_))
                               (_tl1303313064_ (##cdr _e1303113059_)))
                           (if (gx#stx-pair? _tl1303313064_)
                               (let ((_e1303413067_ (gx#stx-e _tl1303313064_)))
                                 (let ((_hd1303513070_ (##car _e1303413067_))
                                       (_tl1303613072_ (##cdr _e1303413067_)))
                                   (if (gx#stx-pair? _hd1303513070_)
                                       (let ((_e1303713075_
                                              (gx#stx-e _hd1303513070_)))
                                         (let ((_hd1303813078_
                                                (##car _e1303713075_))
                                               (_tl1303913080_
                                                (##cdr _e1303713075_)))
                                           (if (gx#identifier? _hd1303813078_)
                                               (if (gx#stx-eq?
                                                    '%#ref
                                                    _hd1303813078_)
                                                   (if (gx#stx-pair?
                                                        _tl1303913080_)
                                                       (let ((_e1304013083_
                                                              (gx#stx-e
                                                               _tl1303913080_)))
                                                         (let ((_hd1304113086_
                                                                (##car _e1304013083_))
                                                               (_tl1304213088_
                                                                (##cdr _e1304013083_)))
                                                           (if (gx#stx-null?
                                                                _tl1304213088_)
                                                               ((lambda (_L13091_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _L13092_)
                          (let ((_type-e1310913111_
                                 (table-ref
                                  gxc#basic-expression-type-builtin
                                  (gxc#generate-runtime-binding-id _L13092_)
                                  '#f)))
                            (if _type-e1310913111_
                                (let ((_type-e13114_ _type-e1310913111_))
                                  (_type-e13114_ _stx13024_ _L13091_))
                                '#f)))
                        _tl1303613072_
                        _hd1304113086_)
                       (_g1302613054_ _g1302813057_))))
               (_g1302613054_ _g1302813057_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1302613054_
                                                    _g1302813057_))
                                               (_g1302613054_ _g1302813057_))))
                                       (_g1302613054_ _g1302813057_))))
                               (_g1302613054_ _g1302813057_))))
                       (_g1302613054_ _g1302813057_)))))
            (_g1302513116_ _stx13024_))))))
  (define gxc#basic-expression-type-make-struct-type
    (lambda (_stx12509_ _args12510_)
      (let ((_g1251412627_
             (lambda (_g1251512624_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1251512624_))))
        (let ((_g1251312634_
               (lambda (_g1251512630_)
                 ((lambda ()
                    (begin
                      (gxc#verbose
                       '"make-struct-type: can't infer type "
                       (gx#syntax->datum _stx12509_))
                      '#f))))))
          (let ((_g1251212841_
                 (lambda (_g1251512637_)
                   (if (gx#stx-pair? _g1251512637_)
                       (let ((_e1257512639_ (gx#stx-e _g1251512637_)))
                         (let ((_hd1257612642_ (##car _e1257512639_))
                               (_tl1257712644_ (##cdr _e1257512639_)))
                           (if (gx#stx-pair? _hd1257612642_)
                               (let ((_e1257812647_ (gx#stx-e _hd1257612642_)))
                                 (let ((_hd1257912650_ (##car _e1257812647_))
                                       (_tl1258012652_ (##cdr _e1257812647_)))
                                   (if (gx#identifier? _hd1257912650_)
                                       (if (gx#stx-eq? '%#quote _hd1257912650_)
                                           (if (gx#stx-pair? _tl1258012652_)
                                               (let ((_e1258112655_
                                                      (gx#stx-e
                                                       _tl1258012652_)))
                                                 (let ((_hd1258212658_
                                                        (##car _e1258112655_))
                                                       (_tl1258312660_
                                                        (##cdr _e1258112655_)))
                                                   (if (gx#stx-null?
                                                        _tl1258312660_)
                                                       (if (gx#stx-pair?
                                                            _tl1257712644_)
                                                           (let ((_e1258412663_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl1257712644_)))
                     (let ((_hd1258512666_ (##car _e1258412663_))
                           (_tl1258612668_ (##cdr _e1258412663_)))
                       (if (gx#stx-pair? _hd1258512666_)
                           (let ((_e1258712671_ (gx#stx-e _hd1258512666_)))
                             (let ((_hd1258812674_ (##car _e1258712671_))
                                   (_tl1258912676_ (##cdr _e1258712671_)))
                               (if (gx#identifier? _hd1258812674_)
                                   (if (gx#stx-eq? '%#ref _hd1258812674_)
                                       (if (gx#stx-pair? _tl1258912676_)
                                           (let ((_e1259012679_
                                                  (gx#stx-e _tl1258912676_)))
                                             (let ((_hd1259112682_
                                                    (##car _e1259012679_))
                                                   (_tl1259212684_
                                                    (##cdr _e1259012679_)))
                                               (if (gx#stx-null?
                                                    _tl1259212684_)
                                                   (if (gx#stx-pair?
                                                        _tl1258612668_)
                                                       (let ((_e1259312687_
                                                              (gx#stx-e
                                                               _tl1258612668_)))
                                                         (let ((_hd1259412690_
                                                                (##car _e1259312687_))
                                                               (_tl1259512692_
                                                                (##cdr _e1259312687_)))
                                                           (if (gx#stx-pair?
                                                                _hd1259412690_)
                                                               (let ((_e1259612695_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd1259412690_)))
                         (let ((_hd1259712698_ (##car _e1259612695_))
                               (_tl1259812700_ (##cdr _e1259612695_)))
                           (if (gx#identifier? _hd1259712698_)
                               (if (gx#stx-eq? '%#quote _hd1259712698_)
                                   (if (gx#stx-pair? _tl1259812700_)
                                       (let ((_e1259912703_
                                              (gx#stx-e _tl1259812700_)))
                                         (let ((_hd1260012706_
                                                (##car _e1259912703_))
                                               (_tl1260112708_
                                                (##cdr _e1259912703_)))
                                           (if (gx#stx-null? _tl1260112708_)
                                               (if (gx#stx-pair?
                                                    _tl1259512692_)
                                                   (let ((_e1260212711_
                                                          (gx#stx-e
                                                           _tl1259512692_)))
                                                     (let ((_hd1260312714_
                                                            (##car _e1260212711_))
                                                           (_tl1260412716_
                                                            (##cdr _e1260212711_)))
                                                       (if (gx#stx-pair?
                                                            _tl1260412716_)
                                                           (let ((_e1260512719_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl1260412716_)))
                     (let ((_hd1260612722_ (##car _e1260512719_))
                           (_tl1260712724_ (##cdr _e1260512719_)))
                       (if (gx#stx-pair? _hd1260612722_)
                           (let ((_e1260812727_ (gx#stx-e _hd1260612722_)))
                             (let ((_hd1260912730_ (##car _e1260812727_))
                                   (_tl1261012732_ (##cdr _e1260812727_)))
                               (if (gx#identifier? _hd1260912730_)
                                   (if (gx#stx-eq? '%#quote _hd1260912730_)
                                       (if (gx#stx-pair? _tl1261012732_)
                                           (let ((_e1261112735_
                                                  (gx#stx-e _tl1261012732_)))
                                             (let ((_hd1261212738_
                                                    (##car _e1261112735_))
                                                   (_tl1261312740_
                                                    (##cdr _e1261112735_)))
                                               (if (gx#stx-null?
                                                    _tl1261312740_)
                                                   (if (gx#stx-pair?
                                                        _tl1260712724_)
                                                       (let ((_e1261412743_
                                                              (gx#stx-e
                                                               _tl1260712724_)))
                                                         (let ((_hd1261512746_
                                                                (##car _e1261412743_))
                                                               (_tl1261612748_
                                                                (##cdr _e1261412743_)))
                                                           (if (gx#stx-pair?
                                                                _hd1261512746_)
                                                               (let ((_e1261712751_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd1261512746_)))
                         (let ((_hd1261812754_ (##car _e1261712751_))
                               (_tl1261912756_ (##cdr _e1261712751_)))
                           (if (gx#identifier? _hd1261812754_)
                               (if (gx#stx-eq? '%#quote _hd1261812754_)
                                   (if (gx#stx-pair? _tl1261912756_)
                                       (let ((_e1262012759_
                                              (gx#stx-e _tl1261912756_)))
                                         (let ((_hd1262112762_
                                                (##car _e1262012759_))
                                               (_tl1262212764_
                                                (##cdr _e1262012759_)))
                                           (if (gx#stx-null? _tl1262212764_)
                                               (if (gx#stx-null?
                                                    _tl1261612748_)
                                                   ((lambda (_L12767_
                                                             _L12768_
                                                             _L12769_
                                                             _L12770_
                                                             _L12771_
                                                             _L12772_)
                                                      (let ((_super-t12818_
                                                             (if (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L12771_)
                         (gxc#generate-runtime-binding-id _L12771_)
                         '#f)))
                (let ((_super-type12820_
                       (if _super-t12818_
                           (gxc#optimizer-resolve-type _super-t12818_)
                           '#f)))
                  (let ()
                    (begin
                      (if (if _super-type12820_
                              (not (##structure-instance-of?
                                    _super-type12820_
                                    'gxc#!struct-type::t))
                              '#f)
                          (gxc#raise-compile-error
                           '"Illegal struct-type construction; invalid super type"
                           _stx12509_
                           _L12771_)
                          '#!void)
                      (let ((_fields12836_ (gx#stx-e _L12770_))
                            (_xfields12837_
                             (if _super-type12820_
                                 (let ((_super-fields1282212825_
                                        (##structure-ref
                                         _super-type12820_
                                         '3
                                         gxc#!struct-type::t
                                         '#f))
                                       (_super-xfields1282312827_
                                        (##structure-ref
                                         _super-type12820_
                                         '4
                                         gxc#!struct-type::t
                                         '#f)))
                                   (if _super-fields1282212825_
                                       (if _super-xfields1282312827_
                                           (let ((_super-fields12830_
                                                  _super-fields1282212825_)
                                                 (_super-xfields12831_
                                                  _super-xfields1282312827_))
                                             (fx+ _super-fields12830_
                                                  _super-xfields12831_))
                                           '#f)
                                       '#f))
                                 '#f))
                            (_plist12838_ (gx#stx-e _L12768_))
                            (_ctor12839_
                             (let ((_$e12833_ (gx#stx-e _L12767_)))
                               (if _$e12833_
                                   (values _$e12833_)
                                   (if _super-type12820_
                                       (##structure-ref
                                        _super-type12820_
                                        '5
                                        gxc#!struct-type::t
                                        '#f)
                                       (if _super-t12818_ '#!void '#f))))))
                        (let ((__obj19389
                               (make-object gxc#!struct-type::t '7)))
                          (begin
                            (gxc#!struct-type:::init!
                             __obj19389
                             (gx#stx-e _L12772_)
                             _super-t12818_
                             _fields12836_
                             _xfields12837_
                             _ctor12839_
                             _plist12838_)
                            __obj19389))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd1262112762_
                                                    _hd1261212738_
                                                    _hd1260312714_
                                                    _hd1260012706_
                                                    _hd1259112682_
                                                    _hd1258212658_)
                                                   (_g1251312634_
                                                    _g1251512637_))
                                               (_g1251312634_ _g1251512637_))))
                                       (_g1251312634_ _g1251512637_))
                                   (_g1251312634_ _g1251512637_))
                               (_g1251312634_ _g1251512637_))))
                       (_g1251312634_ _g1251512637_))))
               (_g1251312634_ _g1251512637_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1251312634_
                                                    _g1251512637_))))
                                           (_g1251312634_ _g1251512637_))
                                       (_g1251312634_ _g1251512637_))
                                   (_g1251312634_ _g1251512637_))))
                           (_g1251312634_ _g1251512637_))))
                   (_g1251312634_ _g1251512637_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1251312634_
                                                    _g1251512637_))
                                               (_g1251312634_ _g1251512637_))))
                                       (_g1251312634_ _g1251512637_))
                                   (_g1251312634_ _g1251512637_))
                               (_g1251312634_ _g1251512637_))))
                       (_g1251312634_ _g1251512637_))))
               (_g1251312634_ _g1251512637_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1251312634_
                                                    _g1251512637_))))
                                           (_g1251312634_ _g1251512637_))
                                       (_g1251312634_ _g1251512637_))
                                   (_g1251312634_ _g1251512637_))))
                           (_g1251312634_ _g1251512637_))))
                   (_g1251312634_ _g1251512637_))
               (_g1251312634_ _g1251512637_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1251312634_ _g1251512637_))
                                           (_g1251312634_ _g1251512637_))
                                       (_g1251312634_ _g1251512637_))))
                               (_g1251312634_ _g1251512637_))))
                       (_g1251312634_ _g1251512637_)))))
            (let ((_g1251113021_
                   (lambda (_g1251512844_)
                     (if (gx#stx-pair? _g1251512844_)
                         (let ((_e1252112846_ (gx#stx-e _g1251512844_)))
                           (let ((_hd1252212849_ (##car _e1252112846_))
                                 (_tl1252312851_ (##cdr _e1252112846_)))
                             (if (gx#stx-pair? _hd1252212849_)
                                 (let ((_e1252412854_
                                        (gx#stx-e _hd1252212849_)))
                                   (let ((_hd1252512857_ (##car _e1252412854_))
                                         (_tl1252612859_
                                          (##cdr _e1252412854_)))
                                     (if (gx#identifier? _hd1252512857_)
                                         (if (gx#stx-eq?
                                              '%#quote
                                              _hd1252512857_)
                                             (if (gx#stx-pair? _tl1252612859_)
                                                 (let ((_e1252712862_
                                                        (gx#stx-e
                                                         _tl1252612859_)))
                                                   (let ((_hd1252812865_
                                                          (##car _e1252712862_))
                                                         (_tl1252912867_
                                                          (##cdr _e1252712862_)))
                                                     (if (gx#stx-null?
                                                          _tl1252912867_)
                                                         (if (gx#stx-pair?
                                                              _tl1252312851_)
                                                             (let ((_e1253012870_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl1252312851_)))
                       (let ((_hd1253112873_ (##car _e1253012870_))
                             (_tl1253212875_ (##cdr _e1253012870_)))
                         (if (gx#stx-pair? _hd1253112873_)
                             (let ((_e1253312878_ (gx#stx-e _hd1253112873_)))
                               (let ((_hd1253412881_ (##car _e1253312878_))
                                     (_tl1253512883_ (##cdr _e1253312878_)))
                                 (if (gx#identifier? _hd1253412881_)
                                     (if (gx#stx-eq? '%#quote _hd1253412881_)
                                         (if (gx#stx-pair? _tl1253512883_)
                                             (let ((_e1253612886_
                                                    (gx#stx-e _tl1253512883_)))
                                               (let ((_hd1253712889_
                                                      (##car _e1253612886_))
                                                     (_tl1253812891_
                                                      (##cdr _e1253612886_)))
                                                 (if (gx#stx-datum?
                                                      _hd1253712889_)
                                                     (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd1253712889_)
                         '#f)
                 (if (gx#stx-null? _tl1253812891_)
                     (if (gx#stx-pair? _tl1253212875_)
                         (let ((_e1253912894_ (gx#stx-e _tl1253212875_)))
                           (let ((_hd1254012897_ (##car _e1253912894_))
                                 (_tl1254112899_ (##cdr _e1253912894_)))
                             (if (gx#stx-pair? _hd1254012897_)
                                 (let ((_e1254212902_
                                        (gx#stx-e _hd1254012897_)))
                                   (let ((_hd1254312905_ (##car _e1254212902_))
                                         (_tl1254412907_
                                          (##cdr _e1254212902_)))
                                     (if (gx#identifier? _hd1254312905_)
                                         (if (gx#stx-eq?
                                              '%#quote
                                              _hd1254312905_)
                                             (if (gx#stx-pair? _tl1254412907_)
                                                 (let ((_e1254512910_
                                                        (gx#stx-e
                                                         _tl1254412907_)))
                                                   (let ((_hd1254612913_
                                                          (##car _e1254512910_))
                                                         (_tl1254712915_
                                                          (##cdr _e1254512910_)))
                                                     (if (gx#stx-null?
                                                          _tl1254712915_)
                                                         (if (gx#stx-pair?
                                                              _tl1254112899_)
                                                             (let ((_e1254812918_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl1254112899_)))
                       (let ((_hd1254912921_ (##car _e1254812918_))
                             (_tl1255012923_ (##cdr _e1254812918_)))
                         (if (gx#stx-pair? _tl1255012923_)
                             (let ((_e1255112926_ (gx#stx-e _tl1255012923_)))
                               (let ((_hd1255212929_ (##car _e1255112926_))
                                     (_tl1255312931_ (##cdr _e1255112926_)))
                                 (if (gx#stx-pair? _hd1255212929_)
                                     (let ((_e1255412934_
                                            (gx#stx-e _hd1255212929_)))
                                       (let ((_hd1255512937_
                                              (##car _e1255412934_))
                                             (_tl1255612939_
                                              (##cdr _e1255412934_)))
                                         (if (gx#identifier? _hd1255512937_)
                                             (if (gx#stx-eq?
                                                  '%#quote
                                                  _hd1255512937_)
                                                 (if (gx#stx-pair?
                                                      _tl1255612939_)
                                                     (let ((_e1255712942_
                                                            (gx#stx-e
                                                             _tl1255612939_)))
                                                       (let ((_hd1255812945_
                                                              (##car _e1255712942_))
                                                             (_tl1255912947_
                                                              (##cdr _e1255712942_)))
                                                         (if (gx#stx-null?
                                                              _tl1255912947_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1255312931_)
                         (let ((_e1256012950_ (gx#stx-e _tl1255312931_)))
                           (let ((_hd1256112953_ (##car _e1256012950_))
                                 (_tl1256212955_ (##cdr _e1256012950_)))
                             (if (gx#stx-pair? _hd1256112953_)
                                 (let ((_e1256312958_
                                        (gx#stx-e _hd1256112953_)))
                                   (let ((_hd1256412961_ (##car _e1256312958_))
                                         (_tl1256512963_
                                          (##cdr _e1256312958_)))
                                     (if (gx#identifier? _hd1256412961_)
                                         (if (gx#stx-eq?
                                              '%#quote
                                              _hd1256412961_)
                                             (if (gx#stx-pair? _tl1256512963_)
                                                 (let ((_e1256612966_
                                                        (gx#stx-e
                                                         _tl1256512963_)))
                                                   (let ((_hd1256712969_
                                                          (##car _e1256612966_))
                                                         (_tl1256812971_
                                                          (##cdr _e1256612966_)))
                                                     (if (gx#stx-null?
                                                          _tl1256812971_)
                                                         (if (gx#stx-null?
                                                              _tl1256212955_)
                                                             ((lambda (_L12974_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L12975_
                               _L12976_
                               _L12977_
                               _L12978_)
                        (let ((__obj19390
                               (make-object gxc#!struct-type::t '7)))
                          (begin
                            (gxc#!struct-type:::init!
                             __obj19390
                             (gx#stx-e _L12978_)
                             '#f
                             (gx#stx-e _L12977_)
                             '0
                             (gx#stx-e _L12974_)
                             (gx#stx-e _L12975_))
                            __obj19390)))
                      _hd1256712969_
                      _hd1255812945_
                      _hd1254912921_
                      _hd1254612913_
                      _hd1252812865_)
                     (_g1251212841_ _g1251512844_))
                 (_g1251212841_ _g1251512844_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1251212841_ _g1251512844_))
                                             (_g1251212841_ _g1251512844_))
                                         (_g1251212841_ _g1251512844_))))
                                 (_g1251212841_ _g1251512844_))))
                         (_g1251212841_ _g1251512844_))
                     (_g1251212841_ _g1251512844_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1251212841_
                                                      _g1251512844_))
                                                 (_g1251212841_ _g1251512844_))
                                             (_g1251212841_ _g1251512844_))))
                                     (_g1251212841_ _g1251512844_))))
                             (_g1251212841_ _g1251512844_))))
                     (_g1251212841_ _g1251512844_))
                 (_g1251212841_ _g1251512844_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1251212841_ _g1251512844_))
                                             (_g1251212841_ _g1251512844_))
                                         (_g1251212841_ _g1251512844_))))
                                 (_g1251212841_ _g1251512844_))))
                         (_g1251212841_ _g1251512844_))
                     (_g1251212841_ _g1251512844_))
                 (_g1251212841_ _g1251512844_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1251212841_
                                                      _g1251512844_))))
                                             (_g1251212841_ _g1251512844_))
                                         (_g1251212841_ _g1251512844_))
                                     (_g1251212841_ _g1251512844_))))
                             (_g1251212841_ _g1251512844_))))
                     (_g1251212841_ _g1251512844_))
                 (_g1251212841_ _g1251512844_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1251212841_ _g1251512844_))
                                             (_g1251212841_ _g1251512844_))
                                         (_g1251212841_ _g1251512844_))))
                                 (_g1251212841_ _g1251512844_))))
                         (_g1251212841_ _g1251512844_)))))
              (_g1251113021_ _args12510_)))))))
  (define gxc#basic-expression-type-make-struct-predicate
    (lambda (_stx12435_ _args12436_)
      (let ((_g1243912455_
             (lambda (_g1244012452_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1244012452_))))
        (let ((_g1243812462_ (lambda (_g1244012458_) ((lambda () '#f)))))
          (let ((_g1243712506_
                 (lambda (_g1244012465_)
                   (if (gx#stx-pair? _g1244012465_)
                       (let ((_e1244212467_ (gx#stx-e _g1244012465_)))
                         (let ((_hd1244312470_ (##car _e1244212467_))
                               (_tl1244412472_ (##cdr _e1244212467_)))
                           (if (gx#stx-pair? _hd1244312470_)
                               (let ((_e1244512475_ (gx#stx-e _hd1244312470_)))
                                 (let ((_hd1244612478_ (##car _e1244512475_))
                                       (_tl1244712480_ (##cdr _e1244512475_)))
                                   (if (gx#identifier? _hd1244612478_)
                                       (if (gx#stx-eq? '%#ref _hd1244612478_)
                                           (if (gx#stx-pair? _tl1244712480_)
                                               (let ((_e1244812483_
                                                      (gx#stx-e
                                                       _tl1244712480_)))
                                                 (let ((_hd1244912486_
                                                        (##car _e1244812483_))
                                                       (_tl1245012488_
                                                        (##cdr _e1244812483_)))
                                                   (if (gx#stx-null?
                                                        _tl1245012488_)
                                                       (if (gx#stx-null?
                                                            _tl1244412472_)
                                                           ((lambda (_L12491_)
                                                              (##structure
                                                               gxc#!struct-pred::t
                                                               (gxc#generate-runtime-binding-id
                                                                _L12491_)))
                                                            _hd1244912486_)
                                                           (_g1243812462_
                                                            _g1244012465_))
                                                       (_g1243812462_
                                                        _g1244012465_))))
                                               (_g1243812462_ _g1244012465_))
                                           (_g1243812462_ _g1244012465_))
                                       (_g1243812462_ _g1244012465_))))
                               (_g1243812462_ _g1244012465_))))
                       (_g1243812462_ _g1244012465_)))))
            (_g1243712506_ _args12436_))))))
  (define gxc#basic-expression-type-make-struct-field-accessor
    (lambda (_stx12319_ _args12320_)
      (let ((_g1232312349_
             (lambda (_g1232412346_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1232412346_))))
        (let ((_g1232212356_ (lambda (_g1232412352_) ((lambda () '#f)))))
          (let ((_g1232112432_
                 (lambda (_g1232412359_)
                   (if (gx#stx-pair? _g1232412359_)
                       (let ((_e1232712361_ (gx#stx-e _g1232412359_)))
                         (let ((_hd1232812364_ (##car _e1232712361_))
                               (_tl1232912366_ (##cdr _e1232712361_)))
                           (if (gx#stx-pair? _hd1232812364_)
                               (let ((_e1233012369_ (gx#stx-e _hd1232812364_)))
                                 (let ((_hd1233112372_ (##car _e1233012369_))
                                       (_tl1233212374_ (##cdr _e1233012369_)))
                                   (if (gx#identifier? _hd1233112372_)
                                       (if (gx#stx-eq? '%#ref _hd1233112372_)
                                           (if (gx#stx-pair? _tl1233212374_)
                                               (let ((_e1233312377_
                                                      (gx#stx-e
                                                       _tl1233212374_)))
                                                 (let ((_hd1233412380_
                                                        (##car _e1233312377_))
                                                       (_tl1233512382_
                                                        (##cdr _e1233312377_)))
                                                   (if (gx#stx-null?
                                                        _tl1233512382_)
                                                       (if (gx#stx-pair?
                                                            _tl1232912366_)
                                                           (let ((_e1233612385_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl1232912366_)))
                     (let ((_hd1233712388_ (##car _e1233612385_))
                           (_tl1233812390_ (##cdr _e1233612385_)))
                       (if (gx#stx-pair? _hd1233712388_)
                           (let ((_e1233912393_ (gx#stx-e _hd1233712388_)))
                             (let ((_hd1234012396_ (##car _e1233912393_))
                                   (_tl1234112398_ (##cdr _e1233912393_)))
                               (if (gx#identifier? _hd1234012396_)
                                   (if (gx#stx-eq? '%#quote _hd1234012396_)
                                       (if (gx#stx-pair? _tl1234112398_)
                                           (let ((_e1234212401_
                                                  (gx#stx-e _tl1234112398_)))
                                             (let ((_hd1234312404_
                                                    (##car _e1234212401_))
                                                   (_tl1234412406_
                                                    (##cdr _e1234212401_)))
                                               (if (gx#stx-null?
                                                    _tl1234412406_)
                                                   (if (gx#stx-null?
                                                        _tl1233812390_)
                                                       ((lambda (_L12409_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L12410_)
                  (##structure
                   gxc#!struct-getf::t
                   (gxc#generate-runtime-binding-id _L12410_)
                   (gx#stx-e _L12409_)))
                _hd1234312404_
                _hd1233412380_)
               (_g1232212356_ _g1232412359_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1232212356_
                                                    _g1232412359_))))
                                           (_g1232212356_ _g1232412359_))
                                       (_g1232212356_ _g1232412359_))
                                   (_g1232212356_ _g1232412359_))))
                           (_g1232212356_ _g1232412359_))))
                   (_g1232212356_ _g1232412359_))
               (_g1232212356_ _g1232412359_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1232212356_ _g1232412359_))
                                           (_g1232212356_ _g1232412359_))
                                       (_g1232212356_ _g1232412359_))))
                               (_g1232212356_ _g1232412359_))))
                       (_g1232212356_ _g1232412359_)))))
            (_g1232112432_ _args12320_))))))
  (define gxc#basic-expression-type-make-struct-field-mutator
    (lambda (_stx12203_ _args12204_)
      (let ((_g1220712233_
             (lambda (_g1220812230_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1220812230_))))
        (let ((_g1220612240_ (lambda (_g1220812236_) ((lambda () '#f)))))
          (let ((_g1220512316_
                 (lambda (_g1220812243_)
                   (if (gx#stx-pair? _g1220812243_)
                       (let ((_e1221112245_ (gx#stx-e _g1220812243_)))
                         (let ((_hd1221212248_ (##car _e1221112245_))
                               (_tl1221312250_ (##cdr _e1221112245_)))
                           (if (gx#stx-pair? _hd1221212248_)
                               (let ((_e1221412253_ (gx#stx-e _hd1221212248_)))
                                 (let ((_hd1221512256_ (##car _e1221412253_))
                                       (_tl1221612258_ (##cdr _e1221412253_)))
                                   (if (gx#identifier? _hd1221512256_)
                                       (if (gx#stx-eq? '%#ref _hd1221512256_)
                                           (if (gx#stx-pair? _tl1221612258_)
                                               (let ((_e1221712261_
                                                      (gx#stx-e
                                                       _tl1221612258_)))
                                                 (let ((_hd1221812264_
                                                        (##car _e1221712261_))
                                                       (_tl1221912266_
                                                        (##cdr _e1221712261_)))
                                                   (if (gx#stx-null?
                                                        _tl1221912266_)
                                                       (if (gx#stx-pair?
                                                            _tl1221312250_)
                                                           (let ((_e1222012269_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl1221312250_)))
                     (let ((_hd1222112272_ (##car _e1222012269_))
                           (_tl1222212274_ (##cdr _e1222012269_)))
                       (if (gx#stx-pair? _hd1222112272_)
                           (let ((_e1222312277_ (gx#stx-e _hd1222112272_)))
                             (let ((_hd1222412280_ (##car _e1222312277_))
                                   (_tl1222512282_ (##cdr _e1222312277_)))
                               (if (gx#identifier? _hd1222412280_)
                                   (if (gx#stx-eq? '%#quote _hd1222412280_)
                                       (if (gx#stx-pair? _tl1222512282_)
                                           (let ((_e1222612285_
                                                  (gx#stx-e _tl1222512282_)))
                                             (let ((_hd1222712288_
                                                    (##car _e1222612285_))
                                                   (_tl1222812290_
                                                    (##cdr _e1222612285_)))
                                               (if (gx#stx-null?
                                                    _tl1222812290_)
                                                   (if (gx#stx-null?
                                                        _tl1222212274_)
                                                       ((lambda (_L12293_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L12294_)
                  (##structure
                   gxc#!struct-setf::t
                   (gxc#generate-runtime-binding-id _L12294_)
                   (gx#stx-e _L12293_)))
                _hd1222712288_
                _hd1221812264_)
               (_g1220612240_ _g1220812243_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1220612240_
                                                    _g1220812243_))))
                                           (_g1220612240_ _g1220812243_))
                                       (_g1220612240_ _g1220812243_))
                                   (_g1220612240_ _g1220812243_))))
                           (_g1220612240_ _g1220812243_))))
                   (_g1220612240_ _g1220812243_))
               (_g1220612240_ _g1220812243_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1220612240_ _g1220812243_))
                                           (_g1220612240_ _g1220812243_))
                                       (_g1220612240_ _g1220812243_))))
                               (_g1220612240_ _g1220812243_))))
                       (_g1220612240_ _g1220812243_)))))
            (_g1220512316_ _args12204_))))))
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
    (lambda (_stx12152_)
      (let ((_g1215412167_
             (lambda (_g1215512164_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1215512164_))))
        (let ((_g1215312200_
               (lambda (_g1215512170_)
                 (if (gx#stx-pair? _g1215512170_)
                     (let ((_e1215712172_ (gx#stx-e _g1215512170_)))
                       (let ((_hd1215812175_ (##car _e1215712172_))
                             (_tl1215912177_ (##cdr _e1215712172_)))
                         (if (gx#stx-pair? _tl1215912177_)
                             (let ((_e1216012180_ (gx#stx-e _tl1215912177_)))
                               (let ((_hd1216112183_ (##car _e1216012180_))
                                     (_tl1216212185_ (##cdr _e1216012180_)))
                                 (if (gx#stx-null? _tl1216212185_)
                                     ((lambda (_L12188_)
                                        (gxc#optimizer-lookup-type
                                         (gxc#generate-runtime-binding-id
                                          _L12188_)))
                                      _hd1216112183_)
                                     (_g1215412167_ _g1215512170_))))
                             (_g1215412167_ _g1215512170_))))
                     (_g1215412167_ _g1215512170_)))))
          (_g1215312200_ _stx12152_)))))
  (define gxc#optimize-call%
    (lambda (_stx12058_)
      (let ((_g1206112081_
             (lambda (_g1206212078_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1206212078_))))
        (let ((_g1206012088_
               (lambda (_g1206212084_)
                 ((lambda () (gxc#xform-call% _stx12058_))))))
          (let ((_g1205912149_
                 (lambda (_g1206212091_)
                   (if (gx#stx-pair? _g1206212091_)
                       (let ((_e1206512093_ (gx#stx-e _g1206212091_)))
                         (let ((_hd1206612096_ (##car _e1206512093_))
                               (_tl1206712098_ (##cdr _e1206512093_)))
                           (if (gx#stx-pair? _tl1206712098_)
                               (let ((_e1206812101_ (gx#stx-e _tl1206712098_)))
                                 (let ((_hd1206912104_ (##car _e1206812101_))
                                       (_tl1207012106_ (##cdr _e1206812101_)))
                                   (if (gx#stx-pair? _hd1206912104_)
                                       (let ((_e1207112109_
                                              (gx#stx-e _hd1206912104_)))
                                         (let ((_hd1207212112_
                                                (##car _e1207112109_))
                                               (_tl1207312114_
                                                (##cdr _e1207112109_)))
                                           (if (gx#identifier? _hd1207212112_)
                                               (if (gx#stx-eq?
                                                    '%#ref
                                                    _hd1207212112_)
                                                   (if (gx#stx-pair?
                                                        _tl1207312114_)
                                                       (let ((_e1207412117_
                                                              (gx#stx-e
                                                               _tl1207312114_)))
                                                         (let ((_hd1207512120_
                                                                (##car _e1207412117_))
                                                               (_tl1207612122_
                                                                (##cdr _e1207412117_)))
                                                           (if (gx#stx-null?
                                                                _tl1207612122_)
                                                               ((lambda (_L12125_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _L12126_)
                          (let ((_rator-id12144_
                                 (gxc#generate-runtime-binding-id _L12126_)))
                            (let ((_rator-type12146_
                                   (gxc#optimizer-resolve-type
                                    _rator-id12144_)))
                              (let ()
                                (if (##structure-instance-of?
                                     _rator-type12146_
                                     'gxc#!procedure::t)
                                    (begin
                                      (gxc#verbose
                                       '"optimize-call "
                                       _rator-id12144_
                                       '" => "
                                       _rator-type12146_
                                       '" "
                                       (##structure-ref
                                        _rator-type12146_
                                        '1
                                        gxc#!type::t
                                        '#f))
                                      (call-method
                                       _rator-type12146_
                                       'optimize-call
                                       _stx12058_
                                       _L12125_))
                                    (if (not _rator-type12146_)
                                        (gxc#xform-call% _stx12058_)
                                        (gxc#raise-compile-error
                                         '"Illegal application; not a procedure"
                                         _stx12058_
                                         _rator-type12146_)))))))
                        _tl1207012106_
                        _hd1207512120_)
                       (_g1206012088_ _g1206212091_))))
               (_g1206012088_ _g1206212091_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1206012088_
                                                    _g1206212091_))
                                               (_g1206012088_ _g1206212091_))))
                                       (_g1206012088_ _g1206212091_))))
                               (_g1206012088_ _g1206212091_))))
                       (_g1206012088_ _g1206212091_)))))
            (_g1205912149_ _stx12058_))))))
  (define gxc#!struct-pred::optimize-call
    (lambda (_self11913_ _stx11914_ _args11915_)
      (let ((_self1191611922_ _self11913_))
        (let ((_E1191811926_
               (lambda () (error '"No clause matching" _self1191611922_))))
          (let ((_K1191912050_
                 (lambda (_struct-t11929_)
                   (let ((_struct-type11931_
                          (gxc#optimizer-resolve-type _struct-t11929_)))
                     (let ((_struct-type1193211946_ _struct-type11931_))
                       (let ((_E1193611950_
                              (lambda ()
                                (error '"No clause matching"
                                       _struct-type1193211946_))))
                         (let ((_else1193511954_
                                (lambda ()
                                  (gxc#raise-compile-error
                                   '"Illegal struct predicate application; not a struct type"
                                   _stx11914_
                                   _struct-t11929_
                                   _struct-type11931_))))
                           (let ((_try-match1193411962_
                                  (lambda ()
                                    (let ((_K1193711959_
                                           (lambda ()
                                             (gxc#xform-call% _stx11914_))))
                                      (if (##eq? _struct-type1193211946_ '#f)
                                          (_K1193711959_)
                                          (_else1193511954_))))))
                             (let ((_K1193812025_
                                    (lambda (_plist11965_
                                             _struct-type-id11966_)
                                      (let ((_g1196911979_
                                             (lambda (_g1197011976_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g1197011976_))))
                                        (let ((_g1196811986_
                                               (lambda (_g1197011982_)
                                                 ((lambda ()
                                                    (gxc#raise-compile-error
                                                     '"Illegal struct predicate application"
                                                     _stx11914_))))))
                                          (let ((_g1196712022_
                                                 (lambda (_g1197011989_)
                                                   (if (gx#stx-pair?
                                                        _g1197011989_)
                                                       (let ((_e1197211991_
                                                              (gx#stx-e
                                                               _g1197011989_)))
                                                         (let ((_hd1197311994_
                                                                (##car _e1197211991_))
                                                               (_tl1197411996_
                                                                (##cdr _e1197211991_)))
                                                           (if (gx#stx-null?
                                                                _tl1197411996_)
                                                               ((lambda (_L11999_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((_expr12019_ (gxc#compile-e _L11999_))
                                (_op12020_
                                 (if (if _plist11965_
                                         (assgetq 'final: _plist11965_)
                                         '#f)
                                     '%#struct-direct-instance?
                                     '%#struct-instance?)))
                            (gxc#xform-wrap-source
                             (cons _op12020_
                                   (cons (cons '%#quote
                                               (cons _struct-type-id11966_
                                                     '()))
                                         (cons _expr12019_ '())))
                             _stx11914_)))
                        _hd1197311994_)
                       (_g1196811986_ _g1197011989_))))
               (_g1196811986_ _g1197011989_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g1196712022_ _args11915_)))))))
                               (if (##structure-instance-of?
                                    _struct-type1193211946_
                                    (##type-id gxc#!struct-type::t))
                                   (let ((_e1193912028_
                                          (##vector-ref
                                           _struct-type1193211946_
                                           '1)))
                                     (let ((_struct-type-id12031_
                                            _e1193912028_))
                                       (let ((_e1194012033_
                                              (##vector-ref
                                               _struct-type1193211946_
                                               '2)))
                                         (let ((_e1194112036_
                                                (##vector-ref
                                                 _struct-type1193211946_
                                                 '3)))
                                           (let ((_e1194212039_
                                                  (##vector-ref
                                                   _struct-type1193211946_
                                                   '4)))
                                             (let ((_e1194312042_
                                                    (##vector-ref
                                                     _struct-type1193211946_
                                                     '5)))
                                               (let ((_e1194412045_
                                                      (##vector-ref
                                                       _struct-type1193211946_
                                                       '6)))
                                                 (let ((_plist12048_
                                                        _e1194412045_))
                                                   (_K1193812025_
                                                    _plist12048_
                                                    _struct-type-id12031_)))))))))
                                   (_try-match1193411962_)))))))))))
            (if (##structure-instance-of?
                 _self1191611922_
                 (##type-id gxc#!struct-pred::t))
                (let ((_e1192012053_ (##vector-ref _self1191611922_ '1)))
                  (let ((_struct-t12056_ _e1192012053_))
                    (_K1191912050_ _struct-t12056_)))
                (_E1191811926_)))))))
  (bind-method!
   gxc#!struct-pred::t
   'optimize-call
   gxc#!struct-pred::optimize-call
   '#f)
  (define gxc#!struct-cons::optimize-call
    (lambda (_self11809_ _stx11810_ _args11811_)
      (let ((_self1181211818_ _self11809_))
        (let ((_E1181411822_
               (lambda () (error '"No clause matching" _self1181211818_))))
          (let ((_K1181511905_
                 (lambda (_struct-t11825_)
                   (let ((_struct-type11827_
                          (gxc#optimizer-resolve-type _struct-t11825_)))
                     (let ((_struct-type1182811841_ _struct-type11827_))
                       (let ((_E1183211845_
                              (lambda ()
                                (error '"No clause matching"
                                       _struct-type1182811841_))))
                         (let ((_else1183111849_
                                (lambda ()
                                  (gxc#raise-compile-error
                                   '"Illegal struct constructor application; not a struct type"
                                   _stx11810_
                                   _struct-t11825_
                                   _struct-type11827_))))
                           (let ((_try-match1183011857_
                                  (lambda ()
                                    (let ((_K1183311854_
                                           (lambda ()
                                             (begin
                                               (gxc#verbose
                                                '"cannot inline struct constructor; unknown struct type "
                                                _struct-t11825_)
                                               (gxc#xform-call% _stx11810_)))))
                                      (if (##eq? _struct-type1182811841_ '#f)
                                          (_K1183311854_)
                                          (_else1183111849_))))))
                             (let ((_K1183411879_
                                    (lambda (_ctor11860_
                                             _xfields11861_
                                             _fields11862_
                                             _type-id11863_)
                                      (let ((_args11865_
                                             (map gxc#compile-e _args11811_)))
                                        (let ((_$e11867_
                                               (if _ctor11860_
                                                   (if _xfields11861_
                                                       (gxc#!struct-type-lookup-method
                                                        _struct-type11827_
                                                        _ctor11860_)
                                                       '#f)
                                                   '#f)))
                                          (if _$e11867_
                                              ((lambda (_kons11870_)
                                                 (let ((_$obj11872_
                                                        (make-symbol
                                                         (gensym '__obj))))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#let-values
                                                          (cons (cons (cons (cons _$obj11872_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                          '())
                                    (cons (cons '%#call
                                                (cons (cons '%#ref
                                                            (cons 'make-object
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#ref (cons _struct-t11825_ '()))
                    (cons (cons '%#quote
                                (cons (fx+ _fields11862_ _xfields11861_) '()))
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '()))
                              '())
                        (cons (cons '%#begin
                                    (cons (gxc#compile-e
                                           (gxc#xform-wrap-source
                                            (cons '%#call
                                                  (cons (cons '%#ref
                                                              (cons _kons11870_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '%#ref (cons _$obj11872_ '())) _args11865_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _stx11810_))
                                          (cons (cons '%#ref
                                                      (cons _$obj11872_ '()))
                                                '())))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _stx11810_)))
                                               _$e11867_)
                                              (if (let ((_$e11874_
                                                         _ctor11860_))
                                                    (if _$e11874_
                                                        _$e11874_
                                                        (not _xfields11861_)))
                                                  (gxc#xform-wrap-source
                                                   (cons '%#call
                                                         (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons 'make-struct-instance '()))
                       (cons (cons '%#ref (cons _struct-t11825_ '()))
                             _args11865_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _stx11810_)
                                                  (let ((_arity11877_
                                                         (fx+ _fields11862_
                                                              _xfields11861_)))
                                                    (if (fx= _arity11877_
                                                             (length _args11865_))
                                                        (gxc#xform-wrap-source
                                                         (cons '%#call
                                                               (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons '##structure '()))
                             (cons (cons '%#ref (cons _struct-t11825_ '()))
                                   _args11865_)))
                 _stx11810_)
                (gxc#raise-compile-error
                 '"Illegal struct constructor application; arity mismatch"
                 _stx11810_
                 _struct-t11825_
                 _arity11877_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (if (##structure-instance-of?
                                    _struct-type1182811841_
                                    (##type-id gxc#!struct-type::t))
                                   (let ((_e1183511882_
                                          (##vector-ref
                                           _struct-type1182811841_
                                           '1)))
                                     (let ((_type-id11885_ _e1183511882_))
                                       (let ((_e1183611887_
                                              (##vector-ref
                                               _struct-type1182811841_
                                               '2)))
                                         (let ((_e1183711890_
                                                (##vector-ref
                                                 _struct-type1182811841_
                                                 '3)))
                                           (let ((_fields11893_ _e1183711890_))
                                             (let ((_e1183811895_
                                                    (##vector-ref
                                                     _struct-type1182811841_
                                                     '4)))
                                               (let ((_xfields11898_
                                                      _e1183811895_))
                                                 (let ((_e1183911900_
                                                        (##vector-ref
                                                         _struct-type1182811841_
                                                         '5)))
                                                   (let ((_ctor11903_
                                                          _e1183911900_))
                                                     (_K1183411879_
                                                      _ctor11903_
                                                      _xfields11898_
                                                      _fields11893_
                                                      _type-id11885_))))))))))
                                   (_try-match1183011857_)))))))))))
            (if (##structure-instance-of?
                 _self1181211818_
                 (##type-id gxc#!struct-cons::t))
                (let ((_e1181611908_ (##vector-ref _self1181211818_ '1)))
                  (let ((_struct-t11911_ _e1181611908_))
                    (_K1181511905_ _struct-t11911_)))
                (_E1181411822_)))))))
  (bind-method!
   gxc#!struct-cons::t
   'optimize-call
   gxc#!struct-cons::optimize-call
   '#f)
  (define gxc#!struct-getf::optimize-call
    (lambda (_self11662_ _stx11663_ _args11664_)
      (let ((_self1166511672_ _self11662_))
        (let ((_E1166711676_
               (lambda () (error '"No clause matching" _self1166511672_))))
          (let ((_K1166811796_
                 (lambda (_off11679_ _struct-t11680_)
                   (let ((_struct-type11682_
                          (gxc#optimizer-resolve-type _struct-t11680_)))
                     (let ((_struct-type1168311695_ _struct-type11682_))
                       (let ((_E1168711699_
                              (lambda ()
                                (error '"No clause matching"
                                       _struct-type1168311695_))))
                         (let ((_else1168611703_
                                (lambda ()
                                  (gxc#raise-compile-error
                                   '"Illegal struct predicate application; not a struct type"
                                   _stx11663_
                                   _struct-t11680_
                                   _struct-type11682_))))
                           (let ((_try-match1168511711_
                                  (lambda ()
                                    (let ((_K1168811708_
                                           (lambda ()
                                             (gxc#xform-call% _stx11663_))))
                                      (if (##eq? _struct-type1168311695_ '#f)
                                          (_K1168811708_)
                                          (_else1168611703_))))))
                             (let ((_K1168911775_
                                    (lambda (_xfields11714_
                                             _fields11715_
                                             _struct-type-id11716_)
                                      (if _xfields11714_
                                          (let ((_g1171911729_
                                                 (lambda (_g1172011726_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1172011726_))))
                                            (let ((_g1171811736_
                                                   (lambda (_g1172011732_)
                                                     ((lambda ()
                                                        (gxc#raise-compile-error
                                                         '"Illegal struct accessor application"
                                                         _stx11663_))))))
                                              (let ((_g1171711772_
                                                     (lambda (_g1172011739_)
                                                       (if (gx#stx-pair?
                                                            _g1172011739_)
                                                           (let ((_e1172211741_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _g1172011739_)))
                     (let ((_hd1172311744_ (##car _e1172211741_))
                           (_tl1172411746_ (##cdr _e1172211741_)))
                       (if (gx#stx-null? _tl1172411746_)
                           ((lambda (_L11749_)
                              (let ((_expr11769_ (gxc#compile-e _L11749_))
                                    (_off11770_
                                     (fx+ _off11679_ _xfields11714_ '1)))
                                (gxc#xform-wrap-source
                                 (cons '%#struct-ref
                                       (cons (cons '%#ref
                                                   (cons _struct-t11680_ '()))
                                             (cons (cons '%#quote
                                                         (cons _off11770_ '()))
                                                   (cons _expr11769_ '()))))
                                 _stx11663_)))
                            _hd1172311744_)
                           (_g1171811736_ _g1172011739_))))
                   (_g1171811736_ _g1172011739_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1171711772_ _args11664_))))
                                          (begin
                                            (gxc#verbose
                                             '"struct-getf: incomplete struct "
                                             _struct-type-id11716_)
                                            (gxc#xform-call% _stx11663_))))))
                               (if (##structure-instance-of?
                                    _struct-type1168311695_
                                    (##type-id gxc#!struct-type::t))
                                   (let ((_e1169011778_
                                          (##vector-ref
                                           _struct-type1168311695_
                                           '1)))
                                     (let ((_struct-type-id11781_
                                            _e1169011778_))
                                       (let ((_e1169111783_
                                              (##vector-ref
                                               _struct-type1168311695_
                                               '2)))
                                         (let ((_e1169211786_
                                                (##vector-ref
                                                 _struct-type1168311695_
                                                 '3)))
                                           (let ((_fields11789_ _e1169211786_))
                                             (let ((_e1169311791_
                                                    (##vector-ref
                                                     _struct-type1168311695_
                                                     '4)))
                                               (let ((_xfields11794_
                                                      _e1169311791_))
                                                 (_K1168911775_
                                                  _xfields11794_
                                                  _fields11789_
                                                  _struct-type-id11781_))))))))
                                   (_try-match1168511711_)))))))))))
            (if (##structure-instance-of?
                 _self1166511672_
                 (##type-id gxc#!struct-getf::t))
                (let ((_e1166911799_ (##vector-ref _self1166511672_ '1)))
                  (let ((_struct-t11802_ _e1166911799_))
                    (let ((_e1167011804_ (##vector-ref _self1166511672_ '2)))
                      (let ((_off11807_ _e1167011804_))
                        (_K1166811796_ _off11807_ _struct-t11802_)))))
                (_E1166711676_)))))))
  (bind-method!
   gxc#!struct-getf::t
   'optimize-call
   gxc#!struct-getf::optimize-call
   '#f)
  (define gxc#!struct-setf::optimize-call
    (lambda (_self11498_ _stx11499_ _args11500_)
      (let ((_self1150111508_ _self11498_))
        (let ((_E1150311512_
               (lambda () (error '"No clause matching" _self1150111508_))))
          (let ((_K1150411649_
                 (lambda (_off11515_ _struct-t11516_)
                   (let ((_struct-type11518_
                          (gxc#optimizer-resolve-type _struct-t11516_)))
                     (let ((_struct-type1151911531_ _struct-type11518_))
                       (let ((_E1152311535_
                              (lambda ()
                                (error '"No clause matching"
                                       _struct-type1151911531_))))
                         (let ((_else1152211539_
                                (lambda ()
                                  (gxc#raise-compile-error
                                   '"Illegal struct predicate application; not a struct type"
                                   _stx11499_
                                   _struct-t11516_
                                   _struct-type11518_))))
                           (let ((_try-match1152111547_
                                  (lambda ()
                                    (let ((_K1152411544_
                                           (lambda ()
                                             (gxc#xform-call% _stx11499_))))
                                      (if (##eq? _struct-type1151911531_ '#f)
                                          (_K1152411544_)
                                          (_else1152211539_))))))
                             (let ((_K1152511628_
                                    (lambda (_xfields11550_
                                             _fields11551_
                                             _struct-type-id11552_)
                                      (if _xfields11550_
                                          (let ((_g1155511569_
                                                 (lambda (_g1155611566_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1155611566_))))
                                            (let ((_g1155411576_
                                                   (lambda (_g1155611572_)
                                                     ((lambda ()
                                                        (gxc#raise-compile-error
                                                         '"Illegal struct mutator application"
                                                         _stx11499_))))))
                                              (let ((_g1155311625_
                                                     (lambda (_g1155611579_)
                                                       (if (gx#stx-pair?
                                                            _g1155611579_)
                                                           (let ((_e1155911581_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _g1155611579_)))
                     (let ((_hd1156011584_ (##car _e1155911581_))
                           (_tl1156111586_ (##cdr _e1155911581_)))
                       (if (gx#stx-pair? _tl1156111586_)
                           (let ((_e1156211589_ (gx#stx-e _tl1156111586_)))
                             (let ((_hd1156311592_ (##car _e1156211589_))
                                   (_tl1156411594_ (##cdr _e1156211589_)))
                               (if (gx#stx-null? _tl1156411594_)
                                   ((lambda (_L11597_ _L11598_)
                                      (let ((_expr11621_
                                             (gxc#compile-e _L11598_))
                                            (_val11622_
                                             (gxc#compile-e _L11597_))
                                            (_off11623_
                                             (fx+ _off11515_
                                                  _xfields11550_
                                                  '1)))
                                        (gxc#xform-wrap-source
                                         (cons '%#struct-set!
                                               (cons (cons '%#ref
                                                           (cons _struct-t11516_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _off11623_ '()))
                   (cons _expr11621_ (cons _val11622_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _stx11499_)))
                                    _hd1156311592_
                                    _hd1156011584_)
                                   (_g1155411576_ _g1155611579_))))
                           (_g1155411576_ _g1155611579_))))
                   (_g1155411576_ _g1155611579_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1155311625_ _args11500_))))
                                          (begin
                                            (gxc#verbose
                                             '"struct-setf: incomplete struct "
                                             _struct-type-id11552_)
                                            (gxc#xform-call% _stx11499_))))))
                               (if (##structure-instance-of?
                                    _struct-type1151911531_
                                    (##type-id gxc#!struct-type::t))
                                   (let ((_e1152611631_
                                          (##vector-ref
                                           _struct-type1151911531_
                                           '1)))
                                     (let ((_struct-type-id11634_
                                            _e1152611631_))
                                       (let ((_e1152711636_
                                              (##vector-ref
                                               _struct-type1151911531_
                                               '2)))
                                         (let ((_e1152811639_
                                                (##vector-ref
                                                 _struct-type1151911531_
                                                 '3)))
                                           (let ((_fields11642_ _e1152811639_))
                                             (let ((_e1152911644_
                                                    (##vector-ref
                                                     _struct-type1151911531_
                                                     '4)))
                                               (let ((_xfields11647_
                                                      _e1152911644_))
                                                 (_K1152511628_
                                                  _xfields11647_
                                                  _fields11642_
                                                  _struct-type-id11634_))))))))
                                   (_try-match1152111547_)))))))))))
            (if (##structure-instance-of?
                 _self1150111508_
                 (##type-id gxc#!struct-setf::t))
                (let ((_e1150511652_ (##vector-ref _self1150111508_ '1)))
                  (let ((_struct-t11655_ _e1150511652_))
                    (let ((_e1150611657_ (##vector-ref _self1150111508_ '2)))
                      (let ((_off11660_ _e1150611657_))
                        (_K1150411649_ _off11660_ _struct-t11655_)))))
                (_E1150311512_)))))))
  (bind-method!
   gxc#!struct-setf::t
   'optimize-call
   gxc#!struct-setf::optimize-call
   '#f)
  (define gxc#!lambda::optimize-call
    (lambda (_self11454_ _stx11455_ _args11456_)
      (let ((_self1145711466_ _self11454_))
        (let ((_E1145911470_
               (lambda () (error '"No clause matching" _self1145711466_))))
          (let ((_K1146011477_
                 (lambda (_inline11473_ _dispatch11474_ _arity11475_)
                   (begin
                     (if (gxc#!lambda-arity-match? _self11454_ _args11456_)
                         '#!void
                         (gxc#raise-compile-error
                          '"Illegal lambda application; arity mismatch"
                          _stx11455_
                          _arity11475_))
                     (if _inline11473_
                         (begin
                           (gxc#verbose '"inline lambda")
                           (gxc#compile-e
                            (gxc#xform-wrap-source
                             (_inline11473_ _stx11455_)
                             _stx11455_)))
                         (if _dispatch11474_
                             (begin
                               (gxc#verbose
                                '"dispatch lambda => "
                                _dispatch11474_)
                               (gxc#compile-e
                                (gxc#xform-wrap-source
                                 (cons '%#call
                                       (cons (cons '%#ref
                                                   (cons _dispatch11474_ '()))
                                             _args11456_))
                                 _stx11455_)))
                             (gxc#xform-call% _stx11455_)))))))
            (if (##structure-instance-of?
                 _self1145711466_
                 (##type-id gxc#!lambda::t))
                (let ((_e1146111480_ (##vector-ref _self1145711466_ '1)))
                  (let ((_e1146211483_ (##vector-ref _self1145711466_ '2)))
                    (let ((_arity11486_ _e1146211483_))
                      (let ((_e1146311488_ (##vector-ref _self1145711466_ '3)))
                        (let ((_dispatch11491_ _e1146311488_))
                          (let ((_e1146411493_
                                 (##vector-ref _self1145711466_ '4)))
                            (let ((_inline11496_ _e1146411493_))
                              (_K1146011477_
                               _inline11496_
                               _dispatch11491_
                               _arity11486_))))))))
                (_E1145911470_)))))))
  (bind-method! gxc#!lambda::t 'optimize-call gxc#!lambda::optimize-call '#f)
  (define gxc#!case-lambda::optimize-call
    (lambda (_self11414_ _stx11415_ _args11416_)
      (let ((_self1141711424_ _self11414_))
        (let ((_E1141911428_
               (lambda () (error '"No clause matching" _self1141711424_))))
          (let ((_K1142011443_
                 (lambda (_clauses11431_)
                   (let ((_$e11437_
                          (find (lambda (_g1143211434_)
                                  (gxc#!lambda-arity-match?
                                   _g1143211434_
                                   _args11416_))
                                _clauses11431_)))
                     (if _$e11437_
                         ((lambda (_clause11440_)
                            (call-method
                             _clause11440_
                             'optimize-call
                             _stx11415_
                             _args11416_))
                          _$e11437_)
                         (gxc#raise-compile-error
                          '"Illegal case-lambda application; arity mismatch"
                          _stx11415_
                          (map (lambda ()
                                 (##structure-ref
                                  _clauses11431_
                                  '2
                                  gxc#!lambda::t
                                  '#f))
                               _clauses11431_)))))))
            (if (##structure-instance-of?
                 _self1141711424_
                 (##type-id gxc#!case-lambda::t))
                (let ((_e1142111446_ (##vector-ref _self1141711424_ '1)))
                  (let ((_e1142211449_ (##vector-ref _self1141711424_ '2)))
                    (let ((_clauses11452_ _e1142211449_))
                      (_K1142011443_ _clauses11452_))))
                (_E1141911428_)))))))
  (bind-method!
   gxc#!case-lambda::t
   'optimize-call
   gxc#!case-lambda::optimize-call
   '#f)
  (define gxc#!lambda-arity-match?
    (lambda (_self11350_ _args11351_)
      (let ((_self1135211359_ _self11350_))
        (let ((_E1135411363_
               (lambda () (error '"No clause matching" _self1135211359_))))
          (let ((_K1135511403_
                 (lambda (_arity11366_)
                   (let ((_arity1136711376_ _arity11366_))
                     (let ((_E1137011380_
                            (lambda ()
                              (error '"No clause matching"
                                     _arity1136711376_))))
                       (let ((_try-match1136911396_
                              (lambda ()
                                (let ((_K1137111386_
                                       (lambda (_arity11384_)
                                         (fx>= (length _args11351_)
                                               _arity11384_))))
                                  (if (##pair? _arity1136711376_)
                                      (let ((_hd1137211389_
                                             (##car _arity1136711376_))
                                            (_tl1137311391_
                                             (##cdr _arity1136711376_)))
                                        (let ((_arity11394_ _hd1137211389_))
                                          (if (##null? _tl1137311391_)
                                              (_K1137111386_ _arity11394_)
                                              (_E1137011380_))))
                                      (_E1137011380_))))))
                         (let ((_K1137411400_
                                (lambda ()
                                  (fx= (length _args11351_) _arity11366_))))
                           (if (fixnum? _arity1136711376_)
                               (_K1137411400_)
                               (_try-match1136911396_)))))))))
            (if (##structure-instance-of?
                 _self1135211359_
                 (##type-id gxc#!lambda::t))
                (let ((_e1135611406_ (##vector-ref _self1135211359_ '1)))
                  (let ((_e1135711409_ (##vector-ref _self1135211359_ '2)))
                    (let ((_arity11412_ _e1135711409_))
                      (_K1135511403_ _arity11412_))))
                (_E1135411363_)))))))
  (define gxc#generate-ssxi-module%
    (lambda (_stx11290_)
      (let ((_g1129211306_
             (lambda (_g1129311303_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1129311303_))))
        (let ((_g1129111347_
               (lambda (_g1129311309_)
                 (if (gx#stx-pair? _g1129311309_)
                     (let ((_e1129611311_ (gx#stx-e _g1129311309_)))
                       (let ((_hd1129711314_ (##car _e1129611311_))
                             (_tl1129811316_ (##cdr _e1129611311_)))
                         (if (gx#stx-pair? _tl1129811316_)
                             (let ((_e1129911319_ (gx#stx-e _tl1129811316_)))
                               (let ((_hd1130011322_ (##car _e1129911319_))
                                     (_tl1130111324_ (##cdr _e1129911319_)))
                                 ((lambda (_L11327_ _L11328_)
                                    (let ((_ctx11341_
                                           (gx#syntax-local-e__0 _L11328_)))
                                      (let ((_code11343_
                                             (##structure-ref
                                              _ctx11341_
                                              '11
                                              gx#module-context::t
                                              '#f)))
                                        (let ()
                                          (call-with-parameters
                                           (lambda ()
                                             (gxc#compile-e _code11343_))
                                           gx#current-expander-context
                                           _ctx11341_)))))
                                  _tl1130111324_
                                  _hd1130011322_)))
                             (_g1129211306_ _g1129311309_))))
                     (_g1129211306_ _g1129311309_)))))
          (_g1129111347_ _stx11290_)))))
  (define gxc#generate-ssxi-define-values%
    (lambda (_stx11100_)
      (let ((_generate-e11102_
             (lambda (_id11279_)
               (let ((_sym11281_
                      (if (gx#identifier? (gx#datum->syntax__0 '#f 'id))
                          (gxc#generate-runtime-binding-id _id11279_)
                          '#f)))
                 (let ((_$e11283_
                        (if _sym11281_
                            (gxc#optimizer-lookup-type _sym11281_)
                            '#f)))
                   (if _$e11283_
                       ((lambda (_type11286_)
                          (begin
                            (gxc#verbose '"generate typedecl " _sym11281_)
                            (let ((_typedecl11288_
                                   (call-method _type11286_ 'typedecl)))
                              (cons 'declare-type
                                    (cons _sym11281_
                                          (cons _typedecl11288_ '()))))))
                        _$e11283_)
                       '(begin)))))))
        (let ((_g1110511143_
               (lambda (_g1110611140_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1110611140_))))
          (let ((_g1110411224_
                 (lambda (_g1110611146_)
                   (if (gx#stx-pair? _g1110611146_)
                       (let ((_e1112111148_ (gx#stx-e _g1110611146_)))
                         (let ((_hd1112211151_ (##car _e1112111148_))
                               (_tl1112311153_ (##cdr _e1112111148_)))
                           (if (gx#stx-pair? _tl1112311153_)
                               (let ((_e1112411156_ (gx#stx-e _tl1112311153_)))
                                 (let ((_hd1112511159_ (##car _e1112411156_))
                                       (_tl1112611161_ (##cdr _e1112411156_)))
                                   (if (gx#stx-pair/null? _hd1112511159_)
                                       (if (fx>= (gx#stx-length _hd1112511159_)
                                                 '0)
                                           (let ((_g19453_
                                                  (gx#syntax-split-splice
                                                   _hd1112511159_
                                                   '0)))
                                             (begin
                                               (let ((_g19454_
                                                      (values-count _g19453_)))
                                                 (if (not (fx= _g19454_ 2))
                                                     (error "Context expects 2 values"
                                                            _g19454_)))
                                               (let ((_target1112711164_
                                                      (values-ref _g19453_ 0))
                                                     (_tl1112911166_
                                                      (values-ref _g19453_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl1112911166_)
                                                     (letrec ((_loop1113011169_
                                                               (lambda (_hd1112811172_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _id1113411174_)
                         (if (gx#stx-pair? _hd1112811172_)
                             (let ((_e1113111177_ (gx#stx-e _hd1112811172_)))
                               (let ((_lp-hd1113211180_ (##car _e1113111177_))
                                     (_lp-tl1113311182_ (##cdr _e1113111177_)))
                                 (_loop1113011169_
                                  _lp-tl1113311182_
                                  (cons _lp-hd1113211180_ _id1113411174_))))
                             (let ((_id1113511185_ (reverse _id1113411174_)))
                               (if (gx#stx-pair? _tl1112611161_)
                                   (let ((_e1113611188_
                                          (gx#stx-e _tl1112611161_)))
                                     (let ((_hd1113711191_
                                            (##car _e1113611188_))
                                           (_tl1113811193_
                                            (##cdr _e1113611188_)))
                                       (if (gx#stx-null? _tl1113811193_)
                                           ((lambda (_L11196_)
                                              (let ((_types11222_
                                                     (map _generate-e11102_
                                                          (begin
                                                            '#!void
                                                            (foldr1 (lambda (_g1121411217_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g1121511219_)
                              (cons _g1121411217_ _g1121511219_))
                            '()
                            _L11196_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons 'begin _types11222_)))
                                            _id1113511185_)
                                           (_g1110511143_ _g1110611146_))))
                                   (_g1110511143_ _g1110611146_)))))))
               (_loop1113011169_ _target1112711164_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1110511143_
                                                      _g1110611146_)))))
                                           (_g1110511143_ _g1110611146_))
                                       (_g1110511143_ _g1110611146_))))
                               (_g1110511143_ _g1110611146_))))
                       (_g1110511143_ _g1110611146_)))))
            (let ((_g1110311276_
                   (lambda (_g1110611227_)
                     (if (gx#stx-pair? _g1110611227_)
                         (let ((_e1110811229_ (gx#stx-e _g1110611227_)))
                           (let ((_hd1110911232_ (##car _e1110811229_))
                                 (_tl1111011234_ (##cdr _e1110811229_)))
                             (if (gx#stx-pair? _tl1111011234_)
                                 (let ((_e1111111237_
                                        (gx#stx-e _tl1111011234_)))
                                   (let ((_hd1111211240_ (##car _e1111111237_))
                                         (_tl1111311242_
                                          (##cdr _e1111111237_)))
                                     (if (gx#stx-pair? _hd1111211240_)
                                         (let ((_e1111411245_
                                                (gx#stx-e _hd1111211240_)))
                                           (let ((_hd1111511248_
                                                  (##car _e1111411245_))
                                                 (_tl1111611250_
                                                  (##cdr _e1111411245_)))
                                             (if (gx#stx-null? _tl1111611250_)
                                                 (if (gx#stx-pair?
                                                      _tl1111311242_)
                                                     (let ((_e1111711253_
                                                            (gx#stx-e
                                                             _tl1111311242_)))
                                                       (let ((_hd1111811256_
                                                              (##car _e1111711253_))
                                                             (_tl1111911258_
                                                              (##cdr _e1111711253_)))
                                                         (if (gx#stx-null?
                                                              _tl1111911258_)
                                                             ((lambda (_L11261_)
                                                                (_generate-e11102_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L11261_))
                      _hd1111511248_)
                     (_g1110411224_ _g1110611227_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1110411224_
                                                      _g1110611227_))
                                                 (_g1110411224_
                                                  _g1110611227_))))
                                         (_g1110411224_ _g1110611227_))))
                                 (_g1110411224_ _g1110611227_))))
                         (_g1110411224_ _g1110611227_)))))
              (_g1110311276_ _stx11100_)))))))
  (define gxc#generate-ssxi-call%
    (lambda (_stx10654_)
      (let ((_g1065810760_
             (lambda (_g1065910757_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1065910757_))))
        (let ((_g1065710767_ (lambda (_g1065910763_) ((lambda () '(begin))))))
          (let ((_g1065610917_
                 (lambda (_g1065910770_)
                   (if (gx#stx-pair? _g1065910770_)
                       (let ((_e1071710772_ (gx#stx-e _g1065910770_)))
                         (let ((_hd1071810775_ (##car _e1071710772_))
                               (_tl1071910777_ (##cdr _e1071710772_)))
                           (if (gx#stx-pair? _tl1071910777_)
                               (let ((_e1072010780_ (gx#stx-e _tl1071910777_)))
                                 (let ((_hd1072110783_ (##car _e1072010780_))
                                       (_tl1072210785_ (##cdr _e1072010780_)))
                                   (if (gx#stx-pair? _hd1072110783_)
                                       (let ((_e1072310788_
                                              (gx#stx-e _hd1072110783_)))
                                         (let ((_hd1072410791_
                                                (##car _e1072310788_))
                                               (_tl1072510793_
                                                (##cdr _e1072310788_)))
                                           (if (gx#identifier? _hd1072410791_)
                                               (if (gx#stx-eq?
                                                    '%#ref
                                                    _hd1072410791_)
                                                   (if (gx#stx-pair?
                                                        _tl1072510793_)
                                                       (let ((_e1072610796_
                                                              (gx#stx-e
                                                               _tl1072510793_)))
                                                         (let ((_hd1072710799_
                                                                (##car _e1072610796_))
                                                               (_tl1072810801_
                                                                (##cdr _e1072610796_)))
                                                           (if (gx#stx-null?
                                                                _tl1072810801_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl1072210785_)
                           (let ((_e1072910804_ (gx#stx-e _tl1072210785_)))
                             (let ((_hd1073010807_ (##car _e1072910804_))
                                   (_tl1073110809_ (##cdr _e1072910804_)))
                               (if (gx#stx-pair? _hd1073010807_)
                                   (let ((_e1073210812_
                                          (gx#stx-e _hd1073010807_)))
                                     (let ((_hd1073310815_
                                            (##car _e1073210812_))
                                           (_tl1073410817_
                                            (##cdr _e1073210812_)))
                                       (if (gx#identifier? _hd1073310815_)
                                           (if (gx#stx-eq?
                                                '%#ref
                                                _hd1073310815_)
                                               (if (gx#stx-pair?
                                                    _tl1073410817_)
                                                   (let ((_e1073510820_
                                                          (gx#stx-e
                                                           _tl1073410817_)))
                                                     (let ((_hd1073610823_
                                                            (##car _e1073510820_))
                                                           (_tl1073710825_
                                                            (##cdr _e1073510820_)))
                                                       (if (gx#stx-null?
                                                            _tl1073710825_)
                                                           (if (gx#stx-pair?
                                                                _tl1073110809_)
                                                               (let ((_e1073810828_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl1073110809_)))
                         (let ((_hd1073910831_ (##car _e1073810828_))
                               (_tl1074010833_ (##cdr _e1073810828_)))
                           (if (gx#stx-pair? _hd1073910831_)
                               (let ((_e1074110836_ (gx#stx-e _hd1073910831_)))
                                 (let ((_hd1074210839_ (##car _e1074110836_))
                                       (_tl1074310841_ (##cdr _e1074110836_)))
                                   (if (gx#identifier? _hd1074210839_)
                                       (if (gx#stx-eq? '%#quote _hd1074210839_)
                                           (if (gx#stx-pair? _tl1074310841_)
                                               (let ((_e1074410844_
                                                      (gx#stx-e
                                                       _tl1074310841_)))
                                                 (let ((_hd1074510847_
                                                        (##car _e1074410844_))
                                                       (_tl1074610849_
                                                        (##cdr _e1074410844_)))
                                                   (if (gx#stx-null?
                                                        _tl1074610849_)
                                                       (if (gx#stx-pair?
                                                            _tl1074010833_)
                                                           (let ((_e1074710852_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl1074010833_)))
                     (let ((_hd1074810855_ (##car _e1074710852_))
                           (_tl1074910857_ (##cdr _e1074710852_)))
                       (if (gx#stx-pair? _hd1074810855_)
                           (let ((_e1075010860_ (gx#stx-e _hd1074810855_)))
                             (let ((_hd1075110863_ (##car _e1075010860_))
                                   (_tl1075210865_ (##cdr _e1075010860_)))
                               (if (gx#identifier? _hd1075110863_)
                                   (if (gx#stx-eq? '%#ref _hd1075110863_)
                                       (if (gx#stx-pair? _tl1075210865_)
                                           (let ((_e1075310868_
                                                  (gx#stx-e _tl1075210865_)))
                                             (let ((_hd1075410871_
                                                    (##car _e1075310868_))
                                                   (_tl1075510873_
                                                    (##cdr _e1075310868_)))
                                               (if (gx#stx-null?
                                                    _tl1075510873_)
                                                   (if (gx#stx-null?
                                                        _tl1074910857_)
                                                       ((lambda (_L10876_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L10877_
                         _L10878_
                         _L10879_)
                  (if (eq? (gxc#generate-runtime-binding-id
                            (gx#datum->syntax__0 '#f '-bind-method))
                           'bind-method!)
                      (cons 'declare-method
                            (cons (gxc#generate-runtime-binding-id _L10878_)
                                  (cons (gx#stx-e _L10877_)
                                        (cons (gxc#generate-runtime-binding-id
                                               _L10876_)
                                              (cons '#f '())))))
                      (_g1065710767_ _g1065910770_)))
                _hd1075410871_
                _hd1074510847_
                _hd1073610823_
                _hd1072710799_)
               (_g1065710767_ _g1065910770_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1065710767_
                                                    _g1065910770_))))
                                           (_g1065710767_ _g1065910770_))
                                       (_g1065710767_ _g1065910770_))
                                   (_g1065710767_ _g1065910770_))))
                           (_g1065710767_ _g1065910770_))))
                   (_g1065710767_ _g1065910770_))
               (_g1065710767_ _g1065910770_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1065710767_ _g1065910770_))
                                           (_g1065710767_ _g1065910770_))
                                       (_g1065710767_ _g1065910770_))))
                               (_g1065710767_ _g1065910770_))))
                       (_g1065710767_ _g1065910770_))
                   (_g1065710767_ _g1065910770_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1065710767_
                                                    _g1065910770_))
                                               (_g1065710767_ _g1065910770_))
                                           (_g1065710767_ _g1065910770_))))
                                   (_g1065710767_ _g1065910770_))))
                           (_g1065710767_ _g1065910770_))
                       (_g1065710767_ _g1065910770_))))
               (_g1065710767_ _g1065910770_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1065710767_
                                                    _g1065910770_))
                                               (_g1065710767_ _g1065910770_))))
                                       (_g1065710767_ _g1065910770_))))
                               (_g1065710767_ _g1065910770_))))
                       (_g1065710767_ _g1065910770_)))))
            (let ((_g1065511097_
                   (lambda (_g1065910920_)
                     (if (gx#stx-pair? _g1065910920_)
                         (let ((_e1066510922_ (gx#stx-e _g1065910920_)))
                           (let ((_hd1066610925_ (##car _e1066510922_))
                                 (_tl1066710927_ (##cdr _e1066510922_)))
                             (if (gx#stx-pair? _tl1066710927_)
                                 (let ((_e1066810930_
                                        (gx#stx-e _tl1066710927_)))
                                   (let ((_hd1066910933_ (##car _e1066810930_))
                                         (_tl1067010935_
                                          (##cdr _e1066810930_)))
                                     (if (gx#stx-pair? _hd1066910933_)
                                         (let ((_e1067110938_
                                                (gx#stx-e _hd1066910933_)))
                                           (let ((_hd1067210941_
                                                  (##car _e1067110938_))
                                                 (_tl1067310943_
                                                  (##cdr _e1067110938_)))
                                             (if (gx#identifier?
                                                  _hd1067210941_)
                                                 (if (gx#stx-eq?
                                                      '%#ref
                                                      _hd1067210941_)
                                                     (if (gx#stx-pair?
                                                          _tl1067310943_)
                                                         (let ((_e1067410946_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1067310943_)))
                   (let ((_hd1067510949_ (##car _e1067410946_))
                         (_tl1067610951_ (##cdr _e1067410946_)))
                     (if (gx#stx-null? _tl1067610951_)
                         (if (gx#stx-pair? _tl1067010935_)
                             (let ((_e1067710954_ (gx#stx-e _tl1067010935_)))
                               (let ((_hd1067810957_ (##car _e1067710954_))
                                     (_tl1067910959_ (##cdr _e1067710954_)))
                                 (if (gx#stx-pair? _hd1067810957_)
                                     (let ((_e1068010962_
                                            (gx#stx-e _hd1067810957_)))
                                       (let ((_hd1068110965_
                                              (##car _e1068010962_))
                                             (_tl1068210967_
                                              (##cdr _e1068010962_)))
                                         (if (gx#identifier? _hd1068110965_)
                                             (if (gx#stx-eq?
                                                  '%#ref
                                                  _hd1068110965_)
                                                 (if (gx#stx-pair?
                                                      _tl1068210967_)
                                                     (let ((_e1068310970_
                                                            (gx#stx-e
                                                             _tl1068210967_)))
                                                       (let ((_hd1068410973_
                                                              (##car _e1068310970_))
                                                             (_tl1068510975_
                                                              (##cdr _e1068310970_)))
                                                         (if (gx#stx-null?
                                                              _tl1068510975_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1067910959_)
                         (let ((_e1068610978_ (gx#stx-e _tl1067910959_)))
                           (let ((_hd1068710981_ (##car _e1068610978_))
                                 (_tl1068810983_ (##cdr _e1068610978_)))
                             (if (gx#stx-pair? _hd1068710981_)
                                 (let ((_e1068910986_
                                        (gx#stx-e _hd1068710981_)))
                                   (let ((_hd1069010989_ (##car _e1068910986_))
                                         (_tl1069110991_
                                          (##cdr _e1068910986_)))
                                     (if (gx#identifier? _hd1069010989_)
                                         (if (gx#stx-eq?
                                              '%#quote
                                              _hd1069010989_)
                                             (if (gx#stx-pair? _tl1069110991_)
                                                 (let ((_e1069210994_
                                                        (gx#stx-e
                                                         _tl1069110991_)))
                                                   (let ((_hd1069310997_
                                                          (##car _e1069210994_))
                                                         (_tl1069410999_
                                                          (##cdr _e1069210994_)))
                                                     (if (gx#stx-null?
                                                          _tl1069410999_)
                                                         (if (gx#stx-pair?
                                                              _tl1068810983_)
                                                             (let ((_e1069511002_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl1068810983_)))
                       (let ((_hd1069611005_ (##car _e1069511002_))
                             (_tl1069711007_ (##cdr _e1069511002_)))
                         (if (gx#stx-pair? _hd1069611005_)
                             (let ((_e1069811010_ (gx#stx-e _hd1069611005_)))
                               (let ((_hd1069911013_ (##car _e1069811010_))
                                     (_tl1070011015_ (##cdr _e1069811010_)))
                                 (if (gx#identifier? _hd1069911013_)
                                     (if (gx#stx-eq? '%#ref _hd1069911013_)
                                         (if (gx#stx-pair? _tl1070011015_)
                                             (let ((_e1070111018_
                                                    (gx#stx-e _tl1070011015_)))
                                               (let ((_hd1070211021_
                                                      (##car _e1070111018_))
                                                     (_tl1070311023_
                                                      (##cdr _e1070111018_)))
                                                 (if (gx#stx-null?
                                                      _tl1070311023_)
                                                     (if (gx#stx-pair?
                                                          _tl1069711007_)
                                                         (let ((_e1070411026_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1069711007_)))
                   (let ((_hd1070511029_ (##car _e1070411026_))
                         (_tl1070611031_ (##cdr _e1070411026_)))
                     (if (gx#stx-pair? _hd1070511029_)
                         (let ((_e1070711034_ (gx#stx-e _hd1070511029_)))
                           (let ((_hd1070811037_ (##car _e1070711034_))
                                 (_tl1070911039_ (##cdr _e1070711034_)))
                             (if (gx#identifier? _hd1070811037_)
                                 (if (gx#stx-eq? '%#quote _hd1070811037_)
                                     (if (gx#stx-pair? _tl1070911039_)
                                         (let ((_e1071011042_
                                                (gx#stx-e _tl1070911039_)))
                                           (let ((_hd1071111045_
                                                  (##car _e1071011042_))
                                                 (_tl1071211047_
                                                  (##cdr _e1071011042_)))
                                             (if (gx#stx-null? _tl1071211047_)
                                                 (if (gx#stx-null?
                                                      _tl1070611031_)
                                                     ((lambda (_L11050_
                                                               _L11051_
                                                               _L11052_
                                                               _L11053_
                                                               _L11054_)
                                                        (if (eq? (gxc#generate-runtime-binding-id
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L11054_)
                         'bind-method!)
                    (cons 'declare-method
                          (cons (gxc#generate-runtime-binding-id _L11053_)
                                (cons (gx#stx-e _L11052_)
                                      (cons (gxc#generate-runtime-binding-id
                                             _L11051_)
                                            (cons (gx#stx-e _L11050_) '())))))
                    (_g1065610917_ _g1065910920_)))
              _hd1071111045_
              _hd1070211021_
              _hd1069310997_
              _hd1068410973_
              _hd1067510949_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1065610917_
                                                      _g1065910920_))
                                                 (_g1065610917_
                                                  _g1065910920_))))
                                         (_g1065610917_ _g1065910920_))
                                     (_g1065610917_ _g1065910920_))
                                 (_g1065610917_ _g1065910920_))))
                         (_g1065610917_ _g1065910920_))))
                 (_g1065610917_ _g1065910920_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1065610917_
                                                      _g1065910920_))))
                                             (_g1065610917_ _g1065910920_))
                                         (_g1065610917_ _g1065910920_))
                                     (_g1065610917_ _g1065910920_))))
                             (_g1065610917_ _g1065910920_))))
                     (_g1065610917_ _g1065910920_))
                 (_g1065610917_ _g1065910920_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1065610917_ _g1065910920_))
                                             (_g1065610917_ _g1065910920_))
                                         (_g1065610917_ _g1065910920_))))
                                 (_g1065610917_ _g1065910920_))))
                         (_g1065610917_ _g1065910920_))
                     (_g1065610917_ _g1065910920_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1065610917_
                                                      _g1065910920_))
                                                 (_g1065610917_ _g1065910920_))
                                             (_g1065610917_ _g1065910920_))))
                                     (_g1065610917_ _g1065910920_))))
                             (_g1065610917_ _g1065910920_))
                         (_g1065610917_ _g1065910920_))))
                 (_g1065610917_ _g1065910920_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1065610917_
                                                      _g1065910920_))
                                                 (_g1065610917_
                                                  _g1065910920_))))
                                         (_g1065610917_ _g1065910920_))))
                                 (_g1065610917_ _g1065910920_))))
                         (_g1065610917_ _g1065910920_)))))
              (_g1065511097_ _stx10654_)))))))
  (define gxc#!alias::typedecl
    (lambda (_self10630_)
      (let ((_self1063110637_ _self10630_))
        (let ((_E1063310641_
               (lambda () (error '"No clause matching" _self1063110637_))))
          (let ((_K1063410646_
                 (lambda (_alias-id10644_)
                   (cons '@alias (cons _alias-id10644_ '())))))
            (if (##structure-instance-of?
                 _self1063110637_
                 (##type-id gxc#!alias::t))
                (let ((_e1063510649_ (##vector-ref _self1063110637_ '1)))
                  (let ((_alias-id10652_ _e1063510649_))
                    (_K1063410646_ _alias-id10652_)))
                (_E1063310641_)))))))
  (bind-method! gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f)
  (define gxc#!struct-type::typedecl
    (lambda (_self10574_)
      (let ((_self1057510586_ _self10574_))
        (let ((_E1057710590_
               (lambda () (error '"No clause matching" _self1057510586_))))
          (let ((_K1057810599_
                 (lambda (_plist10593_
                          _ctor10594_
                          _fields10595_
                          _super10596_
                          _type-id10597_)
                   (cons '@struct-type
                         (cons _type-id10597_
                               (cons _super10596_
                                     (cons _fields10595_
                                           (cons _ctor10594_
                                                 (cons _plist10593_
                                                       '())))))))))
            (if (##structure-instance-of?
                 _self1057510586_
                 (##type-id gxc#!struct-type::t))
                (let ((_e1057910602_ (##vector-ref _self1057510586_ '1)))
                  (let ((_type-id10605_ _e1057910602_))
                    (let ((_e1058010607_ (##vector-ref _self1057510586_ '2)))
                      (let ((_super10610_ _e1058010607_))
                        (let ((_e1058110612_
                               (##vector-ref _self1057510586_ '3)))
                          (let ((_fields10615_ _e1058110612_))
                            (let ((_e1058210617_
                                   (##vector-ref _self1057510586_ '4)))
                              (let ((_e1058310620_
                                     (##vector-ref _self1057510586_ '5)))
                                (let ((_ctor10623_ _e1058310620_))
                                  (let ((_e1058410625_
                                         (##vector-ref _self1057510586_ '6)))
                                    (let ((_plist10628_ _e1058410625_))
                                      (_K1057810599_
                                       _plist10628_
                                       _ctor10623_
                                       _fields10615_
                                       _super10610_
                                       _type-id10605_))))))))))))
                (_E1057710590_)))))))
  (bind-method! gxc#!struct-type::t 'typedecl gxc#!struct-type::typedecl '#f)
  (define gxc#!struct-pred::typedecl
    (lambda (_self10550_)
      (let ((_self1055110557_ _self10550_))
        (let ((_E1055310561_
               (lambda () (error '"No clause matching" _self1055110557_))))
          (let ((_K1055410566_
                 (lambda (_struct-t10564_)
                   (cons '@struct-pred (cons _struct-t10564_ '())))))
            (if (##structure-instance-of?
                 _self1055110557_
                 (##type-id gxc#!struct-pred::t))
                (let ((_e1055510569_ (##vector-ref _self1055110557_ '1)))
                  (let ((_struct-t10572_ _e1055510569_))
                    (_K1055410566_ _struct-t10572_)))
                (_E1055310561_)))))))
  (bind-method! gxc#!struct-pred::t 'typedecl gxc#!struct-pred::typedecl '#f)
  (define gxc#!struct-cons::typedecl
    (lambda (_self10526_)
      (let ((_self1052710533_ _self10526_))
        (let ((_E1052910537_
               (lambda () (error '"No clause matching" _self1052710533_))))
          (let ((_K1053010542_
                 (lambda (_struct-t10540_)
                   (cons '@struct-cons (cons _struct-t10540_ '())))))
            (if (##structure-instance-of?
                 _self1052710533_
                 (##type-id gxc#!struct-cons::t))
                (let ((_e1053110545_ (##vector-ref _self1052710533_ '1)))
                  (let ((_struct-t10548_ _e1053110545_))
                    (_K1053010542_ _struct-t10548_)))
                (_E1052910537_)))))))
  (bind-method! gxc#!struct-cons::t 'typedecl gxc#!struct-cons::typedecl '#f)
  (define gxc#!struct-getf::typedecl
    (lambda (_self10495_)
      (let ((_self1049610503_ _self10495_))
        (let ((_E1049810507_
               (lambda () (error '"No clause matching" _self1049610503_))))
          (let ((_K1049910513_
                 (lambda (_off10510_ _struct-t10511_)
                   (cons '@struct-getf
                         (cons _struct-t10511_ (cons _off10510_ '()))))))
            (if (##structure-instance-of?
                 _self1049610503_
                 (##type-id gxc#!struct-getf::t))
                (let ((_e1050010516_ (##vector-ref _self1049610503_ '1)))
                  (let ((_struct-t10519_ _e1050010516_))
                    (let ((_e1050110521_ (##vector-ref _self1049610503_ '2)))
                      (let ((_off10524_ _e1050110521_))
                        (_K1049910513_ _off10524_ _struct-t10519_)))))
                (_E1049810507_)))))))
  (bind-method! gxc#!struct-getf::t 'typedecl gxc#!struct-getf::typedecl '#f)
  (define gxc#!struct-setf::typedecl
    (lambda (_self10464_)
      (let ((_self1046510472_ _self10464_))
        (let ((_E1046710476_
               (lambda () (error '"No clause matching" _self1046510472_))))
          (let ((_K1046810482_
                 (lambda (_off10479_ _struct-t10480_)
                   (cons '@struct-setf
                         (cons _struct-t10480_ (cons _off10479_ '()))))))
            (if (##structure-instance-of?
                 _self1046510472_
                 (##type-id gxc#!struct-setf::t))
                (let ((_e1046910485_ (##vector-ref _self1046510472_ '1)))
                  (let ((_struct-t10488_ _e1046910485_))
                    (let ((_e1047010490_ (##vector-ref _self1046510472_ '2)))
                      (let ((_off10493_ _e1047010490_))
                        (_K1046810482_ _off10493_ _struct-t10488_)))))
                (_E1046710476_)))))))
  (bind-method! gxc#!struct-setf::t 'typedecl gxc#!struct-setf::typedecl '#f)
  (define gxc#!lambda::typedecl
    (lambda (_self10412_)
      (let ((_self1041310423_ _self10412_))
        (let ((_E1041510427_
               (lambda () (error '"No clause matching" _self1041310423_))))
          (let ((_K1041610438_
                 (lambda (_typedecl10430_
                          _inline10431_
                          _dispatch10432_
                          _arity10433_)
                   (if _inline10431_
                       (let ((_$e10435_ _typedecl10430_))
                         (if _$e10435_
                             _$e10435_
                             (error '"Cannot generate typedecl for inline rules")))
                       (cons '@lambda
                             (cons _arity10433_
                                   (cons _dispatch10432_ '())))))))
            (if (##structure-instance-of?
                 _self1041310423_
                 (##type-id gxc#!lambda::t))
                (let ((_e1041710441_ (##vector-ref _self1041310423_ '1)))
                  (let ((_e1041810444_ (##vector-ref _self1041310423_ '2)))
                    (let ((_arity10447_ _e1041810444_))
                      (let ((_e1041910449_ (##vector-ref _self1041310423_ '3)))
                        (let ((_dispatch10452_ _e1041910449_))
                          (let ((_e1042010454_
                                 (##vector-ref _self1041310423_ '4)))
                            (let ((_inline10457_ _e1042010454_))
                              (let ((_e1042110459_
                                     (##vector-ref _self1041310423_ '5)))
                                (let ((_typedecl10462_ _e1042110459_))
                                  (_K1041610438_
                                   _typedecl10462_
                                   _inline10457_
                                   _dispatch10452_
                                   _arity10447_))))))))))
                (_E1041510427_)))))))
  (bind-method! gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f)
  (define gxc#!case-lambda::typedecl
    (lambda (_self10345_)
      (let ((_clause-e10347_
             (lambda (_clause10377_)
               (let ((_clause1037810386_ _clause10377_))
                 (let ((_E1038010390_
                        (lambda ()
                          (error '"No clause matching" _clause1037810386_))))
                   (let ((_K1038110396_
                          (lambda (_dispatch10393_ _arity10394_)
                            (cons _arity10394_ (cons _dispatch10393_ '())))))
                     (if (##structure-instance-of?
                          _clause1037810386_
                          (##type-id gxc#!lambda::t))
                         (let ((_e1038210399_
                                (##vector-ref _clause1037810386_ '1)))
                           (let ((_e1038310402_
                                  (##vector-ref _clause1037810386_ '2)))
                             (let ((_arity10405_ _e1038310402_))
                               (let ((_e1038410407_
                                      (##vector-ref _clause1037810386_ '3)))
                                 (let ((_dispatch10410_ _e1038410407_))
                                   (_K1038110396_
                                    _dispatch10410_
                                    _arity10405_))))))
                         (_E1038010390_))))))))
        (let ((_self1034810355_ _self10345_))
          (let ((_E1035010359_
                 (lambda () (error '"No clause matching" _self1034810355_))))
            (let ((_K1035110366_
                   (lambda (_clauses10362_)
                     (let ((_clauses10364_
                            (map _clause-e10347_ _clauses10362_)))
                       (cons '@case-lambda _clauses10364_)))))
              (if (##structure-instance-of?
                   _self1034810355_
                   (##type-id gxc#!case-lambda::t))
                  (let ((_e1035210369_ (##vector-ref _self1034810355_ '1)))
                    (let ((_e1035310372_ (##vector-ref _self1034810355_ '2)))
                      (let ((_clauses10375_ _e1035310372_))
                        (_K1035110366_ _clauses10375_))))
                  (_E1035010359_))))))))
  (bind-method! gxc#!case-lambda::t 'typedecl gxc#!case-lambda::typedecl '#f)
  (define gxc#identifier-symbol
    (lambda (_stx10343_) (gxc#generate-runtime-binding-id _stx10343_))))
