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
    (lambda _$args19704_
      (apply make-struct-instance gxc#optimizer-info::t _$args19704_)))
  (define gxc#optimizer-info-type
    (make-struct-field-accessor gxc#optimizer-info::t '0))
  (define gxc#optimizer-info-ssxi
    (make-struct-field-accessor gxc#optimizer-info::t '1))
  (define gxc#optimizer-info-type-set!
    (make-struct-field-mutator gxc#optimizer-info::t '0))
  (define gxc#optimizer-info-ssxi-set!
    (make-struct-field-mutator gxc#optimizer-info::t '1))
  (define gxc#optimizer-info:::init!
    (lambda (_self19702_)
      (struct-instance-init!
       _self19702_
       (make-hash-table-eq)
       (make-hash-table-eq))))
  (bind-method! gxc#optimizer-info::t ':init! gxc#optimizer-info:::init! '#f)
  (define gxc#optimizer-info-init!
    (lambda ()
      (if (gxc#current-compile-optimizer-info)
          '#!void
          (gxc#current-compile-optimizer-info
           (let ((__obj19716 (make-object gxc#optimizer-info::t '2)))
             (begin (gxc#optimizer-info:::init! __obj19716) __obj19716))))))
  (define gxc#optimize!
    (lambda (_ctx19696_)
      (call-with-parameters
       (lambda ()
         (begin
           (gxc#optimizer-load-ssxi-deps _ctx19696_)
           (table-set!
            (##structure-ref
             (gxc#current-compile-optimizer-info)
             '2
             gxc#optimizer-info::t
             '#f)
            (##structure-ref _ctx19696_ '1 gx#expander-context::t '#f)
            '#t)
           (let ((_code19699_
                  (gxc#optimize-source
                   (##structure-ref _ctx19696_ '11 gx#module-context::t '#f))))
             (##structure-set!
              _ctx19696_
              _code19699_
              '11
              gx#module-context::t
              '#f))))
       gxc#current-compile-mutators
       (make-hash-table-eq)
       gxc#current-compile-local-type
       (make-hash-table-eq))))
  (define gxc#optimizer-load-ssxi-deps
    (lambda (_ctx19641_)
      (let ((_deps19643_
             (let ((_imports19687_
                    (##structure-ref _ctx19641_ '8 gx#module-context::t '#f)))
               (let ((_$e19689_
                      (gx#core-context-prelude__opt-lambda11357 _ctx19641_)))
                 (if _$e19689_
                     ((lambda (_g1969119693_)
                        (cons _g1969119693_ _imports19687_))
                      _$e19689_)
                     _imports19687_)))))
        ((letrec ((_lp19645_
                   (lambda (_rest19647_)
                     (let ((_rest1964819656_ _rest19647_))
                       (let ((_E1965119660_
                              (lambda ()
                                (error '"No clause matching"
                                       _rest1964819656_))))
                         (let ((_else1965019664_ (lambda () '#!void)))
                           (let ((_K1965219675_
                                  (lambda (_rest19667_ _hd19668_)
                                    (if (##structure-instance-of?
                                         _hd19668_
                                         'gx#module-context::t)
                                        (begin
                                          (if (table-ref
                                               (##structure-ref
                                                (gxc#current-compile-optimizer-info)
                                                '2
                                                gxc#optimizer-info::t
                                                '#f)
                                               (##structure-ref
                                                _hd19668_
                                                '1
                                                gx#expander-context::t
                                                '#f)
                                               '#f)
                                              '#!void
                                              (begin
                                                (let ((_$e19670_
                                                       (gx#core-context-prelude__opt-lambda11357
                                                        _hd19668_)))
                                                  (if _$e19670_
                                                      ((lambda (_pre19673_)
                                                         (_lp19645_
                                                          (cons _pre19673_
                                                                (##structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd19668_
                         '8
                         gx#module-context::t
                         '#f))))
               _$e19670_)
              (_lp19645_
               (##structure-ref _hd19668_ '8 gx#module-context::t '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (gxc#optimizer-load-ssxi
                                                 _hd19668_)))
                                          (_lp19645_ _rest19667_))
                                        (if (##structure-instance-of?
                                             _hd19668_
                                             'gx#prelude-context::t)
                                            (begin
                                              (if (table-ref
                                                   (##structure-ref
                                                    (gxc#current-compile-optimizer-info)
                                                    '2
                                                    gxc#optimizer-info::t
                                                    '#f)
                                                   (##structure-ref
                                                    _hd19668_
                                                    '1
                                                    gx#expander-context::t
                                                    '#f)
                                                   '#f)
                                                  '#!void
                                                  (begin
                                                    (_lp19645_
                                                     (##structure-ref
                                                      _hd19668_
                                                      '7
                                                      gx#prelude-context::t
                                                      '#f))
                                                    (gxc#optimizer-load-ssxi
                                                     _hd19668_)))
                                              (_lp19645_ _rest19667_))
                                            (if (##structure-direct-instance-of?
                                                 _hd19668_
                                                 'gx#module-import::t)
                                                (_lp19645_
                                                 (cons (##direct-structure-ref
                                                        _hd19668_
                                                        '1
                                                        gx#module-import::t
                                                        '#f)
                                                       _rest19667_))
                                                (if (##structure-direct-instance-of?
                                                     _hd19668_
                                                     'gx#module-export::t)
                                                    (_lp19645_
                                                     (cons (##direct-structure-ref
                                                            _hd19668_
                                                            '1
                                                            gx#module-export::t
                                                            '#f)
                                                           _rest19667_))
                                                    (if (##structure-direct-instance-of?
                                                         _hd19668_
                                                         'gx#import-set::t)
                                                        (_lp19645_
                                                         (cons (##direct-structure-ref
                                                                _hd19668_
                                                                '1
                                                                gx#import-set::t
                                                                '#f)
                                                               _rest19667_))
                                                        (error '"Unexpected module import"
                                                               _hd19668_)))))))))
                             (if (##pair? _rest1964819656_)
                                 (let ((_hd1965319678_
                                        (##car _rest1964819656_))
                                       (_tl1965419680_
                                        (##cdr _rest1964819656_)))
                                   (let ((_hd19683_ _hd1965319678_))
                                     (let ((_rest19685_ _tl1965419680_))
                                       (_K1965219675_ _rest19685_ _hd19683_))))
                                 (_else1965019664_)))))))))
           _lp19645_)
         _deps19643_))))
  (define gxc#optimizer-load-ssxi
    (lambda (_ctx19621_)
      (if (if (##structure-instance-of? _ctx19621_ 'gx#module-context::t)
              (list? (##structure-ref _ctx19621_ '7 gx#module-context::t '#f))
              '#f)
          '#!void
          (let ((_ht19623_
                 (##structure-ref
                  (gxc#current-compile-optimizer-info)
                  '2
                  gxc#optimizer-info::t
                  '#f)))
            (let ((_id19625_
                   (##structure-ref _ctx19621_ '1 gx#expander-context::t '#f)))
              (let ((_mod19627_ (table-ref _ht19623_ _id19625_ '#f)))
                (let ()
                  (let ((_$e19630_ _mod19627_))
                    (if _$e19630_
                        _$e19630_
                        (let ((_mod19633_
                               (gxc#optimizer-import-ssxi _ctx19621_)))
                          (let ((_val19638_
                                 (let ((_$e19635_ _mod19633_))
                                   (if _$e19635_ _$e19635_ '#!void))))
                            (let ()
                              (begin
                                (table-set! _ht19623_ _id19625_ _val19638_)
                                _val19638_)))))))))))))
  (define gxc#optimizer-import-ssxi
    (lambda (_ctx19598_)
      (let ((_catch-e19600_
             (lambda (_exn19619_)
               (begin
                 (if (gxc#current-compile-verbose)
                     (begin
                       (displayln
                        '"Failed to load ssxi module for "
                        (##structure-ref
                         _ctx19598_
                         '1
                         gx#expander-context::t
                         '#f))
                       (display-exception _exn19619_))
                     '#!void)
                 '#f))))
        (let ((_import-e19601_
               (lambda ()
                 (let ((_str-id19604_
                        (string-append
                         (symbol->string
                          (##structure-ref
                           _ctx19598_
                           '1
                           gx#expander-context::t
                           '#f))
                         '".ssxi")))
                   (let ((_artefact-path19612_
                          (let ((_odir1960519607_
                                 (gxc#current-compile-output-dir)))
                            (if _odir1960519607_
                                (let ((_odir19610_ _odir1960519607_))
                                  (path-expand
                                   (string-append _str-id19604_ '".ss")
                                   _odir19610_))
                                '#f))))
                     (let ((_library-path19614_
                            (string->symbol
                             (string-append '":" _str-id19604_))))
                       (let ((_ssxi-path19616_
                              (if (if _artefact-path19612_
                                      (file-exists? _artefact-path19612_)
                                      '#f)
                                  _artefact-path19612_
                                  _library-path19614_)))
                         (let ()
                           (begin
                             (gxc#verbose
                              '"Loading ssxi module "
                              _ssxi-path19616_)
                             (gx#import-module__opt-lambda11392
                              _ssxi-path19616_
                              '#t
                              '#t))))))))))
          (if (##structure-ref _ctx19598_ '1 gx#expander-context::t '#f)
              (with-exception-catcher _catch-e19600_ _import-e19601_)
              '#f)))))
  (define gxc#!type::t (make-struct-type 'gxc#!type::t '#f '1 '!type '() '#f))
  (define gxc#!type? (make-struct-predicate gxc#!type::t))
  (define gxc#make-!type
    (lambda _$args19595_
      (apply make-struct-instance gxc#!type::t _$args19595_)))
  (define gxc#!type-id (make-struct-field-accessor gxc#!type::t '0))
  (define gxc#!type-id-set! (make-struct-field-mutator gxc#!type::t '0))
  (define gxc#!alias::t
    (make-struct-type 'gxc#!alias::t gxc#!type::t '0 '!alias '() '#f))
  (define gxc#!alias? (make-struct-predicate gxc#!alias::t))
  (define gxc#make-!alias
    (lambda _$args19592_
      (apply make-struct-instance gxc#!alias::t _$args19592_)))
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
    (lambda _$args19589_
      (apply make-struct-instance gxc#!struct-type::t _$args19589_)))
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
    (lambda _$args19586_
      (apply make-struct-instance gxc#!procedure::t _$args19586_)))
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
    (lambda _$args19583_
      (apply make-struct-instance gxc#!struct-pred::t _$args19583_)))
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
    (lambda _$args19580_
      (apply make-struct-instance gxc#!struct-cons::t _$args19580_)))
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
    (lambda _$args19577_
      (apply make-struct-instance gxc#!struct-getf::t _$args19577_)))
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
    (lambda _$args19574_
      (apply make-struct-instance gxc#!struct-setf::t _$args19574_)))
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
    (lambda _$args19571_
      (apply make-struct-instance gxc#!lambda::t _$args19571_)))
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
    (lambda _$args19568_
      (apply make-struct-instance gxc#!case-lambda::t _$args19568_)))
  (define gxc#!case-lambda-clauses
    (make-struct-field-accessor gxc#!case-lambda::t '0))
  (define gxc#!case-lambda-clauses-set!
    (make-struct-field-mutator gxc#!case-lambda::t '0))
  (define gxc#!struct-type:::init!
    (lambda (_self19560_
             _id19561_
             _super19562_
             _fields19563_
             _xfields19564_
             _ctor19565_
             _plist19566_)
      (struct-instance-init!
       _self19560_
       _id19561_
       _super19562_
       _fields19563_
       _xfields19564_
       _ctor19565_
       _plist19566_
       '#f)))
  (bind-method! gxc#!struct-type::t ':init! gxc#!struct-type:::init! '#f)
  (begin
    (define gxc#!lambda:::init!__opt-lambda19524
      (lambda (_self19526_
               _id19527_
               _arity19528_
               _dispatch19529_
               _inline19530_
               _typedecl19531_)
        (struct-instance-init!
         _self19526_
         _id19527_
         _arity19528_
         _dispatch19529_
         _inline19530_
         _typedecl19531_)))
    (begin
      (define gxc#!lambda:::init!__0
        (lambda (_self19536_ _id19537_ _arity19538_ _dispatch19539_)
          (let ((_inline19541_ '#f))
            (let ((_typedecl19543_ '#f))
              (struct-instance-init!
               _self19536_
               _id19537_
               _arity19538_
               _dispatch19539_
               _inline19541_
               _typedecl19543_)))))
      (define gxc#!lambda:::init!__1
        (lambda (_self19545_
                 _id19546_
                 _arity19547_
                 _dispatch19548_
                 _inline19549_)
          (let ((_typedecl19551_ '#f))
            (struct-instance-init!
             _self19545_
             _id19546_
             _arity19547_
             _dispatch19548_
             _inline19549_
             _typedecl19551_))))
      (define gxc#!lambda:::init!
        (lambda _g19724_
          (let ((_g19723_ (length _g19724_)))
            (cond ((fx= _g19723_ 4) (apply gxc#!lambda:::init!__0 _g19724_))
                  ((fx= _g19723_ 5) (apply gxc#!lambda:::init!__1 _g19724_))
                  ((fx= _g19723_ 6) (apply struct-instance-init! _g19724_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#!lambda:::init!
                    _g19724_))))))))
  (bind-method! gxc#!lambda::t ':init! gxc#!lambda:::init! '#f)
  (define gxc#!struct-type-vtab
    (lambda (_type19518_)
      (let ((_$e19520_
             (##structure-ref _type19518_ '7 gxc#!struct-type::t '#f)))
        (if _$e19520_
            (values _$e19520_)
            (let ((_vtab19523_ (make-hash-table-eq)))
              (begin
                (##structure-set!
                 _type19518_
                 _vtab19523_
                 '7
                 gxc#!struct-type::t
                 '#f)
                _vtab19523_))))))
  (define gxc#!struct-type-lookup-method
    (lambda (_type19509_ _method19510_)
      (let ((_vtab1951119513_
             (##structure-ref _type19509_ '7 gxc#!struct-type::t '#f)))
        (if _vtab1951119513_
            (let ((_vtab19516_ _vtab1951119513_))
              (table-ref _vtab19516_ _method19510_ '#f))
            '#f))))
  (begin
    (define gxc#optimizer-declare-type!__opt-lambda19491
      (lambda (_sym19493_ _type19494_ _local?19495_)
        (begin
          (if (##structure-instance-of? _type19494_ 'gxc#!type::t)
              '#!void
              (error '"bad declaration: expected !type"
                     _sym19493_
                     _type19494_))
          (gxc#verbose
           '"declare-type "
           _sym19493_
           '" "
           (##vector->list _type19494_))
          (table-set!
           (if _local?19495_
               (gxc#current-compile-local-type)
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '1
                gxc#optimizer-info::t
                '#f))
           _sym19493_
           _type19494_))))
    (begin
      (define gxc#optimizer-declare-type!__0
        (lambda (_sym19500_ _type19501_)
          (let ((_local?19503_ '#f))
            (gxc#optimizer-declare-type!__opt-lambda19491
             _sym19500_
             _type19501_
             _local?19503_))))
      (define gxc#optimizer-declare-type!
        (lambda _g19726_
          (let ((_g19725_ (length _g19726_)))
            (cond ((fx= _g19725_ 2)
                   (apply gxc#optimizer-declare-type!__0 _g19726_))
                  ((fx= _g19725_ 3)
                   (apply gxc#optimizer-declare-type!__opt-lambda19491
                          _g19726_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#optimizer-declare-type!
                    _g19726_))))))))
  (begin
    (define gxc#optimizer-declare-method!__opt-lambda19467
      (lambda (_type-t19469_ _method19470_ _sym19471_ _rebind?19472_)
        (let ((_type19474_ (gxc#optimizer-resolve-type _type-t19469_)))
          (if (##structure-instance-of? _type19474_ 'gxc#!struct-type::t)
              (let ((_vtab19476_ (gxc#!struct-type-vtab _type19474_)))
                (if _rebind?19472_
                    (if (hash-key? _vtab19476_ _method19470_)
                        (gxc#verbose
                         '"declare-method: [warning] skip rebind on existing method"
                         _type-t19469_
                         '" "
                         _method19470_)
                        (gxc#verbose
                         '"declare-method: skip rebind method "
                         _type-t19469_
                         '" "
                         _method19470_))
                    (if (hash-key? _vtab19476_ _method19470_)
                        (error '"declare-method: duplicate method declaration")
                        (begin
                          (gxc#verbose
                           '"declare-method "
                           _type-t19469_
                           '" "
                           _method19470_
                           '" => "
                           _sym19471_)
                          (table-set! _vtab19476_ _method19470_ _sym19471_)))))
              (if (not _type19474_)
                  (gxc#verbose '"declare-method: unknown type " _type-t19469_)
                  (error '"declare-method: bad method declaration; no method table"
                         _type-t19469_
                         _type19474_))))))
    (begin
      (define gxc#optimizer-declare-method!__0
        (lambda (_type-t19481_ _method19482_ _sym19483_)
          (let ((_rebind?19485_ '#f))
            (gxc#optimizer-declare-method!__opt-lambda19467
             _type-t19481_
             _method19482_
             _sym19483_
             _rebind?19485_))))
      (define gxc#optimizer-declare-method!
        (lambda _g19728_
          (let ((_g19727_ (length _g19728_)))
            (cond ((fx= _g19727_ 3)
                   (apply gxc#optimizer-declare-method!__0 _g19728_))
                  ((fx= _g19727_ 4)
                   (apply gxc#optimizer-declare-method!__opt-lambda19467
                          _g19728_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#optimizer-declare-method!
                    _g19728_))))))))
  (define gxc#optimizer-lookup-type
    (lambda (_sym19457_)
      (let ((_$e19465_
             (let ((_ht1945819460_ (gxc#current-compile-local-type)))
               (if _ht1945819460_
                   (let ((_ht19463_ _ht1945819460_))
                     (table-ref _ht19463_ _sym19457_ '#f))
                   '#f))))
        (if _$e19465_
            _$e19465_
            (table-ref
             (##structure-ref
              (gxc#current-compile-optimizer-info)
              '1
              gxc#optimizer-info::t
              '#f)
             _sym19457_
             '#f)))))
  (define gxc#optimizer-resolve-type
    (lambda (_sym19449_)
      (let ((_type1945019452_ (gxc#optimizer-lookup-type _sym19449_)))
        (if _type1945019452_
            (let ((_type19455_ _type1945019452_))
              (if (##structure-instance-of? _type19455_ 'gxc#!alias::t)
                  (gxc#optimizer-resolve-type
                   (##structure-ref _type19455_ '1 gxc#!type::t '#f))
                  _type19455_))
            '#f))))
  (define gxc#optimizer-lookup-method
    (lambda (_type-t19444_ _method19445_)
      (let ((_type19447_ (gxc#optimizer-resolve-type _type-t19444_)))
        (if (##structure-instance-of? _type19447_ 'gxc#!struct-type::t)
            (gxc#!struct-type-lookup-method _type19447_ _method19445_)
            '#f))))
  (define gxc#optimize-source
    (lambda (_stx19440_)
      (begin
        (gxc#apply-collect-mutators _stx19440_)
        (let ((_stx19442_ (gxc#apply-lift-top-lambdas _stx19440_)))
          (begin
            (gxc#apply-collect-type-info _stx19442_)
            (gxc#apply-optimize-call _stx19442_))))))
  (define gxc#&identity-expression
    (make-promise
     (lambda ()
       (let ((_tbl19437_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl19437_ '%#lambda gxc#xform-identity)
           (table-set! _tbl19437_ '%#case-lambda gxc#xform-identity)
           (table-set! _tbl19437_ '%#let-values gxc#xform-identity)
           (table-set! _tbl19437_ '%#letrec-values gxc#xform-identity)
           (table-set! _tbl19437_ '%#letrec*-values gxc#xform-identity)
           (table-set! _tbl19437_ '%#quote gxc#xform-identity)
           (table-set! _tbl19437_ '%#quote-syntax gxc#xform-identity)
           (table-set! _tbl19437_ '%#call gxc#xform-identity)
           (table-set! _tbl19437_ '%#if gxc#xform-identity)
           (table-set! _tbl19437_ '%#ref gxc#xform-identity)
           (table-set! _tbl19437_ '%#set! gxc#xform-identity)
           (table-set! _tbl19437_ '%#struct-instance? gxc#xform-identity)
           (table-set!
            _tbl19437_
            '%#struct-direct-instance?
            gxc#xform-identity)
           (table-set! _tbl19437_ '%#struct-ref gxc#xform-identity)
           (table-set! _tbl19437_ '%#struct-set! gxc#xform-identity)
           (table-set! _tbl19437_ '%#struct-direct-ref gxc#xform-identity)
           (table-set! _tbl19437_ '%#struct-direct-set! gxc#xform-identity)
           _tbl19437_)))))
  (define gxc#&identity-special-form
    (make-promise
     (lambda ()
       (let ((_tbl19433_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl19433_ '%#begin gxc#xform-identity)
           (table-set! _tbl19433_ '%#begin-syntax gxc#xform-identity)
           (table-set! _tbl19433_ '%#begin-foreign gxc#xform-identity)
           (table-set! _tbl19433_ '%#module gxc#xform-identity)
           (table-set! _tbl19433_ '%#import gxc#xform-identity)
           (table-set! _tbl19433_ '%#export gxc#xform-identity)
           (table-set! _tbl19433_ '%#provide gxc#xform-identity)
           (table-set! _tbl19433_ '%#extern gxc#xform-identity)
           (table-set! _tbl19433_ '%#define-values gxc#xform-identity)
           (table-set! _tbl19433_ '%#define-syntax gxc#xform-identity)
           (table-set! _tbl19433_ '%#define-alias gxc#xform-identity)
           (table-set! _tbl19433_ '%#declare gxc#xform-identity)
           _tbl19433_)))))
  (define gxc#&identity
    (make-promise
     (lambda ()
       (let ((_tbl19429_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl19429_ (force gxc#&identity-special-form))
           (hash-copy! _tbl19429_ (force gxc#&identity-expression))
           _tbl19429_)))))
  (define gxc#&basic-xform-expression
    (make-promise
     (lambda ()
       (let ((_tbl19425_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl19425_ '%#lambda gxc#xform-lambda%)
           (table-set! _tbl19425_ '%#case-lambda gxc#xform-case-lambda%)
           (table-set! _tbl19425_ '%#let-values gxc#xform-let-values%)
           (table-set! _tbl19425_ '%#letrec-values gxc#xform-let-values%)
           (table-set! _tbl19425_ '%#letrec*-values gxc#xform-let-values%)
           (table-set! _tbl19425_ '%#quote gxc#xform-identity)
           (table-set! _tbl19425_ '%#quote-syntax gxc#xform-identity)
           (table-set! _tbl19425_ '%#call gxc#xform-operands)
           (table-set! _tbl19425_ '%#if gxc#xform-operands)
           (table-set! _tbl19425_ '%#ref gxc#xform-identity)
           (table-set! _tbl19425_ '%#set! gxc#xform-setq%)
           (table-set! _tbl19425_ '%#struct-instance? gxc#xform-operands)
           (table-set!
            _tbl19425_
            '%#struct-direct-instance?
            gxc#xform-operands)
           (table-set! _tbl19425_ '%#struct-ref gxc#xform-operands)
           (table-set! _tbl19425_ '%#struct-set! gxc#xform-operands)
           (table-set! _tbl19425_ '%#struct-direct-ref gxc#xform-operands)
           (table-set! _tbl19425_ '%#struct-direct-set! gxc#xform-operands)
           _tbl19425_)))))
  (define gxc#&basic-xform
    (make-promise
     (lambda ()
       (let ((_tbl19421_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl19421_ (force gxc#&basic-xform-expression))
           (hash-copy! _tbl19421_ (force gxc#&identity))
           (table-set! _tbl19421_ '%#begin gxc#xform-begin%)
           (table-set! _tbl19421_ '%#module gxc#xform-module%)
           (table-set! _tbl19421_ '%#define-values gxc#xform-define-values%)
           _tbl19421_)))))
  (define gxc#&collect-mutators
    (make-promise
     (lambda ()
       (let ((_tbl19417_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl19417_ (force gxc#&void))
           (table-set! _tbl19417_ '%#begin gxc#collect-begin%)
           (table-set! _tbl19417_ '%#module gxc#collect-module%)
           (table-set! _tbl19417_ '%#lambda gxc#collect-body-lambda%)
           (table-set! _tbl19417_ '%#case-lambda gxc#collect-body-case-lambda%)
           (table-set! _tbl19417_ '%#let-values gxc#collect-body-let-values%)
           (table-set!
            _tbl19417_
            '%#letrec-values
            gxc#collect-body-let-values%)
           (table-set!
            _tbl19417_
            '%#letrec*-values
            gxc#collect-body-let-values%)
           (table-set! _tbl19417_ '%#call gxc#collect-operands)
           (table-set! _tbl19417_ '%#if gxc#collect-operands)
           (table-set! _tbl19417_ '%#set! gxc#collect-mutators-setq%)
           (table-set! _tbl19417_ '%#struct-instance? gxc#collect-operands)
           (table-set!
            _tbl19417_
            '%#struct-direct-instance?
            gxc#collect-operands)
           (table-set! _tbl19417_ '%#struct-ref gxc#collect-operands)
           (table-set! _tbl19417_ '%#struct-set! gxc#collect-operands)
           (table-set! _tbl19417_ '%#struct-direct-ref gxc#collect-operands)
           (table-set! _tbl19417_ '%#struct-direct-set! gxc#collect-operands)
           _tbl19417_)))))
  (define gxc#apply-collect-mutators
    (lambda (_stx19410_ . _args19412_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx19410_ _args19412_))
       gxc#current-compile-methods
       (force gxc#&collect-mutators))))
  (define gxc#&lift-top-lambdas
    (make-promise
     (lambda ()
       (let ((_tbl19407_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl19407_ (force gxc#&basic-xform))
           (table-set!
            _tbl19407_
            '%#define-values
            gxc#lift-top-lambda-define-values%)
           (table-set!
            _tbl19407_
            '%#let-values
            gxc#lift-top-lambda-let-values%)
           (table-set!
            _tbl19407_
            '%#letrec-values
            gxc#lift-top-lambda-letrec-values%)
           (table-set!
            _tbl19407_
            '%#letrec*-values
            gxc#lift-top-lambda-letrec-values%)
           _tbl19407_)))))
  (define gxc#apply-lift-top-lambdas
    (lambda (_stx19400_ . _args19402_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx19400_ _args19402_))
       gxc#current-compile-methods
       (force gxc#&lift-top-lambdas))))
  (define gxc#&expression-subst
    (make-promise
     (lambda ()
       (let ((_tbl19397_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl19397_ (force gxc#&basic-xform-expression))
           (table-set! _tbl19397_ '%#begin gxc#xform-begin%)
           (table-set! _tbl19397_ '%#ref gxc#expression-subst-ref%)
           _tbl19397_)))))
  (define gxc#apply-expression-subst
    (lambda (_stx19390_ . _args19392_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx19390_ _args19392_))
       gxc#current-compile-methods
       (force gxc#&expression-subst))))
  (define gxc#&collect-type-info
    (make-promise
     (lambda ()
       (let ((_tbl19387_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl19387_ (force gxc#&void))
           (table-set! _tbl19387_ '%#begin gxc#collect-begin%)
           (table-set! _tbl19387_ '%#module gxc#collect-module%)
           (table-set!
            _tbl19387_
            '%#define-values
            gxc#collect-type-define-values%)
           (table-set! _tbl19387_ '%#lambda gxc#collect-body-lambda%)
           (table-set! _tbl19387_ '%#case-lambda gxc#collect-body-case-lambda%)
           (table-set! _tbl19387_ '%#let-values gxc#collect-type-let-values%)
           (table-set!
            _tbl19387_
            '%#letrec-values
            gxc#collect-type-let-values%)
           (table-set!
            _tbl19387_
            '%#letrec*-values
            gxc#collect-type-let-values%)
           (table-set! _tbl19387_ '%#call gxc#collect-type-call%)
           (table-set! _tbl19387_ '%#if gxc#collect-operands)
           (table-set! _tbl19387_ '%#set! gxc#collect-body-setq%)
           _tbl19387_)))))
  (define gxc#apply-collect-type-info
    (lambda (_stx19380_ . _args19382_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx19380_ _args19382_))
       gxc#current-compile-methods
       (force gxc#&collect-type-info))))
  (define gxc#&basic-expression-type
    (make-promise
     (lambda ()
       (let ((_tbl19377_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl19377_ (force gxc#&false))
           (table-set! _tbl19377_ '%#begin gxc#basic-expression-type-begin%)
           (table-set! _tbl19377_ '%#lambda gxc#basic-expression-type-lambda%)
           (table-set!
            _tbl19377_
            '%#case-lambda
            gxc#basic-expression-type-case-lambda%)
           (table-set! _tbl19377_ '%#call gxc#basic-expression-type-call%)
           (table-set! _tbl19377_ '%#ref gxc#basic-expression-type-ref%)
           _tbl19377_)))))
  (define gxc#apply-basic-expression-type
    (lambda (_stx19370_ . _args19372_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx19370_ _args19372_))
       gxc#current-compile-methods
       (force gxc#&basic-expression-type))))
  (define gxc#&optimize-call
    (make-promise
     (lambda ()
       (let ((_tbl19367_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl19367_ (force gxc#&basic-xform))
           (table-set! _tbl19367_ '%#call gxc#optimize-call%)
           _tbl19367_)))))
  (define gxc#apply-optimize-call
    (lambda (_stx19360_ . _args19362_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx19360_ _args19362_))
       gxc#current-compile-methods
       (force gxc#&optimize-call))))
  (define gxc#&generate-ssxi
    (make-promise
     (lambda ()
       (let ((_tbl19357_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl19357_ (force gxc#&generate-runtime-empty))
           (table-set! _tbl19357_ '%#begin gxc#generate-runtime-begin%)
           (table-set! _tbl19357_ '%#module gxc#generate-ssxi-module%)
           (table-set!
            _tbl19357_
            '%#define-values
            gxc#generate-ssxi-define-values%)
           (table-set! _tbl19357_ '%#call gxc#generate-ssxi-call%)
           _tbl19357_)))))
  (define gxc#apply-generate-ssxi
    (lambda (_stx19350_ . _args19352_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx19350_ _args19352_))
       gxc#current-compile-methods
       (force gxc#&generate-ssxi))))
  (define gxc#xform-identity (lambda (_stx19347_ . _args19348_) _stx19347_))
  (define gxc#xform-wrap-source
    (lambda (_stx19344_ _src-stx19345_)
      (gx#stx-wrap-source _stx19344_ (gx#stx-source _src-stx19345_))))
  (define gxc#xform-apply-compile-e
    (lambda (_args19338_)
      (lambda (_g1933919341_)
        (apply gxc#compile-e _g1933919341_ _args19338_))))
  (define gxc#xform-begin%
    (lambda (_stx19297_ . _args19298_)
      (let ((_g1930019310_
             (lambda (_g1930119307_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1930119307_))))
        (let ((_g1929919335_
               (lambda (_g1930119313_)
                 (if (gx#stx-pair? _g1930119313_)
                     (let ((_e1930319315_ (gx#stx-e _g1930119313_)))
                       (let ((_hd1930419318_ (##car _e1930319315_))
                             (_tl1930519320_ (##cdr _e1930319315_)))
                         ((lambda (_L19323_)
                            (let ((_forms19333_
                                   (map (gxc#xform-apply-compile-e _args19298_)
                                        _L19323_)))
                              (gxc#xform-wrap-source
                               (cons '%#begin _forms19333_)
                               _stx19297_)))
                          _tl1930519320_)))
                     (_g1930019310_ _g1930119313_)))))
          (_g1929919335_ _stx19297_)))))
  (define gxc#xform-module%
    (lambda (_stx19234_ . _args19235_)
      (let ((_g1923719251_
             (lambda (_g1923819248_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1923819248_))))
        (let ((_g1923619294_
               (lambda (_g1923819254_)
                 (if (gx#stx-pair? _g1923819254_)
                     (let ((_e1924119256_ (gx#stx-e _g1923819254_)))
                       (let ((_hd1924219259_ (##car _e1924119256_))
                             (_tl1924319261_ (##cdr _e1924119256_)))
                         (if (gx#stx-pair? _tl1924319261_)
                             (let ((_e1924419264_ (gx#stx-e _tl1924319261_)))
                               (let ((_hd1924519267_ (##car _e1924419264_))
                                     (_tl1924619269_ (##cdr _e1924419264_)))
                                 ((lambda (_L19272_ _L19273_)
                                    (let ((_ctx19286_
                                           (gx#syntax-local-e__0 _L19273_)))
                                      (let ((_code19288_
                                             (##structure-ref
                                              _ctx19286_
                                              '11
                                              gx#module-context::t
                                              '#f)))
                                        (let ((_code19291_
                                               (call-with-parameters
                                                (lambda ()
                                                  (apply gxc#compile-e
                                                         _code19288_
                                                         _args19235_))
                                                gx#current-expander-context
                                                _ctx19286_)))
                                          (let ()
                                            (begin
                                              (##structure-set!
                                               _ctx19286_
                                               _code19291_
                                               '11
                                               gx#module-context::t
                                               '#f)
                                              (gxc#xform-wrap-source
                                               (cons '%#module
                                                     (cons _L19273_
                                                           (cons _code19291_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _stx19234_)))))))
                                  _tl1924619269_
                                  _hd1924519267_)))
                             (_g1923719251_ _g1923819254_))))
                     (_g1923719251_ _g1923819254_)))))
          (_g1923619294_ _stx19234_)))))
  (define gxc#xform-define-values%
    (lambda (_stx19164_ . _args19165_)
      (let ((_g1916719184_
             (lambda (_g1916819181_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1916819181_))))
        (let ((_g1916619231_
               (lambda (_g1916819187_)
                 (if (gx#stx-pair? _g1916819187_)
                     (let ((_e1917119189_ (gx#stx-e _g1916819187_)))
                       (let ((_hd1917219192_ (##car _e1917119189_))
                             (_tl1917319194_ (##cdr _e1917119189_)))
                         (if (gx#stx-pair? _tl1917319194_)
                             (let ((_e1917419197_ (gx#stx-e _tl1917319194_)))
                               (let ((_hd1917519200_ (##car _e1917419197_))
                                     (_tl1917619202_ (##cdr _e1917419197_)))
                                 (if (gx#stx-pair? _tl1917619202_)
                                     (let ((_e1917719205_
                                            (gx#stx-e _tl1917619202_)))
                                       (let ((_hd1917819208_
                                              (##car _e1917719205_))
                                             (_tl1917919210_
                                              (##cdr _e1917719205_)))
                                         (if (gx#stx-null? _tl1917919210_)
                                             ((lambda (_L19213_ _L19214_)
                                                (let ((_expr19229_
                                                       (apply gxc#compile-e
                                                              _L19213_
                                                              _args19165_)))
                                                  (gxc#xform-wrap-source
                                                   (cons '%#define-values
                                                         (cons _L19214_
                                                               (cons _expr19229_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _stx19164_)))
                                              _hd1917819208_
                                              _hd1917519200_)
                                             (_g1916719184_ _g1916819187_))))
                                     (_g1916719184_ _g1916819187_))))
                             (_g1916719184_ _g1916819187_))))
                     (_g1916719184_ _g1916819187_)))))
          (_g1916619231_ _stx19164_)))))
  (define gxc#xform-lambda%
    (lambda (_stx19107_ . _args19108_)
      (let ((_g1911019124_
             (lambda (_g1911119121_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1911119121_))))
        (let ((_g1910919161_
               (lambda (_g1911119127_)
                 (if (gx#stx-pair? _g1911119127_)
                     (let ((_e1911419129_ (gx#stx-e _g1911119127_)))
                       (let ((_hd1911519132_ (##car _e1911419129_))
                             (_tl1911619134_ (##cdr _e1911419129_)))
                         (if (gx#stx-pair? _tl1911619134_)
                             (let ((_e1911719137_ (gx#stx-e _tl1911619134_)))
                               (let ((_hd1911819140_ (##car _e1911719137_))
                                     (_tl1911919142_ (##cdr _e1911719137_)))
                                 ((lambda (_L19145_ _L19146_)
                                    (let ((_body19159_
                                           (map (gxc#xform-apply-compile-e
                                                 _args19108_)
                                                _L19145_)))
                                      (gxc#xform-wrap-source
                                       (cons '%#lambda
                                             (cons _L19146_ _body19159_))
                                       _stx19107_)))
                                  _tl1911919142_
                                  _hd1911819140_)))
                             (_g1911019124_ _g1911119127_))))
                     (_g1911019124_ _g1911119127_)))))
          (_g1910919161_ _stx19107_)))))
  (define gxc#xform-case-lambda%
    (lambda (_stx19020_ . _args19021_)
      (let ((_clause-e19023_
             (lambda (_clause19064_)
               (let ((_g1906619077_
                      (lambda (_g1906719074_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax"
                         _g1906719074_))))
                 (let ((_g1906519104_
                        (lambda (_g1906719080_)
                          (if (gx#stx-pair? _g1906719080_)
                              (let ((_e1907019082_ (gx#stx-e _g1906719080_)))
                                (let ((_hd1907119085_ (##car _e1907019082_))
                                      (_tl1907219087_ (##cdr _e1907019082_)))
                                  ((lambda (_L19090_ _L19091_)
                                     (let ((_body19102_
                                            (map (gxc#xform-apply-compile-e
                                                  _args19021_)
                                                 _L19090_)))
                                       (cons _L19091_ _body19102_)))
                                   _tl1907219087_
                                   _hd1907119085_)))
                              (_g1906619077_ _g1906719080_)))))
                   (_g1906519104_ _clause19064_))))))
        (let ((_g1902519035_
               (lambda (_g1902619032_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1902619032_))))
          (let ((_g1902419061_
                 (lambda (_g1902619038_)
                   (if (gx#stx-pair? _g1902619038_)
                       (let ((_e1902819040_ (gx#stx-e _g1902619038_)))
                         (let ((_hd1902919043_ (##car _e1902819040_))
                               (_tl1903019045_ (##cdr _e1902819040_)))
                           ((lambda (_L19048_)
                              (let ((_clauses19059_
                                     (map _clause-e19023_ _L19048_)))
                                (gxc#xform-wrap-source
                                 (cons '%#case-lambda _clauses19059_)
                                 _stx19020_)))
                            _tl1903019045_)))
                       (_g1902519035_ _g1902619038_)))))
            (_g1902419061_ _stx19020_))))))
  (define gxc#xform-let-values%
    (lambda (_stx18814_ . _args18815_)
      (let ((_g1881718850_
             (lambda (_g1881818847_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1881818847_))))
        (let ((_g1881619017_
               (lambda (_g1881818853_)
                 (if (gx#stx-pair? _g1881818853_)
                     (let ((_e1882318855_ (gx#stx-e _g1881818853_)))
                       (let ((_hd1882418858_ (##car _e1882318855_))
                             (_tl1882518860_ (##cdr _e1882318855_)))
                         (if (gx#stx-pair? _tl1882518860_)
                             (let ((_e1882618863_ (gx#stx-e _tl1882518860_)))
                               (let ((_hd1882718866_ (##car _e1882618863_))
                                     (_tl1882818868_ (##cdr _e1882618863_)))
                                 (if (gx#stx-pair/null? _hd1882718866_)
                                     (if (fx>= (gx#stx-length _hd1882718866_)
                                               '0)
                                         (let ((_g19729_
                                                (gx#syntax-split-splice
                                                 _hd1882718866_
                                                 '0)))
                                           (begin
                                             (let ((_g19730_
                                                    (values-count _g19729_)))
                                               (if (not (fx= _g19730_ 2))
                                                   (error "Context expects 2 values"
                                                          _g19730_)))
                                             (let ((_target1882918871_
                                                    (values-ref _g19729_ 0))
                                                   (_tl1883118873_
                                                    (values-ref _g19729_ 1)))
                                               (if (gx#stx-null?
                                                    _tl1883118873_)
                                                   (letrec ((_loop1883218876_
                                                             (lambda (_hd1883018879_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _expr1883618881_
                              _hd1883718883_)
                       (if (gx#stx-pair? _hd1883018879_)
                           (let ((_e1883318886_ (gx#stx-e _hd1883018879_)))
                             (let ((_lp-hd1883418889_ (##car _e1883318886_))
                                   (_lp-tl1883518891_ (##cdr _e1883318886_)))
                               (if (gx#stx-pair? _lp-hd1883418889_)
                                   (let ((_e1884018894_
                                          (gx#stx-e _lp-hd1883418889_)))
                                     (let ((_hd1884118897_
                                            (##car _e1884018894_))
                                           (_tl1884218899_
                                            (##cdr _e1884018894_)))
                                       (if (gx#stx-pair? _tl1884218899_)
                                           (let ((_e1884318902_
                                                  (gx#stx-e _tl1884218899_)))
                                             (let ((_hd1884418905_
                                                    (##car _e1884318902_))
                                                   (_tl1884518907_
                                                    (##cdr _e1884318902_)))
                                               (if (gx#stx-null?
                                                    _tl1884518907_)
                                                   (_loop1883218876_
                                                    _lp-tl1883518891_
                                                    (cons _hd1884418905_
                                                          _expr1883618881_)
                                                    (cons _hd1884118897_
                                                          _hd1883718883_))
                                                   (_g1881718850_
                                                    _g1881818853_))))
                                           (_g1881718850_ _g1881818853_))))
                                   (_g1881718850_ _g1881818853_))))
                           (let ((_expr1883818910_ (reverse _expr1883618881_))
                                 (_hd1883918912_ (reverse _hd1883718883_)))
                             ((lambda (_L18915_ _L18916_ _L18917_ _L18918_)
                                (let ((_g1893718953_
                                       (lambda (_g1893818950_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g1893818950_))))
                                  (let ((_g1893619007_
                                         (lambda (_g1893818956_)
                                           (if (gx#stx-pair/null?
                                                _g1893818956_)
                                               (if (fx>= (gx#stx-length
                                                          _g1893818956_)
                                                         '0)
                                                   (let ((_g19731_
                                                          (gx#syntax-split-splice
                                                           _g1893818956_
                                                           '0)))
                                                     (begin
                                                       (let ((_g19732_
                                                              (values-count
                                                               _g19731_)))
                                                         (if (not (fx= _g19732_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g19732_)))
               (let ((_target1894018958_ (values-ref _g19731_ 0))
                     (_tl1894218960_ (values-ref _g19731_ 1)))
                 (if (gx#stx-null? _tl1894218960_)
                     (letrec ((_loop1894318963_
                               (lambda (_hd1894118966_ _expr1894718968_)
                                 (if (gx#stx-pair? _hd1894118966_)
                                     (let ((_e1894418971_
                                            (gx#syntax-e _hd1894118966_)))
                                       (let ((_lp-hd1894518974_
                                              (##car _e1894418971_))
                                             (_lp-tl1894618976_
                                              (##cdr _e1894418971_)))
                                         (_loop1894318963_
                                          _lp-tl1894618976_
                                          (cons _lp-hd1894518974_
                                                _expr1894718968_))))
                                     (let ((_expr1894818979_
                                            (reverse _expr1894718968_)))
                                       ((lambda (_L18982_)
                                          (let ()
                                            (let ((_body18995_
                                                   (map (gxc#xform-apply-compile-e
                                                         _args18815_)
                                                        _L18915_)))
                                              (gxc#xform-wrap-source
                                               (cons _L18918_
                                                     (cons (begin
                                                             (gx#syntax-check-splice-targets
                                                              _L18982_
                                                              _L18917_)
                                                             (foldr (lambda (_g1899619000_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g1899719002_
                                     _g1899819004_)
                              (cons (cons _g1899719002_
                                          (cons _g1899619000_ '()))
                                    _g1899819004_))
                            '()
                            _L18982_
                            _L18917_))
                   _body18995_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _stx18814_))))
                                        _expr1894818979_))))))
                       (_loop1894318963_ _target1894018958_ '()))
                     (_g1893718953_ _g1893818956_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1893718953_
                                                    _g1893818956_))
                                               (_g1893718953_
                                                _g1893818956_)))))
                                    (_g1893619007_
                                     (map (gxc#xform-apply-compile-e
                                           _args18815_)
                                          (begin
                                            '#!void
                                            (foldr1 (lambda (_g1900919012_
                                                             _g1901019014_)
                                                      (cons _g1900919012_
                                                            _g1901019014_))
                                                    '()
                                                    _L18916_)))))))
                              _tl1882818868_
                              _expr1883818910_
                              _hd1883918912_
                              _hd1882418858_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop1883218876_
                                                      _target1882918871_
                                                      '()
                                                      '()))
                                                   (_g1881718850_
                                                    _g1881818853_)))))
                                         (_g1881718850_ _g1881818853_))
                                     (_g1881718850_ _g1881818853_))))
                             (_g1881718850_ _g1881818853_))))
                     (_g1881718850_ _g1881818853_)))))
          (_g1881619017_ _stx18814_)))))
  (define gxc#xform-operands
    (lambda (_stx18770_ . _args18771_)
      (let ((_g1877318784_
             (lambda (_g1877418781_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1877418781_))))
        (let ((_g1877218811_
               (lambda (_g1877418787_)
                 (if (gx#stx-pair? _g1877418787_)
                     (let ((_e1877718789_ (gx#stx-e _g1877418787_)))
                       (let ((_hd1877818792_ (##car _e1877718789_))
                             (_tl1877918794_ (##cdr _e1877718789_)))
                         ((lambda (_L18797_ _L18798_)
                            (let ((_rands18809_
                                   (map (gxc#xform-apply-compile-e _args18771_)
                                        _L18797_)))
                              (gxc#xform-wrap-source
                               (cons _L18798_ _rands18809_)
                               _stx18770_)))
                          _tl1877918794_
                          _hd1877818792_)))
                     (_g1877318784_ _g1877418787_)))))
          (_g1877218811_ _stx18770_)))))
  (define gxc#xform-call% gxc#xform-operands)
  (define gxc#xform-setq%
    (lambda (_stx18700_ . _args18701_)
      (let ((_g1870318720_
             (lambda (_g1870418717_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1870418717_))))
        (let ((_g1870218767_
               (lambda (_g1870418723_)
                 (if (gx#stx-pair? _g1870418723_)
                     (let ((_e1870718725_ (gx#stx-e _g1870418723_)))
                       (let ((_hd1870818728_ (##car _e1870718725_))
                             (_tl1870918730_ (##cdr _e1870718725_)))
                         (if (gx#stx-pair? _tl1870918730_)
                             (let ((_e1871018733_ (gx#stx-e _tl1870918730_)))
                               (let ((_hd1871118736_ (##car _e1871018733_))
                                     (_tl1871218738_ (##cdr _e1871018733_)))
                                 (if (gx#stx-pair? _tl1871218738_)
                                     (let ((_e1871318741_
                                            (gx#stx-e _tl1871218738_)))
                                       (let ((_hd1871418744_
                                              (##car _e1871318741_))
                                             (_tl1871518746_
                                              (##cdr _e1871318741_)))
                                         (if (gx#stx-null? _tl1871518746_)
                                             ((lambda (_L18749_ _L18750_)
                                                (let ((_expr18765_
                                                       (apply gxc#compile-e
                                                              _L18749_
                                                              _args18701_)))
                                                  (gxc#xform-wrap-source
                                                   (cons '%#set!
                                                         (cons _L18750_
                                                               (cons _expr18765_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _stx18700_)))
                                              _hd1871418744_
                                              _hd1871118736_)
                                             (_g1870318720_ _g1870418723_))))
                                     (_g1870318720_ _g1870418723_))))
                             (_g1870318720_ _g1870418723_))))
                     (_g1870318720_ _g1870418723_)))))
          (_g1870218767_ _stx18700_)))))
  (define gxc#collect-mutators-setq%
    (lambda (_stx18631_)
      (let ((_g1863318650_
             (lambda (_g1863418647_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1863418647_))))
        (let ((_g1863218697_
               (lambda (_g1863418653_)
                 (if (gx#stx-pair? _g1863418653_)
                     (let ((_e1863718655_ (gx#stx-e _g1863418653_)))
                       (let ((_hd1863818658_ (##car _e1863718655_))
                             (_tl1863918660_ (##cdr _e1863718655_)))
                         (if (gx#stx-pair? _tl1863918660_)
                             (let ((_e1864018663_ (gx#stx-e _tl1863918660_)))
                               (let ((_hd1864118666_ (##car _e1864018663_))
                                     (_tl1864218668_ (##cdr _e1864018663_)))
                                 (if (gx#stx-pair? _tl1864218668_)
                                     (let ((_e1864318671_
                                            (gx#stx-e _tl1864218668_)))
                                       (let ((_hd1864418674_
                                              (##car _e1864318671_))
                                             (_tl1864518676_
                                              (##cdr _e1864318671_)))
                                         (if (gx#stx-null? _tl1864518676_)
                                             ((lambda (_L18679_ _L18680_)
                                                (let ((_sym18695_
                                                       (gxc#generate-runtime-binding-id
                                                        _L18680_)))
                                                  (begin
                                                    (gxc#verbose
                                                     '"collect mutator "
                                                     _sym18695_)
                                                    (table-set!
                                                     (gxc#current-compile-mutators)
                                                     _sym18695_
                                                     '#t)
                                                    (gxc#compile-e _L18679_))))
                                              _hd1864418674_
                                              _hd1864118666_)
                                             (_g1863318650_ _g1863418653_))))
                                     (_g1863318650_ _g1863418653_))))
                             (_g1863318650_ _g1863418653_))))
                     (_g1863318650_ _g1863418653_)))))
          (_g1863218697_ _stx18631_)))))
  (define gxc#dispatch-lambda-form?
    (lambda (_form17865_)
      (let ((_g1787018027_
             (lambda (_g1787118024_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1787118024_))))
        (let ((_g1786918034_ (lambda (_g1787118030_) ((lambda () '#f)))))
          (let ((_g1786818174_
                 (lambda (_g1787118037_)
                   (if (gx#stx-pair? _g1787118037_)
                       (let ((_e1798718039_ (gx#stx-e _g1787118037_)))
                         (let ((_hd1798818042_ (##car _e1798718039_))
                               (_tl1798918044_ (##cdr _e1798718039_)))
                           (if (gx#stx-pair? _tl1798918044_)
                               (let ((_e1799018047_ (gx#stx-e _tl1798918044_)))
                                 (let ((_hd1799118050_ (##car _e1799018047_))
                                       (_tl1799218052_ (##cdr _e1799018047_)))
                                   (if (gx#stx-pair? _hd1799118050_)
                                       (let ((_e1799318055_
                                              (gx#stx-e _hd1799118050_)))
                                         (let ((_hd1799418058_
                                                (##car _e1799318055_))
                                               (_tl1799518060_
                                                (##cdr _e1799318055_)))
                                           (if (gx#identifier? _hd1799418058_)
                                               (if (gx#stx-eq?
                                                    '%#call
                                                    _hd1799418058_)
                                                   (if (gx#stx-pair?
                                                        _tl1799518060_)
                                                       (let ((_e1799618063_
                                                              (gx#stx-e
                                                               _tl1799518060_)))
                                                         (let ((_hd1799718066_
                                                                (##car _e1799618063_))
                                                               (_tl1799818068_
                                                                (##cdr _e1799618063_)))
                                                           (if (gx#stx-pair?
                                                                _hd1799718066_)
                                                               (let ((_e1799918071_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd1799718066_)))
                         (let ((_hd1800018074_ (##car _e1799918071_))
                               (_tl1800118076_ (##cdr _e1799918071_)))
                           (if (gx#identifier? _hd1800018074_)
                               (if (gx#stx-eq? '%#ref _hd1800018074_)
                                   (if (gx#stx-pair? _tl1800118076_)
                                       (let ((_e1800218079_
                                              (gx#stx-e _tl1800118076_)))
                                         (let ((_hd1800318082_
                                                (##car _e1800218079_))
                                               (_tl1800418084_
                                                (##cdr _e1800218079_)))
                                           (if (gx#stx-null? _tl1800418084_)
                                               (if (gx#stx-pair?
                                                    _tl1799818068_)
                                                   (let ((_e1800518087_
                                                          (gx#stx-e
                                                           _tl1799818068_)))
                                                     (let ((_hd1800618090_
                                                            (##car _e1800518087_))
                                                           (_tl1800718092_
                                                            (##cdr _e1800518087_)))
                                                       (if (gx#stx-pair?
                                                            _hd1800618090_)
                                                           (let ((_e1800818095_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd1800618090_)))
                     (let ((_hd1800918098_ (##car _e1800818095_))
                           (_tl1801018100_ (##cdr _e1800818095_)))
                       (if (gx#identifier? _hd1800918098_)
                           (if (gx#stx-eq? '%#ref _hd1800918098_)
                               (if (gx#stx-pair? _tl1801018100_)
                                   (let ((_e1801118103_
                                          (gx#stx-e _tl1801018100_)))
                                     (let ((_hd1801218106_
                                            (##car _e1801118103_))
                                           (_tl1801318108_
                                            (##cdr _e1801118103_)))
                                       (if (gx#stx-null? _tl1801318108_)
                                           (if (gx#stx-pair? _tl1800718092_)
                                               (let ((_e1801418111_
                                                      (gx#stx-e
                                                       _tl1800718092_)))
                                                 (let ((_hd1801518114_
                                                        (##car _e1801418111_))
                                                       (_tl1801618116_
                                                        (##cdr _e1801418111_)))
                                                   (if (gx#stx-pair?
                                                        _hd1801518114_)
                                                       (let ((_e1801718119_
                                                              (gx#stx-e
                                                               _hd1801518114_)))
                                                         (let ((_hd1801818122_
                                                                (##car _e1801718119_))
                                                               (_tl1801918124_
                                                                (##cdr _e1801718119_)))
                                                           (if (gx#identifier?
                                                                _hd1801818122_)
                                                               (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '%#ref
                            _hd1801818122_)
                           (if (gx#stx-pair? _tl1801918124_)
                               (let ((_e1802018127_ (gx#stx-e _tl1801918124_)))
                                 (let ((_hd1802118130_ (##car _e1802018127_))
                                       (_tl1802218132_ (##cdr _e1802018127_)))
                                   (if (gx#stx-null? _tl1802218132_)
                                       (if (gx#stx-null? _tl1801618116_)
                                           (if (gx#stx-null? _tl1799218052_)
                                               ((lambda (_L18135_
                                                         _L18136_
                                                         _L18137_
                                                         _L18138_)
                                                  (if (if (gx#identifier?
                                                           _L18138_)
                                                          (if (eq? (gxc#generate-runtime-binding-id
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L18137_)
                           'apply)
                      (if (gx#free-identifier=? _L18138_ _L18135_)
                          (not (gx#free-identifier=? _L18136_ _L18138_))
                          '#f)
                      '#f)
                  '#f)
              '#t
              (_g1786918034_ _g1787118037_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd1802118130_
                                                _hd1801218106_
                                                _hd1800318082_
                                                _hd1798818042_)
                                               (_g1786918034_ _g1787118037_))
                                           (_g1786918034_ _g1787118037_))
                                       (_g1786918034_ _g1787118037_))))
                               (_g1786918034_ _g1787118037_))
                           (_g1786918034_ _g1787118037_))
                       (_g1786918034_ _g1787118037_))))
               (_g1786918034_ _g1787118037_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1786918034_ _g1787118037_))
                                           (_g1786918034_ _g1787118037_))))
                                   (_g1786918034_ _g1787118037_))
                               (_g1786918034_ _g1787118037_))
                           (_g1786918034_ _g1787118037_))))
                   (_g1786918034_ _g1787118037_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1786918034_
                                                    _g1787118037_))
                                               (_g1786918034_ _g1787118037_))))
                                       (_g1786918034_ _g1787118037_))
                                   (_g1786918034_ _g1787118037_))
                               (_g1786918034_ _g1787118037_))))
                       (_g1786918034_ _g1787118037_))))
               (_g1786918034_ _g1787118037_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1786918034_
                                                    _g1787118037_))
                                               (_g1786918034_ _g1787118037_))))
                                       (_g1786918034_ _g1787118037_))))
                               (_g1786918034_ _g1787118037_))))
                       (_g1786918034_ _g1787118037_)))))
            (let ((_g1786718434_
                   (lambda (_g1787118177_)
                     (if (gx#stx-pair? _g1787118177_)
                         (let ((_e1792318179_ (gx#stx-e _g1787118177_)))
                           (let ((_hd1792418182_ (##car _e1792318179_))
                                 (_tl1792518184_ (##cdr _e1792318179_)))
                             (if (gx#stx-pair/null? _hd1792418182_)
                                 (if (fx>= (gx#stx-length _hd1792418182_) '0)
                                     (let ((_g19733_
                                            (gx#syntax-split-splice
                                             _hd1792418182_
                                             '0)))
                                       (begin
                                         (let ((_g19734_
                                                (values-count _g19733_)))
                                           (if (not (fx= _g19734_ 2))
                                               (error "Context expects 2 values"
                                                      _g19734_)))
                                         (let ((_target1792618187_
                                                (values-ref _g19733_ 0))
                                               (_tl1792818189_
                                                (values-ref _g19733_ 1)))
                                           (letrec ((_loop1792918192_
                                                     (lambda (_hd1792718195_
                                                              _arg1793318197_)
                                                       (if (gx#stx-pair?
                                                            _hd1792718195_)
                                                           (let ((_e1793018200_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd1792718195_)))
                     (let ((_lp-hd1793118203_ (##car _e1793018200_))
                           (_lp-tl1793218205_ (##cdr _e1793018200_)))
                       (_loop1792918192_
                        _lp-tl1793218205_
                        (cons _lp-hd1793118203_ _arg1793318197_))))
                   (let ((_arg1793418208_ (reverse _arg1793318197_)))
                     (if (gx#stx-pair? _tl1792518184_)
                         (let ((_e1793518211_ (gx#stx-e _tl1792518184_)))
                           (let ((_hd1793618214_ (##car _e1793518211_))
                                 (_tl1793718216_ (##cdr _e1793518211_)))
                             (if (gx#stx-pair? _hd1793618214_)
                                 (let ((_e1793818219_
                                        (gx#stx-e _hd1793618214_)))
                                   (let ((_hd1793918222_ (##car _e1793818219_))
                                         (_tl1794018224_
                                          (##cdr _e1793818219_)))
                                     (if (gx#identifier? _hd1793918222_)
                                         (if (gx#stx-eq?
                                              '%#call
                                              _hd1793918222_)
                                             (if (gx#stx-pair? _tl1794018224_)
                                                 (let ((_e1794118227_
                                                        (gx#stx-e
                                                         _tl1794018224_)))
                                                   (let ((_hd1794218230_
                                                          (##car _e1794118227_))
                                                         (_tl1794318232_
                                                          (##cdr _e1794118227_)))
                                                     (if (gx#stx-pair?
                                                          _hd1794218230_)
                                                         (let ((_e1794418235_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1794218230_)))
                   (let ((_hd1794518238_ (##car _e1794418235_))
                         (_tl1794618240_ (##cdr _e1794418235_)))
                     (if (gx#identifier? _hd1794518238_)
                         (if (gx#stx-eq? '%#ref _hd1794518238_)
                             (if (gx#stx-pair? _tl1794618240_)
                                 (let ((_e1794718243_
                                        (gx#stx-e _tl1794618240_)))
                                   (let ((_hd1794818246_ (##car _e1794718243_))
                                         (_tl1794918248_
                                          (##cdr _e1794718243_)))
                                     (if (gx#stx-null? _tl1794918248_)
                                         (if (gx#stx-pair? _tl1794318232_)
                                             (let ((_e1795018251_
                                                    (gx#stx-e _tl1794318232_)))
                                               (let ((_hd1795118254_
                                                      (##car _e1795018251_))
                                                     (_tl1795218256_
                                                      (##cdr _e1795018251_)))
                                                 (if (gx#stx-pair?
                                                      _hd1795118254_)
                                                     (let ((_e1795318259_
                                                            (gx#stx-e
                                                             _hd1795118254_)))
                                                       (let ((_hd1795418262_
                                                              (##car _e1795318259_))
                                                             (_tl1795518264_
                                                              (##cdr _e1795318259_)))
                                                         (if (gx#identifier?
                                                              _hd1795418262_)
                                                             (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '%#ref
                          _hd1795418262_)
                         (if (gx#stx-pair? _tl1795518264_)
                             (let ((_e1795618267_ (gx#stx-e _tl1795518264_)))
                               (let ((_hd1795718270_ (##car _e1795618267_))
                                     (_tl1795818272_ (##cdr _e1795618267_)))
                                 (if (gx#stx-null? _tl1795818272_)
                                     (if (gx#stx-pair/null? _tl1795218256_)
                                         (if (fx>= (gx#stx-length
                                                    _tl1795218256_)
                                                   '1)
                                             (let ((_g19735_
                                                    (gx#syntax-split-splice
                                                     _tl1795218256_
                                                     '1)))
                                               (begin
                                                 (let ((_g19736_
                                                        (values-count
                                                         _g19735_)))
                                                   (if (not (fx= _g19736_ 2))
                                                       (error "Context expects 2 values"
                                                              _g19736_)))
                                                 (let ((_target1795918275_
                                                        (values-ref
                                                         _g19735_
                                                         0))
                                                       (_tl1796118277_
                                                        (values-ref
                                                         _g19735_
                                                         1)))
                                                   (if (gx#stx-pair?
                                                        _tl1796118277_)
                                                       (let ((_e1796818280_
                                                              (gx#stx-e
                                                               _tl1796118277_)))
                                                         (let ((_hd1796918283_
                                                                (##car _e1796818280_))
                                                               (_tl1797018285_
                                                                (##cdr _e1796818280_)))
                                                           (if (gx#stx-pair?
                                                                _hd1796918283_)
                                                               (let ((_e1797118288_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd1796918283_)))
                         (let ((_hd1797218291_ (##car _e1797118288_))
                               (_tl1797318293_ (##cdr _e1797118288_)))
                           (if (gx#identifier? _hd1797218291_)
                               (if (gx#stx-eq? '%#ref _hd1797218291_)
                                   (if (gx#stx-pair? _tl1797318293_)
                                       (let ((_e1797418296_
                                              (gx#stx-e _tl1797318293_)))
                                         (let ((_hd1797518299_
                                                (##car _e1797418296_))
                                               (_tl1797618301_
                                                (##cdr _e1797418296_)))
                                           (if (gx#stx-null? _tl1797618301_)
                                               (if (gx#stx-null?
                                                    _tl1797018285_)
                                                   (letrec ((_loop1796218304_
                                                             (lambda (_hd1796018307_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _xarg1796618309_)
                       (if (gx#stx-pair? _hd1796018307_)
                           (let ((_e1796318312_ (gx#stx-e _hd1796018307_)))
                             (let ((_lp-hd1796418315_ (##car _e1796318312_))
                                   (_lp-tl1796518317_ (##cdr _e1796318312_)))
                               (if (gx#stx-pair? _lp-hd1796418315_)
                                   (let ((_e1797718320_
                                          (gx#stx-e _lp-hd1796418315_)))
                                     (let ((_hd1797818323_
                                            (##car _e1797718320_))
                                           (_tl1797918325_
                                            (##cdr _e1797718320_)))
                                       (if (gx#identifier? _hd1797818323_)
                                           (if (gx#stx-eq?
                                                '%#ref
                                                _hd1797818323_)
                                               (if (gx#stx-pair?
                                                    _tl1797918325_)
                                                   (let ((_e1798018328_
                                                          (gx#stx-e
                                                           _tl1797918325_)))
                                                     (let ((_hd1798118331_
                                                            (##car _e1798018328_))
                                                           (_tl1798218333_
                                                            (##cdr _e1798018328_)))
                                                       (if (gx#stx-null?
                                                            _tl1798218333_)
                                                           (_loop1796218304_
                                                            _lp-tl1796518317_
                                                            (cons _hd1798118331_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _xarg1796618309_))
                   (_g1786818174_ _g1787118177_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1786818174_
                                                    _g1787118177_))
                                               (_g1786818174_ _g1787118177_))
                                           (_g1786818174_ _g1787118177_))))
                                   (_g1786818174_ _g1787118177_))))
                           (let ((_xarg1796718336_ (reverse _xarg1796618309_)))
                             (if (gx#stx-null? _tl1793718216_)
                                 ((lambda (_L18339_
                                           _L18340_
                                           _L18341_
                                           _L18342_
                                           _L18343_
                                           _L18344_)
                                    (if (if (gx#identifier-list?
                                             (begin
                                               '#!void
                                               (foldr1 (lambda (_g1838718390_
                                                                _g1838818392_)
                                                         (cons _g1838718390_
                                                               _g1838818392_))
                                                       '()
                                                       _L18344_)))
                                            (if (gx#identifier? _L18343_)
                                                (if (eq? (gxc#generate-runtime-binding-id
                                                          _L18342_)
                                                         'apply)
                                                    (if (fx= (length (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#!void
                               (foldr1 (lambda (_g1839418397_ _g1839518399_)
                                         (cons _g1839418397_ _g1839518399_))
                                       '()
                                       _L18344_)))
                     (length (begin
                               '#!void
                               (foldr1 (lambda (_g1840118404_ _g1840218406_)
                                         (cons _g1840118404_ _g1840218406_))
                                       '()
                                       _L18340_))))
                (if (andmap gx#free-identifier=?
                            (begin
                              '#!void
                              (foldr1 (lambda (_g1840818411_ _g1840918413_)
                                        (cons _g1840818411_ _g1840918413_))
                                      '()
                                      _L18344_))
                            (begin
                              '#!void
                              (foldr1 (lambda (_g1841518418_ _g1841618420_)
                                        (cons _g1841518418_ _g1841618420_))
                                      '()
                                      _L18340_)))
                    (if (gx#free-identifier=? _L18343_ _L18339_)
                        (not (find (lambda (_g1842218424_)
                                     (gx#free-identifier=?
                                      _g1842218424_
                                      _L18341_))
                                   (begin
                                     '#!void
                                     (foldr1 (lambda (_g1842618429_
                                                      _g1842718431_)
                                               (cons _g1842618429_
                                                     _g1842718431_))
                                             (cons _L18343_ '())
                                             _L18344_))))
                        '#f)
                    '#f)
                '#f)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '#f)
                                                '#f)
                                            '#f)
                                        '#t
                                        (_g1786818174_ _g1787118177_)))
                                  _hd1797518299_
                                  _xarg1796718336_
                                  _hd1795718270_
                                  _hd1794818246_
                                  _tl1792818189_
                                  _arg1793418208_)
                                 (_g1786818174_ _g1787118177_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop1796218304_
                                                      _target1795918275_
                                                      '()))
                                                   (_g1786818174_
                                                    _g1787118177_))
                                               (_g1786818174_ _g1787118177_))))
                                       (_g1786818174_ _g1787118177_))
                                   (_g1786818174_ _g1787118177_))
                               (_g1786818174_ _g1787118177_))))
                       (_g1786818174_ _g1787118177_))))
               (_g1786818174_ _g1787118177_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g1786818174_ _g1787118177_))
                                         (_g1786818174_ _g1787118177_))
                                     (_g1786818174_ _g1787118177_))))
                             (_g1786818174_ _g1787118177_))
                         (_g1786818174_ _g1787118177_))
                     (_g1786818174_ _g1787118177_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1786818174_
                                                      _g1787118177_))))
                                             (_g1786818174_ _g1787118177_))
                                         (_g1786818174_ _g1787118177_))))
                                 (_g1786818174_ _g1787118177_))
                             (_g1786818174_ _g1787118177_))
                         (_g1786818174_ _g1787118177_))))
                 (_g1786818174_ _g1787118177_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1786818174_ _g1787118177_))
                                             (_g1786818174_ _g1787118177_))
                                         (_g1786818174_ _g1787118177_))))
                                 (_g1786818174_ _g1787118177_))))
                         (_g1786818174_ _g1787118177_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_loop1792918192_
                                              _target1792618187_
                                              '())))))
                                     (_g1786818174_ _g1787118177_))
                                 (_g1786818174_ _g1787118177_))))
                         (_g1786818174_ _g1787118177_)))))
              (let ((_g1786618628_
                     (lambda (_g1787118437_)
                       (if (gx#stx-pair? _g1787118437_)
                           (let ((_e1787518439_ (gx#stx-e _g1787118437_)))
                             (let ((_hd1787618442_ (##car _e1787518439_))
                                   (_tl1787718444_ (##cdr _e1787518439_)))
                               (if (gx#stx-pair/null? _hd1787618442_)
                                   (if (fx>= (gx#stx-length _hd1787618442_) '0)
                                       (let ((_g19737_
                                              (gx#syntax-split-splice
                                               _hd1787618442_
                                               '0)))
                                         (begin
                                           (let ((_g19738_
                                                  (values-count _g19737_)))
                                             (if (not (fx= _g19738_ 2))
                                                 (error "Context expects 2 values"
                                                        _g19738_)))
                                           (let ((_target1787818447_
                                                  (values-ref _g19737_ 0))
                                                 (_tl1788018449_
                                                  (values-ref _g19737_ 1)))
                                             (if (gx#stx-null? _tl1788018449_)
                                                 (letrec ((_loop1788118452_
                                                           (lambda (_hd1787918455_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _arg1788518457_)
                     (if (gx#stx-pair? _hd1787918455_)
                         (let ((_e1788218460_ (gx#stx-e _hd1787918455_)))
                           (let ((_lp-hd1788318463_ (##car _e1788218460_))
                                 (_lp-tl1788418465_ (##cdr _e1788218460_)))
                             (_loop1788118452_
                              _lp-tl1788418465_
                              (cons _lp-hd1788318463_ _arg1788518457_))))
                         (let ((_arg1788618468_ (reverse _arg1788518457_)))
                           (if (gx#stx-pair? _tl1787718444_)
                               (let ((_e1788718471_ (gx#stx-e _tl1787718444_)))
                                 (let ((_hd1788818474_ (##car _e1788718471_))
                                       (_tl1788918476_ (##cdr _e1788718471_)))
                                   (if (gx#stx-pair? _hd1788818474_)
                                       (let ((_e1789018479_
                                              (gx#stx-e _hd1788818474_)))
                                         (let ((_hd1789118482_
                                                (##car _e1789018479_))
                                               (_tl1789218484_
                                                (##cdr _e1789018479_)))
                                           (if (gx#identifier? _hd1789118482_)
                                               (if (gx#stx-eq?
                                                    '%#call
                                                    _hd1789118482_)
                                                   (if (gx#stx-pair?
                                                        _tl1789218484_)
                                                       (let ((_e1789318487_
                                                              (gx#stx-e
                                                               _tl1789218484_)))
                                                         (let ((_hd1789418490_
                                                                (##car _e1789318487_))
                                                               (_tl1789518492_
                                                                (##cdr _e1789318487_)))
                                                           (if (gx#stx-pair?
                                                                _hd1789418490_)
                                                               (let ((_e1789618495_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd1789418490_)))
                         (let ((_hd1789718498_ (##car _e1789618495_))
                               (_tl1789818500_ (##cdr _e1789618495_)))
                           (if (gx#identifier? _hd1789718498_)
                               (if (gx#stx-eq? '%#ref _hd1789718498_)
                                   (if (gx#stx-pair? _tl1789818500_)
                                       (let ((_e1789918503_
                                              (gx#stx-e _tl1789818500_)))
                                         (let ((_hd1790018506_
                                                (##car _e1789918503_))
                                               (_tl1790118508_
                                                (##cdr _e1789918503_)))
                                           (if (gx#stx-null? _tl1790118508_)
                                               (if (gx#stx-pair/null?
                                                    _tl1789518492_)
                                                   (if (fx>= (gx#stx-length
                                                              _tl1789518492_)
                                                             '0)
                                                       (let ((_g19739_
                                                              (gx#syntax-split-splice
                                                               _tl1789518492_
                                                               '0)))
                                                         (begin
                                                           (let ((_g19740_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (values-count _g19739_)))
                     (if (not (fx= _g19740_ 2))
                         (error "Context expects 2 values" _g19740_)))
                   (let ((_target1790218511_ (values-ref _g19739_ 0))
                         (_tl1790418513_ (values-ref _g19739_ 1)))
                     (if (gx#stx-null? _tl1790418513_)
                         (letrec ((_loop1790518516_
                                   (lambda (_hd1790318519_ _xarg1790918521_)
                                     (if (gx#stx-pair? _hd1790318519_)
                                         (let ((_e1790618524_
                                                (gx#stx-e _hd1790318519_)))
                                           (let ((_lp-hd1790718527_
                                                  (##car _e1790618524_))
                                                 (_lp-tl1790818529_
                                                  (##cdr _e1790618524_)))
                                             (if (gx#stx-pair?
                                                  _lp-hd1790718527_)
                                                 (let ((_e1791118532_
                                                        (gx#stx-e
                                                         _lp-hd1790718527_)))
                                                   (let ((_hd1791218535_
                                                          (##car _e1791118532_))
                                                         (_tl1791318537_
                                                          (##cdr _e1791118532_)))
                                                     (if (gx#identifier?
                                                          _hd1791218535_)
                                                         (if (gx#stx-eq?
                                                              '%#ref
                                                              _hd1791218535_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1791318537_)
                         (let ((_e1791418540_ (gx#stx-e _tl1791318537_)))
                           (let ((_hd1791518543_ (##car _e1791418540_))
                                 (_tl1791618545_ (##cdr _e1791418540_)))
                             (if (gx#stx-null? _tl1791618545_)
                                 (_loop1790518516_
                                  _lp-tl1790818529_
                                  (cons _hd1791518543_ _xarg1790918521_))
                                 (_g1786718434_ _g1787118437_))))
                         (_g1786718434_ _g1787118437_))
                     (_g1786718434_ _g1787118437_))
                 (_g1786718434_ _g1787118437_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1786718434_
                                                  _g1787118437_))))
                                         (let ((_xarg1791018548_
                                                (reverse _xarg1790918521_)))
                                           (if (gx#stx-null? _tl1788918476_)
                                               ((lambda (_L18551_
                                                         _L18552_
                                                         _L18553_)
                                                  (if (if (gx#identifier-list?
                                                           (begin
                                                             '#!void
                                                             (foldr1 (lambda (_g1858118584_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _g1858218586_)
                               (cons _g1858118584_ _g1858218586_))
                             '()
                             _L18553_)))
                  (if (fx= (length (begin
                                     '#!void
                                     (foldr1 (lambda (_g1858818591_
                                                      _g1858918593_)
                                               (cons _g1858818591_
                                                     _g1858918593_))
                                             '()
                                             _L18553_)))
                           (length (begin
                                     '#!void
                                     (foldr1 (lambda (_g1859518598_
                                                      _g1859618600_)
                                               (cons _g1859518598_
                                                     _g1859618600_))
                                             '()
                                             _L18551_))))
                      (if (andmap gx#free-identifier=?
                                  (begin
                                    '#!void
                                    (foldr1 (lambda (_g1860218605_
                                                     _g1860318607_)
                                              (cons _g1860218605_
                                                    _g1860318607_))
                                            '()
                                            _L18553_))
                                  (begin
                                    '#!void
                                    (foldr1 (lambda (_g1860918612_
                                                     _g1861018614_)
                                              (cons _g1860918612_
                                                    _g1861018614_))
                                            '()
                                            _L18551_)))
                          (not (find (lambda (_g1861618618_)
                                       (gx#free-identifier=?
                                        _g1861618618_
                                        _L18552_))
                                     (begin
                                       '#!void
                                       (foldr1 (lambda (_g1862018623_
                                                        _g1862118625_)
                                                 (cons _g1862018623_
                                                       _g1862118625_))
                                               '()
                                               _L18553_))))
                          '#f)
                      '#f)
                  '#f)
              '#t
              (_g1786718434_ _g1787118437_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _xarg1791018548_
                                                _hd1790018506_
                                                _arg1788618468_)
                                               (_g1786718434_
                                                _g1787118437_)))))))
                           (_loop1790518516_ _target1790218511_ '()))
                         (_g1786718434_ _g1787118437_)))))
               (_g1786718434_ _g1787118437_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1786718434_
                                                    _g1787118437_))
                                               (_g1786718434_ _g1787118437_))))
                                       (_g1786718434_ _g1787118437_))
                                   (_g1786718434_ _g1787118437_))
                               (_g1786718434_ _g1787118437_))))
                       (_g1786718434_ _g1787118437_))))
               (_g1786718434_ _g1787118437_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1786718434_
                                                    _g1787118437_))
                                               (_g1786718434_ _g1787118437_))))
                                       (_g1786718434_ _g1787118437_))))
                               (_g1786718434_ _g1787118437_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_loop1788118452_
                                                    _target1787818447_
                                                    '()))
                                                 (_g1786718434_
                                                  _g1787118437_)))))
                                       (_g1786718434_ _g1787118437_))
                                   (_g1786718434_ _g1787118437_))))
                           (_g1786718434_ _g1787118437_)))))
                (_g1786618628_ _form17865_))))))))
  (define gxc#dispatch-lambda-form-delegate
    (lambda (_form17333_)
      (let ((_g1733717461_
             (lambda (_g1733817458_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1733817458_))))
        (let ((_g1733617578_
               (lambda (_g1733817464_)
                 (if (gx#stx-pair? _g1733817464_)
                     (let ((_e1742717466_ (gx#stx-e _g1733817464_)))
                       (let ((_hd1742817469_ (##car _e1742717466_))
                             (_tl1742917471_ (##cdr _e1742717466_)))
                         (if (gx#stx-pair? _tl1742917471_)
                             (let ((_e1743017474_ (gx#stx-e _tl1742917471_)))
                               (let ((_hd1743117477_ (##car _e1743017474_))
                                     (_tl1743217479_ (##cdr _e1743017474_)))
                                 (if (gx#stx-pair? _hd1743117477_)
                                     (let ((_e1743317482_
                                            (gx#stx-e _hd1743117477_)))
                                       (let ((_hd1743417485_
                                              (##car _e1743317482_))
                                             (_tl1743517487_
                                              (##cdr _e1743317482_)))
                                         (if (gx#identifier? _hd1743417485_)
                                             (if (gx#stx-eq?
                                                  '%#call
                                                  _hd1743417485_)
                                                 (if (gx#stx-pair?
                                                      _tl1743517487_)
                                                     (let ((_e1743617490_
                                                            (gx#stx-e
                                                             _tl1743517487_)))
                                                       (let ((_hd1743717493_
                                                              (##car _e1743617490_))
                                                             (_tl1743817495_
                                                              (##cdr _e1743617490_)))
                                                         (if (gx#stx-pair?
                                                              _hd1743717493_)
                                                             (let ((_e1743917498_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _hd1743717493_)))
                       (let ((_hd1744017501_ (##car _e1743917498_))
                             (_tl1744117503_ (##cdr _e1743917498_)))
                         (if (gx#identifier? _hd1744017501_)
                             (if (gx#stx-eq? '%#ref _hd1744017501_)
                                 (if (gx#stx-pair? _tl1744117503_)
                                     (let ((_e1744217506_
                                            (gx#stx-e _tl1744117503_)))
                                       (let ((_hd1744317509_
                                              (##car _e1744217506_))
                                             (_tl1744417511_
                                              (##cdr _e1744217506_)))
                                         (if (gx#stx-null? _tl1744417511_)
                                             (if (gx#stx-pair? _tl1743817495_)
                                                 (let ((_e1744517514_
                                                        (gx#stx-e
                                                         _tl1743817495_)))
                                                   (let ((_hd1744617517_
                                                          (##car _e1744517514_))
                                                         (_tl1744717519_
                                                          (##cdr _e1744517514_)))
                                                     (if (gx#stx-pair?
                                                          _hd1744617517_)
                                                         (let ((_e1744817522_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1744617517_)))
                   (let ((_hd1744917525_ (##car _e1744817522_))
                         (_tl1745017527_ (##cdr _e1744817522_)))
                     (if (gx#identifier? _hd1744917525_)
                         (if (gx#stx-eq? '%#ref _hd1744917525_)
                             (if (gx#stx-pair? _tl1745017527_)
                                 (let ((_e1745117530_
                                        (gx#stx-e _tl1745017527_)))
                                   (let ((_hd1745217533_ (##car _e1745117530_))
                                         (_tl1745317535_
                                          (##cdr _e1745117530_)))
                                     (if (gx#stx-null? _tl1745317535_)
                                         (if (gx#stx-pair? _tl1744717519_)
                                             (let ((_e1745417538_
                                                    (gx#stx-e _tl1744717519_)))
                                               (let ((_hd1745517541_
                                                      (##car _e1745417538_))
                                                     (_tl1745617543_
                                                      (##cdr _e1745417538_)))
                                                 (if (gx#stx-null?
                                                      _tl1745617543_)
                                                     (if (gx#stx-null?
                                                          _tl1743217479_)
                                                         ((lambda (_L17546_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L17547_
                           _L17548_)
                    (gxc#generate-runtime-binding-id _L17546_))
                  _hd1745217533_
                  _hd1744317509_
                  _hd1742817469_)
                 (_g1733717461_ _g1733817464_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1733717461_
                                                      _g1733817464_))))
                                             (_g1733717461_ _g1733817464_))
                                         (_g1733717461_ _g1733817464_))))
                                 (_g1733717461_ _g1733817464_))
                             (_g1733717461_ _g1733817464_))
                         (_g1733717461_ _g1733817464_))))
                 (_g1733717461_ _g1733817464_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1733717461_ _g1733817464_))
                                             (_g1733717461_ _g1733817464_))))
                                     (_g1733717461_ _g1733817464_))
                                 (_g1733717461_ _g1733817464_))
                             (_g1733717461_ _g1733817464_))))
                     (_g1733717461_ _g1733817464_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1733717461_
                                                      _g1733817464_))
                                                 (_g1733717461_ _g1733817464_))
                                             (_g1733717461_ _g1733817464_))))
                                     (_g1733717461_ _g1733817464_))))
                             (_g1733717461_ _g1733817464_))))
                     (_g1733717461_ _g1733817464_)))))
          (let ((_g1733517714_
                 (lambda (_g1733817581_)
                   (if (gx#stx-pair? _g1733817581_)
                       (let ((_e1738817583_ (gx#stx-e _g1733817581_)))
                         (let ((_hd1738917586_ (##car _e1738817583_))
                               (_tl1739017588_ (##cdr _e1738817583_)))
                           (if (gx#stx-pair/null? _hd1738917586_)
                               (if (fx>= (gx#stx-length _hd1738917586_) '0)
                                   (let ((_g19741_
                                          (gx#syntax-split-splice
                                           _hd1738917586_
                                           '0)))
                                     (begin
                                       (let ((_g19742_
                                              (values-count _g19741_)))
                                         (if (not (fx= _g19742_ 2))
                                             (error "Context expects 2 values"
                                                    _g19742_)))
                                       (let ((_target1739117591_
                                              (values-ref _g19741_ 0))
                                             (_tl1739317593_
                                              (values-ref _g19741_ 1)))
                                         (letrec ((_loop1739417596_
                                                   (lambda (_hd1739217599_
                                                            _arg1739817601_)
                                                     (if (gx#stx-pair?
                                                          _hd1739217599_)
                                                         (let ((_e1739517604_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1739217599_)))
                   (let ((_lp-hd1739617607_ (##car _e1739517604_))
                         (_lp-tl1739717609_ (##cdr _e1739517604_)))
                     (_loop1739417596_
                      _lp-tl1739717609_
                      (cons _lp-hd1739617607_ _arg1739817601_))))
                 (let ((_arg1739917612_ (reverse _arg1739817601_)))
                   (if (gx#stx-pair? _tl1739017588_)
                       (let ((_e1740017615_ (gx#stx-e _tl1739017588_)))
                         (let ((_hd1740117618_ (##car _e1740017615_))
                               (_tl1740217620_ (##cdr _e1740017615_)))
                           (if (gx#stx-pair? _hd1740117618_)
                               (let ((_e1740317623_ (gx#stx-e _hd1740117618_)))
                                 (let ((_hd1740417626_ (##car _e1740317623_))
                                       (_tl1740517628_ (##cdr _e1740317623_)))
                                   (if (gx#identifier? _hd1740417626_)
                                       (if (gx#stx-eq? '%#call _hd1740417626_)
                                           (if (gx#stx-pair? _tl1740517628_)
                                               (let ((_e1740617631_
                                                      (gx#stx-e
                                                       _tl1740517628_)))
                                                 (let ((_hd1740717634_
                                                        (##car _e1740617631_))
                                                       (_tl1740817636_
                                                        (##cdr _e1740617631_)))
                                                   (if (gx#stx-pair?
                                                        _hd1740717634_)
                                                       (let ((_e1740917639_
                                                              (gx#stx-e
                                                               _hd1740717634_)))
                                                         (let ((_hd1741017642_
                                                                (##car _e1740917639_))
                                                               (_tl1741117644_
                                                                (##cdr _e1740917639_)))
                                                           (if (gx#identifier?
                                                                _hd1741017642_)
                                                               (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '%#ref
                            _hd1741017642_)
                           (if (gx#stx-pair? _tl1741117644_)
                               (let ((_e1741217647_ (gx#stx-e _tl1741117644_)))
                                 (let ((_hd1741317650_ (##car _e1741217647_))
                                       (_tl1741417652_ (##cdr _e1741217647_)))
                                   (if (gx#stx-null? _tl1741417652_)
                                       (if (gx#stx-pair? _tl1740817636_)
                                           (let ((_e1741517655_
                                                  (gx#stx-e _tl1740817636_)))
                                             (let ((_hd1741617658_
                                                    (##car _e1741517655_))
                                                   (_tl1741717660_
                                                    (##cdr _e1741517655_)))
                                               (if (gx#stx-pair?
                                                    _hd1741617658_)
                                                   (let ((_e1741817663_
                                                          (gx#stx-e
                                                           _hd1741617658_)))
                                                     (let ((_hd1741917666_
                                                            (##car _e1741817663_))
                                                           (_tl1742017668_
                                                            (##cdr _e1741817663_)))
                                                       (if (gx#identifier?
                                                            _hd1741917666_)
                                                           (if (gx#stx-eq?
                                                                '%#ref
                                                                _hd1741917666_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl1742017668_)
                           (let ((_e1742117671_ (gx#stx-e _tl1742017668_)))
                             (let ((_hd1742217674_ (##car _e1742117671_))
                                   (_tl1742317676_ (##cdr _e1742117671_)))
                               (if (gx#stx-null? _tl1742317676_)
                                   (if (gx#stx-null? _tl1740217620_)
                                       ((lambda (_L17679_
                                                 _L17680_
                                                 _L17681_
                                                 _L17682_)
                                          (gxc#generate-runtime-binding-id
                                           _L17679_))
                                        _hd1742217674_
                                        _hd1741317650_
                                        _tl1739317593_
                                        _arg1739917612_)
                                       (_g1733617578_ _g1733817581_))
                                   (_g1733617578_ _g1733817581_))))
                           (_g1733617578_ _g1733817581_))
                       (_g1733617578_ _g1733817581_))
                   (_g1733617578_ _g1733817581_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1733617578_
                                                    _g1733817581_))))
                                           (_g1733617578_ _g1733817581_))
                                       (_g1733617578_ _g1733817581_))))
                               (_g1733617578_ _g1733817581_))
                           (_g1733617578_ _g1733817581_))
                       (_g1733617578_ _g1733817581_))))
               (_g1733617578_ _g1733817581_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1733617578_ _g1733817581_))
                                           (_g1733617578_ _g1733817581_))
                                       (_g1733617578_ _g1733817581_))))
                               (_g1733617578_ _g1733817581_))))
                       (_g1733617578_ _g1733817581_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_loop1739417596_
                                            _target1739117591_
                                            '())))))
                                   (_g1733617578_ _g1733817581_))
                               (_g1733617578_ _g1733817581_))))
                       (_g1733617578_ _g1733817581_)))))
            (let ((_g1733417862_
                   (lambda (_g1733817717_)
                     (if (gx#stx-pair? _g1733817717_)
                         (let ((_e1734217719_ (gx#stx-e _g1733817717_)))
                           (let ((_hd1734317722_ (##car _e1734217719_))
                                 (_tl1734417724_ (##cdr _e1734217719_)))
                             (if (gx#stx-pair/null? _hd1734317722_)
                                 (if (fx>= (gx#stx-length _hd1734317722_) '0)
                                     (let ((_g19743_
                                            (gx#syntax-split-splice
                                             _hd1734317722_
                                             '0)))
                                       (begin
                                         (let ((_g19744_
                                                (values-count _g19743_)))
                                           (if (not (fx= _g19744_ 2))
                                               (error "Context expects 2 values"
                                                      _g19744_)))
                                         (let ((_target1734517727_
                                                (values-ref _g19743_ 0))
                                               (_tl1734717729_
                                                (values-ref _g19743_ 1)))
                                           (if (gx#stx-null? _tl1734717729_)
                                               (letrec ((_loop1734817732_
                                                         (lambda (_hd1734617735_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _arg1735217737_)
                   (if (gx#stx-pair? _hd1734617735_)
                       (let ((_e1734917740_ (gx#stx-e _hd1734617735_)))
                         (let ((_lp-hd1735017743_ (##car _e1734917740_))
                               (_lp-tl1735117745_ (##cdr _e1734917740_)))
                           (_loop1734817732_
                            _lp-tl1735117745_
                            (cons _lp-hd1735017743_ _arg1735217737_))))
                       (let ((_arg1735317748_ (reverse _arg1735217737_)))
                         (if (gx#stx-pair? _tl1734417724_)
                             (let ((_e1735417751_ (gx#stx-e _tl1734417724_)))
                               (let ((_hd1735517754_ (##car _e1735417751_))
                                     (_tl1735617756_ (##cdr _e1735417751_)))
                                 (if (gx#stx-pair? _hd1735517754_)
                                     (let ((_e1735717759_
                                            (gx#stx-e _hd1735517754_)))
                                       (let ((_hd1735817762_
                                              (##car _e1735717759_))
                                             (_tl1735917764_
                                              (##cdr _e1735717759_)))
                                         (if (gx#identifier? _hd1735817762_)
                                             (if (gx#stx-eq?
                                                  '%#call
                                                  _hd1735817762_)
                                                 (if (gx#stx-pair?
                                                      _tl1735917764_)
                                                     (let ((_e1736017767_
                                                            (gx#stx-e
                                                             _tl1735917764_)))
                                                       (let ((_hd1736117770_
                                                              (##car _e1736017767_))
                                                             (_tl1736217772_
                                                              (##cdr _e1736017767_)))
                                                         (if (gx#stx-pair?
                                                              _hd1736117770_)
                                                             (let ((_e1736317775_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _hd1736117770_)))
                       (let ((_hd1736417778_ (##car _e1736317775_))
                             (_tl1736517780_ (##cdr _e1736317775_)))
                         (if (gx#identifier? _hd1736417778_)
                             (if (gx#stx-eq? '%#ref _hd1736417778_)
                                 (if (gx#stx-pair? _tl1736517780_)
                                     (let ((_e1736617783_
                                            (gx#stx-e _tl1736517780_)))
                                       (let ((_hd1736717786_
                                              (##car _e1736617783_))
                                             (_tl1736817788_
                                              (##cdr _e1736617783_)))
                                         (if (gx#stx-null? _tl1736817788_)
                                             (if (gx#stx-pair/null?
                                                  _tl1736217772_)
                                                 (if (fx>= (gx#stx-length
                                                            _tl1736217772_)
                                                           '0)
                                                     (let ((_g19745_
                                                            (gx#syntax-split-splice
                                                             _tl1736217772_
                                                             '0)))
                                                       (begin
                                                         (let ((_g19746_
                                                                (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g19745_)))
                   (if (not (fx= _g19746_ 2))
                       (error "Context expects 2 values" _g19746_)))
                 (let ((_target1736917791_ (values-ref _g19745_ 0))
                       (_tl1737117793_ (values-ref _g19745_ 1)))
                   (if (gx#stx-null? _tl1737117793_)
                       (letrec ((_loop1737217796_
                                 (lambda (_hd1737017799_ _xarg1737617801_)
                                   (if (gx#stx-pair? _hd1737017799_)
                                       (let ((_e1737317804_
                                              (gx#stx-e _hd1737017799_)))
                                         (let ((_lp-hd1737417807_
                                                (##car _e1737317804_))
                                               (_lp-tl1737517809_
                                                (##cdr _e1737317804_)))
                                           (if (gx#stx-pair? _lp-hd1737417807_)
                                               (let ((_e1737817812_
                                                      (gx#stx-e
                                                       _lp-hd1737417807_)))
                                                 (let ((_hd1737917815_
                                                        (##car _e1737817812_))
                                                       (_tl1738017817_
                                                        (##cdr _e1737817812_)))
                                                   (if (gx#identifier?
                                                        _hd1737917815_)
                                                       (if (gx#stx-eq?
                                                            '%#ref
                                                            _hd1737917815_)
                                                           (if (gx#stx-pair?
                                                                _tl1738017817_)
                                                               (let ((_e1738117820_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl1738017817_)))
                         (let ((_hd1738217823_ (##car _e1738117820_))
                               (_tl1738317825_ (##cdr _e1738117820_)))
                           (if (gx#stx-null? _tl1738317825_)
                               (_loop1737217796_
                                _lp-tl1737517809_
                                (cons _hd1738217823_ _xarg1737617801_))
                               (_g1733517714_ _g1733817717_))))
                       (_g1733517714_ _g1733817717_))
                   (_g1733517714_ _g1733817717_))
               (_g1733517714_ _g1733817717_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1733517714_ _g1733817717_))))
                                       (let ((_xarg1737717828_
                                              (reverse _xarg1737617801_)))
                                         (if (gx#stx-null? _tl1735617756_)
                                             ((lambda (_L17831_
                                                       _L17832_
                                                       _L17833_)
                                                (gxc#generate-runtime-binding-id
                                                 _L17832_))
                                              _xarg1737717828_
                                              _hd1736717786_
                                              _arg1735317748_)
                                             (_g1733517714_
                                              _g1733817717_)))))))
                         (_loop1737217796_ _target1736917791_ '()))
                       (_g1733517714_ _g1733817717_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1733517714_
                                                      _g1733817717_))
                                                 (_g1733517714_ _g1733817717_))
                                             (_g1733517714_ _g1733817717_))))
                                     (_g1733517714_ _g1733817717_))
                                 (_g1733517714_ _g1733817717_))
                             (_g1733517714_ _g1733817717_))))
                     (_g1733517714_ _g1733817717_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1733517714_
                                                      _g1733817717_))
                                                 (_g1733517714_ _g1733817717_))
                                             (_g1733517714_ _g1733817717_))))
                                     (_g1733517714_ _g1733817717_))))
                             (_g1733517714_ _g1733817717_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop1734817732_
                                                  _target1734517727_
                                                  '()))
                                               (_g1733517714_
                                                _g1733817717_)))))
                                     (_g1733517714_ _g1733817717_))
                                 (_g1733517714_ _g1733817717_))))
                         (_g1733517714_ _g1733817717_)))))
              (_g1733417862_ _form17333_)))))))
  (define gxc#lambda-form-arity
    (lambda (_form17137_)
      (let ((_g1713917153_
             (lambda (_g1714017150_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1714017150_))))
        (let ((_g1713817330_
               (lambda (_g1714017156_)
                 (if (gx#stx-pair? _g1714017156_)
                     (let ((_e1714317158_ (gx#stx-e _g1714017156_)))
                       (let ((_hd1714417161_ (##car _e1714317158_))
                             (_tl1714517163_ (##cdr _e1714317158_)))
                         (if (gx#stx-pair? _tl1714517163_)
                             (let ((_e1714617166_ (gx#stx-e _tl1714517163_)))
                               (let ((_hd1714717169_ (##car _e1714617166_))
                                     (_tl1714817171_ (##cdr _e1714617166_)))
                                 (if (gx#stx-null? _tl1714817171_)
                                     ((lambda (_L17174_ _L17175_)
                                        (let ((_g1719017218_
                                               (lambda (_g1719117215_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g1719117215_))))
                                          (let ((_g1718917231_
                                                 (lambda (_g1719117221_)
                                                   ((lambda (_L17223_)
                                                      (cons '0 '()))
                                                    _g1719117221_))))
                                            (let ((_g1718817280_
                                                   (lambda (_g1719117234_)
                                                     (if (gx#stx-pair/null?
                                                          _g1719117234_)
                                                         (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g1719117234_)
                           '0)
                     (let ((_g19747_
                            (gx#syntax-split-splice _g1719117234_ '0)))
                       (begin
                         (let ((_g19748_ (values-count _g19747_)))
                           (if (not (fx= _g19748_ 2))
                               (error "Context expects 2 values" _g19748_)))
                         (let ((_target1720417236_ (values-ref _g19747_ 0))
                               (_tl1720617238_ (values-ref _g19747_ 1)))
                           (letrec ((_loop1720717241_
                                     (lambda (_hd1720517244_ _arg1721117246_)
                                       (if (gx#stx-pair? _hd1720517244_)
                                           (let ((_e1720817249_
                                                  (gx#stx-e _hd1720517244_)))
                                             (let ((_lp-hd1720917252_
                                                    (##car _e1720817249_))
                                                   (_lp-tl1721017254_
                                                    (##cdr _e1720817249_)))
                                               (_loop1720717241_
                                                _lp-tl1721017254_
                                                (cons _lp-hd1720917252_
                                                      _arg1721117246_))))
                                           (let ((_arg1721217257_
                                                  (reverse _arg1721117246_)))
                                             ((lambda (_L17260_ _L17261_)
                                                (cons (length (begin
                                                                '#!void
                                                                (foldr1 (lambda (_g1727217275_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                         _g1727317277_)
                                  (cons _g1727217275_ _g1727317277_))
                                '()
                                _L17261_)))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _tl1720617238_
                                              _arg1721217257_))))))
                             (_loop1720717241_ _target1720417236_ '())))))
                     (_g1718917231_ _g1719117234_))
                 (_g1718917231_ _g1719117234_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_g1718717327_
                                                     (lambda (_g1719117283_)
                                                       (if (gx#stx-pair/null?
                                                            _g1719117283_)
                                                           (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g1719117283_)
                             '0)
                       (let ((_g19749_
                              (gx#syntax-split-splice _g1719117283_ '0)))
                         (begin
                           (let ((_g19750_ (values-count _g19749_)))
                             (if (not (fx= _g19750_ 2))
                                 (error "Context expects 2 values" _g19750_)))
                           (let ((_target1719317285_ (values-ref _g19749_ 0))
                                 (_tl1719517287_ (values-ref _g19749_ 1)))
                             (if (gx#stx-null? _tl1719517287_)
                                 (letrec ((_loop1719617290_
                                           (lambda (_hd1719417293_
                                                    _arg1720017295_)
                                             (if (gx#stx-pair? _hd1719417293_)
                                                 (let ((_e1719717298_
                                                        (gx#stx-e
                                                         _hd1719417293_)))
                                                   (let ((_lp-hd1719817301_
                                                          (##car _e1719717298_))
                                                         (_lp-tl1719917303_
                                                          (##cdr _e1719717298_)))
                                                     (_loop1719617290_
                                                      _lp-tl1719917303_
                                                      (cons _lp-hd1719817301_
                                                            _arg1720017295_))))
                                                 (let ((_arg1720117306_
                                                        (reverse _arg1720017295_)))
                                                   ((lambda (_L17309_)
                                                      (length (begin
                                                                '#!void
                                                                (foldr1 (lambda (_g1731917322_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                         _g1732017324_)
                                  (cons _g1731917322_ _g1732017324_))
                                '()
                                _L17309_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _arg1720117306_))))))
                                   (_loop1719617290_ _target1719317285_ '()))
                                 (_g1718817280_ _g1719117283_)))))
                       (_g1718817280_ _g1719117283_))
                   (_g1718817280_ _g1719117283_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1718717327_ _L17175_))))))
                                      _hd1714717169_
                                      _hd1714417161_)
                                     (_g1713917153_ _g1714017156_))))
                             (_g1713917153_ _g1714017156_))))
                     (_g1713917153_ _g1714017156_)))))
          (_g1713817330_ _form17137_)))))
  (define gxc#lambda-expr?
    (lambda (_expr17090_)
      (let ((_g1709317103_
             (lambda (_g1709417100_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1709417100_))))
        (let ((_g1709217110_ (lambda (_g1709417106_) ((lambda () '#f)))))
          (let ((_g1709117134_
                 (lambda (_g1709417113_)
                   (if (gx#stx-pair? _g1709417113_)
                       (let ((_e1709617115_ (gx#stx-e _g1709417113_)))
                         (let ((_hd1709717118_ (##car _e1709617115_))
                               (_tl1709817120_ (##cdr _e1709617115_)))
                           (if (gx#identifier? _hd1709717118_)
                               (if (gx#stx-eq? '%#lambda _hd1709717118_)
                                   ((lambda (_L17123_) '#t) _tl1709817120_)
                                   (_g1709217110_ _g1709417113_))
                               (_g1709217110_ _g1709417113_))))
                       (_g1709217110_ _g1709417113_)))))
            (_g1709117134_ _expr17090_))))))
  (define gxc#case-lambda-expr?
    (lambda (_expr17043_)
      (let ((_g1704617056_
             (lambda (_g1704717053_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1704717053_))))
        (let ((_g1704517063_ (lambda (_g1704717059_) ((lambda () '#f)))))
          (let ((_g1704417087_
                 (lambda (_g1704717066_)
                   (if (gx#stx-pair? _g1704717066_)
                       (let ((_e1704917068_ (gx#stx-e _g1704717066_)))
                         (let ((_hd1705017071_ (##car _e1704917068_))
                               (_tl1705117073_ (##cdr _e1704917068_)))
                           (if (gx#identifier? _hd1705017071_)
                               (if (gx#stx-eq? '%#case-lambda _hd1705017071_)
                                   ((lambda (_L17076_) '#t) _tl1705117073_)
                                   (_g1704517063_ _g1704717066_))
                               (_g1704517063_ _g1704717066_))))
                       (_g1704517063_ _g1704717066_)))))
            (_g1704417087_ _expr17043_))))))
  (define gxc#opt-lambda-expr?
    (lambda (_expr16912_)
      (let ((_g1691516945_
             (lambda (_g1691616942_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1691616942_))))
        (let ((_g1691416952_ (lambda (_g1691616948_) ((lambda () '#f)))))
          (let ((_g1691317040_
                 (lambda (_g1691616955_)
                   (if (gx#stx-pair? _g1691616955_)
                       (let ((_e1692016957_ (gx#stx-e _g1691616955_)))
                         (let ((_hd1692116960_ (##car _e1692016957_))
                               (_tl1692216962_ (##cdr _e1692016957_)))
                           (if (gx#identifier? _hd1692116960_)
                               (if (gx#stx-eq? '%#let-values _hd1692116960_)
                                   (if (gx#stx-pair? _tl1692216962_)
                                       (let ((_e1692316965_
                                              (gx#stx-e _tl1692216962_)))
                                         (let ((_hd1692416968_
                                                (##car _e1692316965_))
                                               (_tl1692516970_
                                                (##cdr _e1692316965_)))
                                           (if (gx#stx-pair? _hd1692416968_)
                                               (let ((_e1692616973_
                                                      (gx#stx-e
                                                       _hd1692416968_)))
                                                 (let ((_hd1692716976_
                                                        (##car _e1692616973_))
                                                       (_tl1692816978_
                                                        (##cdr _e1692616973_)))
                                                   (if (gx#stx-pair?
                                                        _hd1692716976_)
                                                       (let ((_e1692916981_
                                                              (gx#stx-e
                                                               _hd1692716976_)))
                                                         (let ((_hd1693016984_
                                                                (##car _e1692916981_))
                                                               (_tl1693116986_
                                                                (##cdr _e1692916981_)))
                                                           (if (gx#stx-pair?
                                                                _hd1693016984_)
                                                               (let ((_e1693216989_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd1693016984_)))
                         (let ((_hd1693316992_ (##car _e1693216989_))
                               (_tl1693416994_ (##cdr _e1693216989_)))
                           (if (gx#stx-null? _tl1693416994_)
                               (if (gx#stx-pair? _tl1693116986_)
                                   (let ((_e1693516997_
                                          (gx#stx-e _tl1693116986_)))
                                     (let ((_hd1693617000_
                                            (##car _e1693516997_))
                                           (_tl1693717002_
                                            (##cdr _e1693516997_)))
                                       (if (gx#stx-null? _tl1693717002_)
                                           (if (gx#stx-null? _tl1692816978_)
                                               (if (gx#stx-pair?
                                                    _tl1692516970_)
                                                   (let ((_e1693817005_
                                                          (gx#stx-e
                                                           _tl1692516970_)))
                                                     (let ((_hd1693917008_
                                                            (##car _e1693817005_))
                                                           (_tl1694017010_
                                                            (##cdr _e1693817005_)))
                                                       (if (gx#stx-null?
                                                            _tl1694017010_)
                                                           ((lambda (_L17013_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L17014_
                             _L17015_)
                      (if (gx#identifier? _L17015_)
                          (if (gxc#lambda-expr? _L17014_)
                              (gxc#case-lambda-expr? _L17013_)
                              '#f)
                          '#f))
                    _hd1693917008_
                    _hd1693617000_
                    _hd1693316992_)
                   (_g1691416952_ _g1691616955_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1691416952_
                                                    _g1691616955_))
                                               (_g1691416952_ _g1691616955_))
                                           (_g1691416952_ _g1691616955_))))
                                   (_g1691416952_ _g1691616955_))
                               (_g1691416952_ _g1691616955_))))
                       (_g1691416952_ _g1691616955_))))
               (_g1691416952_ _g1691616955_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1691416952_ _g1691616955_))))
                                       (_g1691416952_ _g1691616955_))
                                   (_g1691416952_ _g1691616955_))
                               (_g1691416952_ _g1691616955_))))
                       (_g1691416952_ _g1691616955_)))))
            (_g1691317040_ _expr16912_))))))
  (begin
    (define gxc#lift-case-lambda-clauses__opt-lambda16652
      (lambda (_stx16654_ _id16655_ _clauses16656_ _gensym?16657_)
        ((letrec ((_lp16659_
                   (lambda (_rest16661_ _ids16662_ _impls16663_ _clauses16664_)
                     (let ((_rest1666516673_ _rest16661_))
                       (let ((_E1666816677_
                              (lambda ()
                                (error '"No clause matching"
                                       _rest1666516673_))))
                         (let ((_else1666716681_
                                (lambda ()
                                  (values (reverse _ids16662_)
                                          (reverse _impls16663_)
                                          (reverse _clauses16664_)))))
                           (let ((_K1666916886_
                                  (lambda (_rest16684_ _clause16685_)
                                    (if (gxc#dispatch-lambda-form?
                                         _clause16685_)
                                        (_lp16659_
                                         _rest16684_
                                         _ids16662_
                                         _impls16663_
                                         (cons _clause16685_ _clauses16664_))
                                        (let ((_g1668716698_
                                               (lambda (_g1668816695_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g1668816695_))))
                                          (let ((_g1668616883_
                                                 (lambda (_g1668816701_)
                                                   (if (gx#stx-pair?
                                                        _g1668816701_)
                                                       (let ((_e1669116703_
                                                              (gx#stx-e
                                                               _g1668816701_)))
                                                         (let ((_hd1669216706_
                                                                (##car _e1669116703_))
                                                               (_tl1669316708_
                                                                (##cdr _e1669116703_)))
                                                           ((lambda (_L16711_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L16712_)
                      (let ((_id16729_
                             (make-symbol
                              (gx#stx-e _id16655_)
                              '"__"
                              (length _clauses16664_)
                              (if _gensym?16657_ (gensym '__) '""))))
                        (let ((_id16731_
                               (gx#core-quote-syntax__1
                                _id16729_
                                (gx#stx-source _stx16654_))))
                          (let ((_impl16733_
                                 (gxc#xform-wrap-source
                                  (cons (gx#datum->syntax__0 '#f '%#lambda)
                                        (cons _L16712_ _L16711_))
                                  _stx16654_)))
                            (let ((_clause16880_
                                   (let ((_g1673716765_
                                          (lambda (_g1673816762_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax"
                                             _g1673816762_))))
                                     (let ((_g1673616781_
                                            (lambda (_g1673816768_)
                                              ((lambda (_L16770_)
                                                 (cons _L16712_
                                                       (cons (gxc#xform-wrap-source
                                                              (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons '%#ref (cons 'apply '()))
                                  (cons (cons '%#ref (cons _id16731_ '()))
                                        (cons (cons (gx#datum->syntax__0
                                                     '#f
                                                     '%#ref)
                                                    (cons _L16770_ '()))
                                              '()))))
                      _stx16654_)
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _g1673816768_))))
                                       (let ((_g1673516830_
                                              (lambda (_g1673816784_)
                                                (if (gx#stx-pair/null?
                                                     _g1673816784_)
                                                    (if (fx>= (gx#stx-length
                                                               _g1673816784_)
                                                              '0)
                                                        (let ((_g19751_
                                                               (gx#syntax-split-splice
                                                                _g1673816784_
                                                                '0)))
                                                          (begin
                                                            (let ((_g19752_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (values-count _g19751_)))
                      (if (not (fx= _g19752_ 2))
                          (error "Context expects 2 values" _g19752_)))
                    (let ((_target1675116786_ (values-ref _g19751_ 0))
                          (_tl1675316788_ (values-ref _g19751_ 1)))
                      (letrec ((_loop1675416791_
                                (lambda (_hd1675216794_ _arg1675816796_)
                                  (if (gx#stx-pair? _hd1675216794_)
                                      (let ((_e1675516799_
                                             (gx#stx-e _hd1675216794_)))
                                        (let ((_lp-hd1675616802_
                                               (##car _e1675516799_))
                                              (_lp-tl1675716804_
                                               (##cdr _e1675516799_)))
                                          (_loop1675416791_
                                           _lp-tl1675716804_
                                           (cons _lp-hd1675616802_
                                                 _arg1675816796_))))
                                      (let ((_arg1675916807_
                                             (reverse _arg1675816796_)))
                                        ((lambda (_L16810_ _L16811_)
                                           (cons _L16712_
                                                 (cons (gxc#xform-wrap-source
                                                        (cons '%#call
                                                              (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons 'apply '()))
                            (cons (cons '%#ref (cons _id16731_ '()))
                                  (foldr1 cons
                                          (cons (cons (gx#datum->syntax__0
                                                       '#f
                                                       '%#ref)
                                                      (cons _L16810_ '()))
                                                '())
                                          (begin
                                            '#!void
                                            (foldr1 (lambda (_g1682216825_
                                                             _g1682316827_)
                                                      (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           '%#ref)
                          (cons _g1682216825_ '()))
                    _g1682316827_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()
                                                    _L16811_))))))
                _stx16654_)
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _tl1675316788_
                                         _arg1675916807_))))))
                        (_loop1675416791_ _target1675116786_ '())))))
                (_g1673616781_ _g1673816784_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1673616781_
                                                     _g1673816784_)))))
                                         (let ((_g1673416877_
                                                (lambda (_g1673816833_)
                                                  (if (gx#stx-pair/null?
                                                       _g1673816833_)
                                                      (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1673816833_)
                        '0)
                  (let ((_g19753_ (gx#syntax-split-splice _g1673816833_ '0)))
                    (begin
                      (let ((_g19754_ (values-count _g19753_)))
                        (if (not (fx= _g19754_ 2))
                            (error "Context expects 2 values" _g19754_)))
                      (let ((_target1674016835_ (values-ref _g19753_ 0))
                            (_tl1674216837_ (values-ref _g19753_ 1)))
                        (if (gx#stx-null? _tl1674216837_)
                            (letrec ((_loop1674316840_
                                      (lambda (_hd1674116843_ _arg1674716845_)
                                        (if (gx#stx-pair? _hd1674116843_)
                                            (let ((_e1674416848_
                                                   (gx#stx-e _hd1674116843_)))
                                              (let ((_lp-hd1674516851_
                                                     (##car _e1674416848_))
                                                    (_lp-tl1674616853_
                                                     (##cdr _e1674416848_)))
                                                (_loop1674316840_
                                                 _lp-tl1674616853_
                                                 (cons _lp-hd1674516851_
                                                       _arg1674716845_))))
                                            (let ((_arg1674816856_
                                                   (reverse _arg1674716845_)))
                                              ((lambda (_L16859_)
                                                 (cons _L16712_
                                                       (cons (gxc#xform-wrap-source
                                                              (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons '%#ref (cons _id16731_ '()))
                                  (begin
                                    '#!void
                                    (foldr1 (lambda (_g1686916872_
                                                     _g1687016874_)
                                              (cons (cons (gx#datum->syntax__0
                                                           '#f
                                                           '%#ref)
                                                          (cons _g1686916872_
                                                                '()))
                                                    _g1687016874_))
                                            '()
                                            _L16859_))))
                      _stx16654_)
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _arg1674816856_))))))
                              (_loop1674316840_ _target1674016835_ '()))
                            (_g1673516830_ _g1673816833_)))))
                  (_g1673516830_ _g1673816833_))
              (_g1673516830_ _g1673816833_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_g1673416877_ _L16712_)))))))
                              (let ()
                                (_lp16659_
                                 _rest16684_
                                 (cons _id16731_ _ids16662_)
                                 (cons _impl16733_ _impls16663_)
                                 (cons _clause16880_ _clauses16664_))))))))
                    _tl1669316708_
                    _hd1669216706_)))
               (_g1668716698_ _g1668816701_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g1668616883_ _clause16685_)))))))
                             (if (##pair? _rest1666516673_)
                                 (let ((_hd1667016889_
                                        (##car _rest1666516673_))
                                       (_tl1667116891_
                                        (##cdr _rest1666516673_)))
                                   (let ((_clause16894_ _hd1667016889_))
                                     (let ((_rest16896_ _tl1667116891_))
                                       (_K1666916886_
                                        _rest16896_
                                        _clause16894_))))
                                 (_else1666716681_)))))))))
           _lp16659_)
         _clauses16656_
         '()
         '()
         '())))
    (begin
      (define gxc#lift-case-lambda-clauses__0
        (lambda (_stx16901_ _id16902_ _clauses16903_)
          (let ((_gensym?16905_ '#f))
            (gxc#lift-case-lambda-clauses__opt-lambda16652
             _stx16901_
             _id16902_
             _clauses16903_
             _gensym?16905_))))
      (define gxc#lift-case-lambda-clauses
        (lambda _g19756_
          (let ((_g19755_ (length _g19756_)))
            (cond ((fx= _g19755_ 3)
                   (apply gxc#lift-case-lambda-clauses__0 _g19756_))
                  ((fx= _g19755_ 4)
                   (apply gxc#lift-case-lambda-clauses__opt-lambda16652
                          _g19756_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#lift-case-lambda-clauses
                    _g19756_))))))))
  (define gxc#lift-top-lambda-define-values%
    (lambda (_stx16243_)
      (let ((_case-lambda-clause-def16245_
             (lambda (_id16650_ _impl16651_)
               (gxc#xform-wrap-source
                (cons '%#define-values
                      (cons (cons _id16650_ '())
                            (cons (gxc#compile-e _impl16651_) '())))
                _stx16243_))))
        (let ((_g1624916294_
               (lambda (_g1625016291_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1625016291_))))
          (let ((_g1624816340_
                 (lambda (_g1625016297_)
                   (if (gx#stx-pair? _g1625016297_)
                       (let ((_e1628116299_ (gx#stx-e _g1625016297_)))
                         (let ((_hd1628216302_ (##car _e1628116299_))
                               (_tl1628316304_ (##cdr _e1628116299_)))
                           (if (gx#stx-pair? _tl1628316304_)
                               (let ((_e1628416307_ (gx#stx-e _tl1628316304_)))
                                 (let ((_hd1628516310_ (##car _e1628416307_))
                                       (_tl1628616312_ (##cdr _e1628416307_)))
                                   (if (gx#stx-pair? _tl1628616312_)
                                       (let ((_e1628716315_
                                              (gx#stx-e _tl1628616312_)))
                                         (let ((_hd1628816318_
                                                (##car _e1628716315_))
                                               (_tl1628916320_
                                                (##cdr _e1628716315_)))
                                           (if (gx#stx-null? _tl1628916320_)
                                               ((lambda (_L16323_ _L16324_)
                                                  (gxc#xform-wrap-source
                                                   (cons '%#define-values
                                                         (cons _L16324_
                                                               (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L16323_)
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _stx16243_))
                                                _hd1628816318_
                                                _hd1628516310_)
                                               (_g1624916294_ _g1625016297_))))
                                       (_g1624916294_ _g1625016297_))))
                               (_g1624916294_ _g1625016297_))))
                       (_g1624916294_ _g1625016297_)))))
            (let ((_g1624716522_
                   (lambda (_g1625016343_)
                     (if (gx#stx-pair? _g1625016343_)
                         (let ((_e1626716345_ (gx#stx-e _g1625016343_)))
                           (let ((_hd1626816348_ (##car _e1626716345_))
                                 (_tl1626916350_ (##cdr _e1626716345_)))
                             (if (gx#stx-pair? _tl1626916350_)
                                 (let ((_e1627016353_
                                        (gx#stx-e _tl1626916350_)))
                                   (let ((_hd1627116356_ (##car _e1627016353_))
                                         (_tl1627216358_
                                          (##cdr _e1627016353_)))
                                     (if (gx#stx-pair? _hd1627116356_)
                                         (let ((_e1627316361_
                                                (gx#stx-e _hd1627116356_)))
                                           (let ((_hd1627416364_
                                                  (##car _e1627316361_))
                                                 (_tl1627516366_
                                                  (##cdr _e1627316361_)))
                                             (if (gx#stx-null? _tl1627516366_)
                                                 (if (gx#stx-pair?
                                                      _tl1627216358_)
                                                     (let ((_e1627616369_
                                                            (gx#stx-e
                                                             _tl1627216358_)))
                                                       (let ((_hd1627716372_
                                                              (##car _e1627616369_))
                                                             (_tl1627816374_
                                                              (##cdr _e1627616369_)))
                                                         (if (gx#stx-null?
                                                              _tl1627816374_)
                                                             ((lambda (_L16377_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L16378_)
                        (if (if (gx#identifier? _L16378_)
                                (gxc#opt-lambda-expr? _L16377_)
                                '#f)
                            (let ((_g1639416424_
                                   (lambda (_g1639516421_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g1639516421_))))
                              (let ((_g1639316519_
                                     (lambda (_g1639516427_)
                                       (if (gx#stx-pair? _g1639516427_)
                                           (let ((_e1639916429_
                                                  (gx#stx-e _g1639516427_)))
                                             (let ((_hd1640016432_
                                                    (##car _e1639916429_))
                                                   (_tl1640116434_
                                                    (##cdr _e1639916429_)))
                                               (if (gx#stx-pair?
                                                    _tl1640116434_)
                                                   (let ((_e1640216437_
                                                          (gx#stx-e
                                                           _tl1640116434_)))
                                                     (let ((_hd1640316440_
                                                            (##car _e1640216437_))
                                                           (_tl1640416442_
                                                            (##cdr _e1640216437_)))
                                                       (if (gx#stx-pair?
                                                            _hd1640316440_)
                                                           (let ((_e1640516445_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd1640316440_)))
                     (let ((_hd1640616448_ (##car _e1640516445_))
                           (_tl1640716450_ (##cdr _e1640516445_)))
                       (if (gx#stx-pair? _hd1640616448_)
                           (let ((_e1640816453_ (gx#stx-e _hd1640616448_)))
                             (let ((_hd1640916456_ (##car _e1640816453_))
                                   (_tl1641016458_ (##cdr _e1640816453_)))
                               (if (gx#stx-pair? _hd1640916456_)
                                   (let ((_e1641116461_
                                          (gx#stx-e _hd1640916456_)))
                                     (let ((_hd1641216464_
                                            (##car _e1641116461_))
                                           (_tl1641316466_
                                            (##cdr _e1641116461_)))
                                       (if (gx#stx-null? _tl1641316466_)
                                           (if (gx#stx-pair? _tl1641016458_)
                                               (let ((_e1641416469_
                                                      (gx#stx-e
                                                       _tl1641016458_)))
                                                 (let ((_hd1641516472_
                                                        (##car _e1641416469_))
                                                       (_tl1641616474_
                                                        (##cdr _e1641416469_)))
                                                   (if (gx#stx-null?
                                                        _tl1641616474_)
                                                       (if (gx#stx-null?
                                                            _tl1640716450_)
                                                           (if (gx#stx-pair?
                                                                _tl1640416442_)
                                                               (let ((_e1641716477_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl1640416442_)))
                         (let ((_hd1641816480_ (##car _e1641716477_))
                               (_tl1641916482_ (##cdr _e1641716477_)))
                           (if (gx#stx-null? _tl1641916482_)
                               ((lambda (_L16485_ _L16486_ _L16487_)
                                  (let ((_lambda-id16511_
                                         (make-symbol
                                          (gx#stx-e _L16378_)
                                          '"__"
                                          (gx#stx-e _L16487_))))
                                    (let ((_lambda-id16513_
                                           (gx#core-quote-syntax__1
                                            _lambda-id16511_
                                            (gx#stx-source _stx16243_))))
                                      (let ((_g19757_
                                             (gx#core-bind-runtime!__0
                                              _lambda-id16513_)))
                                        (let ((_new-case-lambda-expr16516_
                                               (gxc#apply-expression-subst
                                                _L16485_
                                                _L16487_
                                                _lambda-id16513_)))
                                          (let ()
                                            (begin
                                              (gxc#verbose
                                               '"lift opt-lambda dispatch "
                                               (gxc#generate-runtime-binding-id
                                                _L16378_)
                                               '" => "
                                               (gxc#generate-runtime-binding-id
                                                _lambda-id16513_))
                                              (gxc#xform-wrap-source
                                               (cons '%#begin
                                                     (cons (gxc#xform-wrap-source
                                                            (cons '%#define-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons _lambda-id16513_ '())
                                (cons (gxc#compile-e _L16486_) '())))
                    _stx16243_)
                   (cons (gxc#lift-top-lambda-define-values%
                          (gxc#xform-wrap-source
                           (cons '%#define-values
                                 (cons (cons _L16378_ '())
                                       (cons _new-case-lambda-expr16516_ '())))
                           _stx16243_))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _stx16243_))))))))
                                _hd1641816480_
                                _hd1641516472_
                                _hd1641216464_)
                               (_g1639416424_ _g1639516427_))))
                       (_g1639416424_ _g1639516427_))
                   (_g1639416424_ _g1639516427_))
               (_g1639416424_ _g1639516427_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1639416424_ _g1639516427_))
                                           (_g1639416424_ _g1639516427_))))
                                   (_g1639416424_ _g1639516427_))))
                           (_g1639416424_ _g1639516427_))))
                   (_g1639416424_ _g1639516427_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1639416424_
                                                    _g1639516427_))))
                                           (_g1639416424_ _g1639516427_)))))
                                (_g1639316519_ _L16377_)))
                            (_g1624816340_ _g1625016343_)))
                      _hd1627716372_
                      _hd1627416364_)
                     (_g1624816340_ _g1625016343_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1624816340_
                                                      _g1625016343_))
                                                 (_g1624816340_
                                                  _g1625016343_))))
                                         (_g1624816340_ _g1625016343_))))
                                 (_g1624816340_ _g1625016343_))))
                         (_g1624816340_ _g1625016343_)))))
              (let ((_g1624616647_
                     (lambda (_g1625016525_)
                       (if (gx#stx-pair? _g1625016525_)
                           (let ((_e1625316527_ (gx#stx-e _g1625016525_)))
                             (let ((_hd1625416530_ (##car _e1625316527_))
                                   (_tl1625516532_ (##cdr _e1625316527_)))
                               (if (gx#stx-pair? _tl1625516532_)
                                   (let ((_e1625616535_
                                          (gx#stx-e _tl1625516532_)))
                                     (let ((_hd1625716538_
                                            (##car _e1625616535_))
                                           (_tl1625816540_
                                            (##cdr _e1625616535_)))
                                       (if (gx#stx-pair? _hd1625716538_)
                                           (let ((_e1625916543_
                                                  (gx#stx-e _hd1625716538_)))
                                             (let ((_hd1626016546_
                                                    (##car _e1625916543_))
                                                   (_tl1626116548_
                                                    (##cdr _e1625916543_)))
                                               (if (gx#stx-null?
                                                    _tl1626116548_)
                                                   (if (gx#stx-pair?
                                                        _tl1625816540_)
                                                       (let ((_e1626216551_
                                                              (gx#stx-e
                                                               _tl1625816540_)))
                                                         (let ((_hd1626316554_
                                                                (##car _e1626216551_))
                                                               (_tl1626416556_
                                                                (##cdr _e1626216551_)))
                                                           (if (gx#stx-null?
                                                                _tl1626416556_)
                                                               ((lambda (_L16559_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _L16560_)
                          (if (if (gx#identifier? _L16560_)
                                  (gxc#case-lambda-expr? _L16559_)
                                  '#f)
                              (let ((_g1657716591_
                                     (lambda (_g1657816588_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g1657816588_))))
                                (let ((_g1657616622_
                                       (lambda (_g1657816594_)
                                         (if (gx#stx-pair? _g1657816594_)
                                             (let ((_e1658416596_
                                                    (gx#stx-e _g1657816594_)))
                                               (let ((_hd1658516599_
                                                      (##car _e1658416596_))
                                                     (_tl1658616601_
                                                      (##cdr _e1658416596_)))
                                                 ((lambda (_L16604_)
                                                    (let ((_g19758_
                                                           (gxc#lift-case-lambda-clauses__0
                                                            _stx16243_
                                                            _L16560_
                                                            _L16604_)))
                                                      (begin
                                                        (let ((_g19759_
                                                               (values-count
                                                                _g19758_)))
                                                          (if (not (fx= _g19759_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                3))
                      (error "Context expects 3 values" _g19759_)))
                (let ((_ids16614_ (values-ref _g19758_ 0))
                      (_impls16615_ (values-ref _g19758_ 1))
                      (_clauses16616_ (values-ref _g19758_ 2)))
                  (let ((_g19760_ (for-each gx#core-bind-runtime! _ids16614_)))
                    (let ((_defs16619_
                           (map _case-lambda-clause-def16245_
                                _ids16614_
                                _impls16615_)))
                      (let ()
                        (begin
                          (gxc#verbose
                           '"lift case-lambda clauses "
                           (gxc#generate-runtime-binding-id _L16560_)
                           '" => "
                           (map gxc#identifier-symbol _ids16614_))
                          (gxc#xform-wrap-source
                           (cons '%#begin
                                 (foldr1 cons
                                         (cons (gxc#xform-wrap-source
                                                (cons '%#define-values
                                                      (cons (cons _L16560_ '())
                                                            (cons (gxc#xform-wrap-source
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '%#case-lambda _clauses16616_)
                           (gx#datum->syntax__0 '#f 'case-lambda-expr))
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _stx16243_)
                                               '())
                                         _defs16619_))
                           _stx16243_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _tl1658616601_)))
                                             (_g1657716591_ _g1657816594_)))))
                                  (let ((_g1657516644_
                                         (lambda (_g1657816625_)
                                           (if (gx#stx-pair? _g1657816625_)
                                               (let ((_e1658016627_
                                                      (gx#stx-e
                                                       _g1657816625_)))
                                                 (let ((_hd1658116630_
                                                        (##car _e1658016627_))
                                                       (_tl1658216632_
                                                        (##cdr _e1658016627_)))
                                                   ((lambda (_L16635_)
                                                      (if (andmap1 gxc#dispatch-lambda-form?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L16635_)
                  _stx16243_
                  (_g1657616622_ _g1657816625_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _tl1658216632_)))
                                               (_g1657616622_
                                                _g1657816625_)))))
                                    (_g1657516644_ _L16559_))))
                              (_g1624716522_ _g1625016525_)))
                        _hd1626316554_
                        _hd1626016546_)
                       (_g1624716522_ _g1625016525_))))
               (_g1624716522_ _g1625016525_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1624716522_
                                                    _g1625016525_))))
                                           (_g1624716522_ _g1625016525_))))
                                   (_g1624716522_ _g1625016525_))))
                           (_g1624716522_ _g1625016525_)))))
                (_g1624616647_ _stx16243_))))))))
  (define gxc#lift-top-lambda-let-values%
    (lambda (_stx15666_)
      (let ((_bind-e__opt-lambda16225__1970719708_
             (lambda (_id16227_ _expr16228_ _compile?16229_)
               (cons (cons _id16227_ '())
                     (cons (if _compile?16229_
                               (gxc#compile-e _expr16228_)
                               _expr16228_)
                           '())))))
        (let ((_bind-e__0__1970919710_
               (lambda (_id16234_ _expr16235_)
                 (let ((_compile?16237_ '#t))
                   (_bind-e__opt-lambda16225__1970719708_
                    _id16234_
                    _expr16235_
                    _compile?16237_)))))
          (let ((_bind-e15668_
                 (lambda _g19770_
                   (let ((_g19769_ (length _g19770_)))
                     (cond ((fx= _g19769_ 2)
                            (apply _bind-e__0__1970919710_ _g19770_))
                           ((fx= _g19769_ 3)
                            (apply _bind-e__opt-lambda16225__1970719708_
                                   _g19770_))
                           (else
                            (##raise-wrong-number-of-arguments-exception
                             'case-lambda-dispatch
                             _g19770_)))))))
            (let ((_compile-bindings15669_
                   (lambda (_rest15811_)
                     ((letrec ((_lp15813_
                                (lambda (_rest15815_
                                         _lift115816_
                                         _lift215817_
                                         _bind15818_)
                                  (let ((_rest1581915827_ _rest15815_))
                                    (let ((_E1582215831_
                                           (lambda ()
                                             (error '"No clause matching"
                                                    _rest1581915827_))))
                                      (let ((_else1582115835_
                                             (lambda ()
                                               (values (reverse _lift115816_)
                                                       (reverse _lift215817_)
                                                       (reverse _bind15818_)))))
                                        (let ((_K1582316214_
                                               (lambda (_rest15838_ _hd15839_)
                                                 (let ((_g1584315879_
                                                        (lambda (_g1584415876_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax"
                                                           _g1584415876_))))
                                                   (let ((_g1584215920_
                                                          (lambda (_g1584415882_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1584415882_)
                        (let ((_e1586915884_ (gx#stx-e _g1584415882_)))
                          (let ((_hd1587015887_ (##car _e1586915884_))
                                (_tl1587115889_ (##cdr _e1586915884_)))
                            (if (gx#stx-pair? _tl1587115889_)
                                (let ((_e1587215892_
                                       (gx#stx-e _tl1587115889_)))
                                  (let ((_hd1587315895_ (##car _e1587215892_))
                                        (_tl1587415897_ (##cdr _e1587215892_)))
                                    (if (gx#stx-null? _tl1587415897_)
                                        ((lambda (_L15900_ _L15901_)
                                           (_lp15813_
                                            _rest15838_
                                            _lift115816_
                                            _lift215817_
                                            (cons (cons _L15901_
                                                        (cons (gxc#compile-e
                                                               _L15900_)
                                                              '()))
                                                  _bind15818_)))
                                         _hd1587315895_
                                         _hd1587015887_)
                                        (_g1584315879_ _g1584415882_))))
                                (_g1584315879_ _g1584415882_))))
                        (_g1584315879_ _g1584415882_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_g1584116092_
                                                            (lambda (_g1584415923_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g1584415923_)
                          (let ((_e1585815925_ (gx#stx-e _g1584415923_)))
                            (let ((_hd1585915928_ (##car _e1585815925_))
                                  (_tl1586015930_ (##cdr _e1585815925_)))
                              (if (gx#stx-pair? _hd1585915928_)
                                  (let ((_e1586115933_
                                         (gx#stx-e _hd1585915928_)))
                                    (let ((_hd1586215936_
                                           (##car _e1586115933_))
                                          (_tl1586315938_
                                           (##cdr _e1586115933_)))
                                      (if (gx#stx-null? _tl1586315938_)
                                          (if (gx#stx-pair? _tl1586015930_)
                                              (let ((_e1586415941_
                                                     (gx#stx-e
                                                      _tl1586015930_)))
                                                (let ((_hd1586515944_
                                                       (##car _e1586415941_))
                                                      (_tl1586615946_
                                                       (##cdr _e1586415941_)))
                                                  (if (gx#stx-null?
                                                       _tl1586615946_)
                                                      ((lambda (_L15949_
                                                                _L15950_)
                                                         (if (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L15950_)
                         (gxc#opt-lambda-expr? _L15949_)
                         '#f)
                     (let ((_g1596415994_
                            (lambda (_g1596515991_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g1596515991_))))
                       (let ((_g1596316089_
                              (lambda (_g1596515997_)
                                (if (gx#stx-pair? _g1596515997_)
                                    (let ((_e1596915999_
                                           (gx#stx-e _g1596515997_)))
                                      (let ((_hd1597016002_
                                             (##car _e1596915999_))
                                            (_tl1597116004_
                                             (##cdr _e1596915999_)))
                                        (if (gx#stx-pair? _tl1597116004_)
                                            (let ((_e1597216007_
                                                   (gx#stx-e _tl1597116004_)))
                                              (let ((_hd1597316010_
                                                     (##car _e1597216007_))
                                                    (_tl1597416012_
                                                     (##cdr _e1597216007_)))
                                                (if (gx#stx-pair?
                                                     _hd1597316010_)
                                                    (let ((_e1597516015_
                                                           (gx#stx-e
                                                            _hd1597316010_)))
                                                      (let ((_hd1597616018_
                                                             (##car _e1597516015_))
                                                            (_tl1597716020_
                                                             (##cdr _e1597516015_)))
                                                        (if (gx#stx-pair?
                                                             _hd1597616018_)
                                                            (let ((_e1597816023_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1597616018_)))
                      (let ((_hd1597916026_ (##car _e1597816023_))
                            (_tl1598016028_ (##cdr _e1597816023_)))
                        (if (gx#stx-pair? _hd1597916026_)
                            (let ((_e1598116031_ (gx#stx-e _hd1597916026_)))
                              (let ((_hd1598216034_ (##car _e1598116031_))
                                    (_tl1598316036_ (##cdr _e1598116031_)))
                                (if (gx#stx-null? _tl1598316036_)
                                    (if (gx#stx-pair? _tl1598016028_)
                                        (let ((_e1598416039_
                                               (gx#stx-e _tl1598016028_)))
                                          (let ((_hd1598516042_
                                                 (##car _e1598416039_))
                                                (_tl1598616044_
                                                 (##cdr _e1598416039_)))
                                            (if (gx#stx-null? _tl1598616044_)
                                                (if (gx#stx-null?
                                                     _tl1597716020_)
                                                    (if (gx#stx-pair?
                                                         _tl1597416012_)
                                                        (let ((_e1598716047_
                                                               (gx#stx-e
                                                                _tl1597416012_)))
                                                          (let ((_hd1598816050_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1598716047_))
                        (_tl1598916052_ (##cdr _e1598716047_)))
                    (if (gx#stx-null? _tl1598916052_)
                        ((lambda (_L16055_ _L16056_ _L16057_)
                           (let ((_lambda-id16081_
                                  (make-symbol
                                   (gx#stx-e _L15950_)
                                   '"__"
                                   (gx#stx-e _L16057_)
                                   (gensym '__))))
                             (let ((_lambda-id16083_
                                    (gx#core-quote-syntax__1
                                     _lambda-id16081_
                                     (gx#stx-source _stx15666_))))
                               (let ((_g19765_
                                      (gx#core-bind-runtime!__0
                                       _lambda-id16083_)))
                                 (let ((_new-case-lambda-expr16086_
                                        (gxc#apply-expression-subst
                                         _L16055_
                                         _L16057_
                                         _lambda-id16083_)))
                                   (let ()
                                     (begin
                                       (gxc#verbose
                                        '"lift opt-lambda dispatch "
                                        (gxc#generate-runtime-binding-id
                                         _L15950_)
                                        '" => "
                                        (gxc#generate-runtime-binding-id
                                         _lambda-id16083_))
                                       (_lp15813_
                                        (cons (_bind-e__opt-lambda16225__1970719708_
                                               _L15950_
                                               _new-case-lambda-expr16086_
                                               '#f)
                                              _rest15838_)
                                        (cons (_bind-e__0__1970919710_
                                               _lambda-id16083_
                                               _L16056_)
                                              _lift115816_)
                                        _lift215817_
                                        _bind15818_))))))))
                         _hd1598816050_
                         _hd1598516042_
                         _hd1598216034_)
                        (_g1596415994_ _g1596515997_))))
                (_g1596415994_ _g1596515997_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1596415994_
                                                     _g1596515997_))
                                                (_g1596415994_
                                                 _g1596515997_))))
                                        (_g1596415994_ _g1596515997_))
                                    (_g1596415994_ _g1596515997_))))
                            (_g1596415994_ _g1596515997_))))
                    (_g1596415994_ _g1596515997_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1596415994_
                                                     _g1596515997_))))
                                            (_g1596415994_ _g1596515997_))))
                                    (_g1596415994_ _g1596515997_)))))
                         (_g1596316089_ _L15949_)))
                     (_g1584215920_ _g1584415923_)))
               _hd1586515944_
               _hd1586215936_)
              (_g1584215920_ _g1584415923_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1584215920_ _g1584415923_))
                                          (_g1584215920_ _g1584415923_))))
                                  (_g1584215920_ _g1584415923_))))
                          (_g1584215920_ _g1584415923_)))))
               (let ((_g1584016211_
                      (lambda (_g1584416095_)
                        (if (gx#stx-pair? _g1584416095_)
                            (let ((_e1584716097_ (gx#stx-e _g1584416095_)))
                              (let ((_hd1584816100_ (##car _e1584716097_))
                                    (_tl1584916102_ (##cdr _e1584716097_)))
                                (if (gx#stx-pair? _hd1584816100_)
                                    (let ((_e1585016105_
                                           (gx#stx-e _hd1584816100_)))
                                      (let ((_hd1585116108_
                                             (##car _e1585016105_))
                                            (_tl1585216110_
                                             (##cdr _e1585016105_)))
                                        (if (gx#stx-null? _tl1585216110_)
                                            (if (gx#stx-pair? _tl1584916102_)
                                                (let ((_e1585316113_
                                                       (gx#stx-e
                                                        _tl1584916102_)))
                                                  (let ((_hd1585416116_
                                                         (##car _e1585316113_))
                                                        (_tl1585516118_
                                                         (##cdr _e1585316113_)))
                                                    (if (gx#stx-null?
                                                         _tl1585516118_)
                                                        ((lambda (_L16121_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L16122_)
                   (if (if (gx#identifier? _L16122_)
                           (gxc#case-lambda-expr? _L16121_)
                           '#f)
                       (let ((_g1613716151_
                              (lambda (_g1613816148_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g1613816148_))))
                         (let ((_g1613616186_
                                (lambda (_g1613816154_)
                                  (if (gx#stx-pair? _g1613816154_)
                                      (let ((_e1614416156_
                                             (gx#stx-e _g1613816154_)))
                                        (let ((_hd1614516159_
                                               (##car _e1614416156_))
                                              (_tl1614616161_
                                               (##cdr _e1614416156_)))
                                          ((lambda (_L16164_)
                                             (let ((_g19766_
                                                    (gxc#lift-case-lambda-clauses__opt-lambda16652
                                                     _stx15666_
                                                     _L16122_
                                                     _L16164_
                                                     '#t)))
                                               (begin
                                                 (let ((_g19767_
                                                        (values-count
                                                         _g19766_)))
                                                   (if (not (fx= _g19767_ 3))
                                                       (error "Context expects 3 values"
                                                              _g19767_)))
                                                 (let ((_ids16174_
                                                        (values-ref
                                                         _g19766_
                                                         0))
                                                       (_impls16175_
                                                        (values-ref
                                                         _g19766_
                                                         1))
                                                       (_clauses16176_
                                                        (values-ref
                                                         _g19766_
                                                         2)))
                                                   (let ((_g19768_
                                                          (for-each
                                                           gx#core-bind-runtime!
                                                           _ids16174_)))
                                                     (let ((_xbind16179_
                                                            (map _bind-e15668_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _ids16174_
                         _impls16175_)))
               (let ((_expr*16181_
                      (gxc#xform-wrap-source
                       (cons '%#case-lambda _clauses16176_)
                       (gx#datum->syntax__0 '#f 'case-lambda-expr))))
                 (let ((_bind*16183_
                        (_bind-e__opt-lambda16225__1970719708_
                         _L16122_
                         _expr*16181_
                         '#f)))
                   (let ()
                     (begin
                       (gxc#verbose
                        '"lift case-lambda clauses "
                        (gxc#generate-runtime-binding-id _L16122_)
                        '" => "
                        (map gxc#identifier-symbol _ids16174_))
                       (_lp15813_
                        _rest15838_
                        _lift115816_
                        (foldl1 cons _lift215817_ _xbind16179_)
                        (cons _bind*16183_ _bind15818_))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _tl1614616161_)))
                                      (_g1613716151_ _g1613816154_)))))
                           (let ((_g1613516208_
                                  (lambda (_g1613816189_)
                                    (if (gx#stx-pair? _g1613816189_)
                                        (let ((_e1614016191_
                                               (gx#stx-e _g1613816189_)))
                                          (let ((_hd1614116194_
                                                 (##car _e1614016191_))
                                                (_tl1614216196_
                                                 (##cdr _e1614016191_)))
                                            ((lambda (_L16199_)
                                               (if (andmap1 gxc#dispatch-lambda-form?
                                                            _L16199_)
                                                   (_lp15813_
                                                    _rest15838_
                                                    _lift115816_
                                                    _lift215817_
                                                    (cons (_bind-e__opt-lambda16225__1970719708_
                                                           _L16122_
                                                           _L16121_
                                                           '#f)
                                                          _bind15818_))
                                                   (_g1613616186_
                                                    _g1613816189_)))
                                             _tl1614216196_)))
                                        (_g1613616186_ _g1613816189_)))))
                             (_g1613516208_ _L16121_))))
                       (_g1584116092_ _g1584416095_)))
                 _hd1585416116_
                 _hd1585116108_)
                (_g1584116092_ _g1584416095_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1584116092_ _g1584416095_))
                                            (_g1584116092_ _g1584416095_))))
                                    (_g1584116092_ _g1584416095_))))
                            (_g1584116092_ _g1584416095_)))))
                 (_g1584016211_ _hd15839_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (##pair? _rest1581915827_)
                                              (let ((_hd1582416217_
                                                     (##car _rest1581915827_))
                                                    (_tl1582516219_
                                                     (##cdr _rest1581915827_)))
                                                (let ((_hd16222_
                                                       _hd1582416217_))
                                                  (let ((_rest16224_
                                                         _tl1582516219_))
                                                    (_K1582316214_
                                                     _rest16224_
                                                     _hd16222_))))
                                              (_else1582115835_)))))))))
                        _lp15813_)
                      _rest15811_
                      '()
                      '()
                      '()))))
              (let ((_g1567215698_
                     (lambda (_g1567315695_)
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax"
                        _g1567315695_))))
                (let ((_g1567115705_
                       (lambda (_g1567315701_)
                         ((lambda () (gxc#xform-let-values% _stx15666_))))))
                  (let ((_g1567015808_
                         (lambda (_g1567315708_)
                           (if (gx#stx-pair? _g1567315708_)
                               (let ((_e1567615710_ (gx#stx-e _g1567315708_)))
                                 (let ((_hd1567715713_ (##car _e1567615710_))
                                       (_tl1567815715_ (##cdr _e1567615710_)))
                                   (if (gx#stx-pair? _tl1567815715_)
                                       (let ((_e1567915718_
                                              (gx#stx-e _tl1567815715_)))
                                         (let ((_hd1568015721_
                                                (##car _e1567915718_))
                                               (_tl1568115723_
                                                (##cdr _e1567915718_)))
                                           (if (gx#stx-pair/null?
                                                _hd1568015721_)
                                               (if (fx>= (gx#stx-length
                                                          _hd1568015721_)
                                                         '0)
                                                   (let ((_g19761_
                                                          (gx#syntax-split-splice
                                                           _hd1568015721_
                                                           '0)))
                                                     (begin
                                                       (let ((_g19762_
                                                              (values-count
                                                               _g19761_)))
                                                         (if (not (fx= _g19762_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g19762_)))
               (let ((_target1568215726_ (values-ref _g19761_ 0))
                     (_tl1568415728_ (values-ref _g19761_ 1)))
                 (if (gx#stx-null? _tl1568415728_)
                     (letrec ((_loop1568515731_
                               (lambda (_hd1568315734_ _bind1568915736_)
                                 (if (gx#stx-pair? _hd1568315734_)
                                     (let ((_e1568615739_
                                            (gx#stx-e _hd1568315734_)))
                                       (let ((_lp-hd1568715742_
                                              (##car _e1568615739_))
                                             (_lp-tl1568815744_
                                              (##cdr _e1568615739_)))
                                         (_loop1568515731_
                                          _lp-tl1568815744_
                                          (cons _lp-hd1568715742_
                                                _bind1568915736_))))
                                     (let ((_bind1569015747_
                                            (reverse _bind1568915736_)))
                                       (if (gx#stx-pair? _tl1568115723_)
                                           (let ((_e1569115750_
                                                  (gx#stx-e _tl1568115723_)))
                                             (let ((_hd1569215753_
                                                    (##car _e1569115750_))
                                                   (_tl1569315755_
                                                    (##cdr _e1569115750_)))
                                               (if (gx#stx-null?
                                                    _tl1569315755_)
                                                   ((lambda (_L15758_ _L15759_)
                                                      (if (ormap1 gxc#lift-top-lambda-binding?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (begin
                            '#!void
                            (foldr1 (lambda (_g1577915782_ _g1578015784_)
                                      (cons _g1577915782_ _g1578015784_))
                                    '()
                                    _L15759_)))
                  (call-with-parameters
                   (lambda ()
                     (let ((_g19763_
                            (_compile-bindings15669_
                             (begin
                               '#!void
                               (foldr1 (lambda (_g1578715790_ _g1578815792_)
                                         (cons _g1578715790_ _g1578815792_))
                                       '()
                                       _L15759_)))))
                       (begin
                         (let ((_g19764_ (values-count _g19763_)))
                           (if (not (fx= _g19764_ 3))
                               (error "Context expects 3 values" _g19764_)))
                         (let ((_lift115795_ (values-ref _g19763_ 0))
                               (_lift215796_ (values-ref _g19763_ 1))
                               (_hd15797_ (values-ref _g19763_ 2)))
                           (let ((_body15799_ (gxc#compile-e _L15758_)))
                             (let ((_expr15801_
                                    (gxc#xform-wrap-source
                                     (cons '%#let-values
                                           (cons _hd15797_
                                                 (cons _body15799_ '())))
                                     _stx15666_)))
                               (let ((_expr15803_
                                      (if (null? _lift215796_)
                                          _expr15801_
                                          (gxc#xform-wrap-source
                                           (cons '%#let-values
                                                 (cons _lift215796_
                                                       (cons _expr15801_ '())))
                                           _stx15666_))))
                                 (let ((_expr15805_
                                        (if (null? _lift115795_)
                                            _expr15803_
                                            (gxc#xform-wrap-source
                                             (cons '%#let-values
                                                   (cons _lift115795_
                                                         (cons _expr15803_
                                                               '())))
                                             _stx15666_))))
                                   (let () _expr15805_)))))))))
                   gx#current-expander-context
                   (let ((__obj19717 (make-object gx#local-context::t '5)))
                     (begin
                       (gx#local-context:::init!__0 __obj19717)
                       __obj19717)))
                  (_g1567115705_ _g1567315708_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd1569215753_
                                                    _bind1569015747_)
                                                   (_g1567115705_
                                                    _g1567315708_))))
                                           (_g1567115705_ _g1567315708_)))))))
                       (_loop1568515731_ _target1568215726_ '()))
                     (_g1567115705_ _g1567315708_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1567115705_
                                                    _g1567315708_))
                                               (_g1567115705_ _g1567315708_))))
                                       (_g1567115705_ _g1567315708_))))
                               (_g1567115705_ _g1567315708_)))))
                    (_g1567015808_ _stx15666_))))))))))
  (define gxc#lift-top-lambda-letrec-values%
    (lambda (_stx15098_)
      (let ((_bind-e__opt-lambda15648__1971219713_
             (lambda (_id15650_ _expr15651_ _compile?15652_)
               (cons (cons _id15650_ '())
                     (cons (if _compile?15652_
                               (gxc#compile-e _expr15651_)
                               _expr15651_)
                           '())))))
        (let ((_bind-e__0__1971419715_
               (lambda (_id15657_ _expr15658_)
                 (let ((_compile?15660_ '#t))
                   (_bind-e__opt-lambda15648__1971219713_
                    _id15657_
                    _expr15658_
                    _compile?15660_)))))
          (let ((_bind-e15100_
                 (lambda _g19778_
                   (let ((_g19777_ (length _g19778_)))
                     (cond ((fx= _g19777_ 2)
                            (apply _bind-e__0__1971419715_ _g19778_))
                           ((fx= _g19777_ 3)
                            (apply _bind-e__opt-lambda15648__1971219713_
                                   _g19778_))
                           (else
                            (##raise-wrong-number-of-arguments-exception
                             'case-lambda-dispatch
                             _g19778_)))))))
            (let ((_compile-bindings15101_
                   (lambda (_rest15236_)
                     ((letrec ((_lp15238_
                                (lambda (_rest15240_ _bind15241_)
                                  (let ((_rest1524215250_ _rest15240_))
                                    (let ((_E1524515254_
                                           (lambda ()
                                             (error '"No clause matching"
                                                    _rest1524215250_))))
                                      (let ((_else1524415258_
                                             (lambda ()
                                               (reverse _bind15241_))))
                                        (let ((_K1524615637_
                                               (lambda (_rest15261_ _hd15262_)
                                                 (let ((_g1526615302_
                                                        (lambda (_g1526715299_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax"
                                                           _g1526715299_))))
                                                   (let ((_g1526515343_
                                                          (lambda (_g1526715305_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1526715305_)
                        (let ((_e1529215307_ (gx#stx-e _g1526715305_)))
                          (let ((_hd1529315310_ (##car _e1529215307_))
                                (_tl1529415312_ (##cdr _e1529215307_)))
                            (if (gx#stx-pair? _tl1529415312_)
                                (let ((_e1529515315_
                                       (gx#stx-e _tl1529415312_)))
                                  (let ((_hd1529615318_ (##car _e1529515315_))
                                        (_tl1529715320_ (##cdr _e1529515315_)))
                                    (if (gx#stx-null? _tl1529715320_)
                                        ((lambda (_L15323_ _L15324_)
                                           (_lp15238_
                                            _rest15261_
                                            (cons (cons _L15324_
                                                        (cons (gxc#compile-e
                                                               _L15323_)
                                                              '()))
                                                  _bind15241_)))
                                         _hd1529615318_
                                         _hd1529315310_)
                                        (_g1526615302_ _g1526715305_))))
                                (_g1526615302_ _g1526715305_))))
                        (_g1526615302_ _g1526715305_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_g1526415515_
                                                            (lambda (_g1526715346_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g1526715346_)
                          (let ((_e1528115348_ (gx#stx-e _g1526715346_)))
                            (let ((_hd1528215351_ (##car _e1528115348_))
                                  (_tl1528315353_ (##cdr _e1528115348_)))
                              (if (gx#stx-pair? _hd1528215351_)
                                  (let ((_e1528415356_
                                         (gx#stx-e _hd1528215351_)))
                                    (let ((_hd1528515359_
                                           (##car _e1528415356_))
                                          (_tl1528615361_
                                           (##cdr _e1528415356_)))
                                      (if (gx#stx-null? _tl1528615361_)
                                          (if (gx#stx-pair? _tl1528315353_)
                                              (let ((_e1528715364_
                                                     (gx#stx-e
                                                      _tl1528315353_)))
                                                (let ((_hd1528815367_
                                                       (##car _e1528715364_))
                                                      (_tl1528915369_
                                                       (##cdr _e1528715364_)))
                                                  (if (gx#stx-null?
                                                       _tl1528915369_)
                                                      ((lambda (_L15372_
                                                                _L15373_)
                                                         (if (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L15373_)
                         (gxc#opt-lambda-expr? _L15372_)
                         '#f)
                     (let ((_g1538715417_
                            (lambda (_g1538815414_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g1538815414_))))
                       (let ((_g1538615512_
                              (lambda (_g1538815420_)
                                (if (gx#stx-pair? _g1538815420_)
                                    (let ((_e1539215422_
                                           (gx#stx-e _g1538815420_)))
                                      (let ((_hd1539315425_
                                             (##car _e1539215422_))
                                            (_tl1539415427_
                                             (##cdr _e1539215422_)))
                                        (if (gx#stx-pair? _tl1539415427_)
                                            (let ((_e1539515430_
                                                   (gx#stx-e _tl1539415427_)))
                                              (let ((_hd1539615433_
                                                     (##car _e1539515430_))
                                                    (_tl1539715435_
                                                     (##cdr _e1539515430_)))
                                                (if (gx#stx-pair?
                                                     _hd1539615433_)
                                                    (let ((_e1539815438_
                                                           (gx#stx-e
                                                            _hd1539615433_)))
                                                      (let ((_hd1539915441_
                                                             (##car _e1539815438_))
                                                            (_tl1540015443_
                                                             (##cdr _e1539815438_)))
                                                        (if (gx#stx-pair?
                                                             _hd1539915441_)
                                                            (let ((_e1540115446_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1539915441_)))
                      (let ((_hd1540215449_ (##car _e1540115446_))
                            (_tl1540315451_ (##cdr _e1540115446_)))
                        (if (gx#stx-pair? _hd1540215449_)
                            (let ((_e1540415454_ (gx#stx-e _hd1540215449_)))
                              (let ((_hd1540515457_ (##car _e1540415454_))
                                    (_tl1540615459_ (##cdr _e1540415454_)))
                                (if (gx#stx-null? _tl1540615459_)
                                    (if (gx#stx-pair? _tl1540315451_)
                                        (let ((_e1540715462_
                                               (gx#stx-e _tl1540315451_)))
                                          (let ((_hd1540815465_
                                                 (##car _e1540715462_))
                                                (_tl1540915467_
                                                 (##cdr _e1540715462_)))
                                            (if (gx#stx-null? _tl1540915467_)
                                                (if (gx#stx-null?
                                                     _tl1540015443_)
                                                    (if (gx#stx-pair?
                                                         _tl1539715435_)
                                                        (let ((_e1541015470_
                                                               (gx#stx-e
                                                                _tl1539715435_)))
                                                          (let ((_hd1541115473_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1541015470_))
                        (_tl1541215475_ (##cdr _e1541015470_)))
                    (if (gx#stx-null? _tl1541215475_)
                        ((lambda (_L15478_ _L15479_ _L15480_)
                           (let ((_lambda-id15504_
                                  (make-symbol
                                   (gx#stx-e _L15373_)
                                   '"__"
                                   (gx#stx-e _L15480_)
                                   (gensym '__))))
                             (let ((_lambda-id15506_
                                    (gx#core-quote-syntax__1
                                     _lambda-id15504_
                                     (gx#stx-source _stx15098_))))
                               (let ((_g19773_
                                      (gx#core-bind-runtime!__0
                                       _lambda-id15506_)))
                                 (let ((_new-case-lambda-expr15509_
                                        (gxc#apply-expression-subst
                                         _L15478_
                                         _L15480_
                                         _lambda-id15506_)))
                                   (let ()
                                     (begin
                                       (gxc#verbose
                                        '"lift opt-lambda dispatch "
                                        (gxc#generate-runtime-binding-id
                                         _L15373_)
                                        '" => "
                                        (gxc#generate-runtime-binding-id
                                         _lambda-id15506_))
                                       (_lp15238_
                                        (cons (_bind-e__opt-lambda15648__1971219713_
                                               _L15373_
                                               _new-case-lambda-expr15509_
                                               '#f)
                                              _rest15261_)
                                        (cons (_bind-e__0__1971419715_
                                               _lambda-id15506_
                                               _L15479_)
                                              _bind15241_)))))))))
                         _hd1541115473_
                         _hd1540815465_
                         _hd1540515457_)
                        (_g1538715417_ _g1538815420_))))
                (_g1538715417_ _g1538815420_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1538715417_
                                                     _g1538815420_))
                                                (_g1538715417_
                                                 _g1538815420_))))
                                        (_g1538715417_ _g1538815420_))
                                    (_g1538715417_ _g1538815420_))))
                            (_g1538715417_ _g1538815420_))))
                    (_g1538715417_ _g1538815420_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1538715417_
                                                     _g1538815420_))))
                                            (_g1538715417_ _g1538815420_))))
                                    (_g1538715417_ _g1538815420_)))))
                         (_g1538615512_ _L15372_)))
                     (_g1526515343_ _g1526715346_)))
               _hd1528815367_
               _hd1528515359_)
              (_g1526515343_ _g1526715346_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1526515343_ _g1526715346_))
                                          (_g1526515343_ _g1526715346_))))
                                  (_g1526515343_ _g1526715346_))))
                          (_g1526515343_ _g1526715346_)))))
               (let ((_g1526315634_
                      (lambda (_g1526715518_)
                        (if (gx#stx-pair? _g1526715518_)
                            (let ((_e1527015520_ (gx#stx-e _g1526715518_)))
                              (let ((_hd1527115523_ (##car _e1527015520_))
                                    (_tl1527215525_ (##cdr _e1527015520_)))
                                (if (gx#stx-pair? _hd1527115523_)
                                    (let ((_e1527315528_
                                           (gx#stx-e _hd1527115523_)))
                                      (let ((_hd1527415531_
                                             (##car _e1527315528_))
                                            (_tl1527515533_
                                             (##cdr _e1527315528_)))
                                        (if (gx#stx-null? _tl1527515533_)
                                            (if (gx#stx-pair? _tl1527215525_)
                                                (let ((_e1527615536_
                                                       (gx#stx-e
                                                        _tl1527215525_)))
                                                  (let ((_hd1527715539_
                                                         (##car _e1527615536_))
                                                        (_tl1527815541_
                                                         (##cdr _e1527615536_)))
                                                    (if (gx#stx-null?
                                                         _tl1527815541_)
                                                        ((lambda (_L15544_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L15545_)
                   (if (if (gx#identifier? _L15545_)
                           (gxc#case-lambda-expr? _L15544_)
                           '#f)
                       (let ((_g1556015574_
                              (lambda (_g1556115571_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g1556115571_))))
                         (let ((_g1555915609_
                                (lambda (_g1556115577_)
                                  (if (gx#stx-pair? _g1556115577_)
                                      (let ((_e1556715579_
                                             (gx#stx-e _g1556115577_)))
                                        (let ((_hd1556815582_
                                               (##car _e1556715579_))
                                              (_tl1556915584_
                                               (##cdr _e1556715579_)))
                                          ((lambda (_L15587_)
                                             (let ((_g19774_
                                                    (gxc#lift-case-lambda-clauses__opt-lambda16652
                                                     _stx15098_
                                                     _L15545_
                                                     _L15587_
                                                     '#t)))
                                               (begin
                                                 (let ((_g19775_
                                                        (values-count
                                                         _g19774_)))
                                                   (if (not (fx= _g19775_ 3))
                                                       (error "Context expects 3 values"
                                                              _g19775_)))
                                                 (let ((_ids15597_
                                                        (values-ref
                                                         _g19774_
                                                         0))
                                                       (_impls15598_
                                                        (values-ref
                                                         _g19774_
                                                         1))
                                                       (_clauses15599_
                                                        (values-ref
                                                         _g19774_
                                                         2)))
                                                   (let ((_g19776_
                                                          (for-each
                                                           gx#core-bind-runtime!
                                                           _ids15597_)))
                                                     (let ((_xbind15602_
                                                            (map _bind-e15100_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _ids15597_
                         _impls15598_)))
               (let ((_expr*15604_
                      (gxc#xform-wrap-source
                       (cons '%#case-lambda _clauses15599_)
                       (gx#datum->syntax__0 '#f 'case-lambda-expr))))
                 (let ((_bind*15606_
                        (_bind-e__opt-lambda15648__1971219713_
                         _L15545_
                         _expr*15604_
                         '#f)))
                   (let ()
                     (begin
                       (gxc#verbose
                        '"lift case-lambda clauses "
                        (gxc#generate-runtime-binding-id _L15545_)
                        '" => "
                        (map gxc#identifier-symbol _ids15597_))
                       (_lp15238_
                        _rest15261_
                        (cons _bind*15606_
                              (foldl1 cons
                                      _bind15241_
                                      _xbind15602_)))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _tl1556915584_)))
                                      (_g1556015574_ _g1556115577_)))))
                           (let ((_g1555815631_
                                  (lambda (_g1556115612_)
                                    (if (gx#stx-pair? _g1556115612_)
                                        (let ((_e1556315614_
                                               (gx#stx-e _g1556115612_)))
                                          (let ((_hd1556415617_
                                                 (##car _e1556315614_))
                                                (_tl1556515619_
                                                 (##cdr _e1556315614_)))
                                            ((lambda (_L15622_)
                                               (if (andmap1 gxc#dispatch-lambda-form?
                                                            _L15622_)
                                                   (_lp15238_
                                                    _rest15261_
                                                    (cons (_bind-e__opt-lambda15648__1971219713_
                                                           _L15545_
                                                           _L15544_
                                                           '#f)
                                                          _bind15241_))
                                                   (_g1555915609_
                                                    _g1556115612_)))
                                             _tl1556515619_)))
                                        (_g1555915609_ _g1556115612_)))))
                             (_g1555815631_ _L15544_))))
                       (_g1526415515_ _g1526715518_)))
                 _hd1527715539_
                 _hd1527415531_)
                (_g1526415515_ _g1526715518_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1526415515_ _g1526715518_))
                                            (_g1526415515_ _g1526715518_))))
                                    (_g1526415515_ _g1526715518_))))
                            (_g1526415515_ _g1526715518_)))))
                 (_g1526315634_ _hd15262_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (##pair? _rest1524215250_)
                                              (let ((_hd1524715640_
                                                     (##car _rest1524215250_))
                                                    (_tl1524815642_
                                                     (##cdr _rest1524215250_)))
                                                (let ((_hd15645_
                                                       _hd1524715640_))
                                                  (let ((_rest15647_
                                                         _tl1524815642_))
                                                    (_K1524615637_
                                                     _rest15647_
                                                     _hd15645_))))
                                              (_else1524415258_)))))))))
                        _lp15238_)
                      _rest15236_
                      '()))))
              (let ((_g1510415131_
                     (lambda (_g1510515128_)
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax"
                        _g1510515128_))))
                (let ((_g1510315138_
                       (lambda (_g1510515134_)
                         ((lambda () (gxc#xform-let-values% _stx15098_))))))
                  (let ((_g1510215233_
                         (lambda (_g1510515141_)
                           (if (gx#stx-pair? _g1510515141_)
                               (let ((_e1510915143_ (gx#stx-e _g1510515141_)))
                                 (let ((_hd1511015146_ (##car _e1510915143_))
                                       (_tl1511115148_ (##cdr _e1510915143_)))
                                   (if (gx#stx-pair? _tl1511115148_)
                                       (let ((_e1511215151_
                                              (gx#stx-e _tl1511115148_)))
                                         (let ((_hd1511315154_
                                                (##car _e1511215151_))
                                               (_tl1511415156_
                                                (##cdr _e1511215151_)))
                                           (if (gx#stx-pair/null?
                                                _hd1511315154_)
                                               (if (fx>= (gx#stx-length
                                                          _hd1511315154_)
                                                         '0)
                                                   (let ((_g19771_
                                                          (gx#syntax-split-splice
                                                           _hd1511315154_
                                                           '0)))
                                                     (begin
                                                       (let ((_g19772_
                                                              (values-count
                                                               _g19771_)))
                                                         (if (not (fx= _g19772_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g19772_)))
               (let ((_target1511515159_ (values-ref _g19771_ 0))
                     (_tl1511715161_ (values-ref _g19771_ 1)))
                 (if (gx#stx-null? _tl1511715161_)
                     (letrec ((_loop1511815164_
                               (lambda (_hd1511615167_ _bind1512215169_)
                                 (if (gx#stx-pair? _hd1511615167_)
                                     (let ((_e1511915172_
                                            (gx#stx-e _hd1511615167_)))
                                       (let ((_lp-hd1512015175_
                                              (##car _e1511915172_))
                                             (_lp-tl1512115177_
                                              (##cdr _e1511915172_)))
                                         (_loop1511815164_
                                          _lp-tl1512115177_
                                          (cons _lp-hd1512015175_
                                                _bind1512215169_))))
                                     (let ((_bind1512315180_
                                            (reverse _bind1512215169_)))
                                       (if (gx#stx-pair? _tl1511415156_)
                                           (let ((_e1512415183_
                                                  (gx#stx-e _tl1511415156_)))
                                             (let ((_hd1512515186_
                                                    (##car _e1512415183_))
                                                   (_tl1512615188_
                                                    (##cdr _e1512415183_)))
                                               (if (gx#stx-null?
                                                    _tl1512615188_)
                                                   ((lambda (_L15191_
                                                             _L15192_
                                                             _L15193_)
                                                      (if (ormap1 gxc#lift-top-lambda-binding?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (begin
                            '#!void
                            (foldr1 (lambda (_g1521415217_ _g1521515219_)
                                      (cons _g1521415217_ _g1521515219_))
                                    '()
                                    _L15192_)))
                  (call-with-parameters
                   (lambda ()
                     (let ((_hd15230_
                            (_compile-bindings15101_
                             (begin
                               '#!void
                               (foldr1 (lambda (_g1522215225_ _g1522315227_)
                                         (cons _g1522215225_ _g1522315227_))
                                       '()
                                       _L15192_))))
                           (_body15231_ (gxc#compile-e _L15191_)))
                       (gxc#xform-wrap-source
                        (cons _L15193_ (cons _hd15230_ (cons _body15231_ '())))
                        _stx15098_)))
                   gx#current-expander-context
                   (let ((__obj19718 (make-object gx#local-context::t '5)))
                     (begin
                       (gx#local-context:::init!__0 __obj19718)
                       __obj19718)))
                  (_g1510315138_ _g1510515141_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd1512515186_
                                                    _bind1512315180_
                                                    _hd1511015146_)
                                                   (_g1510315138_
                                                    _g1510515141_))))
                                           (_g1510315138_ _g1510515141_)))))))
                       (_loop1511815164_ _target1511515159_ '()))
                     (_g1510315138_ _g1510515141_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1510315138_
                                                    _g1510515141_))
                                               (_g1510315138_ _g1510515141_))))
                                       (_g1510315138_ _g1510515141_))))
                               (_g1510315138_ _g1510515141_)))))
                    (_g1510215233_ _stx15098_))))))))))
  (define gxc#lift-top-lambda-binding?
    (lambda (_bind15019_)
      (let ((_g1502215039_
             (lambda (_g1502315036_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1502315036_))))
        (let ((_g1502115046_ (lambda (_g1502315042_) ((lambda () '#f)))))
          (let ((_g1502015095_
                 (lambda (_g1502315049_)
                   (if (gx#stx-pair? _g1502315049_)
                       (let ((_e1502615051_ (gx#stx-e _g1502315049_)))
                         (let ((_hd1502715054_ (##car _e1502615051_))
                               (_tl1502815056_ (##cdr _e1502615051_)))
                           (if (gx#stx-pair? _hd1502715054_)
                               (let ((_e1502915059_ (gx#stx-e _hd1502715054_)))
                                 (let ((_hd1503015062_ (##car _e1502915059_))
                                       (_tl1503115064_ (##cdr _e1502915059_)))
                                   (if (gx#stx-null? _tl1503115064_)
                                       (if (gx#stx-pair? _tl1502815056_)
                                           (let ((_e1503215067_
                                                  (gx#stx-e _tl1502815056_)))
                                             (let ((_hd1503315070_
                                                    (##car _e1503215067_))
                                                   (_tl1503415072_
                                                    (##cdr _e1503215067_)))
                                               (if (gx#stx-null?
                                                    _tl1503415072_)
                                                   ((lambda (_L15075_ _L15076_)
                                                      (if (gx#identifier?
                                                           _L15076_)
                                                          (let ((_$e15092_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gxc#case-lambda-expr? _L15075_)))
                    (if _$e15092_ _$e15092_ (gxc#opt-lambda-expr? _L15075_)))
                  '#f))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd1503315070_
                                                    _hd1503015062_)
                                                   (_g1502115046_
                                                    _g1502315049_))))
                                           (_g1502115046_ _g1502315049_))
                                       (_g1502115046_ _g1502315049_))))
                               (_g1502115046_ _g1502315049_))))
                       (_g1502115046_ _g1502315049_)))))
            (_g1502015095_ _bind15019_))))))
  (define gxc#expression-subst-ref%
    (lambda (_stx14957_ _id14958_ _new-id14959_)
      (let ((_g1496214975_
             (lambda (_g1496314972_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1496314972_))))
        (let ((_g1496114982_
               (lambda (_g1496314978_) ((lambda () _stx14957_)))))
          (let ((_g1496015016_
                 (lambda (_g1496314985_)
                   (if (gx#stx-pair? _g1496314985_)
                       (let ((_e1496514987_ (gx#stx-e _g1496314985_)))
                         (let ((_hd1496614990_ (##car _e1496514987_))
                               (_tl1496714992_ (##cdr _e1496514987_)))
                           (if (gx#stx-pair? _tl1496714992_)
                               (let ((_e1496814995_ (gx#stx-e _tl1496714992_)))
                                 (let ((_hd1496914998_ (##car _e1496814995_))
                                       (_tl1497015000_ (##cdr _e1496814995_)))
                                   (if (gx#stx-null? _tl1497015000_)
                                       ((lambda (_L15003_)
                                          (if (gx#free-identifier=?
                                               _L15003_
                                               _id14958_)
                                              (gxc#xform-wrap-source
                                               (cons '%#ref
                                                     (cons _new-id14959_ '()))
                                               _stx14957_)
                                              (_g1496114982_ _g1496314985_)))
                                        _hd1496914998_)
                                       (_g1496114982_ _g1496314985_))))
                               (_g1496114982_ _g1496314985_))))
                       (_g1496114982_ _g1496314985_)))))
            (_g1496015016_ _stx14957_))))))
  (define gxc#collect-type-define-values%
    (lambda (_stx14813_)
      (let ((_g1481614847_
             (lambda (_g1481714844_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1481714844_))))
        (let ((_g1481514892_
               (lambda (_g1481714850_)
                 (if (gx#stx-pair? _g1481714850_)
                     (let ((_e1483414852_ (gx#stx-e _g1481714850_)))
                       (let ((_hd1483514855_ (##car _e1483414852_))
                             (_tl1483614857_ (##cdr _e1483414852_)))
                         (if (gx#stx-pair? _tl1483614857_)
                             (let ((_e1483714860_ (gx#stx-e _tl1483614857_)))
                               (let ((_hd1483814863_ (##car _e1483714860_))
                                     (_tl1483914865_ (##cdr _e1483714860_)))
                                 (if (gx#stx-pair? _tl1483914865_)
                                     (let ((_e1484014868_
                                            (gx#stx-e _tl1483914865_)))
                                       (let ((_hd1484114871_
                                              (##car _e1484014868_))
                                             (_tl1484214873_
                                              (##cdr _e1484014868_)))
                                         (if (gx#stx-null? _tl1484214873_)
                                             ((lambda (_L14876_ _L14877_)
                                                (gxc#compile-e _L14876_))
                                              _hd1484114871_
                                              _hd1483814863_)
                                             (_g1481614847_ _g1481714850_))))
                                     (_g1481614847_ _g1481714850_))))
                             (_g1481614847_ _g1481714850_))))
                     (_g1481614847_ _g1481714850_)))))
          (let ((_g1481414954_
                 (lambda (_g1481714895_)
                   (if (gx#stx-pair? _g1481714895_)
                       (let ((_e1482014897_ (gx#stx-e _g1481714895_)))
                         (let ((_hd1482114900_ (##car _e1482014897_))
                               (_tl1482214902_ (##cdr _e1482014897_)))
                           (if (gx#stx-pair? _tl1482214902_)
                               (let ((_e1482314905_ (gx#stx-e _tl1482214902_)))
                                 (let ((_hd1482414908_ (##car _e1482314905_))
                                       (_tl1482514910_ (##cdr _e1482314905_)))
                                   (if (gx#stx-pair? _hd1482414908_)
                                       (let ((_e1482614913_
                                              (gx#stx-e _hd1482414908_)))
                                         (let ((_hd1482714916_
                                                (##car _e1482614913_))
                                               (_tl1482814918_
                                                (##cdr _e1482614913_)))
                                           (if (gx#stx-null? _tl1482814918_)
                                               (if (gx#stx-pair?
                                                    _tl1482514910_)
                                                   (let ((_e1482914921_
                                                          (gx#stx-e
                                                           _tl1482514910_)))
                                                     (let ((_hd1483014924_
                                                            (##car _e1482914921_))
                                                           (_tl1483114926_
                                                            (##cdr _e1482914921_)))
                                                       (if (gx#stx-null?
                                                            _tl1483114926_)
                                                           ((lambda (_L14929_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L14930_)
                      (if (gx#identifier? _L14930_)
                          (let ((_sym14946_
                                 (gxc#generate-runtime-binding-id _L14930_)))
                            (begin
                              (if (table-ref
                                   (gxc#current-compile-mutators)
                                   _sym14946_
                                   '#f)
                                  (gxc#verbose
                                   '"skipping type declaration for mutable binding "
                                   _sym14946_)
                                  (let ((_type1494714949_
                                         (gxc#apply-basic-expression-type
                                          _L14929_)))
                                    (if _type1494714949_
                                        (let ((_type14952_ _type1494714949_))
                                          (gxc#optimizer-declare-type!__0
                                           _sym14946_
                                           _type14952_))
                                        '#f)))
                              (gxc#compile-e _L14929_)))
                          (_g1481514892_ _g1481714895_)))
                    _hd1483014924_
                    _hd1482714916_)
                   (_g1481514892_ _g1481714895_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1481514892_
                                                    _g1481714895_))
                                               (_g1481514892_ _g1481714895_))))
                                       (_g1481514892_ _g1481714895_))))
                               (_g1481514892_ _g1481714895_))))
                       (_g1481514892_ _g1481714895_)))))
            (_g1481414954_ _stx14813_))))))
  (define gxc#collect-type-let-values%
    (lambda (_stx14598_)
      (let ((_collect-e14600_
             (lambda (_hd14757_ _expr14758_)
               (let ((_g1476114771_
                      (lambda (_g1476214768_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax"
                         _g1476214768_))))
                 (let ((_g1476014778_
                        (lambda (_g1476214774_) ((lambda () '#!void)))))
                   (let ((_g1475914810_
                          (lambda (_g1476214781_)
                            (if (gx#stx-pair? _g1476214781_)
                                (let ((_e1476414783_ (gx#stx-e _g1476214781_)))
                                  (let ((_hd1476514786_ (##car _e1476414783_))
                                        (_tl1476614788_ (##cdr _e1476414783_)))
                                    (if (gx#stx-null? _tl1476614788_)
                                        ((lambda (_L14791_)
                                           (if (gx#identifier? _L14791_)
                                               (let ((_sym14802_
                                                      (gxc#generate-runtime-binding-id
                                                       _L14791_)))
                                                 (if (table-ref
                                                      (gxc#current-compile-mutators)
                                                      _sym14802_
                                                      '#f)
                                                     (gxc#verbose
                                                      '"skipping type declaration for mutable binding "
                                                      _sym14802_)
                                                     (let ((_type1480314805_
                                                            (gxc#apply-basic-expression-type
                                                             _expr14758_)))
                                                       (if _type1480314805_
                                                           (let ((_type14808_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _type1480314805_))
                     (gxc#optimizer-declare-type!__opt-lambda19491
                      _sym14802_
                      _type14808_
                      '#t))
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1476014778_ _g1476214781_)))
                                         _hd1476514786_)
                                        (_g1476014778_ _g1476214781_))))
                                (_g1476014778_ _g1476214781_)))))
                     (_g1475914810_ _hd14757_)))))))
        (let ((_g1460214637_
               (lambda (_g1460314634_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1460314634_))))
          (let ((_g1460114754_
                 (lambda (_g1460314640_)
                   (if (gx#stx-pair? _g1460314640_)
                       (let ((_e1460714642_ (gx#stx-e _g1460314640_)))
                         (let ((_hd1460814645_ (##car _e1460714642_))
                               (_tl1460914647_ (##cdr _e1460714642_)))
                           (if (gx#stx-pair? _tl1460914647_)
                               (let ((_e1461014650_ (gx#stx-e _tl1460914647_)))
                                 (let ((_hd1461114653_ (##car _e1461014650_))
                                       (_tl1461214655_ (##cdr _e1461014650_)))
                                   (if (gx#stx-pair/null? _hd1461114653_)
                                       (if (fx>= (gx#stx-length _hd1461114653_)
                                                 '0)
                                           (let ((_g19779_
                                                  (gx#syntax-split-splice
                                                   _hd1461114653_
                                                   '0)))
                                             (begin
                                               (let ((_g19780_
                                                      (values-count _g19779_)))
                                                 (if (not (fx= _g19780_ 2))
                                                     (error "Context expects 2 values"
                                                            _g19780_)))
                                               (let ((_target1461314658_
                                                      (values-ref _g19779_ 0))
                                                     (_tl1461514660_
                                                      (values-ref _g19779_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl1461514660_)
                                                     (letrec ((_loop1461614663_
                                                               (lambda (_hd1461414666_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _expr1462014668_
                                _hd1462114670_)
                         (if (gx#stx-pair? _hd1461414666_)
                             (let ((_e1461714673_ (gx#stx-e _hd1461414666_)))
                               (let ((_lp-hd1461814676_ (##car _e1461714673_))
                                     (_lp-tl1461914678_ (##cdr _e1461714673_)))
                                 (if (gx#stx-pair? _lp-hd1461814676_)
                                     (let ((_e1462414681_
                                            (gx#stx-e _lp-hd1461814676_)))
                                       (let ((_hd1462514684_
                                              (##car _e1462414681_))
                                             (_tl1462614686_
                                              (##cdr _e1462414681_)))
                                         (if (gx#stx-pair? _tl1462614686_)
                                             (let ((_e1462714689_
                                                    (gx#stx-e _tl1462614686_)))
                                               (let ((_hd1462814692_
                                                      (##car _e1462714689_))
                                                     (_tl1462914694_
                                                      (##cdr _e1462714689_)))
                                                 (if (gx#stx-null?
                                                      _tl1462914694_)
                                                     (_loop1461614663_
                                                      _lp-tl1461914678_
                                                      (cons _hd1462814692_
                                                            _expr1462014668_)
                                                      (cons _hd1462514684_
                                                            _hd1462114670_))
                                                     (_g1460214637_
                                                      _g1460314640_))))
                                             (_g1460214637_ _g1460314640_))))
                                     (_g1460214637_ _g1460314640_))))
                             (let ((_expr1462214697_
                                    (reverse _expr1462014668_))
                                   (_hd1462314699_ (reverse _hd1462114670_)))
                               (if (gx#stx-pair? _tl1461214655_)
                                   (let ((_e1463014702_
                                          (gx#stx-e _tl1461214655_)))
                                     (let ((_hd1463114705_
                                            (##car _e1463014702_))
                                           (_tl1463214707_
                                            (##cdr _e1463014702_)))
                                       (if (gx#stx-null? _tl1463214707_)
                                           ((lambda (_L14710_
                                                     _L14711_
                                                     _L14712_)
                                              (begin
                                                (for-each
                                                 _collect-e14600_
                                                 (begin
                                                   '#!void
                                                   (foldr1 (lambda (_g1473214735_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g1473314737_)
                     (cons _g1473214735_ _g1473314737_))
                   '()
                   _L14712_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (begin
                                                   '#!void
                                                   (foldr1 (lambda (_g1473914742_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g1474014744_)
                     (cons _g1473914742_ _g1474014744_))
                   '()
                   _L14711_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (for-each
                                                 gxc#compile-e
                                                 (begin
                                                   '#!void
                                                   (foldr1 (lambda (_g1474614749_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g1474714751_)
                     (cons _g1474614749_ _g1474714751_))
                   '()
                   _L14711_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (gxc#compile-e _L14710_)))
                                            _hd1463114705_
                                            _expr1462214697_
                                            _hd1462314699_)
                                           (_g1460214637_ _g1460314640_))))
                                   (_g1460214637_ _g1460314640_)))))))
               (_loop1461614663_ _target1461314658_ '() '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1460214637_
                                                      _g1460314640_)))))
                                           (_g1460214637_ _g1460314640_))
                                       (_g1460214637_ _g1460314640_))))
                               (_g1460214637_ _g1460314640_))))
                       (_g1460214637_ _g1460314640_)))))
            (_g1460114754_ _stx14598_))))))
  (define gxc#collect-type-call%
    (lambda (_stx14152_)
      (let ((_g1415614258_
             (lambda (_g1415714255_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1415714255_))))
        (let ((_g1415514265_ (lambda (_g1415714261_) ((lambda () '#!void)))))
          (let ((_g1415414415_
                 (lambda (_g1415714268_)
                   (if (gx#stx-pair? _g1415714268_)
                       (let ((_e1421514270_ (gx#stx-e _g1415714268_)))
                         (let ((_hd1421614273_ (##car _e1421514270_))
                               (_tl1421714275_ (##cdr _e1421514270_)))
                           (if (gx#stx-pair? _tl1421714275_)
                               (let ((_e1421814278_ (gx#stx-e _tl1421714275_)))
                                 (let ((_hd1421914281_ (##car _e1421814278_))
                                       (_tl1422014283_ (##cdr _e1421814278_)))
                                   (if (gx#stx-pair? _hd1421914281_)
                                       (let ((_e1422114286_
                                              (gx#stx-e _hd1421914281_)))
                                         (let ((_hd1422214289_
                                                (##car _e1422114286_))
                                               (_tl1422314291_
                                                (##cdr _e1422114286_)))
                                           (if (gx#identifier? _hd1422214289_)
                                               (if (gx#stx-eq?
                                                    '%#ref
                                                    _hd1422214289_)
                                                   (if (gx#stx-pair?
                                                        _tl1422314291_)
                                                       (let ((_e1422414294_
                                                              (gx#stx-e
                                                               _tl1422314291_)))
                                                         (let ((_hd1422514297_
                                                                (##car _e1422414294_))
                                                               (_tl1422614299_
                                                                (##cdr _e1422414294_)))
                                                           (if (gx#stx-null?
                                                                _tl1422614299_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl1422014283_)
                           (let ((_e1422714302_ (gx#stx-e _tl1422014283_)))
                             (let ((_hd1422814305_ (##car _e1422714302_))
                                   (_tl1422914307_ (##cdr _e1422714302_)))
                               (if (gx#stx-pair? _hd1422814305_)
                                   (let ((_e1423014310_
                                          (gx#stx-e _hd1422814305_)))
                                     (let ((_hd1423114313_
                                            (##car _e1423014310_))
                                           (_tl1423214315_
                                            (##cdr _e1423014310_)))
                                       (if (gx#identifier? _hd1423114313_)
                                           (if (gx#stx-eq?
                                                '%#ref
                                                _hd1423114313_)
                                               (if (gx#stx-pair?
                                                    _tl1423214315_)
                                                   (let ((_e1423314318_
                                                          (gx#stx-e
                                                           _tl1423214315_)))
                                                     (let ((_hd1423414321_
                                                            (##car _e1423314318_))
                                                           (_tl1423514323_
                                                            (##cdr _e1423314318_)))
                                                       (if (gx#stx-null?
                                                            _tl1423514323_)
                                                           (if (gx#stx-pair?
                                                                _tl1422914307_)
                                                               (let ((_e1423614326_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl1422914307_)))
                         (let ((_hd1423714329_ (##car _e1423614326_))
                               (_tl1423814331_ (##cdr _e1423614326_)))
                           (if (gx#stx-pair? _hd1423714329_)
                               (let ((_e1423914334_ (gx#stx-e _hd1423714329_)))
                                 (let ((_hd1424014337_ (##car _e1423914334_))
                                       (_tl1424114339_ (##cdr _e1423914334_)))
                                   (if (gx#identifier? _hd1424014337_)
                                       (if (gx#stx-eq? '%#quote _hd1424014337_)
                                           (if (gx#stx-pair? _tl1424114339_)
                                               (let ((_e1424214342_
                                                      (gx#stx-e
                                                       _tl1424114339_)))
                                                 (let ((_hd1424314345_
                                                        (##car _e1424214342_))
                                                       (_tl1424414347_
                                                        (##cdr _e1424214342_)))
                                                   (if (gx#stx-null?
                                                        _tl1424414347_)
                                                       (if (gx#stx-pair?
                                                            _tl1423814331_)
                                                           (let ((_e1424514350_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl1423814331_)))
                     (let ((_hd1424614353_ (##car _e1424514350_))
                           (_tl1424714355_ (##cdr _e1424514350_)))
                       (if (gx#stx-pair? _hd1424614353_)
                           (let ((_e1424814358_ (gx#stx-e _hd1424614353_)))
                             (let ((_hd1424914361_ (##car _e1424814358_))
                                   (_tl1425014363_ (##cdr _e1424814358_)))
                               (if (gx#identifier? _hd1424914361_)
                                   (if (gx#stx-eq? '%#ref _hd1424914361_)
                                       (if (gx#stx-pair? _tl1425014363_)
                                           (let ((_e1425114366_
                                                  (gx#stx-e _tl1425014363_)))
                                             (let ((_hd1425214369_
                                                    (##car _e1425114366_))
                                                   (_tl1425314371_
                                                    (##cdr _e1425114366_)))
                                               (if (gx#stx-null?
                                                    _tl1425314371_)
                                                   (if (gx#stx-null?
                                                        _tl1424714355_)
                                                       ((lambda (_L14374_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L14375_
                         _L14376_
                         _L14377_)
                  (if (eq? (gxc#generate-runtime-binding-id
                            (gx#datum->syntax__0 '#f '-bind-method))
                           'bind-method!)
                      (gxc#optimizer-declare-method!__opt-lambda19467
                       (gxc#generate-runtime-binding-id _L14376_)
                       (gx#stx-e _L14375_)
                       (gxc#generate-runtime-binding-id _L14374_)
                       '#f)
                      (_g1415514265_ _g1415714268_)))
                _hd1425214369_
                _hd1424314345_
                _hd1423414321_
                _hd1422514297_)
               (_g1415514265_ _g1415714268_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1415514265_
                                                    _g1415714268_))))
                                           (_g1415514265_ _g1415714268_))
                                       (_g1415514265_ _g1415714268_))
                                   (_g1415514265_ _g1415714268_))))
                           (_g1415514265_ _g1415714268_))))
                   (_g1415514265_ _g1415714268_))
               (_g1415514265_ _g1415714268_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1415514265_ _g1415714268_))
                                           (_g1415514265_ _g1415714268_))
                                       (_g1415514265_ _g1415714268_))))
                               (_g1415514265_ _g1415714268_))))
                       (_g1415514265_ _g1415714268_))
                   (_g1415514265_ _g1415714268_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1415514265_
                                                    _g1415714268_))
                                               (_g1415514265_ _g1415714268_))
                                           (_g1415514265_ _g1415714268_))))
                                   (_g1415514265_ _g1415714268_))))
                           (_g1415514265_ _g1415714268_))
                       (_g1415514265_ _g1415714268_))))
               (_g1415514265_ _g1415714268_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1415514265_
                                                    _g1415714268_))
                                               (_g1415514265_ _g1415714268_))))
                                       (_g1415514265_ _g1415714268_))))
                               (_g1415514265_ _g1415714268_))))
                       (_g1415514265_ _g1415714268_)))))
            (let ((_g1415314595_
                   (lambda (_g1415714418_)
                     (if (gx#stx-pair? _g1415714418_)
                         (let ((_e1416314420_ (gx#stx-e _g1415714418_)))
                           (let ((_hd1416414423_ (##car _e1416314420_))
                                 (_tl1416514425_ (##cdr _e1416314420_)))
                             (if (gx#stx-pair? _tl1416514425_)
                                 (let ((_e1416614428_
                                        (gx#stx-e _tl1416514425_)))
                                   (let ((_hd1416714431_ (##car _e1416614428_))
                                         (_tl1416814433_
                                          (##cdr _e1416614428_)))
                                     (if (gx#stx-pair? _hd1416714431_)
                                         (let ((_e1416914436_
                                                (gx#stx-e _hd1416714431_)))
                                           (let ((_hd1417014439_
                                                  (##car _e1416914436_))
                                                 (_tl1417114441_
                                                  (##cdr _e1416914436_)))
                                             (if (gx#identifier?
                                                  _hd1417014439_)
                                                 (if (gx#stx-eq?
                                                      '%#ref
                                                      _hd1417014439_)
                                                     (if (gx#stx-pair?
                                                          _tl1417114441_)
                                                         (let ((_e1417214444_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1417114441_)))
                   (let ((_hd1417314447_ (##car _e1417214444_))
                         (_tl1417414449_ (##cdr _e1417214444_)))
                     (if (gx#stx-null? _tl1417414449_)
                         (if (gx#stx-pair? _tl1416814433_)
                             (let ((_e1417514452_ (gx#stx-e _tl1416814433_)))
                               (let ((_hd1417614455_ (##car _e1417514452_))
                                     (_tl1417714457_ (##cdr _e1417514452_)))
                                 (if (gx#stx-pair? _hd1417614455_)
                                     (let ((_e1417814460_
                                            (gx#stx-e _hd1417614455_)))
                                       (let ((_hd1417914463_
                                              (##car _e1417814460_))
                                             (_tl1418014465_
                                              (##cdr _e1417814460_)))
                                         (if (gx#identifier? _hd1417914463_)
                                             (if (gx#stx-eq?
                                                  '%#ref
                                                  _hd1417914463_)
                                                 (if (gx#stx-pair?
                                                      _tl1418014465_)
                                                     (let ((_e1418114468_
                                                            (gx#stx-e
                                                             _tl1418014465_)))
                                                       (let ((_hd1418214471_
                                                              (##car _e1418114468_))
                                                             (_tl1418314473_
                                                              (##cdr _e1418114468_)))
                                                         (if (gx#stx-null?
                                                              _tl1418314473_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1417714457_)
                         (let ((_e1418414476_ (gx#stx-e _tl1417714457_)))
                           (let ((_hd1418514479_ (##car _e1418414476_))
                                 (_tl1418614481_ (##cdr _e1418414476_)))
                             (if (gx#stx-pair? _hd1418514479_)
                                 (let ((_e1418714484_
                                        (gx#stx-e _hd1418514479_)))
                                   (let ((_hd1418814487_ (##car _e1418714484_))
                                         (_tl1418914489_
                                          (##cdr _e1418714484_)))
                                     (if (gx#identifier? _hd1418814487_)
                                         (if (gx#stx-eq?
                                              '%#quote
                                              _hd1418814487_)
                                             (if (gx#stx-pair? _tl1418914489_)
                                                 (let ((_e1419014492_
                                                        (gx#stx-e
                                                         _tl1418914489_)))
                                                   (let ((_hd1419114495_
                                                          (##car _e1419014492_))
                                                         (_tl1419214497_
                                                          (##cdr _e1419014492_)))
                                                     (if (gx#stx-null?
                                                          _tl1419214497_)
                                                         (if (gx#stx-pair?
                                                              _tl1418614481_)
                                                             (let ((_e1419314500_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl1418614481_)))
                       (let ((_hd1419414503_ (##car _e1419314500_))
                             (_tl1419514505_ (##cdr _e1419314500_)))
                         (if (gx#stx-pair? _hd1419414503_)
                             (let ((_e1419614508_ (gx#stx-e _hd1419414503_)))
                               (let ((_hd1419714511_ (##car _e1419614508_))
                                     (_tl1419814513_ (##cdr _e1419614508_)))
                                 (if (gx#identifier? _hd1419714511_)
                                     (if (gx#stx-eq? '%#ref _hd1419714511_)
                                         (if (gx#stx-pair? _tl1419814513_)
                                             (let ((_e1419914516_
                                                    (gx#stx-e _tl1419814513_)))
                                               (let ((_hd1420014519_
                                                      (##car _e1419914516_))
                                                     (_tl1420114521_
                                                      (##cdr _e1419914516_)))
                                                 (if (gx#stx-null?
                                                      _tl1420114521_)
                                                     (if (gx#stx-pair?
                                                          _tl1419514505_)
                                                         (let ((_e1420214524_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1419514505_)))
                   (let ((_hd1420314527_ (##car _e1420214524_))
                         (_tl1420414529_ (##cdr _e1420214524_)))
                     (if (gx#stx-pair? _hd1420314527_)
                         (let ((_e1420514532_ (gx#stx-e _hd1420314527_)))
                           (let ((_hd1420614535_ (##car _e1420514532_))
                                 (_tl1420714537_ (##cdr _e1420514532_)))
                             (if (gx#identifier? _hd1420614535_)
                                 (if (gx#stx-eq? '%#quote _hd1420614535_)
                                     (if (gx#stx-pair? _tl1420714537_)
                                         (let ((_e1420814540_
                                                (gx#stx-e _tl1420714537_)))
                                           (let ((_hd1420914543_
                                                  (##car _e1420814540_))
                                                 (_tl1421014545_
                                                  (##cdr _e1420814540_)))
                                             (if (gx#stx-null? _tl1421014545_)
                                                 (if (gx#stx-null?
                                                      _tl1420414529_)
                                                     ((lambda (_L14548_
                                                               _L14549_
                                                               _L14550_
                                                               _L14551_
                                                               _L14552_)
                                                        (if (eq? (gxc#generate-runtime-binding-id
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L14552_)
                         'bind-method!)
                    (gxc#optimizer-declare-method!__opt-lambda19467
                     (gxc#generate-runtime-binding-id _L14551_)
                     (gx#stx-e _L14550_)
                     (gxc#generate-runtime-binding-id _L14549_)
                     (gx#stx-e _L14548_))
                    (_g1415414415_ _g1415714418_)))
              _hd1420914543_
              _hd1420014519_
              _hd1419114495_
              _hd1418214471_
              _hd1417314447_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1415414415_
                                                      _g1415714418_))
                                                 (_g1415414415_
                                                  _g1415714418_))))
                                         (_g1415414415_ _g1415714418_))
                                     (_g1415414415_ _g1415714418_))
                                 (_g1415414415_ _g1415714418_))))
                         (_g1415414415_ _g1415714418_))))
                 (_g1415414415_ _g1415714418_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1415414415_
                                                      _g1415714418_))))
                                             (_g1415414415_ _g1415714418_))
                                         (_g1415414415_ _g1415714418_))
                                     (_g1415414415_ _g1415714418_))))
                             (_g1415414415_ _g1415714418_))))
                     (_g1415414415_ _g1415714418_))
                 (_g1415414415_ _g1415714418_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1415414415_ _g1415714418_))
                                             (_g1415414415_ _g1415714418_))
                                         (_g1415414415_ _g1415714418_))))
                                 (_g1415414415_ _g1415714418_))))
                         (_g1415414415_ _g1415714418_))
                     (_g1415414415_ _g1415714418_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1415414415_
                                                      _g1415714418_))
                                                 (_g1415414415_ _g1415714418_))
                                             (_g1415414415_ _g1415714418_))))
                                     (_g1415414415_ _g1415714418_))))
                             (_g1415414415_ _g1415714418_))
                         (_g1415414415_ _g1415714418_))))
                 (_g1415414415_ _g1415714418_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1415414415_
                                                      _g1415714418_))
                                                 (_g1415414415_
                                                  _g1415714418_))))
                                         (_g1415414415_ _g1415714418_))))
                                 (_g1415414415_ _g1415714418_))))
                         (_g1415414415_ _g1415714418_)))))
              (_g1415314595_ _stx14152_)))))))
  (define gxc#basic-expression-type-begin%
    (lambda (_stx14092_)
      (let ((_g1409514108_
             (lambda (_g1409614105_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1409614105_))))
        (let ((_g1409414115_ (lambda (_g1409614111_) ((lambda () '#f)))))
          (let ((_g1409314149_
                 (lambda (_g1409614118_)
                   (if (gx#stx-pair? _g1409614118_)
                       (let ((_e1409814120_ (gx#stx-e _g1409614118_)))
                         (let ((_hd1409914123_ (##car _e1409814120_))
                               (_tl1410014125_ (##cdr _e1409814120_)))
                           (if (gx#stx-pair? _tl1410014125_)
                               (let ((_e1410114128_ (gx#stx-e _tl1410014125_)))
                                 (let ((_hd1410214131_ (##car _e1410114128_))
                                       (_tl1410314133_ (##cdr _e1410114128_)))
                                   (if (gx#stx-null? _tl1410314133_)
                                       ((lambda (_L14136_)
                                          (gxc#compile-e _L14136_))
                                        _hd1410214131_)
                                       (_g1409414115_ _g1409614118_))))
                               (_g1409414115_ _g1409614118_))))
                       (_g1409414115_ _g1409614118_)))))
            (_g1409314149_ _stx14092_))))))
  (define gxc#basic-expression-type-lambda%
    (lambda (_stx13517_)
      (let ((_g1352213643_
             (lambda (_g1352313640_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1352313640_))))
        (let ((_g1352113650_ (lambda (_g1352313646_) ((lambda () '#f)))))
          (let ((_g1352013674_
                 (lambda (_g1352313653_)
                   (if (gx#stx-pair? _g1352313653_)
                       (let ((_e1363613655_ (gx#stx-e _g1352313653_)))
                         (let ((_hd1363713658_ (##car _e1363613655_))
                               (_tl1363813660_ (##cdr _e1363613655_)))
                           ((lambda (_L13663_)
                              (if (gxc#dispatch-lambda-form? _L13663_)
                                  (let ((__obj19719
                                         (make-object gxc#!lambda::t '5)))
                                    (begin
                                      (gxc#!lambda:::init!__0
                                       __obj19719
                                       'lambda
                                       (gxc#lambda-form-arity _L13663_)
                                       (gxc#dispatch-lambda-form-delegate
                                        _L13663_))
                                      __obj19719))
                                  (_g1352113650_ _g1352313653_)))
                            _tl1363813660_)))
                       (_g1352113650_ _g1352313653_)))))
            (let ((_g1351913904_
                   (lambda (_g1352313677_)
                     (if (gx#stx-pair? _g1352313677_)
                         (let ((_e1358113679_ (gx#stx-e _g1352313677_)))
                           (let ((_hd1358213682_ (##car _e1358113679_))
                                 (_tl1358313684_ (##cdr _e1358113679_)))
                             (if (gx#stx-pair? _tl1358313684_)
                                 (let ((_e1358413687_
                                        (gx#stx-e _tl1358313684_)))
                                   (let ((_hd1358513690_ (##car _e1358413687_))
                                         (_tl1358613692_
                                          (##cdr _e1358413687_)))
                                     (if (gx#stx-pair/null? _hd1358513690_)
                                         (if (fx>= (gx#stx-length
                                                    _hd1358513690_)
                                                   '0)
                                             (let ((_g19781_
                                                    (gx#syntax-split-splice
                                                     _hd1358513690_
                                                     '0)))
                                               (begin
                                                 (let ((_g19782_
                                                        (values-count
                                                         _g19781_)))
                                                   (if (not (fx= _g19782_ 2))
                                                       (error "Context expects 2 values"
                                                              _g19782_)))
                                                 (let ((_target1358713695_
                                                        (values-ref
                                                         _g19781_
                                                         0))
                                                       (_tl1358913697_
                                                        (values-ref
                                                         _g19781_
                                                         1)))
                                                   (if (gx#stx-null?
                                                        _tl1358913697_)
                                                       (letrec ((_loop1359013700_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd1358813703_ _arg1359413705_)
                           (if (gx#stx-pair? _hd1358813703_)
                               (let ((_e1359113708_ (gx#stx-e _hd1358813703_)))
                                 (let ((_lp-hd1359213711_
                                        (##car _e1359113708_))
                                       (_lp-tl1359313713_
                                        (##cdr _e1359113708_)))
                                   (_loop1359013700_
                                    _lp-tl1359313713_
                                    (cons _lp-hd1359213711_ _arg1359413705_))))
                               (let ((_arg1359513716_
                                      (reverse _arg1359413705_)))
                                 (if (gx#stx-pair? _tl1358613692_)
                                     (let ((_e1359613719_
                                            (gx#stx-e _tl1358613692_)))
                                       (let ((_hd1359713722_
                                              (##car _e1359613719_))
                                             (_tl1359813724_
                                              (##cdr _e1359613719_)))
                                         (if (gx#stx-pair? _hd1359713722_)
                                             (let ((_e1359913727_
                                                    (gx#stx-e _hd1359713722_)))
                                               (let ((_hd1360013730_
                                                      (##car _e1359913727_))
                                                     (_tl1360113732_
                                                      (##cdr _e1359913727_)))
                                                 (if (gx#identifier?
                                                      _hd1360013730_)
                                                     (if (gx#stx-eq?
                                                          '%#call
                                                          _hd1360013730_)
                                                         (if (gx#stx-pair?
                                                              _tl1360113732_)
                                                             (let ((_e1360213735_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl1360113732_)))
                       (let ((_hd1360313738_ (##car _e1360213735_))
                             (_tl1360413740_ (##cdr _e1360213735_)))
                         (if (gx#stx-pair? _hd1360313738_)
                             (let ((_e1360513743_ (gx#stx-e _hd1360313738_)))
                               (let ((_hd1360613746_ (##car _e1360513743_))
                                     (_tl1360713748_ (##cdr _e1360513743_)))
                                 (if (gx#identifier? _hd1360613746_)
                                     (if (gx#stx-eq? '%#ref _hd1360613746_)
                                         (if (gx#stx-pair? _tl1360713748_)
                                             (let ((_e1360813751_
                                                    (gx#stx-e _tl1360713748_)))
                                               (let ((_hd1360913754_
                                                      (##car _e1360813751_))
                                                     (_tl1361013756_
                                                      (##cdr _e1360813751_)))
                                                 (if (gx#stx-null?
                                                      _tl1361013756_)
                                                     (if (gx#stx-pair?
                                                          _tl1360413740_)
                                                         (let ((_e1361113759_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1360413740_)))
                   (let ((_hd1361213762_ (##car _e1361113759_))
                         (_tl1361313764_ (##cdr _e1361113759_)))
                     (if (gx#stx-pair? _hd1361213762_)
                         (let ((_e1361413767_ (gx#stx-e _hd1361213762_)))
                           (let ((_hd1361513770_ (##car _e1361413767_))
                                 (_tl1361613772_ (##cdr _e1361413767_)))
                             (if (gx#identifier? _hd1361513770_)
                                 (if (gx#stx-eq? '%#ref _hd1361513770_)
                                     (if (gx#stx-pair? _tl1361613772_)
                                         (let ((_e1361713775_
                                                (gx#stx-e _tl1361613772_)))
                                           (let ((_hd1361813778_
                                                  (##car _e1361713775_))
                                                 (_tl1361913780_
                                                  (##cdr _e1361713775_)))
                                             (if (gx#stx-null? _tl1361913780_)
                                                 (if (gx#stx-pair/null?
                                                      _tl1361313764_)
                                                     (if (fx>= (gx#stx-length
                                                                _tl1361313764_)
                                                               '0)
                                                         (let ((_g19783_
                                                                (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1361313764_
                         '0)))
                   (begin
                     (let ((_g19784_ (values-count _g19783_)))
                       (if (not (fx= _g19784_ 2))
                           (error "Context expects 2 values" _g19784_)))
                     (let ((_target1362013783_ (values-ref _g19783_ 0))
                           (_tl1362213785_ (values-ref _g19783_ 1)))
                       (if (gx#stx-null? _tl1362213785_)
                           (letrec ((_loop1362313788_
                                     (lambda (_hd1362113791_ _xarg1362713793_)
                                       (if (gx#stx-pair? _hd1362113791_)
                                           (let ((_e1362413796_
                                                  (gx#stx-e _hd1362113791_)))
                                             (let ((_lp-hd1362513799_
                                                    (##car _e1362413796_))
                                                   (_lp-tl1362613801_
                                                    (##cdr _e1362413796_)))
                                               (if (gx#stx-pair?
                                                    _lp-hd1362513799_)
                                                   (let ((_e1362913804_
                                                          (gx#stx-e
                                                           _lp-hd1362513799_)))
                                                     (let ((_hd1363013807_
                                                            (##car _e1362913804_))
                                                           (_tl1363113809_
                                                            (##cdr _e1362913804_)))
                                                       (if (gx#identifier?
                                                            _hd1363013807_)
                                                           (if (gx#stx-eq?
                                                                '%#ref
                                                                _hd1363013807_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl1363113809_)
                           (let ((_e1363213812_ (gx#stx-e _tl1363113809_)))
                             (let ((_hd1363313815_ (##car _e1363213812_))
                                   (_tl1363413817_ (##cdr _e1363213812_)))
                               (if (gx#stx-null? _tl1363413817_)
                                   (_loop1362313788_
                                    _lp-tl1362613801_
                                    (cons _hd1363313815_ _xarg1362713793_))
                                   (_g1352013674_ _g1352313677_))))
                           (_g1352013674_ _g1352313677_))
                       (_g1352013674_ _g1352313677_))
                   (_g1352013674_ _g1352313677_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1352013674_
                                                    _g1352313677_))))
                                           (let ((_xarg1362813820_
                                                  (reverse _xarg1362713793_)))
                                             (if (gx#stx-null? _tl1359813724_)
                                                 ((lambda (_L13823_
                                                           _L13824_
                                                           _L13825_
                                                           _L13826_)
                                                    (if (if (gx#identifier-list?
                                                             (begin
                                                               '#!void
                                                               (foldr1 (lambda (_g1386313866_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                        _g1386413868_)
                                 (cons _g1386313866_ _g1386413868_))
                               '()
                               _L13826_)))
                    (if (eq? (gxc#generate-runtime-binding-id _L13825_)
                             'make-struct-instance)
                        (if (fx= (length (begin
                                           '#!void
                                           (foldr1 (lambda (_g1387013873_
                                                            _g1387113875_)
                                                     (cons _g1387013873_
                                                           _g1387113875_))
                                                   '()
                                                   _L13826_)))
                                 (length (begin
                                           '#!void
                                           (foldr1 (lambda (_g1387713880_
                                                            _g1387813882_)
                                                     (cons _g1387713880_
                                                           _g1387813882_))
                                                   '()
                                                   _L13823_))))
                            (andmap gx#free-identifier=?
                                    (begin
                                      '#!void
                                      (foldr1 (lambda (_g1388413887_
                                                       _g1388513889_)
                                                (cons _g1388413887_
                                                      _g1388513889_))
                                              '()
                                              _L13826_))
                                    (begin
                                      '#!void
                                      (foldr1 (lambda (_g1389113894_
                                                       _g1389213896_)
                                                (cons _g1389113894_
                                                      _g1389213896_))
                                              '()
                                              _L13823_)))
                            '#f)
                        '#f)
                    '#f)
                (let ((_type-t13899_
                       (gxc#generate-runtime-binding-id _L13824_)))
                  (let ((_type13901_
                         (gxc#optimizer-resolve-type _type-t13899_)))
                    (let ()
                      (if (##structure-instance-of?
                           _type13901_
                           'gxc#!struct-type::t)
                          (##structure gxc#!struct-cons::t _type-t13899_)
                          '#f))))
                (_g1352013674_ _g1352313677_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _xarg1362813820_
                                                  _hd1361813778_
                                                  _hd1360913754_
                                                  _arg1359513716_)
                                                 (_g1352013674_
                                                  _g1352313677_)))))))
                             (_loop1362313788_ _target1362013783_ '()))
                           (_g1352013674_ _g1352313677_)))))
                 (_g1352013674_ _g1352313677_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1352013674_
                                                      _g1352313677_))
                                                 (_g1352013674_
                                                  _g1352313677_))))
                                         (_g1352013674_ _g1352313677_))
                                     (_g1352013674_ _g1352313677_))
                                 (_g1352013674_ _g1352313677_))))
                         (_g1352013674_ _g1352313677_))))
                 (_g1352013674_ _g1352313677_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1352013674_
                                                      _g1352313677_))))
                                             (_g1352013674_ _g1352313677_))
                                         (_g1352013674_ _g1352313677_))
                                     (_g1352013674_ _g1352313677_))))
                             (_g1352013674_ _g1352313677_))))
                     (_g1352013674_ _g1352313677_))
                 (_g1352013674_ _g1352313677_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1352013674_
                                                      _g1352313677_))))
                                             (_g1352013674_ _g1352313677_))))
                                     (_g1352013674_ _g1352313677_)))))))
                 (_loop1359013700_ _target1358713695_ '()))
               (_g1352013674_ _g1352313677_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g1352013674_ _g1352313677_))
                                         (_g1352013674_ _g1352313677_))))
                                 (_g1352013674_ _g1352313677_))))
                         (_g1352013674_ _g1352313677_)))))
              (let ((_g1351814089_
                     (lambda (_g1352313907_)
                       (if (gx#stx-pair? _g1352313907_)
                           (let ((_e1352913909_ (gx#stx-e _g1352313907_)))
                             (let ((_hd1353013912_ (##car _e1352913909_))
                                   (_tl1353113914_ (##cdr _e1352913909_)))
                               (if (gx#stx-pair? _tl1353113914_)
                                   (let ((_e1353213917_
                                          (gx#stx-e _tl1353113914_)))
                                     (let ((_hd1353313920_
                                            (##car _e1353213917_))
                                           (_tl1353413922_
                                            (##cdr _e1353213917_)))
                                       (if (gx#stx-pair? _tl1353413922_)
                                           (let ((_e1353513925_
                                                  (gx#stx-e _tl1353413922_)))
                                             (let ((_hd1353613928_
                                                    (##car _e1353513925_))
                                                   (_tl1353713930_
                                                    (##cdr _e1353513925_)))
                                               (if (gx#stx-pair?
                                                    _hd1353613928_)
                                                   (let ((_e1353813933_
                                                          (gx#stx-e
                                                           _hd1353613928_)))
                                                     (let ((_hd1353913936_
                                                            (##car _e1353813933_))
                                                           (_tl1354013938_
                                                            (##cdr _e1353813933_)))
                                                       (if (gx#identifier?
                                                            _hd1353913936_)
                                                           (if (gx#stx-eq?
                                                                '%#call
                                                                _hd1353913936_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl1354013938_)
                           (let ((_e1354113941_ (gx#stx-e _tl1354013938_)))
                             (let ((_hd1354213944_ (##car _e1354113941_))
                                   (_tl1354313946_ (##cdr _e1354113941_)))
                               (if (gx#stx-pair? _hd1354213944_)
                                   (let ((_e1354413949_
                                          (gx#stx-e _hd1354213944_)))
                                     (let ((_hd1354513952_
                                            (##car _e1354413949_))
                                           (_tl1354613954_
                                            (##cdr _e1354413949_)))
                                       (if (gx#identifier? _hd1354513952_)
                                           (if (gx#stx-eq?
                                                '%#ref
                                                _hd1354513952_)
                                               (if (gx#stx-pair?
                                                    _tl1354613954_)
                                                   (let ((_e1354713957_
                                                          (gx#stx-e
                                                           _tl1354613954_)))
                                                     (let ((_hd1354813960_
                                                            (##car _e1354713957_))
                                                           (_tl1354913962_
                                                            (##cdr _e1354713957_)))
                                                       (if (gx#stx-null?
                                                            _tl1354913962_)
                                                           (if (gx#stx-pair?
                                                                _tl1354313946_)
                                                               (let ((_e1355013965_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl1354313946_)))
                         (let ((_hd1355113968_ (##car _e1355013965_))
                               (_tl1355213970_ (##cdr _e1355013965_)))
                           (if (gx#stx-pair? _hd1355113968_)
                               (let ((_e1355313973_ (gx#stx-e _hd1355113968_)))
                                 (let ((_hd1355413976_ (##car _e1355313973_))
                                       (_tl1355513978_ (##cdr _e1355313973_)))
                                   (if (gx#identifier? _hd1355413976_)
                                       (if (gx#stx-eq? '%#ref _hd1355413976_)
                                           (if (gx#stx-pair? _tl1355513978_)
                                               (let ((_e1355613981_
                                                      (gx#stx-e
                                                       _tl1355513978_)))
                                                 (let ((_hd1355713984_
                                                        (##car _e1355613981_))
                                                       (_tl1355813986_
                                                        (##cdr _e1355613981_)))
                                                   (if (gx#stx-null?
                                                        _tl1355813986_)
                                                       (if (gx#stx-pair?
                                                            _tl1355213970_)
                                                           (let ((_e1355913989_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl1355213970_)))
                     (let ((_hd1356013992_ (##car _e1355913989_))
                           (_tl1356113994_ (##cdr _e1355913989_)))
                       (if (gx#stx-pair? _hd1356013992_)
                           (let ((_e1356213997_ (gx#stx-e _hd1356013992_)))
                             (let ((_hd1356314000_ (##car _e1356213997_))
                                   (_tl1356414002_ (##cdr _e1356213997_)))
                               (if (gx#identifier? _hd1356314000_)
                                   (if (gx#stx-eq? '%#ref _hd1356314000_)
                                       (if (gx#stx-pair? _tl1356414002_)
                                           (let ((_e1356514005_
                                                  (gx#stx-e _tl1356414002_)))
                                             (let ((_hd1356614008_
                                                    (##car _e1356514005_))
                                                   (_tl1356714010_
                                                    (##cdr _e1356514005_)))
                                               (if (gx#stx-null?
                                                    _tl1356714010_)
                                                   (if (gx#stx-pair?
                                                        _tl1356113994_)
                                                       (let ((_e1356814013_
                                                              (gx#stx-e
                                                               _tl1356113994_)))
                                                         (let ((_hd1356914016_
                                                                (##car _e1356814013_))
                                                               (_tl1357014018_
                                                                (##cdr _e1356814013_)))
                                                           (if (gx#stx-pair?
                                                                _hd1356914016_)
                                                               (let ((_e1357114021_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd1356914016_)))
                         (let ((_hd1357214024_ (##car _e1357114021_))
                               (_tl1357314026_ (##cdr _e1357114021_)))
                           (if (gx#identifier? _hd1357214024_)
                               (if (gx#stx-eq? '%#ref _hd1357214024_)
                                   (if (gx#stx-pair? _tl1357314026_)
                                       (let ((_e1357414029_
                                              (gx#stx-e _tl1357314026_)))
                                         (let ((_hd1357514032_
                                                (##car _e1357414029_))
                                               (_tl1357614034_
                                                (##cdr _e1357414029_)))
                                           (if (gx#stx-null? _tl1357614034_)
                                               (if (gx#stx-null?
                                                    _tl1357014018_)
                                                   (if (gx#stx-null?
                                                        _tl1353713930_)
                                                       ((lambda (_L14037_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L14038_
                         _L14039_
                         _L14040_
                         _L14041_)
                  (if (if (gx#identifier? _L14041_)
                          (if (eq? (gxc#generate-runtime-binding-id _L14040_)
                                   'apply)
                              (if (eq? (gxc#generate-runtime-binding-id
                                        _L14039_)
                                       'make-struct-instance)
                                  (gx#free-identifier=? _L14041_ _L14037_)
                                  '#f)
                              '#f)
                          '#f)
                      (let ((_type-t14084_
                             (gxc#generate-runtime-binding-id _L14038_)))
                        (let ((_type14086_
                               (gxc#optimizer-resolve-type _type-t14084_)))
                          (let ()
                            (if (##structure-instance-of?
                                 _type14086_
                                 'gxc#!struct-type::t)
                                (##structure gxc#!struct-cons::t _type-t14084_)
                                '#f))))
                      (_g1351913904_ _g1352313907_)))
                _hd1357514032_
                _hd1356614008_
                _hd1355713984_
                _hd1354813960_
                _hd1353313920_)
               (_g1351913904_ _g1352313907_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1351913904_
                                                    _g1352313907_))
                                               (_g1351913904_ _g1352313907_))))
                                       (_g1351913904_ _g1352313907_))
                                   (_g1351913904_ _g1352313907_))
                               (_g1351913904_ _g1352313907_))))
                       (_g1351913904_ _g1352313907_))))
               (_g1351913904_ _g1352313907_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1351913904_
                                                    _g1352313907_))))
                                           (_g1351913904_ _g1352313907_))
                                       (_g1351913904_ _g1352313907_))
                                   (_g1351913904_ _g1352313907_))))
                           (_g1351913904_ _g1352313907_))))
                   (_g1351913904_ _g1352313907_))
               (_g1351913904_ _g1352313907_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1351913904_ _g1352313907_))
                                           (_g1351913904_ _g1352313907_))
                                       (_g1351913904_ _g1352313907_))))
                               (_g1351913904_ _g1352313907_))))
                       (_g1351913904_ _g1352313907_))
                   (_g1351913904_ _g1352313907_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1351913904_
                                                    _g1352313907_))
                                               (_g1351913904_ _g1352313907_))
                                           (_g1351913904_ _g1352313907_))))
                                   (_g1351913904_ _g1352313907_))))
                           (_g1351913904_ _g1352313907_))
                       (_g1351913904_ _g1352313907_))
                   (_g1351913904_ _g1352313907_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1351913904_
                                                    _g1352313907_))))
                                           (_g1351913904_ _g1352313907_))))
                                   (_g1351913904_ _g1352313907_))))
                           (_g1351913904_ _g1352313907_)))))
                (_g1351814089_ _stx13517_))))))))
  (define gxc#basic-expression-type-case-lambda%
    (lambda (_stx13463_)
      (let ((_clause-e13465_
             (lambda (_form13515_)
               (let ((__obj19720 (make-object gxc#!lambda::t '5)))
                 (begin
                   (gxc#!lambda:::init!__0
                    __obj19720
                    'case-lambda-clause
                    (gxc#lambda-form-arity _form13515_)
                    (gxc#dispatch-lambda-form-delegate _form13515_))
                   __obj19720)))))
        (let ((_g1346813478_
               (lambda (_g1346913475_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1346913475_))))
          (let ((_g1346713485_ (lambda (_g1346913481_) ((lambda () '#f)))))
            (let ((_g1346613512_
                   (lambda (_g1346913488_)
                     (if (gx#stx-pair? _g1346913488_)
                         (let ((_e1347113490_ (gx#stx-e _g1346913488_)))
                           (let ((_hd1347213493_ (##car _e1347113490_))
                                 (_tl1347313495_ (##cdr _e1347113490_)))
                             ((lambda (_L13498_)
                                (if (andmap1 gxc#dispatch-lambda-form?
                                             _L13498_)
                                    (let ((_clauses13510_
                                           (map _clause-e13465_ _L13498_)))
                                      (##structure
                                       gxc#!case-lambda::t
                                       'case-lambda
                                       _clauses13510_))
                                    (_g1346713485_ _g1346913488_)))
                              _tl1347313495_)))
                         (_g1346713485_ _g1346913488_)))))
              (_g1346613512_ _stx13463_)))))))
  (define gxc#basic-expression-type-builtin (make-hash-table-eq))
  (define gxc#basic-expression-type-call%
    (lambda (_stx13368_)
      (let ((_g1337113391_
             (lambda (_g1337213388_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1337213388_))))
        (let ((_g1337013398_ (lambda (_g1337213394_) ((lambda () '#f)))))
          (let ((_g1336913460_
                 (lambda (_g1337213401_)
                   (if (gx#stx-pair? _g1337213401_)
                       (let ((_e1337513403_ (gx#stx-e _g1337213401_)))
                         (let ((_hd1337613406_ (##car _e1337513403_))
                               (_tl1337713408_ (##cdr _e1337513403_)))
                           (if (gx#stx-pair? _tl1337713408_)
                               (let ((_e1337813411_ (gx#stx-e _tl1337713408_)))
                                 (let ((_hd1337913414_ (##car _e1337813411_))
                                       (_tl1338013416_ (##cdr _e1337813411_)))
                                   (if (gx#stx-pair? _hd1337913414_)
                                       (let ((_e1338113419_
                                              (gx#stx-e _hd1337913414_)))
                                         (let ((_hd1338213422_
                                                (##car _e1338113419_))
                                               (_tl1338313424_
                                                (##cdr _e1338113419_)))
                                           (if (gx#identifier? _hd1338213422_)
                                               (if (gx#stx-eq?
                                                    '%#ref
                                                    _hd1338213422_)
                                                   (if (gx#stx-pair?
                                                        _tl1338313424_)
                                                       (let ((_e1338413427_
                                                              (gx#stx-e
                                                               _tl1338313424_)))
                                                         (let ((_hd1338513430_
                                                                (##car _e1338413427_))
                                                               (_tl1338613432_
                                                                (##cdr _e1338413427_)))
                                                           (if (gx#stx-null?
                                                                _tl1338613432_)
                                                               ((lambda (_L13435_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _L13436_)
                          (let ((_type-e1345313455_
                                 (table-ref
                                  gxc#basic-expression-type-builtin
                                  (gxc#generate-runtime-binding-id _L13436_)
                                  '#f)))
                            (if _type-e1345313455_
                                (let ((_type-e13458_ _type-e1345313455_))
                                  (_type-e13458_ _stx13368_ _L13435_))
                                '#f)))
                        _tl1338013416_
                        _hd1338513430_)
                       (_g1337013398_ _g1337213401_))))
               (_g1337013398_ _g1337213401_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1337013398_
                                                    _g1337213401_))
                                               (_g1337013398_ _g1337213401_))))
                                       (_g1337013398_ _g1337213401_))))
                               (_g1337013398_ _g1337213401_))))
                       (_g1337013398_ _g1337213401_)))))
            (_g1336913460_ _stx13368_))))))
  (define gxc#basic-expression-type-make-struct-type
    (lambda (_stx12853_ _args12854_)
      (let ((_g1285812971_
             (lambda (_g1285912968_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1285912968_))))
        (let ((_g1285712978_
               (lambda (_g1285912974_)
                 ((lambda ()
                    (begin
                      (gxc#verbose
                       '"make-struct-type: can't infer type "
                       (gx#syntax->datum _stx12853_))
                      '#f))))))
          (let ((_g1285613185_
                 (lambda (_g1285912981_)
                   (if (gx#stx-pair? _g1285912981_)
                       (let ((_e1291912983_ (gx#stx-e _g1285912981_)))
                         (let ((_hd1292012986_ (##car _e1291912983_))
                               (_tl1292112988_ (##cdr _e1291912983_)))
                           (if (gx#stx-pair? _hd1292012986_)
                               (let ((_e1292212991_ (gx#stx-e _hd1292012986_)))
                                 (let ((_hd1292312994_ (##car _e1292212991_))
                                       (_tl1292412996_ (##cdr _e1292212991_)))
                                   (if (gx#identifier? _hd1292312994_)
                                       (if (gx#stx-eq? '%#quote _hd1292312994_)
                                           (if (gx#stx-pair? _tl1292412996_)
                                               (let ((_e1292512999_
                                                      (gx#stx-e
                                                       _tl1292412996_)))
                                                 (let ((_hd1292613002_
                                                        (##car _e1292512999_))
                                                       (_tl1292713004_
                                                        (##cdr _e1292512999_)))
                                                   (if (gx#stx-null?
                                                        _tl1292713004_)
                                                       (if (gx#stx-pair?
                                                            _tl1292112988_)
                                                           (let ((_e1292813007_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl1292112988_)))
                     (let ((_hd1292913010_ (##car _e1292813007_))
                           (_tl1293013012_ (##cdr _e1292813007_)))
                       (if (gx#stx-pair? _hd1292913010_)
                           (let ((_e1293113015_ (gx#stx-e _hd1292913010_)))
                             (let ((_hd1293213018_ (##car _e1293113015_))
                                   (_tl1293313020_ (##cdr _e1293113015_)))
                               (if (gx#identifier? _hd1293213018_)
                                   (if (gx#stx-eq? '%#ref _hd1293213018_)
                                       (if (gx#stx-pair? _tl1293313020_)
                                           (let ((_e1293413023_
                                                  (gx#stx-e _tl1293313020_)))
                                             (let ((_hd1293513026_
                                                    (##car _e1293413023_))
                                                   (_tl1293613028_
                                                    (##cdr _e1293413023_)))
                                               (if (gx#stx-null?
                                                    _tl1293613028_)
                                                   (if (gx#stx-pair?
                                                        _tl1293013012_)
                                                       (let ((_e1293713031_
                                                              (gx#stx-e
                                                               _tl1293013012_)))
                                                         (let ((_hd1293813034_
                                                                (##car _e1293713031_))
                                                               (_tl1293913036_
                                                                (##cdr _e1293713031_)))
                                                           (if (gx#stx-pair?
                                                                _hd1293813034_)
                                                               (let ((_e1294013039_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd1293813034_)))
                         (let ((_hd1294113042_ (##car _e1294013039_))
                               (_tl1294213044_ (##cdr _e1294013039_)))
                           (if (gx#identifier? _hd1294113042_)
                               (if (gx#stx-eq? '%#quote _hd1294113042_)
                                   (if (gx#stx-pair? _tl1294213044_)
                                       (let ((_e1294313047_
                                              (gx#stx-e _tl1294213044_)))
                                         (let ((_hd1294413050_
                                                (##car _e1294313047_))
                                               (_tl1294513052_
                                                (##cdr _e1294313047_)))
                                           (if (gx#stx-null? _tl1294513052_)
                                               (if (gx#stx-pair?
                                                    _tl1293913036_)
                                                   (let ((_e1294613055_
                                                          (gx#stx-e
                                                           _tl1293913036_)))
                                                     (let ((_hd1294713058_
                                                            (##car _e1294613055_))
                                                           (_tl1294813060_
                                                            (##cdr _e1294613055_)))
                                                       (if (gx#stx-pair?
                                                            _tl1294813060_)
                                                           (let ((_e1294913063_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl1294813060_)))
                     (let ((_hd1295013066_ (##car _e1294913063_))
                           (_tl1295113068_ (##cdr _e1294913063_)))
                       (if (gx#stx-pair? _hd1295013066_)
                           (let ((_e1295213071_ (gx#stx-e _hd1295013066_)))
                             (let ((_hd1295313074_ (##car _e1295213071_))
                                   (_tl1295413076_ (##cdr _e1295213071_)))
                               (if (gx#identifier? _hd1295313074_)
                                   (if (gx#stx-eq? '%#quote _hd1295313074_)
                                       (if (gx#stx-pair? _tl1295413076_)
                                           (let ((_e1295513079_
                                                  (gx#stx-e _tl1295413076_)))
                                             (let ((_hd1295613082_
                                                    (##car _e1295513079_))
                                                   (_tl1295713084_
                                                    (##cdr _e1295513079_)))
                                               (if (gx#stx-null?
                                                    _tl1295713084_)
                                                   (if (gx#stx-pair?
                                                        _tl1295113068_)
                                                       (let ((_e1295813087_
                                                              (gx#stx-e
                                                               _tl1295113068_)))
                                                         (let ((_hd1295913090_
                                                                (##car _e1295813087_))
                                                               (_tl1296013092_
                                                                (##cdr _e1295813087_)))
                                                           (if (gx#stx-pair?
                                                                _hd1295913090_)
                                                               (let ((_e1296113095_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd1295913090_)))
                         (let ((_hd1296213098_ (##car _e1296113095_))
                               (_tl1296313100_ (##cdr _e1296113095_)))
                           (if (gx#identifier? _hd1296213098_)
                               (if (gx#stx-eq? '%#quote _hd1296213098_)
                                   (if (gx#stx-pair? _tl1296313100_)
                                       (let ((_e1296413103_
                                              (gx#stx-e _tl1296313100_)))
                                         (let ((_hd1296513106_
                                                (##car _e1296413103_))
                                               (_tl1296613108_
                                                (##cdr _e1296413103_)))
                                           (if (gx#stx-null? _tl1296613108_)
                                               (if (gx#stx-null?
                                                    _tl1296013092_)
                                                   ((lambda (_L13111_
                                                             _L13112_
                                                             _L13113_
                                                             _L13114_
                                                             _L13115_
                                                             _L13116_)
                                                      (let ((_super-t13162_
                                                             (if (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L13115_)
                         (gxc#generate-runtime-binding-id _L13115_)
                         '#f)))
                (let ((_super-type13164_
                       (if _super-t13162_
                           (gxc#optimizer-resolve-type _super-t13162_)
                           '#f)))
                  (let ()
                    (begin
                      (if (if _super-type13164_
                              (not (##structure-instance-of?
                                    _super-type13164_
                                    'gxc#!struct-type::t))
                              '#f)
                          (gxc#raise-compile-error
                           '"Illegal struct-type construction; invalid super type"
                           _stx12853_
                           _L13115_)
                          '#!void)
                      (let ((_fields13180_ (gx#stx-e _L13114_))
                            (_xfields13181_
                             (if _super-type13164_
                                 (let ((_super-fields1316613169_
                                        (##structure-ref
                                         _super-type13164_
                                         '3
                                         gxc#!struct-type::t
                                         '#f))
                                       (_super-xfields1316713171_
                                        (##structure-ref
                                         _super-type13164_
                                         '4
                                         gxc#!struct-type::t
                                         '#f)))
                                   (if _super-fields1316613169_
                                       (if _super-xfields1316713171_
                                           (let ((_super-fields13174_
                                                  _super-fields1316613169_)
                                                 (_super-xfields13175_
                                                  _super-xfields1316713171_))
                                             (fx+ _super-fields13174_
                                                  _super-xfields13175_))
                                           '#f)
                                       '#f))
                                 '#f))
                            (_plist13182_ (gx#stx-e _L13112_))
                            (_ctor13183_
                             (let ((_$e13177_ (gx#stx-e _L13111_)))
                               (if _$e13177_
                                   (values _$e13177_)
                                   (if _super-type13164_
                                       (##structure-ref
                                        _super-type13164_
                                        '5
                                        gxc#!struct-type::t
                                        '#f)
                                       (if _super-t13162_ '#!void '#f))))))
                        (let ((__obj19721
                               (make-object gxc#!struct-type::t '7)))
                          (begin
                            (gxc#!struct-type:::init!
                             __obj19721
                             (gx#stx-e _L13116_)
                             _super-t13162_
                             _fields13180_
                             _xfields13181_
                             _ctor13183_
                             _plist13182_)
                            __obj19721))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd1296513106_
                                                    _hd1295613082_
                                                    _hd1294713058_
                                                    _hd1294413050_
                                                    _hd1293513026_
                                                    _hd1292613002_)
                                                   (_g1285712978_
                                                    _g1285912981_))
                                               (_g1285712978_ _g1285912981_))))
                                       (_g1285712978_ _g1285912981_))
                                   (_g1285712978_ _g1285912981_))
                               (_g1285712978_ _g1285912981_))))
                       (_g1285712978_ _g1285912981_))))
               (_g1285712978_ _g1285912981_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1285712978_
                                                    _g1285912981_))))
                                           (_g1285712978_ _g1285912981_))
                                       (_g1285712978_ _g1285912981_))
                                   (_g1285712978_ _g1285912981_))))
                           (_g1285712978_ _g1285912981_))))
                   (_g1285712978_ _g1285912981_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1285712978_
                                                    _g1285912981_))
                                               (_g1285712978_ _g1285912981_))))
                                       (_g1285712978_ _g1285912981_))
                                   (_g1285712978_ _g1285912981_))
                               (_g1285712978_ _g1285912981_))))
                       (_g1285712978_ _g1285912981_))))
               (_g1285712978_ _g1285912981_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1285712978_
                                                    _g1285912981_))))
                                           (_g1285712978_ _g1285912981_))
                                       (_g1285712978_ _g1285912981_))
                                   (_g1285712978_ _g1285912981_))))
                           (_g1285712978_ _g1285912981_))))
                   (_g1285712978_ _g1285912981_))
               (_g1285712978_ _g1285912981_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1285712978_ _g1285912981_))
                                           (_g1285712978_ _g1285912981_))
                                       (_g1285712978_ _g1285912981_))))
                               (_g1285712978_ _g1285912981_))))
                       (_g1285712978_ _g1285912981_)))))
            (let ((_g1285513365_
                   (lambda (_g1285913188_)
                     (if (gx#stx-pair? _g1285913188_)
                         (let ((_e1286513190_ (gx#stx-e _g1285913188_)))
                           (let ((_hd1286613193_ (##car _e1286513190_))
                                 (_tl1286713195_ (##cdr _e1286513190_)))
                             (if (gx#stx-pair? _hd1286613193_)
                                 (let ((_e1286813198_
                                        (gx#stx-e _hd1286613193_)))
                                   (let ((_hd1286913201_ (##car _e1286813198_))
                                         (_tl1287013203_
                                          (##cdr _e1286813198_)))
                                     (if (gx#identifier? _hd1286913201_)
                                         (if (gx#stx-eq?
                                              '%#quote
                                              _hd1286913201_)
                                             (if (gx#stx-pair? _tl1287013203_)
                                                 (let ((_e1287113206_
                                                        (gx#stx-e
                                                         _tl1287013203_)))
                                                   (let ((_hd1287213209_
                                                          (##car _e1287113206_))
                                                         (_tl1287313211_
                                                          (##cdr _e1287113206_)))
                                                     (if (gx#stx-null?
                                                          _tl1287313211_)
                                                         (if (gx#stx-pair?
                                                              _tl1286713195_)
                                                             (let ((_e1287413214_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl1286713195_)))
                       (let ((_hd1287513217_ (##car _e1287413214_))
                             (_tl1287613219_ (##cdr _e1287413214_)))
                         (if (gx#stx-pair? _hd1287513217_)
                             (let ((_e1287713222_ (gx#stx-e _hd1287513217_)))
                               (let ((_hd1287813225_ (##car _e1287713222_))
                                     (_tl1287913227_ (##cdr _e1287713222_)))
                                 (if (gx#identifier? _hd1287813225_)
                                     (if (gx#stx-eq? '%#quote _hd1287813225_)
                                         (if (gx#stx-pair? _tl1287913227_)
                                             (let ((_e1288013230_
                                                    (gx#stx-e _tl1287913227_)))
                                               (let ((_hd1288113233_
                                                      (##car _e1288013230_))
                                                     (_tl1288213235_
                                                      (##cdr _e1288013230_)))
                                                 (if (gx#stx-datum?
                                                      _hd1288113233_)
                                                     (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd1288113233_)
                         '#f)
                 (if (gx#stx-null? _tl1288213235_)
                     (if (gx#stx-pair? _tl1287613219_)
                         (let ((_e1288313238_ (gx#stx-e _tl1287613219_)))
                           (let ((_hd1288413241_ (##car _e1288313238_))
                                 (_tl1288513243_ (##cdr _e1288313238_)))
                             (if (gx#stx-pair? _hd1288413241_)
                                 (let ((_e1288613246_
                                        (gx#stx-e _hd1288413241_)))
                                   (let ((_hd1288713249_ (##car _e1288613246_))
                                         (_tl1288813251_
                                          (##cdr _e1288613246_)))
                                     (if (gx#identifier? _hd1288713249_)
                                         (if (gx#stx-eq?
                                              '%#quote
                                              _hd1288713249_)
                                             (if (gx#stx-pair? _tl1288813251_)
                                                 (let ((_e1288913254_
                                                        (gx#stx-e
                                                         _tl1288813251_)))
                                                   (let ((_hd1289013257_
                                                          (##car _e1288913254_))
                                                         (_tl1289113259_
                                                          (##cdr _e1288913254_)))
                                                     (if (gx#stx-null?
                                                          _tl1289113259_)
                                                         (if (gx#stx-pair?
                                                              _tl1288513243_)
                                                             (let ((_e1289213262_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl1288513243_)))
                       (let ((_hd1289313265_ (##car _e1289213262_))
                             (_tl1289413267_ (##cdr _e1289213262_)))
                         (if (gx#stx-pair? _tl1289413267_)
                             (let ((_e1289513270_ (gx#stx-e _tl1289413267_)))
                               (let ((_hd1289613273_ (##car _e1289513270_))
                                     (_tl1289713275_ (##cdr _e1289513270_)))
                                 (if (gx#stx-pair? _hd1289613273_)
                                     (let ((_e1289813278_
                                            (gx#stx-e _hd1289613273_)))
                                       (let ((_hd1289913281_
                                              (##car _e1289813278_))
                                             (_tl1290013283_
                                              (##cdr _e1289813278_)))
                                         (if (gx#identifier? _hd1289913281_)
                                             (if (gx#stx-eq?
                                                  '%#quote
                                                  _hd1289913281_)
                                                 (if (gx#stx-pair?
                                                      _tl1290013283_)
                                                     (let ((_e1290113286_
                                                            (gx#stx-e
                                                             _tl1290013283_)))
                                                       (let ((_hd1290213289_
                                                              (##car _e1290113286_))
                                                             (_tl1290313291_
                                                              (##cdr _e1290113286_)))
                                                         (if (gx#stx-null?
                                                              _tl1290313291_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1289713275_)
                         (let ((_e1290413294_ (gx#stx-e _tl1289713275_)))
                           (let ((_hd1290513297_ (##car _e1290413294_))
                                 (_tl1290613299_ (##cdr _e1290413294_)))
                             (if (gx#stx-pair? _hd1290513297_)
                                 (let ((_e1290713302_
                                        (gx#stx-e _hd1290513297_)))
                                   (let ((_hd1290813305_ (##car _e1290713302_))
                                         (_tl1290913307_
                                          (##cdr _e1290713302_)))
                                     (if (gx#identifier? _hd1290813305_)
                                         (if (gx#stx-eq?
                                              '%#quote
                                              _hd1290813305_)
                                             (if (gx#stx-pair? _tl1290913307_)
                                                 (let ((_e1291013310_
                                                        (gx#stx-e
                                                         _tl1290913307_)))
                                                   (let ((_hd1291113313_
                                                          (##car _e1291013310_))
                                                         (_tl1291213315_
                                                          (##cdr _e1291013310_)))
                                                     (if (gx#stx-null?
                                                          _tl1291213315_)
                                                         (if (gx#stx-null?
                                                              _tl1290613299_)
                                                             ((lambda (_L13318_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L13319_
                               _L13320_
                               _L13321_
                               _L13322_)
                        (let ((__obj19722
                               (make-object gxc#!struct-type::t '7)))
                          (begin
                            (gxc#!struct-type:::init!
                             __obj19722
                             (gx#stx-e _L13322_)
                             '#f
                             (gx#stx-e _L13321_)
                             '0
                             (gx#stx-e _L13318_)
                             (gx#stx-e _L13319_))
                            __obj19722)))
                      _hd1291113313_
                      _hd1290213289_
                      _hd1289313265_
                      _hd1289013257_
                      _hd1287213209_)
                     (_g1285613185_ _g1285913188_))
                 (_g1285613185_ _g1285913188_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1285613185_ _g1285913188_))
                                             (_g1285613185_ _g1285913188_))
                                         (_g1285613185_ _g1285913188_))))
                                 (_g1285613185_ _g1285913188_))))
                         (_g1285613185_ _g1285913188_))
                     (_g1285613185_ _g1285913188_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1285613185_
                                                      _g1285913188_))
                                                 (_g1285613185_ _g1285913188_))
                                             (_g1285613185_ _g1285913188_))))
                                     (_g1285613185_ _g1285913188_))))
                             (_g1285613185_ _g1285913188_))))
                     (_g1285613185_ _g1285913188_))
                 (_g1285613185_ _g1285913188_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1285613185_ _g1285913188_))
                                             (_g1285613185_ _g1285913188_))
                                         (_g1285613185_ _g1285913188_))))
                                 (_g1285613185_ _g1285913188_))))
                         (_g1285613185_ _g1285913188_))
                     (_g1285613185_ _g1285913188_))
                 (_g1285613185_ _g1285913188_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1285613185_
                                                      _g1285913188_))))
                                             (_g1285613185_ _g1285913188_))
                                         (_g1285613185_ _g1285913188_))
                                     (_g1285613185_ _g1285913188_))))
                             (_g1285613185_ _g1285913188_))))
                     (_g1285613185_ _g1285913188_))
                 (_g1285613185_ _g1285913188_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1285613185_ _g1285913188_))
                                             (_g1285613185_ _g1285913188_))
                                         (_g1285613185_ _g1285913188_))))
                                 (_g1285613185_ _g1285913188_))))
                         (_g1285613185_ _g1285913188_)))))
              (_g1285513365_ _args12854_)))))))
  (define gxc#basic-expression-type-make-struct-predicate
    (lambda (_stx12779_ _args12780_)
      (let ((_g1278312799_
             (lambda (_g1278412796_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1278412796_))))
        (let ((_g1278212806_ (lambda (_g1278412802_) ((lambda () '#f)))))
          (let ((_g1278112850_
                 (lambda (_g1278412809_)
                   (if (gx#stx-pair? _g1278412809_)
                       (let ((_e1278612811_ (gx#stx-e _g1278412809_)))
                         (let ((_hd1278712814_ (##car _e1278612811_))
                               (_tl1278812816_ (##cdr _e1278612811_)))
                           (if (gx#stx-pair? _hd1278712814_)
                               (let ((_e1278912819_ (gx#stx-e _hd1278712814_)))
                                 (let ((_hd1279012822_ (##car _e1278912819_))
                                       (_tl1279112824_ (##cdr _e1278912819_)))
                                   (if (gx#identifier? _hd1279012822_)
                                       (if (gx#stx-eq? '%#ref _hd1279012822_)
                                           (if (gx#stx-pair? _tl1279112824_)
                                               (let ((_e1279212827_
                                                      (gx#stx-e
                                                       _tl1279112824_)))
                                                 (let ((_hd1279312830_
                                                        (##car _e1279212827_))
                                                       (_tl1279412832_
                                                        (##cdr _e1279212827_)))
                                                   (if (gx#stx-null?
                                                        _tl1279412832_)
                                                       (if (gx#stx-null?
                                                            _tl1278812816_)
                                                           ((lambda (_L12835_)
                                                              (##structure
                                                               gxc#!struct-pred::t
                                                               (gxc#generate-runtime-binding-id
                                                                _L12835_)))
                                                            _hd1279312830_)
                                                           (_g1278212806_
                                                            _g1278412809_))
                                                       (_g1278212806_
                                                        _g1278412809_))))
                                               (_g1278212806_ _g1278412809_))
                                           (_g1278212806_ _g1278412809_))
                                       (_g1278212806_ _g1278412809_))))
                               (_g1278212806_ _g1278412809_))))
                       (_g1278212806_ _g1278412809_)))))
            (_g1278112850_ _args12780_))))))
  (define gxc#basic-expression-type-make-struct-field-accessor
    (lambda (_stx12663_ _args12664_)
      (let ((_g1266712693_
             (lambda (_g1266812690_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1266812690_))))
        (let ((_g1266612700_ (lambda (_g1266812696_) ((lambda () '#f)))))
          (let ((_g1266512776_
                 (lambda (_g1266812703_)
                   (if (gx#stx-pair? _g1266812703_)
                       (let ((_e1267112705_ (gx#stx-e _g1266812703_)))
                         (let ((_hd1267212708_ (##car _e1267112705_))
                               (_tl1267312710_ (##cdr _e1267112705_)))
                           (if (gx#stx-pair? _hd1267212708_)
                               (let ((_e1267412713_ (gx#stx-e _hd1267212708_)))
                                 (let ((_hd1267512716_ (##car _e1267412713_))
                                       (_tl1267612718_ (##cdr _e1267412713_)))
                                   (if (gx#identifier? _hd1267512716_)
                                       (if (gx#stx-eq? '%#ref _hd1267512716_)
                                           (if (gx#stx-pair? _tl1267612718_)
                                               (let ((_e1267712721_
                                                      (gx#stx-e
                                                       _tl1267612718_)))
                                                 (let ((_hd1267812724_
                                                        (##car _e1267712721_))
                                                       (_tl1267912726_
                                                        (##cdr _e1267712721_)))
                                                   (if (gx#stx-null?
                                                        _tl1267912726_)
                                                       (if (gx#stx-pair?
                                                            _tl1267312710_)
                                                           (let ((_e1268012729_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl1267312710_)))
                     (let ((_hd1268112732_ (##car _e1268012729_))
                           (_tl1268212734_ (##cdr _e1268012729_)))
                       (if (gx#stx-pair? _hd1268112732_)
                           (let ((_e1268312737_ (gx#stx-e _hd1268112732_)))
                             (let ((_hd1268412740_ (##car _e1268312737_))
                                   (_tl1268512742_ (##cdr _e1268312737_)))
                               (if (gx#identifier? _hd1268412740_)
                                   (if (gx#stx-eq? '%#quote _hd1268412740_)
                                       (if (gx#stx-pair? _tl1268512742_)
                                           (let ((_e1268612745_
                                                  (gx#stx-e _tl1268512742_)))
                                             (let ((_hd1268712748_
                                                    (##car _e1268612745_))
                                                   (_tl1268812750_
                                                    (##cdr _e1268612745_)))
                                               (if (gx#stx-null?
                                                    _tl1268812750_)
                                                   (if (gx#stx-null?
                                                        _tl1268212734_)
                                                       ((lambda (_L12753_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L12754_)
                  (##structure
                   gxc#!struct-getf::t
                   (gxc#generate-runtime-binding-id _L12754_)
                   (gx#stx-e _L12753_)))
                _hd1268712748_
                _hd1267812724_)
               (_g1266612700_ _g1266812703_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1266612700_
                                                    _g1266812703_))))
                                           (_g1266612700_ _g1266812703_))
                                       (_g1266612700_ _g1266812703_))
                                   (_g1266612700_ _g1266812703_))))
                           (_g1266612700_ _g1266812703_))))
                   (_g1266612700_ _g1266812703_))
               (_g1266612700_ _g1266812703_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1266612700_ _g1266812703_))
                                           (_g1266612700_ _g1266812703_))
                                       (_g1266612700_ _g1266812703_))))
                               (_g1266612700_ _g1266812703_))))
                       (_g1266612700_ _g1266812703_)))))
            (_g1266512776_ _args12664_))))))
  (define gxc#basic-expression-type-make-struct-field-mutator
    (lambda (_stx12547_ _args12548_)
      (let ((_g1255112577_
             (lambda (_g1255212574_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1255212574_))))
        (let ((_g1255012584_ (lambda (_g1255212580_) ((lambda () '#f)))))
          (let ((_g1254912660_
                 (lambda (_g1255212587_)
                   (if (gx#stx-pair? _g1255212587_)
                       (let ((_e1255512589_ (gx#stx-e _g1255212587_)))
                         (let ((_hd1255612592_ (##car _e1255512589_))
                               (_tl1255712594_ (##cdr _e1255512589_)))
                           (if (gx#stx-pair? _hd1255612592_)
                               (let ((_e1255812597_ (gx#stx-e _hd1255612592_)))
                                 (let ((_hd1255912600_ (##car _e1255812597_))
                                       (_tl1256012602_ (##cdr _e1255812597_)))
                                   (if (gx#identifier? _hd1255912600_)
                                       (if (gx#stx-eq? '%#ref _hd1255912600_)
                                           (if (gx#stx-pair? _tl1256012602_)
                                               (let ((_e1256112605_
                                                      (gx#stx-e
                                                       _tl1256012602_)))
                                                 (let ((_hd1256212608_
                                                        (##car _e1256112605_))
                                                       (_tl1256312610_
                                                        (##cdr _e1256112605_)))
                                                   (if (gx#stx-null?
                                                        _tl1256312610_)
                                                       (if (gx#stx-pair?
                                                            _tl1255712594_)
                                                           (let ((_e1256412613_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl1255712594_)))
                     (let ((_hd1256512616_ (##car _e1256412613_))
                           (_tl1256612618_ (##cdr _e1256412613_)))
                       (if (gx#stx-pair? _hd1256512616_)
                           (let ((_e1256712621_ (gx#stx-e _hd1256512616_)))
                             (let ((_hd1256812624_ (##car _e1256712621_))
                                   (_tl1256912626_ (##cdr _e1256712621_)))
                               (if (gx#identifier? _hd1256812624_)
                                   (if (gx#stx-eq? '%#quote _hd1256812624_)
                                       (if (gx#stx-pair? _tl1256912626_)
                                           (let ((_e1257012629_
                                                  (gx#stx-e _tl1256912626_)))
                                             (let ((_hd1257112632_
                                                    (##car _e1257012629_))
                                                   (_tl1257212634_
                                                    (##cdr _e1257012629_)))
                                               (if (gx#stx-null?
                                                    _tl1257212634_)
                                                   (if (gx#stx-null?
                                                        _tl1256612618_)
                                                       ((lambda (_L12637_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L12638_)
                  (##structure
                   gxc#!struct-setf::t
                   (gxc#generate-runtime-binding-id _L12638_)
                   (gx#stx-e _L12637_)))
                _hd1257112632_
                _hd1256212608_)
               (_g1255012584_ _g1255212587_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1255012584_
                                                    _g1255212587_))))
                                           (_g1255012584_ _g1255212587_))
                                       (_g1255012584_ _g1255212587_))
                                   (_g1255012584_ _g1255212587_))))
                           (_g1255012584_ _g1255212587_))))
                   (_g1255012584_ _g1255212587_))
               (_g1255012584_ _g1255212587_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1255012584_ _g1255212587_))
                                           (_g1255012584_ _g1255212587_))
                                       (_g1255012584_ _g1255212587_))))
                               (_g1255012584_ _g1255212587_))))
                       (_g1255012584_ _g1255212587_)))))
            (_g1254912660_ _args12548_))))))
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
    (lambda (_stx12496_)
      (let ((_g1249812511_
             (lambda (_g1249912508_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1249912508_))))
        (let ((_g1249712544_
               (lambda (_g1249912514_)
                 (if (gx#stx-pair? _g1249912514_)
                     (let ((_e1250112516_ (gx#stx-e _g1249912514_)))
                       (let ((_hd1250212519_ (##car _e1250112516_))
                             (_tl1250312521_ (##cdr _e1250112516_)))
                         (if (gx#stx-pair? _tl1250312521_)
                             (let ((_e1250412524_ (gx#stx-e _tl1250312521_)))
                               (let ((_hd1250512527_ (##car _e1250412524_))
                                     (_tl1250612529_ (##cdr _e1250412524_)))
                                 (if (gx#stx-null? _tl1250612529_)
                                     ((lambda (_L12532_)
                                        (gxc#optimizer-lookup-type
                                         (gxc#generate-runtime-binding-id
                                          _L12532_)))
                                      _hd1250512527_)
                                     (_g1249812511_ _g1249912514_))))
                             (_g1249812511_ _g1249912514_))))
                     (_g1249812511_ _g1249912514_)))))
          (_g1249712544_ _stx12496_)))))
  (define gxc#optimize-call%
    (lambda (_stx12402_)
      (let ((_g1240512425_
             (lambda (_g1240612422_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1240612422_))))
        (let ((_g1240412432_
               (lambda (_g1240612428_)
                 ((lambda () (gxc#xform-call% _stx12402_))))))
          (let ((_g1240312493_
                 (lambda (_g1240612435_)
                   (if (gx#stx-pair? _g1240612435_)
                       (let ((_e1240912437_ (gx#stx-e _g1240612435_)))
                         (let ((_hd1241012440_ (##car _e1240912437_))
                               (_tl1241112442_ (##cdr _e1240912437_)))
                           (if (gx#stx-pair? _tl1241112442_)
                               (let ((_e1241212445_ (gx#stx-e _tl1241112442_)))
                                 (let ((_hd1241312448_ (##car _e1241212445_))
                                       (_tl1241412450_ (##cdr _e1241212445_)))
                                   (if (gx#stx-pair? _hd1241312448_)
                                       (let ((_e1241512453_
                                              (gx#stx-e _hd1241312448_)))
                                         (let ((_hd1241612456_
                                                (##car _e1241512453_))
                                               (_tl1241712458_
                                                (##cdr _e1241512453_)))
                                           (if (gx#identifier? _hd1241612456_)
                                               (if (gx#stx-eq?
                                                    '%#ref
                                                    _hd1241612456_)
                                                   (if (gx#stx-pair?
                                                        _tl1241712458_)
                                                       (let ((_e1241812461_
                                                              (gx#stx-e
                                                               _tl1241712458_)))
                                                         (let ((_hd1241912464_
                                                                (##car _e1241812461_))
                                                               (_tl1242012466_
                                                                (##cdr _e1241812461_)))
                                                           (if (gx#stx-null?
                                                                _tl1242012466_)
                                                               ((lambda (_L12469_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _L12470_)
                          (let ((_rator-id12488_
                                 (gxc#generate-runtime-binding-id _L12470_)))
                            (let ((_rator-type12490_
                                   (gxc#optimizer-resolve-type
                                    _rator-id12488_)))
                              (let ()
                                (if (##structure-instance-of?
                                     _rator-type12490_
                                     'gxc#!procedure::t)
                                    (begin
                                      (gxc#verbose
                                       '"optimize-call "
                                       _rator-id12488_
                                       '" => "
                                       _rator-type12490_
                                       '" "
                                       (##structure-ref
                                        _rator-type12490_
                                        '1
                                        gxc#!type::t
                                        '#f))
                                      (call-method
                                       _rator-type12490_
                                       'optimize-call
                                       _stx12402_
                                       _L12469_))
                                    (if (not _rator-type12490_)
                                        (gxc#xform-call% _stx12402_)
                                        (gxc#raise-compile-error
                                         '"Illegal application; not a procedure"
                                         _stx12402_
                                         _rator-type12490_)))))))
                        _tl1241412450_
                        _hd1241912464_)
                       (_g1240412432_ _g1240612435_))))
               (_g1240412432_ _g1240612435_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1240412432_
                                                    _g1240612435_))
                                               (_g1240412432_ _g1240612435_))))
                                       (_g1240412432_ _g1240612435_))))
                               (_g1240412432_ _g1240612435_))))
                       (_g1240412432_ _g1240612435_)))))
            (_g1240312493_ _stx12402_))))))
  (define gxc#!struct-pred::optimize-call
    (lambda (_self12257_ _stx12258_ _args12259_)
      (let ((_self1226012266_ _self12257_))
        (let ((_E1226212270_
               (lambda () (error '"No clause matching" _self1226012266_))))
          (let ((_K1226312394_
                 (lambda (_struct-t12273_)
                   (let ((_struct-type12275_
                          (gxc#optimizer-resolve-type _struct-t12273_)))
                     (let ((_struct-type1227612290_ _struct-type12275_))
                       (let ((_E1228012294_
                              (lambda ()
                                (error '"No clause matching"
                                       _struct-type1227612290_))))
                         (let ((_else1227912298_
                                (lambda ()
                                  (gxc#raise-compile-error
                                   '"Illegal struct predicate application; not a struct type"
                                   _stx12258_
                                   _struct-t12273_
                                   _struct-type12275_))))
                           (let ((_try-match1227812306_
                                  (lambda ()
                                    (let ((_K1228112303_
                                           (lambda ()
                                             (gxc#xform-call% _stx12258_))))
                                      (if (##eq? _struct-type1227612290_ '#f)
                                          (_K1228112303_)
                                          (_else1227912298_))))))
                             (let ((_K1228212369_
                                    (lambda (_plist12309_
                                             _struct-type-id12310_)
                                      (let ((_g1231312323_
                                             (lambda (_g1231412320_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g1231412320_))))
                                        (let ((_g1231212330_
                                               (lambda (_g1231412326_)
                                                 ((lambda ()
                                                    (gxc#raise-compile-error
                                                     '"Illegal struct predicate application"
                                                     _stx12258_))))))
                                          (let ((_g1231112366_
                                                 (lambda (_g1231412333_)
                                                   (if (gx#stx-pair?
                                                        _g1231412333_)
                                                       (let ((_e1231612335_
                                                              (gx#stx-e
                                                               _g1231412333_)))
                                                         (let ((_hd1231712338_
                                                                (##car _e1231612335_))
                                                               (_tl1231812340_
                                                                (##cdr _e1231612335_)))
                                                           (if (gx#stx-null?
                                                                _tl1231812340_)
                                                               ((lambda (_L12343_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((_expr12363_ (gxc#compile-e _L12343_))
                                (_op12364_
                                 (if (if _plist12309_
                                         (assgetq 'final: _plist12309_)
                                         '#f)
                                     '%#struct-direct-instance?
                                     '%#struct-instance?)))
                            (gxc#xform-wrap-source
                             (cons _op12364_
                                   (cons (cons '%#quote
                                               (cons _struct-type-id12310_
                                                     '()))
                                         (cons _expr12363_ '())))
                             _stx12258_)))
                        _hd1231712338_)
                       (_g1231212330_ _g1231412333_))))
               (_g1231212330_ _g1231412333_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g1231112366_ _args12259_)))))))
                               (if (##structure-instance-of?
                                    _struct-type1227612290_
                                    (##type-id gxc#!struct-type::t))
                                   (let ((_e1228312372_
                                          (##vector-ref
                                           _struct-type1227612290_
                                           '1)))
                                     (let ((_struct-type-id12375_
                                            _e1228312372_))
                                       (let ((_e1228412377_
                                              (##vector-ref
                                               _struct-type1227612290_
                                               '2)))
                                         (let ((_e1228512380_
                                                (##vector-ref
                                                 _struct-type1227612290_
                                                 '3)))
                                           (let ((_e1228612383_
                                                  (##vector-ref
                                                   _struct-type1227612290_
                                                   '4)))
                                             (let ((_e1228712386_
                                                    (##vector-ref
                                                     _struct-type1227612290_
                                                     '5)))
                                               (let ((_e1228812389_
                                                      (##vector-ref
                                                       _struct-type1227612290_
                                                       '6)))
                                                 (let ((_plist12392_
                                                        _e1228812389_))
                                                   (_K1228212369_
                                                    _plist12392_
                                                    _struct-type-id12375_)))))))))
                                   (_try-match1227812306_)))))))))))
            (if (##structure-instance-of?
                 _self1226012266_
                 (##type-id gxc#!struct-pred::t))
                (let ((_e1226412397_ (##vector-ref _self1226012266_ '1)))
                  (let ((_struct-t12400_ _e1226412397_))
                    (_K1226312394_ _struct-t12400_)))
                (_E1226212270_)))))))
  (bind-method!
   gxc#!struct-pred::t
   'optimize-call
   gxc#!struct-pred::optimize-call
   '#f)
  (define gxc#!struct-cons::optimize-call
    (lambda (_self12153_ _stx12154_ _args12155_)
      (let ((_self1215612162_ _self12153_))
        (let ((_E1215812166_
               (lambda () (error '"No clause matching" _self1215612162_))))
          (let ((_K1215912249_
                 (lambda (_struct-t12169_)
                   (let ((_struct-type12171_
                          (gxc#optimizer-resolve-type _struct-t12169_)))
                     (let ((_struct-type1217212185_ _struct-type12171_))
                       (let ((_E1217612189_
                              (lambda ()
                                (error '"No clause matching"
                                       _struct-type1217212185_))))
                         (let ((_else1217512193_
                                (lambda ()
                                  (gxc#raise-compile-error
                                   '"Illegal struct constructor application; not a struct type"
                                   _stx12154_
                                   _struct-t12169_
                                   _struct-type12171_))))
                           (let ((_try-match1217412201_
                                  (lambda ()
                                    (let ((_K1217712198_
                                           (lambda ()
                                             (begin
                                               (gxc#verbose
                                                '"cannot inline struct constructor; unknown struct type "
                                                _struct-t12169_)
                                               (gxc#xform-call% _stx12154_)))))
                                      (if (##eq? _struct-type1217212185_ '#f)
                                          (_K1217712198_)
                                          (_else1217512193_))))))
                             (let ((_K1217812223_
                                    (lambda (_ctor12204_
                                             _xfields12205_
                                             _fields12206_
                                             _type-id12207_)
                                      (let ((_args12209_
                                             (map gxc#compile-e _args12155_)))
                                        (let ((_$e12211_
                                               (if _ctor12204_
                                                   (if _xfields12205_
                                                       (gxc#!struct-type-lookup-method
                                                        _struct-type12171_
                                                        _ctor12204_)
                                                       '#f)
                                                   '#f)))
                                          (if _$e12211_
                                              ((lambda (_kons12214_)
                                                 (let ((_$obj12216_
                                                        (make-symbol
                                                         (gensym '__obj))))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#let-values
                                                          (cons (cons (cons (cons _$obj12216_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                          '())
                                    (cons (cons '%#call
                                                (cons (cons '%#ref
                                                            (cons 'make-object
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#ref (cons _struct-t12169_ '()))
                    (cons (cons '%#quote
                                (cons (fx+ _fields12206_ _xfields12205_) '()))
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '()))
                              '())
                        (cons (cons '%#begin
                                    (cons (gxc#compile-e
                                           (gxc#xform-wrap-source
                                            (cons '%#call
                                                  (cons (cons '%#ref
                                                              (cons _kons12214_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '%#ref (cons _$obj12216_ '())) _args12209_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _stx12154_))
                                          (cons (cons '%#ref
                                                      (cons _$obj12216_ '()))
                                                '())))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _stx12154_)))
                                               _$e12211_)
                                              (if (let ((_$e12218_
                                                         _ctor12204_))
                                                    (if _$e12218_
                                                        _$e12218_
                                                        (not _xfields12205_)))
                                                  (gxc#xform-wrap-source
                                                   (cons '%#call
                                                         (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons 'make-struct-instance '()))
                       (cons (cons '%#ref (cons _struct-t12169_ '()))
                             _args12209_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _stx12154_)
                                                  (let ((_arity12221_
                                                         (fx+ _fields12206_
                                                              _xfields12205_)))
                                                    (if (fx= _arity12221_
                                                             (length _args12209_))
                                                        (gxc#xform-wrap-source
                                                         (cons '%#call
                                                               (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons '##structure '()))
                             (cons (cons '%#ref (cons _struct-t12169_ '()))
                                   _args12209_)))
                 _stx12154_)
                (gxc#raise-compile-error
                 '"Illegal struct constructor application; arity mismatch"
                 _stx12154_
                 _struct-t12169_
                 _arity12221_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (if (##structure-instance-of?
                                    _struct-type1217212185_
                                    (##type-id gxc#!struct-type::t))
                                   (let ((_e1217912226_
                                          (##vector-ref
                                           _struct-type1217212185_
                                           '1)))
                                     (let ((_type-id12229_ _e1217912226_))
                                       (let ((_e1218012231_
                                              (##vector-ref
                                               _struct-type1217212185_
                                               '2)))
                                         (let ((_e1218112234_
                                                (##vector-ref
                                                 _struct-type1217212185_
                                                 '3)))
                                           (let ((_fields12237_ _e1218112234_))
                                             (let ((_e1218212239_
                                                    (##vector-ref
                                                     _struct-type1217212185_
                                                     '4)))
                                               (let ((_xfields12242_
                                                      _e1218212239_))
                                                 (let ((_e1218312244_
                                                        (##vector-ref
                                                         _struct-type1217212185_
                                                         '5)))
                                                   (let ((_ctor12247_
                                                          _e1218312244_))
                                                     (_K1217812223_
                                                      _ctor12247_
                                                      _xfields12242_
                                                      _fields12237_
                                                      _type-id12229_))))))))))
                                   (_try-match1217412201_)))))))))))
            (if (##structure-instance-of?
                 _self1215612162_
                 (##type-id gxc#!struct-cons::t))
                (let ((_e1216012252_ (##vector-ref _self1215612162_ '1)))
                  (let ((_struct-t12255_ _e1216012252_))
                    (_K1215912249_ _struct-t12255_)))
                (_E1215812166_)))))))
  (bind-method!
   gxc#!struct-cons::t
   'optimize-call
   gxc#!struct-cons::optimize-call
   '#f)
  (define gxc#!struct-getf::optimize-call
    (lambda (_self11994_ _stx11995_ _args11996_)
      (let ((_self1199712004_ _self11994_))
        (let ((_E1199912008_
               (lambda () (error '"No clause matching" _self1199712004_))))
          (let ((_K1200012140_
                 (lambda (_off12011_ _struct-t12012_)
                   (let ((_struct-type12014_
                          (gxc#optimizer-resolve-type _struct-t12012_)))
                     (let ((_struct-type1201512029_ _struct-type12014_))
                       (let ((_E1201912033_
                              (lambda ()
                                (error '"No clause matching"
                                       _struct-type1201512029_))))
                         (let ((_else1201812037_
                                (lambda ()
                                  (gxc#raise-compile-error
                                   '"Illegal struct predicate application; not a struct type"
                                   _stx11995_
                                   _struct-t12012_
                                   _struct-type12014_))))
                           (let ((_try-match1201712045_
                                  (lambda ()
                                    (let ((_K1202012042_
                                           (lambda ()
                                             (gxc#xform-call% _stx11995_))))
                                      (if (##eq? _struct-type1201512029_ '#f)
                                          (_K1202012042_)
                                          (_else1201812037_))))))
                             (let ((_K1202112111_
                                    (lambda (_plist12048_
                                             _xfields12049_
                                             _fields12050_
                                             _struct-type-id12051_)
                                      (if _xfields12049_
                                          (let ((_g1205412064_
                                                 (lambda (_g1205512061_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1205512061_))))
                                            (let ((_g1205312071_
                                                   (lambda (_g1205512067_)
                                                     ((lambda ()
                                                        (gxc#raise-compile-error
                                                         '"Illegal struct accessor application"
                                                         _stx11995_))))))
                                              (let ((_g1205212108_
                                                     (lambda (_g1205512074_)
                                                       (if (gx#stx-pair?
                                                            _g1205512074_)
                                                           (let ((_e1205712076_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _g1205512074_)))
                     (let ((_hd1205812079_ (##car _e1205712076_))
                           (_tl1205912081_ (##cdr _e1205712076_)))
                       (if (gx#stx-null? _tl1205912081_)
                           ((lambda (_L12084_)
                              (let ((_expr12104_ (gxc#compile-e _L12084_))
                                    (_off12105_
                                     (fx+ _off12011_ _xfields12049_ '1))
                                    (_op12106_
                                     (if (if _plist12048_
                                             (assgetq 'final: _plist12048_)
                                             '#f)
                                         '%#struct-direct-ref
                                         '%#struct-ref)))
                                (gxc#xform-wrap-source
                                 (cons _op12106_
                                       (cons (cons '%#ref
                                                   (cons _struct-t12012_ '()))
                                             (cons (cons '%#quote
                                                         (cons _off12105_ '()))
                                                   (cons _expr12104_ '()))))
                                 _stx11995_)))
                            _hd1205812079_)
                           (_g1205312071_ _g1205512074_))))
                   (_g1205312071_ _g1205512074_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1205212108_ _args11996_))))
                                          (begin
                                            (gxc#verbose
                                             '"struct-getf: incomplete struct "
                                             _struct-type-id12051_)
                                            (gxc#xform-call% _stx11995_))))))
                               (if (##structure-instance-of?
                                    _struct-type1201512029_
                                    (##type-id gxc#!struct-type::t))
                                   (let ((_e1202212114_
                                          (##vector-ref
                                           _struct-type1201512029_
                                           '1)))
                                     (let ((_struct-type-id12117_
                                            _e1202212114_))
                                       (let ((_e1202312119_
                                              (##vector-ref
                                               _struct-type1201512029_
                                               '2)))
                                         (let ((_e1202412122_
                                                (##vector-ref
                                                 _struct-type1201512029_
                                                 '3)))
                                           (let ((_fields12125_ _e1202412122_))
                                             (let ((_e1202512127_
                                                    (##vector-ref
                                                     _struct-type1201512029_
                                                     '4)))
                                               (let ((_xfields12130_
                                                      _e1202512127_))
                                                 (let ((_e1202612132_
                                                        (##vector-ref
                                                         _struct-type1201512029_
                                                         '5)))
                                                   (let ((_e1202712135_
                                                          (##vector-ref
                                                           _struct-type1201512029_
                                                           '6)))
                                                     (let ((_plist12138_
                                                            _e1202712135_))
                                                       (_K1202112111_
                                                        _plist12138_
                                                        _xfields12130_
                                                        _fields12125_
                                                        _struct-type-id12117_)))))))))))
                                   (_try-match1201712045_)))))))))))
            (if (##structure-instance-of?
                 _self1199712004_
                 (##type-id gxc#!struct-getf::t))
                (let ((_e1200112143_ (##vector-ref _self1199712004_ '1)))
                  (let ((_struct-t12146_ _e1200112143_))
                    (let ((_e1200212148_ (##vector-ref _self1199712004_ '2)))
                      (let ((_off12151_ _e1200212148_))
                        (_K1200012140_ _off12151_ _struct-t12146_)))))
                (_E1199912008_)))))))
  (bind-method!
   gxc#!struct-getf::t
   'optimize-call
   gxc#!struct-getf::optimize-call
   '#f)
  (define gxc#!struct-setf::optimize-call
    (lambda (_self11818_ _stx11819_ _args11820_)
      (let ((_self1182111828_ _self11818_))
        (let ((_E1182311832_
               (lambda () (error '"No clause matching" _self1182111828_))))
          (let ((_K1182411981_
                 (lambda (_off11835_ _struct-t11836_)
                   (let ((_struct-type11838_
                          (gxc#optimizer-resolve-type _struct-t11836_)))
                     (let ((_struct-type1183911853_ _struct-type11838_))
                       (let ((_E1184311857_
                              (lambda ()
                                (error '"No clause matching"
                                       _struct-type1183911853_))))
                         (let ((_else1184211861_
                                (lambda ()
                                  (gxc#raise-compile-error
                                   '"Illegal struct predicate application; not a struct type"
                                   _stx11819_
                                   _struct-t11836_
                                   _struct-type11838_))))
                           (let ((_try-match1184111869_
                                  (lambda ()
                                    (let ((_K1184411866_
                                           (lambda ()
                                             (gxc#xform-call% _stx11819_))))
                                      (if (##eq? _struct-type1183911853_ '#f)
                                          (_K1184411866_)
                                          (_else1184211861_))))))
                             (let ((_K1184511952_
                                    (lambda (_plist11872_
                                             _xfields11873_
                                             _fields11874_
                                             _struct-type-id11875_)
                                      (if _xfields11873_
                                          (let ((_g1187811892_
                                                 (lambda (_g1187911889_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1187911889_))))
                                            (let ((_g1187711899_
                                                   (lambda (_g1187911895_)
                                                     ((lambda ()
                                                        (gxc#raise-compile-error
                                                         '"Illegal struct mutator application"
                                                         _stx11819_))))))
                                              (let ((_g1187611949_
                                                     (lambda (_g1187911902_)
                                                       (if (gx#stx-pair?
                                                            _g1187911902_)
                                                           (let ((_e1188211904_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _g1187911902_)))
                     (let ((_hd1188311907_ (##car _e1188211904_))
                           (_tl1188411909_ (##cdr _e1188211904_)))
                       (if (gx#stx-pair? _tl1188411909_)
                           (let ((_e1188511912_ (gx#stx-e _tl1188411909_)))
                             (let ((_hd1188611915_ (##car _e1188511912_))
                                   (_tl1188711917_ (##cdr _e1188511912_)))
                               (if (gx#stx-null? _tl1188711917_)
                                   ((lambda (_L11920_ _L11921_)
                                      (let ((_expr11944_
                                             (gxc#compile-e _L11921_))
                                            (_val11945_
                                             (gxc#compile-e _L11920_))
                                            (_off11946_
                                             (fx+ _off11835_
                                                  _xfields11873_
                                                  '1))
                                            (_op11947_
                                             (if (if _plist11872_
                                                     (assgetq 'final:
                                                              _plist11872_)
                                                     '#f)
                                                 '%#struct-direct-set!
                                                 '%#struct-set!)))
                                        (gxc#xform-wrap-source
                                         (cons _op11947_
                                               (cons (cons '%#ref
                                                           (cons _struct-t11836_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _off11946_ '()))
                   (cons _expr11944_ (cons _val11945_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _stx11819_)))
                                    _hd1188611915_
                                    _hd1188311907_)
                                   (_g1187711899_ _g1187911902_))))
                           (_g1187711899_ _g1187911902_))))
                   (_g1187711899_ _g1187911902_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1187611949_ _args11820_))))
                                          (begin
                                            (gxc#verbose
                                             '"struct-setf: incomplete struct "
                                             _struct-type-id11875_)
                                            (gxc#xform-call% _stx11819_))))))
                               (if (##structure-instance-of?
                                    _struct-type1183911853_
                                    (##type-id gxc#!struct-type::t))
                                   (let ((_e1184611955_
                                          (##vector-ref
                                           _struct-type1183911853_
                                           '1)))
                                     (let ((_struct-type-id11958_
                                            _e1184611955_))
                                       (let ((_e1184711960_
                                              (##vector-ref
                                               _struct-type1183911853_
                                               '2)))
                                         (let ((_e1184811963_
                                                (##vector-ref
                                                 _struct-type1183911853_
                                                 '3)))
                                           (let ((_fields11966_ _e1184811963_))
                                             (let ((_e1184911968_
                                                    (##vector-ref
                                                     _struct-type1183911853_
                                                     '4)))
                                               (let ((_xfields11971_
                                                      _e1184911968_))
                                                 (let ((_e1185011973_
                                                        (##vector-ref
                                                         _struct-type1183911853_
                                                         '5)))
                                                   (let ((_e1185111976_
                                                          (##vector-ref
                                                           _struct-type1183911853_
                                                           '6)))
                                                     (let ((_plist11979_
                                                            _e1185111976_))
                                                       (_K1184511952_
                                                        _plist11979_
                                                        _xfields11971_
                                                        _fields11966_
                                                        _struct-type-id11958_)))))))))))
                                   (_try-match1184111869_)))))))))))
            (if (##structure-instance-of?
                 _self1182111828_
                 (##type-id gxc#!struct-setf::t))
                (let ((_e1182511984_ (##vector-ref _self1182111828_ '1)))
                  (let ((_struct-t11987_ _e1182511984_))
                    (let ((_e1182611989_ (##vector-ref _self1182111828_ '2)))
                      (let ((_off11992_ _e1182611989_))
                        (_K1182411981_ _off11992_ _struct-t11987_)))))
                (_E1182311832_)))))))
  (bind-method!
   gxc#!struct-setf::t
   'optimize-call
   gxc#!struct-setf::optimize-call
   '#f)
  (define gxc#!lambda::optimize-call
    (lambda (_self11774_ _stx11775_ _args11776_)
      (let ((_self1177711786_ _self11774_))
        (let ((_E1177911790_
               (lambda () (error '"No clause matching" _self1177711786_))))
          (let ((_K1178011797_
                 (lambda (_inline11793_ _dispatch11794_ _arity11795_)
                   (begin
                     (if (gxc#!lambda-arity-match? _self11774_ _args11776_)
                         '#!void
                         (gxc#raise-compile-error
                          '"Illegal lambda application; arity mismatch"
                          _stx11775_
                          _arity11795_))
                     (if _inline11793_
                         (begin
                           (gxc#verbose '"inline lambda")
                           (gxc#compile-e
                            (gxc#xform-wrap-source
                             (_inline11793_ _stx11775_)
                             _stx11775_)))
                         (if _dispatch11794_
                             (begin
                               (gxc#verbose
                                '"dispatch lambda => "
                                _dispatch11794_)
                               (gxc#compile-e
                                (gxc#xform-wrap-source
                                 (cons '%#call
                                       (cons (cons '%#ref
                                                   (cons _dispatch11794_ '()))
                                             _args11776_))
                                 _stx11775_)))
                             (gxc#xform-call% _stx11775_)))))))
            (if (##structure-instance-of?
                 _self1177711786_
                 (##type-id gxc#!lambda::t))
                (let ((_e1178111800_ (##vector-ref _self1177711786_ '1)))
                  (let ((_e1178211803_ (##vector-ref _self1177711786_ '2)))
                    (let ((_arity11806_ _e1178211803_))
                      (let ((_e1178311808_ (##vector-ref _self1177711786_ '3)))
                        (let ((_dispatch11811_ _e1178311808_))
                          (let ((_e1178411813_
                                 (##vector-ref _self1177711786_ '4)))
                            (let ((_inline11816_ _e1178411813_))
                              (_K1178011797_
                               _inline11816_
                               _dispatch11811_
                               _arity11806_))))))))
                (_E1177911790_)))))))
  (bind-method! gxc#!lambda::t 'optimize-call gxc#!lambda::optimize-call '#f)
  (define gxc#!case-lambda::optimize-call
    (lambda (_self11735_ _stx11736_ _args11737_)
      (let ((_self1173811745_ _self11735_))
        (let ((_E1174011749_
               (lambda () (error '"No clause matching" _self1173811745_))))
          (let ((_K1174111763_
                 (lambda (_clauses11752_)
                   (let ((_$e11758_
                          (find (lambda (_g1175311755_)
                                  (gxc#!lambda-arity-match?
                                   _g1175311755_
                                   _args11737_))
                                _clauses11752_)))
                     (if _$e11758_
                         ((lambda (_clause11761_)
                            (call-method
                             _clause11761_
                             'optimize-call
                             _stx11736_
                             _args11737_))
                          _$e11758_)
                         (gxc#raise-compile-error
                          '"Illegal case-lambda application; arity mismatch"
                          _stx11736_
                          (map gxc#!lambda-arity _clauses11752_)))))))
            (if (##structure-instance-of?
                 _self1173811745_
                 (##type-id gxc#!case-lambda::t))
                (let ((_e1174211766_ (##vector-ref _self1173811745_ '1)))
                  (let ((_e1174311769_ (##vector-ref _self1173811745_ '2)))
                    (let ((_clauses11772_ _e1174311769_))
                      (_K1174111763_ _clauses11772_))))
                (_E1174011749_)))))))
  (bind-method!
   gxc#!case-lambda::t
   'optimize-call
   gxc#!case-lambda::optimize-call
   '#f)
  (define gxc#!lambda-arity-match?
    (lambda (_self11671_ _args11672_)
      (let ((_self1167311680_ _self11671_))
        (let ((_E1167511684_
               (lambda () (error '"No clause matching" _self1167311680_))))
          (let ((_K1167611724_
                 (lambda (_arity11687_)
                   (let ((_arity1168811697_ _arity11687_))
                     (let ((_E1169111701_
                            (lambda ()
                              (error '"No clause matching"
                                     _arity1168811697_))))
                       (let ((_try-match1169011717_
                              (lambda ()
                                (let ((_K1169211707_
                                       (lambda (_arity11705_)
                                         (fx>= (length _args11672_)
                                               _arity11705_))))
                                  (if (##pair? _arity1168811697_)
                                      (let ((_hd1169311710_
                                             (##car _arity1168811697_))
                                            (_tl1169411712_
                                             (##cdr _arity1168811697_)))
                                        (let ((_arity11715_ _hd1169311710_))
                                          (if (##null? _tl1169411712_)
                                              (_K1169211707_ _arity11715_)
                                              (_E1169111701_))))
                                      (_E1169111701_))))))
                         (let ((_K1169511721_
                                (lambda ()
                                  (fx= (length _args11672_) _arity11687_))))
                           (if (fixnum? _arity1168811697_)
                               (_K1169511721_)
                               (_try-match1169011717_)))))))))
            (if (##structure-instance-of?
                 _self1167311680_
                 (##type-id gxc#!lambda::t))
                (let ((_e1167711727_ (##vector-ref _self1167311680_ '1)))
                  (let ((_e1167811730_ (##vector-ref _self1167311680_ '2)))
                    (let ((_arity11733_ _e1167811730_))
                      (_K1167611724_ _arity11733_))))
                (_E1167511684_)))))))
  (define gxc#generate-ssxi-module%
    (lambda (_stx11611_)
      (let ((_g1161311627_
             (lambda (_g1161411624_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1161411624_))))
        (let ((_g1161211668_
               (lambda (_g1161411630_)
                 (if (gx#stx-pair? _g1161411630_)
                     (let ((_e1161711632_ (gx#stx-e _g1161411630_)))
                       (let ((_hd1161811635_ (##car _e1161711632_))
                             (_tl1161911637_ (##cdr _e1161711632_)))
                         (if (gx#stx-pair? _tl1161911637_)
                             (let ((_e1162011640_ (gx#stx-e _tl1161911637_)))
                               (let ((_hd1162111643_ (##car _e1162011640_))
                                     (_tl1162211645_ (##cdr _e1162011640_)))
                                 ((lambda (_L11648_ _L11649_)
                                    (let ((_ctx11662_
                                           (gx#syntax-local-e__0 _L11649_)))
                                      (let ((_code11664_
                                             (##structure-ref
                                              _ctx11662_
                                              '11
                                              gx#module-context::t
                                              '#f)))
                                        (let ()
                                          (call-with-parameters
                                           (lambda ()
                                             (gxc#compile-e _code11664_))
                                           gx#current-expander-context
                                           _ctx11662_)))))
                                  _tl1162211645_
                                  _hd1162111643_)))
                             (_g1161311627_ _g1161411630_))))
                     (_g1161311627_ _g1161411630_)))))
          (_g1161211668_ _stx11611_)))))
  (define gxc#generate-ssxi-define-values%
    (lambda (_stx11421_)
      (let ((_generate-e11423_
             (lambda (_id11600_)
               (let ((_sym11602_
                      (if (gx#identifier? (gx#datum->syntax__0 '#f 'id))
                          (gxc#generate-runtime-binding-id _id11600_)
                          '#f)))
                 (let ((_$e11604_
                        (if _sym11602_
                            (gxc#optimizer-lookup-type _sym11602_)
                            '#f)))
                   (if _$e11604_
                       ((lambda (_type11607_)
                          (begin
                            (gxc#verbose '"generate typedecl " _sym11602_)
                            (let ((_typedecl11609_
                                   (call-method _type11607_ 'typedecl)))
                              (cons 'declare-type
                                    (cons _sym11602_
                                          (cons _typedecl11609_ '()))))))
                        _$e11604_)
                       '(begin)))))))
        (let ((_g1142611464_
               (lambda (_g1142711461_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1142711461_))))
          (let ((_g1142511545_
                 (lambda (_g1142711467_)
                   (if (gx#stx-pair? _g1142711467_)
                       (let ((_e1144211469_ (gx#stx-e _g1142711467_)))
                         (let ((_hd1144311472_ (##car _e1144211469_))
                               (_tl1144411474_ (##cdr _e1144211469_)))
                           (if (gx#stx-pair? _tl1144411474_)
                               (let ((_e1144511477_ (gx#stx-e _tl1144411474_)))
                                 (let ((_hd1144611480_ (##car _e1144511477_))
                                       (_tl1144711482_ (##cdr _e1144511477_)))
                                   (if (gx#stx-pair/null? _hd1144611480_)
                                       (if (fx>= (gx#stx-length _hd1144611480_)
                                                 '0)
                                           (let ((_g19785_
                                                  (gx#syntax-split-splice
                                                   _hd1144611480_
                                                   '0)))
                                             (begin
                                               (let ((_g19786_
                                                      (values-count _g19785_)))
                                                 (if (not (fx= _g19786_ 2))
                                                     (error "Context expects 2 values"
                                                            _g19786_)))
                                               (let ((_target1144811485_
                                                      (values-ref _g19785_ 0))
                                                     (_tl1145011487_
                                                      (values-ref _g19785_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl1145011487_)
                                                     (letrec ((_loop1145111490_
                                                               (lambda (_hd1144911493_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _id1145511495_)
                         (if (gx#stx-pair? _hd1144911493_)
                             (let ((_e1145211498_ (gx#stx-e _hd1144911493_)))
                               (let ((_lp-hd1145311501_ (##car _e1145211498_))
                                     (_lp-tl1145411503_ (##cdr _e1145211498_)))
                                 (_loop1145111490_
                                  _lp-tl1145411503_
                                  (cons _lp-hd1145311501_ _id1145511495_))))
                             (let ((_id1145611506_ (reverse _id1145511495_)))
                               (if (gx#stx-pair? _tl1144711482_)
                                   (let ((_e1145711509_
                                          (gx#stx-e _tl1144711482_)))
                                     (let ((_hd1145811512_
                                            (##car _e1145711509_))
                                           (_tl1145911514_
                                            (##cdr _e1145711509_)))
                                       (if (gx#stx-null? _tl1145911514_)
                                           ((lambda (_L11517_)
                                              (let ((_types11543_
                                                     (map _generate-e11423_
                                                          (begin
                                                            '#!void
                                                            (foldr1 (lambda (_g1153511538_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g1153611540_)
                              (cons _g1153511538_ _g1153611540_))
                            '()
                            _L11517_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons 'begin _types11543_)))
                                            _id1145611506_)
                                           (_g1142611464_ _g1142711467_))))
                                   (_g1142611464_ _g1142711467_)))))))
               (_loop1145111490_ _target1144811485_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1142611464_
                                                      _g1142711467_)))))
                                           (_g1142611464_ _g1142711467_))
                                       (_g1142611464_ _g1142711467_))))
                               (_g1142611464_ _g1142711467_))))
                       (_g1142611464_ _g1142711467_)))))
            (let ((_g1142411597_
                   (lambda (_g1142711548_)
                     (if (gx#stx-pair? _g1142711548_)
                         (let ((_e1142911550_ (gx#stx-e _g1142711548_)))
                           (let ((_hd1143011553_ (##car _e1142911550_))
                                 (_tl1143111555_ (##cdr _e1142911550_)))
                             (if (gx#stx-pair? _tl1143111555_)
                                 (let ((_e1143211558_
                                        (gx#stx-e _tl1143111555_)))
                                   (let ((_hd1143311561_ (##car _e1143211558_))
                                         (_tl1143411563_
                                          (##cdr _e1143211558_)))
                                     (if (gx#stx-pair? _hd1143311561_)
                                         (let ((_e1143511566_
                                                (gx#stx-e _hd1143311561_)))
                                           (let ((_hd1143611569_
                                                  (##car _e1143511566_))
                                                 (_tl1143711571_
                                                  (##cdr _e1143511566_)))
                                             (if (gx#stx-null? _tl1143711571_)
                                                 (if (gx#stx-pair?
                                                      _tl1143411563_)
                                                     (let ((_e1143811574_
                                                            (gx#stx-e
                                                             _tl1143411563_)))
                                                       (let ((_hd1143911577_
                                                              (##car _e1143811574_))
                                                             (_tl1144011579_
                                                              (##cdr _e1143811574_)))
                                                         (if (gx#stx-null?
                                                              _tl1144011579_)
                                                             ((lambda (_L11582_)
                                                                (_generate-e11423_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L11582_))
                      _hd1143611569_)
                     (_g1142511545_ _g1142711548_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1142511545_
                                                      _g1142711548_))
                                                 (_g1142511545_
                                                  _g1142711548_))))
                                         (_g1142511545_ _g1142711548_))))
                                 (_g1142511545_ _g1142711548_))))
                         (_g1142511545_ _g1142711548_)))))
              (_g1142411597_ _stx11421_)))))))
  (define gxc#generate-ssxi-call%
    (lambda (_stx10975_)
      (let ((_g1097911081_
             (lambda (_g1098011078_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1098011078_))))
        (let ((_g1097811088_ (lambda (_g1098011084_) ((lambda () '(begin))))))
          (let ((_g1097711238_
                 (lambda (_g1098011091_)
                   (if (gx#stx-pair? _g1098011091_)
                       (let ((_e1103811093_ (gx#stx-e _g1098011091_)))
                         (let ((_hd1103911096_ (##car _e1103811093_))
                               (_tl1104011098_ (##cdr _e1103811093_)))
                           (if (gx#stx-pair? _tl1104011098_)
                               (let ((_e1104111101_ (gx#stx-e _tl1104011098_)))
                                 (let ((_hd1104211104_ (##car _e1104111101_))
                                       (_tl1104311106_ (##cdr _e1104111101_)))
                                   (if (gx#stx-pair? _hd1104211104_)
                                       (let ((_e1104411109_
                                              (gx#stx-e _hd1104211104_)))
                                         (let ((_hd1104511112_
                                                (##car _e1104411109_))
                                               (_tl1104611114_
                                                (##cdr _e1104411109_)))
                                           (if (gx#identifier? _hd1104511112_)
                                               (if (gx#stx-eq?
                                                    '%#ref
                                                    _hd1104511112_)
                                                   (if (gx#stx-pair?
                                                        _tl1104611114_)
                                                       (let ((_e1104711117_
                                                              (gx#stx-e
                                                               _tl1104611114_)))
                                                         (let ((_hd1104811120_
                                                                (##car _e1104711117_))
                                                               (_tl1104911122_
                                                                (##cdr _e1104711117_)))
                                                           (if (gx#stx-null?
                                                                _tl1104911122_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl1104311106_)
                           (let ((_e1105011125_ (gx#stx-e _tl1104311106_)))
                             (let ((_hd1105111128_ (##car _e1105011125_))
                                   (_tl1105211130_ (##cdr _e1105011125_)))
                               (if (gx#stx-pair? _hd1105111128_)
                                   (let ((_e1105311133_
                                          (gx#stx-e _hd1105111128_)))
                                     (let ((_hd1105411136_
                                            (##car _e1105311133_))
                                           (_tl1105511138_
                                            (##cdr _e1105311133_)))
                                       (if (gx#identifier? _hd1105411136_)
                                           (if (gx#stx-eq?
                                                '%#ref
                                                _hd1105411136_)
                                               (if (gx#stx-pair?
                                                    _tl1105511138_)
                                                   (let ((_e1105611141_
                                                          (gx#stx-e
                                                           _tl1105511138_)))
                                                     (let ((_hd1105711144_
                                                            (##car _e1105611141_))
                                                           (_tl1105811146_
                                                            (##cdr _e1105611141_)))
                                                       (if (gx#stx-null?
                                                            _tl1105811146_)
                                                           (if (gx#stx-pair?
                                                                _tl1105211130_)
                                                               (let ((_e1105911149_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl1105211130_)))
                         (let ((_hd1106011152_ (##car _e1105911149_))
                               (_tl1106111154_ (##cdr _e1105911149_)))
                           (if (gx#stx-pair? _hd1106011152_)
                               (let ((_e1106211157_ (gx#stx-e _hd1106011152_)))
                                 (let ((_hd1106311160_ (##car _e1106211157_))
                                       (_tl1106411162_ (##cdr _e1106211157_)))
                                   (if (gx#identifier? _hd1106311160_)
                                       (if (gx#stx-eq? '%#quote _hd1106311160_)
                                           (if (gx#stx-pair? _tl1106411162_)
                                               (let ((_e1106511165_
                                                      (gx#stx-e
                                                       _tl1106411162_)))
                                                 (let ((_hd1106611168_
                                                        (##car _e1106511165_))
                                                       (_tl1106711170_
                                                        (##cdr _e1106511165_)))
                                                   (if (gx#stx-null?
                                                        _tl1106711170_)
                                                       (if (gx#stx-pair?
                                                            _tl1106111154_)
                                                           (let ((_e1106811173_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl1106111154_)))
                     (let ((_hd1106911176_ (##car _e1106811173_))
                           (_tl1107011178_ (##cdr _e1106811173_)))
                       (if (gx#stx-pair? _hd1106911176_)
                           (let ((_e1107111181_ (gx#stx-e _hd1106911176_)))
                             (let ((_hd1107211184_ (##car _e1107111181_))
                                   (_tl1107311186_ (##cdr _e1107111181_)))
                               (if (gx#identifier? _hd1107211184_)
                                   (if (gx#stx-eq? '%#ref _hd1107211184_)
                                       (if (gx#stx-pair? _tl1107311186_)
                                           (let ((_e1107411189_
                                                  (gx#stx-e _tl1107311186_)))
                                             (let ((_hd1107511192_
                                                    (##car _e1107411189_))
                                                   (_tl1107611194_
                                                    (##cdr _e1107411189_)))
                                               (if (gx#stx-null?
                                                    _tl1107611194_)
                                                   (if (gx#stx-null?
                                                        _tl1107011178_)
                                                       ((lambda (_L11197_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L11198_
                         _L11199_
                         _L11200_)
                  (if (eq? (gxc#generate-runtime-binding-id
                            (gx#datum->syntax__0 '#f '-bind-method))
                           'bind-method!)
                      (cons 'declare-method
                            (cons (gxc#generate-runtime-binding-id _L11199_)
                                  (cons (gx#stx-e _L11198_)
                                        (cons (gxc#generate-runtime-binding-id
                                               _L11197_)
                                              (cons '#f '())))))
                      (_g1097811088_ _g1098011091_)))
                _hd1107511192_
                _hd1106611168_
                _hd1105711144_
                _hd1104811120_)
               (_g1097811088_ _g1098011091_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1097811088_
                                                    _g1098011091_))))
                                           (_g1097811088_ _g1098011091_))
                                       (_g1097811088_ _g1098011091_))
                                   (_g1097811088_ _g1098011091_))))
                           (_g1097811088_ _g1098011091_))))
                   (_g1097811088_ _g1098011091_))
               (_g1097811088_ _g1098011091_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1097811088_ _g1098011091_))
                                           (_g1097811088_ _g1098011091_))
                                       (_g1097811088_ _g1098011091_))))
                               (_g1097811088_ _g1098011091_))))
                       (_g1097811088_ _g1098011091_))
                   (_g1097811088_ _g1098011091_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1097811088_
                                                    _g1098011091_))
                                               (_g1097811088_ _g1098011091_))
                                           (_g1097811088_ _g1098011091_))))
                                   (_g1097811088_ _g1098011091_))))
                           (_g1097811088_ _g1098011091_))
                       (_g1097811088_ _g1098011091_))))
               (_g1097811088_ _g1098011091_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1097811088_
                                                    _g1098011091_))
                                               (_g1097811088_ _g1098011091_))))
                                       (_g1097811088_ _g1098011091_))))
                               (_g1097811088_ _g1098011091_))))
                       (_g1097811088_ _g1098011091_)))))
            (let ((_g1097611418_
                   (lambda (_g1098011241_)
                     (if (gx#stx-pair? _g1098011241_)
                         (let ((_e1098611243_ (gx#stx-e _g1098011241_)))
                           (let ((_hd1098711246_ (##car _e1098611243_))
                                 (_tl1098811248_ (##cdr _e1098611243_)))
                             (if (gx#stx-pair? _tl1098811248_)
                                 (let ((_e1098911251_
                                        (gx#stx-e _tl1098811248_)))
                                   (let ((_hd1099011254_ (##car _e1098911251_))
                                         (_tl1099111256_
                                          (##cdr _e1098911251_)))
                                     (if (gx#stx-pair? _hd1099011254_)
                                         (let ((_e1099211259_
                                                (gx#stx-e _hd1099011254_)))
                                           (let ((_hd1099311262_
                                                  (##car _e1099211259_))
                                                 (_tl1099411264_
                                                  (##cdr _e1099211259_)))
                                             (if (gx#identifier?
                                                  _hd1099311262_)
                                                 (if (gx#stx-eq?
                                                      '%#ref
                                                      _hd1099311262_)
                                                     (if (gx#stx-pair?
                                                          _tl1099411264_)
                                                         (let ((_e1099511267_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1099411264_)))
                   (let ((_hd1099611270_ (##car _e1099511267_))
                         (_tl1099711272_ (##cdr _e1099511267_)))
                     (if (gx#stx-null? _tl1099711272_)
                         (if (gx#stx-pair? _tl1099111256_)
                             (let ((_e1099811275_ (gx#stx-e _tl1099111256_)))
                               (let ((_hd1099911278_ (##car _e1099811275_))
                                     (_tl1100011280_ (##cdr _e1099811275_)))
                                 (if (gx#stx-pair? _hd1099911278_)
                                     (let ((_e1100111283_
                                            (gx#stx-e _hd1099911278_)))
                                       (let ((_hd1100211286_
                                              (##car _e1100111283_))
                                             (_tl1100311288_
                                              (##cdr _e1100111283_)))
                                         (if (gx#identifier? _hd1100211286_)
                                             (if (gx#stx-eq?
                                                  '%#ref
                                                  _hd1100211286_)
                                                 (if (gx#stx-pair?
                                                      _tl1100311288_)
                                                     (let ((_e1100411291_
                                                            (gx#stx-e
                                                             _tl1100311288_)))
                                                       (let ((_hd1100511294_
                                                              (##car _e1100411291_))
                                                             (_tl1100611296_
                                                              (##cdr _e1100411291_)))
                                                         (if (gx#stx-null?
                                                              _tl1100611296_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1100011280_)
                         (let ((_e1100711299_ (gx#stx-e _tl1100011280_)))
                           (let ((_hd1100811302_ (##car _e1100711299_))
                                 (_tl1100911304_ (##cdr _e1100711299_)))
                             (if (gx#stx-pair? _hd1100811302_)
                                 (let ((_e1101011307_
                                        (gx#stx-e _hd1100811302_)))
                                   (let ((_hd1101111310_ (##car _e1101011307_))
                                         (_tl1101211312_
                                          (##cdr _e1101011307_)))
                                     (if (gx#identifier? _hd1101111310_)
                                         (if (gx#stx-eq?
                                              '%#quote
                                              _hd1101111310_)
                                             (if (gx#stx-pair? _tl1101211312_)
                                                 (let ((_e1101311315_
                                                        (gx#stx-e
                                                         _tl1101211312_)))
                                                   (let ((_hd1101411318_
                                                          (##car _e1101311315_))
                                                         (_tl1101511320_
                                                          (##cdr _e1101311315_)))
                                                     (if (gx#stx-null?
                                                          _tl1101511320_)
                                                         (if (gx#stx-pair?
                                                              _tl1100911304_)
                                                             (let ((_e1101611323_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl1100911304_)))
                       (let ((_hd1101711326_ (##car _e1101611323_))
                             (_tl1101811328_ (##cdr _e1101611323_)))
                         (if (gx#stx-pair? _hd1101711326_)
                             (let ((_e1101911331_ (gx#stx-e _hd1101711326_)))
                               (let ((_hd1102011334_ (##car _e1101911331_))
                                     (_tl1102111336_ (##cdr _e1101911331_)))
                                 (if (gx#identifier? _hd1102011334_)
                                     (if (gx#stx-eq? '%#ref _hd1102011334_)
                                         (if (gx#stx-pair? _tl1102111336_)
                                             (let ((_e1102211339_
                                                    (gx#stx-e _tl1102111336_)))
                                               (let ((_hd1102311342_
                                                      (##car _e1102211339_))
                                                     (_tl1102411344_
                                                      (##cdr _e1102211339_)))
                                                 (if (gx#stx-null?
                                                      _tl1102411344_)
                                                     (if (gx#stx-pair?
                                                          _tl1101811328_)
                                                         (let ((_e1102511347_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1101811328_)))
                   (let ((_hd1102611350_ (##car _e1102511347_))
                         (_tl1102711352_ (##cdr _e1102511347_)))
                     (if (gx#stx-pair? _hd1102611350_)
                         (let ((_e1102811355_ (gx#stx-e _hd1102611350_)))
                           (let ((_hd1102911358_ (##car _e1102811355_))
                                 (_tl1103011360_ (##cdr _e1102811355_)))
                             (if (gx#identifier? _hd1102911358_)
                                 (if (gx#stx-eq? '%#quote _hd1102911358_)
                                     (if (gx#stx-pair? _tl1103011360_)
                                         (let ((_e1103111363_
                                                (gx#stx-e _tl1103011360_)))
                                           (let ((_hd1103211366_
                                                  (##car _e1103111363_))
                                                 (_tl1103311368_
                                                  (##cdr _e1103111363_)))
                                             (if (gx#stx-null? _tl1103311368_)
                                                 (if (gx#stx-null?
                                                      _tl1102711352_)
                                                     ((lambda (_L11371_
                                                               _L11372_
                                                               _L11373_
                                                               _L11374_
                                                               _L11375_)
                                                        (if (eq? (gxc#generate-runtime-binding-id
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L11375_)
                         'bind-method!)
                    (cons 'declare-method
                          (cons (gxc#generate-runtime-binding-id _L11374_)
                                (cons (gx#stx-e _L11373_)
                                      (cons (gxc#generate-runtime-binding-id
                                             _L11372_)
                                            (cons (gx#stx-e _L11371_) '())))))
                    (_g1097711238_ _g1098011241_)))
              _hd1103211366_
              _hd1102311342_
              _hd1101411318_
              _hd1100511294_
              _hd1099611270_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1097711238_
                                                      _g1098011241_))
                                                 (_g1097711238_
                                                  _g1098011241_))))
                                         (_g1097711238_ _g1098011241_))
                                     (_g1097711238_ _g1098011241_))
                                 (_g1097711238_ _g1098011241_))))
                         (_g1097711238_ _g1098011241_))))
                 (_g1097711238_ _g1098011241_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1097711238_
                                                      _g1098011241_))))
                                             (_g1097711238_ _g1098011241_))
                                         (_g1097711238_ _g1098011241_))
                                     (_g1097711238_ _g1098011241_))))
                             (_g1097711238_ _g1098011241_))))
                     (_g1097711238_ _g1098011241_))
                 (_g1097711238_ _g1098011241_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1097711238_ _g1098011241_))
                                             (_g1097711238_ _g1098011241_))
                                         (_g1097711238_ _g1098011241_))))
                                 (_g1097711238_ _g1098011241_))))
                         (_g1097711238_ _g1098011241_))
                     (_g1097711238_ _g1098011241_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1097711238_
                                                      _g1098011241_))
                                                 (_g1097711238_ _g1098011241_))
                                             (_g1097711238_ _g1098011241_))))
                                     (_g1097711238_ _g1098011241_))))
                             (_g1097711238_ _g1098011241_))
                         (_g1097711238_ _g1098011241_))))
                 (_g1097711238_ _g1098011241_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1097711238_
                                                      _g1098011241_))
                                                 (_g1097711238_
                                                  _g1098011241_))))
                                         (_g1097711238_ _g1098011241_))))
                                 (_g1097711238_ _g1098011241_))))
                         (_g1097711238_ _g1098011241_)))))
              (_g1097611418_ _stx10975_)))))))
  (define gxc#!alias::typedecl
    (lambda (_self10951_)
      (let ((_self1095210958_ _self10951_))
        (let ((_E1095410962_
               (lambda () (error '"No clause matching" _self1095210958_))))
          (let ((_K1095510967_
                 (lambda (_alias-id10965_)
                   (cons '@alias (cons _alias-id10965_ '())))))
            (if (##structure-instance-of?
                 _self1095210958_
                 (##type-id gxc#!alias::t))
                (let ((_e1095610970_ (##vector-ref _self1095210958_ '1)))
                  (let ((_alias-id10973_ _e1095610970_))
                    (_K1095510967_ _alias-id10973_)))
                (_E1095410962_)))))))
  (bind-method! gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f)
  (define gxc#!struct-type::typedecl
    (lambda (_self10895_)
      (let ((_self1089610907_ _self10895_))
        (let ((_E1089810911_
               (lambda () (error '"No clause matching" _self1089610907_))))
          (let ((_K1089910920_
                 (lambda (_plist10914_
                          _ctor10915_
                          _fields10916_
                          _super10917_
                          _type-id10918_)
                   (cons '@struct-type
                         (cons _type-id10918_
                               (cons _super10917_
                                     (cons _fields10916_
                                           (cons _ctor10915_
                                                 (cons _plist10914_
                                                       '())))))))))
            (if (##structure-instance-of?
                 _self1089610907_
                 (##type-id gxc#!struct-type::t))
                (let ((_e1090010923_ (##vector-ref _self1089610907_ '1)))
                  (let ((_type-id10926_ _e1090010923_))
                    (let ((_e1090110928_ (##vector-ref _self1089610907_ '2)))
                      (let ((_super10931_ _e1090110928_))
                        (let ((_e1090210933_
                               (##vector-ref _self1089610907_ '3)))
                          (let ((_fields10936_ _e1090210933_))
                            (let ((_e1090310938_
                                   (##vector-ref _self1089610907_ '4)))
                              (let ((_e1090410941_
                                     (##vector-ref _self1089610907_ '5)))
                                (let ((_ctor10944_ _e1090410941_))
                                  (let ((_e1090510946_
                                         (##vector-ref _self1089610907_ '6)))
                                    (let ((_plist10949_ _e1090510946_))
                                      (_K1089910920_
                                       _plist10949_
                                       _ctor10944_
                                       _fields10936_
                                       _super10931_
                                       _type-id10926_))))))))))))
                (_E1089810911_)))))))
  (bind-method! gxc#!struct-type::t 'typedecl gxc#!struct-type::typedecl '#f)
  (define gxc#!struct-pred::typedecl
    (lambda (_self10871_)
      (let ((_self1087210878_ _self10871_))
        (let ((_E1087410882_
               (lambda () (error '"No clause matching" _self1087210878_))))
          (let ((_K1087510887_
                 (lambda (_struct-t10885_)
                   (cons '@struct-pred (cons _struct-t10885_ '())))))
            (if (##structure-instance-of?
                 _self1087210878_
                 (##type-id gxc#!struct-pred::t))
                (let ((_e1087610890_ (##vector-ref _self1087210878_ '1)))
                  (let ((_struct-t10893_ _e1087610890_))
                    (_K1087510887_ _struct-t10893_)))
                (_E1087410882_)))))))
  (bind-method! gxc#!struct-pred::t 'typedecl gxc#!struct-pred::typedecl '#f)
  (define gxc#!struct-cons::typedecl
    (lambda (_self10847_)
      (let ((_self1084810854_ _self10847_))
        (let ((_E1085010858_
               (lambda () (error '"No clause matching" _self1084810854_))))
          (let ((_K1085110863_
                 (lambda (_struct-t10861_)
                   (cons '@struct-cons (cons _struct-t10861_ '())))))
            (if (##structure-instance-of?
                 _self1084810854_
                 (##type-id gxc#!struct-cons::t))
                (let ((_e1085210866_ (##vector-ref _self1084810854_ '1)))
                  (let ((_struct-t10869_ _e1085210866_))
                    (_K1085110863_ _struct-t10869_)))
                (_E1085010858_)))))))
  (bind-method! gxc#!struct-cons::t 'typedecl gxc#!struct-cons::typedecl '#f)
  (define gxc#!struct-getf::typedecl
    (lambda (_self10816_)
      (let ((_self1081710824_ _self10816_))
        (let ((_E1081910828_
               (lambda () (error '"No clause matching" _self1081710824_))))
          (let ((_K1082010834_
                 (lambda (_off10831_ _struct-t10832_)
                   (cons '@struct-getf
                         (cons _struct-t10832_ (cons _off10831_ '()))))))
            (if (##structure-instance-of?
                 _self1081710824_
                 (##type-id gxc#!struct-getf::t))
                (let ((_e1082110837_ (##vector-ref _self1081710824_ '1)))
                  (let ((_struct-t10840_ _e1082110837_))
                    (let ((_e1082210842_ (##vector-ref _self1081710824_ '2)))
                      (let ((_off10845_ _e1082210842_))
                        (_K1082010834_ _off10845_ _struct-t10840_)))))
                (_E1081910828_)))))))
  (bind-method! gxc#!struct-getf::t 'typedecl gxc#!struct-getf::typedecl '#f)
  (define gxc#!struct-setf::typedecl
    (lambda (_self10785_)
      (let ((_self1078610793_ _self10785_))
        (let ((_E1078810797_
               (lambda () (error '"No clause matching" _self1078610793_))))
          (let ((_K1078910803_
                 (lambda (_off10800_ _struct-t10801_)
                   (cons '@struct-setf
                         (cons _struct-t10801_ (cons _off10800_ '()))))))
            (if (##structure-instance-of?
                 _self1078610793_
                 (##type-id gxc#!struct-setf::t))
                (let ((_e1079010806_ (##vector-ref _self1078610793_ '1)))
                  (let ((_struct-t10809_ _e1079010806_))
                    (let ((_e1079110811_ (##vector-ref _self1078610793_ '2)))
                      (let ((_off10814_ _e1079110811_))
                        (_K1078910803_ _off10814_ _struct-t10809_)))))
                (_E1078810797_)))))))
  (bind-method! gxc#!struct-setf::t 'typedecl gxc#!struct-setf::typedecl '#f)
  (define gxc#!lambda::typedecl
    (lambda (_self10733_)
      (let ((_self1073410744_ _self10733_))
        (let ((_E1073610748_
               (lambda () (error '"No clause matching" _self1073410744_))))
          (let ((_K1073710759_
                 (lambda (_typedecl10751_
                          _inline10752_
                          _dispatch10753_
                          _arity10754_)
                   (if _inline10752_
                       (let ((_$e10756_ _typedecl10751_))
                         (if _$e10756_
                             _$e10756_
                             (error '"Cannot generate typedecl for inline rules")))
                       (cons '@lambda
                             (cons _arity10754_
                                   (cons _dispatch10753_ '())))))))
            (if (##structure-instance-of?
                 _self1073410744_
                 (##type-id gxc#!lambda::t))
                (let ((_e1073810762_ (##vector-ref _self1073410744_ '1)))
                  (let ((_e1073910765_ (##vector-ref _self1073410744_ '2)))
                    (let ((_arity10768_ _e1073910765_))
                      (let ((_e1074010770_ (##vector-ref _self1073410744_ '3)))
                        (let ((_dispatch10773_ _e1074010770_))
                          (let ((_e1074110775_
                                 (##vector-ref _self1073410744_ '4)))
                            (let ((_inline10778_ _e1074110775_))
                              (let ((_e1074210780_
                                     (##vector-ref _self1073410744_ '5)))
                                (let ((_typedecl10783_ _e1074210780_))
                                  (_K1073710759_
                                   _typedecl10783_
                                   _inline10778_
                                   _dispatch10773_
                                   _arity10768_))))))))))
                (_E1073610748_)))))))
  (bind-method! gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f)
  (define gxc#!case-lambda::typedecl
    (lambda (_self10666_)
      (let ((_clause-e10668_
             (lambda (_clause10698_)
               (let ((_clause1069910707_ _clause10698_))
                 (let ((_E1070110711_
                        (lambda ()
                          (error '"No clause matching" _clause1069910707_))))
                   (let ((_K1070210717_
                          (lambda (_dispatch10714_ _arity10715_)
                            (cons _arity10715_ (cons _dispatch10714_ '())))))
                     (if (##structure-instance-of?
                          _clause1069910707_
                          (##type-id gxc#!lambda::t))
                         (let ((_e1070310720_
                                (##vector-ref _clause1069910707_ '1)))
                           (let ((_e1070410723_
                                  (##vector-ref _clause1069910707_ '2)))
                             (let ((_arity10726_ _e1070410723_))
                               (let ((_e1070510728_
                                      (##vector-ref _clause1069910707_ '3)))
                                 (let ((_dispatch10731_ _e1070510728_))
                                   (_K1070210717_
                                    _dispatch10731_
                                    _arity10726_))))))
                         (_E1070110711_))))))))
        (let ((_self1066910676_ _self10666_))
          (let ((_E1067110680_
                 (lambda () (error '"No clause matching" _self1066910676_))))
            (let ((_K1067210687_
                   (lambda (_clauses10683_)
                     (let ((_clauses10685_
                            (map _clause-e10668_ _clauses10683_)))
                       (cons '@case-lambda _clauses10685_)))))
              (if (##structure-instance-of?
                   _self1066910676_
                   (##type-id gxc#!case-lambda::t))
                  (let ((_e1067310690_ (##vector-ref _self1066910676_ '1)))
                    (let ((_e1067410693_ (##vector-ref _self1066910676_ '2)))
                      (let ((_clauses10696_ _e1067410693_))
                        (_K1067210687_ _clauses10696_))))
                  (_E1067110680_))))))))
  (bind-method! gxc#!case-lambda::t 'typedecl gxc#!case-lambda::typedecl '#f)
  (define gxc#identifier-symbol
    (lambda (_stx10664_) (gxc#generate-runtime-binding-id _stx10664_))))
