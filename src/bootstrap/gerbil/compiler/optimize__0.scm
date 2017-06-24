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
    (lambda _$args19583_
      (apply make-struct-instance gxc#optimizer-info::t _$args19583_)))
  (define gxc#optimizer-info-type
    (make-struct-field-accessor gxc#optimizer-info::t '0))
  (define gxc#optimizer-info-ssxi
    (make-struct-field-accessor gxc#optimizer-info::t '1))
  (define gxc#optimizer-info-type-set!
    (make-struct-field-mutator gxc#optimizer-info::t '0))
  (define gxc#optimizer-info-ssxi-set!
    (make-struct-field-mutator gxc#optimizer-info::t '1))
  (define gxc#optimizer-info:::init!
    (lambda (_self19581_)
      (struct-instance-init!
       _self19581_
       (make-hash-table-eq)
       (make-hash-table-eq))))
  (bind-method! gxc#optimizer-info::t ':init! gxc#optimizer-info:::init! '#f)
  (define gxc#optimizer-info-init!
    (lambda ()
      (if (gxc#current-compile-optimizer-info)
          '#!void
          (gxc#current-compile-optimizer-info
           (let ((__obj19595 (make-object gxc#optimizer-info::t '2)))
             (begin (gxc#optimizer-info:::init! __obj19595) __obj19595))))))
  (define gxc#optimize!
    (lambda (_ctx19575_)
      (call-with-parameters
       (lambda ()
         (begin
           (gxc#optimizer-load-ssxi-deps _ctx19575_)
           (table-set!
            (##structure-ref
             (gxc#current-compile-optimizer-info)
             '2
             gxc#optimizer-info::t
             '#f)
            (##structure-ref _ctx19575_ '1 gx#expander-context::t '#f)
            '#t)
           (let ((_code19578_
                  (gxc#optimize-source
                   (##structure-ref _ctx19575_ '11 gx#module-context::t '#f))))
             (##structure-set!
              _ctx19575_
              _code19578_
              '11
              gx#module-context::t
              '#f))))
       gxc#current-compile-mutators
       (make-hash-table-eq)
       gxc#current-compile-local-type
       (make-hash-table-eq))))
  (define gxc#optimizer-load-ssxi-deps
    (lambda (_ctx19520_)
      (let ((_deps19522_
             (let ((_imports19566_
                    (##structure-ref _ctx19520_ '8 gx#module-context::t '#f)))
               (let ((_$e19568_
                      (gx#core-context-prelude__opt-lambda11357 _ctx19520_)))
                 (if _$e19568_
                     ((lambda (_g1957019572_)
                        (cons _g1957019572_ _imports19566_))
                      _$e19568_)
                     _imports19566_)))))
        ((letrec ((_lp19524_
                   (lambda (_rest19526_)
                     (let ((_rest1952719535_ _rest19526_))
                       (let ((_E1953019539_
                              (lambda ()
                                (error '"No clause matching"
                                       _rest1952719535_))))
                         (let ((_else1952919543_ (lambda () '#!void)))
                           (let ((_K1953119554_
                                  (lambda (_rest19546_ _hd19547_)
                                    (if (##structure-instance-of?
                                         _hd19547_
                                         'gx#module-context::t)
                                        (begin
                                          (if (table-ref
                                               (##structure-ref
                                                (gxc#current-compile-optimizer-info)
                                                '2
                                                gxc#optimizer-info::t
                                                '#f)
                                               (##structure-ref
                                                _hd19547_
                                                '1
                                                gx#expander-context::t
                                                '#f)
                                               '#f)
                                              '#!void
                                              (begin
                                                (let ((_$e19549_
                                                       (gx#core-context-prelude__opt-lambda11357
                                                        _hd19547_)))
                                                  (if _$e19549_
                                                      ((lambda (_pre19552_)
                                                         (_lp19524_
                                                          (cons _pre19552_
                                                                (##structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd19547_
                         '8
                         gx#module-context::t
                         '#f))))
               _$e19549_)
              (_lp19524_
               (##structure-ref _hd19547_ '8 gx#module-context::t '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (gxc#optimizer-load-ssxi
                                                 _hd19547_)))
                                          (_lp19524_ _rest19546_))
                                        (if (##structure-instance-of?
                                             _hd19547_
                                             'gx#prelude-context::t)
                                            (begin
                                              (if (table-ref
                                                   (##structure-ref
                                                    (gxc#current-compile-optimizer-info)
                                                    '2
                                                    gxc#optimizer-info::t
                                                    '#f)
                                                   (##structure-ref
                                                    _hd19547_
                                                    '1
                                                    gx#expander-context::t
                                                    '#f)
                                                   '#f)
                                                  '#!void
                                                  (begin
                                                    (_lp19524_
                                                     (##structure-ref
                                                      _hd19547_
                                                      '7
                                                      gx#prelude-context::t
                                                      '#f))
                                                    (gxc#optimizer-load-ssxi
                                                     _hd19547_)))
                                              (_lp19524_ _rest19546_))
                                            (if (##structure-direct-instance-of?
                                                 _hd19547_
                                                 'gx#module-import::t)
                                                (_lp19524_
                                                 (cons (##direct-structure-ref
                                                        _hd19547_
                                                        '1
                                                        gx#module-import::t
                                                        '#f)
                                                       _rest19546_))
                                                (if (##structure-direct-instance-of?
                                                     _hd19547_
                                                     'gx#module-export::t)
                                                    (_lp19524_
                                                     (cons (##direct-structure-ref
                                                            _hd19547_
                                                            '1
                                                            gx#module-export::t
                                                            '#f)
                                                           _rest19546_))
                                                    (if (##structure-direct-instance-of?
                                                         _hd19547_
                                                         'gx#import-set::t)
                                                        (_lp19524_
                                                         (cons (##direct-structure-ref
                                                                _hd19547_
                                                                '1
                                                                gx#import-set::t
                                                                '#f)
                                                               _rest19546_))
                                                        (error '"Unexpected module import"
                                                               _hd19547_)))))))))
                             (if (##pair? _rest1952719535_)
                                 (let ((_hd1953219557_
                                        (##car _rest1952719535_))
                                       (_tl1953319559_
                                        (##cdr _rest1952719535_)))
                                   (let ((_hd19562_ _hd1953219557_))
                                     (let ((_rest19564_ _tl1953319559_))
                                       (_K1953119554_ _rest19564_ _hd19562_))))
                                 (_else1952919543_)))))))))
           _lp19524_)
         _deps19522_))))
  (define gxc#optimizer-load-ssxi
    (lambda (_ctx19500_)
      (if (if (##structure-instance-of? _ctx19500_ 'gx#module-context::t)
              (list? (##structure-ref _ctx19500_ '7 gx#module-context::t '#f))
              '#f)
          '#!void
          (let ((_ht19502_
                 (##structure-ref
                  (gxc#current-compile-optimizer-info)
                  '2
                  gxc#optimizer-info::t
                  '#f)))
            (let ((_id19504_
                   (##structure-ref _ctx19500_ '1 gx#expander-context::t '#f)))
              (let ((_mod19506_ (table-ref _ht19502_ _id19504_ '#f)))
                (let ()
                  (let ((_$e19509_ _mod19506_))
                    (if _$e19509_
                        _$e19509_
                        (let ((_mod19512_
                               (gxc#optimizer-import-ssxi _ctx19500_)))
                          (let ((_val19517_
                                 (let ((_$e19514_ _mod19512_))
                                   (if _$e19514_ _$e19514_ '#!void))))
                            (let ()
                              (begin
                                (table-set! _ht19502_ _id19504_ _val19517_)
                                _val19517_)))))))))))))
  (define gxc#optimizer-import-ssxi
    (lambda (_ctx19477_)
      (let ((_catch-e19479_
             (lambda (_exn19498_)
               (begin
                 (if (gxc#current-compile-verbose)
                     (begin
                       (displayln
                        '"Failed to load ssxi module for "
                        (##structure-ref
                         _ctx19477_
                         '1
                         gx#expander-context::t
                         '#f))
                       (display-exception _exn19498_))
                     '#!void)
                 '#f))))
        (let ((_import-e19480_
               (lambda ()
                 (let ((_str-id19483_
                        (string-append
                         (symbol->string
                          (##structure-ref
                           _ctx19477_
                           '1
                           gx#expander-context::t
                           '#f))
                         '".ssxi")))
                   (let ((_artefact-path19491_
                          (let ((_odir1948419486_
                                 (gxc#current-compile-output-dir)))
                            (if _odir1948419486_
                                (let ((_odir19489_ _odir1948419486_))
                                  (path-expand
                                   (string-append _str-id19483_ '".ss")
                                   _odir19489_))
                                '#f))))
                     (let ((_library-path19493_
                            (string->symbol
                             (string-append '":" _str-id19483_))))
                       (let ((_ssxi-path19495_
                              (if (if _artefact-path19491_
                                      (file-exists? _artefact-path19491_)
                                      '#f)
                                  _artefact-path19491_
                                  _library-path19493_)))
                         (let ()
                           (begin
                             (gxc#verbose
                              '"Loading ssxi module "
                              _ssxi-path19495_)
                             (gx#import-module__opt-lambda11392
                              _ssxi-path19495_
                              '#t
                              '#t))))))))))
          (if (##structure-ref _ctx19477_ '1 gx#expander-context::t '#f)
              (with-exception-catcher _catch-e19479_ _import-e19480_)
              '#f)))))
  (define gxc#!type::t (make-struct-type 'gxc#!type::t '#f '1 '!type '() '#f))
  (define gxc#!type? (make-struct-predicate gxc#!type::t))
  (define gxc#make-!type
    (lambda _$args19474_
      (apply make-struct-instance gxc#!type::t _$args19474_)))
  (define gxc#!type-id (make-struct-field-accessor gxc#!type::t '0))
  (define gxc#!type-id-set! (make-struct-field-mutator gxc#!type::t '0))
  (define gxc#!alias::t
    (make-struct-type 'gxc#!alias::t gxc#!type::t '0 '!alias '() '#f))
  (define gxc#!alias? (make-struct-predicate gxc#!alias::t))
  (define gxc#make-!alias
    (lambda _$args19471_
      (apply make-struct-instance gxc#!alias::t _$args19471_)))
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
    (lambda _$args19468_
      (apply make-struct-instance gxc#!struct-type::t _$args19468_)))
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
    (lambda _$args19465_
      (apply make-struct-instance gxc#!procedure::t _$args19465_)))
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
    (lambda _$args19462_
      (apply make-struct-instance gxc#!struct-pred::t _$args19462_)))
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
    (lambda _$args19459_
      (apply make-struct-instance gxc#!struct-cons::t _$args19459_)))
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
    (lambda _$args19456_
      (apply make-struct-instance gxc#!struct-getf::t _$args19456_)))
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
    (lambda _$args19453_
      (apply make-struct-instance gxc#!struct-setf::t _$args19453_)))
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
    (lambda _$args19450_
      (apply make-struct-instance gxc#!lambda::t _$args19450_)))
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
    (lambda _$args19447_
      (apply make-struct-instance gxc#!case-lambda::t _$args19447_)))
  (define gxc#!case-lambda-clauses
    (make-struct-field-accessor gxc#!case-lambda::t '0))
  (define gxc#!case-lambda-clauses-set!
    (make-struct-field-mutator gxc#!case-lambda::t '0))
  (define gxc#!struct-type:::init!
    (lambda (_self19439_
             _id19440_
             _super19441_
             _fields19442_
             _xfields19443_
             _ctor19444_
             _plist19445_)
      (struct-instance-init!
       _self19439_
       _id19440_
       _super19441_
       _fields19442_
       _xfields19443_
       _ctor19444_
       _plist19445_
       '#f)))
  (bind-method! gxc#!struct-type::t ':init! gxc#!struct-type:::init! '#f)
  (begin
    (define gxc#!lambda:::init!__opt-lambda19403
      (lambda (_self19405_
               _id19406_
               _arity19407_
               _dispatch19408_
               _inline19409_
               _typedecl19410_)
        (struct-instance-init!
         _self19405_
         _id19406_
         _arity19407_
         _dispatch19408_
         _inline19409_
         _typedecl19410_)))
    (begin
      (define gxc#!lambda:::init!__0
        (lambda (_self19415_ _id19416_ _arity19417_ _dispatch19418_)
          (let ((_inline19420_ '#f))
            (let ((_typedecl19422_ '#f))
              (struct-instance-init!
               _self19415_
               _id19416_
               _arity19417_
               _dispatch19418_
               _inline19420_
               _typedecl19422_)))))
      (define gxc#!lambda:::init!__1
        (lambda (_self19424_
                 _id19425_
                 _arity19426_
                 _dispatch19427_
                 _inline19428_)
          (let ((_typedecl19430_ '#f))
            (struct-instance-init!
             _self19424_
             _id19425_
             _arity19426_
             _dispatch19427_
             _inline19428_
             _typedecl19430_))))
      (define gxc#!lambda:::init!
        (lambda _g19603_
          (let ((_g19602_ (length _g19603_)))
            (cond ((fx= _g19602_ 4) (apply gxc#!lambda:::init!__0 _g19603_))
                  ((fx= _g19602_ 5) (apply gxc#!lambda:::init!__1 _g19603_))
                  ((fx= _g19602_ 6) (apply struct-instance-init! _g19603_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#!lambda:::init!
                    _g19603_))))))))
  (bind-method! gxc#!lambda::t ':init! gxc#!lambda:::init! '#f)
  (define gxc#!struct-type-vtab
    (lambda (_type19397_)
      (let ((_$e19399_
             (##structure-ref _type19397_ '7 gxc#!struct-type::t '#f)))
        (if _$e19399_
            (values _$e19399_)
            (let ((_vtab19402_ (make-hash-table-eq)))
              (begin
                (##structure-set!
                 _type19397_
                 _vtab19402_
                 '7
                 gxc#!struct-type::t
                 '#f)
                _vtab19402_))))))
  (define gxc#!struct-type-lookup-method
    (lambda (_type19388_ _method19389_)
      (let ((_vtab1939019392_
             (##structure-ref _type19388_ '7 gxc#!struct-type::t '#f)))
        (if _vtab1939019392_
            (let ((_vtab19395_ _vtab1939019392_))
              (table-ref _vtab19395_ _method19389_ '#f))
            '#f))))
  (begin
    (define gxc#optimizer-declare-type!__opt-lambda19370
      (lambda (_sym19372_ _type19373_ _local?19374_)
        (begin
          (if (##structure-instance-of? _type19373_ 'gxc#!type::t)
              '#!void
              (error '"bad declaration: expected !type"
                     _sym19372_
                     _type19373_))
          (gxc#verbose
           '"declare-type "
           _sym19372_
           '" "
           (##vector->list _type19373_))
          (table-set!
           (if _local?19374_
               (gxc#current-compile-local-type)
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '1
                gxc#optimizer-info::t
                '#f))
           _sym19372_
           _type19373_))))
    (begin
      (define gxc#optimizer-declare-type!__0
        (lambda (_sym19379_ _type19380_)
          (let ((_local?19382_ '#f))
            (gxc#optimizer-declare-type!__opt-lambda19370
             _sym19379_
             _type19380_
             _local?19382_))))
      (define gxc#optimizer-declare-type!
        (lambda _g19605_
          (let ((_g19604_ (length _g19605_)))
            (cond ((fx= _g19604_ 2)
                   (apply gxc#optimizer-declare-type!__0 _g19605_))
                  ((fx= _g19604_ 3)
                   (apply gxc#optimizer-declare-type!__opt-lambda19370
                          _g19605_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#optimizer-declare-type!
                    _g19605_))))))))
  (begin
    (define gxc#optimizer-declare-method!__opt-lambda19346
      (lambda (_type-t19348_ _method19349_ _sym19350_ _rebind?19351_)
        (let ((_type19353_ (gxc#optimizer-resolve-type _type-t19348_)))
          (if (##structure-instance-of? _type19353_ 'gxc#!struct-type::t)
              (let ((_vtab19355_ (gxc#!struct-type-vtab _type19353_)))
                (if _rebind?19351_
                    (if (hash-key? _vtab19355_ _method19349_)
                        (gxc#verbose
                         '"declare-method: [warning] skip rebind on existing method"
                         _type-t19348_
                         '" "
                         _method19349_)
                        (gxc#verbose
                         '"declare-method: skip rebind method "
                         _type-t19348_
                         '" "
                         _method19349_))
                    (if (hash-key? _vtab19355_ _method19349_)
                        (error '"declare-method: duplicate method declaration")
                        (begin
                          (gxc#verbose
                           '"declare-method "
                           _type-t19348_
                           '" "
                           _method19349_
                           '" => "
                           _sym19350_)
                          (table-set! _vtab19355_ _method19349_ _sym19350_)))))
              (if (not _type19353_)
                  (gxc#verbose '"declare-method: unknown type " _type-t19348_)
                  (error '"declare-method: bad method declaration; no method table"
                         _type-t19348_
                         _type19353_))))))
    (begin
      (define gxc#optimizer-declare-method!__0
        (lambda (_type-t19360_ _method19361_ _sym19362_)
          (let ((_rebind?19364_ '#f))
            (gxc#optimizer-declare-method!__opt-lambda19346
             _type-t19360_
             _method19361_
             _sym19362_
             _rebind?19364_))))
      (define gxc#optimizer-declare-method!
        (lambda _g19607_
          (let ((_g19606_ (length _g19607_)))
            (cond ((fx= _g19606_ 3)
                   (apply gxc#optimizer-declare-method!__0 _g19607_))
                  ((fx= _g19606_ 4)
                   (apply gxc#optimizer-declare-method!__opt-lambda19346
                          _g19607_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#optimizer-declare-method!
                    _g19607_))))))))
  (define gxc#optimizer-lookup-type
    (lambda (_sym19336_)
      (let ((_$e19344_
             (let ((_ht1933719339_ (gxc#current-compile-local-type)))
               (if _ht1933719339_
                   (let ((_ht19342_ _ht1933719339_))
                     (table-ref _ht19342_ _sym19336_ '#f))
                   '#f))))
        (if _$e19344_
            _$e19344_
            (table-ref
             (##structure-ref
              (gxc#current-compile-optimizer-info)
              '1
              gxc#optimizer-info::t
              '#f)
             _sym19336_
             '#f)))))
  (define gxc#optimizer-resolve-type
    (lambda (_sym19328_)
      (let ((_type1932919331_ (gxc#optimizer-lookup-type _sym19328_)))
        (if _type1932919331_
            (let ((_type19334_ _type1932919331_))
              (if (##structure-instance-of? _type19334_ 'gxc#!alias::t)
                  (gxc#optimizer-resolve-type
                   (##structure-ref _type19334_ '1 gxc#!type::t '#f))
                  _type19334_))
            '#f))))
  (define gxc#optimizer-lookup-method
    (lambda (_type-t19323_ _method19324_)
      (let ((_type19326_ (gxc#optimizer-resolve-type _type-t19323_)))
        (if (##structure-instance-of? _type19326_ 'gxc#!struct-type::t)
            (gxc#!struct-type-lookup-method _type19326_ _method19324_)
            '#f))))
  (define gxc#optimize-source
    (lambda (_stx19319_)
      (begin
        (gxc#apply-collect-mutators _stx19319_)
        (let ((_stx19321_ (gxc#apply-lift-top-lambdas _stx19319_)))
          (begin
            (gxc#apply-collect-type-info _stx19321_)
            (gxc#apply-optimize-call _stx19321_))))))
  (define gxc#&false-expression
    (make-promise
     (lambda ()
       (let ((_tbl19316_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl19316_ '%#lambda false)
           (table-set! _tbl19316_ '%#case-lambda false)
           (table-set! _tbl19316_ '%#let-values false)
           (table-set! _tbl19316_ '%#letrec-values false)
           (table-set! _tbl19316_ '%#letrec*-values false)
           (table-set! _tbl19316_ '%#quote false)
           (table-set! _tbl19316_ '%#quote-syntax false)
           (table-set! _tbl19316_ '%#call false)
           (table-set! _tbl19316_ '%#if false)
           (table-set! _tbl19316_ '%#ref false)
           (table-set! _tbl19316_ '%#set! false)
           (table-set! _tbl19316_ '%#struct-instance? false)
           (table-set! _tbl19316_ '%#struct-direct-instance? false)
           (table-set! _tbl19316_ '%#struct-ref false)
           (table-set! _tbl19316_ '%#struct-set! false)
           (table-set! _tbl19316_ '%#struct-direct-ref false)
           (table-set! _tbl19316_ '%#struct-direct-set! false)
           _tbl19316_)))))
  (define gxc#&false-special-form
    (make-promise
     (lambda ()
       (let ((_tbl19312_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl19312_ '%#begin false)
           (table-set! _tbl19312_ '%#begin-syntax false)
           (table-set! _tbl19312_ '%#begin-foreign false)
           (table-set! _tbl19312_ '%#module false)
           (table-set! _tbl19312_ '%#import false)
           (table-set! _tbl19312_ '%#export false)
           (table-set! _tbl19312_ '%#provide false)
           (table-set! _tbl19312_ '%#extern false)
           (table-set! _tbl19312_ '%#define-values false)
           (table-set! _tbl19312_ '%#define-syntax false)
           (table-set! _tbl19312_ '%#define-alias false)
           (table-set! _tbl19312_ '%#declare false)
           _tbl19312_)))))
  (define gxc#&false
    (make-promise
     (lambda ()
       (let ((_tbl19308_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl19308_ (force gxc#&false-special-form))
           (hash-copy! _tbl19308_ (force gxc#&false-expression))
           _tbl19308_)))))
  (define gxc#&identity-expression
    (make-promise
     (lambda ()
       (let ((_tbl19304_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl19304_ '%#lambda gxc#xform-identity)
           (table-set! _tbl19304_ '%#case-lambda gxc#xform-identity)
           (table-set! _tbl19304_ '%#let-values gxc#xform-identity)
           (table-set! _tbl19304_ '%#letrec-values gxc#xform-identity)
           (table-set! _tbl19304_ '%#letrec*-values gxc#xform-identity)
           (table-set! _tbl19304_ '%#quote gxc#xform-identity)
           (table-set! _tbl19304_ '%#quote-syntax gxc#xform-identity)
           (table-set! _tbl19304_ '%#call gxc#xform-identity)
           (table-set! _tbl19304_ '%#if gxc#xform-identity)
           (table-set! _tbl19304_ '%#ref gxc#xform-identity)
           (table-set! _tbl19304_ '%#set! gxc#xform-identity)
           (table-set! _tbl19304_ '%#struct-instance? gxc#xform-identity)
           (table-set!
            _tbl19304_
            '%#struct-direct-instance?
            gxc#xform-identity)
           (table-set! _tbl19304_ '%#struct-ref gxc#xform-identity)
           (table-set! _tbl19304_ '%#struct-set! gxc#xform-identity)
           (table-set! _tbl19304_ '%#struct-direct-ref gxc#xform-identity)
           (table-set! _tbl19304_ '%#struct-direct-set! gxc#xform-identity)
           _tbl19304_)))))
  (define gxc#&identity-special-form
    (make-promise
     (lambda ()
       (let ((_tbl19300_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl19300_ '%#begin gxc#xform-identity)
           (table-set! _tbl19300_ '%#begin-syntax gxc#xform-identity)
           (table-set! _tbl19300_ '%#begin-foreign gxc#xform-identity)
           (table-set! _tbl19300_ '%#module gxc#xform-identity)
           (table-set! _tbl19300_ '%#import gxc#xform-identity)
           (table-set! _tbl19300_ '%#export gxc#xform-identity)
           (table-set! _tbl19300_ '%#provide gxc#xform-identity)
           (table-set! _tbl19300_ '%#extern gxc#xform-identity)
           (table-set! _tbl19300_ '%#define-values gxc#xform-identity)
           (table-set! _tbl19300_ '%#define-syntax gxc#xform-identity)
           (table-set! _tbl19300_ '%#define-alias gxc#xform-identity)
           (table-set! _tbl19300_ '%#declare gxc#xform-identity)
           _tbl19300_)))))
  (define gxc#&identity
    (make-promise
     (lambda ()
       (let ((_tbl19296_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl19296_ (force gxc#&identity-special-form))
           (hash-copy! _tbl19296_ (force gxc#&identity-expression))
           _tbl19296_)))))
  (define gxc#&basic-xform-expression
    (make-promise
     (lambda ()
       (let ((_tbl19292_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl19292_ '%#lambda gxc#xform-lambda%)
           (table-set! _tbl19292_ '%#case-lambda gxc#xform-case-lambda%)
           (table-set! _tbl19292_ '%#let-values gxc#xform-let-values%)
           (table-set! _tbl19292_ '%#letrec-values gxc#xform-let-values%)
           (table-set! _tbl19292_ '%#letrec*-values gxc#xform-let-values%)
           (table-set! _tbl19292_ '%#quote gxc#xform-identity)
           (table-set! _tbl19292_ '%#quote-syntax gxc#xform-identity)
           (table-set! _tbl19292_ '%#call gxc#xform-operands)
           (table-set! _tbl19292_ '%#if gxc#xform-operands)
           (table-set! _tbl19292_ '%#ref gxc#xform-identity)
           (table-set! _tbl19292_ '%#set! gxc#xform-setq%)
           (table-set! _tbl19292_ '%#struct-instance? gxc#xform-operands)
           (table-set!
            _tbl19292_
            '%#struct-direct-instance?
            gxc#xform-operands)
           (table-set! _tbl19292_ '%#struct-ref gxc#xform-operands)
           (table-set! _tbl19292_ '%#struct-set! gxc#xform-operands)
           (table-set! _tbl19292_ '%#struct-direct-ref gxc#xform-operands)
           (table-set! _tbl19292_ '%#struct-direct-set! gxc#xform-operands)
           _tbl19292_)))))
  (define gxc#&basic-xform
    (make-promise
     (lambda ()
       (let ((_tbl19288_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl19288_ (force gxc#&basic-xform-expression))
           (hash-copy! _tbl19288_ (force gxc#&identity))
           (table-set! _tbl19288_ '%#begin gxc#xform-begin%)
           (table-set! _tbl19288_ '%#module gxc#xform-module%)
           (table-set! _tbl19288_ '%#define-values gxc#xform-define-values%)
           _tbl19288_)))))
  (define gxc#&collect-mutators
    (make-promise
     (lambda ()
       (let ((_tbl19284_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl19284_ (force gxc#&void))
           (table-set! _tbl19284_ '%#begin gxc#collect-begin%)
           (table-set! _tbl19284_ '%#module gxc#collect-module%)
           (table-set! _tbl19284_ '%#lambda gxc#collect-body-lambda%)
           (table-set! _tbl19284_ '%#case-lambda gxc#collect-body-case-lambda%)
           (table-set! _tbl19284_ '%#let-values gxc#collect-body-let-values%)
           (table-set!
            _tbl19284_
            '%#letrec-values
            gxc#collect-body-let-values%)
           (table-set!
            _tbl19284_
            '%#letrec*-values
            gxc#collect-body-let-values%)
           (table-set! _tbl19284_ '%#call gxc#collect-operands)
           (table-set! _tbl19284_ '%#if gxc#collect-operands)
           (table-set! _tbl19284_ '%#set! gxc#collect-mutators-setq%)
           (table-set! _tbl19284_ '%#struct-instance? gxc#collect-operands)
           (table-set!
            _tbl19284_
            '%#struct-direct-instance?
            gxc#collect-operands)
           (table-set! _tbl19284_ '%#struct-ref gxc#collect-operands)
           (table-set! _tbl19284_ '%#struct-set! gxc#collect-operands)
           (table-set! _tbl19284_ '%#struct-direct-ref gxc#collect-operands)
           (table-set! _tbl19284_ '%#struct-direct-set! gxc#collect-operands)
           _tbl19284_)))))
  (define gxc#apply-collect-mutators
    (lambda (_stx19277_ . _args19279_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx19277_ _args19279_))
       gxc#current-compile-methods
       (force gxc#&collect-mutators))))
  (define gxc#&lift-top-lambdas
    (make-promise
     (lambda ()
       (let ((_tbl19274_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl19274_ (force gxc#&basic-xform))
           (table-set!
            _tbl19274_
            '%#define-values
            gxc#lift-top-lambda-define-values%)
           (table-set!
            _tbl19274_
            '%#let-values
            gxc#lift-top-lambda-let-values%)
           (table-set!
            _tbl19274_
            '%#letrec-values
            gxc#lift-top-lambda-letrec-values%)
           (table-set!
            _tbl19274_
            '%#letrec*-values
            gxc#lift-top-lambda-letrec-values%)
           _tbl19274_)))))
  (define gxc#apply-lift-top-lambdas
    (lambda (_stx19267_ . _args19269_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx19267_ _args19269_))
       gxc#current-compile-methods
       (force gxc#&lift-top-lambdas))))
  (define gxc#&expression-subst
    (make-promise
     (lambda ()
       (let ((_tbl19264_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl19264_ (force gxc#&basic-xform-expression))
           (table-set! _tbl19264_ '%#begin gxc#xform-begin%)
           (table-set! _tbl19264_ '%#ref gxc#expression-subst-ref%)
           _tbl19264_)))))
  (define gxc#apply-expression-subst
    (lambda (_stx19257_ . _args19259_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx19257_ _args19259_))
       gxc#current-compile-methods
       (force gxc#&expression-subst))))
  (define gxc#&collect-type-info
    (make-promise
     (lambda ()
       (let ((_tbl19254_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl19254_ (force gxc#&void))
           (table-set! _tbl19254_ '%#begin gxc#collect-begin%)
           (table-set! _tbl19254_ '%#module gxc#collect-module%)
           (table-set!
            _tbl19254_
            '%#define-values
            gxc#collect-type-define-values%)
           (table-set! _tbl19254_ '%#lambda gxc#collect-body-lambda%)
           (table-set! _tbl19254_ '%#case-lambda gxc#collect-body-case-lambda%)
           (table-set! _tbl19254_ '%#let-values gxc#collect-type-let-values%)
           (table-set!
            _tbl19254_
            '%#letrec-values
            gxc#collect-type-let-values%)
           (table-set!
            _tbl19254_
            '%#letrec*-values
            gxc#collect-type-let-values%)
           (table-set! _tbl19254_ '%#call gxc#collect-type-call%)
           (table-set! _tbl19254_ '%#if gxc#collect-operands)
           (table-set! _tbl19254_ '%#set! gxc#collect-body-setq%)
           _tbl19254_)))))
  (define gxc#apply-collect-type-info
    (lambda (_stx19247_ . _args19249_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx19247_ _args19249_))
       gxc#current-compile-methods
       (force gxc#&collect-type-info))))
  (define gxc#&basic-expression-type
    (make-promise
     (lambda ()
       (let ((_tbl19244_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl19244_ (force gxc#&false))
           (table-set! _tbl19244_ '%#begin gxc#basic-expression-type-begin%)
           (table-set! _tbl19244_ '%#lambda gxc#basic-expression-type-lambda%)
           (table-set!
            _tbl19244_
            '%#case-lambda
            gxc#basic-expression-type-case-lambda%)
           (table-set! _tbl19244_ '%#call gxc#basic-expression-type-call%)
           (table-set! _tbl19244_ '%#ref gxc#basic-expression-type-ref%)
           _tbl19244_)))))
  (define gxc#apply-basic-expression-type
    (lambda (_stx19237_ . _args19239_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx19237_ _args19239_))
       gxc#current-compile-methods
       (force gxc#&basic-expression-type))))
  (define gxc#&optimize-call
    (make-promise
     (lambda ()
       (let ((_tbl19234_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl19234_ (force gxc#&basic-xform))
           (table-set! _tbl19234_ '%#call gxc#optimize-call%)
           _tbl19234_)))))
  (define gxc#apply-optimize-call
    (lambda (_stx19227_ . _args19229_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx19227_ _args19229_))
       gxc#current-compile-methods
       (force gxc#&optimize-call))))
  (define gxc#&generate-ssxi
    (make-promise
     (lambda ()
       (let ((_tbl19224_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl19224_ (force gxc#&generate-runtime-empty))
           (table-set! _tbl19224_ '%#begin gxc#generate-runtime-begin%)
           (table-set! _tbl19224_ '%#module gxc#generate-ssxi-module%)
           (table-set!
            _tbl19224_
            '%#define-values
            gxc#generate-ssxi-define-values%)
           (table-set! _tbl19224_ '%#call gxc#generate-ssxi-call%)
           _tbl19224_)))))
  (define gxc#apply-generate-ssxi
    (lambda (_stx19217_ . _args19219_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx19217_ _args19219_))
       gxc#current-compile-methods
       (force gxc#&generate-ssxi))))
  (define gxc#xform-identity (lambda (_stx19214_ . _args19215_) _stx19214_))
  (define gxc#xform-wrap-source
    (lambda (_stx19211_ _src-stx19212_)
      (gx#stx-wrap-source _stx19211_ (gx#stx-source _src-stx19212_))))
  (define gxc#xform-apply-compile-e
    (lambda (_args19205_)
      (lambda (_g1920619208_)
        (apply gxc#compile-e _g1920619208_ _args19205_))))
  (define gxc#xform-begin%
    (lambda (_stx19164_ . _args19165_)
      (let ((_g1916719177_
             (lambda (_g1916819174_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1916819174_))))
        (let ((_g1916619202_
               (lambda (_g1916819180_)
                 (if (gx#stx-pair? _g1916819180_)
                     (let ((_e1917019182_ (gx#stx-e _g1916819180_)))
                       (let ((_hd1917119185_ (##car _e1917019182_))
                             (_tl1917219187_ (##cdr _e1917019182_)))
                         ((lambda (_L19190_)
                            (let ((_forms19200_
                                   (map (gxc#xform-apply-compile-e _args19165_)
                                        _L19190_)))
                              (gxc#xform-wrap-source
                               (cons '%#begin _forms19200_)
                               _stx19164_)))
                          _tl1917219187_)))
                     (_g1916719177_ _g1916819180_)))))
          (_g1916619202_ _stx19164_)))))
  (define gxc#xform-module%
    (lambda (_stx19101_ . _args19102_)
      (let ((_g1910419118_
             (lambda (_g1910519115_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1910519115_))))
        (let ((_g1910319161_
               (lambda (_g1910519121_)
                 (if (gx#stx-pair? _g1910519121_)
                     (let ((_e1910819123_ (gx#stx-e _g1910519121_)))
                       (let ((_hd1910919126_ (##car _e1910819123_))
                             (_tl1911019128_ (##cdr _e1910819123_)))
                         (if (gx#stx-pair? _tl1911019128_)
                             (let ((_e1911119131_ (gx#stx-e _tl1911019128_)))
                               (let ((_hd1911219134_ (##car _e1911119131_))
                                     (_tl1911319136_ (##cdr _e1911119131_)))
                                 ((lambda (_L19139_ _L19140_)
                                    (let ((_ctx19153_
                                           (gx#syntax-local-e__0 _L19140_)))
                                      (let ((_code19155_
                                             (##structure-ref
                                              _ctx19153_
                                              '11
                                              gx#module-context::t
                                              '#f)))
                                        (let ((_code19158_
                                               (call-with-parameters
                                                (lambda ()
                                                  (apply gxc#compile-e
                                                         _code19155_
                                                         _args19102_))
                                                gx#current-expander-context
                                                _ctx19153_)))
                                          (let ()
                                            (begin
                                              (##structure-set!
                                               _ctx19153_
                                               _code19158_
                                               '11
                                               gx#module-context::t
                                               '#f)
                                              (gxc#xform-wrap-source
                                               (cons '%#module
                                                     (cons _L19140_
                                                           (cons _code19158_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _stx19101_)))))))
                                  _tl1911319136_
                                  _hd1911219134_)))
                             (_g1910419118_ _g1910519121_))))
                     (_g1910419118_ _g1910519121_)))))
          (_g1910319161_ _stx19101_)))))
  (define gxc#xform-define-values%
    (lambda (_stx19031_ . _args19032_)
      (let ((_g1903419051_
             (lambda (_g1903519048_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1903519048_))))
        (let ((_g1903319098_
               (lambda (_g1903519054_)
                 (if (gx#stx-pair? _g1903519054_)
                     (let ((_e1903819056_ (gx#stx-e _g1903519054_)))
                       (let ((_hd1903919059_ (##car _e1903819056_))
                             (_tl1904019061_ (##cdr _e1903819056_)))
                         (if (gx#stx-pair? _tl1904019061_)
                             (let ((_e1904119064_ (gx#stx-e _tl1904019061_)))
                               (let ((_hd1904219067_ (##car _e1904119064_))
                                     (_tl1904319069_ (##cdr _e1904119064_)))
                                 (if (gx#stx-pair? _tl1904319069_)
                                     (let ((_e1904419072_
                                            (gx#stx-e _tl1904319069_)))
                                       (let ((_hd1904519075_
                                              (##car _e1904419072_))
                                             (_tl1904619077_
                                              (##cdr _e1904419072_)))
                                         (if (gx#stx-null? _tl1904619077_)
                                             ((lambda (_L19080_ _L19081_)
                                                (let ((_expr19096_
                                                       (apply gxc#compile-e
                                                              _L19080_
                                                              _args19032_)))
                                                  (gxc#xform-wrap-source
                                                   (cons '%#define-values
                                                         (cons _L19081_
                                                               (cons _expr19096_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _stx19031_)))
                                              _hd1904519075_
                                              _hd1904219067_)
                                             (_g1903419051_ _g1903519054_))))
                                     (_g1903419051_ _g1903519054_))))
                             (_g1903419051_ _g1903519054_))))
                     (_g1903419051_ _g1903519054_)))))
          (_g1903319098_ _stx19031_)))))
  (define gxc#xform-lambda%
    (lambda (_stx18974_ . _args18975_)
      (let ((_g1897718991_
             (lambda (_g1897818988_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1897818988_))))
        (let ((_g1897619028_
               (lambda (_g1897818994_)
                 (if (gx#stx-pair? _g1897818994_)
                     (let ((_e1898118996_ (gx#stx-e _g1897818994_)))
                       (let ((_hd1898218999_ (##car _e1898118996_))
                             (_tl1898319001_ (##cdr _e1898118996_)))
                         (if (gx#stx-pair? _tl1898319001_)
                             (let ((_e1898419004_ (gx#stx-e _tl1898319001_)))
                               (let ((_hd1898519007_ (##car _e1898419004_))
                                     (_tl1898619009_ (##cdr _e1898419004_)))
                                 ((lambda (_L19012_ _L19013_)
                                    (let ((_body19026_
                                           (map (gxc#xform-apply-compile-e
                                                 _args18975_)
                                                _L19012_)))
                                      (gxc#xform-wrap-source
                                       (cons '%#lambda
                                             (cons _L19013_ _body19026_))
                                       _stx18974_)))
                                  _tl1898619009_
                                  _hd1898519007_)))
                             (_g1897718991_ _g1897818994_))))
                     (_g1897718991_ _g1897818994_)))))
          (_g1897619028_ _stx18974_)))))
  (define gxc#xform-case-lambda%
    (lambda (_stx18887_ . _args18888_)
      (let ((_clause-e18890_
             (lambda (_clause18931_)
               (let ((_g1893318944_
                      (lambda (_g1893418941_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax"
                         _g1893418941_))))
                 (let ((_g1893218971_
                        (lambda (_g1893418947_)
                          (if (gx#stx-pair? _g1893418947_)
                              (let ((_e1893718949_ (gx#stx-e _g1893418947_)))
                                (let ((_hd1893818952_ (##car _e1893718949_))
                                      (_tl1893918954_ (##cdr _e1893718949_)))
                                  ((lambda (_L18957_ _L18958_)
                                     (let ((_body18969_
                                            (map (gxc#xform-apply-compile-e
                                                  _args18888_)
                                                 _L18957_)))
                                       (cons _L18958_ _body18969_)))
                                   _tl1893918954_
                                   _hd1893818952_)))
                              (_g1893318944_ _g1893418947_)))))
                   (_g1893218971_ _clause18931_))))))
        (let ((_g1889218902_
               (lambda (_g1889318899_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1889318899_))))
          (let ((_g1889118928_
                 (lambda (_g1889318905_)
                   (if (gx#stx-pair? _g1889318905_)
                       (let ((_e1889518907_ (gx#stx-e _g1889318905_)))
                         (let ((_hd1889618910_ (##car _e1889518907_))
                               (_tl1889718912_ (##cdr _e1889518907_)))
                           ((lambda (_L18915_)
                              (let ((_clauses18926_
                                     (map _clause-e18890_ _L18915_)))
                                (gxc#xform-wrap-source
                                 (cons '%#case-lambda _clauses18926_)
                                 _stx18887_)))
                            _tl1889718912_)))
                       (_g1889218902_ _g1889318905_)))))
            (_g1889118928_ _stx18887_))))))
  (define gxc#xform-let-values%
    (lambda (_stx18681_ . _args18682_)
      (let ((_g1868418717_
             (lambda (_g1868518714_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1868518714_))))
        (let ((_g1868318884_
               (lambda (_g1868518720_)
                 (if (gx#stx-pair? _g1868518720_)
                     (let ((_e1869018722_ (gx#stx-e _g1868518720_)))
                       (let ((_hd1869118725_ (##car _e1869018722_))
                             (_tl1869218727_ (##cdr _e1869018722_)))
                         (if (gx#stx-pair? _tl1869218727_)
                             (let ((_e1869318730_ (gx#stx-e _tl1869218727_)))
                               (let ((_hd1869418733_ (##car _e1869318730_))
                                     (_tl1869518735_ (##cdr _e1869318730_)))
                                 (if (gx#stx-pair/null? _hd1869418733_)
                                     (if (fx>= (gx#stx-length _hd1869418733_)
                                               '0)
                                         (let ((_g19608_
                                                (gx#syntax-split-splice
                                                 _hd1869418733_
                                                 '0)))
                                           (begin
                                             (let ((_g19609_
                                                    (values-count _g19608_)))
                                               (if (not (fx= _g19609_ 2))
                                                   (error "Context expects 2 values"
                                                          _g19609_)))
                                             (let ((_target1869618738_
                                                    (values-ref _g19608_ 0))
                                                   (_tl1869818740_
                                                    (values-ref _g19608_ 1)))
                                               (if (gx#stx-null?
                                                    _tl1869818740_)
                                                   (letrec ((_loop1869918743_
                                                             (lambda (_hd1869718746_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _expr1870318748_
                              _hd1870418750_)
                       (if (gx#stx-pair? _hd1869718746_)
                           (let ((_e1870018753_ (gx#stx-e _hd1869718746_)))
                             (let ((_lp-hd1870118756_ (##car _e1870018753_))
                                   (_lp-tl1870218758_ (##cdr _e1870018753_)))
                               (if (gx#stx-pair? _lp-hd1870118756_)
                                   (let ((_e1870718761_
                                          (gx#stx-e _lp-hd1870118756_)))
                                     (let ((_hd1870818764_
                                            (##car _e1870718761_))
                                           (_tl1870918766_
                                            (##cdr _e1870718761_)))
                                       (if (gx#stx-pair? _tl1870918766_)
                                           (let ((_e1871018769_
                                                  (gx#stx-e _tl1870918766_)))
                                             (let ((_hd1871118772_
                                                    (##car _e1871018769_))
                                                   (_tl1871218774_
                                                    (##cdr _e1871018769_)))
                                               (if (gx#stx-null?
                                                    _tl1871218774_)
                                                   (_loop1869918743_
                                                    _lp-tl1870218758_
                                                    (cons _hd1871118772_
                                                          _expr1870318748_)
                                                    (cons _hd1870818764_
                                                          _hd1870418750_))
                                                   (_g1868418717_
                                                    _g1868518720_))))
                                           (_g1868418717_ _g1868518720_))))
                                   (_g1868418717_ _g1868518720_))))
                           (let ((_expr1870518777_ (reverse _expr1870318748_))
                                 (_hd1870618779_ (reverse _hd1870418750_)))
                             ((lambda (_L18782_ _L18783_ _L18784_ _L18785_)
                                (let ((_g1880418820_
                                       (lambda (_g1880518817_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g1880518817_))))
                                  (let ((_g1880318874_
                                         (lambda (_g1880518823_)
                                           (if (gx#stx-pair/null?
                                                _g1880518823_)
                                               (if (fx>= (gx#stx-length
                                                          _g1880518823_)
                                                         '0)
                                                   (let ((_g19610_
                                                          (gx#syntax-split-splice
                                                           _g1880518823_
                                                           '0)))
                                                     (begin
                                                       (let ((_g19611_
                                                              (values-count
                                                               _g19610_)))
                                                         (if (not (fx= _g19611_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g19611_)))
               (let ((_target1880718825_ (values-ref _g19610_ 0))
                     (_tl1880918827_ (values-ref _g19610_ 1)))
                 (if (gx#stx-null? _tl1880918827_)
                     (letrec ((_loop1881018830_
                               (lambda (_hd1880818833_ _expr1881418835_)
                                 (if (gx#stx-pair? _hd1880818833_)
                                     (let ((_e1881118838_
                                            (gx#syntax-e _hd1880818833_)))
                                       (let ((_lp-hd1881218841_
                                              (##car _e1881118838_))
                                             (_lp-tl1881318843_
                                              (##cdr _e1881118838_)))
                                         (_loop1881018830_
                                          _lp-tl1881318843_
                                          (cons _lp-hd1881218841_
                                                _expr1881418835_))))
                                     (let ((_expr1881518846_
                                            (reverse _expr1881418835_)))
                                       ((lambda (_L18849_)
                                          (let ()
                                            (let ((_body18862_
                                                   (map (gxc#xform-apply-compile-e
                                                         _args18682_)
                                                        _L18782_)))
                                              (gxc#xform-wrap-source
                                               (cons _L18785_
                                                     (cons (begin
                                                             (gx#syntax-check-splice-targets
                                                              _L18849_
                                                              _L18784_)
                                                             (foldr (lambda (_g1886318867_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g1886418869_
                                     _g1886518871_)
                              (cons (cons _g1886418869_
                                          (cons _g1886318867_ '()))
                                    _g1886518871_))
                            '()
                            _L18849_
                            _L18784_))
                   _body18862_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _stx18681_))))
                                        _expr1881518846_))))))
                       (_loop1881018830_ _target1880718825_ '()))
                     (_g1880418820_ _g1880518823_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1880418820_
                                                    _g1880518823_))
                                               (_g1880418820_
                                                _g1880518823_)))))
                                    (_g1880318874_
                                     (map (gxc#xform-apply-compile-e
                                           _args18682_)
                                          (begin
                                            '#!void
                                            (foldr1 (lambda (_g1887618879_
                                                             _g1887718881_)
                                                      (cons _g1887618879_
                                                            _g1887718881_))
                                                    '()
                                                    _L18783_)))))))
                              _tl1869518735_
                              _expr1870518777_
                              _hd1870618779_
                              _hd1869118725_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop1869918743_
                                                      _target1869618738_
                                                      '()
                                                      '()))
                                                   (_g1868418717_
                                                    _g1868518720_)))))
                                         (_g1868418717_ _g1868518720_))
                                     (_g1868418717_ _g1868518720_))))
                             (_g1868418717_ _g1868518720_))))
                     (_g1868418717_ _g1868518720_)))))
          (_g1868318884_ _stx18681_)))))
  (define gxc#xform-operands
    (lambda (_stx18637_ . _args18638_)
      (let ((_g1864018651_
             (lambda (_g1864118648_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1864118648_))))
        (let ((_g1863918678_
               (lambda (_g1864118654_)
                 (if (gx#stx-pair? _g1864118654_)
                     (let ((_e1864418656_ (gx#stx-e _g1864118654_)))
                       (let ((_hd1864518659_ (##car _e1864418656_))
                             (_tl1864618661_ (##cdr _e1864418656_)))
                         ((lambda (_L18664_ _L18665_)
                            (let ((_rands18676_
                                   (map (gxc#xform-apply-compile-e _args18638_)
                                        _L18664_)))
                              (gxc#xform-wrap-source
                               (cons _L18665_ _rands18676_)
                               _stx18637_)))
                          _tl1864618661_
                          _hd1864518659_)))
                     (_g1864018651_ _g1864118654_)))))
          (_g1863918678_ _stx18637_)))))
  (define gxc#xform-call% gxc#xform-operands)
  (define gxc#xform-setq%
    (lambda (_stx18567_ . _args18568_)
      (let ((_g1857018587_
             (lambda (_g1857118584_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1857118584_))))
        (let ((_g1856918634_
               (lambda (_g1857118590_)
                 (if (gx#stx-pair? _g1857118590_)
                     (let ((_e1857418592_ (gx#stx-e _g1857118590_)))
                       (let ((_hd1857518595_ (##car _e1857418592_))
                             (_tl1857618597_ (##cdr _e1857418592_)))
                         (if (gx#stx-pair? _tl1857618597_)
                             (let ((_e1857718600_ (gx#stx-e _tl1857618597_)))
                               (let ((_hd1857818603_ (##car _e1857718600_))
                                     (_tl1857918605_ (##cdr _e1857718600_)))
                                 (if (gx#stx-pair? _tl1857918605_)
                                     (let ((_e1858018608_
                                            (gx#stx-e _tl1857918605_)))
                                       (let ((_hd1858118611_
                                              (##car _e1858018608_))
                                             (_tl1858218613_
                                              (##cdr _e1858018608_)))
                                         (if (gx#stx-null? _tl1858218613_)
                                             ((lambda (_L18616_ _L18617_)
                                                (let ((_expr18632_
                                                       (apply gxc#compile-e
                                                              _L18616_
                                                              _args18568_)))
                                                  (gxc#xform-wrap-source
                                                   (cons '%#set!
                                                         (cons _L18617_
                                                               (cons _expr18632_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _stx18567_)))
                                              _hd1858118611_
                                              _hd1857818603_)
                                             (_g1857018587_ _g1857118590_))))
                                     (_g1857018587_ _g1857118590_))))
                             (_g1857018587_ _g1857118590_))))
                     (_g1857018587_ _g1857118590_)))))
          (_g1856918634_ _stx18567_)))))
  (define gxc#collect-mutators-setq%
    (lambda (_stx18498_)
      (let ((_g1850018517_
             (lambda (_g1850118514_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1850118514_))))
        (let ((_g1849918564_
               (lambda (_g1850118520_)
                 (if (gx#stx-pair? _g1850118520_)
                     (let ((_e1850418522_ (gx#stx-e _g1850118520_)))
                       (let ((_hd1850518525_ (##car _e1850418522_))
                             (_tl1850618527_ (##cdr _e1850418522_)))
                         (if (gx#stx-pair? _tl1850618527_)
                             (let ((_e1850718530_ (gx#stx-e _tl1850618527_)))
                               (let ((_hd1850818533_ (##car _e1850718530_))
                                     (_tl1850918535_ (##cdr _e1850718530_)))
                                 (if (gx#stx-pair? _tl1850918535_)
                                     (let ((_e1851018538_
                                            (gx#stx-e _tl1850918535_)))
                                       (let ((_hd1851118541_
                                              (##car _e1851018538_))
                                             (_tl1851218543_
                                              (##cdr _e1851018538_)))
                                         (if (gx#stx-null? _tl1851218543_)
                                             ((lambda (_L18546_ _L18547_)
                                                (let ((_sym18562_
                                                       (gxc#generate-runtime-binding-id
                                                        _L18547_)))
                                                  (begin
                                                    (gxc#verbose
                                                     '"collect mutator "
                                                     _sym18562_)
                                                    (table-set!
                                                     (gxc#current-compile-mutators)
                                                     _sym18562_
                                                     '#t)
                                                    (gxc#compile-e _L18546_))))
                                              _hd1851118541_
                                              _hd1850818533_)
                                             (_g1850018517_ _g1850118520_))))
                                     (_g1850018517_ _g1850118520_))))
                             (_g1850018517_ _g1850118520_))))
                     (_g1850018517_ _g1850118520_)))))
          (_g1849918564_ _stx18498_)))))
  (define gxc#dispatch-lambda-form?
    (lambda (_form17732_)
      (let ((_g1773717894_
             (lambda (_g1773817891_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1773817891_))))
        (let ((_g1773617901_ (lambda (_g1773817897_) ((lambda () '#f)))))
          (let ((_g1773518041_
                 (lambda (_g1773817904_)
                   (if (gx#stx-pair? _g1773817904_)
                       (let ((_e1785417906_ (gx#stx-e _g1773817904_)))
                         (let ((_hd1785517909_ (##car _e1785417906_))
                               (_tl1785617911_ (##cdr _e1785417906_)))
                           (if (gx#stx-pair? _tl1785617911_)
                               (let ((_e1785717914_ (gx#stx-e _tl1785617911_)))
                                 (let ((_hd1785817917_ (##car _e1785717914_))
                                       (_tl1785917919_ (##cdr _e1785717914_)))
                                   (if (gx#stx-pair? _hd1785817917_)
                                       (let ((_e1786017922_
                                              (gx#stx-e _hd1785817917_)))
                                         (let ((_hd1786117925_
                                                (##car _e1786017922_))
                                               (_tl1786217927_
                                                (##cdr _e1786017922_)))
                                           (if (gx#identifier? _hd1786117925_)
                                               (if (gx#stx-eq?
                                                    '%#call
                                                    _hd1786117925_)
                                                   (if (gx#stx-pair?
                                                        _tl1786217927_)
                                                       (let ((_e1786317930_
                                                              (gx#stx-e
                                                               _tl1786217927_)))
                                                         (let ((_hd1786417933_
                                                                (##car _e1786317930_))
                                                               (_tl1786517935_
                                                                (##cdr _e1786317930_)))
                                                           (if (gx#stx-pair?
                                                                _hd1786417933_)
                                                               (let ((_e1786617938_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd1786417933_)))
                         (let ((_hd1786717941_ (##car _e1786617938_))
                               (_tl1786817943_ (##cdr _e1786617938_)))
                           (if (gx#identifier? _hd1786717941_)
                               (if (gx#stx-eq? '%#ref _hd1786717941_)
                                   (if (gx#stx-pair? _tl1786817943_)
                                       (let ((_e1786917946_
                                              (gx#stx-e _tl1786817943_)))
                                         (let ((_hd1787017949_
                                                (##car _e1786917946_))
                                               (_tl1787117951_
                                                (##cdr _e1786917946_)))
                                           (if (gx#stx-null? _tl1787117951_)
                                               (if (gx#stx-pair?
                                                    _tl1786517935_)
                                                   (let ((_e1787217954_
                                                          (gx#stx-e
                                                           _tl1786517935_)))
                                                     (let ((_hd1787317957_
                                                            (##car _e1787217954_))
                                                           (_tl1787417959_
                                                            (##cdr _e1787217954_)))
                                                       (if (gx#stx-pair?
                                                            _hd1787317957_)
                                                           (let ((_e1787517962_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd1787317957_)))
                     (let ((_hd1787617965_ (##car _e1787517962_))
                           (_tl1787717967_ (##cdr _e1787517962_)))
                       (if (gx#identifier? _hd1787617965_)
                           (if (gx#stx-eq? '%#ref _hd1787617965_)
                               (if (gx#stx-pair? _tl1787717967_)
                                   (let ((_e1787817970_
                                          (gx#stx-e _tl1787717967_)))
                                     (let ((_hd1787917973_
                                            (##car _e1787817970_))
                                           (_tl1788017975_
                                            (##cdr _e1787817970_)))
                                       (if (gx#stx-null? _tl1788017975_)
                                           (if (gx#stx-pair? _tl1787417959_)
                                               (let ((_e1788117978_
                                                      (gx#stx-e
                                                       _tl1787417959_)))
                                                 (let ((_hd1788217981_
                                                        (##car _e1788117978_))
                                                       (_tl1788317983_
                                                        (##cdr _e1788117978_)))
                                                   (if (gx#stx-pair?
                                                        _hd1788217981_)
                                                       (let ((_e1788417986_
                                                              (gx#stx-e
                                                               _hd1788217981_)))
                                                         (let ((_hd1788517989_
                                                                (##car _e1788417986_))
                                                               (_tl1788617991_
                                                                (##cdr _e1788417986_)))
                                                           (if (gx#identifier?
                                                                _hd1788517989_)
                                                               (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '%#ref
                            _hd1788517989_)
                           (if (gx#stx-pair? _tl1788617991_)
                               (let ((_e1788717994_ (gx#stx-e _tl1788617991_)))
                                 (let ((_hd1788817997_ (##car _e1788717994_))
                                       (_tl1788917999_ (##cdr _e1788717994_)))
                                   (if (gx#stx-null? _tl1788917999_)
                                       (if (gx#stx-null? _tl1788317983_)
                                           (if (gx#stx-null? _tl1785917919_)
                                               ((lambda (_L18002_
                                                         _L18003_
                                                         _L18004_
                                                         _L18005_)
                                                  (if (if (gx#identifier?
                                                           _L18005_)
                                                          (if (eq? (gxc#generate-runtime-binding-id
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L18004_)
                           'apply)
                      (if (gx#free-identifier=? _L18005_ _L18002_)
                          (not (gx#free-identifier=? _L18003_ _L18005_))
                          '#f)
                      '#f)
                  '#f)
              '#t
              (_g1773617901_ _g1773817904_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd1788817997_
                                                _hd1787917973_
                                                _hd1787017949_
                                                _hd1785517909_)
                                               (_g1773617901_ _g1773817904_))
                                           (_g1773617901_ _g1773817904_))
                                       (_g1773617901_ _g1773817904_))))
                               (_g1773617901_ _g1773817904_))
                           (_g1773617901_ _g1773817904_))
                       (_g1773617901_ _g1773817904_))))
               (_g1773617901_ _g1773817904_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1773617901_ _g1773817904_))
                                           (_g1773617901_ _g1773817904_))))
                                   (_g1773617901_ _g1773817904_))
                               (_g1773617901_ _g1773817904_))
                           (_g1773617901_ _g1773817904_))))
                   (_g1773617901_ _g1773817904_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1773617901_
                                                    _g1773817904_))
                                               (_g1773617901_ _g1773817904_))))
                                       (_g1773617901_ _g1773817904_))
                                   (_g1773617901_ _g1773817904_))
                               (_g1773617901_ _g1773817904_))))
                       (_g1773617901_ _g1773817904_))))
               (_g1773617901_ _g1773817904_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1773617901_
                                                    _g1773817904_))
                                               (_g1773617901_ _g1773817904_))))
                                       (_g1773617901_ _g1773817904_))))
                               (_g1773617901_ _g1773817904_))))
                       (_g1773617901_ _g1773817904_)))))
            (let ((_g1773418301_
                   (lambda (_g1773818044_)
                     (if (gx#stx-pair? _g1773818044_)
                         (let ((_e1779018046_ (gx#stx-e _g1773818044_)))
                           (let ((_hd1779118049_ (##car _e1779018046_))
                                 (_tl1779218051_ (##cdr _e1779018046_)))
                             (if (gx#stx-pair/null? _hd1779118049_)
                                 (if (fx>= (gx#stx-length _hd1779118049_) '0)
                                     (let ((_g19612_
                                            (gx#syntax-split-splice
                                             _hd1779118049_
                                             '0)))
                                       (begin
                                         (let ((_g19613_
                                                (values-count _g19612_)))
                                           (if (not (fx= _g19613_ 2))
                                               (error "Context expects 2 values"
                                                      _g19613_)))
                                         (let ((_target1779318054_
                                                (values-ref _g19612_ 0))
                                               (_tl1779518056_
                                                (values-ref _g19612_ 1)))
                                           (letrec ((_loop1779618059_
                                                     (lambda (_hd1779418062_
                                                              _arg1780018064_)
                                                       (if (gx#stx-pair?
                                                            _hd1779418062_)
                                                           (let ((_e1779718067_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd1779418062_)))
                     (let ((_lp-hd1779818070_ (##car _e1779718067_))
                           (_lp-tl1779918072_ (##cdr _e1779718067_)))
                       (_loop1779618059_
                        _lp-tl1779918072_
                        (cons _lp-hd1779818070_ _arg1780018064_))))
                   (let ((_arg1780118075_ (reverse _arg1780018064_)))
                     (if (gx#stx-pair? _tl1779218051_)
                         (let ((_e1780218078_ (gx#stx-e _tl1779218051_)))
                           (let ((_hd1780318081_ (##car _e1780218078_))
                                 (_tl1780418083_ (##cdr _e1780218078_)))
                             (if (gx#stx-pair? _hd1780318081_)
                                 (let ((_e1780518086_
                                        (gx#stx-e _hd1780318081_)))
                                   (let ((_hd1780618089_ (##car _e1780518086_))
                                         (_tl1780718091_
                                          (##cdr _e1780518086_)))
                                     (if (gx#identifier? _hd1780618089_)
                                         (if (gx#stx-eq?
                                              '%#call
                                              _hd1780618089_)
                                             (if (gx#stx-pair? _tl1780718091_)
                                                 (let ((_e1780818094_
                                                        (gx#stx-e
                                                         _tl1780718091_)))
                                                   (let ((_hd1780918097_
                                                          (##car _e1780818094_))
                                                         (_tl1781018099_
                                                          (##cdr _e1780818094_)))
                                                     (if (gx#stx-pair?
                                                          _hd1780918097_)
                                                         (let ((_e1781118102_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1780918097_)))
                   (let ((_hd1781218105_ (##car _e1781118102_))
                         (_tl1781318107_ (##cdr _e1781118102_)))
                     (if (gx#identifier? _hd1781218105_)
                         (if (gx#stx-eq? '%#ref _hd1781218105_)
                             (if (gx#stx-pair? _tl1781318107_)
                                 (let ((_e1781418110_
                                        (gx#stx-e _tl1781318107_)))
                                   (let ((_hd1781518113_ (##car _e1781418110_))
                                         (_tl1781618115_
                                          (##cdr _e1781418110_)))
                                     (if (gx#stx-null? _tl1781618115_)
                                         (if (gx#stx-pair? _tl1781018099_)
                                             (let ((_e1781718118_
                                                    (gx#stx-e _tl1781018099_)))
                                               (let ((_hd1781818121_
                                                      (##car _e1781718118_))
                                                     (_tl1781918123_
                                                      (##cdr _e1781718118_)))
                                                 (if (gx#stx-pair?
                                                      _hd1781818121_)
                                                     (let ((_e1782018126_
                                                            (gx#stx-e
                                                             _hd1781818121_)))
                                                       (let ((_hd1782118129_
                                                              (##car _e1782018126_))
                                                             (_tl1782218131_
                                                              (##cdr _e1782018126_)))
                                                         (if (gx#identifier?
                                                              _hd1782118129_)
                                                             (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '%#ref
                          _hd1782118129_)
                         (if (gx#stx-pair? _tl1782218131_)
                             (let ((_e1782318134_ (gx#stx-e _tl1782218131_)))
                               (let ((_hd1782418137_ (##car _e1782318134_))
                                     (_tl1782518139_ (##cdr _e1782318134_)))
                                 (if (gx#stx-null? _tl1782518139_)
                                     (if (gx#stx-pair/null? _tl1781918123_)
                                         (if (fx>= (gx#stx-length
                                                    _tl1781918123_)
                                                   '1)
                                             (let ((_g19614_
                                                    (gx#syntax-split-splice
                                                     _tl1781918123_
                                                     '1)))
                                               (begin
                                                 (let ((_g19615_
                                                        (values-count
                                                         _g19614_)))
                                                   (if (not (fx= _g19615_ 2))
                                                       (error "Context expects 2 values"
                                                              _g19615_)))
                                                 (let ((_target1782618142_
                                                        (values-ref
                                                         _g19614_
                                                         0))
                                                       (_tl1782818144_
                                                        (values-ref
                                                         _g19614_
                                                         1)))
                                                   (if (gx#stx-pair?
                                                        _tl1782818144_)
                                                       (let ((_e1783518147_
                                                              (gx#stx-e
                                                               _tl1782818144_)))
                                                         (let ((_hd1783618150_
                                                                (##car _e1783518147_))
                                                               (_tl1783718152_
                                                                (##cdr _e1783518147_)))
                                                           (if (gx#stx-pair?
                                                                _hd1783618150_)
                                                               (let ((_e1783818155_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd1783618150_)))
                         (let ((_hd1783918158_ (##car _e1783818155_))
                               (_tl1784018160_ (##cdr _e1783818155_)))
                           (if (gx#identifier? _hd1783918158_)
                               (if (gx#stx-eq? '%#ref _hd1783918158_)
                                   (if (gx#stx-pair? _tl1784018160_)
                                       (let ((_e1784118163_
                                              (gx#stx-e _tl1784018160_)))
                                         (let ((_hd1784218166_
                                                (##car _e1784118163_))
                                               (_tl1784318168_
                                                (##cdr _e1784118163_)))
                                           (if (gx#stx-null? _tl1784318168_)
                                               (if (gx#stx-null?
                                                    _tl1783718152_)
                                                   (letrec ((_loop1782918171_
                                                             (lambda (_hd1782718174_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _xarg1783318176_)
                       (if (gx#stx-pair? _hd1782718174_)
                           (let ((_e1783018179_ (gx#stx-e _hd1782718174_)))
                             (let ((_lp-hd1783118182_ (##car _e1783018179_))
                                   (_lp-tl1783218184_ (##cdr _e1783018179_)))
                               (if (gx#stx-pair? _lp-hd1783118182_)
                                   (let ((_e1784418187_
                                          (gx#stx-e _lp-hd1783118182_)))
                                     (let ((_hd1784518190_
                                            (##car _e1784418187_))
                                           (_tl1784618192_
                                            (##cdr _e1784418187_)))
                                       (if (gx#identifier? _hd1784518190_)
                                           (if (gx#stx-eq?
                                                '%#ref
                                                _hd1784518190_)
                                               (if (gx#stx-pair?
                                                    _tl1784618192_)
                                                   (let ((_e1784718195_
                                                          (gx#stx-e
                                                           _tl1784618192_)))
                                                     (let ((_hd1784818198_
                                                            (##car _e1784718195_))
                                                           (_tl1784918200_
                                                            (##cdr _e1784718195_)))
                                                       (if (gx#stx-null?
                                                            _tl1784918200_)
                                                           (_loop1782918171_
                                                            _lp-tl1783218184_
                                                            (cons _hd1784818198_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _xarg1783318176_))
                   (_g1773518041_ _g1773818044_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1773518041_
                                                    _g1773818044_))
                                               (_g1773518041_ _g1773818044_))
                                           (_g1773518041_ _g1773818044_))))
                                   (_g1773518041_ _g1773818044_))))
                           (let ((_xarg1783418203_ (reverse _xarg1783318176_)))
                             (if (gx#stx-null? _tl1780418083_)
                                 ((lambda (_L18206_
                                           _L18207_
                                           _L18208_
                                           _L18209_
                                           _L18210_
                                           _L18211_)
                                    (if (if (gx#identifier-list?
                                             (begin
                                               '#!void
                                               (foldr1 (lambda (_g1825418257_
                                                                _g1825518259_)
                                                         (cons _g1825418257_
                                                               _g1825518259_))
                                                       '()
                                                       _L18211_)))
                                            (if (gx#identifier? _L18210_)
                                                (if (eq? (gxc#generate-runtime-binding-id
                                                          _L18209_)
                                                         'apply)
                                                    (if (fx= (length (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#!void
                               (foldr1 (lambda (_g1826118264_ _g1826218266_)
                                         (cons _g1826118264_ _g1826218266_))
                                       '()
                                       _L18211_)))
                     (length (begin
                               '#!void
                               (foldr1 (lambda (_g1826818271_ _g1826918273_)
                                         (cons _g1826818271_ _g1826918273_))
                                       '()
                                       _L18207_))))
                (if (andmap gx#free-identifier=?
                            (begin
                              '#!void
                              (foldr1 (lambda (_g1827518278_ _g1827618280_)
                                        (cons _g1827518278_ _g1827618280_))
                                      '()
                                      _L18211_))
                            (begin
                              '#!void
                              (foldr1 (lambda (_g1828218285_ _g1828318287_)
                                        (cons _g1828218285_ _g1828318287_))
                                      '()
                                      _L18207_)))
                    (if (gx#free-identifier=? _L18210_ _L18206_)
                        (not (find (lambda (_g1828918291_)
                                     (gx#free-identifier=?
                                      _g1828918291_
                                      _L18208_))
                                   (begin
                                     '#!void
                                     (foldr1 (lambda (_g1829318296_
                                                      _g1829418298_)
                                               (cons _g1829318296_
                                                     _g1829418298_))
                                             (cons _L18210_ '())
                                             _L18211_))))
                        '#f)
                    '#f)
                '#f)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '#f)
                                                '#f)
                                            '#f)
                                        '#t
                                        (_g1773518041_ _g1773818044_)))
                                  _hd1784218166_
                                  _xarg1783418203_
                                  _hd1782418137_
                                  _hd1781518113_
                                  _tl1779518056_
                                  _arg1780118075_)
                                 (_g1773518041_ _g1773818044_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop1782918171_
                                                      _target1782618142_
                                                      '()))
                                                   (_g1773518041_
                                                    _g1773818044_))
                                               (_g1773518041_ _g1773818044_))))
                                       (_g1773518041_ _g1773818044_))
                                   (_g1773518041_ _g1773818044_))
                               (_g1773518041_ _g1773818044_))))
                       (_g1773518041_ _g1773818044_))))
               (_g1773518041_ _g1773818044_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g1773518041_ _g1773818044_))
                                         (_g1773518041_ _g1773818044_))
                                     (_g1773518041_ _g1773818044_))))
                             (_g1773518041_ _g1773818044_))
                         (_g1773518041_ _g1773818044_))
                     (_g1773518041_ _g1773818044_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1773518041_
                                                      _g1773818044_))))
                                             (_g1773518041_ _g1773818044_))
                                         (_g1773518041_ _g1773818044_))))
                                 (_g1773518041_ _g1773818044_))
                             (_g1773518041_ _g1773818044_))
                         (_g1773518041_ _g1773818044_))))
                 (_g1773518041_ _g1773818044_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1773518041_ _g1773818044_))
                                             (_g1773518041_ _g1773818044_))
                                         (_g1773518041_ _g1773818044_))))
                                 (_g1773518041_ _g1773818044_))))
                         (_g1773518041_ _g1773818044_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_loop1779618059_
                                              _target1779318054_
                                              '())))))
                                     (_g1773518041_ _g1773818044_))
                                 (_g1773518041_ _g1773818044_))))
                         (_g1773518041_ _g1773818044_)))))
              (let ((_g1773318495_
                     (lambda (_g1773818304_)
                       (if (gx#stx-pair? _g1773818304_)
                           (let ((_e1774218306_ (gx#stx-e _g1773818304_)))
                             (let ((_hd1774318309_ (##car _e1774218306_))
                                   (_tl1774418311_ (##cdr _e1774218306_)))
                               (if (gx#stx-pair/null? _hd1774318309_)
                                   (if (fx>= (gx#stx-length _hd1774318309_) '0)
                                       (let ((_g19616_
                                              (gx#syntax-split-splice
                                               _hd1774318309_
                                               '0)))
                                         (begin
                                           (let ((_g19617_
                                                  (values-count _g19616_)))
                                             (if (not (fx= _g19617_ 2))
                                                 (error "Context expects 2 values"
                                                        _g19617_)))
                                           (let ((_target1774518314_
                                                  (values-ref _g19616_ 0))
                                                 (_tl1774718316_
                                                  (values-ref _g19616_ 1)))
                                             (if (gx#stx-null? _tl1774718316_)
                                                 (letrec ((_loop1774818319_
                                                           (lambda (_hd1774618322_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _arg1775218324_)
                     (if (gx#stx-pair? _hd1774618322_)
                         (let ((_e1774918327_ (gx#stx-e _hd1774618322_)))
                           (let ((_lp-hd1775018330_ (##car _e1774918327_))
                                 (_lp-tl1775118332_ (##cdr _e1774918327_)))
                             (_loop1774818319_
                              _lp-tl1775118332_
                              (cons _lp-hd1775018330_ _arg1775218324_))))
                         (let ((_arg1775318335_ (reverse _arg1775218324_)))
                           (if (gx#stx-pair? _tl1774418311_)
                               (let ((_e1775418338_ (gx#stx-e _tl1774418311_)))
                                 (let ((_hd1775518341_ (##car _e1775418338_))
                                       (_tl1775618343_ (##cdr _e1775418338_)))
                                   (if (gx#stx-pair? _hd1775518341_)
                                       (let ((_e1775718346_
                                              (gx#stx-e _hd1775518341_)))
                                         (let ((_hd1775818349_
                                                (##car _e1775718346_))
                                               (_tl1775918351_
                                                (##cdr _e1775718346_)))
                                           (if (gx#identifier? _hd1775818349_)
                                               (if (gx#stx-eq?
                                                    '%#call
                                                    _hd1775818349_)
                                                   (if (gx#stx-pair?
                                                        _tl1775918351_)
                                                       (let ((_e1776018354_
                                                              (gx#stx-e
                                                               _tl1775918351_)))
                                                         (let ((_hd1776118357_
                                                                (##car _e1776018354_))
                                                               (_tl1776218359_
                                                                (##cdr _e1776018354_)))
                                                           (if (gx#stx-pair?
                                                                _hd1776118357_)
                                                               (let ((_e1776318362_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd1776118357_)))
                         (let ((_hd1776418365_ (##car _e1776318362_))
                               (_tl1776518367_ (##cdr _e1776318362_)))
                           (if (gx#identifier? _hd1776418365_)
                               (if (gx#stx-eq? '%#ref _hd1776418365_)
                                   (if (gx#stx-pair? _tl1776518367_)
                                       (let ((_e1776618370_
                                              (gx#stx-e _tl1776518367_)))
                                         (let ((_hd1776718373_
                                                (##car _e1776618370_))
                                               (_tl1776818375_
                                                (##cdr _e1776618370_)))
                                           (if (gx#stx-null? _tl1776818375_)
                                               (if (gx#stx-pair/null?
                                                    _tl1776218359_)
                                                   (if (fx>= (gx#stx-length
                                                              _tl1776218359_)
                                                             '0)
                                                       (let ((_g19618_
                                                              (gx#syntax-split-splice
                                                               _tl1776218359_
                                                               '0)))
                                                         (begin
                                                           (let ((_g19619_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (values-count _g19618_)))
                     (if (not (fx= _g19619_ 2))
                         (error "Context expects 2 values" _g19619_)))
                   (let ((_target1776918378_ (values-ref _g19618_ 0))
                         (_tl1777118380_ (values-ref _g19618_ 1)))
                     (if (gx#stx-null? _tl1777118380_)
                         (letrec ((_loop1777218383_
                                   (lambda (_hd1777018386_ _xarg1777618388_)
                                     (if (gx#stx-pair? _hd1777018386_)
                                         (let ((_e1777318391_
                                                (gx#stx-e _hd1777018386_)))
                                           (let ((_lp-hd1777418394_
                                                  (##car _e1777318391_))
                                                 (_lp-tl1777518396_
                                                  (##cdr _e1777318391_)))
                                             (if (gx#stx-pair?
                                                  _lp-hd1777418394_)
                                                 (let ((_e1777818399_
                                                        (gx#stx-e
                                                         _lp-hd1777418394_)))
                                                   (let ((_hd1777918402_
                                                          (##car _e1777818399_))
                                                         (_tl1778018404_
                                                          (##cdr _e1777818399_)))
                                                     (if (gx#identifier?
                                                          _hd1777918402_)
                                                         (if (gx#stx-eq?
                                                              '%#ref
                                                              _hd1777918402_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1778018404_)
                         (let ((_e1778118407_ (gx#stx-e _tl1778018404_)))
                           (let ((_hd1778218410_ (##car _e1778118407_))
                                 (_tl1778318412_ (##cdr _e1778118407_)))
                             (if (gx#stx-null? _tl1778318412_)
                                 (_loop1777218383_
                                  _lp-tl1777518396_
                                  (cons _hd1778218410_ _xarg1777618388_))
                                 (_g1773418301_ _g1773818304_))))
                         (_g1773418301_ _g1773818304_))
                     (_g1773418301_ _g1773818304_))
                 (_g1773418301_ _g1773818304_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1773418301_
                                                  _g1773818304_))))
                                         (let ((_xarg1777718415_
                                                (reverse _xarg1777618388_)))
                                           (if (gx#stx-null? _tl1775618343_)
                                               ((lambda (_L18418_
                                                         _L18419_
                                                         _L18420_)
                                                  (if (if (gx#identifier-list?
                                                           (begin
                                                             '#!void
                                                             (foldr1 (lambda (_g1844818451_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _g1844918453_)
                               (cons _g1844818451_ _g1844918453_))
                             '()
                             _L18420_)))
                  (if (fx= (length (begin
                                     '#!void
                                     (foldr1 (lambda (_g1845518458_
                                                      _g1845618460_)
                                               (cons _g1845518458_
                                                     _g1845618460_))
                                             '()
                                             _L18420_)))
                           (length (begin
                                     '#!void
                                     (foldr1 (lambda (_g1846218465_
                                                      _g1846318467_)
                                               (cons _g1846218465_
                                                     _g1846318467_))
                                             '()
                                             _L18418_))))
                      (if (andmap gx#free-identifier=?
                                  (begin
                                    '#!void
                                    (foldr1 (lambda (_g1846918472_
                                                     _g1847018474_)
                                              (cons _g1846918472_
                                                    _g1847018474_))
                                            '()
                                            _L18420_))
                                  (begin
                                    '#!void
                                    (foldr1 (lambda (_g1847618479_
                                                     _g1847718481_)
                                              (cons _g1847618479_
                                                    _g1847718481_))
                                            '()
                                            _L18418_)))
                          (not (find (lambda (_g1848318485_)
                                       (gx#free-identifier=?
                                        _g1848318485_
                                        _L18419_))
                                     (begin
                                       '#!void
                                       (foldr1 (lambda (_g1848718490_
                                                        _g1848818492_)
                                                 (cons _g1848718490_
                                                       _g1848818492_))
                                               '()
                                               _L18420_))))
                          '#f)
                      '#f)
                  '#f)
              '#t
              (_g1773418301_ _g1773818304_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _xarg1777718415_
                                                _hd1776718373_
                                                _arg1775318335_)
                                               (_g1773418301_
                                                _g1773818304_)))))))
                           (_loop1777218383_ _target1776918378_ '()))
                         (_g1773418301_ _g1773818304_)))))
               (_g1773418301_ _g1773818304_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1773418301_
                                                    _g1773818304_))
                                               (_g1773418301_ _g1773818304_))))
                                       (_g1773418301_ _g1773818304_))
                                   (_g1773418301_ _g1773818304_))
                               (_g1773418301_ _g1773818304_))))
                       (_g1773418301_ _g1773818304_))))
               (_g1773418301_ _g1773818304_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1773418301_
                                                    _g1773818304_))
                                               (_g1773418301_ _g1773818304_))))
                                       (_g1773418301_ _g1773818304_))))
                               (_g1773418301_ _g1773818304_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_loop1774818319_
                                                    _target1774518314_
                                                    '()))
                                                 (_g1773418301_
                                                  _g1773818304_)))))
                                       (_g1773418301_ _g1773818304_))
                                   (_g1773418301_ _g1773818304_))))
                           (_g1773418301_ _g1773818304_)))))
                (_g1773318495_ _form17732_))))))))
  (define gxc#dispatch-lambda-form-delegate
    (lambda (_form17200_)
      (let ((_g1720417328_
             (lambda (_g1720517325_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1720517325_))))
        (let ((_g1720317445_
               (lambda (_g1720517331_)
                 (if (gx#stx-pair? _g1720517331_)
                     (let ((_e1729417333_ (gx#stx-e _g1720517331_)))
                       (let ((_hd1729517336_ (##car _e1729417333_))
                             (_tl1729617338_ (##cdr _e1729417333_)))
                         (if (gx#stx-pair? _tl1729617338_)
                             (let ((_e1729717341_ (gx#stx-e _tl1729617338_)))
                               (let ((_hd1729817344_ (##car _e1729717341_))
                                     (_tl1729917346_ (##cdr _e1729717341_)))
                                 (if (gx#stx-pair? _hd1729817344_)
                                     (let ((_e1730017349_
                                            (gx#stx-e _hd1729817344_)))
                                       (let ((_hd1730117352_
                                              (##car _e1730017349_))
                                             (_tl1730217354_
                                              (##cdr _e1730017349_)))
                                         (if (gx#identifier? _hd1730117352_)
                                             (if (gx#stx-eq?
                                                  '%#call
                                                  _hd1730117352_)
                                                 (if (gx#stx-pair?
                                                      _tl1730217354_)
                                                     (let ((_e1730317357_
                                                            (gx#stx-e
                                                             _tl1730217354_)))
                                                       (let ((_hd1730417360_
                                                              (##car _e1730317357_))
                                                             (_tl1730517362_
                                                              (##cdr _e1730317357_)))
                                                         (if (gx#stx-pair?
                                                              _hd1730417360_)
                                                             (let ((_e1730617365_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _hd1730417360_)))
                       (let ((_hd1730717368_ (##car _e1730617365_))
                             (_tl1730817370_ (##cdr _e1730617365_)))
                         (if (gx#identifier? _hd1730717368_)
                             (if (gx#stx-eq? '%#ref _hd1730717368_)
                                 (if (gx#stx-pair? _tl1730817370_)
                                     (let ((_e1730917373_
                                            (gx#stx-e _tl1730817370_)))
                                       (let ((_hd1731017376_
                                              (##car _e1730917373_))
                                             (_tl1731117378_
                                              (##cdr _e1730917373_)))
                                         (if (gx#stx-null? _tl1731117378_)
                                             (if (gx#stx-pair? _tl1730517362_)
                                                 (let ((_e1731217381_
                                                        (gx#stx-e
                                                         _tl1730517362_)))
                                                   (let ((_hd1731317384_
                                                          (##car _e1731217381_))
                                                         (_tl1731417386_
                                                          (##cdr _e1731217381_)))
                                                     (if (gx#stx-pair?
                                                          _hd1731317384_)
                                                         (let ((_e1731517389_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1731317384_)))
                   (let ((_hd1731617392_ (##car _e1731517389_))
                         (_tl1731717394_ (##cdr _e1731517389_)))
                     (if (gx#identifier? _hd1731617392_)
                         (if (gx#stx-eq? '%#ref _hd1731617392_)
                             (if (gx#stx-pair? _tl1731717394_)
                                 (let ((_e1731817397_
                                        (gx#stx-e _tl1731717394_)))
                                   (let ((_hd1731917400_ (##car _e1731817397_))
                                         (_tl1732017402_
                                          (##cdr _e1731817397_)))
                                     (if (gx#stx-null? _tl1732017402_)
                                         (if (gx#stx-pair? _tl1731417386_)
                                             (let ((_e1732117405_
                                                    (gx#stx-e _tl1731417386_)))
                                               (let ((_hd1732217408_
                                                      (##car _e1732117405_))
                                                     (_tl1732317410_
                                                      (##cdr _e1732117405_)))
                                                 (if (gx#stx-null?
                                                      _tl1732317410_)
                                                     (if (gx#stx-null?
                                                          _tl1729917346_)
                                                         ((lambda (_L17413_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L17414_
                           _L17415_)
                    (gxc#generate-runtime-binding-id _L17413_))
                  _hd1731917400_
                  _hd1731017376_
                  _hd1729517336_)
                 (_g1720417328_ _g1720517331_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1720417328_
                                                      _g1720517331_))))
                                             (_g1720417328_ _g1720517331_))
                                         (_g1720417328_ _g1720517331_))))
                                 (_g1720417328_ _g1720517331_))
                             (_g1720417328_ _g1720517331_))
                         (_g1720417328_ _g1720517331_))))
                 (_g1720417328_ _g1720517331_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1720417328_ _g1720517331_))
                                             (_g1720417328_ _g1720517331_))))
                                     (_g1720417328_ _g1720517331_))
                                 (_g1720417328_ _g1720517331_))
                             (_g1720417328_ _g1720517331_))))
                     (_g1720417328_ _g1720517331_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1720417328_
                                                      _g1720517331_))
                                                 (_g1720417328_ _g1720517331_))
                                             (_g1720417328_ _g1720517331_))))
                                     (_g1720417328_ _g1720517331_))))
                             (_g1720417328_ _g1720517331_))))
                     (_g1720417328_ _g1720517331_)))))
          (let ((_g1720217581_
                 (lambda (_g1720517448_)
                   (if (gx#stx-pair? _g1720517448_)
                       (let ((_e1725517450_ (gx#stx-e _g1720517448_)))
                         (let ((_hd1725617453_ (##car _e1725517450_))
                               (_tl1725717455_ (##cdr _e1725517450_)))
                           (if (gx#stx-pair/null? _hd1725617453_)
                               (if (fx>= (gx#stx-length _hd1725617453_) '0)
                                   (let ((_g19620_
                                          (gx#syntax-split-splice
                                           _hd1725617453_
                                           '0)))
                                     (begin
                                       (let ((_g19621_
                                              (values-count _g19620_)))
                                         (if (not (fx= _g19621_ 2))
                                             (error "Context expects 2 values"
                                                    _g19621_)))
                                       (let ((_target1725817458_
                                              (values-ref _g19620_ 0))
                                             (_tl1726017460_
                                              (values-ref _g19620_ 1)))
                                         (letrec ((_loop1726117463_
                                                   (lambda (_hd1725917466_
                                                            _arg1726517468_)
                                                     (if (gx#stx-pair?
                                                          _hd1725917466_)
                                                         (let ((_e1726217471_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1725917466_)))
                   (let ((_lp-hd1726317474_ (##car _e1726217471_))
                         (_lp-tl1726417476_ (##cdr _e1726217471_)))
                     (_loop1726117463_
                      _lp-tl1726417476_
                      (cons _lp-hd1726317474_ _arg1726517468_))))
                 (let ((_arg1726617479_ (reverse _arg1726517468_)))
                   (if (gx#stx-pair? _tl1725717455_)
                       (let ((_e1726717482_ (gx#stx-e _tl1725717455_)))
                         (let ((_hd1726817485_ (##car _e1726717482_))
                               (_tl1726917487_ (##cdr _e1726717482_)))
                           (if (gx#stx-pair? _hd1726817485_)
                               (let ((_e1727017490_ (gx#stx-e _hd1726817485_)))
                                 (let ((_hd1727117493_ (##car _e1727017490_))
                                       (_tl1727217495_ (##cdr _e1727017490_)))
                                   (if (gx#identifier? _hd1727117493_)
                                       (if (gx#stx-eq? '%#call _hd1727117493_)
                                           (if (gx#stx-pair? _tl1727217495_)
                                               (let ((_e1727317498_
                                                      (gx#stx-e
                                                       _tl1727217495_)))
                                                 (let ((_hd1727417501_
                                                        (##car _e1727317498_))
                                                       (_tl1727517503_
                                                        (##cdr _e1727317498_)))
                                                   (if (gx#stx-pair?
                                                        _hd1727417501_)
                                                       (let ((_e1727617506_
                                                              (gx#stx-e
                                                               _hd1727417501_)))
                                                         (let ((_hd1727717509_
                                                                (##car _e1727617506_))
                                                               (_tl1727817511_
                                                                (##cdr _e1727617506_)))
                                                           (if (gx#identifier?
                                                                _hd1727717509_)
                                                               (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '%#ref
                            _hd1727717509_)
                           (if (gx#stx-pair? _tl1727817511_)
                               (let ((_e1727917514_ (gx#stx-e _tl1727817511_)))
                                 (let ((_hd1728017517_ (##car _e1727917514_))
                                       (_tl1728117519_ (##cdr _e1727917514_)))
                                   (if (gx#stx-null? _tl1728117519_)
                                       (if (gx#stx-pair? _tl1727517503_)
                                           (let ((_e1728217522_
                                                  (gx#stx-e _tl1727517503_)))
                                             (let ((_hd1728317525_
                                                    (##car _e1728217522_))
                                                   (_tl1728417527_
                                                    (##cdr _e1728217522_)))
                                               (if (gx#stx-pair?
                                                    _hd1728317525_)
                                                   (let ((_e1728517530_
                                                          (gx#stx-e
                                                           _hd1728317525_)))
                                                     (let ((_hd1728617533_
                                                            (##car _e1728517530_))
                                                           (_tl1728717535_
                                                            (##cdr _e1728517530_)))
                                                       (if (gx#identifier?
                                                            _hd1728617533_)
                                                           (if (gx#stx-eq?
                                                                '%#ref
                                                                _hd1728617533_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl1728717535_)
                           (let ((_e1728817538_ (gx#stx-e _tl1728717535_)))
                             (let ((_hd1728917541_ (##car _e1728817538_))
                                   (_tl1729017543_ (##cdr _e1728817538_)))
                               (if (gx#stx-null? _tl1729017543_)
                                   (if (gx#stx-null? _tl1726917487_)
                                       ((lambda (_L17546_
                                                 _L17547_
                                                 _L17548_
                                                 _L17549_)
                                          (gxc#generate-runtime-binding-id
                                           _L17546_))
                                        _hd1728917541_
                                        _hd1728017517_
                                        _tl1726017460_
                                        _arg1726617479_)
                                       (_g1720317445_ _g1720517448_))
                                   (_g1720317445_ _g1720517448_))))
                           (_g1720317445_ _g1720517448_))
                       (_g1720317445_ _g1720517448_))
                   (_g1720317445_ _g1720517448_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1720317445_
                                                    _g1720517448_))))
                                           (_g1720317445_ _g1720517448_))
                                       (_g1720317445_ _g1720517448_))))
                               (_g1720317445_ _g1720517448_))
                           (_g1720317445_ _g1720517448_))
                       (_g1720317445_ _g1720517448_))))
               (_g1720317445_ _g1720517448_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1720317445_ _g1720517448_))
                                           (_g1720317445_ _g1720517448_))
                                       (_g1720317445_ _g1720517448_))))
                               (_g1720317445_ _g1720517448_))))
                       (_g1720317445_ _g1720517448_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_loop1726117463_
                                            _target1725817458_
                                            '())))))
                                   (_g1720317445_ _g1720517448_))
                               (_g1720317445_ _g1720517448_))))
                       (_g1720317445_ _g1720517448_)))))
            (let ((_g1720117729_
                   (lambda (_g1720517584_)
                     (if (gx#stx-pair? _g1720517584_)
                         (let ((_e1720917586_ (gx#stx-e _g1720517584_)))
                           (let ((_hd1721017589_ (##car _e1720917586_))
                                 (_tl1721117591_ (##cdr _e1720917586_)))
                             (if (gx#stx-pair/null? _hd1721017589_)
                                 (if (fx>= (gx#stx-length _hd1721017589_) '0)
                                     (let ((_g19622_
                                            (gx#syntax-split-splice
                                             _hd1721017589_
                                             '0)))
                                       (begin
                                         (let ((_g19623_
                                                (values-count _g19622_)))
                                           (if (not (fx= _g19623_ 2))
                                               (error "Context expects 2 values"
                                                      _g19623_)))
                                         (let ((_target1721217594_
                                                (values-ref _g19622_ 0))
                                               (_tl1721417596_
                                                (values-ref _g19622_ 1)))
                                           (if (gx#stx-null? _tl1721417596_)
                                               (letrec ((_loop1721517599_
                                                         (lambda (_hd1721317602_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _arg1721917604_)
                   (if (gx#stx-pair? _hd1721317602_)
                       (let ((_e1721617607_ (gx#stx-e _hd1721317602_)))
                         (let ((_lp-hd1721717610_ (##car _e1721617607_))
                               (_lp-tl1721817612_ (##cdr _e1721617607_)))
                           (_loop1721517599_
                            _lp-tl1721817612_
                            (cons _lp-hd1721717610_ _arg1721917604_))))
                       (let ((_arg1722017615_ (reverse _arg1721917604_)))
                         (if (gx#stx-pair? _tl1721117591_)
                             (let ((_e1722117618_ (gx#stx-e _tl1721117591_)))
                               (let ((_hd1722217621_ (##car _e1722117618_))
                                     (_tl1722317623_ (##cdr _e1722117618_)))
                                 (if (gx#stx-pair? _hd1722217621_)
                                     (let ((_e1722417626_
                                            (gx#stx-e _hd1722217621_)))
                                       (let ((_hd1722517629_
                                              (##car _e1722417626_))
                                             (_tl1722617631_
                                              (##cdr _e1722417626_)))
                                         (if (gx#identifier? _hd1722517629_)
                                             (if (gx#stx-eq?
                                                  '%#call
                                                  _hd1722517629_)
                                                 (if (gx#stx-pair?
                                                      _tl1722617631_)
                                                     (let ((_e1722717634_
                                                            (gx#stx-e
                                                             _tl1722617631_)))
                                                       (let ((_hd1722817637_
                                                              (##car _e1722717634_))
                                                             (_tl1722917639_
                                                              (##cdr _e1722717634_)))
                                                         (if (gx#stx-pair?
                                                              _hd1722817637_)
                                                             (let ((_e1723017642_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _hd1722817637_)))
                       (let ((_hd1723117645_ (##car _e1723017642_))
                             (_tl1723217647_ (##cdr _e1723017642_)))
                         (if (gx#identifier? _hd1723117645_)
                             (if (gx#stx-eq? '%#ref _hd1723117645_)
                                 (if (gx#stx-pair? _tl1723217647_)
                                     (let ((_e1723317650_
                                            (gx#stx-e _tl1723217647_)))
                                       (let ((_hd1723417653_
                                              (##car _e1723317650_))
                                             (_tl1723517655_
                                              (##cdr _e1723317650_)))
                                         (if (gx#stx-null? _tl1723517655_)
                                             (if (gx#stx-pair/null?
                                                  _tl1722917639_)
                                                 (if (fx>= (gx#stx-length
                                                            _tl1722917639_)
                                                           '0)
                                                     (let ((_g19624_
                                                            (gx#syntax-split-splice
                                                             _tl1722917639_
                                                             '0)))
                                                       (begin
                                                         (let ((_g19625_
                                                                (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g19624_)))
                   (if (not (fx= _g19625_ 2))
                       (error "Context expects 2 values" _g19625_)))
                 (let ((_target1723617658_ (values-ref _g19624_ 0))
                       (_tl1723817660_ (values-ref _g19624_ 1)))
                   (if (gx#stx-null? _tl1723817660_)
                       (letrec ((_loop1723917663_
                                 (lambda (_hd1723717666_ _xarg1724317668_)
                                   (if (gx#stx-pair? _hd1723717666_)
                                       (let ((_e1724017671_
                                              (gx#stx-e _hd1723717666_)))
                                         (let ((_lp-hd1724117674_
                                                (##car _e1724017671_))
                                               (_lp-tl1724217676_
                                                (##cdr _e1724017671_)))
                                           (if (gx#stx-pair? _lp-hd1724117674_)
                                               (let ((_e1724517679_
                                                      (gx#stx-e
                                                       _lp-hd1724117674_)))
                                                 (let ((_hd1724617682_
                                                        (##car _e1724517679_))
                                                       (_tl1724717684_
                                                        (##cdr _e1724517679_)))
                                                   (if (gx#identifier?
                                                        _hd1724617682_)
                                                       (if (gx#stx-eq?
                                                            '%#ref
                                                            _hd1724617682_)
                                                           (if (gx#stx-pair?
                                                                _tl1724717684_)
                                                               (let ((_e1724817687_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl1724717684_)))
                         (let ((_hd1724917690_ (##car _e1724817687_))
                               (_tl1725017692_ (##cdr _e1724817687_)))
                           (if (gx#stx-null? _tl1725017692_)
                               (_loop1723917663_
                                _lp-tl1724217676_
                                (cons _hd1724917690_ _xarg1724317668_))
                               (_g1720217581_ _g1720517584_))))
                       (_g1720217581_ _g1720517584_))
                   (_g1720217581_ _g1720517584_))
               (_g1720217581_ _g1720517584_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1720217581_ _g1720517584_))))
                                       (let ((_xarg1724417695_
                                              (reverse _xarg1724317668_)))
                                         (if (gx#stx-null? _tl1722317623_)
                                             ((lambda (_L17698_
                                                       _L17699_
                                                       _L17700_)
                                                (gxc#generate-runtime-binding-id
                                                 _L17699_))
                                              _xarg1724417695_
                                              _hd1723417653_
                                              _arg1722017615_)
                                             (_g1720217581_
                                              _g1720517584_)))))))
                         (_loop1723917663_ _target1723617658_ '()))
                       (_g1720217581_ _g1720517584_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1720217581_
                                                      _g1720517584_))
                                                 (_g1720217581_ _g1720517584_))
                                             (_g1720217581_ _g1720517584_))))
                                     (_g1720217581_ _g1720517584_))
                                 (_g1720217581_ _g1720517584_))
                             (_g1720217581_ _g1720517584_))))
                     (_g1720217581_ _g1720517584_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1720217581_
                                                      _g1720517584_))
                                                 (_g1720217581_ _g1720517584_))
                                             (_g1720217581_ _g1720517584_))))
                                     (_g1720217581_ _g1720517584_))))
                             (_g1720217581_ _g1720517584_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop1721517599_
                                                  _target1721217594_
                                                  '()))
                                               (_g1720217581_
                                                _g1720517584_)))))
                                     (_g1720217581_ _g1720517584_))
                                 (_g1720217581_ _g1720517584_))))
                         (_g1720217581_ _g1720517584_)))))
              (_g1720117729_ _form17200_)))))))
  (define gxc#lambda-form-arity
    (lambda (_form17004_)
      (let ((_g1700617020_
             (lambda (_g1700717017_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1700717017_))))
        (let ((_g1700517197_
               (lambda (_g1700717023_)
                 (if (gx#stx-pair? _g1700717023_)
                     (let ((_e1701017025_ (gx#stx-e _g1700717023_)))
                       (let ((_hd1701117028_ (##car _e1701017025_))
                             (_tl1701217030_ (##cdr _e1701017025_)))
                         (if (gx#stx-pair? _tl1701217030_)
                             (let ((_e1701317033_ (gx#stx-e _tl1701217030_)))
                               (let ((_hd1701417036_ (##car _e1701317033_))
                                     (_tl1701517038_ (##cdr _e1701317033_)))
                                 (if (gx#stx-null? _tl1701517038_)
                                     ((lambda (_L17041_ _L17042_)
                                        (let ((_g1705717085_
                                               (lambda (_g1705817082_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g1705817082_))))
                                          (let ((_g1705617098_
                                                 (lambda (_g1705817088_)
                                                   ((lambda (_L17090_)
                                                      (cons '0 '()))
                                                    _g1705817088_))))
                                            (let ((_g1705517147_
                                                   (lambda (_g1705817101_)
                                                     (if (gx#stx-pair/null?
                                                          _g1705817101_)
                                                         (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g1705817101_)
                           '0)
                     (let ((_g19626_
                            (gx#syntax-split-splice _g1705817101_ '0)))
                       (begin
                         (let ((_g19627_ (values-count _g19626_)))
                           (if (not (fx= _g19627_ 2))
                               (error "Context expects 2 values" _g19627_)))
                         (let ((_target1707117103_ (values-ref _g19626_ 0))
                               (_tl1707317105_ (values-ref _g19626_ 1)))
                           (letrec ((_loop1707417108_
                                     (lambda (_hd1707217111_ _arg1707817113_)
                                       (if (gx#stx-pair? _hd1707217111_)
                                           (let ((_e1707517116_
                                                  (gx#stx-e _hd1707217111_)))
                                             (let ((_lp-hd1707617119_
                                                    (##car _e1707517116_))
                                                   (_lp-tl1707717121_
                                                    (##cdr _e1707517116_)))
                                               (_loop1707417108_
                                                _lp-tl1707717121_
                                                (cons _lp-hd1707617119_
                                                      _arg1707817113_))))
                                           (let ((_arg1707917124_
                                                  (reverse _arg1707817113_)))
                                             ((lambda (_L17127_ _L17128_)
                                                (cons (length (begin
                                                                '#!void
                                                                (foldr1 (lambda (_g1713917142_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                         _g1714017144_)
                                  (cons _g1713917142_ _g1714017144_))
                                '()
                                _L17128_)))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _tl1707317105_
                                              _arg1707917124_))))))
                             (_loop1707417108_ _target1707117103_ '())))))
                     (_g1705617098_ _g1705817101_))
                 (_g1705617098_ _g1705817101_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_g1705417194_
                                                     (lambda (_g1705817150_)
                                                       (if (gx#stx-pair/null?
                                                            _g1705817150_)
                                                           (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g1705817150_)
                             '0)
                       (let ((_g19628_
                              (gx#syntax-split-splice _g1705817150_ '0)))
                         (begin
                           (let ((_g19629_ (values-count _g19628_)))
                             (if (not (fx= _g19629_ 2))
                                 (error "Context expects 2 values" _g19629_)))
                           (let ((_target1706017152_ (values-ref _g19628_ 0))
                                 (_tl1706217154_ (values-ref _g19628_ 1)))
                             (if (gx#stx-null? _tl1706217154_)
                                 (letrec ((_loop1706317157_
                                           (lambda (_hd1706117160_
                                                    _arg1706717162_)
                                             (if (gx#stx-pair? _hd1706117160_)
                                                 (let ((_e1706417165_
                                                        (gx#stx-e
                                                         _hd1706117160_)))
                                                   (let ((_lp-hd1706517168_
                                                          (##car _e1706417165_))
                                                         (_lp-tl1706617170_
                                                          (##cdr _e1706417165_)))
                                                     (_loop1706317157_
                                                      _lp-tl1706617170_
                                                      (cons _lp-hd1706517168_
                                                            _arg1706717162_))))
                                                 (let ((_arg1706817173_
                                                        (reverse _arg1706717162_)))
                                                   ((lambda (_L17176_)
                                                      (length (begin
                                                                '#!void
                                                                (foldr1 (lambda (_g1718617189_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                         _g1718717191_)
                                  (cons _g1718617189_ _g1718717191_))
                                '()
                                _L17176_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _arg1706817173_))))))
                                   (_loop1706317157_ _target1706017152_ '()))
                                 (_g1705517147_ _g1705817150_)))))
                       (_g1705517147_ _g1705817150_))
                   (_g1705517147_ _g1705817150_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1705417194_ _L17042_))))))
                                      _hd1701417036_
                                      _hd1701117028_)
                                     (_g1700617020_ _g1700717023_))))
                             (_g1700617020_ _g1700717023_))))
                     (_g1700617020_ _g1700717023_)))))
          (_g1700517197_ _form17004_)))))
  (define gxc#lambda-expr?
    (lambda (_expr16957_)
      (let ((_g1696016970_
             (lambda (_g1696116967_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1696116967_))))
        (let ((_g1695916977_ (lambda (_g1696116973_) ((lambda () '#f)))))
          (let ((_g1695817001_
                 (lambda (_g1696116980_)
                   (if (gx#stx-pair? _g1696116980_)
                       (let ((_e1696316982_ (gx#stx-e _g1696116980_)))
                         (let ((_hd1696416985_ (##car _e1696316982_))
                               (_tl1696516987_ (##cdr _e1696316982_)))
                           (if (gx#identifier? _hd1696416985_)
                               (if (gx#stx-eq? '%#lambda _hd1696416985_)
                                   ((lambda (_L16990_) '#t) _tl1696516987_)
                                   (_g1695916977_ _g1696116980_))
                               (_g1695916977_ _g1696116980_))))
                       (_g1695916977_ _g1696116980_)))))
            (_g1695817001_ _expr16957_))))))
  (define gxc#case-lambda-expr?
    (lambda (_expr16910_)
      (let ((_g1691316923_
             (lambda (_g1691416920_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1691416920_))))
        (let ((_g1691216930_ (lambda (_g1691416926_) ((lambda () '#f)))))
          (let ((_g1691116954_
                 (lambda (_g1691416933_)
                   (if (gx#stx-pair? _g1691416933_)
                       (let ((_e1691616935_ (gx#stx-e _g1691416933_)))
                         (let ((_hd1691716938_ (##car _e1691616935_))
                               (_tl1691816940_ (##cdr _e1691616935_)))
                           (if (gx#identifier? _hd1691716938_)
                               (if (gx#stx-eq? '%#case-lambda _hd1691716938_)
                                   ((lambda (_L16943_) '#t) _tl1691816940_)
                                   (_g1691216930_ _g1691416933_))
                               (_g1691216930_ _g1691416933_))))
                       (_g1691216930_ _g1691416933_)))))
            (_g1691116954_ _expr16910_))))))
  (define gxc#opt-lambda-expr?
    (lambda (_expr16779_)
      (let ((_g1678216812_
             (lambda (_g1678316809_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1678316809_))))
        (let ((_g1678116819_ (lambda (_g1678316815_) ((lambda () '#f)))))
          (let ((_g1678016907_
                 (lambda (_g1678316822_)
                   (if (gx#stx-pair? _g1678316822_)
                       (let ((_e1678716824_ (gx#stx-e _g1678316822_)))
                         (let ((_hd1678816827_ (##car _e1678716824_))
                               (_tl1678916829_ (##cdr _e1678716824_)))
                           (if (gx#identifier? _hd1678816827_)
                               (if (gx#stx-eq? '%#let-values _hd1678816827_)
                                   (if (gx#stx-pair? _tl1678916829_)
                                       (let ((_e1679016832_
                                              (gx#stx-e _tl1678916829_)))
                                         (let ((_hd1679116835_
                                                (##car _e1679016832_))
                                               (_tl1679216837_
                                                (##cdr _e1679016832_)))
                                           (if (gx#stx-pair? _hd1679116835_)
                                               (let ((_e1679316840_
                                                      (gx#stx-e
                                                       _hd1679116835_)))
                                                 (let ((_hd1679416843_
                                                        (##car _e1679316840_))
                                                       (_tl1679516845_
                                                        (##cdr _e1679316840_)))
                                                   (if (gx#stx-pair?
                                                        _hd1679416843_)
                                                       (let ((_e1679616848_
                                                              (gx#stx-e
                                                               _hd1679416843_)))
                                                         (let ((_hd1679716851_
                                                                (##car _e1679616848_))
                                                               (_tl1679816853_
                                                                (##cdr _e1679616848_)))
                                                           (if (gx#stx-pair?
                                                                _hd1679716851_)
                                                               (let ((_e1679916856_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd1679716851_)))
                         (let ((_hd1680016859_ (##car _e1679916856_))
                               (_tl1680116861_ (##cdr _e1679916856_)))
                           (if (gx#stx-null? _tl1680116861_)
                               (if (gx#stx-pair? _tl1679816853_)
                                   (let ((_e1680216864_
                                          (gx#stx-e _tl1679816853_)))
                                     (let ((_hd1680316867_
                                            (##car _e1680216864_))
                                           (_tl1680416869_
                                            (##cdr _e1680216864_)))
                                       (if (gx#stx-null? _tl1680416869_)
                                           (if (gx#stx-null? _tl1679516845_)
                                               (if (gx#stx-pair?
                                                    _tl1679216837_)
                                                   (let ((_e1680516872_
                                                          (gx#stx-e
                                                           _tl1679216837_)))
                                                     (let ((_hd1680616875_
                                                            (##car _e1680516872_))
                                                           (_tl1680716877_
                                                            (##cdr _e1680516872_)))
                                                       (if (gx#stx-null?
                                                            _tl1680716877_)
                                                           ((lambda (_L16880_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L16881_
                             _L16882_)
                      (if (gx#identifier? _L16882_)
                          (if (gxc#lambda-expr? _L16881_)
                              (gxc#case-lambda-expr? _L16880_)
                              '#f)
                          '#f))
                    _hd1680616875_
                    _hd1680316867_
                    _hd1680016859_)
                   (_g1678116819_ _g1678316822_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1678116819_
                                                    _g1678316822_))
                                               (_g1678116819_ _g1678316822_))
                                           (_g1678116819_ _g1678316822_))))
                                   (_g1678116819_ _g1678316822_))
                               (_g1678116819_ _g1678316822_))))
                       (_g1678116819_ _g1678316822_))))
               (_g1678116819_ _g1678316822_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1678116819_ _g1678316822_))))
                                       (_g1678116819_ _g1678316822_))
                                   (_g1678116819_ _g1678316822_))
                               (_g1678116819_ _g1678316822_))))
                       (_g1678116819_ _g1678316822_)))))
            (_g1678016907_ _expr16779_))))))
  (begin
    (define gxc#lift-case-lambda-clauses__opt-lambda16519
      (lambda (_stx16521_ _id16522_ _clauses16523_ _gensym?16524_)
        ((letrec ((_lp16526_
                   (lambda (_rest16528_ _ids16529_ _impls16530_ _clauses16531_)
                     (let ((_rest1653216540_ _rest16528_))
                       (let ((_E1653516544_
                              (lambda ()
                                (error '"No clause matching"
                                       _rest1653216540_))))
                         (let ((_else1653416548_
                                (lambda ()
                                  (values (reverse _ids16529_)
                                          (reverse _impls16530_)
                                          (reverse _clauses16531_)))))
                           (let ((_K1653616753_
                                  (lambda (_rest16551_ _clause16552_)
                                    (if (gxc#dispatch-lambda-form?
                                         _clause16552_)
                                        (_lp16526_
                                         _rest16551_
                                         _ids16529_
                                         _impls16530_
                                         (cons _clause16552_ _clauses16531_))
                                        (let ((_g1655416565_
                                               (lambda (_g1655516562_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g1655516562_))))
                                          (let ((_g1655316750_
                                                 (lambda (_g1655516568_)
                                                   (if (gx#stx-pair?
                                                        _g1655516568_)
                                                       (let ((_e1655816570_
                                                              (gx#stx-e
                                                               _g1655516568_)))
                                                         (let ((_hd1655916573_
                                                                (##car _e1655816570_))
                                                               (_tl1656016575_
                                                                (##cdr _e1655816570_)))
                                                           ((lambda (_L16578_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L16579_)
                      (let ((_id16596_
                             (make-symbol
                              (gx#stx-e _id16522_)
                              '"__"
                              (length _clauses16531_)
                              (if _gensym?16524_ (gensym '__) '""))))
                        (let ((_id16598_
                               (gx#core-quote-syntax__1
                                _id16596_
                                (gx#stx-source _stx16521_))))
                          (let ((_impl16600_
                                 (gxc#xform-wrap-source
                                  (cons (gx#datum->syntax__0 '#f '%#lambda)
                                        (cons _L16579_ _L16578_))
                                  _stx16521_)))
                            (let ((_clause16747_
                                   (let ((_g1660416632_
                                          (lambda (_g1660516629_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax"
                                             _g1660516629_))))
                                     (let ((_g1660316648_
                                            (lambda (_g1660516635_)
                                              ((lambda (_L16637_)
                                                 (cons _L16579_
                                                       (cons (gxc#xform-wrap-source
                                                              (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons '%#ref (cons 'apply '()))
                                  (cons (cons '%#ref (cons _id16598_ '()))
                                        (cons (cons (gx#datum->syntax__0
                                                     '#f
                                                     '%#ref)
                                                    (cons _L16637_ '()))
                                              '()))))
                      _stx16521_)
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _g1660516635_))))
                                       (let ((_g1660216697_
                                              (lambda (_g1660516651_)
                                                (if (gx#stx-pair/null?
                                                     _g1660516651_)
                                                    (if (fx>= (gx#stx-length
                                                               _g1660516651_)
                                                              '0)
                                                        (let ((_g19630_
                                                               (gx#syntax-split-splice
                                                                _g1660516651_
                                                                '0)))
                                                          (begin
                                                            (let ((_g19631_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (values-count _g19630_)))
                      (if (not (fx= _g19631_ 2))
                          (error "Context expects 2 values" _g19631_)))
                    (let ((_target1661816653_ (values-ref _g19630_ 0))
                          (_tl1662016655_ (values-ref _g19630_ 1)))
                      (letrec ((_loop1662116658_
                                (lambda (_hd1661916661_ _arg1662516663_)
                                  (if (gx#stx-pair? _hd1661916661_)
                                      (let ((_e1662216666_
                                             (gx#stx-e _hd1661916661_)))
                                        (let ((_lp-hd1662316669_
                                               (##car _e1662216666_))
                                              (_lp-tl1662416671_
                                               (##cdr _e1662216666_)))
                                          (_loop1662116658_
                                           _lp-tl1662416671_
                                           (cons _lp-hd1662316669_
                                                 _arg1662516663_))))
                                      (let ((_arg1662616674_
                                             (reverse _arg1662516663_)))
                                        ((lambda (_L16677_ _L16678_)
                                           (cons _L16579_
                                                 (cons (gxc#xform-wrap-source
                                                        (cons '%#call
                                                              (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons 'apply '()))
                            (cons (cons '%#ref (cons _id16598_ '()))
                                  (foldr1 cons
                                          (cons (cons (gx#datum->syntax__0
                                                       '#f
                                                       '%#ref)
                                                      (cons _L16677_ '()))
                                                '())
                                          (begin
                                            '#!void
                                            (foldr1 (lambda (_g1668916692_
                                                             _g1669016694_)
                                                      (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           '%#ref)
                          (cons _g1668916692_ '()))
                    _g1669016694_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()
                                                    _L16678_))))))
                _stx16521_)
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _tl1662016655_
                                         _arg1662616674_))))))
                        (_loop1662116658_ _target1661816653_ '())))))
                (_g1660316648_ _g1660516651_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1660316648_
                                                     _g1660516651_)))))
                                         (let ((_g1660116744_
                                                (lambda (_g1660516700_)
                                                  (if (gx#stx-pair/null?
                                                       _g1660516700_)
                                                      (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1660516700_)
                        '0)
                  (let ((_g19632_ (gx#syntax-split-splice _g1660516700_ '0)))
                    (begin
                      (let ((_g19633_ (values-count _g19632_)))
                        (if (not (fx= _g19633_ 2))
                            (error "Context expects 2 values" _g19633_)))
                      (let ((_target1660716702_ (values-ref _g19632_ 0))
                            (_tl1660916704_ (values-ref _g19632_ 1)))
                        (if (gx#stx-null? _tl1660916704_)
                            (letrec ((_loop1661016707_
                                      (lambda (_hd1660816710_ _arg1661416712_)
                                        (if (gx#stx-pair? _hd1660816710_)
                                            (let ((_e1661116715_
                                                   (gx#stx-e _hd1660816710_)))
                                              (let ((_lp-hd1661216718_
                                                     (##car _e1661116715_))
                                                    (_lp-tl1661316720_
                                                     (##cdr _e1661116715_)))
                                                (_loop1661016707_
                                                 _lp-tl1661316720_
                                                 (cons _lp-hd1661216718_
                                                       _arg1661416712_))))
                                            (let ((_arg1661516723_
                                                   (reverse _arg1661416712_)))
                                              ((lambda (_L16726_)
                                                 (cons _L16579_
                                                       (cons (gxc#xform-wrap-source
                                                              (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons '%#ref (cons _id16598_ '()))
                                  (begin
                                    '#!void
                                    (foldr1 (lambda (_g1673616739_
                                                     _g1673716741_)
                                              (cons (cons (gx#datum->syntax__0
                                                           '#f
                                                           '%#ref)
                                                          (cons _g1673616739_
                                                                '()))
                                                    _g1673716741_))
                                            '()
                                            _L16726_))))
                      _stx16521_)
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _arg1661516723_))))))
                              (_loop1661016707_ _target1660716702_ '()))
                            (_g1660216697_ _g1660516700_)))))
                  (_g1660216697_ _g1660516700_))
              (_g1660216697_ _g1660516700_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_g1660116744_ _L16579_)))))))
                              (let ()
                                (_lp16526_
                                 _rest16551_
                                 (cons _id16598_ _ids16529_)
                                 (cons _impl16600_ _impls16530_)
                                 (cons _clause16747_ _clauses16531_))))))))
                    _tl1656016575_
                    _hd1655916573_)))
               (_g1655416565_ _g1655516568_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g1655316750_ _clause16552_)))))))
                             (if (##pair? _rest1653216540_)
                                 (let ((_hd1653716756_
                                        (##car _rest1653216540_))
                                       (_tl1653816758_
                                        (##cdr _rest1653216540_)))
                                   (let ((_clause16761_ _hd1653716756_))
                                     (let ((_rest16763_ _tl1653816758_))
                                       (_K1653616753_
                                        _rest16763_
                                        _clause16761_))))
                                 (_else1653416548_)))))))))
           _lp16526_)
         _clauses16523_
         '()
         '()
         '())))
    (begin
      (define gxc#lift-case-lambda-clauses__0
        (lambda (_stx16768_ _id16769_ _clauses16770_)
          (let ((_gensym?16772_ '#f))
            (gxc#lift-case-lambda-clauses__opt-lambda16519
             _stx16768_
             _id16769_
             _clauses16770_
             _gensym?16772_))))
      (define gxc#lift-case-lambda-clauses
        (lambda _g19635_
          (let ((_g19634_ (length _g19635_)))
            (cond ((fx= _g19634_ 3)
                   (apply gxc#lift-case-lambda-clauses__0 _g19635_))
                  ((fx= _g19634_ 4)
                   (apply gxc#lift-case-lambda-clauses__opt-lambda16519
                          _g19635_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#lift-case-lambda-clauses
                    _g19635_))))))))
  (define gxc#lift-top-lambda-define-values%
    (lambda (_stx16110_)
      (let ((_case-lambda-clause-def16112_
             (lambda (_id16517_ _impl16518_)
               (gxc#xform-wrap-source
                (cons '%#define-values
                      (cons (cons _id16517_ '())
                            (cons (gxc#compile-e _impl16518_) '())))
                _stx16110_))))
        (let ((_g1611616161_
               (lambda (_g1611716158_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1611716158_))))
          (let ((_g1611516207_
                 (lambda (_g1611716164_)
                   (if (gx#stx-pair? _g1611716164_)
                       (let ((_e1614816166_ (gx#stx-e _g1611716164_)))
                         (let ((_hd1614916169_ (##car _e1614816166_))
                               (_tl1615016171_ (##cdr _e1614816166_)))
                           (if (gx#stx-pair? _tl1615016171_)
                               (let ((_e1615116174_ (gx#stx-e _tl1615016171_)))
                                 (let ((_hd1615216177_ (##car _e1615116174_))
                                       (_tl1615316179_ (##cdr _e1615116174_)))
                                   (if (gx#stx-pair? _tl1615316179_)
                                       (let ((_e1615416182_
                                              (gx#stx-e _tl1615316179_)))
                                         (let ((_hd1615516185_
                                                (##car _e1615416182_))
                                               (_tl1615616187_
                                                (##cdr _e1615416182_)))
                                           (if (gx#stx-null? _tl1615616187_)
                                               ((lambda (_L16190_ _L16191_)
                                                  (gxc#xform-wrap-source
                                                   (cons '%#define-values
                                                         (cons _L16191_
                                                               (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L16190_)
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _stx16110_))
                                                _hd1615516185_
                                                _hd1615216177_)
                                               (_g1611616161_ _g1611716164_))))
                                       (_g1611616161_ _g1611716164_))))
                               (_g1611616161_ _g1611716164_))))
                       (_g1611616161_ _g1611716164_)))))
            (let ((_g1611416389_
                   (lambda (_g1611716210_)
                     (if (gx#stx-pair? _g1611716210_)
                         (let ((_e1613416212_ (gx#stx-e _g1611716210_)))
                           (let ((_hd1613516215_ (##car _e1613416212_))
                                 (_tl1613616217_ (##cdr _e1613416212_)))
                             (if (gx#stx-pair? _tl1613616217_)
                                 (let ((_e1613716220_
                                        (gx#stx-e _tl1613616217_)))
                                   (let ((_hd1613816223_ (##car _e1613716220_))
                                         (_tl1613916225_
                                          (##cdr _e1613716220_)))
                                     (if (gx#stx-pair? _hd1613816223_)
                                         (let ((_e1614016228_
                                                (gx#stx-e _hd1613816223_)))
                                           (let ((_hd1614116231_
                                                  (##car _e1614016228_))
                                                 (_tl1614216233_
                                                  (##cdr _e1614016228_)))
                                             (if (gx#stx-null? _tl1614216233_)
                                                 (if (gx#stx-pair?
                                                      _tl1613916225_)
                                                     (let ((_e1614316236_
                                                            (gx#stx-e
                                                             _tl1613916225_)))
                                                       (let ((_hd1614416239_
                                                              (##car _e1614316236_))
                                                             (_tl1614516241_
                                                              (##cdr _e1614316236_)))
                                                         (if (gx#stx-null?
                                                              _tl1614516241_)
                                                             ((lambda (_L16244_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L16245_)
                        (if (if (gx#identifier? _L16245_)
                                (gxc#opt-lambda-expr? _L16244_)
                                '#f)
                            (let ((_g1626116291_
                                   (lambda (_g1626216288_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g1626216288_))))
                              (let ((_g1626016386_
                                     (lambda (_g1626216294_)
                                       (if (gx#stx-pair? _g1626216294_)
                                           (let ((_e1626616296_
                                                  (gx#stx-e _g1626216294_)))
                                             (let ((_hd1626716299_
                                                    (##car _e1626616296_))
                                                   (_tl1626816301_
                                                    (##cdr _e1626616296_)))
                                               (if (gx#stx-pair?
                                                    _tl1626816301_)
                                                   (let ((_e1626916304_
                                                          (gx#stx-e
                                                           _tl1626816301_)))
                                                     (let ((_hd1627016307_
                                                            (##car _e1626916304_))
                                                           (_tl1627116309_
                                                            (##cdr _e1626916304_)))
                                                       (if (gx#stx-pair?
                                                            _hd1627016307_)
                                                           (let ((_e1627216312_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd1627016307_)))
                     (let ((_hd1627316315_ (##car _e1627216312_))
                           (_tl1627416317_ (##cdr _e1627216312_)))
                       (if (gx#stx-pair? _hd1627316315_)
                           (let ((_e1627516320_ (gx#stx-e _hd1627316315_)))
                             (let ((_hd1627616323_ (##car _e1627516320_))
                                   (_tl1627716325_ (##cdr _e1627516320_)))
                               (if (gx#stx-pair? _hd1627616323_)
                                   (let ((_e1627816328_
                                          (gx#stx-e _hd1627616323_)))
                                     (let ((_hd1627916331_
                                            (##car _e1627816328_))
                                           (_tl1628016333_
                                            (##cdr _e1627816328_)))
                                       (if (gx#stx-null? _tl1628016333_)
                                           (if (gx#stx-pair? _tl1627716325_)
                                               (let ((_e1628116336_
                                                      (gx#stx-e
                                                       _tl1627716325_)))
                                                 (let ((_hd1628216339_
                                                        (##car _e1628116336_))
                                                       (_tl1628316341_
                                                        (##cdr _e1628116336_)))
                                                   (if (gx#stx-null?
                                                        _tl1628316341_)
                                                       (if (gx#stx-null?
                                                            _tl1627416317_)
                                                           (if (gx#stx-pair?
                                                                _tl1627116309_)
                                                               (let ((_e1628416344_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl1627116309_)))
                         (let ((_hd1628516347_ (##car _e1628416344_))
                               (_tl1628616349_ (##cdr _e1628416344_)))
                           (if (gx#stx-null? _tl1628616349_)
                               ((lambda (_L16352_ _L16353_ _L16354_)
                                  (let ((_lambda-id16378_
                                         (make-symbol
                                          (gx#stx-e _L16245_)
                                          '"__"
                                          (gx#stx-e _L16354_))))
                                    (let ((_lambda-id16380_
                                           (gx#core-quote-syntax__1
                                            _lambda-id16378_
                                            (gx#stx-source _stx16110_))))
                                      (let ((_g19636_
                                             (gx#core-bind-runtime!__0
                                              _lambda-id16380_)))
                                        (let ((_new-case-lambda-expr16383_
                                               (gxc#apply-expression-subst
                                                _L16352_
                                                _L16354_
                                                _lambda-id16380_)))
                                          (let ()
                                            (begin
                                              (gxc#verbose
                                               '"lift opt-lambda dispatch "
                                               (gxc#generate-runtime-binding-id
                                                _L16245_)
                                               '" => "
                                               (gxc#generate-runtime-binding-id
                                                _lambda-id16380_))
                                              (gxc#xform-wrap-source
                                               (cons '%#begin
                                                     (cons (gxc#xform-wrap-source
                                                            (cons '%#define-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons _lambda-id16380_ '())
                                (cons (gxc#compile-e _L16353_) '())))
                    _stx16110_)
                   (cons (gxc#lift-top-lambda-define-values%
                          (gxc#xform-wrap-source
                           (cons '%#define-values
                                 (cons (cons _L16245_ '())
                                       (cons _new-case-lambda-expr16383_ '())))
                           _stx16110_))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _stx16110_))))))))
                                _hd1628516347_
                                _hd1628216339_
                                _hd1627916331_)
                               (_g1626116291_ _g1626216294_))))
                       (_g1626116291_ _g1626216294_))
                   (_g1626116291_ _g1626216294_))
               (_g1626116291_ _g1626216294_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1626116291_ _g1626216294_))
                                           (_g1626116291_ _g1626216294_))))
                                   (_g1626116291_ _g1626216294_))))
                           (_g1626116291_ _g1626216294_))))
                   (_g1626116291_ _g1626216294_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1626116291_
                                                    _g1626216294_))))
                                           (_g1626116291_ _g1626216294_)))))
                                (_g1626016386_ _L16244_)))
                            (_g1611516207_ _g1611716210_)))
                      _hd1614416239_
                      _hd1614116231_)
                     (_g1611516207_ _g1611716210_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1611516207_
                                                      _g1611716210_))
                                                 (_g1611516207_
                                                  _g1611716210_))))
                                         (_g1611516207_ _g1611716210_))))
                                 (_g1611516207_ _g1611716210_))))
                         (_g1611516207_ _g1611716210_)))))
              (let ((_g1611316514_
                     (lambda (_g1611716392_)
                       (if (gx#stx-pair? _g1611716392_)
                           (let ((_e1612016394_ (gx#stx-e _g1611716392_)))
                             (let ((_hd1612116397_ (##car _e1612016394_))
                                   (_tl1612216399_ (##cdr _e1612016394_)))
                               (if (gx#stx-pair? _tl1612216399_)
                                   (let ((_e1612316402_
                                          (gx#stx-e _tl1612216399_)))
                                     (let ((_hd1612416405_
                                            (##car _e1612316402_))
                                           (_tl1612516407_
                                            (##cdr _e1612316402_)))
                                       (if (gx#stx-pair? _hd1612416405_)
                                           (let ((_e1612616410_
                                                  (gx#stx-e _hd1612416405_)))
                                             (let ((_hd1612716413_
                                                    (##car _e1612616410_))
                                                   (_tl1612816415_
                                                    (##cdr _e1612616410_)))
                                               (if (gx#stx-null?
                                                    _tl1612816415_)
                                                   (if (gx#stx-pair?
                                                        _tl1612516407_)
                                                       (let ((_e1612916418_
                                                              (gx#stx-e
                                                               _tl1612516407_)))
                                                         (let ((_hd1613016421_
                                                                (##car _e1612916418_))
                                                               (_tl1613116423_
                                                                (##cdr _e1612916418_)))
                                                           (if (gx#stx-null?
                                                                _tl1613116423_)
                                                               ((lambda (_L16426_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _L16427_)
                          (if (if (gx#identifier? _L16427_)
                                  (gxc#case-lambda-expr? _L16426_)
                                  '#f)
                              (let ((_g1644416458_
                                     (lambda (_g1644516455_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g1644516455_))))
                                (let ((_g1644316489_
                                       (lambda (_g1644516461_)
                                         (if (gx#stx-pair? _g1644516461_)
                                             (let ((_e1645116463_
                                                    (gx#stx-e _g1644516461_)))
                                               (let ((_hd1645216466_
                                                      (##car _e1645116463_))
                                                     (_tl1645316468_
                                                      (##cdr _e1645116463_)))
                                                 ((lambda (_L16471_)
                                                    (let ((_g19637_
                                                           (gxc#lift-case-lambda-clauses__0
                                                            _stx16110_
                                                            _L16427_
                                                            _L16471_)))
                                                      (begin
                                                        (let ((_g19638_
                                                               (values-count
                                                                _g19637_)))
                                                          (if (not (fx= _g19638_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                3))
                      (error "Context expects 3 values" _g19638_)))
                (let ((_ids16481_ (values-ref _g19637_ 0))
                      (_impls16482_ (values-ref _g19637_ 1))
                      (_clauses16483_ (values-ref _g19637_ 2)))
                  (let ((_g19639_ (for-each gx#core-bind-runtime! _ids16481_)))
                    (let ((_defs16486_
                           (map _case-lambda-clause-def16112_
                                _ids16481_
                                _impls16482_)))
                      (let ()
                        (begin
                          (gxc#verbose
                           '"lift case-lambda clauses "
                           (gxc#generate-runtime-binding-id _L16427_)
                           '" => "
                           (map gxc#identifier-symbol _ids16481_))
                          (gxc#xform-wrap-source
                           (cons '%#begin
                                 (foldr1 cons
                                         (cons (gxc#xform-wrap-source
                                                (cons '%#define-values
                                                      (cons (cons _L16427_ '())
                                                            (cons (gxc#xform-wrap-source
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '%#case-lambda _clauses16483_)
                           (gx#datum->syntax__0 '#f 'case-lambda-expr))
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _stx16110_)
                                               '())
                                         _defs16486_))
                           _stx16110_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _tl1645316468_)))
                                             (_g1644416458_ _g1644516461_)))))
                                  (let ((_g1644216511_
                                         (lambda (_g1644516492_)
                                           (if (gx#stx-pair? _g1644516492_)
                                               (let ((_e1644716494_
                                                      (gx#stx-e
                                                       _g1644516492_)))
                                                 (let ((_hd1644816497_
                                                        (##car _e1644716494_))
                                                       (_tl1644916499_
                                                        (##cdr _e1644716494_)))
                                                   ((lambda (_L16502_)
                                                      (if (andmap1 gxc#dispatch-lambda-form?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L16502_)
                  _stx16110_
                  (_g1644316489_ _g1644516492_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _tl1644916499_)))
                                               (_g1644316489_
                                                _g1644516492_)))))
                                    (_g1644216511_ _L16426_))))
                              (_g1611416389_ _g1611716392_)))
                        _hd1613016421_
                        _hd1612716413_)
                       (_g1611416389_ _g1611716392_))))
               (_g1611416389_ _g1611716392_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1611416389_
                                                    _g1611716392_))))
                                           (_g1611416389_ _g1611716392_))))
                                   (_g1611416389_ _g1611716392_))))
                           (_g1611416389_ _g1611716392_)))))
                (_g1611316514_ _stx16110_))))))))
  (define gxc#lift-top-lambda-let-values%
    (lambda (_stx15533_)
      (let ((_bind-e__opt-lambda16092__1958619587_
             (lambda (_id16094_ _expr16095_ _compile?16096_)
               (cons (cons _id16094_ '())
                     (cons (if _compile?16096_
                               (gxc#compile-e _expr16095_)
                               _expr16095_)
                           '())))))
        (let ((_bind-e__0__1958819589_
               (lambda (_id16101_ _expr16102_)
                 (let ((_compile?16104_ '#t))
                   (_bind-e__opt-lambda16092__1958619587_
                    _id16101_
                    _expr16102_
                    _compile?16104_)))))
          (let ((_bind-e15535_
                 (lambda _g19649_
                   (let ((_g19648_ (length _g19649_)))
                     (cond ((fx= _g19648_ 2)
                            (apply _bind-e__0__1958819589_ _g19649_))
                           ((fx= _g19648_ 3)
                            (apply _bind-e__opt-lambda16092__1958619587_
                                   _g19649_))
                           (else
                            (##raise-wrong-number-of-arguments-exception
                             'case-lambda-dispatch
                             _g19649_)))))))
            (let ((_compile-bindings15536_
                   (lambda (_rest15678_)
                     ((letrec ((_lp15680_
                                (lambda (_rest15682_
                                         _lift115683_
                                         _lift215684_
                                         _bind15685_)
                                  (let ((_rest1568615694_ _rest15682_))
                                    (let ((_E1568915698_
                                           (lambda ()
                                             (error '"No clause matching"
                                                    _rest1568615694_))))
                                      (let ((_else1568815702_
                                             (lambda ()
                                               (values (reverse _lift115683_)
                                                       (reverse _lift215684_)
                                                       (reverse _bind15685_)))))
                                        (let ((_K1569016081_
                                               (lambda (_rest15705_ _hd15706_)
                                                 (let ((_g1571015746_
                                                        (lambda (_g1571115743_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax"
                                                           _g1571115743_))))
                                                   (let ((_g1570915787_
                                                          (lambda (_g1571115749_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1571115749_)
                        (let ((_e1573615751_ (gx#stx-e _g1571115749_)))
                          (let ((_hd1573715754_ (##car _e1573615751_))
                                (_tl1573815756_ (##cdr _e1573615751_)))
                            (if (gx#stx-pair? _tl1573815756_)
                                (let ((_e1573915759_
                                       (gx#stx-e _tl1573815756_)))
                                  (let ((_hd1574015762_ (##car _e1573915759_))
                                        (_tl1574115764_ (##cdr _e1573915759_)))
                                    (if (gx#stx-null? _tl1574115764_)
                                        ((lambda (_L15767_ _L15768_)
                                           (_lp15680_
                                            _rest15705_
                                            _lift115683_
                                            _lift215684_
                                            (cons (cons _L15768_
                                                        (cons (gxc#compile-e
                                                               _L15767_)
                                                              '()))
                                                  _bind15685_)))
                                         _hd1574015762_
                                         _hd1573715754_)
                                        (_g1571015746_ _g1571115749_))))
                                (_g1571015746_ _g1571115749_))))
                        (_g1571015746_ _g1571115749_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_g1570815959_
                                                            (lambda (_g1571115790_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g1571115790_)
                          (let ((_e1572515792_ (gx#stx-e _g1571115790_)))
                            (let ((_hd1572615795_ (##car _e1572515792_))
                                  (_tl1572715797_ (##cdr _e1572515792_)))
                              (if (gx#stx-pair? _hd1572615795_)
                                  (let ((_e1572815800_
                                         (gx#stx-e _hd1572615795_)))
                                    (let ((_hd1572915803_
                                           (##car _e1572815800_))
                                          (_tl1573015805_
                                           (##cdr _e1572815800_)))
                                      (if (gx#stx-null? _tl1573015805_)
                                          (if (gx#stx-pair? _tl1572715797_)
                                              (let ((_e1573115808_
                                                     (gx#stx-e
                                                      _tl1572715797_)))
                                                (let ((_hd1573215811_
                                                       (##car _e1573115808_))
                                                      (_tl1573315813_
                                                       (##cdr _e1573115808_)))
                                                  (if (gx#stx-null?
                                                       _tl1573315813_)
                                                      ((lambda (_L15816_
                                                                _L15817_)
                                                         (if (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L15817_)
                         (gxc#opt-lambda-expr? _L15816_)
                         '#f)
                     (let ((_g1583115861_
                            (lambda (_g1583215858_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g1583215858_))))
                       (let ((_g1583015956_
                              (lambda (_g1583215864_)
                                (if (gx#stx-pair? _g1583215864_)
                                    (let ((_e1583615866_
                                           (gx#stx-e _g1583215864_)))
                                      (let ((_hd1583715869_
                                             (##car _e1583615866_))
                                            (_tl1583815871_
                                             (##cdr _e1583615866_)))
                                        (if (gx#stx-pair? _tl1583815871_)
                                            (let ((_e1583915874_
                                                   (gx#stx-e _tl1583815871_)))
                                              (let ((_hd1584015877_
                                                     (##car _e1583915874_))
                                                    (_tl1584115879_
                                                     (##cdr _e1583915874_)))
                                                (if (gx#stx-pair?
                                                     _hd1584015877_)
                                                    (let ((_e1584215882_
                                                           (gx#stx-e
                                                            _hd1584015877_)))
                                                      (let ((_hd1584315885_
                                                             (##car _e1584215882_))
                                                            (_tl1584415887_
                                                             (##cdr _e1584215882_)))
                                                        (if (gx#stx-pair?
                                                             _hd1584315885_)
                                                            (let ((_e1584515890_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1584315885_)))
                      (let ((_hd1584615893_ (##car _e1584515890_))
                            (_tl1584715895_ (##cdr _e1584515890_)))
                        (if (gx#stx-pair? _hd1584615893_)
                            (let ((_e1584815898_ (gx#stx-e _hd1584615893_)))
                              (let ((_hd1584915901_ (##car _e1584815898_))
                                    (_tl1585015903_ (##cdr _e1584815898_)))
                                (if (gx#stx-null? _tl1585015903_)
                                    (if (gx#stx-pair? _tl1584715895_)
                                        (let ((_e1585115906_
                                               (gx#stx-e _tl1584715895_)))
                                          (let ((_hd1585215909_
                                                 (##car _e1585115906_))
                                                (_tl1585315911_
                                                 (##cdr _e1585115906_)))
                                            (if (gx#stx-null? _tl1585315911_)
                                                (if (gx#stx-null?
                                                     _tl1584415887_)
                                                    (if (gx#stx-pair?
                                                         _tl1584115879_)
                                                        (let ((_e1585415914_
                                                               (gx#stx-e
                                                                _tl1584115879_)))
                                                          (let ((_hd1585515917_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1585415914_))
                        (_tl1585615919_ (##cdr _e1585415914_)))
                    (if (gx#stx-null? _tl1585615919_)
                        ((lambda (_L15922_ _L15923_ _L15924_)
                           (let ((_lambda-id15948_
                                  (make-symbol
                                   (gx#stx-e _L15817_)
                                   '"__"
                                   (gx#stx-e _L15924_)
                                   (gensym '__))))
                             (let ((_lambda-id15950_
                                    (gx#core-quote-syntax__1
                                     _lambda-id15948_
                                     (gx#stx-source _stx15533_))))
                               (let ((_g19644_
                                      (gx#core-bind-runtime!__0
                                       _lambda-id15950_)))
                                 (let ((_new-case-lambda-expr15953_
                                        (gxc#apply-expression-subst
                                         _L15922_
                                         _L15924_
                                         _lambda-id15950_)))
                                   (let ()
                                     (begin
                                       (gxc#verbose
                                        '"lift opt-lambda dispatch "
                                        (gxc#generate-runtime-binding-id
                                         _L15817_)
                                        '" => "
                                        (gxc#generate-runtime-binding-id
                                         _lambda-id15950_))
                                       (_lp15680_
                                        (cons (_bind-e__opt-lambda16092__1958619587_
                                               _L15817_
                                               _new-case-lambda-expr15953_
                                               '#f)
                                              _rest15705_)
                                        (cons (_bind-e__0__1958819589_
                                               _lambda-id15950_
                                               _L15923_)
                                              _lift115683_)
                                        _lift215684_
                                        _bind15685_))))))))
                         _hd1585515917_
                         _hd1585215909_
                         _hd1584915901_)
                        (_g1583115861_ _g1583215864_))))
                (_g1583115861_ _g1583215864_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1583115861_
                                                     _g1583215864_))
                                                (_g1583115861_
                                                 _g1583215864_))))
                                        (_g1583115861_ _g1583215864_))
                                    (_g1583115861_ _g1583215864_))))
                            (_g1583115861_ _g1583215864_))))
                    (_g1583115861_ _g1583215864_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1583115861_
                                                     _g1583215864_))))
                                            (_g1583115861_ _g1583215864_))))
                                    (_g1583115861_ _g1583215864_)))))
                         (_g1583015956_ _L15816_)))
                     (_g1570915787_ _g1571115790_)))
               _hd1573215811_
               _hd1572915803_)
              (_g1570915787_ _g1571115790_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1570915787_ _g1571115790_))
                                          (_g1570915787_ _g1571115790_))))
                                  (_g1570915787_ _g1571115790_))))
                          (_g1570915787_ _g1571115790_)))))
               (let ((_g1570716078_
                      (lambda (_g1571115962_)
                        (if (gx#stx-pair? _g1571115962_)
                            (let ((_e1571415964_ (gx#stx-e _g1571115962_)))
                              (let ((_hd1571515967_ (##car _e1571415964_))
                                    (_tl1571615969_ (##cdr _e1571415964_)))
                                (if (gx#stx-pair? _hd1571515967_)
                                    (let ((_e1571715972_
                                           (gx#stx-e _hd1571515967_)))
                                      (let ((_hd1571815975_
                                             (##car _e1571715972_))
                                            (_tl1571915977_
                                             (##cdr _e1571715972_)))
                                        (if (gx#stx-null? _tl1571915977_)
                                            (if (gx#stx-pair? _tl1571615969_)
                                                (let ((_e1572015980_
                                                       (gx#stx-e
                                                        _tl1571615969_)))
                                                  (let ((_hd1572115983_
                                                         (##car _e1572015980_))
                                                        (_tl1572215985_
                                                         (##cdr _e1572015980_)))
                                                    (if (gx#stx-null?
                                                         _tl1572215985_)
                                                        ((lambda (_L15988_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L15989_)
                   (if (if (gx#identifier? _L15989_)
                           (gxc#case-lambda-expr? _L15988_)
                           '#f)
                       (let ((_g1600416018_
                              (lambda (_g1600516015_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g1600516015_))))
                         (let ((_g1600316053_
                                (lambda (_g1600516021_)
                                  (if (gx#stx-pair? _g1600516021_)
                                      (let ((_e1601116023_
                                             (gx#stx-e _g1600516021_)))
                                        (let ((_hd1601216026_
                                               (##car _e1601116023_))
                                              (_tl1601316028_
                                               (##cdr _e1601116023_)))
                                          ((lambda (_L16031_)
                                             (let ((_g19645_
                                                    (gxc#lift-case-lambda-clauses__opt-lambda16519
                                                     _stx15533_
                                                     _L15989_
                                                     _L16031_
                                                     '#t)))
                                               (begin
                                                 (let ((_g19646_
                                                        (values-count
                                                         _g19645_)))
                                                   (if (not (fx= _g19646_ 3))
                                                       (error "Context expects 3 values"
                                                              _g19646_)))
                                                 (let ((_ids16041_
                                                        (values-ref
                                                         _g19645_
                                                         0))
                                                       (_impls16042_
                                                        (values-ref
                                                         _g19645_
                                                         1))
                                                       (_clauses16043_
                                                        (values-ref
                                                         _g19645_
                                                         2)))
                                                   (let ((_g19647_
                                                          (for-each
                                                           gx#core-bind-runtime!
                                                           _ids16041_)))
                                                     (let ((_xbind16046_
                                                            (map _bind-e15535_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _ids16041_
                         _impls16042_)))
               (let ((_expr*16048_
                      (gxc#xform-wrap-source
                       (cons '%#case-lambda _clauses16043_)
                       (gx#datum->syntax__0 '#f 'case-lambda-expr))))
                 (let ((_bind*16050_
                        (_bind-e__opt-lambda16092__1958619587_
                         _L15989_
                         _expr*16048_
                         '#f)))
                   (let ()
                     (begin
                       (gxc#verbose
                        '"lift case-lambda clauses "
                        (gxc#generate-runtime-binding-id _L15989_)
                        '" => "
                        (map gxc#identifier-symbol _ids16041_))
                       (_lp15680_
                        _rest15705_
                        _lift115683_
                        (foldl1 cons _lift215684_ _xbind16046_)
                        (cons _bind*16050_ _bind15685_))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _tl1601316028_)))
                                      (_g1600416018_ _g1600516021_)))))
                           (let ((_g1600216075_
                                  (lambda (_g1600516056_)
                                    (if (gx#stx-pair? _g1600516056_)
                                        (let ((_e1600716058_
                                               (gx#stx-e _g1600516056_)))
                                          (let ((_hd1600816061_
                                                 (##car _e1600716058_))
                                                (_tl1600916063_
                                                 (##cdr _e1600716058_)))
                                            ((lambda (_L16066_)
                                               (if (andmap1 gxc#dispatch-lambda-form?
                                                            _L16066_)
                                                   (_lp15680_
                                                    _rest15705_
                                                    _lift115683_
                                                    _lift215684_
                                                    (cons (_bind-e__opt-lambda16092__1958619587_
                                                           _L15989_
                                                           _L15988_
                                                           '#f)
                                                          _bind15685_))
                                                   (_g1600316053_
                                                    _g1600516056_)))
                                             _tl1600916063_)))
                                        (_g1600316053_ _g1600516056_)))))
                             (_g1600216075_ _L15988_))))
                       (_g1570815959_ _g1571115962_)))
                 _hd1572115983_
                 _hd1571815975_)
                (_g1570815959_ _g1571115962_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1570815959_ _g1571115962_))
                                            (_g1570815959_ _g1571115962_))))
                                    (_g1570815959_ _g1571115962_))))
                            (_g1570815959_ _g1571115962_)))))
                 (_g1570716078_ _hd15706_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (##pair? _rest1568615694_)
                                              (let ((_hd1569116084_
                                                     (##car _rest1568615694_))
                                                    (_tl1569216086_
                                                     (##cdr _rest1568615694_)))
                                                (let ((_hd16089_
                                                       _hd1569116084_))
                                                  (let ((_rest16091_
                                                         _tl1569216086_))
                                                    (_K1569016081_
                                                     _rest16091_
                                                     _hd16089_))))
                                              (_else1568815702_)))))))))
                        _lp15680_)
                      _rest15678_
                      '()
                      '()
                      '()))))
              (let ((_g1553915565_
                     (lambda (_g1554015562_)
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax"
                        _g1554015562_))))
                (let ((_g1553815572_
                       (lambda (_g1554015568_)
                         ((lambda () (gxc#xform-let-values% _stx15533_))))))
                  (let ((_g1553715675_
                         (lambda (_g1554015575_)
                           (if (gx#stx-pair? _g1554015575_)
                               (let ((_e1554315577_ (gx#stx-e _g1554015575_)))
                                 (let ((_hd1554415580_ (##car _e1554315577_))
                                       (_tl1554515582_ (##cdr _e1554315577_)))
                                   (if (gx#stx-pair? _tl1554515582_)
                                       (let ((_e1554615585_
                                              (gx#stx-e _tl1554515582_)))
                                         (let ((_hd1554715588_
                                                (##car _e1554615585_))
                                               (_tl1554815590_
                                                (##cdr _e1554615585_)))
                                           (if (gx#stx-pair/null?
                                                _hd1554715588_)
                                               (if (fx>= (gx#stx-length
                                                          _hd1554715588_)
                                                         '0)
                                                   (let ((_g19640_
                                                          (gx#syntax-split-splice
                                                           _hd1554715588_
                                                           '0)))
                                                     (begin
                                                       (let ((_g19641_
                                                              (values-count
                                                               _g19640_)))
                                                         (if (not (fx= _g19641_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g19641_)))
               (let ((_target1554915593_ (values-ref _g19640_ 0))
                     (_tl1555115595_ (values-ref _g19640_ 1)))
                 (if (gx#stx-null? _tl1555115595_)
                     (letrec ((_loop1555215598_
                               (lambda (_hd1555015601_ _bind1555615603_)
                                 (if (gx#stx-pair? _hd1555015601_)
                                     (let ((_e1555315606_
                                            (gx#stx-e _hd1555015601_)))
                                       (let ((_lp-hd1555415609_
                                              (##car _e1555315606_))
                                             (_lp-tl1555515611_
                                              (##cdr _e1555315606_)))
                                         (_loop1555215598_
                                          _lp-tl1555515611_
                                          (cons _lp-hd1555415609_
                                                _bind1555615603_))))
                                     (let ((_bind1555715614_
                                            (reverse _bind1555615603_)))
                                       (if (gx#stx-pair? _tl1554815590_)
                                           (let ((_e1555815617_
                                                  (gx#stx-e _tl1554815590_)))
                                             (let ((_hd1555915620_
                                                    (##car _e1555815617_))
                                                   (_tl1556015622_
                                                    (##cdr _e1555815617_)))
                                               (if (gx#stx-null?
                                                    _tl1556015622_)
                                                   ((lambda (_L15625_ _L15626_)
                                                      (if (ormap1 gxc#lift-top-lambda-binding?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (begin
                            '#!void
                            (foldr1 (lambda (_g1564615649_ _g1564715651_)
                                      (cons _g1564615649_ _g1564715651_))
                                    '()
                                    _L15626_)))
                  (call-with-parameters
                   (lambda ()
                     (let ((_g19642_
                            (_compile-bindings15536_
                             (begin
                               '#!void
                               (foldr1 (lambda (_g1565415657_ _g1565515659_)
                                         (cons _g1565415657_ _g1565515659_))
                                       '()
                                       _L15626_)))))
                       (begin
                         (let ((_g19643_ (values-count _g19642_)))
                           (if (not (fx= _g19643_ 3))
                               (error "Context expects 3 values" _g19643_)))
                         (let ((_lift115662_ (values-ref _g19642_ 0))
                               (_lift215663_ (values-ref _g19642_ 1))
                               (_hd15664_ (values-ref _g19642_ 2)))
                           (let ((_body15666_ (gxc#compile-e _L15625_)))
                             (let ((_expr15668_
                                    (gxc#xform-wrap-source
                                     (cons '%#let-values
                                           (cons _hd15664_
                                                 (cons _body15666_ '())))
                                     _stx15533_)))
                               (let ((_expr15670_
                                      (if (null? _lift215663_)
                                          _expr15668_
                                          (gxc#xform-wrap-source
                                           (cons '%#let-values
                                                 (cons _lift215663_
                                                       (cons _expr15668_ '())))
                                           _stx15533_))))
                                 (let ((_expr15672_
                                        (if (null? _lift115662_)
                                            _expr15670_
                                            (gxc#xform-wrap-source
                                             (cons '%#let-values
                                                   (cons _lift115662_
                                                         (cons _expr15670_
                                                               '())))
                                             _stx15533_))))
                                   (let () _expr15672_)))))))))
                   gx#current-expander-context
                   (let ((__obj19596 (make-object gx#local-context::t '5)))
                     (begin
                       (gx#local-context:::init!__0 __obj19596)
                       __obj19596)))
                  (_g1553815572_ _g1554015575_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd1555915620_
                                                    _bind1555715614_)
                                                   (_g1553815572_
                                                    _g1554015575_))))
                                           (_g1553815572_ _g1554015575_)))))))
                       (_loop1555215598_ _target1554915593_ '()))
                     (_g1553815572_ _g1554015575_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1553815572_
                                                    _g1554015575_))
                                               (_g1553815572_ _g1554015575_))))
                                       (_g1553815572_ _g1554015575_))))
                               (_g1553815572_ _g1554015575_)))))
                    (_g1553715675_ _stx15533_))))))))))
  (define gxc#lift-top-lambda-letrec-values%
    (lambda (_stx14965_)
      (let ((_bind-e__opt-lambda15515__1959119592_
             (lambda (_id15517_ _expr15518_ _compile?15519_)
               (cons (cons _id15517_ '())
                     (cons (if _compile?15519_
                               (gxc#compile-e _expr15518_)
                               _expr15518_)
                           '())))))
        (let ((_bind-e__0__1959319594_
               (lambda (_id15524_ _expr15525_)
                 (let ((_compile?15527_ '#t))
                   (_bind-e__opt-lambda15515__1959119592_
                    _id15524_
                    _expr15525_
                    _compile?15527_)))))
          (let ((_bind-e14967_
                 (lambda _g19657_
                   (let ((_g19656_ (length _g19657_)))
                     (cond ((fx= _g19656_ 2)
                            (apply _bind-e__0__1959319594_ _g19657_))
                           ((fx= _g19656_ 3)
                            (apply _bind-e__opt-lambda15515__1959119592_
                                   _g19657_))
                           (else
                            (##raise-wrong-number-of-arguments-exception
                             'case-lambda-dispatch
                             _g19657_)))))))
            (let ((_compile-bindings14968_
                   (lambda (_rest15103_)
                     ((letrec ((_lp15105_
                                (lambda (_rest15107_ _bind15108_)
                                  (let ((_rest1510915117_ _rest15107_))
                                    (let ((_E1511215121_
                                           (lambda ()
                                             (error '"No clause matching"
                                                    _rest1510915117_))))
                                      (let ((_else1511115125_
                                             (lambda ()
                                               (reverse _bind15108_))))
                                        (let ((_K1511315504_
                                               (lambda (_rest15128_ _hd15129_)
                                                 (let ((_g1513315169_
                                                        (lambda (_g1513415166_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax"
                                                           _g1513415166_))))
                                                   (let ((_g1513215210_
                                                          (lambda (_g1513415172_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1513415172_)
                        (let ((_e1515915174_ (gx#stx-e _g1513415172_)))
                          (let ((_hd1516015177_ (##car _e1515915174_))
                                (_tl1516115179_ (##cdr _e1515915174_)))
                            (if (gx#stx-pair? _tl1516115179_)
                                (let ((_e1516215182_
                                       (gx#stx-e _tl1516115179_)))
                                  (let ((_hd1516315185_ (##car _e1516215182_))
                                        (_tl1516415187_ (##cdr _e1516215182_)))
                                    (if (gx#stx-null? _tl1516415187_)
                                        ((lambda (_L15190_ _L15191_)
                                           (_lp15105_
                                            _rest15128_
                                            (cons (cons _L15191_
                                                        (cons (gxc#compile-e
                                                               _L15190_)
                                                              '()))
                                                  _bind15108_)))
                                         _hd1516315185_
                                         _hd1516015177_)
                                        (_g1513315169_ _g1513415172_))))
                                (_g1513315169_ _g1513415172_))))
                        (_g1513315169_ _g1513415172_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_g1513115382_
                                                            (lambda (_g1513415213_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g1513415213_)
                          (let ((_e1514815215_ (gx#stx-e _g1513415213_)))
                            (let ((_hd1514915218_ (##car _e1514815215_))
                                  (_tl1515015220_ (##cdr _e1514815215_)))
                              (if (gx#stx-pair? _hd1514915218_)
                                  (let ((_e1515115223_
                                         (gx#stx-e _hd1514915218_)))
                                    (let ((_hd1515215226_
                                           (##car _e1515115223_))
                                          (_tl1515315228_
                                           (##cdr _e1515115223_)))
                                      (if (gx#stx-null? _tl1515315228_)
                                          (if (gx#stx-pair? _tl1515015220_)
                                              (let ((_e1515415231_
                                                     (gx#stx-e
                                                      _tl1515015220_)))
                                                (let ((_hd1515515234_
                                                       (##car _e1515415231_))
                                                      (_tl1515615236_
                                                       (##cdr _e1515415231_)))
                                                  (if (gx#stx-null?
                                                       _tl1515615236_)
                                                      ((lambda (_L15239_
                                                                _L15240_)
                                                         (if (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L15240_)
                         (gxc#opt-lambda-expr? _L15239_)
                         '#f)
                     (let ((_g1525415284_
                            (lambda (_g1525515281_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g1525515281_))))
                       (let ((_g1525315379_
                              (lambda (_g1525515287_)
                                (if (gx#stx-pair? _g1525515287_)
                                    (let ((_e1525915289_
                                           (gx#stx-e _g1525515287_)))
                                      (let ((_hd1526015292_
                                             (##car _e1525915289_))
                                            (_tl1526115294_
                                             (##cdr _e1525915289_)))
                                        (if (gx#stx-pair? _tl1526115294_)
                                            (let ((_e1526215297_
                                                   (gx#stx-e _tl1526115294_)))
                                              (let ((_hd1526315300_
                                                     (##car _e1526215297_))
                                                    (_tl1526415302_
                                                     (##cdr _e1526215297_)))
                                                (if (gx#stx-pair?
                                                     _hd1526315300_)
                                                    (let ((_e1526515305_
                                                           (gx#stx-e
                                                            _hd1526315300_)))
                                                      (let ((_hd1526615308_
                                                             (##car _e1526515305_))
                                                            (_tl1526715310_
                                                             (##cdr _e1526515305_)))
                                                        (if (gx#stx-pair?
                                                             _hd1526615308_)
                                                            (let ((_e1526815313_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1526615308_)))
                      (let ((_hd1526915316_ (##car _e1526815313_))
                            (_tl1527015318_ (##cdr _e1526815313_)))
                        (if (gx#stx-pair? _hd1526915316_)
                            (let ((_e1527115321_ (gx#stx-e _hd1526915316_)))
                              (let ((_hd1527215324_ (##car _e1527115321_))
                                    (_tl1527315326_ (##cdr _e1527115321_)))
                                (if (gx#stx-null? _tl1527315326_)
                                    (if (gx#stx-pair? _tl1527015318_)
                                        (let ((_e1527415329_
                                               (gx#stx-e _tl1527015318_)))
                                          (let ((_hd1527515332_
                                                 (##car _e1527415329_))
                                                (_tl1527615334_
                                                 (##cdr _e1527415329_)))
                                            (if (gx#stx-null? _tl1527615334_)
                                                (if (gx#stx-null?
                                                     _tl1526715310_)
                                                    (if (gx#stx-pair?
                                                         _tl1526415302_)
                                                        (let ((_e1527715337_
                                                               (gx#stx-e
                                                                _tl1526415302_)))
                                                          (let ((_hd1527815340_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1527715337_))
                        (_tl1527915342_ (##cdr _e1527715337_)))
                    (if (gx#stx-null? _tl1527915342_)
                        ((lambda (_L15345_ _L15346_ _L15347_)
                           (let ((_lambda-id15371_
                                  (make-symbol
                                   (gx#stx-e _L15240_)
                                   '"__"
                                   (gx#stx-e _L15347_)
                                   (gensym '__))))
                             (let ((_lambda-id15373_
                                    (gx#core-quote-syntax__1
                                     _lambda-id15371_
                                     (gx#stx-source _stx14965_))))
                               (let ((_g19652_
                                      (gx#core-bind-runtime!__0
                                       _lambda-id15373_)))
                                 (let ((_new-case-lambda-expr15376_
                                        (gxc#apply-expression-subst
                                         _L15345_
                                         _L15347_
                                         _lambda-id15373_)))
                                   (let ()
                                     (begin
                                       (gxc#verbose
                                        '"lift opt-lambda dispatch "
                                        (gxc#generate-runtime-binding-id
                                         _L15240_)
                                        '" => "
                                        (gxc#generate-runtime-binding-id
                                         _lambda-id15373_))
                                       (_lp15105_
                                        (cons (_bind-e__opt-lambda15515__1959119592_
                                               _L15240_
                                               _new-case-lambda-expr15376_
                                               '#f)
                                              _rest15128_)
                                        (cons (_bind-e__0__1959319594_
                                               _lambda-id15373_
                                               _L15346_)
                                              _bind15108_)))))))))
                         _hd1527815340_
                         _hd1527515332_
                         _hd1527215324_)
                        (_g1525415284_ _g1525515287_))))
                (_g1525415284_ _g1525515287_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1525415284_
                                                     _g1525515287_))
                                                (_g1525415284_
                                                 _g1525515287_))))
                                        (_g1525415284_ _g1525515287_))
                                    (_g1525415284_ _g1525515287_))))
                            (_g1525415284_ _g1525515287_))))
                    (_g1525415284_ _g1525515287_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1525415284_
                                                     _g1525515287_))))
                                            (_g1525415284_ _g1525515287_))))
                                    (_g1525415284_ _g1525515287_)))))
                         (_g1525315379_ _L15239_)))
                     (_g1513215210_ _g1513415213_)))
               _hd1515515234_
               _hd1515215226_)
              (_g1513215210_ _g1513415213_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1513215210_ _g1513415213_))
                                          (_g1513215210_ _g1513415213_))))
                                  (_g1513215210_ _g1513415213_))))
                          (_g1513215210_ _g1513415213_)))))
               (let ((_g1513015501_
                      (lambda (_g1513415385_)
                        (if (gx#stx-pair? _g1513415385_)
                            (let ((_e1513715387_ (gx#stx-e _g1513415385_)))
                              (let ((_hd1513815390_ (##car _e1513715387_))
                                    (_tl1513915392_ (##cdr _e1513715387_)))
                                (if (gx#stx-pair? _hd1513815390_)
                                    (let ((_e1514015395_
                                           (gx#stx-e _hd1513815390_)))
                                      (let ((_hd1514115398_
                                             (##car _e1514015395_))
                                            (_tl1514215400_
                                             (##cdr _e1514015395_)))
                                        (if (gx#stx-null? _tl1514215400_)
                                            (if (gx#stx-pair? _tl1513915392_)
                                                (let ((_e1514315403_
                                                       (gx#stx-e
                                                        _tl1513915392_)))
                                                  (let ((_hd1514415406_
                                                         (##car _e1514315403_))
                                                        (_tl1514515408_
                                                         (##cdr _e1514315403_)))
                                                    (if (gx#stx-null?
                                                         _tl1514515408_)
                                                        ((lambda (_L15411_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L15412_)
                   (if (if (gx#identifier? _L15412_)
                           (gxc#case-lambda-expr? _L15411_)
                           '#f)
                       (let ((_g1542715441_
                              (lambda (_g1542815438_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g1542815438_))))
                         (let ((_g1542615476_
                                (lambda (_g1542815444_)
                                  (if (gx#stx-pair? _g1542815444_)
                                      (let ((_e1543415446_
                                             (gx#stx-e _g1542815444_)))
                                        (let ((_hd1543515449_
                                               (##car _e1543415446_))
                                              (_tl1543615451_
                                               (##cdr _e1543415446_)))
                                          ((lambda (_L15454_)
                                             (let ((_g19653_
                                                    (gxc#lift-case-lambda-clauses__opt-lambda16519
                                                     _stx14965_
                                                     _L15412_
                                                     _L15454_
                                                     '#t)))
                                               (begin
                                                 (let ((_g19654_
                                                        (values-count
                                                         _g19653_)))
                                                   (if (not (fx= _g19654_ 3))
                                                       (error "Context expects 3 values"
                                                              _g19654_)))
                                                 (let ((_ids15464_
                                                        (values-ref
                                                         _g19653_
                                                         0))
                                                       (_impls15465_
                                                        (values-ref
                                                         _g19653_
                                                         1))
                                                       (_clauses15466_
                                                        (values-ref
                                                         _g19653_
                                                         2)))
                                                   (let ((_g19655_
                                                          (for-each
                                                           gx#core-bind-runtime!
                                                           _ids15464_)))
                                                     (let ((_xbind15469_
                                                            (map _bind-e14967_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _ids15464_
                         _impls15465_)))
               (let ((_expr*15471_
                      (gxc#xform-wrap-source
                       (cons '%#case-lambda _clauses15466_)
                       (gx#datum->syntax__0 '#f 'case-lambda-expr))))
                 (let ((_bind*15473_
                        (_bind-e__opt-lambda15515__1959119592_
                         _L15412_
                         _expr*15471_
                         '#f)))
                   (let ()
                     (begin
                       (gxc#verbose
                        '"lift case-lambda clauses "
                        (gxc#generate-runtime-binding-id _L15412_)
                        '" => "
                        (map gxc#identifier-symbol _ids15464_))
                       (_lp15105_
                        _rest15128_
                        (cons _bind*15473_
                              (foldl1 cons
                                      _bind15108_
                                      _xbind15469_)))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _tl1543615451_)))
                                      (_g1542715441_ _g1542815444_)))))
                           (let ((_g1542515498_
                                  (lambda (_g1542815479_)
                                    (if (gx#stx-pair? _g1542815479_)
                                        (let ((_e1543015481_
                                               (gx#stx-e _g1542815479_)))
                                          (let ((_hd1543115484_
                                                 (##car _e1543015481_))
                                                (_tl1543215486_
                                                 (##cdr _e1543015481_)))
                                            ((lambda (_L15489_)
                                               (if (andmap1 gxc#dispatch-lambda-form?
                                                            _L15489_)
                                                   (_lp15105_
                                                    _rest15128_
                                                    (cons (_bind-e__opt-lambda15515__1959119592_
                                                           _L15412_
                                                           _L15411_
                                                           '#f)
                                                          _bind15108_))
                                                   (_g1542615476_
                                                    _g1542815479_)))
                                             _tl1543215486_)))
                                        (_g1542615476_ _g1542815479_)))))
                             (_g1542515498_ _L15411_))))
                       (_g1513115382_ _g1513415385_)))
                 _hd1514415406_
                 _hd1514115398_)
                (_g1513115382_ _g1513415385_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1513115382_ _g1513415385_))
                                            (_g1513115382_ _g1513415385_))))
                                    (_g1513115382_ _g1513415385_))))
                            (_g1513115382_ _g1513415385_)))))
                 (_g1513015501_ _hd15129_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (##pair? _rest1510915117_)
                                              (let ((_hd1511415507_
                                                     (##car _rest1510915117_))
                                                    (_tl1511515509_
                                                     (##cdr _rest1510915117_)))
                                                (let ((_hd15512_
                                                       _hd1511415507_))
                                                  (let ((_rest15514_
                                                         _tl1511515509_))
                                                    (_K1511315504_
                                                     _rest15514_
                                                     _hd15512_))))
                                              (_else1511115125_)))))))))
                        _lp15105_)
                      _rest15103_
                      '()))))
              (let ((_g1497114998_
                     (lambda (_g1497214995_)
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax"
                        _g1497214995_))))
                (let ((_g1497015005_
                       (lambda (_g1497215001_)
                         ((lambda () (gxc#xform-let-values% _stx14965_))))))
                  (let ((_g1496915100_
                         (lambda (_g1497215008_)
                           (if (gx#stx-pair? _g1497215008_)
                               (let ((_e1497615010_ (gx#stx-e _g1497215008_)))
                                 (let ((_hd1497715013_ (##car _e1497615010_))
                                       (_tl1497815015_ (##cdr _e1497615010_)))
                                   (if (gx#stx-pair? _tl1497815015_)
                                       (let ((_e1497915018_
                                              (gx#stx-e _tl1497815015_)))
                                         (let ((_hd1498015021_
                                                (##car _e1497915018_))
                                               (_tl1498115023_
                                                (##cdr _e1497915018_)))
                                           (if (gx#stx-pair/null?
                                                _hd1498015021_)
                                               (if (fx>= (gx#stx-length
                                                          _hd1498015021_)
                                                         '0)
                                                   (let ((_g19650_
                                                          (gx#syntax-split-splice
                                                           _hd1498015021_
                                                           '0)))
                                                     (begin
                                                       (let ((_g19651_
                                                              (values-count
                                                               _g19650_)))
                                                         (if (not (fx= _g19651_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g19651_)))
               (let ((_target1498215026_ (values-ref _g19650_ 0))
                     (_tl1498415028_ (values-ref _g19650_ 1)))
                 (if (gx#stx-null? _tl1498415028_)
                     (letrec ((_loop1498515031_
                               (lambda (_hd1498315034_ _bind1498915036_)
                                 (if (gx#stx-pair? _hd1498315034_)
                                     (let ((_e1498615039_
                                            (gx#stx-e _hd1498315034_)))
                                       (let ((_lp-hd1498715042_
                                              (##car _e1498615039_))
                                             (_lp-tl1498815044_
                                              (##cdr _e1498615039_)))
                                         (_loop1498515031_
                                          _lp-tl1498815044_
                                          (cons _lp-hd1498715042_
                                                _bind1498915036_))))
                                     (let ((_bind1499015047_
                                            (reverse _bind1498915036_)))
                                       (if (gx#stx-pair? _tl1498115023_)
                                           (let ((_e1499115050_
                                                  (gx#stx-e _tl1498115023_)))
                                             (let ((_hd1499215053_
                                                    (##car _e1499115050_))
                                                   (_tl1499315055_
                                                    (##cdr _e1499115050_)))
                                               (if (gx#stx-null?
                                                    _tl1499315055_)
                                                   ((lambda (_L15058_
                                                             _L15059_
                                                             _L15060_)
                                                      (if (ormap1 gxc#lift-top-lambda-binding?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (begin
                            '#!void
                            (foldr1 (lambda (_g1508115084_ _g1508215086_)
                                      (cons _g1508115084_ _g1508215086_))
                                    '()
                                    _L15059_)))
                  (call-with-parameters
                   (lambda ()
                     (let ((_hd15097_
                            (_compile-bindings14968_
                             (begin
                               '#!void
                               (foldr1 (lambda (_g1508915092_ _g1509015094_)
                                         (cons _g1508915092_ _g1509015094_))
                                       '()
                                       _L15059_))))
                           (_body15098_ (gxc#compile-e _L15058_)))
                       (gxc#xform-wrap-source
                        (cons _L15060_ (cons _hd15097_ (cons _body15098_ '())))
                        _stx14965_)))
                   gx#current-expander-context
                   (let ((__obj19597 (make-object gx#local-context::t '5)))
                     (begin
                       (gx#local-context:::init!__0 __obj19597)
                       __obj19597)))
                  (_g1497015005_ _g1497215008_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd1499215053_
                                                    _bind1499015047_
                                                    _hd1497715013_)
                                                   (_g1497015005_
                                                    _g1497215008_))))
                                           (_g1497015005_ _g1497215008_)))))))
                       (_loop1498515031_ _target1498215026_ '()))
                     (_g1497015005_ _g1497215008_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1497015005_
                                                    _g1497215008_))
                                               (_g1497015005_ _g1497215008_))))
                                       (_g1497015005_ _g1497215008_))))
                               (_g1497015005_ _g1497215008_)))))
                    (_g1496915100_ _stx14965_))))))))))
  (define gxc#lift-top-lambda-binding?
    (lambda (_bind14886_)
      (let ((_g1488914906_
             (lambda (_g1489014903_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1489014903_))))
        (let ((_g1488814913_ (lambda (_g1489014909_) ((lambda () '#f)))))
          (let ((_g1488714962_
                 (lambda (_g1489014916_)
                   (if (gx#stx-pair? _g1489014916_)
                       (let ((_e1489314918_ (gx#stx-e _g1489014916_)))
                         (let ((_hd1489414921_ (##car _e1489314918_))
                               (_tl1489514923_ (##cdr _e1489314918_)))
                           (if (gx#stx-pair? _hd1489414921_)
                               (let ((_e1489614926_ (gx#stx-e _hd1489414921_)))
                                 (let ((_hd1489714929_ (##car _e1489614926_))
                                       (_tl1489814931_ (##cdr _e1489614926_)))
                                   (if (gx#stx-null? _tl1489814931_)
                                       (if (gx#stx-pair? _tl1489514923_)
                                           (let ((_e1489914934_
                                                  (gx#stx-e _tl1489514923_)))
                                             (let ((_hd1490014937_
                                                    (##car _e1489914934_))
                                                   (_tl1490114939_
                                                    (##cdr _e1489914934_)))
                                               (if (gx#stx-null?
                                                    _tl1490114939_)
                                                   ((lambda (_L14942_ _L14943_)
                                                      (if (gx#identifier?
                                                           _L14943_)
                                                          (let ((_$e14959_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gxc#case-lambda-expr? _L14942_)))
                    (if _$e14959_ _$e14959_ (gxc#opt-lambda-expr? _L14942_)))
                  '#f))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd1490014937_
                                                    _hd1489714929_)
                                                   (_g1488814913_
                                                    _g1489014916_))))
                                           (_g1488814913_ _g1489014916_))
                                       (_g1488814913_ _g1489014916_))))
                               (_g1488814913_ _g1489014916_))))
                       (_g1488814913_ _g1489014916_)))))
            (_g1488714962_ _bind14886_))))))
  (define gxc#expression-subst-ref%
    (lambda (_stx14824_ _id14825_ _new-id14826_)
      (let ((_g1482914842_
             (lambda (_g1483014839_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1483014839_))))
        (let ((_g1482814849_
               (lambda (_g1483014845_) ((lambda () _stx14824_)))))
          (let ((_g1482714883_
                 (lambda (_g1483014852_)
                   (if (gx#stx-pair? _g1483014852_)
                       (let ((_e1483214854_ (gx#stx-e _g1483014852_)))
                         (let ((_hd1483314857_ (##car _e1483214854_))
                               (_tl1483414859_ (##cdr _e1483214854_)))
                           (if (gx#stx-pair? _tl1483414859_)
                               (let ((_e1483514862_ (gx#stx-e _tl1483414859_)))
                                 (let ((_hd1483614865_ (##car _e1483514862_))
                                       (_tl1483714867_ (##cdr _e1483514862_)))
                                   (if (gx#stx-null? _tl1483714867_)
                                       ((lambda (_L14870_)
                                          (if (gx#free-identifier=?
                                               _L14870_
                                               _id14825_)
                                              (gxc#xform-wrap-source
                                               (cons '%#ref
                                                     (cons _new-id14826_ '()))
                                               _stx14824_)
                                              (_g1482814849_ _g1483014852_)))
                                        _hd1483614865_)
                                       (_g1482814849_ _g1483014852_))))
                               (_g1482814849_ _g1483014852_))))
                       (_g1482814849_ _g1483014852_)))))
            (_g1482714883_ _stx14824_))))))
  (define gxc#collect-type-define-values%
    (lambda (_stx14680_)
      (let ((_g1468314714_
             (lambda (_g1468414711_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1468414711_))))
        (let ((_g1468214759_
               (lambda (_g1468414717_)
                 (if (gx#stx-pair? _g1468414717_)
                     (let ((_e1470114719_ (gx#stx-e _g1468414717_)))
                       (let ((_hd1470214722_ (##car _e1470114719_))
                             (_tl1470314724_ (##cdr _e1470114719_)))
                         (if (gx#stx-pair? _tl1470314724_)
                             (let ((_e1470414727_ (gx#stx-e _tl1470314724_)))
                               (let ((_hd1470514730_ (##car _e1470414727_))
                                     (_tl1470614732_ (##cdr _e1470414727_)))
                                 (if (gx#stx-pair? _tl1470614732_)
                                     (let ((_e1470714735_
                                            (gx#stx-e _tl1470614732_)))
                                       (let ((_hd1470814738_
                                              (##car _e1470714735_))
                                             (_tl1470914740_
                                              (##cdr _e1470714735_)))
                                         (if (gx#stx-null? _tl1470914740_)
                                             ((lambda (_L14743_ _L14744_)
                                                (gxc#compile-e _L14743_))
                                              _hd1470814738_
                                              _hd1470514730_)
                                             (_g1468314714_ _g1468414717_))))
                                     (_g1468314714_ _g1468414717_))))
                             (_g1468314714_ _g1468414717_))))
                     (_g1468314714_ _g1468414717_)))))
          (let ((_g1468114821_
                 (lambda (_g1468414762_)
                   (if (gx#stx-pair? _g1468414762_)
                       (let ((_e1468714764_ (gx#stx-e _g1468414762_)))
                         (let ((_hd1468814767_ (##car _e1468714764_))
                               (_tl1468914769_ (##cdr _e1468714764_)))
                           (if (gx#stx-pair? _tl1468914769_)
                               (let ((_e1469014772_ (gx#stx-e _tl1468914769_)))
                                 (let ((_hd1469114775_ (##car _e1469014772_))
                                       (_tl1469214777_ (##cdr _e1469014772_)))
                                   (if (gx#stx-pair? _hd1469114775_)
                                       (let ((_e1469314780_
                                              (gx#stx-e _hd1469114775_)))
                                         (let ((_hd1469414783_
                                                (##car _e1469314780_))
                                               (_tl1469514785_
                                                (##cdr _e1469314780_)))
                                           (if (gx#stx-null? _tl1469514785_)
                                               (if (gx#stx-pair?
                                                    _tl1469214777_)
                                                   (let ((_e1469614788_
                                                          (gx#stx-e
                                                           _tl1469214777_)))
                                                     (let ((_hd1469714791_
                                                            (##car _e1469614788_))
                                                           (_tl1469814793_
                                                            (##cdr _e1469614788_)))
                                                       (if (gx#stx-null?
                                                            _tl1469814793_)
                                                           ((lambda (_L14796_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L14797_)
                      (if (gx#identifier? _L14797_)
                          (let ((_sym14813_
                                 (gxc#generate-runtime-binding-id _L14797_)))
                            (begin
                              (if (table-ref
                                   (gxc#current-compile-mutators)
                                   _sym14813_
                                   '#f)
                                  (gxc#verbose
                                   '"skipping type declaration for mutable binding "
                                   _sym14813_)
                                  (let ((_type1481414816_
                                         (gxc#apply-basic-expression-type
                                          _L14796_)))
                                    (if _type1481414816_
                                        (let ((_type14819_ _type1481414816_))
                                          (gxc#optimizer-declare-type!__0
                                           _sym14813_
                                           _type14819_))
                                        '#f)))
                              (gxc#compile-e _L14796_)))
                          (_g1468214759_ _g1468414762_)))
                    _hd1469714791_
                    _hd1469414783_)
                   (_g1468214759_ _g1468414762_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1468214759_
                                                    _g1468414762_))
                                               (_g1468214759_ _g1468414762_))))
                                       (_g1468214759_ _g1468414762_))))
                               (_g1468214759_ _g1468414762_))))
                       (_g1468214759_ _g1468414762_)))))
            (_g1468114821_ _stx14680_))))))
  (define gxc#collect-type-let-values%
    (lambda (_stx14465_)
      (let ((_collect-e14467_
             (lambda (_hd14624_ _expr14625_)
               (let ((_g1462814638_
                      (lambda (_g1462914635_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax"
                         _g1462914635_))))
                 (let ((_g1462714645_
                        (lambda (_g1462914641_) ((lambda () '#!void)))))
                   (let ((_g1462614677_
                          (lambda (_g1462914648_)
                            (if (gx#stx-pair? _g1462914648_)
                                (let ((_e1463114650_ (gx#stx-e _g1462914648_)))
                                  (let ((_hd1463214653_ (##car _e1463114650_))
                                        (_tl1463314655_ (##cdr _e1463114650_)))
                                    (if (gx#stx-null? _tl1463314655_)
                                        ((lambda (_L14658_)
                                           (if (gx#identifier? _L14658_)
                                               (let ((_sym14669_
                                                      (gxc#generate-runtime-binding-id
                                                       _L14658_)))
                                                 (if (table-ref
                                                      (gxc#current-compile-mutators)
                                                      _sym14669_
                                                      '#f)
                                                     (gxc#verbose
                                                      '"skipping type declaration for mutable binding "
                                                      _sym14669_)
                                                     (let ((_type1467014672_
                                                            (gxc#apply-basic-expression-type
                                                             _expr14625_)))
                                                       (if _type1467014672_
                                                           (let ((_type14675_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _type1467014672_))
                     (gxc#optimizer-declare-type!__opt-lambda19370
                      _sym14669_
                      _type14675_
                      '#t))
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1462714645_ _g1462914648_)))
                                         _hd1463214653_)
                                        (_g1462714645_ _g1462914648_))))
                                (_g1462714645_ _g1462914648_)))))
                     (_g1462614677_ _hd14624_)))))))
        (let ((_g1446914504_
               (lambda (_g1447014501_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1447014501_))))
          (let ((_g1446814621_
                 (lambda (_g1447014507_)
                   (if (gx#stx-pair? _g1447014507_)
                       (let ((_e1447414509_ (gx#stx-e _g1447014507_)))
                         (let ((_hd1447514512_ (##car _e1447414509_))
                               (_tl1447614514_ (##cdr _e1447414509_)))
                           (if (gx#stx-pair? _tl1447614514_)
                               (let ((_e1447714517_ (gx#stx-e _tl1447614514_)))
                                 (let ((_hd1447814520_ (##car _e1447714517_))
                                       (_tl1447914522_ (##cdr _e1447714517_)))
                                   (if (gx#stx-pair/null? _hd1447814520_)
                                       (if (fx>= (gx#stx-length _hd1447814520_)
                                                 '0)
                                           (let ((_g19658_
                                                  (gx#syntax-split-splice
                                                   _hd1447814520_
                                                   '0)))
                                             (begin
                                               (let ((_g19659_
                                                      (values-count _g19658_)))
                                                 (if (not (fx= _g19659_ 2))
                                                     (error "Context expects 2 values"
                                                            _g19659_)))
                                               (let ((_target1448014525_
                                                      (values-ref _g19658_ 0))
                                                     (_tl1448214527_
                                                      (values-ref _g19658_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl1448214527_)
                                                     (letrec ((_loop1448314530_
                                                               (lambda (_hd1448114533_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _expr1448714535_
                                _hd1448814537_)
                         (if (gx#stx-pair? _hd1448114533_)
                             (let ((_e1448414540_ (gx#stx-e _hd1448114533_)))
                               (let ((_lp-hd1448514543_ (##car _e1448414540_))
                                     (_lp-tl1448614545_ (##cdr _e1448414540_)))
                                 (if (gx#stx-pair? _lp-hd1448514543_)
                                     (let ((_e1449114548_
                                            (gx#stx-e _lp-hd1448514543_)))
                                       (let ((_hd1449214551_
                                              (##car _e1449114548_))
                                             (_tl1449314553_
                                              (##cdr _e1449114548_)))
                                         (if (gx#stx-pair? _tl1449314553_)
                                             (let ((_e1449414556_
                                                    (gx#stx-e _tl1449314553_)))
                                               (let ((_hd1449514559_
                                                      (##car _e1449414556_))
                                                     (_tl1449614561_
                                                      (##cdr _e1449414556_)))
                                                 (if (gx#stx-null?
                                                      _tl1449614561_)
                                                     (_loop1448314530_
                                                      _lp-tl1448614545_
                                                      (cons _hd1449514559_
                                                            _expr1448714535_)
                                                      (cons _hd1449214551_
                                                            _hd1448814537_))
                                                     (_g1446914504_
                                                      _g1447014507_))))
                                             (_g1446914504_ _g1447014507_))))
                                     (_g1446914504_ _g1447014507_))))
                             (let ((_expr1448914564_
                                    (reverse _expr1448714535_))
                                   (_hd1449014566_ (reverse _hd1448814537_)))
                               (if (gx#stx-pair? _tl1447914522_)
                                   (let ((_e1449714569_
                                          (gx#stx-e _tl1447914522_)))
                                     (let ((_hd1449814572_
                                            (##car _e1449714569_))
                                           (_tl1449914574_
                                            (##cdr _e1449714569_)))
                                       (if (gx#stx-null? _tl1449914574_)
                                           ((lambda (_L14577_
                                                     _L14578_
                                                     _L14579_)
                                              (begin
                                                (for-each
                                                 _collect-e14467_
                                                 (begin
                                                   '#!void
                                                   (foldr1 (lambda (_g1459914602_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g1460014604_)
                     (cons _g1459914602_ _g1460014604_))
                   '()
                   _L14579_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (begin
                                                   '#!void
                                                   (foldr1 (lambda (_g1460614609_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g1460714611_)
                     (cons _g1460614609_ _g1460714611_))
                   '()
                   _L14578_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (for-each
                                                 gxc#compile-e
                                                 (begin
                                                   '#!void
                                                   (foldr1 (lambda (_g1461314616_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g1461414618_)
                     (cons _g1461314616_ _g1461414618_))
                   '()
                   _L14578_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (gxc#compile-e _L14577_)))
                                            _hd1449814572_
                                            _expr1448914564_
                                            _hd1449014566_)
                                           (_g1446914504_ _g1447014507_))))
                                   (_g1446914504_ _g1447014507_)))))))
               (_loop1448314530_ _target1448014525_ '() '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1446914504_
                                                      _g1447014507_)))))
                                           (_g1446914504_ _g1447014507_))
                                       (_g1446914504_ _g1447014507_))))
                               (_g1446914504_ _g1447014507_))))
                       (_g1446914504_ _g1447014507_)))))
            (_g1446814621_ _stx14465_))))))
  (define gxc#collect-type-call%
    (lambda (_stx14019_)
      (let ((_g1402314125_
             (lambda (_g1402414122_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1402414122_))))
        (let ((_g1402214132_ (lambda (_g1402414128_) ((lambda () '#!void)))))
          (let ((_g1402114282_
                 (lambda (_g1402414135_)
                   (if (gx#stx-pair? _g1402414135_)
                       (let ((_e1408214137_ (gx#stx-e _g1402414135_)))
                         (let ((_hd1408314140_ (##car _e1408214137_))
                               (_tl1408414142_ (##cdr _e1408214137_)))
                           (if (gx#stx-pair? _tl1408414142_)
                               (let ((_e1408514145_ (gx#stx-e _tl1408414142_)))
                                 (let ((_hd1408614148_ (##car _e1408514145_))
                                       (_tl1408714150_ (##cdr _e1408514145_)))
                                   (if (gx#stx-pair? _hd1408614148_)
                                       (let ((_e1408814153_
                                              (gx#stx-e _hd1408614148_)))
                                         (let ((_hd1408914156_
                                                (##car _e1408814153_))
                                               (_tl1409014158_
                                                (##cdr _e1408814153_)))
                                           (if (gx#identifier? _hd1408914156_)
                                               (if (gx#stx-eq?
                                                    '%#ref
                                                    _hd1408914156_)
                                                   (if (gx#stx-pair?
                                                        _tl1409014158_)
                                                       (let ((_e1409114161_
                                                              (gx#stx-e
                                                               _tl1409014158_)))
                                                         (let ((_hd1409214164_
                                                                (##car _e1409114161_))
                                                               (_tl1409314166_
                                                                (##cdr _e1409114161_)))
                                                           (if (gx#stx-null?
                                                                _tl1409314166_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl1408714150_)
                           (let ((_e1409414169_ (gx#stx-e _tl1408714150_)))
                             (let ((_hd1409514172_ (##car _e1409414169_))
                                   (_tl1409614174_ (##cdr _e1409414169_)))
                               (if (gx#stx-pair? _hd1409514172_)
                                   (let ((_e1409714177_
                                          (gx#stx-e _hd1409514172_)))
                                     (let ((_hd1409814180_
                                            (##car _e1409714177_))
                                           (_tl1409914182_
                                            (##cdr _e1409714177_)))
                                       (if (gx#identifier? _hd1409814180_)
                                           (if (gx#stx-eq?
                                                '%#ref
                                                _hd1409814180_)
                                               (if (gx#stx-pair?
                                                    _tl1409914182_)
                                                   (let ((_e1410014185_
                                                          (gx#stx-e
                                                           _tl1409914182_)))
                                                     (let ((_hd1410114188_
                                                            (##car _e1410014185_))
                                                           (_tl1410214190_
                                                            (##cdr _e1410014185_)))
                                                       (if (gx#stx-null?
                                                            _tl1410214190_)
                                                           (if (gx#stx-pair?
                                                                _tl1409614174_)
                                                               (let ((_e1410314193_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl1409614174_)))
                         (let ((_hd1410414196_ (##car _e1410314193_))
                               (_tl1410514198_ (##cdr _e1410314193_)))
                           (if (gx#stx-pair? _hd1410414196_)
                               (let ((_e1410614201_ (gx#stx-e _hd1410414196_)))
                                 (let ((_hd1410714204_ (##car _e1410614201_))
                                       (_tl1410814206_ (##cdr _e1410614201_)))
                                   (if (gx#identifier? _hd1410714204_)
                                       (if (gx#stx-eq? '%#quote _hd1410714204_)
                                           (if (gx#stx-pair? _tl1410814206_)
                                               (let ((_e1410914209_
                                                      (gx#stx-e
                                                       _tl1410814206_)))
                                                 (let ((_hd1411014212_
                                                        (##car _e1410914209_))
                                                       (_tl1411114214_
                                                        (##cdr _e1410914209_)))
                                                   (if (gx#stx-null?
                                                        _tl1411114214_)
                                                       (if (gx#stx-pair?
                                                            _tl1410514198_)
                                                           (let ((_e1411214217_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl1410514198_)))
                     (let ((_hd1411314220_ (##car _e1411214217_))
                           (_tl1411414222_ (##cdr _e1411214217_)))
                       (if (gx#stx-pair? _hd1411314220_)
                           (let ((_e1411514225_ (gx#stx-e _hd1411314220_)))
                             (let ((_hd1411614228_ (##car _e1411514225_))
                                   (_tl1411714230_ (##cdr _e1411514225_)))
                               (if (gx#identifier? _hd1411614228_)
                                   (if (gx#stx-eq? '%#ref _hd1411614228_)
                                       (if (gx#stx-pair? _tl1411714230_)
                                           (let ((_e1411814233_
                                                  (gx#stx-e _tl1411714230_)))
                                             (let ((_hd1411914236_
                                                    (##car _e1411814233_))
                                                   (_tl1412014238_
                                                    (##cdr _e1411814233_)))
                                               (if (gx#stx-null?
                                                    _tl1412014238_)
                                                   (if (gx#stx-null?
                                                        _tl1411414222_)
                                                       ((lambda (_L14241_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L14242_
                         _L14243_
                         _L14244_)
                  (if (eq? (gxc#generate-runtime-binding-id
                            (gx#datum->syntax__0 '#f '-bind-method))
                           'bind-method!)
                      (gxc#optimizer-declare-method!__opt-lambda19346
                       (gxc#generate-runtime-binding-id _L14243_)
                       (gx#stx-e _L14242_)
                       (gxc#generate-runtime-binding-id _L14241_)
                       '#f)
                      (_g1402214132_ _g1402414135_)))
                _hd1411914236_
                _hd1411014212_
                _hd1410114188_
                _hd1409214164_)
               (_g1402214132_ _g1402414135_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1402214132_
                                                    _g1402414135_))))
                                           (_g1402214132_ _g1402414135_))
                                       (_g1402214132_ _g1402414135_))
                                   (_g1402214132_ _g1402414135_))))
                           (_g1402214132_ _g1402414135_))))
                   (_g1402214132_ _g1402414135_))
               (_g1402214132_ _g1402414135_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1402214132_ _g1402414135_))
                                           (_g1402214132_ _g1402414135_))
                                       (_g1402214132_ _g1402414135_))))
                               (_g1402214132_ _g1402414135_))))
                       (_g1402214132_ _g1402414135_))
                   (_g1402214132_ _g1402414135_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1402214132_
                                                    _g1402414135_))
                                               (_g1402214132_ _g1402414135_))
                                           (_g1402214132_ _g1402414135_))))
                                   (_g1402214132_ _g1402414135_))))
                           (_g1402214132_ _g1402414135_))
                       (_g1402214132_ _g1402414135_))))
               (_g1402214132_ _g1402414135_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1402214132_
                                                    _g1402414135_))
                                               (_g1402214132_ _g1402414135_))))
                                       (_g1402214132_ _g1402414135_))))
                               (_g1402214132_ _g1402414135_))))
                       (_g1402214132_ _g1402414135_)))))
            (let ((_g1402014462_
                   (lambda (_g1402414285_)
                     (if (gx#stx-pair? _g1402414285_)
                         (let ((_e1403014287_ (gx#stx-e _g1402414285_)))
                           (let ((_hd1403114290_ (##car _e1403014287_))
                                 (_tl1403214292_ (##cdr _e1403014287_)))
                             (if (gx#stx-pair? _tl1403214292_)
                                 (let ((_e1403314295_
                                        (gx#stx-e _tl1403214292_)))
                                   (let ((_hd1403414298_ (##car _e1403314295_))
                                         (_tl1403514300_
                                          (##cdr _e1403314295_)))
                                     (if (gx#stx-pair? _hd1403414298_)
                                         (let ((_e1403614303_
                                                (gx#stx-e _hd1403414298_)))
                                           (let ((_hd1403714306_
                                                  (##car _e1403614303_))
                                                 (_tl1403814308_
                                                  (##cdr _e1403614303_)))
                                             (if (gx#identifier?
                                                  _hd1403714306_)
                                                 (if (gx#stx-eq?
                                                      '%#ref
                                                      _hd1403714306_)
                                                     (if (gx#stx-pair?
                                                          _tl1403814308_)
                                                         (let ((_e1403914311_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1403814308_)))
                   (let ((_hd1404014314_ (##car _e1403914311_))
                         (_tl1404114316_ (##cdr _e1403914311_)))
                     (if (gx#stx-null? _tl1404114316_)
                         (if (gx#stx-pair? _tl1403514300_)
                             (let ((_e1404214319_ (gx#stx-e _tl1403514300_)))
                               (let ((_hd1404314322_ (##car _e1404214319_))
                                     (_tl1404414324_ (##cdr _e1404214319_)))
                                 (if (gx#stx-pair? _hd1404314322_)
                                     (let ((_e1404514327_
                                            (gx#stx-e _hd1404314322_)))
                                       (let ((_hd1404614330_
                                              (##car _e1404514327_))
                                             (_tl1404714332_
                                              (##cdr _e1404514327_)))
                                         (if (gx#identifier? _hd1404614330_)
                                             (if (gx#stx-eq?
                                                  '%#ref
                                                  _hd1404614330_)
                                                 (if (gx#stx-pair?
                                                      _tl1404714332_)
                                                     (let ((_e1404814335_
                                                            (gx#stx-e
                                                             _tl1404714332_)))
                                                       (let ((_hd1404914338_
                                                              (##car _e1404814335_))
                                                             (_tl1405014340_
                                                              (##cdr _e1404814335_)))
                                                         (if (gx#stx-null?
                                                              _tl1405014340_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1404414324_)
                         (let ((_e1405114343_ (gx#stx-e _tl1404414324_)))
                           (let ((_hd1405214346_ (##car _e1405114343_))
                                 (_tl1405314348_ (##cdr _e1405114343_)))
                             (if (gx#stx-pair? _hd1405214346_)
                                 (let ((_e1405414351_
                                        (gx#stx-e _hd1405214346_)))
                                   (let ((_hd1405514354_ (##car _e1405414351_))
                                         (_tl1405614356_
                                          (##cdr _e1405414351_)))
                                     (if (gx#identifier? _hd1405514354_)
                                         (if (gx#stx-eq?
                                              '%#quote
                                              _hd1405514354_)
                                             (if (gx#stx-pair? _tl1405614356_)
                                                 (let ((_e1405714359_
                                                        (gx#stx-e
                                                         _tl1405614356_)))
                                                   (let ((_hd1405814362_
                                                          (##car _e1405714359_))
                                                         (_tl1405914364_
                                                          (##cdr _e1405714359_)))
                                                     (if (gx#stx-null?
                                                          _tl1405914364_)
                                                         (if (gx#stx-pair?
                                                              _tl1405314348_)
                                                             (let ((_e1406014367_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl1405314348_)))
                       (let ((_hd1406114370_ (##car _e1406014367_))
                             (_tl1406214372_ (##cdr _e1406014367_)))
                         (if (gx#stx-pair? _hd1406114370_)
                             (let ((_e1406314375_ (gx#stx-e _hd1406114370_)))
                               (let ((_hd1406414378_ (##car _e1406314375_))
                                     (_tl1406514380_ (##cdr _e1406314375_)))
                                 (if (gx#identifier? _hd1406414378_)
                                     (if (gx#stx-eq? '%#ref _hd1406414378_)
                                         (if (gx#stx-pair? _tl1406514380_)
                                             (let ((_e1406614383_
                                                    (gx#stx-e _tl1406514380_)))
                                               (let ((_hd1406714386_
                                                      (##car _e1406614383_))
                                                     (_tl1406814388_
                                                      (##cdr _e1406614383_)))
                                                 (if (gx#stx-null?
                                                      _tl1406814388_)
                                                     (if (gx#stx-pair?
                                                          _tl1406214372_)
                                                         (let ((_e1406914391_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1406214372_)))
                   (let ((_hd1407014394_ (##car _e1406914391_))
                         (_tl1407114396_ (##cdr _e1406914391_)))
                     (if (gx#stx-pair? _hd1407014394_)
                         (let ((_e1407214399_ (gx#stx-e _hd1407014394_)))
                           (let ((_hd1407314402_ (##car _e1407214399_))
                                 (_tl1407414404_ (##cdr _e1407214399_)))
                             (if (gx#identifier? _hd1407314402_)
                                 (if (gx#stx-eq? '%#quote _hd1407314402_)
                                     (if (gx#stx-pair? _tl1407414404_)
                                         (let ((_e1407514407_
                                                (gx#stx-e _tl1407414404_)))
                                           (let ((_hd1407614410_
                                                  (##car _e1407514407_))
                                                 (_tl1407714412_
                                                  (##cdr _e1407514407_)))
                                             (if (gx#stx-null? _tl1407714412_)
                                                 (if (gx#stx-null?
                                                      _tl1407114396_)
                                                     ((lambda (_L14415_
                                                               _L14416_
                                                               _L14417_
                                                               _L14418_
                                                               _L14419_)
                                                        (if (eq? (gxc#generate-runtime-binding-id
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L14419_)
                         'bind-method!)
                    (gxc#optimizer-declare-method!__opt-lambda19346
                     (gxc#generate-runtime-binding-id _L14418_)
                     (gx#stx-e _L14417_)
                     (gxc#generate-runtime-binding-id _L14416_)
                     (gx#stx-e _L14415_))
                    (_g1402114282_ _g1402414285_)))
              _hd1407614410_
              _hd1406714386_
              _hd1405814362_
              _hd1404914338_
              _hd1404014314_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1402114282_
                                                      _g1402414285_))
                                                 (_g1402114282_
                                                  _g1402414285_))))
                                         (_g1402114282_ _g1402414285_))
                                     (_g1402114282_ _g1402414285_))
                                 (_g1402114282_ _g1402414285_))))
                         (_g1402114282_ _g1402414285_))))
                 (_g1402114282_ _g1402414285_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1402114282_
                                                      _g1402414285_))))
                                             (_g1402114282_ _g1402414285_))
                                         (_g1402114282_ _g1402414285_))
                                     (_g1402114282_ _g1402414285_))))
                             (_g1402114282_ _g1402414285_))))
                     (_g1402114282_ _g1402414285_))
                 (_g1402114282_ _g1402414285_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1402114282_ _g1402414285_))
                                             (_g1402114282_ _g1402414285_))
                                         (_g1402114282_ _g1402414285_))))
                                 (_g1402114282_ _g1402414285_))))
                         (_g1402114282_ _g1402414285_))
                     (_g1402114282_ _g1402414285_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1402114282_
                                                      _g1402414285_))
                                                 (_g1402114282_ _g1402414285_))
                                             (_g1402114282_ _g1402414285_))))
                                     (_g1402114282_ _g1402414285_))))
                             (_g1402114282_ _g1402414285_))
                         (_g1402114282_ _g1402414285_))))
                 (_g1402114282_ _g1402414285_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1402114282_
                                                      _g1402414285_))
                                                 (_g1402114282_
                                                  _g1402414285_))))
                                         (_g1402114282_ _g1402414285_))))
                                 (_g1402114282_ _g1402414285_))))
                         (_g1402114282_ _g1402414285_)))))
              (_g1402014462_ _stx14019_)))))))
  (define gxc#basic-expression-type-begin%
    (lambda (_stx13959_)
      (let ((_g1396213975_
             (lambda (_g1396313972_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1396313972_))))
        (let ((_g1396113982_ (lambda (_g1396313978_) ((lambda () '#f)))))
          (let ((_g1396014016_
                 (lambda (_g1396313985_)
                   (if (gx#stx-pair? _g1396313985_)
                       (let ((_e1396513987_ (gx#stx-e _g1396313985_)))
                         (let ((_hd1396613990_ (##car _e1396513987_))
                               (_tl1396713992_ (##cdr _e1396513987_)))
                           (if (gx#stx-pair? _tl1396713992_)
                               (let ((_e1396813995_ (gx#stx-e _tl1396713992_)))
                                 (let ((_hd1396913998_ (##car _e1396813995_))
                                       (_tl1397014000_ (##cdr _e1396813995_)))
                                   (if (gx#stx-null? _tl1397014000_)
                                       ((lambda (_L14003_)
                                          (gxc#compile-e _L14003_))
                                        _hd1396913998_)
                                       (_g1396113982_ _g1396313985_))))
                               (_g1396113982_ _g1396313985_))))
                       (_g1396113982_ _g1396313985_)))))
            (_g1396014016_ _stx13959_))))))
  (define gxc#basic-expression-type-lambda%
    (lambda (_stx13384_)
      (let ((_g1338913510_
             (lambda (_g1339013507_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1339013507_))))
        (let ((_g1338813517_ (lambda (_g1339013513_) ((lambda () '#f)))))
          (let ((_g1338713541_
                 (lambda (_g1339013520_)
                   (if (gx#stx-pair? _g1339013520_)
                       (let ((_e1350313522_ (gx#stx-e _g1339013520_)))
                         (let ((_hd1350413525_ (##car _e1350313522_))
                               (_tl1350513527_ (##cdr _e1350313522_)))
                           ((lambda (_L13530_)
                              (if (gxc#dispatch-lambda-form? _L13530_)
                                  (let ((__obj19598
                                         (make-object gxc#!lambda::t '5)))
                                    (begin
                                      (gxc#!lambda:::init!__0
                                       __obj19598
                                       'lambda
                                       (gxc#lambda-form-arity _L13530_)
                                       (gxc#dispatch-lambda-form-delegate
                                        _L13530_))
                                      __obj19598))
                                  (_g1338813517_ _g1339013520_)))
                            _tl1350513527_)))
                       (_g1338813517_ _g1339013520_)))))
            (let ((_g1338613771_
                   (lambda (_g1339013544_)
                     (if (gx#stx-pair? _g1339013544_)
                         (let ((_e1344813546_ (gx#stx-e _g1339013544_)))
                           (let ((_hd1344913549_ (##car _e1344813546_))
                                 (_tl1345013551_ (##cdr _e1344813546_)))
                             (if (gx#stx-pair? _tl1345013551_)
                                 (let ((_e1345113554_
                                        (gx#stx-e _tl1345013551_)))
                                   (let ((_hd1345213557_ (##car _e1345113554_))
                                         (_tl1345313559_
                                          (##cdr _e1345113554_)))
                                     (if (gx#stx-pair/null? _hd1345213557_)
                                         (if (fx>= (gx#stx-length
                                                    _hd1345213557_)
                                                   '0)
                                             (let ((_g19660_
                                                    (gx#syntax-split-splice
                                                     _hd1345213557_
                                                     '0)))
                                               (begin
                                                 (let ((_g19661_
                                                        (values-count
                                                         _g19660_)))
                                                   (if (not (fx= _g19661_ 2))
                                                       (error "Context expects 2 values"
                                                              _g19661_)))
                                                 (let ((_target1345413562_
                                                        (values-ref
                                                         _g19660_
                                                         0))
                                                       (_tl1345613564_
                                                        (values-ref
                                                         _g19660_
                                                         1)))
                                                   (if (gx#stx-null?
                                                        _tl1345613564_)
                                                       (letrec ((_loop1345713567_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd1345513570_ _arg1346113572_)
                           (if (gx#stx-pair? _hd1345513570_)
                               (let ((_e1345813575_ (gx#stx-e _hd1345513570_)))
                                 (let ((_lp-hd1345913578_
                                        (##car _e1345813575_))
                                       (_lp-tl1346013580_
                                        (##cdr _e1345813575_)))
                                   (_loop1345713567_
                                    _lp-tl1346013580_
                                    (cons _lp-hd1345913578_ _arg1346113572_))))
                               (let ((_arg1346213583_
                                      (reverse _arg1346113572_)))
                                 (if (gx#stx-pair? _tl1345313559_)
                                     (let ((_e1346313586_
                                            (gx#stx-e _tl1345313559_)))
                                       (let ((_hd1346413589_
                                              (##car _e1346313586_))
                                             (_tl1346513591_
                                              (##cdr _e1346313586_)))
                                         (if (gx#stx-pair? _hd1346413589_)
                                             (let ((_e1346613594_
                                                    (gx#stx-e _hd1346413589_)))
                                               (let ((_hd1346713597_
                                                      (##car _e1346613594_))
                                                     (_tl1346813599_
                                                      (##cdr _e1346613594_)))
                                                 (if (gx#identifier?
                                                      _hd1346713597_)
                                                     (if (gx#stx-eq?
                                                          '%#call
                                                          _hd1346713597_)
                                                         (if (gx#stx-pair?
                                                              _tl1346813599_)
                                                             (let ((_e1346913602_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl1346813599_)))
                       (let ((_hd1347013605_ (##car _e1346913602_))
                             (_tl1347113607_ (##cdr _e1346913602_)))
                         (if (gx#stx-pair? _hd1347013605_)
                             (let ((_e1347213610_ (gx#stx-e _hd1347013605_)))
                               (let ((_hd1347313613_ (##car _e1347213610_))
                                     (_tl1347413615_ (##cdr _e1347213610_)))
                                 (if (gx#identifier? _hd1347313613_)
                                     (if (gx#stx-eq? '%#ref _hd1347313613_)
                                         (if (gx#stx-pair? _tl1347413615_)
                                             (let ((_e1347513618_
                                                    (gx#stx-e _tl1347413615_)))
                                               (let ((_hd1347613621_
                                                      (##car _e1347513618_))
                                                     (_tl1347713623_
                                                      (##cdr _e1347513618_)))
                                                 (if (gx#stx-null?
                                                      _tl1347713623_)
                                                     (if (gx#stx-pair?
                                                          _tl1347113607_)
                                                         (let ((_e1347813626_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1347113607_)))
                   (let ((_hd1347913629_ (##car _e1347813626_))
                         (_tl1348013631_ (##cdr _e1347813626_)))
                     (if (gx#stx-pair? _hd1347913629_)
                         (let ((_e1348113634_ (gx#stx-e _hd1347913629_)))
                           (let ((_hd1348213637_ (##car _e1348113634_))
                                 (_tl1348313639_ (##cdr _e1348113634_)))
                             (if (gx#identifier? _hd1348213637_)
                                 (if (gx#stx-eq? '%#ref _hd1348213637_)
                                     (if (gx#stx-pair? _tl1348313639_)
                                         (let ((_e1348413642_
                                                (gx#stx-e _tl1348313639_)))
                                           (let ((_hd1348513645_
                                                  (##car _e1348413642_))
                                                 (_tl1348613647_
                                                  (##cdr _e1348413642_)))
                                             (if (gx#stx-null? _tl1348613647_)
                                                 (if (gx#stx-pair/null?
                                                      _tl1348013631_)
                                                     (if (fx>= (gx#stx-length
                                                                _tl1348013631_)
                                                               '0)
                                                         (let ((_g19662_
                                                                (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1348013631_
                         '0)))
                   (begin
                     (let ((_g19663_ (values-count _g19662_)))
                       (if (not (fx= _g19663_ 2))
                           (error "Context expects 2 values" _g19663_)))
                     (let ((_target1348713650_ (values-ref _g19662_ 0))
                           (_tl1348913652_ (values-ref _g19662_ 1)))
                       (if (gx#stx-null? _tl1348913652_)
                           (letrec ((_loop1349013655_
                                     (lambda (_hd1348813658_ _xarg1349413660_)
                                       (if (gx#stx-pair? _hd1348813658_)
                                           (let ((_e1349113663_
                                                  (gx#stx-e _hd1348813658_)))
                                             (let ((_lp-hd1349213666_
                                                    (##car _e1349113663_))
                                                   (_lp-tl1349313668_
                                                    (##cdr _e1349113663_)))
                                               (if (gx#stx-pair?
                                                    _lp-hd1349213666_)
                                                   (let ((_e1349613671_
                                                          (gx#stx-e
                                                           _lp-hd1349213666_)))
                                                     (let ((_hd1349713674_
                                                            (##car _e1349613671_))
                                                           (_tl1349813676_
                                                            (##cdr _e1349613671_)))
                                                       (if (gx#identifier?
                                                            _hd1349713674_)
                                                           (if (gx#stx-eq?
                                                                '%#ref
                                                                _hd1349713674_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl1349813676_)
                           (let ((_e1349913679_ (gx#stx-e _tl1349813676_)))
                             (let ((_hd1350013682_ (##car _e1349913679_))
                                   (_tl1350113684_ (##cdr _e1349913679_)))
                               (if (gx#stx-null? _tl1350113684_)
                                   (_loop1349013655_
                                    _lp-tl1349313668_
                                    (cons _hd1350013682_ _xarg1349413660_))
                                   (_g1338713541_ _g1339013544_))))
                           (_g1338713541_ _g1339013544_))
                       (_g1338713541_ _g1339013544_))
                   (_g1338713541_ _g1339013544_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1338713541_
                                                    _g1339013544_))))
                                           (let ((_xarg1349513687_
                                                  (reverse _xarg1349413660_)))
                                             (if (gx#stx-null? _tl1346513591_)
                                                 ((lambda (_L13690_
                                                           _L13691_
                                                           _L13692_
                                                           _L13693_)
                                                    (if (if (gx#identifier-list?
                                                             (begin
                                                               '#!void
                                                               (foldr1 (lambda (_g1373013733_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                        _g1373113735_)
                                 (cons _g1373013733_ _g1373113735_))
                               '()
                               _L13693_)))
                    (if (eq? (gxc#generate-runtime-binding-id _L13692_)
                             'make-struct-instance)
                        (if (fx= (length (begin
                                           '#!void
                                           (foldr1 (lambda (_g1373713740_
                                                            _g1373813742_)
                                                     (cons _g1373713740_
                                                           _g1373813742_))
                                                   '()
                                                   _L13693_)))
                                 (length (begin
                                           '#!void
                                           (foldr1 (lambda (_g1374413747_
                                                            _g1374513749_)
                                                     (cons _g1374413747_
                                                           _g1374513749_))
                                                   '()
                                                   _L13690_))))
                            (andmap gx#free-identifier=?
                                    (begin
                                      '#!void
                                      (foldr1 (lambda (_g1375113754_
                                                       _g1375213756_)
                                                (cons _g1375113754_
                                                      _g1375213756_))
                                              '()
                                              _L13693_))
                                    (begin
                                      '#!void
                                      (foldr1 (lambda (_g1375813761_
                                                       _g1375913763_)
                                                (cons _g1375813761_
                                                      _g1375913763_))
                                              '()
                                              _L13690_)))
                            '#f)
                        '#f)
                    '#f)
                (let ((_type-t13766_
                       (gxc#generate-runtime-binding-id _L13691_)))
                  (let ((_type13768_
                         (gxc#optimizer-resolve-type _type-t13766_)))
                    (let ()
                      (if (##structure-instance-of?
                           _type13768_
                           'gxc#!struct-type::t)
                          (##structure gxc#!struct-cons::t _type-t13766_)
                          '#f))))
                (_g1338713541_ _g1339013544_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _xarg1349513687_
                                                  _hd1348513645_
                                                  _hd1347613621_
                                                  _arg1346213583_)
                                                 (_g1338713541_
                                                  _g1339013544_)))))))
                             (_loop1349013655_ _target1348713650_ '()))
                           (_g1338713541_ _g1339013544_)))))
                 (_g1338713541_ _g1339013544_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1338713541_
                                                      _g1339013544_))
                                                 (_g1338713541_
                                                  _g1339013544_))))
                                         (_g1338713541_ _g1339013544_))
                                     (_g1338713541_ _g1339013544_))
                                 (_g1338713541_ _g1339013544_))))
                         (_g1338713541_ _g1339013544_))))
                 (_g1338713541_ _g1339013544_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1338713541_
                                                      _g1339013544_))))
                                             (_g1338713541_ _g1339013544_))
                                         (_g1338713541_ _g1339013544_))
                                     (_g1338713541_ _g1339013544_))))
                             (_g1338713541_ _g1339013544_))))
                     (_g1338713541_ _g1339013544_))
                 (_g1338713541_ _g1339013544_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1338713541_
                                                      _g1339013544_))))
                                             (_g1338713541_ _g1339013544_))))
                                     (_g1338713541_ _g1339013544_)))))))
                 (_loop1345713567_ _target1345413562_ '()))
               (_g1338713541_ _g1339013544_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g1338713541_ _g1339013544_))
                                         (_g1338713541_ _g1339013544_))))
                                 (_g1338713541_ _g1339013544_))))
                         (_g1338713541_ _g1339013544_)))))
              (let ((_g1338513956_
                     (lambda (_g1339013774_)
                       (if (gx#stx-pair? _g1339013774_)
                           (let ((_e1339613776_ (gx#stx-e _g1339013774_)))
                             (let ((_hd1339713779_ (##car _e1339613776_))
                                   (_tl1339813781_ (##cdr _e1339613776_)))
                               (if (gx#stx-pair? _tl1339813781_)
                                   (let ((_e1339913784_
                                          (gx#stx-e _tl1339813781_)))
                                     (let ((_hd1340013787_
                                            (##car _e1339913784_))
                                           (_tl1340113789_
                                            (##cdr _e1339913784_)))
                                       (if (gx#stx-pair? _tl1340113789_)
                                           (let ((_e1340213792_
                                                  (gx#stx-e _tl1340113789_)))
                                             (let ((_hd1340313795_
                                                    (##car _e1340213792_))
                                                   (_tl1340413797_
                                                    (##cdr _e1340213792_)))
                                               (if (gx#stx-pair?
                                                    _hd1340313795_)
                                                   (let ((_e1340513800_
                                                          (gx#stx-e
                                                           _hd1340313795_)))
                                                     (let ((_hd1340613803_
                                                            (##car _e1340513800_))
                                                           (_tl1340713805_
                                                            (##cdr _e1340513800_)))
                                                       (if (gx#identifier?
                                                            _hd1340613803_)
                                                           (if (gx#stx-eq?
                                                                '%#call
                                                                _hd1340613803_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl1340713805_)
                           (let ((_e1340813808_ (gx#stx-e _tl1340713805_)))
                             (let ((_hd1340913811_ (##car _e1340813808_))
                                   (_tl1341013813_ (##cdr _e1340813808_)))
                               (if (gx#stx-pair? _hd1340913811_)
                                   (let ((_e1341113816_
                                          (gx#stx-e _hd1340913811_)))
                                     (let ((_hd1341213819_
                                            (##car _e1341113816_))
                                           (_tl1341313821_
                                            (##cdr _e1341113816_)))
                                       (if (gx#identifier? _hd1341213819_)
                                           (if (gx#stx-eq?
                                                '%#ref
                                                _hd1341213819_)
                                               (if (gx#stx-pair?
                                                    _tl1341313821_)
                                                   (let ((_e1341413824_
                                                          (gx#stx-e
                                                           _tl1341313821_)))
                                                     (let ((_hd1341513827_
                                                            (##car _e1341413824_))
                                                           (_tl1341613829_
                                                            (##cdr _e1341413824_)))
                                                       (if (gx#stx-null?
                                                            _tl1341613829_)
                                                           (if (gx#stx-pair?
                                                                _tl1341013813_)
                                                               (let ((_e1341713832_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl1341013813_)))
                         (let ((_hd1341813835_ (##car _e1341713832_))
                               (_tl1341913837_ (##cdr _e1341713832_)))
                           (if (gx#stx-pair? _hd1341813835_)
                               (let ((_e1342013840_ (gx#stx-e _hd1341813835_)))
                                 (let ((_hd1342113843_ (##car _e1342013840_))
                                       (_tl1342213845_ (##cdr _e1342013840_)))
                                   (if (gx#identifier? _hd1342113843_)
                                       (if (gx#stx-eq? '%#ref _hd1342113843_)
                                           (if (gx#stx-pair? _tl1342213845_)
                                               (let ((_e1342313848_
                                                      (gx#stx-e
                                                       _tl1342213845_)))
                                                 (let ((_hd1342413851_
                                                        (##car _e1342313848_))
                                                       (_tl1342513853_
                                                        (##cdr _e1342313848_)))
                                                   (if (gx#stx-null?
                                                        _tl1342513853_)
                                                       (if (gx#stx-pair?
                                                            _tl1341913837_)
                                                           (let ((_e1342613856_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl1341913837_)))
                     (let ((_hd1342713859_ (##car _e1342613856_))
                           (_tl1342813861_ (##cdr _e1342613856_)))
                       (if (gx#stx-pair? _hd1342713859_)
                           (let ((_e1342913864_ (gx#stx-e _hd1342713859_)))
                             (let ((_hd1343013867_ (##car _e1342913864_))
                                   (_tl1343113869_ (##cdr _e1342913864_)))
                               (if (gx#identifier? _hd1343013867_)
                                   (if (gx#stx-eq? '%#ref _hd1343013867_)
                                       (if (gx#stx-pair? _tl1343113869_)
                                           (let ((_e1343213872_
                                                  (gx#stx-e _tl1343113869_)))
                                             (let ((_hd1343313875_
                                                    (##car _e1343213872_))
                                                   (_tl1343413877_
                                                    (##cdr _e1343213872_)))
                                               (if (gx#stx-null?
                                                    _tl1343413877_)
                                                   (if (gx#stx-pair?
                                                        _tl1342813861_)
                                                       (let ((_e1343513880_
                                                              (gx#stx-e
                                                               _tl1342813861_)))
                                                         (let ((_hd1343613883_
                                                                (##car _e1343513880_))
                                                               (_tl1343713885_
                                                                (##cdr _e1343513880_)))
                                                           (if (gx#stx-pair?
                                                                _hd1343613883_)
                                                               (let ((_e1343813888_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd1343613883_)))
                         (let ((_hd1343913891_ (##car _e1343813888_))
                               (_tl1344013893_ (##cdr _e1343813888_)))
                           (if (gx#identifier? _hd1343913891_)
                               (if (gx#stx-eq? '%#ref _hd1343913891_)
                                   (if (gx#stx-pair? _tl1344013893_)
                                       (let ((_e1344113896_
                                              (gx#stx-e _tl1344013893_)))
                                         (let ((_hd1344213899_
                                                (##car _e1344113896_))
                                               (_tl1344313901_
                                                (##cdr _e1344113896_)))
                                           (if (gx#stx-null? _tl1344313901_)
                                               (if (gx#stx-null?
                                                    _tl1343713885_)
                                                   (if (gx#stx-null?
                                                        _tl1340413797_)
                                                       ((lambda (_L13904_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L13905_
                         _L13906_
                         _L13907_
                         _L13908_)
                  (if (if (gx#identifier? _L13908_)
                          (if (eq? (gxc#generate-runtime-binding-id _L13907_)
                                   'apply)
                              (if (eq? (gxc#generate-runtime-binding-id
                                        _L13906_)
                                       'make-struct-instance)
                                  (gx#free-identifier=? _L13908_ _L13904_)
                                  '#f)
                              '#f)
                          '#f)
                      (let ((_type-t13951_
                             (gxc#generate-runtime-binding-id _L13905_)))
                        (let ((_type13953_
                               (gxc#optimizer-resolve-type _type-t13951_)))
                          (let ()
                            (if (##structure-instance-of?
                                 _type13953_
                                 'gxc#!struct-type::t)
                                (##structure gxc#!struct-cons::t _type-t13951_)
                                '#f))))
                      (_g1338613771_ _g1339013774_)))
                _hd1344213899_
                _hd1343313875_
                _hd1342413851_
                _hd1341513827_
                _hd1340013787_)
               (_g1338613771_ _g1339013774_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1338613771_
                                                    _g1339013774_))
                                               (_g1338613771_ _g1339013774_))))
                                       (_g1338613771_ _g1339013774_))
                                   (_g1338613771_ _g1339013774_))
                               (_g1338613771_ _g1339013774_))))
                       (_g1338613771_ _g1339013774_))))
               (_g1338613771_ _g1339013774_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1338613771_
                                                    _g1339013774_))))
                                           (_g1338613771_ _g1339013774_))
                                       (_g1338613771_ _g1339013774_))
                                   (_g1338613771_ _g1339013774_))))
                           (_g1338613771_ _g1339013774_))))
                   (_g1338613771_ _g1339013774_))
               (_g1338613771_ _g1339013774_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1338613771_ _g1339013774_))
                                           (_g1338613771_ _g1339013774_))
                                       (_g1338613771_ _g1339013774_))))
                               (_g1338613771_ _g1339013774_))))
                       (_g1338613771_ _g1339013774_))
                   (_g1338613771_ _g1339013774_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1338613771_
                                                    _g1339013774_))
                                               (_g1338613771_ _g1339013774_))
                                           (_g1338613771_ _g1339013774_))))
                                   (_g1338613771_ _g1339013774_))))
                           (_g1338613771_ _g1339013774_))
                       (_g1338613771_ _g1339013774_))
                   (_g1338613771_ _g1339013774_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1338613771_
                                                    _g1339013774_))))
                                           (_g1338613771_ _g1339013774_))))
                                   (_g1338613771_ _g1339013774_))))
                           (_g1338613771_ _g1339013774_)))))
                (_g1338513956_ _stx13384_))))))))
  (define gxc#basic-expression-type-case-lambda%
    (lambda (_stx13330_)
      (let ((_clause-e13332_
             (lambda (_form13382_)
               (let ((__obj19599 (make-object gxc#!lambda::t '5)))
                 (begin
                   (gxc#!lambda:::init!__0
                    __obj19599
                    'case-lambda-clause
                    (gxc#lambda-form-arity _form13382_)
                    (gxc#dispatch-lambda-form-delegate _form13382_))
                   __obj19599)))))
        (let ((_g1333513345_
               (lambda (_g1333613342_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1333613342_))))
          (let ((_g1333413352_ (lambda (_g1333613348_) ((lambda () '#f)))))
            (let ((_g1333313379_
                   (lambda (_g1333613355_)
                     (if (gx#stx-pair? _g1333613355_)
                         (let ((_e1333813357_ (gx#stx-e _g1333613355_)))
                           (let ((_hd1333913360_ (##car _e1333813357_))
                                 (_tl1334013362_ (##cdr _e1333813357_)))
                             ((lambda (_L13365_)
                                (if (andmap1 gxc#dispatch-lambda-form?
                                             _L13365_)
                                    (let ((_clauses13377_
                                           (map _clause-e13332_ _L13365_)))
                                      (##structure
                                       gxc#!case-lambda::t
                                       'case-lambda
                                       _clauses13377_))
                                    (_g1333413352_ _g1333613355_)))
                              _tl1334013362_)))
                         (_g1333413352_ _g1333613355_)))))
              (_g1333313379_ _stx13330_)))))))
  (define gxc#basic-expression-type-builtin (make-hash-table-eq))
  (define gxc#basic-expression-type-call%
    (lambda (_stx13235_)
      (let ((_g1323813258_
             (lambda (_g1323913255_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1323913255_))))
        (let ((_g1323713265_ (lambda (_g1323913261_) ((lambda () '#f)))))
          (let ((_g1323613327_
                 (lambda (_g1323913268_)
                   (if (gx#stx-pair? _g1323913268_)
                       (let ((_e1324213270_ (gx#stx-e _g1323913268_)))
                         (let ((_hd1324313273_ (##car _e1324213270_))
                               (_tl1324413275_ (##cdr _e1324213270_)))
                           (if (gx#stx-pair? _tl1324413275_)
                               (let ((_e1324513278_ (gx#stx-e _tl1324413275_)))
                                 (let ((_hd1324613281_ (##car _e1324513278_))
                                       (_tl1324713283_ (##cdr _e1324513278_)))
                                   (if (gx#stx-pair? _hd1324613281_)
                                       (let ((_e1324813286_
                                              (gx#stx-e _hd1324613281_)))
                                         (let ((_hd1324913289_
                                                (##car _e1324813286_))
                                               (_tl1325013291_
                                                (##cdr _e1324813286_)))
                                           (if (gx#identifier? _hd1324913289_)
                                               (if (gx#stx-eq?
                                                    '%#ref
                                                    _hd1324913289_)
                                                   (if (gx#stx-pair?
                                                        _tl1325013291_)
                                                       (let ((_e1325113294_
                                                              (gx#stx-e
                                                               _tl1325013291_)))
                                                         (let ((_hd1325213297_
                                                                (##car _e1325113294_))
                                                               (_tl1325313299_
                                                                (##cdr _e1325113294_)))
                                                           (if (gx#stx-null?
                                                                _tl1325313299_)
                                                               ((lambda (_L13302_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _L13303_)
                          (let ((_type-e1332013322_
                                 (table-ref
                                  gxc#basic-expression-type-builtin
                                  (gxc#generate-runtime-binding-id _L13303_)
                                  '#f)))
                            (if _type-e1332013322_
                                (let ((_type-e13325_ _type-e1332013322_))
                                  (_type-e13325_ _stx13235_ _L13302_))
                                '#f)))
                        _tl1324713283_
                        _hd1325213297_)
                       (_g1323713265_ _g1323913268_))))
               (_g1323713265_ _g1323913268_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1323713265_
                                                    _g1323913268_))
                                               (_g1323713265_ _g1323913268_))))
                                       (_g1323713265_ _g1323913268_))))
                               (_g1323713265_ _g1323913268_))))
                       (_g1323713265_ _g1323913268_)))))
            (_g1323613327_ _stx13235_))))))
  (define gxc#basic-expression-type-make-struct-type
    (lambda (_stx12720_ _args12721_)
      (let ((_g1272512838_
             (lambda (_g1272612835_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1272612835_))))
        (let ((_g1272412845_
               (lambda (_g1272612841_)
                 ((lambda ()
                    (begin
                      (gxc#verbose
                       '"make-struct-type: can't infer type "
                       (gx#syntax->datum _stx12720_))
                      '#f))))))
          (let ((_g1272313052_
                 (lambda (_g1272612848_)
                   (if (gx#stx-pair? _g1272612848_)
                       (let ((_e1278612850_ (gx#stx-e _g1272612848_)))
                         (let ((_hd1278712853_ (##car _e1278612850_))
                               (_tl1278812855_ (##cdr _e1278612850_)))
                           (if (gx#stx-pair? _hd1278712853_)
                               (let ((_e1278912858_ (gx#stx-e _hd1278712853_)))
                                 (let ((_hd1279012861_ (##car _e1278912858_))
                                       (_tl1279112863_ (##cdr _e1278912858_)))
                                   (if (gx#identifier? _hd1279012861_)
                                       (if (gx#stx-eq? '%#quote _hd1279012861_)
                                           (if (gx#stx-pair? _tl1279112863_)
                                               (let ((_e1279212866_
                                                      (gx#stx-e
                                                       _tl1279112863_)))
                                                 (let ((_hd1279312869_
                                                        (##car _e1279212866_))
                                                       (_tl1279412871_
                                                        (##cdr _e1279212866_)))
                                                   (if (gx#stx-null?
                                                        _tl1279412871_)
                                                       (if (gx#stx-pair?
                                                            _tl1278812855_)
                                                           (let ((_e1279512874_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl1278812855_)))
                     (let ((_hd1279612877_ (##car _e1279512874_))
                           (_tl1279712879_ (##cdr _e1279512874_)))
                       (if (gx#stx-pair? _hd1279612877_)
                           (let ((_e1279812882_ (gx#stx-e _hd1279612877_)))
                             (let ((_hd1279912885_ (##car _e1279812882_))
                                   (_tl1280012887_ (##cdr _e1279812882_)))
                               (if (gx#identifier? _hd1279912885_)
                                   (if (gx#stx-eq? '%#ref _hd1279912885_)
                                       (if (gx#stx-pair? _tl1280012887_)
                                           (let ((_e1280112890_
                                                  (gx#stx-e _tl1280012887_)))
                                             (let ((_hd1280212893_
                                                    (##car _e1280112890_))
                                                   (_tl1280312895_
                                                    (##cdr _e1280112890_)))
                                               (if (gx#stx-null?
                                                    _tl1280312895_)
                                                   (if (gx#stx-pair?
                                                        _tl1279712879_)
                                                       (let ((_e1280412898_
                                                              (gx#stx-e
                                                               _tl1279712879_)))
                                                         (let ((_hd1280512901_
                                                                (##car _e1280412898_))
                                                               (_tl1280612903_
                                                                (##cdr _e1280412898_)))
                                                           (if (gx#stx-pair?
                                                                _hd1280512901_)
                                                               (let ((_e1280712906_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd1280512901_)))
                         (let ((_hd1280812909_ (##car _e1280712906_))
                               (_tl1280912911_ (##cdr _e1280712906_)))
                           (if (gx#identifier? _hd1280812909_)
                               (if (gx#stx-eq? '%#quote _hd1280812909_)
                                   (if (gx#stx-pair? _tl1280912911_)
                                       (let ((_e1281012914_
                                              (gx#stx-e _tl1280912911_)))
                                         (let ((_hd1281112917_
                                                (##car _e1281012914_))
                                               (_tl1281212919_
                                                (##cdr _e1281012914_)))
                                           (if (gx#stx-null? _tl1281212919_)
                                               (if (gx#stx-pair?
                                                    _tl1280612903_)
                                                   (let ((_e1281312922_
                                                          (gx#stx-e
                                                           _tl1280612903_)))
                                                     (let ((_hd1281412925_
                                                            (##car _e1281312922_))
                                                           (_tl1281512927_
                                                            (##cdr _e1281312922_)))
                                                       (if (gx#stx-pair?
                                                            _tl1281512927_)
                                                           (let ((_e1281612930_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl1281512927_)))
                     (let ((_hd1281712933_ (##car _e1281612930_))
                           (_tl1281812935_ (##cdr _e1281612930_)))
                       (if (gx#stx-pair? _hd1281712933_)
                           (let ((_e1281912938_ (gx#stx-e _hd1281712933_)))
                             (let ((_hd1282012941_ (##car _e1281912938_))
                                   (_tl1282112943_ (##cdr _e1281912938_)))
                               (if (gx#identifier? _hd1282012941_)
                                   (if (gx#stx-eq? '%#quote _hd1282012941_)
                                       (if (gx#stx-pair? _tl1282112943_)
                                           (let ((_e1282212946_
                                                  (gx#stx-e _tl1282112943_)))
                                             (let ((_hd1282312949_
                                                    (##car _e1282212946_))
                                                   (_tl1282412951_
                                                    (##cdr _e1282212946_)))
                                               (if (gx#stx-null?
                                                    _tl1282412951_)
                                                   (if (gx#stx-pair?
                                                        _tl1281812935_)
                                                       (let ((_e1282512954_
                                                              (gx#stx-e
                                                               _tl1281812935_)))
                                                         (let ((_hd1282612957_
                                                                (##car _e1282512954_))
                                                               (_tl1282712959_
                                                                (##cdr _e1282512954_)))
                                                           (if (gx#stx-pair?
                                                                _hd1282612957_)
                                                               (let ((_e1282812962_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd1282612957_)))
                         (let ((_hd1282912965_ (##car _e1282812962_))
                               (_tl1283012967_ (##cdr _e1282812962_)))
                           (if (gx#identifier? _hd1282912965_)
                               (if (gx#stx-eq? '%#quote _hd1282912965_)
                                   (if (gx#stx-pair? _tl1283012967_)
                                       (let ((_e1283112970_
                                              (gx#stx-e _tl1283012967_)))
                                         (let ((_hd1283212973_
                                                (##car _e1283112970_))
                                               (_tl1283312975_
                                                (##cdr _e1283112970_)))
                                           (if (gx#stx-null? _tl1283312975_)
                                               (if (gx#stx-null?
                                                    _tl1282712959_)
                                                   ((lambda (_L12978_
                                                             _L12979_
                                                             _L12980_
                                                             _L12981_
                                                             _L12982_
                                                             _L12983_)
                                                      (let ((_super-t13029_
                                                             (if (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L12982_)
                         (gxc#generate-runtime-binding-id _L12982_)
                         '#f)))
                (let ((_super-type13031_
                       (if _super-t13029_
                           (gxc#optimizer-resolve-type _super-t13029_)
                           '#f)))
                  (let ()
                    (begin
                      (if (if _super-type13031_
                              (not (##structure-instance-of?
                                    _super-type13031_
                                    'gxc#!struct-type::t))
                              '#f)
                          (gxc#raise-compile-error
                           '"Illegal struct-type construction; invalid super type"
                           _stx12720_
                           _L12982_)
                          '#!void)
                      (let ((_fields13047_ (gx#stx-e _L12981_))
                            (_xfields13048_
                             (if _super-type13031_
                                 (let ((_super-fields1303313036_
                                        (##structure-ref
                                         _super-type13031_
                                         '3
                                         gxc#!struct-type::t
                                         '#f))
                                       (_super-xfields1303413038_
                                        (##structure-ref
                                         _super-type13031_
                                         '4
                                         gxc#!struct-type::t
                                         '#f)))
                                   (if _super-fields1303313036_
                                       (if _super-xfields1303413038_
                                           (let ((_super-fields13041_
                                                  _super-fields1303313036_)
                                                 (_super-xfields13042_
                                                  _super-xfields1303413038_))
                                             (fx+ _super-fields13041_
                                                  _super-xfields13042_))
                                           '#f)
                                       '#f))
                                 '#f))
                            (_plist13049_ (gx#stx-e _L12979_))
                            (_ctor13050_
                             (let ((_$e13044_ (gx#stx-e _L12978_)))
                               (if _$e13044_
                                   (values _$e13044_)
                                   (if _super-type13031_
                                       (##structure-ref
                                        _super-type13031_
                                        '5
                                        gxc#!struct-type::t
                                        '#f)
                                       (if _super-t13029_ '#!void '#f))))))
                        (let ((__obj19600
                               (make-object gxc#!struct-type::t '7)))
                          (begin
                            (gxc#!struct-type:::init!
                             __obj19600
                             (gx#stx-e _L12983_)
                             _super-t13029_
                             _fields13047_
                             _xfields13048_
                             _ctor13050_
                             _plist13049_)
                            __obj19600))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd1283212973_
                                                    _hd1282312949_
                                                    _hd1281412925_
                                                    _hd1281112917_
                                                    _hd1280212893_
                                                    _hd1279312869_)
                                                   (_g1272412845_
                                                    _g1272612848_))
                                               (_g1272412845_ _g1272612848_))))
                                       (_g1272412845_ _g1272612848_))
                                   (_g1272412845_ _g1272612848_))
                               (_g1272412845_ _g1272612848_))))
                       (_g1272412845_ _g1272612848_))))
               (_g1272412845_ _g1272612848_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1272412845_
                                                    _g1272612848_))))
                                           (_g1272412845_ _g1272612848_))
                                       (_g1272412845_ _g1272612848_))
                                   (_g1272412845_ _g1272612848_))))
                           (_g1272412845_ _g1272612848_))))
                   (_g1272412845_ _g1272612848_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1272412845_
                                                    _g1272612848_))
                                               (_g1272412845_ _g1272612848_))))
                                       (_g1272412845_ _g1272612848_))
                                   (_g1272412845_ _g1272612848_))
                               (_g1272412845_ _g1272612848_))))
                       (_g1272412845_ _g1272612848_))))
               (_g1272412845_ _g1272612848_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1272412845_
                                                    _g1272612848_))))
                                           (_g1272412845_ _g1272612848_))
                                       (_g1272412845_ _g1272612848_))
                                   (_g1272412845_ _g1272612848_))))
                           (_g1272412845_ _g1272612848_))))
                   (_g1272412845_ _g1272612848_))
               (_g1272412845_ _g1272612848_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1272412845_ _g1272612848_))
                                           (_g1272412845_ _g1272612848_))
                                       (_g1272412845_ _g1272612848_))))
                               (_g1272412845_ _g1272612848_))))
                       (_g1272412845_ _g1272612848_)))))
            (let ((_g1272213232_
                   (lambda (_g1272613055_)
                     (if (gx#stx-pair? _g1272613055_)
                         (let ((_e1273213057_ (gx#stx-e _g1272613055_)))
                           (let ((_hd1273313060_ (##car _e1273213057_))
                                 (_tl1273413062_ (##cdr _e1273213057_)))
                             (if (gx#stx-pair? _hd1273313060_)
                                 (let ((_e1273513065_
                                        (gx#stx-e _hd1273313060_)))
                                   (let ((_hd1273613068_ (##car _e1273513065_))
                                         (_tl1273713070_
                                          (##cdr _e1273513065_)))
                                     (if (gx#identifier? _hd1273613068_)
                                         (if (gx#stx-eq?
                                              '%#quote
                                              _hd1273613068_)
                                             (if (gx#stx-pair? _tl1273713070_)
                                                 (let ((_e1273813073_
                                                        (gx#stx-e
                                                         _tl1273713070_)))
                                                   (let ((_hd1273913076_
                                                          (##car _e1273813073_))
                                                         (_tl1274013078_
                                                          (##cdr _e1273813073_)))
                                                     (if (gx#stx-null?
                                                          _tl1274013078_)
                                                         (if (gx#stx-pair?
                                                              _tl1273413062_)
                                                             (let ((_e1274113081_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl1273413062_)))
                       (let ((_hd1274213084_ (##car _e1274113081_))
                             (_tl1274313086_ (##cdr _e1274113081_)))
                         (if (gx#stx-pair? _hd1274213084_)
                             (let ((_e1274413089_ (gx#stx-e _hd1274213084_)))
                               (let ((_hd1274513092_ (##car _e1274413089_))
                                     (_tl1274613094_ (##cdr _e1274413089_)))
                                 (if (gx#identifier? _hd1274513092_)
                                     (if (gx#stx-eq? '%#quote _hd1274513092_)
                                         (if (gx#stx-pair? _tl1274613094_)
                                             (let ((_e1274713097_
                                                    (gx#stx-e _tl1274613094_)))
                                               (let ((_hd1274813100_
                                                      (##car _e1274713097_))
                                                     (_tl1274913102_
                                                      (##cdr _e1274713097_)))
                                                 (if (gx#stx-datum?
                                                      _hd1274813100_)
                                                     (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd1274813100_)
                         '#f)
                 (if (gx#stx-null? _tl1274913102_)
                     (if (gx#stx-pair? _tl1274313086_)
                         (let ((_e1275013105_ (gx#stx-e _tl1274313086_)))
                           (let ((_hd1275113108_ (##car _e1275013105_))
                                 (_tl1275213110_ (##cdr _e1275013105_)))
                             (if (gx#stx-pair? _hd1275113108_)
                                 (let ((_e1275313113_
                                        (gx#stx-e _hd1275113108_)))
                                   (let ((_hd1275413116_ (##car _e1275313113_))
                                         (_tl1275513118_
                                          (##cdr _e1275313113_)))
                                     (if (gx#identifier? _hd1275413116_)
                                         (if (gx#stx-eq?
                                              '%#quote
                                              _hd1275413116_)
                                             (if (gx#stx-pair? _tl1275513118_)
                                                 (let ((_e1275613121_
                                                        (gx#stx-e
                                                         _tl1275513118_)))
                                                   (let ((_hd1275713124_
                                                          (##car _e1275613121_))
                                                         (_tl1275813126_
                                                          (##cdr _e1275613121_)))
                                                     (if (gx#stx-null?
                                                          _tl1275813126_)
                                                         (if (gx#stx-pair?
                                                              _tl1275213110_)
                                                             (let ((_e1275913129_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl1275213110_)))
                       (let ((_hd1276013132_ (##car _e1275913129_))
                             (_tl1276113134_ (##cdr _e1275913129_)))
                         (if (gx#stx-pair? _tl1276113134_)
                             (let ((_e1276213137_ (gx#stx-e _tl1276113134_)))
                               (let ((_hd1276313140_ (##car _e1276213137_))
                                     (_tl1276413142_ (##cdr _e1276213137_)))
                                 (if (gx#stx-pair? _hd1276313140_)
                                     (let ((_e1276513145_
                                            (gx#stx-e _hd1276313140_)))
                                       (let ((_hd1276613148_
                                              (##car _e1276513145_))
                                             (_tl1276713150_
                                              (##cdr _e1276513145_)))
                                         (if (gx#identifier? _hd1276613148_)
                                             (if (gx#stx-eq?
                                                  '%#quote
                                                  _hd1276613148_)
                                                 (if (gx#stx-pair?
                                                      _tl1276713150_)
                                                     (let ((_e1276813153_
                                                            (gx#stx-e
                                                             _tl1276713150_)))
                                                       (let ((_hd1276913156_
                                                              (##car _e1276813153_))
                                                             (_tl1277013158_
                                                              (##cdr _e1276813153_)))
                                                         (if (gx#stx-null?
                                                              _tl1277013158_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1276413142_)
                         (let ((_e1277113161_ (gx#stx-e _tl1276413142_)))
                           (let ((_hd1277213164_ (##car _e1277113161_))
                                 (_tl1277313166_ (##cdr _e1277113161_)))
                             (if (gx#stx-pair? _hd1277213164_)
                                 (let ((_e1277413169_
                                        (gx#stx-e _hd1277213164_)))
                                   (let ((_hd1277513172_ (##car _e1277413169_))
                                         (_tl1277613174_
                                          (##cdr _e1277413169_)))
                                     (if (gx#identifier? _hd1277513172_)
                                         (if (gx#stx-eq?
                                              '%#quote
                                              _hd1277513172_)
                                             (if (gx#stx-pair? _tl1277613174_)
                                                 (let ((_e1277713177_
                                                        (gx#stx-e
                                                         _tl1277613174_)))
                                                   (let ((_hd1277813180_
                                                          (##car _e1277713177_))
                                                         (_tl1277913182_
                                                          (##cdr _e1277713177_)))
                                                     (if (gx#stx-null?
                                                          _tl1277913182_)
                                                         (if (gx#stx-null?
                                                              _tl1277313166_)
                                                             ((lambda (_L13185_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L13186_
                               _L13187_
                               _L13188_
                               _L13189_)
                        (let ((__obj19601
                               (make-object gxc#!struct-type::t '7)))
                          (begin
                            (gxc#!struct-type:::init!
                             __obj19601
                             (gx#stx-e _L13189_)
                             '#f
                             (gx#stx-e _L13188_)
                             '0
                             (gx#stx-e _L13185_)
                             (gx#stx-e _L13186_))
                            __obj19601)))
                      _hd1277813180_
                      _hd1276913156_
                      _hd1276013132_
                      _hd1275713124_
                      _hd1273913076_)
                     (_g1272313052_ _g1272613055_))
                 (_g1272313052_ _g1272613055_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1272313052_ _g1272613055_))
                                             (_g1272313052_ _g1272613055_))
                                         (_g1272313052_ _g1272613055_))))
                                 (_g1272313052_ _g1272613055_))))
                         (_g1272313052_ _g1272613055_))
                     (_g1272313052_ _g1272613055_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1272313052_
                                                      _g1272613055_))
                                                 (_g1272313052_ _g1272613055_))
                                             (_g1272313052_ _g1272613055_))))
                                     (_g1272313052_ _g1272613055_))))
                             (_g1272313052_ _g1272613055_))))
                     (_g1272313052_ _g1272613055_))
                 (_g1272313052_ _g1272613055_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1272313052_ _g1272613055_))
                                             (_g1272313052_ _g1272613055_))
                                         (_g1272313052_ _g1272613055_))))
                                 (_g1272313052_ _g1272613055_))))
                         (_g1272313052_ _g1272613055_))
                     (_g1272313052_ _g1272613055_))
                 (_g1272313052_ _g1272613055_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1272313052_
                                                      _g1272613055_))))
                                             (_g1272313052_ _g1272613055_))
                                         (_g1272313052_ _g1272613055_))
                                     (_g1272313052_ _g1272613055_))))
                             (_g1272313052_ _g1272613055_))))
                     (_g1272313052_ _g1272613055_))
                 (_g1272313052_ _g1272613055_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1272313052_ _g1272613055_))
                                             (_g1272313052_ _g1272613055_))
                                         (_g1272313052_ _g1272613055_))))
                                 (_g1272313052_ _g1272613055_))))
                         (_g1272313052_ _g1272613055_)))))
              (_g1272213232_ _args12721_)))))))
  (define gxc#basic-expression-type-make-struct-predicate
    (lambda (_stx12646_ _args12647_)
      (let ((_g1265012666_
             (lambda (_g1265112663_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1265112663_))))
        (let ((_g1264912673_ (lambda (_g1265112669_) ((lambda () '#f)))))
          (let ((_g1264812717_
                 (lambda (_g1265112676_)
                   (if (gx#stx-pair? _g1265112676_)
                       (let ((_e1265312678_ (gx#stx-e _g1265112676_)))
                         (let ((_hd1265412681_ (##car _e1265312678_))
                               (_tl1265512683_ (##cdr _e1265312678_)))
                           (if (gx#stx-pair? _hd1265412681_)
                               (let ((_e1265612686_ (gx#stx-e _hd1265412681_)))
                                 (let ((_hd1265712689_ (##car _e1265612686_))
                                       (_tl1265812691_ (##cdr _e1265612686_)))
                                   (if (gx#identifier? _hd1265712689_)
                                       (if (gx#stx-eq? '%#ref _hd1265712689_)
                                           (if (gx#stx-pair? _tl1265812691_)
                                               (let ((_e1265912694_
                                                      (gx#stx-e
                                                       _tl1265812691_)))
                                                 (let ((_hd1266012697_
                                                        (##car _e1265912694_))
                                                       (_tl1266112699_
                                                        (##cdr _e1265912694_)))
                                                   (if (gx#stx-null?
                                                        _tl1266112699_)
                                                       (if (gx#stx-null?
                                                            _tl1265512683_)
                                                           ((lambda (_L12702_)
                                                              (##structure
                                                               gxc#!struct-pred::t
                                                               (gxc#generate-runtime-binding-id
                                                                _L12702_)))
                                                            _hd1266012697_)
                                                           (_g1264912673_
                                                            _g1265112676_))
                                                       (_g1264912673_
                                                        _g1265112676_))))
                                               (_g1264912673_ _g1265112676_))
                                           (_g1264912673_ _g1265112676_))
                                       (_g1264912673_ _g1265112676_))))
                               (_g1264912673_ _g1265112676_))))
                       (_g1264912673_ _g1265112676_)))))
            (_g1264812717_ _args12647_))))))
  (define gxc#basic-expression-type-make-struct-field-accessor
    (lambda (_stx12530_ _args12531_)
      (let ((_g1253412560_
             (lambda (_g1253512557_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1253512557_))))
        (let ((_g1253312567_ (lambda (_g1253512563_) ((lambda () '#f)))))
          (let ((_g1253212643_
                 (lambda (_g1253512570_)
                   (if (gx#stx-pair? _g1253512570_)
                       (let ((_e1253812572_ (gx#stx-e _g1253512570_)))
                         (let ((_hd1253912575_ (##car _e1253812572_))
                               (_tl1254012577_ (##cdr _e1253812572_)))
                           (if (gx#stx-pair? _hd1253912575_)
                               (let ((_e1254112580_ (gx#stx-e _hd1253912575_)))
                                 (let ((_hd1254212583_ (##car _e1254112580_))
                                       (_tl1254312585_ (##cdr _e1254112580_)))
                                   (if (gx#identifier? _hd1254212583_)
                                       (if (gx#stx-eq? '%#ref _hd1254212583_)
                                           (if (gx#stx-pair? _tl1254312585_)
                                               (let ((_e1254412588_
                                                      (gx#stx-e
                                                       _tl1254312585_)))
                                                 (let ((_hd1254512591_
                                                        (##car _e1254412588_))
                                                       (_tl1254612593_
                                                        (##cdr _e1254412588_)))
                                                   (if (gx#stx-null?
                                                        _tl1254612593_)
                                                       (if (gx#stx-pair?
                                                            _tl1254012577_)
                                                           (let ((_e1254712596_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl1254012577_)))
                     (let ((_hd1254812599_ (##car _e1254712596_))
                           (_tl1254912601_ (##cdr _e1254712596_)))
                       (if (gx#stx-pair? _hd1254812599_)
                           (let ((_e1255012604_ (gx#stx-e _hd1254812599_)))
                             (let ((_hd1255112607_ (##car _e1255012604_))
                                   (_tl1255212609_ (##cdr _e1255012604_)))
                               (if (gx#identifier? _hd1255112607_)
                                   (if (gx#stx-eq? '%#quote _hd1255112607_)
                                       (if (gx#stx-pair? _tl1255212609_)
                                           (let ((_e1255312612_
                                                  (gx#stx-e _tl1255212609_)))
                                             (let ((_hd1255412615_
                                                    (##car _e1255312612_))
                                                   (_tl1255512617_
                                                    (##cdr _e1255312612_)))
                                               (if (gx#stx-null?
                                                    _tl1255512617_)
                                                   (if (gx#stx-null?
                                                        _tl1254912601_)
                                                       ((lambda (_L12620_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L12621_)
                  (##structure
                   gxc#!struct-getf::t
                   (gxc#generate-runtime-binding-id _L12621_)
                   (gx#stx-e _L12620_)))
                _hd1255412615_
                _hd1254512591_)
               (_g1253312567_ _g1253512570_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1253312567_
                                                    _g1253512570_))))
                                           (_g1253312567_ _g1253512570_))
                                       (_g1253312567_ _g1253512570_))
                                   (_g1253312567_ _g1253512570_))))
                           (_g1253312567_ _g1253512570_))))
                   (_g1253312567_ _g1253512570_))
               (_g1253312567_ _g1253512570_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1253312567_ _g1253512570_))
                                           (_g1253312567_ _g1253512570_))
                                       (_g1253312567_ _g1253512570_))))
                               (_g1253312567_ _g1253512570_))))
                       (_g1253312567_ _g1253512570_)))))
            (_g1253212643_ _args12531_))))))
  (define gxc#basic-expression-type-make-struct-field-mutator
    (lambda (_stx12414_ _args12415_)
      (let ((_g1241812444_
             (lambda (_g1241912441_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1241912441_))))
        (let ((_g1241712451_ (lambda (_g1241912447_) ((lambda () '#f)))))
          (let ((_g1241612527_
                 (lambda (_g1241912454_)
                   (if (gx#stx-pair? _g1241912454_)
                       (let ((_e1242212456_ (gx#stx-e _g1241912454_)))
                         (let ((_hd1242312459_ (##car _e1242212456_))
                               (_tl1242412461_ (##cdr _e1242212456_)))
                           (if (gx#stx-pair? _hd1242312459_)
                               (let ((_e1242512464_ (gx#stx-e _hd1242312459_)))
                                 (let ((_hd1242612467_ (##car _e1242512464_))
                                       (_tl1242712469_ (##cdr _e1242512464_)))
                                   (if (gx#identifier? _hd1242612467_)
                                       (if (gx#stx-eq? '%#ref _hd1242612467_)
                                           (if (gx#stx-pair? _tl1242712469_)
                                               (let ((_e1242812472_
                                                      (gx#stx-e
                                                       _tl1242712469_)))
                                                 (let ((_hd1242912475_
                                                        (##car _e1242812472_))
                                                       (_tl1243012477_
                                                        (##cdr _e1242812472_)))
                                                   (if (gx#stx-null?
                                                        _tl1243012477_)
                                                       (if (gx#stx-pair?
                                                            _tl1242412461_)
                                                           (let ((_e1243112480_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl1242412461_)))
                     (let ((_hd1243212483_ (##car _e1243112480_))
                           (_tl1243312485_ (##cdr _e1243112480_)))
                       (if (gx#stx-pair? _hd1243212483_)
                           (let ((_e1243412488_ (gx#stx-e _hd1243212483_)))
                             (let ((_hd1243512491_ (##car _e1243412488_))
                                   (_tl1243612493_ (##cdr _e1243412488_)))
                               (if (gx#identifier? _hd1243512491_)
                                   (if (gx#stx-eq? '%#quote _hd1243512491_)
                                       (if (gx#stx-pair? _tl1243612493_)
                                           (let ((_e1243712496_
                                                  (gx#stx-e _tl1243612493_)))
                                             (let ((_hd1243812499_
                                                    (##car _e1243712496_))
                                                   (_tl1243912501_
                                                    (##cdr _e1243712496_)))
                                               (if (gx#stx-null?
                                                    _tl1243912501_)
                                                   (if (gx#stx-null?
                                                        _tl1243312485_)
                                                       ((lambda (_L12504_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L12505_)
                  (##structure
                   gxc#!struct-setf::t
                   (gxc#generate-runtime-binding-id _L12505_)
                   (gx#stx-e _L12504_)))
                _hd1243812499_
                _hd1242912475_)
               (_g1241712451_ _g1241912454_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1241712451_
                                                    _g1241912454_))))
                                           (_g1241712451_ _g1241912454_))
                                       (_g1241712451_ _g1241912454_))
                                   (_g1241712451_ _g1241912454_))))
                           (_g1241712451_ _g1241912454_))))
                   (_g1241712451_ _g1241912454_))
               (_g1241712451_ _g1241912454_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1241712451_ _g1241912454_))
                                           (_g1241712451_ _g1241912454_))
                                       (_g1241712451_ _g1241912454_))))
                               (_g1241712451_ _g1241912454_))))
                       (_g1241712451_ _g1241912454_)))))
            (_g1241612527_ _args12415_))))))
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
    (lambda (_stx12363_)
      (let ((_g1236512378_
             (lambda (_g1236612375_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1236612375_))))
        (let ((_g1236412411_
               (lambda (_g1236612381_)
                 (if (gx#stx-pair? _g1236612381_)
                     (let ((_e1236812383_ (gx#stx-e _g1236612381_)))
                       (let ((_hd1236912386_ (##car _e1236812383_))
                             (_tl1237012388_ (##cdr _e1236812383_)))
                         (if (gx#stx-pair? _tl1237012388_)
                             (let ((_e1237112391_ (gx#stx-e _tl1237012388_)))
                               (let ((_hd1237212394_ (##car _e1237112391_))
                                     (_tl1237312396_ (##cdr _e1237112391_)))
                                 (if (gx#stx-null? _tl1237312396_)
                                     ((lambda (_L12399_)
                                        (gxc#optimizer-lookup-type
                                         (gxc#generate-runtime-binding-id
                                          _L12399_)))
                                      _hd1237212394_)
                                     (_g1236512378_ _g1236612381_))))
                             (_g1236512378_ _g1236612381_))))
                     (_g1236512378_ _g1236612381_)))))
          (_g1236412411_ _stx12363_)))))
  (define gxc#optimize-call%
    (lambda (_stx12269_)
      (let ((_g1227212292_
             (lambda (_g1227312289_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1227312289_))))
        (let ((_g1227112299_
               (lambda (_g1227312295_)
                 ((lambda () (gxc#xform-call% _stx12269_))))))
          (let ((_g1227012360_
                 (lambda (_g1227312302_)
                   (if (gx#stx-pair? _g1227312302_)
                       (let ((_e1227612304_ (gx#stx-e _g1227312302_)))
                         (let ((_hd1227712307_ (##car _e1227612304_))
                               (_tl1227812309_ (##cdr _e1227612304_)))
                           (if (gx#stx-pair? _tl1227812309_)
                               (let ((_e1227912312_ (gx#stx-e _tl1227812309_)))
                                 (let ((_hd1228012315_ (##car _e1227912312_))
                                       (_tl1228112317_ (##cdr _e1227912312_)))
                                   (if (gx#stx-pair? _hd1228012315_)
                                       (let ((_e1228212320_
                                              (gx#stx-e _hd1228012315_)))
                                         (let ((_hd1228312323_
                                                (##car _e1228212320_))
                                               (_tl1228412325_
                                                (##cdr _e1228212320_)))
                                           (if (gx#identifier? _hd1228312323_)
                                               (if (gx#stx-eq?
                                                    '%#ref
                                                    _hd1228312323_)
                                                   (if (gx#stx-pair?
                                                        _tl1228412325_)
                                                       (let ((_e1228512328_
                                                              (gx#stx-e
                                                               _tl1228412325_)))
                                                         (let ((_hd1228612331_
                                                                (##car _e1228512328_))
                                                               (_tl1228712333_
                                                                (##cdr _e1228512328_)))
                                                           (if (gx#stx-null?
                                                                _tl1228712333_)
                                                               ((lambda (_L12336_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _L12337_)
                          (let ((_rator-id12355_
                                 (gxc#generate-runtime-binding-id _L12337_)))
                            (let ((_rator-type12357_
                                   (gxc#optimizer-resolve-type
                                    _rator-id12355_)))
                              (let ()
                                (if (##structure-instance-of?
                                     _rator-type12357_
                                     'gxc#!procedure::t)
                                    (begin
                                      (gxc#verbose
                                       '"optimize-call "
                                       _rator-id12355_
                                       '" => "
                                       _rator-type12357_
                                       '" "
                                       (##structure-ref
                                        _rator-type12357_
                                        '1
                                        gxc#!type::t
                                        '#f))
                                      (call-method
                                       _rator-type12357_
                                       'optimize-call
                                       _stx12269_
                                       _L12336_))
                                    (if (not _rator-type12357_)
                                        (gxc#xform-call% _stx12269_)
                                        (gxc#raise-compile-error
                                         '"Illegal application; not a procedure"
                                         _stx12269_
                                         _rator-type12357_)))))))
                        _tl1228112317_
                        _hd1228612331_)
                       (_g1227112299_ _g1227312302_))))
               (_g1227112299_ _g1227312302_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1227112299_
                                                    _g1227312302_))
                                               (_g1227112299_ _g1227312302_))))
                                       (_g1227112299_ _g1227312302_))))
                               (_g1227112299_ _g1227312302_))))
                       (_g1227112299_ _g1227312302_)))))
            (_g1227012360_ _stx12269_))))))
  (define gxc#!struct-pred::optimize-call
    (lambda (_self12124_ _stx12125_ _args12126_)
      (let ((_self1212712133_ _self12124_))
        (let ((_E1212912137_
               (lambda () (error '"No clause matching" _self1212712133_))))
          (let ((_K1213012261_
                 (lambda (_struct-t12140_)
                   (let ((_struct-type12142_
                          (gxc#optimizer-resolve-type _struct-t12140_)))
                     (let ((_struct-type1214312157_ _struct-type12142_))
                       (let ((_E1214712161_
                              (lambda ()
                                (error '"No clause matching"
                                       _struct-type1214312157_))))
                         (let ((_else1214612165_
                                (lambda ()
                                  (gxc#raise-compile-error
                                   '"Illegal struct predicate application; not a struct type"
                                   _stx12125_
                                   _struct-t12140_
                                   _struct-type12142_))))
                           (let ((_try-match1214512173_
                                  (lambda ()
                                    (let ((_K1214812170_
                                           (lambda ()
                                             (gxc#xform-call% _stx12125_))))
                                      (if (##eq? _struct-type1214312157_ '#f)
                                          (_K1214812170_)
                                          (_else1214612165_))))))
                             (let ((_K1214912236_
                                    (lambda (_plist12176_
                                             _struct-type-id12177_)
                                      (let ((_g1218012190_
                                             (lambda (_g1218112187_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g1218112187_))))
                                        (let ((_g1217912197_
                                               (lambda (_g1218112193_)
                                                 ((lambda ()
                                                    (gxc#raise-compile-error
                                                     '"Illegal struct predicate application"
                                                     _stx12125_))))))
                                          (let ((_g1217812233_
                                                 (lambda (_g1218112200_)
                                                   (if (gx#stx-pair?
                                                        _g1218112200_)
                                                       (let ((_e1218312202_
                                                              (gx#stx-e
                                                               _g1218112200_)))
                                                         (let ((_hd1218412205_
                                                                (##car _e1218312202_))
                                                               (_tl1218512207_
                                                                (##cdr _e1218312202_)))
                                                           (if (gx#stx-null?
                                                                _tl1218512207_)
                                                               ((lambda (_L12210_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((_expr12230_ (gxc#compile-e _L12210_))
                                (_op12231_
                                 (if (if _plist12176_
                                         (assgetq 'final: _plist12176_)
                                         '#f)
                                     '%#struct-direct-instance?
                                     '%#struct-instance?)))
                            (gxc#xform-wrap-source
                             (cons _op12231_
                                   (cons (cons '%#quote
                                               (cons _struct-type-id12177_
                                                     '()))
                                         (cons _expr12230_ '())))
                             _stx12125_)))
                        _hd1218412205_)
                       (_g1217912197_ _g1218112200_))))
               (_g1217912197_ _g1218112200_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g1217812233_ _args12126_)))))))
                               (if (##structure-instance-of?
                                    _struct-type1214312157_
                                    (##type-id gxc#!struct-type::t))
                                   (let ((_e1215012239_
                                          (##vector-ref
                                           _struct-type1214312157_
                                           '1)))
                                     (let ((_struct-type-id12242_
                                            _e1215012239_))
                                       (let ((_e1215112244_
                                              (##vector-ref
                                               _struct-type1214312157_
                                               '2)))
                                         (let ((_e1215212247_
                                                (##vector-ref
                                                 _struct-type1214312157_
                                                 '3)))
                                           (let ((_e1215312250_
                                                  (##vector-ref
                                                   _struct-type1214312157_
                                                   '4)))
                                             (let ((_e1215412253_
                                                    (##vector-ref
                                                     _struct-type1214312157_
                                                     '5)))
                                               (let ((_e1215512256_
                                                      (##vector-ref
                                                       _struct-type1214312157_
                                                       '6)))
                                                 (let ((_plist12259_
                                                        _e1215512256_))
                                                   (_K1214912236_
                                                    _plist12259_
                                                    _struct-type-id12242_)))))))))
                                   (_try-match1214512173_)))))))))))
            (if (##structure-instance-of?
                 _self1212712133_
                 (##type-id gxc#!struct-pred::t))
                (let ((_e1213112264_ (##vector-ref _self1212712133_ '1)))
                  (let ((_struct-t12267_ _e1213112264_))
                    (_K1213012261_ _struct-t12267_)))
                (_E1212912137_)))))))
  (bind-method!
   gxc#!struct-pred::t
   'optimize-call
   gxc#!struct-pred::optimize-call
   '#f)
  (define gxc#!struct-cons::optimize-call
    (lambda (_self12020_ _stx12021_ _args12022_)
      (let ((_self1202312029_ _self12020_))
        (let ((_E1202512033_
               (lambda () (error '"No clause matching" _self1202312029_))))
          (let ((_K1202612116_
                 (lambda (_struct-t12036_)
                   (let ((_struct-type12038_
                          (gxc#optimizer-resolve-type _struct-t12036_)))
                     (let ((_struct-type1203912052_ _struct-type12038_))
                       (let ((_E1204312056_
                              (lambda ()
                                (error '"No clause matching"
                                       _struct-type1203912052_))))
                         (let ((_else1204212060_
                                (lambda ()
                                  (gxc#raise-compile-error
                                   '"Illegal struct constructor application; not a struct type"
                                   _stx12021_
                                   _struct-t12036_
                                   _struct-type12038_))))
                           (let ((_try-match1204112068_
                                  (lambda ()
                                    (let ((_K1204412065_
                                           (lambda ()
                                             (begin
                                               (gxc#verbose
                                                '"cannot inline struct constructor; unknown struct type "
                                                _struct-t12036_)
                                               (gxc#xform-call% _stx12021_)))))
                                      (if (##eq? _struct-type1203912052_ '#f)
                                          (_K1204412065_)
                                          (_else1204212060_))))))
                             (let ((_K1204512090_
                                    (lambda (_ctor12071_
                                             _xfields12072_
                                             _fields12073_
                                             _type-id12074_)
                                      (let ((_args12076_
                                             (map gxc#compile-e _args12022_)))
                                        (let ((_$e12078_
                                               (if _ctor12071_
                                                   (if _xfields12072_
                                                       (gxc#!struct-type-lookup-method
                                                        _struct-type12038_
                                                        _ctor12071_)
                                                       '#f)
                                                   '#f)))
                                          (if _$e12078_
                                              ((lambda (_kons12081_)
                                                 (let ((_$obj12083_
                                                        (make-symbol
                                                         (gensym '__obj))))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#let-values
                                                          (cons (cons (cons (cons _$obj12083_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                          '())
                                    (cons (cons '%#call
                                                (cons (cons '%#ref
                                                            (cons 'make-object
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#ref (cons _struct-t12036_ '()))
                    (cons (cons '%#quote
                                (cons (fx+ _fields12073_ _xfields12072_) '()))
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '()))
                              '())
                        (cons (cons '%#begin
                                    (cons (gxc#compile-e
                                           (gxc#xform-wrap-source
                                            (cons '%#call
                                                  (cons (cons '%#ref
                                                              (cons _kons12081_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '%#ref (cons _$obj12083_ '())) _args12076_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _stx12021_))
                                          (cons (cons '%#ref
                                                      (cons _$obj12083_ '()))
                                                '())))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _stx12021_)))
                                               _$e12078_)
                                              (if (let ((_$e12085_
                                                         _ctor12071_))
                                                    (if _$e12085_
                                                        _$e12085_
                                                        (not _xfields12072_)))
                                                  (gxc#xform-wrap-source
                                                   (cons '%#call
                                                         (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons 'make-struct-instance '()))
                       (cons (cons '%#ref (cons _struct-t12036_ '()))
                             _args12076_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _stx12021_)
                                                  (let ((_arity12088_
                                                         (fx+ _fields12073_
                                                              _xfields12072_)))
                                                    (if (fx= _arity12088_
                                                             (length _args12076_))
                                                        (gxc#xform-wrap-source
                                                         (cons '%#call
                                                               (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons '##structure '()))
                             (cons (cons '%#ref (cons _struct-t12036_ '()))
                                   _args12076_)))
                 _stx12021_)
                (gxc#raise-compile-error
                 '"Illegal struct constructor application; arity mismatch"
                 _stx12021_
                 _struct-t12036_
                 _arity12088_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (if (##structure-instance-of?
                                    _struct-type1203912052_
                                    (##type-id gxc#!struct-type::t))
                                   (let ((_e1204612093_
                                          (##vector-ref
                                           _struct-type1203912052_
                                           '1)))
                                     (let ((_type-id12096_ _e1204612093_))
                                       (let ((_e1204712098_
                                              (##vector-ref
                                               _struct-type1203912052_
                                               '2)))
                                         (let ((_e1204812101_
                                                (##vector-ref
                                                 _struct-type1203912052_
                                                 '3)))
                                           (let ((_fields12104_ _e1204812101_))
                                             (let ((_e1204912106_
                                                    (##vector-ref
                                                     _struct-type1203912052_
                                                     '4)))
                                               (let ((_xfields12109_
                                                      _e1204912106_))
                                                 (let ((_e1205012111_
                                                        (##vector-ref
                                                         _struct-type1203912052_
                                                         '5)))
                                                   (let ((_ctor12114_
                                                          _e1205012111_))
                                                     (_K1204512090_
                                                      _ctor12114_
                                                      _xfields12109_
                                                      _fields12104_
                                                      _type-id12096_))))))))))
                                   (_try-match1204112068_)))))))))))
            (if (##structure-instance-of?
                 _self1202312029_
                 (##type-id gxc#!struct-cons::t))
                (let ((_e1202712119_ (##vector-ref _self1202312029_ '1)))
                  (let ((_struct-t12122_ _e1202712119_))
                    (_K1202612116_ _struct-t12122_)))
                (_E1202512033_)))))))
  (bind-method!
   gxc#!struct-cons::t
   'optimize-call
   gxc#!struct-cons::optimize-call
   '#f)
  (define gxc#!struct-getf::optimize-call
    (lambda (_self11861_ _stx11862_ _args11863_)
      (let ((_self1186411871_ _self11861_))
        (let ((_E1186611875_
               (lambda () (error '"No clause matching" _self1186411871_))))
          (let ((_K1186712007_
                 (lambda (_off11878_ _struct-t11879_)
                   (let ((_struct-type11881_
                          (gxc#optimizer-resolve-type _struct-t11879_)))
                     (let ((_struct-type1188211896_ _struct-type11881_))
                       (let ((_E1188611900_
                              (lambda ()
                                (error '"No clause matching"
                                       _struct-type1188211896_))))
                         (let ((_else1188511904_
                                (lambda ()
                                  (gxc#raise-compile-error
                                   '"Illegal struct predicate application; not a struct type"
                                   _stx11862_
                                   _struct-t11879_
                                   _struct-type11881_))))
                           (let ((_try-match1188411912_
                                  (lambda ()
                                    (let ((_K1188711909_
                                           (lambda ()
                                             (gxc#xform-call% _stx11862_))))
                                      (if (##eq? _struct-type1188211896_ '#f)
                                          (_K1188711909_)
                                          (_else1188511904_))))))
                             (let ((_K1188811978_
                                    (lambda (_plist11915_
                                             _xfields11916_
                                             _fields11917_
                                             _struct-type-id11918_)
                                      (if _xfields11916_
                                          (let ((_g1192111931_
                                                 (lambda (_g1192211928_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1192211928_))))
                                            (let ((_g1192011938_
                                                   (lambda (_g1192211934_)
                                                     ((lambda ()
                                                        (gxc#raise-compile-error
                                                         '"Illegal struct accessor application"
                                                         _stx11862_))))))
                                              (let ((_g1191911975_
                                                     (lambda (_g1192211941_)
                                                       (if (gx#stx-pair?
                                                            _g1192211941_)
                                                           (let ((_e1192411943_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _g1192211941_)))
                     (let ((_hd1192511946_ (##car _e1192411943_))
                           (_tl1192611948_ (##cdr _e1192411943_)))
                       (if (gx#stx-null? _tl1192611948_)
                           ((lambda (_L11951_)
                              (let ((_expr11971_ (gxc#compile-e _L11951_))
                                    (_off11972_
                                     (fx+ _off11878_ _xfields11916_ '1))
                                    (_op11973_
                                     (if (if _plist11915_
                                             (assgetq 'final: _plist11915_)
                                             '#f)
                                         '%#struct-direct-ref
                                         '%#struct-ref)))
                                (gxc#xform-wrap-source
                                 (cons _op11973_
                                       (cons (cons '%#ref
                                                   (cons _struct-t11879_ '()))
                                             (cons (cons '%#quote
                                                         (cons _off11972_ '()))
                                                   (cons _expr11971_ '()))))
                                 _stx11862_)))
                            _hd1192511946_)
                           (_g1192011938_ _g1192211941_))))
                   (_g1192011938_ _g1192211941_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1191911975_ _args11863_))))
                                          (begin
                                            (gxc#verbose
                                             '"struct-getf: incomplete struct "
                                             _struct-type-id11918_)
                                            (gxc#xform-call% _stx11862_))))))
                               (if (##structure-instance-of?
                                    _struct-type1188211896_
                                    (##type-id gxc#!struct-type::t))
                                   (let ((_e1188911981_
                                          (##vector-ref
                                           _struct-type1188211896_
                                           '1)))
                                     (let ((_struct-type-id11984_
                                            _e1188911981_))
                                       (let ((_e1189011986_
                                              (##vector-ref
                                               _struct-type1188211896_
                                               '2)))
                                         (let ((_e1189111989_
                                                (##vector-ref
                                                 _struct-type1188211896_
                                                 '3)))
                                           (let ((_fields11992_ _e1189111989_))
                                             (let ((_e1189211994_
                                                    (##vector-ref
                                                     _struct-type1188211896_
                                                     '4)))
                                               (let ((_xfields11997_
                                                      _e1189211994_))
                                                 (let ((_e1189311999_
                                                        (##vector-ref
                                                         _struct-type1188211896_
                                                         '5)))
                                                   (let ((_e1189412002_
                                                          (##vector-ref
                                                           _struct-type1188211896_
                                                           '6)))
                                                     (let ((_plist12005_
                                                            _e1189412002_))
                                                       (_K1188811978_
                                                        _plist12005_
                                                        _xfields11997_
                                                        _fields11992_
                                                        _struct-type-id11984_)))))))))))
                                   (_try-match1188411912_)))))))))))
            (if (##structure-instance-of?
                 _self1186411871_
                 (##type-id gxc#!struct-getf::t))
                (let ((_e1186812010_ (##vector-ref _self1186411871_ '1)))
                  (let ((_struct-t12013_ _e1186812010_))
                    (let ((_e1186912015_ (##vector-ref _self1186411871_ '2)))
                      (let ((_off12018_ _e1186912015_))
                        (_K1186712007_ _off12018_ _struct-t12013_)))))
                (_E1186611875_)))))))
  (bind-method!
   gxc#!struct-getf::t
   'optimize-call
   gxc#!struct-getf::optimize-call
   '#f)
  (define gxc#!struct-setf::optimize-call
    (lambda (_self11685_ _stx11686_ _args11687_)
      (let ((_self1168811695_ _self11685_))
        (let ((_E1169011699_
               (lambda () (error '"No clause matching" _self1168811695_))))
          (let ((_K1169111848_
                 (lambda (_off11702_ _struct-t11703_)
                   (let ((_struct-type11705_
                          (gxc#optimizer-resolve-type _struct-t11703_)))
                     (let ((_struct-type1170611720_ _struct-type11705_))
                       (let ((_E1171011724_
                              (lambda ()
                                (error '"No clause matching"
                                       _struct-type1170611720_))))
                         (let ((_else1170911728_
                                (lambda ()
                                  (gxc#raise-compile-error
                                   '"Illegal struct predicate application; not a struct type"
                                   _stx11686_
                                   _struct-t11703_
                                   _struct-type11705_))))
                           (let ((_try-match1170811736_
                                  (lambda ()
                                    (let ((_K1171111733_
                                           (lambda ()
                                             (gxc#xform-call% _stx11686_))))
                                      (if (##eq? _struct-type1170611720_ '#f)
                                          (_K1171111733_)
                                          (_else1170911728_))))))
                             (let ((_K1171211819_
                                    (lambda (_plist11739_
                                             _xfields11740_
                                             _fields11741_
                                             _struct-type-id11742_)
                                      (if _xfields11740_
                                          (let ((_g1174511759_
                                                 (lambda (_g1174611756_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1174611756_))))
                                            (let ((_g1174411766_
                                                   (lambda (_g1174611762_)
                                                     ((lambda ()
                                                        (gxc#raise-compile-error
                                                         '"Illegal struct mutator application"
                                                         _stx11686_))))))
                                              (let ((_g1174311816_
                                                     (lambda (_g1174611769_)
                                                       (if (gx#stx-pair?
                                                            _g1174611769_)
                                                           (let ((_e1174911771_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _g1174611769_)))
                     (let ((_hd1175011774_ (##car _e1174911771_))
                           (_tl1175111776_ (##cdr _e1174911771_)))
                       (if (gx#stx-pair? _tl1175111776_)
                           (let ((_e1175211779_ (gx#stx-e _tl1175111776_)))
                             (let ((_hd1175311782_ (##car _e1175211779_))
                                   (_tl1175411784_ (##cdr _e1175211779_)))
                               (if (gx#stx-null? _tl1175411784_)
                                   ((lambda (_L11787_ _L11788_)
                                      (let ((_expr11811_
                                             (gxc#compile-e _L11788_))
                                            (_val11812_
                                             (gxc#compile-e _L11787_))
                                            (_off11813_
                                             (fx+ _off11702_
                                                  _xfields11740_
                                                  '1))
                                            (_op11814_
                                             (if (if _plist11739_
                                                     (assgetq 'final:
                                                              _plist11739_)
                                                     '#f)
                                                 '%#struct-direct-set!
                                                 '%#struct-set!)))
                                        (gxc#xform-wrap-source
                                         (cons _op11814_
                                               (cons (cons '%#ref
                                                           (cons _struct-t11703_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _off11813_ '()))
                   (cons _expr11811_ (cons _val11812_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _stx11686_)))
                                    _hd1175311782_
                                    _hd1175011774_)
                                   (_g1174411766_ _g1174611769_))))
                           (_g1174411766_ _g1174611769_))))
                   (_g1174411766_ _g1174611769_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1174311816_ _args11687_))))
                                          (begin
                                            (gxc#verbose
                                             '"struct-setf: incomplete struct "
                                             _struct-type-id11742_)
                                            (gxc#xform-call% _stx11686_))))))
                               (if (##structure-instance-of?
                                    _struct-type1170611720_
                                    (##type-id gxc#!struct-type::t))
                                   (let ((_e1171311822_
                                          (##vector-ref
                                           _struct-type1170611720_
                                           '1)))
                                     (let ((_struct-type-id11825_
                                            _e1171311822_))
                                       (let ((_e1171411827_
                                              (##vector-ref
                                               _struct-type1170611720_
                                               '2)))
                                         (let ((_e1171511830_
                                                (##vector-ref
                                                 _struct-type1170611720_
                                                 '3)))
                                           (let ((_fields11833_ _e1171511830_))
                                             (let ((_e1171611835_
                                                    (##vector-ref
                                                     _struct-type1170611720_
                                                     '4)))
                                               (let ((_xfields11838_
                                                      _e1171611835_))
                                                 (let ((_e1171711840_
                                                        (##vector-ref
                                                         _struct-type1170611720_
                                                         '5)))
                                                   (let ((_e1171811843_
                                                          (##vector-ref
                                                           _struct-type1170611720_
                                                           '6)))
                                                     (let ((_plist11846_
                                                            _e1171811843_))
                                                       (_K1171211819_
                                                        _plist11846_
                                                        _xfields11838_
                                                        _fields11833_
                                                        _struct-type-id11825_)))))))))))
                                   (_try-match1170811736_)))))))))))
            (if (##structure-instance-of?
                 _self1168811695_
                 (##type-id gxc#!struct-setf::t))
                (let ((_e1169211851_ (##vector-ref _self1168811695_ '1)))
                  (let ((_struct-t11854_ _e1169211851_))
                    (let ((_e1169311856_ (##vector-ref _self1168811695_ '2)))
                      (let ((_off11859_ _e1169311856_))
                        (_K1169111848_ _off11859_ _struct-t11854_)))))
                (_E1169011699_)))))))
  (bind-method!
   gxc#!struct-setf::t
   'optimize-call
   gxc#!struct-setf::optimize-call
   '#f)
  (define gxc#!lambda::optimize-call
    (lambda (_self11641_ _stx11642_ _args11643_)
      (let ((_self1164411653_ _self11641_))
        (let ((_E1164611657_
               (lambda () (error '"No clause matching" _self1164411653_))))
          (let ((_K1164711664_
                 (lambda (_inline11660_ _dispatch11661_ _arity11662_)
                   (begin
                     (if (gxc#!lambda-arity-match? _self11641_ _args11643_)
                         '#!void
                         (gxc#raise-compile-error
                          '"Illegal lambda application; arity mismatch"
                          _stx11642_
                          _arity11662_))
                     (if _inline11660_
                         (begin
                           (gxc#verbose '"inline lambda")
                           (gxc#compile-e
                            (gxc#xform-wrap-source
                             (_inline11660_ _stx11642_)
                             _stx11642_)))
                         (if _dispatch11661_
                             (begin
                               (gxc#verbose
                                '"dispatch lambda => "
                                _dispatch11661_)
                               (gxc#compile-e
                                (gxc#xform-wrap-source
                                 (cons '%#call
                                       (cons (cons '%#ref
                                                   (cons _dispatch11661_ '()))
                                             _args11643_))
                                 _stx11642_)))
                             (gxc#xform-call% _stx11642_)))))))
            (if (##structure-instance-of?
                 _self1164411653_
                 (##type-id gxc#!lambda::t))
                (let ((_e1164811667_ (##vector-ref _self1164411653_ '1)))
                  (let ((_e1164911670_ (##vector-ref _self1164411653_ '2)))
                    (let ((_arity11673_ _e1164911670_))
                      (let ((_e1165011675_ (##vector-ref _self1164411653_ '3)))
                        (let ((_dispatch11678_ _e1165011675_))
                          (let ((_e1165111680_
                                 (##vector-ref _self1164411653_ '4)))
                            (let ((_inline11683_ _e1165111680_))
                              (_K1164711664_
                               _inline11683_
                               _dispatch11678_
                               _arity11673_))))))))
                (_E1164611657_)))))))
  (bind-method! gxc#!lambda::t 'optimize-call gxc#!lambda::optimize-call '#f)
  (define gxc#!case-lambda::optimize-call
    (lambda (_self11602_ _stx11603_ _args11604_)
      (let ((_self1160511612_ _self11602_))
        (let ((_E1160711616_
               (lambda () (error '"No clause matching" _self1160511612_))))
          (let ((_K1160811630_
                 (lambda (_clauses11619_)
                   (let ((_$e11625_
                          (find (lambda (_g1162011622_)
                                  (gxc#!lambda-arity-match?
                                   _g1162011622_
                                   _args11604_))
                                _clauses11619_)))
                     (if _$e11625_
                         ((lambda (_clause11628_)
                            (call-method
                             _clause11628_
                             'optimize-call
                             _stx11603_
                             _args11604_))
                          _$e11625_)
                         (gxc#raise-compile-error
                          '"Illegal case-lambda application; arity mismatch"
                          _stx11603_
                          (map gxc#!lambda-arity _clauses11619_)))))))
            (if (##structure-instance-of?
                 _self1160511612_
                 (##type-id gxc#!case-lambda::t))
                (let ((_e1160911633_ (##vector-ref _self1160511612_ '1)))
                  (let ((_e1161011636_ (##vector-ref _self1160511612_ '2)))
                    (let ((_clauses11639_ _e1161011636_))
                      (_K1160811630_ _clauses11639_))))
                (_E1160711616_)))))))
  (bind-method!
   gxc#!case-lambda::t
   'optimize-call
   gxc#!case-lambda::optimize-call
   '#f)
  (define gxc#!lambda-arity-match?
    (lambda (_self11538_ _args11539_)
      (let ((_self1154011547_ _self11538_))
        (let ((_E1154211551_
               (lambda () (error '"No clause matching" _self1154011547_))))
          (let ((_K1154311591_
                 (lambda (_arity11554_)
                   (let ((_arity1155511564_ _arity11554_))
                     (let ((_E1155811568_
                            (lambda ()
                              (error '"No clause matching"
                                     _arity1155511564_))))
                       (let ((_try-match1155711584_
                              (lambda ()
                                (let ((_K1155911574_
                                       (lambda (_arity11572_)
                                         (fx>= (length _args11539_)
                                               _arity11572_))))
                                  (if (##pair? _arity1155511564_)
                                      (let ((_hd1156011577_
                                             (##car _arity1155511564_))
                                            (_tl1156111579_
                                             (##cdr _arity1155511564_)))
                                        (let ((_arity11582_ _hd1156011577_))
                                          (if (##null? _tl1156111579_)
                                              (_K1155911574_ _arity11582_)
                                              (_E1155811568_))))
                                      (_E1155811568_))))))
                         (let ((_K1156211588_
                                (lambda ()
                                  (fx= (length _args11539_) _arity11554_))))
                           (if (fixnum? _arity1155511564_)
                               (_K1156211588_)
                               (_try-match1155711584_)))))))))
            (if (##structure-instance-of?
                 _self1154011547_
                 (##type-id gxc#!lambda::t))
                (let ((_e1154411594_ (##vector-ref _self1154011547_ '1)))
                  (let ((_e1154511597_ (##vector-ref _self1154011547_ '2)))
                    (let ((_arity11600_ _e1154511597_))
                      (_K1154311591_ _arity11600_))))
                (_E1154211551_)))))))
  (define gxc#generate-ssxi-module%
    (lambda (_stx11478_)
      (let ((_g1148011494_
             (lambda (_g1148111491_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1148111491_))))
        (let ((_g1147911535_
               (lambda (_g1148111497_)
                 (if (gx#stx-pair? _g1148111497_)
                     (let ((_e1148411499_ (gx#stx-e _g1148111497_)))
                       (let ((_hd1148511502_ (##car _e1148411499_))
                             (_tl1148611504_ (##cdr _e1148411499_)))
                         (if (gx#stx-pair? _tl1148611504_)
                             (let ((_e1148711507_ (gx#stx-e _tl1148611504_)))
                               (let ((_hd1148811510_ (##car _e1148711507_))
                                     (_tl1148911512_ (##cdr _e1148711507_)))
                                 ((lambda (_L11515_ _L11516_)
                                    (let ((_ctx11529_
                                           (gx#syntax-local-e__0 _L11516_)))
                                      (let ((_code11531_
                                             (##structure-ref
                                              _ctx11529_
                                              '11
                                              gx#module-context::t
                                              '#f)))
                                        (let ()
                                          (call-with-parameters
                                           (lambda ()
                                             (gxc#compile-e _code11531_))
                                           gx#current-expander-context
                                           _ctx11529_)))))
                                  _tl1148911512_
                                  _hd1148811510_)))
                             (_g1148011494_ _g1148111497_))))
                     (_g1148011494_ _g1148111497_)))))
          (_g1147911535_ _stx11478_)))))
  (define gxc#generate-ssxi-define-values%
    (lambda (_stx11288_)
      (let ((_generate-e11290_
             (lambda (_id11467_)
               (let ((_sym11469_
                      (if (gx#identifier? (gx#datum->syntax__0 '#f 'id))
                          (gxc#generate-runtime-binding-id _id11467_)
                          '#f)))
                 (let ((_$e11471_
                        (if _sym11469_
                            (gxc#optimizer-lookup-type _sym11469_)
                            '#f)))
                   (if _$e11471_
                       ((lambda (_type11474_)
                          (begin
                            (gxc#verbose '"generate typedecl " _sym11469_)
                            (let ((_typedecl11476_
                                   (call-method _type11474_ 'typedecl)))
                              (cons 'declare-type
                                    (cons _sym11469_
                                          (cons _typedecl11476_ '()))))))
                        _$e11471_)
                       '(begin)))))))
        (let ((_g1129311331_
               (lambda (_g1129411328_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1129411328_))))
          (let ((_g1129211412_
                 (lambda (_g1129411334_)
                   (if (gx#stx-pair? _g1129411334_)
                       (let ((_e1130911336_ (gx#stx-e _g1129411334_)))
                         (let ((_hd1131011339_ (##car _e1130911336_))
                               (_tl1131111341_ (##cdr _e1130911336_)))
                           (if (gx#stx-pair? _tl1131111341_)
                               (let ((_e1131211344_ (gx#stx-e _tl1131111341_)))
                                 (let ((_hd1131311347_ (##car _e1131211344_))
                                       (_tl1131411349_ (##cdr _e1131211344_)))
                                   (if (gx#stx-pair/null? _hd1131311347_)
                                       (if (fx>= (gx#stx-length _hd1131311347_)
                                                 '0)
                                           (let ((_g19664_
                                                  (gx#syntax-split-splice
                                                   _hd1131311347_
                                                   '0)))
                                             (begin
                                               (let ((_g19665_
                                                      (values-count _g19664_)))
                                                 (if (not (fx= _g19665_ 2))
                                                     (error "Context expects 2 values"
                                                            _g19665_)))
                                               (let ((_target1131511352_
                                                      (values-ref _g19664_ 0))
                                                     (_tl1131711354_
                                                      (values-ref _g19664_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl1131711354_)
                                                     (letrec ((_loop1131811357_
                                                               (lambda (_hd1131611360_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _id1132211362_)
                         (if (gx#stx-pair? _hd1131611360_)
                             (let ((_e1131911365_ (gx#stx-e _hd1131611360_)))
                               (let ((_lp-hd1132011368_ (##car _e1131911365_))
                                     (_lp-tl1132111370_ (##cdr _e1131911365_)))
                                 (_loop1131811357_
                                  _lp-tl1132111370_
                                  (cons _lp-hd1132011368_ _id1132211362_))))
                             (let ((_id1132311373_ (reverse _id1132211362_)))
                               (if (gx#stx-pair? _tl1131411349_)
                                   (let ((_e1132411376_
                                          (gx#stx-e _tl1131411349_)))
                                     (let ((_hd1132511379_
                                            (##car _e1132411376_))
                                           (_tl1132611381_
                                            (##cdr _e1132411376_)))
                                       (if (gx#stx-null? _tl1132611381_)
                                           ((lambda (_L11384_)
                                              (let ((_types11410_
                                                     (map _generate-e11290_
                                                          (begin
                                                            '#!void
                                                            (foldr1 (lambda (_g1140211405_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g1140311407_)
                              (cons _g1140211405_ _g1140311407_))
                            '()
                            _L11384_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons 'begin _types11410_)))
                                            _id1132311373_)
                                           (_g1129311331_ _g1129411334_))))
                                   (_g1129311331_ _g1129411334_)))))))
               (_loop1131811357_ _target1131511352_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1129311331_
                                                      _g1129411334_)))))
                                           (_g1129311331_ _g1129411334_))
                                       (_g1129311331_ _g1129411334_))))
                               (_g1129311331_ _g1129411334_))))
                       (_g1129311331_ _g1129411334_)))))
            (let ((_g1129111464_
                   (lambda (_g1129411415_)
                     (if (gx#stx-pair? _g1129411415_)
                         (let ((_e1129611417_ (gx#stx-e _g1129411415_)))
                           (let ((_hd1129711420_ (##car _e1129611417_))
                                 (_tl1129811422_ (##cdr _e1129611417_)))
                             (if (gx#stx-pair? _tl1129811422_)
                                 (let ((_e1129911425_
                                        (gx#stx-e _tl1129811422_)))
                                   (let ((_hd1130011428_ (##car _e1129911425_))
                                         (_tl1130111430_
                                          (##cdr _e1129911425_)))
                                     (if (gx#stx-pair? _hd1130011428_)
                                         (let ((_e1130211433_
                                                (gx#stx-e _hd1130011428_)))
                                           (let ((_hd1130311436_
                                                  (##car _e1130211433_))
                                                 (_tl1130411438_
                                                  (##cdr _e1130211433_)))
                                             (if (gx#stx-null? _tl1130411438_)
                                                 (if (gx#stx-pair?
                                                      _tl1130111430_)
                                                     (let ((_e1130511441_
                                                            (gx#stx-e
                                                             _tl1130111430_)))
                                                       (let ((_hd1130611444_
                                                              (##car _e1130511441_))
                                                             (_tl1130711446_
                                                              (##cdr _e1130511441_)))
                                                         (if (gx#stx-null?
                                                              _tl1130711446_)
                                                             ((lambda (_L11449_)
                                                                (_generate-e11290_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L11449_))
                      _hd1130311436_)
                     (_g1129211412_ _g1129411415_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1129211412_
                                                      _g1129411415_))
                                                 (_g1129211412_
                                                  _g1129411415_))))
                                         (_g1129211412_ _g1129411415_))))
                                 (_g1129211412_ _g1129411415_))))
                         (_g1129211412_ _g1129411415_)))))
              (_g1129111464_ _stx11288_)))))))
  (define gxc#generate-ssxi-call%
    (lambda (_stx10842_)
      (let ((_g1084610948_
             (lambda (_g1084710945_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1084710945_))))
        (let ((_g1084510955_ (lambda (_g1084710951_) ((lambda () '(begin))))))
          (let ((_g1084411105_
                 (lambda (_g1084710958_)
                   (if (gx#stx-pair? _g1084710958_)
                       (let ((_e1090510960_ (gx#stx-e _g1084710958_)))
                         (let ((_hd1090610963_ (##car _e1090510960_))
                               (_tl1090710965_ (##cdr _e1090510960_)))
                           (if (gx#stx-pair? _tl1090710965_)
                               (let ((_e1090810968_ (gx#stx-e _tl1090710965_)))
                                 (let ((_hd1090910971_ (##car _e1090810968_))
                                       (_tl1091010973_ (##cdr _e1090810968_)))
                                   (if (gx#stx-pair? _hd1090910971_)
                                       (let ((_e1091110976_
                                              (gx#stx-e _hd1090910971_)))
                                         (let ((_hd1091210979_
                                                (##car _e1091110976_))
                                               (_tl1091310981_
                                                (##cdr _e1091110976_)))
                                           (if (gx#identifier? _hd1091210979_)
                                               (if (gx#stx-eq?
                                                    '%#ref
                                                    _hd1091210979_)
                                                   (if (gx#stx-pair?
                                                        _tl1091310981_)
                                                       (let ((_e1091410984_
                                                              (gx#stx-e
                                                               _tl1091310981_)))
                                                         (let ((_hd1091510987_
                                                                (##car _e1091410984_))
                                                               (_tl1091610989_
                                                                (##cdr _e1091410984_)))
                                                           (if (gx#stx-null?
                                                                _tl1091610989_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl1091010973_)
                           (let ((_e1091710992_ (gx#stx-e _tl1091010973_)))
                             (let ((_hd1091810995_ (##car _e1091710992_))
                                   (_tl1091910997_ (##cdr _e1091710992_)))
                               (if (gx#stx-pair? _hd1091810995_)
                                   (let ((_e1092011000_
                                          (gx#stx-e _hd1091810995_)))
                                     (let ((_hd1092111003_
                                            (##car _e1092011000_))
                                           (_tl1092211005_
                                            (##cdr _e1092011000_)))
                                       (if (gx#identifier? _hd1092111003_)
                                           (if (gx#stx-eq?
                                                '%#ref
                                                _hd1092111003_)
                                               (if (gx#stx-pair?
                                                    _tl1092211005_)
                                                   (let ((_e1092311008_
                                                          (gx#stx-e
                                                           _tl1092211005_)))
                                                     (let ((_hd1092411011_
                                                            (##car _e1092311008_))
                                                           (_tl1092511013_
                                                            (##cdr _e1092311008_)))
                                                       (if (gx#stx-null?
                                                            _tl1092511013_)
                                                           (if (gx#stx-pair?
                                                                _tl1091910997_)
                                                               (let ((_e1092611016_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl1091910997_)))
                         (let ((_hd1092711019_ (##car _e1092611016_))
                               (_tl1092811021_ (##cdr _e1092611016_)))
                           (if (gx#stx-pair? _hd1092711019_)
                               (let ((_e1092911024_ (gx#stx-e _hd1092711019_)))
                                 (let ((_hd1093011027_ (##car _e1092911024_))
                                       (_tl1093111029_ (##cdr _e1092911024_)))
                                   (if (gx#identifier? _hd1093011027_)
                                       (if (gx#stx-eq? '%#quote _hd1093011027_)
                                           (if (gx#stx-pair? _tl1093111029_)
                                               (let ((_e1093211032_
                                                      (gx#stx-e
                                                       _tl1093111029_)))
                                                 (let ((_hd1093311035_
                                                        (##car _e1093211032_))
                                                       (_tl1093411037_
                                                        (##cdr _e1093211032_)))
                                                   (if (gx#stx-null?
                                                        _tl1093411037_)
                                                       (if (gx#stx-pair?
                                                            _tl1092811021_)
                                                           (let ((_e1093511040_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl1092811021_)))
                     (let ((_hd1093611043_ (##car _e1093511040_))
                           (_tl1093711045_ (##cdr _e1093511040_)))
                       (if (gx#stx-pair? _hd1093611043_)
                           (let ((_e1093811048_ (gx#stx-e _hd1093611043_)))
                             (let ((_hd1093911051_ (##car _e1093811048_))
                                   (_tl1094011053_ (##cdr _e1093811048_)))
                               (if (gx#identifier? _hd1093911051_)
                                   (if (gx#stx-eq? '%#ref _hd1093911051_)
                                       (if (gx#stx-pair? _tl1094011053_)
                                           (let ((_e1094111056_
                                                  (gx#stx-e _tl1094011053_)))
                                             (let ((_hd1094211059_
                                                    (##car _e1094111056_))
                                                   (_tl1094311061_
                                                    (##cdr _e1094111056_)))
                                               (if (gx#stx-null?
                                                    _tl1094311061_)
                                                   (if (gx#stx-null?
                                                        _tl1093711045_)
                                                       ((lambda (_L11064_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L11065_
                         _L11066_
                         _L11067_)
                  (if (eq? (gxc#generate-runtime-binding-id
                            (gx#datum->syntax__0 '#f '-bind-method))
                           'bind-method!)
                      (cons 'declare-method
                            (cons (gxc#generate-runtime-binding-id _L11066_)
                                  (cons (gx#stx-e _L11065_)
                                        (cons (gxc#generate-runtime-binding-id
                                               _L11064_)
                                              (cons '#f '())))))
                      (_g1084510955_ _g1084710958_)))
                _hd1094211059_
                _hd1093311035_
                _hd1092411011_
                _hd1091510987_)
               (_g1084510955_ _g1084710958_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1084510955_
                                                    _g1084710958_))))
                                           (_g1084510955_ _g1084710958_))
                                       (_g1084510955_ _g1084710958_))
                                   (_g1084510955_ _g1084710958_))))
                           (_g1084510955_ _g1084710958_))))
                   (_g1084510955_ _g1084710958_))
               (_g1084510955_ _g1084710958_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1084510955_ _g1084710958_))
                                           (_g1084510955_ _g1084710958_))
                                       (_g1084510955_ _g1084710958_))))
                               (_g1084510955_ _g1084710958_))))
                       (_g1084510955_ _g1084710958_))
                   (_g1084510955_ _g1084710958_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1084510955_
                                                    _g1084710958_))
                                               (_g1084510955_ _g1084710958_))
                                           (_g1084510955_ _g1084710958_))))
                                   (_g1084510955_ _g1084710958_))))
                           (_g1084510955_ _g1084710958_))
                       (_g1084510955_ _g1084710958_))))
               (_g1084510955_ _g1084710958_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1084510955_
                                                    _g1084710958_))
                                               (_g1084510955_ _g1084710958_))))
                                       (_g1084510955_ _g1084710958_))))
                               (_g1084510955_ _g1084710958_))))
                       (_g1084510955_ _g1084710958_)))))
            (let ((_g1084311285_
                   (lambda (_g1084711108_)
                     (if (gx#stx-pair? _g1084711108_)
                         (let ((_e1085311110_ (gx#stx-e _g1084711108_)))
                           (let ((_hd1085411113_ (##car _e1085311110_))
                                 (_tl1085511115_ (##cdr _e1085311110_)))
                             (if (gx#stx-pair? _tl1085511115_)
                                 (let ((_e1085611118_
                                        (gx#stx-e _tl1085511115_)))
                                   (let ((_hd1085711121_ (##car _e1085611118_))
                                         (_tl1085811123_
                                          (##cdr _e1085611118_)))
                                     (if (gx#stx-pair? _hd1085711121_)
                                         (let ((_e1085911126_
                                                (gx#stx-e _hd1085711121_)))
                                           (let ((_hd1086011129_
                                                  (##car _e1085911126_))
                                                 (_tl1086111131_
                                                  (##cdr _e1085911126_)))
                                             (if (gx#identifier?
                                                  _hd1086011129_)
                                                 (if (gx#stx-eq?
                                                      '%#ref
                                                      _hd1086011129_)
                                                     (if (gx#stx-pair?
                                                          _tl1086111131_)
                                                         (let ((_e1086211134_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1086111131_)))
                   (let ((_hd1086311137_ (##car _e1086211134_))
                         (_tl1086411139_ (##cdr _e1086211134_)))
                     (if (gx#stx-null? _tl1086411139_)
                         (if (gx#stx-pair? _tl1085811123_)
                             (let ((_e1086511142_ (gx#stx-e _tl1085811123_)))
                               (let ((_hd1086611145_ (##car _e1086511142_))
                                     (_tl1086711147_ (##cdr _e1086511142_)))
                                 (if (gx#stx-pair? _hd1086611145_)
                                     (let ((_e1086811150_
                                            (gx#stx-e _hd1086611145_)))
                                       (let ((_hd1086911153_
                                              (##car _e1086811150_))
                                             (_tl1087011155_
                                              (##cdr _e1086811150_)))
                                         (if (gx#identifier? _hd1086911153_)
                                             (if (gx#stx-eq?
                                                  '%#ref
                                                  _hd1086911153_)
                                                 (if (gx#stx-pair?
                                                      _tl1087011155_)
                                                     (let ((_e1087111158_
                                                            (gx#stx-e
                                                             _tl1087011155_)))
                                                       (let ((_hd1087211161_
                                                              (##car _e1087111158_))
                                                             (_tl1087311163_
                                                              (##cdr _e1087111158_)))
                                                         (if (gx#stx-null?
                                                              _tl1087311163_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1086711147_)
                         (let ((_e1087411166_ (gx#stx-e _tl1086711147_)))
                           (let ((_hd1087511169_ (##car _e1087411166_))
                                 (_tl1087611171_ (##cdr _e1087411166_)))
                             (if (gx#stx-pair? _hd1087511169_)
                                 (let ((_e1087711174_
                                        (gx#stx-e _hd1087511169_)))
                                   (let ((_hd1087811177_ (##car _e1087711174_))
                                         (_tl1087911179_
                                          (##cdr _e1087711174_)))
                                     (if (gx#identifier? _hd1087811177_)
                                         (if (gx#stx-eq?
                                              '%#quote
                                              _hd1087811177_)
                                             (if (gx#stx-pair? _tl1087911179_)
                                                 (let ((_e1088011182_
                                                        (gx#stx-e
                                                         _tl1087911179_)))
                                                   (let ((_hd1088111185_
                                                          (##car _e1088011182_))
                                                         (_tl1088211187_
                                                          (##cdr _e1088011182_)))
                                                     (if (gx#stx-null?
                                                          _tl1088211187_)
                                                         (if (gx#stx-pair?
                                                              _tl1087611171_)
                                                             (let ((_e1088311190_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl1087611171_)))
                       (let ((_hd1088411193_ (##car _e1088311190_))
                             (_tl1088511195_ (##cdr _e1088311190_)))
                         (if (gx#stx-pair? _hd1088411193_)
                             (let ((_e1088611198_ (gx#stx-e _hd1088411193_)))
                               (let ((_hd1088711201_ (##car _e1088611198_))
                                     (_tl1088811203_ (##cdr _e1088611198_)))
                                 (if (gx#identifier? _hd1088711201_)
                                     (if (gx#stx-eq? '%#ref _hd1088711201_)
                                         (if (gx#stx-pair? _tl1088811203_)
                                             (let ((_e1088911206_
                                                    (gx#stx-e _tl1088811203_)))
                                               (let ((_hd1089011209_
                                                      (##car _e1088911206_))
                                                     (_tl1089111211_
                                                      (##cdr _e1088911206_)))
                                                 (if (gx#stx-null?
                                                      _tl1089111211_)
                                                     (if (gx#stx-pair?
                                                          _tl1088511195_)
                                                         (let ((_e1089211214_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1088511195_)))
                   (let ((_hd1089311217_ (##car _e1089211214_))
                         (_tl1089411219_ (##cdr _e1089211214_)))
                     (if (gx#stx-pair? _hd1089311217_)
                         (let ((_e1089511222_ (gx#stx-e _hd1089311217_)))
                           (let ((_hd1089611225_ (##car _e1089511222_))
                                 (_tl1089711227_ (##cdr _e1089511222_)))
                             (if (gx#identifier? _hd1089611225_)
                                 (if (gx#stx-eq? '%#quote _hd1089611225_)
                                     (if (gx#stx-pair? _tl1089711227_)
                                         (let ((_e1089811230_
                                                (gx#stx-e _tl1089711227_)))
                                           (let ((_hd1089911233_
                                                  (##car _e1089811230_))
                                                 (_tl1090011235_
                                                  (##cdr _e1089811230_)))
                                             (if (gx#stx-null? _tl1090011235_)
                                                 (if (gx#stx-null?
                                                      _tl1089411219_)
                                                     ((lambda (_L11238_
                                                               _L11239_
                                                               _L11240_
                                                               _L11241_
                                                               _L11242_)
                                                        (if (eq? (gxc#generate-runtime-binding-id
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L11242_)
                         'bind-method!)
                    (cons 'declare-method
                          (cons (gxc#generate-runtime-binding-id _L11241_)
                                (cons (gx#stx-e _L11240_)
                                      (cons (gxc#generate-runtime-binding-id
                                             _L11239_)
                                            (cons (gx#stx-e _L11238_) '())))))
                    (_g1084411105_ _g1084711108_)))
              _hd1089911233_
              _hd1089011209_
              _hd1088111185_
              _hd1087211161_
              _hd1086311137_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1084411105_
                                                      _g1084711108_))
                                                 (_g1084411105_
                                                  _g1084711108_))))
                                         (_g1084411105_ _g1084711108_))
                                     (_g1084411105_ _g1084711108_))
                                 (_g1084411105_ _g1084711108_))))
                         (_g1084411105_ _g1084711108_))))
                 (_g1084411105_ _g1084711108_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1084411105_
                                                      _g1084711108_))))
                                             (_g1084411105_ _g1084711108_))
                                         (_g1084411105_ _g1084711108_))
                                     (_g1084411105_ _g1084711108_))))
                             (_g1084411105_ _g1084711108_))))
                     (_g1084411105_ _g1084711108_))
                 (_g1084411105_ _g1084711108_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1084411105_ _g1084711108_))
                                             (_g1084411105_ _g1084711108_))
                                         (_g1084411105_ _g1084711108_))))
                                 (_g1084411105_ _g1084711108_))))
                         (_g1084411105_ _g1084711108_))
                     (_g1084411105_ _g1084711108_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1084411105_
                                                      _g1084711108_))
                                                 (_g1084411105_ _g1084711108_))
                                             (_g1084411105_ _g1084711108_))))
                                     (_g1084411105_ _g1084711108_))))
                             (_g1084411105_ _g1084711108_))
                         (_g1084411105_ _g1084711108_))))
                 (_g1084411105_ _g1084711108_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1084411105_
                                                      _g1084711108_))
                                                 (_g1084411105_
                                                  _g1084711108_))))
                                         (_g1084411105_ _g1084711108_))))
                                 (_g1084411105_ _g1084711108_))))
                         (_g1084411105_ _g1084711108_)))))
              (_g1084311285_ _stx10842_)))))))
  (define gxc#!alias::typedecl
    (lambda (_self10818_)
      (let ((_self1081910825_ _self10818_))
        (let ((_E1082110829_
               (lambda () (error '"No clause matching" _self1081910825_))))
          (let ((_K1082210834_
                 (lambda (_alias-id10832_)
                   (cons '@alias (cons _alias-id10832_ '())))))
            (if (##structure-instance-of?
                 _self1081910825_
                 (##type-id gxc#!alias::t))
                (let ((_e1082310837_ (##vector-ref _self1081910825_ '1)))
                  (let ((_alias-id10840_ _e1082310837_))
                    (_K1082210834_ _alias-id10840_)))
                (_E1082110829_)))))))
  (bind-method! gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f)
  (define gxc#!struct-type::typedecl
    (lambda (_self10762_)
      (let ((_self1076310774_ _self10762_))
        (let ((_E1076510778_
               (lambda () (error '"No clause matching" _self1076310774_))))
          (let ((_K1076610787_
                 (lambda (_plist10781_
                          _ctor10782_
                          _fields10783_
                          _super10784_
                          _type-id10785_)
                   (cons '@struct-type
                         (cons _type-id10785_
                               (cons _super10784_
                                     (cons _fields10783_
                                           (cons _ctor10782_
                                                 (cons _plist10781_
                                                       '())))))))))
            (if (##structure-instance-of?
                 _self1076310774_
                 (##type-id gxc#!struct-type::t))
                (let ((_e1076710790_ (##vector-ref _self1076310774_ '1)))
                  (let ((_type-id10793_ _e1076710790_))
                    (let ((_e1076810795_ (##vector-ref _self1076310774_ '2)))
                      (let ((_super10798_ _e1076810795_))
                        (let ((_e1076910800_
                               (##vector-ref _self1076310774_ '3)))
                          (let ((_fields10803_ _e1076910800_))
                            (let ((_e1077010805_
                                   (##vector-ref _self1076310774_ '4)))
                              (let ((_e1077110808_
                                     (##vector-ref _self1076310774_ '5)))
                                (let ((_ctor10811_ _e1077110808_))
                                  (let ((_e1077210813_
                                         (##vector-ref _self1076310774_ '6)))
                                    (let ((_plist10816_ _e1077210813_))
                                      (_K1076610787_
                                       _plist10816_
                                       _ctor10811_
                                       _fields10803_
                                       _super10798_
                                       _type-id10793_))))))))))))
                (_E1076510778_)))))))
  (bind-method! gxc#!struct-type::t 'typedecl gxc#!struct-type::typedecl '#f)
  (define gxc#!struct-pred::typedecl
    (lambda (_self10738_)
      (let ((_self1073910745_ _self10738_))
        (let ((_E1074110749_
               (lambda () (error '"No clause matching" _self1073910745_))))
          (let ((_K1074210754_
                 (lambda (_struct-t10752_)
                   (cons '@struct-pred (cons _struct-t10752_ '())))))
            (if (##structure-instance-of?
                 _self1073910745_
                 (##type-id gxc#!struct-pred::t))
                (let ((_e1074310757_ (##vector-ref _self1073910745_ '1)))
                  (let ((_struct-t10760_ _e1074310757_))
                    (_K1074210754_ _struct-t10760_)))
                (_E1074110749_)))))))
  (bind-method! gxc#!struct-pred::t 'typedecl gxc#!struct-pred::typedecl '#f)
  (define gxc#!struct-cons::typedecl
    (lambda (_self10714_)
      (let ((_self1071510721_ _self10714_))
        (let ((_E1071710725_
               (lambda () (error '"No clause matching" _self1071510721_))))
          (let ((_K1071810730_
                 (lambda (_struct-t10728_)
                   (cons '@struct-cons (cons _struct-t10728_ '())))))
            (if (##structure-instance-of?
                 _self1071510721_
                 (##type-id gxc#!struct-cons::t))
                (let ((_e1071910733_ (##vector-ref _self1071510721_ '1)))
                  (let ((_struct-t10736_ _e1071910733_))
                    (_K1071810730_ _struct-t10736_)))
                (_E1071710725_)))))))
  (bind-method! gxc#!struct-cons::t 'typedecl gxc#!struct-cons::typedecl '#f)
  (define gxc#!struct-getf::typedecl
    (lambda (_self10683_)
      (let ((_self1068410691_ _self10683_))
        (let ((_E1068610695_
               (lambda () (error '"No clause matching" _self1068410691_))))
          (let ((_K1068710701_
                 (lambda (_off10698_ _struct-t10699_)
                   (cons '@struct-getf
                         (cons _struct-t10699_ (cons _off10698_ '()))))))
            (if (##structure-instance-of?
                 _self1068410691_
                 (##type-id gxc#!struct-getf::t))
                (let ((_e1068810704_ (##vector-ref _self1068410691_ '1)))
                  (let ((_struct-t10707_ _e1068810704_))
                    (let ((_e1068910709_ (##vector-ref _self1068410691_ '2)))
                      (let ((_off10712_ _e1068910709_))
                        (_K1068710701_ _off10712_ _struct-t10707_)))))
                (_E1068610695_)))))))
  (bind-method! gxc#!struct-getf::t 'typedecl gxc#!struct-getf::typedecl '#f)
  (define gxc#!struct-setf::typedecl
    (lambda (_self10652_)
      (let ((_self1065310660_ _self10652_))
        (let ((_E1065510664_
               (lambda () (error '"No clause matching" _self1065310660_))))
          (let ((_K1065610670_
                 (lambda (_off10667_ _struct-t10668_)
                   (cons '@struct-setf
                         (cons _struct-t10668_ (cons _off10667_ '()))))))
            (if (##structure-instance-of?
                 _self1065310660_
                 (##type-id gxc#!struct-setf::t))
                (let ((_e1065710673_ (##vector-ref _self1065310660_ '1)))
                  (let ((_struct-t10676_ _e1065710673_))
                    (let ((_e1065810678_ (##vector-ref _self1065310660_ '2)))
                      (let ((_off10681_ _e1065810678_))
                        (_K1065610670_ _off10681_ _struct-t10676_)))))
                (_E1065510664_)))))))
  (bind-method! gxc#!struct-setf::t 'typedecl gxc#!struct-setf::typedecl '#f)
  (define gxc#!lambda::typedecl
    (lambda (_self10600_)
      (let ((_self1060110611_ _self10600_))
        (let ((_E1060310615_
               (lambda () (error '"No clause matching" _self1060110611_))))
          (let ((_K1060410626_
                 (lambda (_typedecl10618_
                          _inline10619_
                          _dispatch10620_
                          _arity10621_)
                   (if _inline10619_
                       (let ((_$e10623_ _typedecl10618_))
                         (if _$e10623_
                             _$e10623_
                             (error '"Cannot generate typedecl for inline rules")))
                       (cons '@lambda
                             (cons _arity10621_
                                   (cons _dispatch10620_ '())))))))
            (if (##structure-instance-of?
                 _self1060110611_
                 (##type-id gxc#!lambda::t))
                (let ((_e1060510629_ (##vector-ref _self1060110611_ '1)))
                  (let ((_e1060610632_ (##vector-ref _self1060110611_ '2)))
                    (let ((_arity10635_ _e1060610632_))
                      (let ((_e1060710637_ (##vector-ref _self1060110611_ '3)))
                        (let ((_dispatch10640_ _e1060710637_))
                          (let ((_e1060810642_
                                 (##vector-ref _self1060110611_ '4)))
                            (let ((_inline10645_ _e1060810642_))
                              (let ((_e1060910647_
                                     (##vector-ref _self1060110611_ '5)))
                                (let ((_typedecl10650_ _e1060910647_))
                                  (_K1060410626_
                                   _typedecl10650_
                                   _inline10645_
                                   _dispatch10640_
                                   _arity10635_))))))))))
                (_E1060310615_)))))))
  (bind-method! gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f)
  (define gxc#!case-lambda::typedecl
    (lambda (_self10533_)
      (let ((_clause-e10535_
             (lambda (_clause10565_)
               (let ((_clause1056610574_ _clause10565_))
                 (let ((_E1056810578_
                        (lambda ()
                          (error '"No clause matching" _clause1056610574_))))
                   (let ((_K1056910584_
                          (lambda (_dispatch10581_ _arity10582_)
                            (cons _arity10582_ (cons _dispatch10581_ '())))))
                     (if (##structure-instance-of?
                          _clause1056610574_
                          (##type-id gxc#!lambda::t))
                         (let ((_e1057010587_
                                (##vector-ref _clause1056610574_ '1)))
                           (let ((_e1057110590_
                                  (##vector-ref _clause1056610574_ '2)))
                             (let ((_arity10593_ _e1057110590_))
                               (let ((_e1057210595_
                                      (##vector-ref _clause1056610574_ '3)))
                                 (let ((_dispatch10598_ _e1057210595_))
                                   (_K1056910584_
                                    _dispatch10598_
                                    _arity10593_))))))
                         (_E1056810578_))))))))
        (let ((_self1053610543_ _self10533_))
          (let ((_E1053810547_
                 (lambda () (error '"No clause matching" _self1053610543_))))
            (let ((_K1053910554_
                   (lambda (_clauses10550_)
                     (let ((_clauses10552_
                            (map _clause-e10535_ _clauses10550_)))
                       (cons '@case-lambda _clauses10552_)))))
              (if (##structure-instance-of?
                   _self1053610543_
                   (##type-id gxc#!case-lambda::t))
                  (let ((_e1054010557_ (##vector-ref _self1053610543_ '1)))
                    (let ((_e1054110560_ (##vector-ref _self1053610543_ '2)))
                      (let ((_clauses10563_ _e1054110560_))
                        (_K1053910554_ _clauses10563_))))
                  (_E1053810547_))))))))
  (bind-method! gxc#!case-lambda::t 'typedecl gxc#!case-lambda::typedecl '#f)
  (define gxc#identifier-symbol
    (lambda (_stx10531_) (gxc#generate-runtime-binding-id _stx10531_))))
