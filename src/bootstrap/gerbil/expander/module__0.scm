(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gx#module-import::t
    (make-struct-type
     'gx#module-import::t
     '#f
     '4
     'module-import
     '((final: . #t))
     '#f))
  (define gx#module-import? (make-struct-predicate gx#module-import::t))
  (define gx#make-module-import
    (lambda _$args14079_
      (apply make-struct-instance gx#module-import::t _$args14079_)))
  (define gx#module-import-source
    (make-struct-field-accessor gx#module-import::t '0))
  (define gx#module-import-name
    (make-struct-field-accessor gx#module-import::t '1))
  (define gx#module-import-phi
    (make-struct-field-accessor gx#module-import::t '2))
  (define gx#module-import-weak?
    (make-struct-field-accessor gx#module-import::t '3))
  (define gx#module-import-source-set!
    (make-struct-field-mutator gx#module-import::t '0))
  (define gx#module-import-name-set!
    (make-struct-field-mutator gx#module-import::t '1))
  (define gx#module-import-phi-set!
    (make-struct-field-mutator gx#module-import::t '2))
  (define gx#module-import-weak?-set!
    (make-struct-field-mutator gx#module-import::t '3))
  (define gx#module-export::t
    (make-struct-type
     'gx#module-export::t
     '#f
     '5
     'module-export
     '((final: . #t))
     '#f))
  (define gx#module-export? (make-struct-predicate gx#module-export::t))
  (define gx#make-module-export
    (lambda _$args14076_
      (apply make-struct-instance gx#module-export::t _$args14076_)))
  (define gx#module-export-context
    (make-struct-field-accessor gx#module-export::t '0))
  (define gx#module-export-key
    (make-struct-field-accessor gx#module-export::t '1))
  (define gx#module-export-phi
    (make-struct-field-accessor gx#module-export::t '2))
  (define gx#module-export-name
    (make-struct-field-accessor gx#module-export::t '3))
  (define gx#module-export-weak?
    (make-struct-field-accessor gx#module-export::t '4))
  (define gx#module-export-context-set!
    (make-struct-field-mutator gx#module-export::t '0))
  (define gx#module-export-key-set!
    (make-struct-field-mutator gx#module-export::t '1))
  (define gx#module-export-phi-set!
    (make-struct-field-mutator gx#module-export::t '2))
  (define gx#module-export-name-set!
    (make-struct-field-mutator gx#module-export::t '3))
  (define gx#module-export-weak?-set!
    (make-struct-field-mutator gx#module-export::t '4))
  (define gx#import-set::t
    (make-struct-type
     'gx#import-set::t
     '#f
     '3
     'import-set
     '((final: . #t))
     '#f))
  (define gx#import-set? (make-struct-predicate gx#import-set::t))
  (define gx#make-import-set
    (lambda _$args14073_
      (apply make-struct-instance gx#import-set::t _$args14073_)))
  (define gx#import-set-source
    (make-struct-field-accessor gx#import-set::t '0))
  (define gx#import-set-phi (make-struct-field-accessor gx#import-set::t '1))
  (define gx#import-set-imports
    (make-struct-field-accessor gx#import-set::t '2))
  (define gx#import-set-source-set!
    (make-struct-field-mutator gx#import-set::t '0))
  (define gx#import-set-phi-set!
    (make-struct-field-mutator gx#import-set::t '1))
  (define gx#import-set-imports-set!
    (make-struct-field-mutator gx#import-set::t '2))
  (define gx#export-set::t
    (make-struct-type
     'gx#export-set::t
     '#f
     '3
     'export-set
     '((final: . #t))
     '#f))
  (define gx#export-set? (make-struct-predicate gx#export-set::t))
  (define gx#make-export-set
    (lambda _$args14070_
      (apply make-struct-instance gx#export-set::t _$args14070_)))
  (define gx#export-set-source
    (make-struct-field-accessor gx#export-set::t '0))
  (define gx#export-set-phi (make-struct-field-accessor gx#export-set::t '1))
  (define gx#export-set-exports
    (make-struct-field-accessor gx#export-set::t '2))
  (define gx#export-set-source-set!
    (make-struct-field-mutator gx#export-set::t '0))
  (define gx#export-set-phi-set!
    (make-struct-field-mutator gx#export-set::t '1))
  (define gx#export-set-exports-set!
    (make-struct-field-mutator gx#export-set::t '2))
  (define gx#import-expander::t
    (make-struct-type
     'gx#import-expander::t
     gx#user-expander::t
     '0
     'import-expander
     '()
     ':init!))
  (define gx#import-expander? (make-struct-predicate gx#import-expander::t))
  (define gx#make-import-expander
    (lambda _$args14067_
      (apply make-struct-instance gx#import-expander::t _$args14067_)))
  (define gx#export-expander::t
    (make-struct-type
     'gx#export-expander::t
     gx#user-expander::t
     '0
     'export-expander
     '()
     ':init!))
  (define gx#export-expander? (make-struct-predicate gx#export-expander::t))
  (define gx#make-export-expander
    (lambda _$args14064_
      (apply make-struct-instance gx#export-expander::t _$args14064_)))
  (define gx#current-import-expander-phi (make-parameter '#f))
  (define gx#current-export-expander-phi (make-parameter '#f))
  (define gx#current-module-reader-path (make-parameter '#f))
  (define gx#current-module-reader-args (make-parameter '#f))
  (define gx#module-context:::init!
    (lambda (_self14058_ _id14059_ _super14060_ _ns14061_ _path14062_)
      (if (##fx< '11 (##vector-length _self14058_))
          (begin
            (##vector-set! _self14058_ '1 _id14059_)
            (##vector-set! _self14058_ '2 (make-hash-table-eq))
            (##vector-set! _self14058_ '3 _super14060_)
            (##vector-set! _self14058_ '4 '#f)
            (##vector-set! _self14058_ '5 '#f)
            (##vector-set! _self14058_ '6 _ns14061_)
            (##vector-set! _self14058_ '7 _path14062_)
            (##vector-set! _self14058_ '8 '())
            (##vector-set! _self14058_ '9 '())
            (##vector-set! _self14058_ '10 '#f)
            (##vector-set! _self14058_ '11 '#f))
          (error '"struct-instance-init!: too many arguments for struct"
                 _self14058_))))
  (bind-method! gx#module-context::t ':init! gx#module-context:::init! '#f)
  (begin
    (define gx#prelude-context:::init!__opt-lambda13900
      (lambda (_self13902_ _ctx13903_ _root13904_)
        (let ((_super13912_
               (let ((_$e13906_ _root13904_))
                 (if _$e13906_
                     _$e13906_
                     (let ((_$e13909_ (gx#core-context-root__0)))
                       (if _$e13909_
                           _$e13909_
                           (make-struct-instance gx#root-context::t)))))))
          (if _ctx13903_
              (let ((_id13915_
                     (##structure-ref
                      _ctx13903_
                      '1
                      gx#expander-context::t
                      '#f))
                    (_path13916_
                     (##structure-ref _ctx13903_ '7 gx#module-context::t '#f))
                    (_in13917_
                     (map gx#core-module-export->import
                          (##structure-ref
                           _ctx13903_
                           '9
                           gx#module-context::t
                           '#f)))
                    (_e13918_
                     (make-promise (lambda () (gx#eval-module _ctx13903_)))))
                (begin
                  (if (##fx< '8 (##vector-length _self13902_))
                      (begin
                        (##vector-set! _self13902_ '1 _id13915_)
                        (##vector-set! _self13902_ '2 (make-hash-table-eq))
                        (##vector-set! _self13902_ '3 _super13912_)
                        (##vector-set! _self13902_ '4 '#f)
                        (##vector-set! _self13902_ '5 '#f)
                        (##vector-set! _self13902_ '6 _path13916_)
                        (##vector-set! _self13902_ '7 _in13917_)
                        (##vector-set! _self13902_ '8 _e13918_))
                      (error '"struct-instance-init!: too many arguments for struct"
                             _self13902_))
                  (for-each
                   (lambda (_g1391913921_)
                     (gx#core-bind-weak-import!__opt-lambda12461
                      _g1391913921_
                      _self13902_))
                   _in13917_)))
              (if (##fx< '8 (##vector-length _self13902_))
                  (begin
                    (##vector-set! _self13902_ '1 '#f)
                    (##vector-set! _self13902_ '2 (make-hash-table-eq))
                    (##vector-set! _self13902_ '3 _super13912_)
                    (##vector-set! _self13902_ '4 '#f)
                    (##vector-set! _self13902_ '5 '#f)
                    (##vector-set! _self13902_ '6 '#f)
                    (##vector-set! _self13902_ '7 '())
                    (##vector-set! _self13902_ '8 '#f))
                  (error '"struct-instance-init!: too many arguments for struct"
                         _self13902_))))))
    (begin
      (define gx#prelude-context:::init!__0
        (lambda (_self13927_ _ctx13928_)
          (let ((_root13930_ '#f))
            (gx#prelude-context:::init!__opt-lambda13900
             _self13927_
             _ctx13928_
             _root13930_))))
      (define gx#prelude-context:::init!
        (lambda _g14095_
          (let ((_g14094_ (length _g14095_)))
            (cond ((fx= _g14094_ 2)
                   (apply gx#prelude-context:::init!__0 _g14095_))
                  ((fx= _g14094_ 3)
                   (apply gx#prelude-context:::init!__opt-lambda13900
                          _g14095_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#prelude-context:::init!
                    _g14095_))))))))
  (bind-method! gx#prelude-context::t ':init! gx#prelude-context:::init! '#f)
  (define gx#import-expander:::init!
    (lambda (_self13776_ _e13777_)
      (if (##fx< '3 (##vector-length _self13776_))
          (begin
            (##vector-set! _self13776_ '1 _e13777_)
            (##vector-set! _self13776_ '2 (gx#current-expander-context))
            (##vector-set! _self13776_ '3 (fx- (gx#current-expander-phi) '1)))
          (error '"struct-instance-init!: too many arguments for struct"
                 _self13776_))))
  (bind-method! gx#import-expander::t ':init! gx#import-expander:::init! '#f)
  (define gx#export-expander:::init!
    (lambda (_self13651_ _e13652_)
      (if (##fx< '3 (##vector-length _self13651_))
          (begin
            (##vector-set! _self13651_ '1 _e13652_)
            (##vector-set! _self13651_ '2 (gx#current-expander-context))
            (##vector-set! _self13651_ '3 (fx- (gx#current-expander-phi) '1)))
          (error '"struct-instance-init!: too many arguments for struct"
                 _self13651_))))
  (bind-method! gx#export-expander::t ':init! gx#export-expander:::init! '#f)
  (define gx#import-expander::apply-import-expander
    (lambda (_g1352113524_ _g1352213526_)
      (gx#core-apply-user-expander__opt-lambda5413
       _g1352113524_
       _g1352213526_
       'apply-import-expander)))
  (bind-method!
   gx#import-expander::t
   'apply-import-expander
   gx#import-expander::apply-import-expander
   '#f)
  (define gx#export-expander::apply-export-expander
    (lambda (_g1339213395_ _g1339313397_)
      (gx#core-apply-user-expander__opt-lambda5413
       _g1339213395_
       _g1339313397_
       'apply-export-expander)))
  (bind-method!
   gx#export-expander::t
   'apply-export-expander
   gx#export-expander::apply-export-expander
   '#f)
  (define gx#module-source-path
    (lambda (_ctx13263_)
      (let* ((_path13265_
              (##structure-ref _ctx13263_ '7 gx#module-context::t '#f))
             (_path13267_
              (if (pair? _path13265_) (last _path13265_) _path13265_)))
        (if (string? _path13267_) _path13267_ '#f))))
  (begin
    (define gx#import-module__opt-lambda13237
      (lambda (_path13239_ _reload?13240_ _eval?13241_)
        (let ((_ctx13243_
               ((gx#current-expander-module-import)
                _path13239_
                _reload?13240_)))
          (begin
            (if (if _ctx13243_ _eval?13241_ '#f)
                (gx#eval-module _ctx13243_)
                '#!void)
            _ctx13243_))))
    (begin
      (define gx#import-module__0
        (lambda (_path13248_)
          (let* ((_reload?13250_ '#f) (_eval?13252_ '#f))
            (gx#import-module__opt-lambda13237
             _path13248_
             _reload?13250_
             _eval?13252_))))
      (define gx#import-module__1
        (lambda (_path13254_ _reload?13255_)
          (let ((_eval?13257_ '#f))
            (gx#import-module__opt-lambda13237
             _path13254_
             _reload?13255_
             _eval?13257_))))
      (define gx#import-module
        (lambda _g14097_
          (let ((_g14096_ (length _g14097_)))
            (cond ((fx= _g14096_ 1) (apply gx#import-module__0 _g14097_))
                  ((fx= _g14096_ 2) (apply gx#import-module__1 _g14097_))
                  ((fx= _g14096_ 3)
                   (apply gx#import-module__opt-lambda13237 _g14097_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#import-module
                    _g14097_))))))))
  (define gx#eval-module
    (lambda (_mod13236_) ((gx#current-expander-module-eval) _mod13236_)))
  (define gx#core-eval-module
    (lambda (_obj13221_)
      (letrec ((_force-e13223_
                (lambda (_getf13232_ _e13233_)
                  (call-with-parameters
                   (lambda () (force (_getf13232_ _e13233_)))
                   gx#current-expander-context
                   _e13233_
                   gx#current-expander-phi
                   '0))))
        (let _recur13225_ ((_e13227_ _obj13221_))
          (if (##structure-instance-of? _e13227_ 'gx#module-context::t)
              (begin
                (let ((_$e13229_
                       (gx#core-context-prelude__opt-lambda13202 _e13227_)))
                  (if _$e13229_ (_recur13225_ _$e13229_) '#!void))
                (_force-e13223_ gx#module-context-e _e13227_))
              (if (##structure-instance-of? _e13227_ 'gx#prelude-context::t)
                  (_force-e13223_ gx#prelude-context-e _e13227_)
                  (if (gx#stx-string? _e13227_)
                      (_recur13225_
                       (gx#import-module__0
                        (gx#core-resolve-module-path__0 _e13227_)))
                      (if (gx#core-library-module-path? _e13227_)
                          (_recur13225_
                           (gx#import-module__0
                            (gx#core-resolve-library-module-path _e13227_)))
                          (error '"Cannot eval module" _obj13221_)))))))))
  (begin
    (define gx#core-context-prelude__opt-lambda13202
      (lambda (_ctx13204_)
        (let _lp13206_ ((_e13208_ _ctx13204_))
          (if (let ((_$e13210_
                     (##structure-instance-of?
                      _e13208_
                      'gx#module-context::t)))
                (if _$e13210_
                    _$e13210_
                    (##structure-instance-of? _e13208_ 'gx#local-context::t)))
              (_lp13206_ (##structure-ref _e13208_ '3 gx#phi-context::t '#f))
              (if (##structure-instance-of? _e13208_ 'gx#prelude-context::t)
                  _e13208_
                  '#f)))))
    (begin
      (define gx#core-context-prelude__0
        (lambda ()
          (let ((_ctx13217_ (gx#current-expander-context)))
            (gx#core-context-prelude__opt-lambda13202 _ctx13217_))))
      (define gx#core-context-prelude
        (lambda _g14099_
          (let ((_g14098_ (length _g14099_)))
            (cond ((fx= _g14098_ 0)
                   (apply gx#core-context-prelude__0 _g14099_))
                  ((fx= _g14098_ 1)
                   (apply gx#core-context-prelude__opt-lambda13202 _g14099_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-context-prelude
                    _g14099_))))))))
  (define gx#core-module->prelude-context
    (lambda (_ctx13194_)
      (let* ((_ht13196_ (gx#current-expander-module-registry))
             (_$e13198_ (table-ref _ht13196_ _ctx13194_ '#f)))
        (if _$e13198_
            (values _$e13198_)
            (let ((_pre13201_
                   (let ((__obj14090 (make-object gx#prelude-context::t '8)))
                     (begin
                       (gx#prelude-context:::init!__0 __obj14090 _ctx13194_)
                       __obj14090))))
              (begin
                (table-set! _ht13196_ _ctx13194_ _pre13201_)
                _pre13201_))))))
  (begin
    (define gx#core-import-module__opt-lambda13073
      (lambda (_rpath13075_ _reload?13076_)
        (letrec ((_import-source13078_
                  (lambda (_path13163_)
                    (begin
                      (if (member _path13163_ (gx#current-expander-path))
                          (error '"Cyclic expansion" _path13163_)
                          '#!void)
                      (call-with-parameters
                       (lambda ()
                         (let ((_g14100_ (gx#core-read-module _path13163_)))
                           (begin
                             (let ((_g14101_ (values-count _g14100_)))
                               (if (not (fx= _g14101_ 4))
                                   (error "Context expects 4 values"
                                          _g14101_)))
                             (let ((_pre13166_ (values-ref _g14100_ 0))
                                   (_id13167_ (values-ref _g14100_ 1))
                                   (_ns13168_ (values-ref _g14100_ 2))
                                   (_body13169_ (values-ref _g14100_ 3)))
                               (let* ((_prelude13174_
                                       (if (##structure-instance-of?
                                            _pre13166_
                                            'gx#prelude-context::t)
                                           _pre13166_
                                           (if (##structure-instance-of?
                                                _pre13166_
                                                'gx#module-context::t)
                                               (gx#core-module->prelude-context
                                                _pre13166_)
                                               (if (string? _pre13166_)
                                                   (gx#core-module->prelude-context
                                                    (gx#core-import-module__0
                                                     _pre13166_))
                                                   (if (not _pre13166_)
                                                       (let ((_$e13171_
                                                              (gx#current-expander-module-prelude)))
                                                         (if _$e13171_
                                                             _$e13171_
                                                             (let ((__obj14091
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (make-object gx#prelude-context::t '8)))
                       (begin
                         (gx#prelude-context:::init!__0 __obj14091 '#f)
                         __obj14091))))
               (error '"Cannot import module; unknown prelude"
                      _rpath13075_
                      _pre13166_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_ctx13176_
                                       (let ((__obj14092
                                              (make-object
                                               gx#module-context::t
                                               '11)))
                                         (begin
                                           (gx#module-context:::init!
                                            __obj14092
                                            _id13167_
                                            _prelude13174_
                                            _ns13168_
                                            _path13163_)
                                           __obj14092)))
                                      (_body13178_
                                       (gx#core-expand-module-begin
                                        _body13169_
                                        _ctx13176_))
                                      (_body13180_
                                       (gx#core-quote-syntax__opt-lambda4643
                                        (gx#core-cons '%#begin _body13178_)
                                        _path13163_
                                        _ctx13176_
                                        '())))
                                 (begin
                                   (##structure-set!
                                    _ctx13176_
                                    (make-promise
                                     (lambda () (gx#eval-syntax* _body13180_)))
                                    '10
                                    gx#module-context::t
                                    '#f)
                                   (##structure-set!
                                    _ctx13176_
                                    _body13180_
                                    '11
                                    gx#module-context::t
                                    '#f)
                                   (table-set!
                                    (gx#current-expander-module-registry)
                                    _path13163_
                                    _ctx13176_)
                                   (table-set!
                                    (gx#current-expander-module-registry)
                                    _id13167_
                                    _ctx13176_)
                                   _ctx13176_))))))
                       gx#current-expander-context
                       (gx#core-context-root__0)
                       gx#current-expander-marks
                       '()
                       gx#current-expander-phi
                       '0
                       gx#current-expander-path
                       (cons _path13163_ (gx#current-expander-path))
                       gx#current-import-expander-phi
                       '#f
                       gx#current-export-expander-phi
                       '#f))))
                 (_import-submodule13079_
                  (lambda (_rpath13091_)
                    (let* ((_rpath1309213099_ _rpath13091_)
                           (_E1309413103_
                            (lambda ()
                              (error '"No clause matching" _rpath1309213099_)))
                           (_K1309513151_
                            (lambda (_refs13106_ _origin13107_)
                              (let ((_ctx13109_
                                     (if _origin13107_
                                         (gx#core-import-module__opt-lambda13073
                                          _origin13107_
                                          _reload?13076_)
                                         (gx#current-expander-context))))
                                (let _lp13111_ ((_rest13113_ _refs13106_)
                                                (_ctx13114_ _ctx13109_))
                                  (let* ((_rest1311513123_ _rest13113_)
                                         (_E1311813127_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _rest1311513123_)))
                                         (_else1311713131_
                                          (lambda () _ctx13114_))
                                         (_K1311913139_
                                          (lambda (_rest13134_ _id13135_)
                                            (let ((_bind13137_
                                                   (gx#resolve-identifier__opt-lambda5254
                                                    _id13135_
                                                    '0
                                                    _ctx13114_)))
                                              (if (if (##structure-direct-instance-of?
                                                       _bind13137_
                                                       'gx#syntax-binding::t)
                                                      (##structure-instance-of?
                                                       (##direct-structure-ref
                                                        _bind13137_
                                                        '4
                                                        gx#syntax-binding::t
                                                        '#f)
                                                       'gx#module-context::t)
                                                      '#f)
                                                  (_lp13111_
                                                   _rest13134_
                                                   (##direct-structure-ref
                                                    _bind13137_
                                                    '4
                                                    gx#syntax-binding::t
                                                    '#f))
                                                  (error '"Cannot import submodule; not bound as a module"
                                                         _rpath13091_
                                                         _id13135_
                                                         _bind13137_))))))
                                    (if (##pair? _rest1311513123_)
                                        (let ((_hd1312013142_
                                               (##car _rest1311513123_))
                                              (_tl1312113144_
                                               (##cdr _rest1311513123_)))
                                          (let* ((_id13147_ _hd1312013142_)
                                                 (_rest13149_ _tl1312113144_))
                                            (_K1311913139_
                                             _rest13149_
                                             _id13147_)))
                                        (_else1311713131_))))))))
                      (if (##pair? _rpath1309213099_)
                          (let ((_hd1309613154_ (##car _rpath1309213099_))
                                (_tl1309713156_ (##cdr _rpath1309213099_)))
                            (let* ((_origin13159_ _hd1309613154_)
                                   (_refs13161_ _tl1309713156_))
                              (_K1309513151_ _refs13161_ _origin13159_)))
                          (_E1309413103_))))))
          (let ((_$e13081_
                 (if (not _reload?13076_)
                     (table-ref
                      (gx#current-expander-module-registry)
                      _rpath13075_
                      '#f)
                     '#f)))
            (if _$e13081_
                (values _$e13081_)
                (if (list? _rpath13075_)
                    (_import-submodule13079_ _rpath13075_)
                    (if (gx#core-library-module-path? _rpath13075_)
                        (let ((_ctx13084_
                               (gx#core-import-module__opt-lambda13073
                                (gx#core-resolve-library-module-path
                                 _rpath13075_)
                                _reload?13076_)))
                          (begin
                            (table-set!
                             (gx#current-expander-module-registry)
                             _rpath13075_
                             _ctx13084_)
                            _ctx13084_))
                        (let* ((_npath13086_ (path-normalize _rpath13075_))
                               (_$e13088_
                                (if (not _reload?13076_)
                                    (table-ref
                                     (gx#current-expander-module-registry)
                                     _npath13086_
                                     '#f)
                                    '#f)))
                          (if _$e13088_
                              (values _$e13088_)
                              (_import-source13078_ _npath13086_))))))))))
    (begin
      (define gx#core-import-module__0
        (lambda (_rpath13187_)
          (let ((_reload?13189_ '#f))
            (gx#core-import-module__opt-lambda13073
             _rpath13187_
             _reload?13189_))))
      (define gx#core-import-module
        (lambda _g14103_
          (let ((_g14102_ (length _g14103_)))
            (cond ((fx= _g14102_ 1) (apply gx#core-import-module__0 _g14103_))
                  ((fx= _g14102_ 2)
                   (apply gx#core-import-module__opt-lambda13073 _g14103_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-import-module
                    _g14103_))))))))
  (define gx#core-read-module
    (lambda (_path13069_)
      (with-exception-catcher
       (lambda (_exn13071_)
         (if (if (datum-parsing-exception? _exn13071_)
                 (eq? (datum-parsing-exception-filepos _exn13071_) '0)
                 '#f)
             (gx#core-read-module/lang _path13069_)
             (raise _exn13071_)))
       (lambda () (gx#core-read-module/sexp _path13069_)))))
  (define gx#core-read-module/sexp
    (lambda (_path12929_)
      (let _lp12931_ ((_body12933_ (read-syntax-from-file _path12929_))
                      (_pre12934_ '#f)
                      (_ns12935_ '#f)
                      (_pkg12936_ '#f))
        (let* ((_e1293712961_ _body12933_)
               (_E1295312983_
                (lambda ()
                  (let ((_g14104_
                         (if _pkg12936_
                             (values _pre12934_ _ns12935_ _pkg12936_)
                             (gx#core-read-module-package
                              _path12929_
                              _pre12934_
                              _ns12935_))))
                    (begin
                      (let ((_g14105_ (values-count _g14104_)))
                        (if (not (fx= _g14105_ 3))
                            (error "Context expects 3 values" _g14105_)))
                      (let ((_pre12965_ (values-ref _g14104_ 0))
                            (_ns12966_ (values-ref _g14104_ 1))
                            (_pkg12967_ (values-ref _g14104_ 2)))
                        (let* ((_prelude12969_
                                (if (gx#core-bound-module-prelude? _pre12965_)
                                    (gx#syntax-local-e__0 _pre12965_)
                                    (if (gx#core-library-module-path?
                                         _pre12965_)
                                        (gx#core-resolve-library-module-path
                                         _pre12965_)
                                        (if (gx#stx-string? _pre12965_)
                                            (gx#core-resolve-module-path__opt-lambda12692
                                             _pre12965_
                                             _path12929_)
                                            (gx#stx-e _pre12965_)))))
                               (_path-id12971_
                                (gx#core-module-path->namespace _path12929_))
                               (_pkg-id12973_
                                (if _pkg12967_
                                    (string-append
                                     _pkg12967_
                                     '"/"
                                     _path-id12971_)
                                    _path-id12971_))
                               (_module-id12975_
                                (string->symbol _pkg-id12973_))
                               (_module-ns12980_
                                (let ((_$e12977_ _ns12966_))
                                  (if _$e12977_ _$e12977_ _pkg-id12973_))))
                          (values _prelude12969_
                                  _module-id12975_
                                  _module-ns12980_
                                  _body12933_)))))))
               (_E1294613012_
                (lambda ()
                  (if (gx#stx-pair? _e1293712961_)
                      (let ((_e1295412987_ (gx#syntax-e _e1293712961_)))
                        (let ((_hd1295512990_ (##car _e1295412987_))
                              (_tl1295612992_ (##cdr _e1295412987_)))
                          (if (eq? (gx#stx-e _hd1295512990_) 'package:)
                              (if (gx#stx-pair? _tl1295612992_)
                                  (let ((_e1295712995_
                                         (gx#syntax-e _tl1295612992_)))
                                    (let ((_hd1295812998_
                                           (##car _e1295712995_))
                                          (_tl1295913000_
                                           (##cdr _e1295712995_)))
                                      (let* ((_pkg13003_ _hd1295812998_)
                                             (_rest13005_ _tl1295913000_))
                                        (if '#t
                                            (let ((_pkg13010_
                                                   (if (gx#identifier?
                                                        _pkg13003_)
                                                       (symbol->string
                                                        (gx#stx-e _pkg13003_))
                                                       (if (let ((_$e13007_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-string? _pkg13003_)))
                     (if _$e13007_ _$e13007_ (gx#stx-false? _pkg13003_)))
                   (gx#stx-e _pkg13003_)
                   (gx#raise-syntax-error
                    'import
                    '"Bad syntax; Illegal package name"
                    _pkg13003_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_lp12931_
                                               _rest13005_
                                               _pre12934_
                                               _ns12935_
                                               _pkg13010_))
                                            (_E1295312983_)))))
                                  (_E1295312983_))
                              (_E1295312983_))))
                      (_E1295312983_))))
               (_E1293913041_
                (lambda ()
                  (if (gx#stx-pair? _e1293712961_)
                      (let ((_e1294713016_ (gx#syntax-e _e1293712961_)))
                        (let ((_hd1294813019_ (##car _e1294713016_))
                              (_tl1294913021_ (##cdr _e1294713016_)))
                          (if (eq? (gx#stx-e _hd1294813019_) 'namespace:)
                              (if (gx#stx-pair? _tl1294913021_)
                                  (let ((_e1295013024_
                                         (gx#syntax-e _tl1294913021_)))
                                    (let ((_hd1295113027_
                                           (##car _e1295013024_))
                                          (_tl1295213029_
                                           (##cdr _e1295013024_)))
                                      (let* ((_ns13032_ _hd1295113027_)
                                             (_rest13034_ _tl1295213029_))
                                        (if '#t
                                            (let ((_ns13039_
                                                   (if (gx#identifier?
                                                        _ns13032_)
                                                       (symbol->string
                                                        (gx#stx-e _ns13032_))
                                                       (if (let ((_$e13036_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-string? _ns13032_)))
                     (if _$e13036_ _$e13036_ (gx#stx-false? _ns13032_)))
                   (gx#stx-e _ns13032_)
                   (gx#raise-syntax-error
                    'import
                    '"Bad syntax; illegal namespace"
                    _ns13032_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_lp12931_
                                               _rest13034_
                                               _pre12934_
                                               _ns13039_
                                               _pkg12936_))
                                            (_E1294613012_)))))
                                  (_E1294613012_))
                              (_E1294613012_))))
                      (_E1294613012_))))
               (_E1293813065_
                (lambda ()
                  (if (gx#stx-pair? _e1293712961_)
                      (let ((_e1294013045_ (gx#syntax-e _e1293712961_)))
                        (let ((_hd1294113048_ (##car _e1294013045_))
                              (_tl1294213050_ (##cdr _e1294013045_)))
                          (if (eq? (gx#stx-e _hd1294113048_) 'prelude:)
                              (if (gx#stx-pair? _tl1294213050_)
                                  (let ((_e1294313053_
                                         (gx#syntax-e _tl1294213050_)))
                                    (let ((_hd1294413056_
                                           (##car _e1294313053_))
                                          (_tl1294513058_
                                           (##cdr _e1294313053_)))
                                      (let* ((_prelude13061_ _hd1294413056_)
                                             (_rest13063_ _tl1294513058_))
                                        (if '#t
                                            (_lp12931_
                                             _rest13063_
                                             _prelude13061_
                                             _ns12935_
                                             _pkg12936_)
                                            (_E1293913041_)))))
                                  (_E1293913041_))
                              (_E1293913041_))))
                      (_E1293913041_)))))
          (_E1293813065_)))))
  (define gx#core-read-module/lang
    (lambda (_path12765_)
      (letrec ((_read-body12767_
                (lambda (_inp12848_
                         _pre12849_
                         _ns12850_
                         _pkg12851_
                         _args12852_)
                  (let ((_g14106_
                         (if _pkg12851_
                             (values _pre12849_ _ns12850_ _pkg12851_)
                             (gx#core-read-module-package
                              _path12765_
                              _pre12849_
                              _ns12850_))))
                    (begin
                      (let ((_g14107_ (values-count _g14106_)))
                        (if (not (fx= _g14107_ 3))
                            (error "Context expects 3 values" _g14107_)))
                      (let ((_pre12854_ (values-ref _g14106_ 0))
                            (_ns12855_ (values-ref _g14106_ 1))
                            (_pkg12856_ (values-ref _g14106_ 2)))
                        (let* ((_prelude12858_
                                (gx#import-module__0 _pre12854_))
                               (_read-module-body12912_
                                (let ((_$e12904_
                                       (find (lambda (_e1285912861_)
                                               (let* ((_g1286312873_
                                                       _e1285912861_)
                                                      (_E1286612877_
                                                       (lambda ()
                                                         (error '"No clause matching"
                                                                _g1286312873_)))
                                                      (_else1286512881_
                                                       (lambda () '#f))
                                                      (_K1286712885_
                                                       (lambda () '#t)))
                                                 (if (##structure-direct-instance-of?
                                                      _g1286312873_
                                                      (##type-id
                                                       gx#module-export::t))
                                                     (let* ((_e1286812888_
                                                             (##vector-ref
                                                              _g1286312873_
                                                              '1))
                                                            (_e1286912891_
                                                             (##vector-ref
                                                              _g1286312873_
                                                              '2))
                                                            (_e1287012894_
                                                             (##vector-ref
                                                              _g1286312873_
                                                              '3)))
                                                       (if (##eq? _e1287012894_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '1)
                   (let ((_e1287112897_ (##vector-ref _g1286312873_ '4)))
                     (if ((lambda (_g1289912901_)
                            (eq? _g1289912901_ 'read-module-body))
                          _e1287112897_)
                         (_K1286712885_)
                         (_else1286512881_)))
                   (_else1286512881_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_else1286512881_))))
                                             (##structure-ref
                                              _prelude12858_
                                              '9
                                              gx#module-context::t
                                              '#f))))
                                  (if _$e12904_
                                      ((lambda (_xport12907_)
                                         (let ((_proc12910_
                                                (with-exception-catcher
                                                 void
                                                 (lambda ()
                                                   (gx#eval-syntax__0
                                                    (##structure-ref
                                                     (gx#core-resolve-module-export
                                                      _xport12907_)
                                                     '1
                                                     gx#binding::t
                                                     '#f))))))
                                           (if (procedure? _proc12910_)
                                               _proc12910_
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Illegal #lang prelude; read-module-body is not a procedure"
                                                _path12765_
                                                _pre12854_
                                                _proc12910_))))
                                       _$e12904_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Illegal #lang prelude; does not export read-module-body for syntax"
                                       _path12765_
                                       _pre12854_))))
                               (_path-id12914_
                                (gx#core-module-path->namespace _path12765_))
                               (_pkg-id12916_
                                (if _pkg12856_
                                    (string-append
                                     _pkg12856_
                                     '"/"
                                     _path-id12914_)
                                    _path-id12914_))
                               (_module-id12918_
                                (string->symbol _pkg-id12916_))
                               (_module-ns12923_
                                (let ((_$e12920_ _ns12855_))
                                  (if _$e12920_ _$e12920_ _pkg-id12916_)))
                               (_body12926_
                                (call-with-parameters
                                 (lambda ()
                                   (_read-module-body12912_ _inp12848_))
                                 gx#current-module-reader-path
                                 _path12765_
                                 gx#current-module-reader-args
                                 _args12852_)))
                          (values _prelude12858_
                                  _module-id12918_
                                  _module-ns12923_
                                  _body12926_)))))))
               (_string-e12768_
                (lambda (_obj12845_ _what12846_)
                  (if (string? _obj12845_)
                      _obj12845_
                      (if (symbol? _obj12845_)
                          (symbol->string _obj12845_)
                          (gx#raise-syntax-error
                           '#f
                           (string-append '"Illegal module " _what12846_)
                           _path12765_
                           _obj12845_)))))
               (_read-lang-args12769_
                (lambda (_inp12800_ _args12801_)
                  (let* ((_args1280212810_ _args12801_)
                         (_E1280512814_
                          (lambda ()
                            (error '"No clause matching" _args1280212810_)))
                         (_else1280412818_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Illegal #lang arguments; missing prelude"
                             _path12765_)))
                         (_K1280612833_
                          (lambda (_args12821_ _prelude12822_)
                            (let* ((_pkg12824_ (pgetq 'package: _args12821_))
                                   (_pkg12826_
                                    (if _pkg12824_
                                        (_string-e12768_ _pkg12824_ '"package")
                                        '#f))
                                   (_ns12828_ (pgetq 'namespace: _args12821_))
                                   (_ns12830_
                                    (if _ns12828_
                                        (_string-e12768_
                                         _ns12828_
                                         '"namespace")
                                        '#f)))
                              (_read-body12767_
                               _inp12800_
                               _prelude12822_
                               _ns12830_
                               _pkg12826_
                               _args12821_)))))
                    (if (##pair? _args1280212810_)
                        (let ((_hd1280712836_ (##car _args1280212810_))
                              (_tl1280812838_ (##cdr _args1280212810_)))
                          (let* ((_prelude12841_ _hd1280712836_)
                                 (_args12843_ _tl1280812838_))
                            (_K1280612833_ _args12843_ _prelude12841_)))
                        (_else1280412818_)))))
               (_read-lang12770_
                (lambda (_inp12775_)
                  (let* ((_head12777_ (read-line _inp12775_))
                         (_$e12779_ (string-index _head12777_ '#\space)))
                    (if _$e12779_
                        ((lambda (_ix12782_)
                           (let ((_lang12784_
                                  (substring _head12777_ '0 _ix12782_)))
                             (if (equal? _lang12784_ '"#lang")
                                 (let* ((_rest12786_
                                         (substring
                                          _head12777_
                                          (fx+ _ix12782_ '1)
                                          (string-length _head12777_)))
                                        (_args12797_
                                         (with-exception-catcher
                                          (lambda (_g1278712789_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Illegal #lang arguments"
                                             _path12765_
                                             _g1278712789_))
                                          (lambda ()
                                            (call-with-input-string
                                             _rest12786_
                                             (lambda (_g1279212794_)
                                               (read-all
                                                _g1279212794_
                                                read)))))))
                                   (_read-lang-args12769_
                                    _inp12775_
                                    _args12797_))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Illegal module syntax"
                                  _path12765_))))
                         _$e12779_)
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module syntax"
                         _path12765_)))))
               (_read-e12771_
                (lambda (_inp12773_)
                  (if (eq? (peek-char _inp12773_) '#\#)
                      (_read-lang12770_ _inp12773_)
                      (gx#raise-syntax-error
                       '#f
                       '"Illegal module syntax"
                       _path12765_)))))
        (call-with-input-file _path12765_ _read-e12771_))))
  (define gx#core-read-module-package
    (lambda (_path12719_ _pre12720_ _ns12721_)
      (letrec ((_string-e12723_
                (lambda (_e12763_)
                  (if (symbol? _e12763_)
                      (symbol->string _e12763_)
                      (if (string? _e12763_)
                          _e12763_
                          (gx#raise-syntax-error
                           '#f
                           '"Malformed package info; unexpected datum"
                           _e12763_))))))
        (let _lp12725_ ((_dir12727_ (path-directory _path12719_))
                        (_pkg-path12728_ '()))
          (let ((_gerbil.pkg12730_ (path-expand '"gerbil.pkg" _dir12727_)))
            (if (file-exists? _gerbil.pkg12730_)
                (let ((_plist12732_
                       (gx#core-library-package-plist__opt-lambda12584
                        _dir12727_
                        '#t)))
                  (if (null? _plist12732_)
                      (let ((_pkg12734_
                             (if (not (null? _pkg-path12728_))
                                 (string-join _pkg-path12728_ '"/")
                                 '#f)))
                        (values _pre12720_ _ns12721_ _pkg12734_))
                      (if (list? _plist12732_)
                          (let* ((_root12736_ (pgetq 'package: _plist12732_))
                                 (_pkg12740_
                                  (let ((_pkg-path12738_
                                         (if _root12736_
                                             (cons (_string-e12723_
                                                    _root12736_)
                                                   _pkg-path12728_)
                                             _pkg-path12728_)))
                                    (if (not (null? _pkg-path12738_))
                                        (string-join _pkg-path12738_ '"/")
                                        '#f)))
                                 (_ns12747_
                                  (let ((_ns12745_
                                         (let ((_$e12742_ _ns12721_))
                                           (if _$e12742_
                                               _$e12742_
                                               (pgetq 'namespace:
                                                      _plist12732_)))))
                                    (if _ns12745_
                                        (_string-e12723_ _ns12745_)
                                        '#f)))
                                 (_pre12752_
                                  (let ((_$e12749_ _pre12720_))
                                    (if _$e12749_
                                        _$e12749_
                                        (pgetq 'prelude: _plist12732_)))))
                            (values _pre12752_ _ns12747_ _pkg12740_))
                          (gx#raise-syntax-error
                           '#f
                           '"Malformed package info; unexpected datum"
                           _plist12732_))))
                (let ((_dir*12755_
                       (path-strip-trailing-directory-separator _dir12727_)))
                  (if (let ((_$e12757_ (string-empty? _dir*12755_)))
                        (if _$e12757_
                            _$e12757_
                            (equal? _dir12727_ _dir*12755_)))
                      (values _pre12720_ _ns12721_ '#f)
                      (let ((_xpath12760_ (path-strip-directory _dir*12755_))
                            (_xdir12761_ (path-directory _dir*12755_)))
                        (_lp12725_
                         _xdir12761_
                         (cons _xpath12760_ _pkg-path12728_)))))))))))
  (define gx#core-module-path->namespace
    (lambda (_path12717_)
      (path-strip-extension (path-strip-directory _path12717_))))
  (define gx#core-module-path->id
    (lambda (_path12715_)
      (string->symbol (gx#core-module-path->namespace _path12715_))))
  (begin
    (define gx#core-resolve-module-path__opt-lambda12692
      (lambda (_stx-path12694_ _rel12695_)
        (let* ((_path12697_ (gx#stx-e _stx-path12694_))
               (_path12699_
                (if (string-empty? (path-extension _path12697_))
                    (string-append _path12697_ '".ss")
                    _path12697_)))
          (gx#core-resolve-path__opt-lambda4607
           _path12699_
           (let ((_$e12702_ (gx#stx-source _stx-path12694_)))
             (if _$e12702_ _$e12702_ _rel12695_))))))
    (begin
      (define gx#core-resolve-module-path__0
        (lambda (_stx-path12708_)
          (let ((_rel12710_ '#f))
            (gx#core-resolve-module-path__opt-lambda12692
             _stx-path12708_
             _rel12710_))))
      (define gx#core-resolve-module-path
        (lambda _g14109_
          (let ((_g14108_ (length _g14109_)))
            (cond ((fx= _g14108_ 1)
                   (apply gx#core-resolve-module-path__0 _g14109_))
                  ((fx= _g14108_ 2)
                   (apply gx#core-resolve-module-path__opt-lambda12692
                          _g14109_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-resolve-module-path
                    _g14109_))))))))
  (define gx#core-resolve-library-module-path
    (lambda (_libpath12621_)
      (let* ((_spath12623_ (symbol->string (gx#stx-e _libpath12621_)))
             (_spath12625_
              (substring _spath12623_ '1 (string-length _spath12623_)))
             (_ext12627_ (path-extension _spath12625_))
             (_ssi12629_
              (if (string-empty? _ext12627_)
                  (string-append _spath12625_ '".ssi")
                  (string-append (path-strip-extension _spath12625_) '".ssi")))
             (_src12631_
              (if (string-empty? _ext12627_)
                  (string-append _spath12625_ '".ss")
                  _spath12625_)))
        (let _lp12634_ ((_rest12636_
                         (gx#current-expander-module-library-path)))
          (let* ((_rest1263712646_ _rest12636_)
                 (_E1264012650_
                  (lambda () (error '"No clause matching" _rest1263712646_)))
                 (_try-match1263912658_
                  (lambda ()
                    (let ((_K1264112655_
                           (lambda ()
                             (gx#raise-syntax-error
                              '#f
                              '"Cannot find library module"
                              _libpath12621_))))
                      (if (##null? _rest1263712646_)
                          (_K1264112655_)
                          (_E1264012650_)))))
                 (_K1264212681_
                  (lambda (_rest12661_ _dir12662_)
                    (letrec ((_resolve12664_
                              (lambda (_ssi12674_ _src12675_)
                                (let ((_compiled-path12677_
                                       (path-expand _ssi12674_ _dir12662_)))
                                  (if (file-exists? _compiled-path12677_)
                                      (path-normalize _compiled-path12677_)
                                      (let ((_src-path12679_
                                             (path-expand
                                              _src12675_
                                              _dir12662_)))
                                        (if (file-exists? _src-path12679_)
                                            (path-normalize _src-path12679_)
                                            (_lp12634_ _rest12661_))))))))
                      (let ((_$e12666_
                             (gx#core-library-package-path-prefix _dir12662_)))
                        (if _$e12666_
                            ((lambda (_prefix12669_)
                               (if (string-prefix? _spath12625_ _prefix12669_)
                                   (let ((_ssi12671_
                                          (substring
                                           _ssi12629_
                                           (string-length _prefix12669_)
                                           (string-length _ssi12629_)))
                                         (_src12672_
                                          (substring
                                           _src12631_
                                           (string-length _prefix12669_)
                                           (string-length _src12631_))))
                                     (_resolve12664_ _ssi12671_ _src12672_))
                                   (_lp12634_ _rest12661_)))
                             _$e12666_)
                            (_resolve12664_ _ssi12629_ _src12631_)))))))
            (if (##pair? _rest1263712646_)
                (let ((_hd1264312684_ (##car _rest1263712646_))
                      (_tl1264412686_ (##cdr _rest1263712646_)))
                  (let* ((_dir12689_ _hd1264312684_)
                         (_rest12691_ _tl1264412686_))
                    (_K1264212681_ _rest12691_ _dir12689_)))
                (_try-match1263912658_)))))))
  (define gx#core-library-package-path-prefix
    (lambda (_dir12614_)
      (let ((_$e12616_
             (pgetq 'package: (gx#core-library-package-plist__0 _dir12614_))))
        (if _$e12616_
            ((lambda (_pkg12619_)
               (string-append (symbol->string _pkg12619_) '"/"))
             _$e12616_)
            '#f))))
  (begin
    (define gx#core-library-package-plist__opt-lambda12584
      (lambda (_dir12586_ _exists?12587_)
        (let* ((_cache12589_ (gx#core-library-package-cache))
               (_$e12591_ (table-ref _cache12589_ _dir12586_ '#f)))
          (if _$e12591_
              (values _$e12591_)
              (let* ((_gerbil.pkg12594_ (path-expand '"gerbil.pkg" _dir12586_))
                     (_plist12601_
                      (if (let ((_$e12596_ _exists?12587_))
                            (if _$e12596_
                                _$e12596_
                                (file-exists? _gerbil.pkg12594_)))
                          (let ((_e12599_
                                 (call-with-input-file
                                  _gerbil.pkg12594_
                                  read)))
                            (if (eof-object? _e12599_)
                                '()
                                (if (list? _e12599_)
                                    _e12599_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Malformed package info; unexpected datum"
                                     _gerbil.pkg12594_
                                     _e12599_))))
                          '())))
                (begin
                  (table-set! _cache12589_ _dir12586_ _plist12601_)
                  _plist12601_))))))
    (begin
      (define gx#core-library-package-plist__0
        (lambda (_dir12607_)
          (let ((_exists?12609_ '#f))
            (gx#core-library-package-plist__opt-lambda12584
             _dir12607_
             _exists?12609_))))
      (define gx#core-library-package-plist
        (lambda _g14111_
          (let ((_g14110_ (length _g14111_)))
            (cond ((fx= _g14110_ 1)
                   (apply gx#core-library-package-plist__0 _g14111_))
                  ((fx= _g14110_ 2)
                   (apply gx#core-library-package-plist__opt-lambda12584
                          _g14111_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-library-package-plist
                    _g14111_))))))))
  (define gx#core-library-package-cache
    (lambda ()
      (let ((_$e12580_ (gx#current-expander-module-library-package-cache)))
        (if _$e12580_
            (values _$e12580_)
            (let ((_cache12583_ (make-table)))
              (begin
                (gx#current-expander-module-library-package-cache _cache12583_)
                _cache12583_))))))
  (define gx#core-library-module-path?
    (lambda (_stx12577_) (gx#core-special-module-path? _stx12577_ '#\:)))
  (define gx#core-special-module-path?
    (lambda (_stx12572_ _char12573_)
      (if (gx#identifier? _stx12572_)
          (if (interned-symbol? (gx#stx-e _stx12572_))
              (let ((_str12575_ (symbol->string (gx#stx-e _stx12572_))))
                (if (fx> (string-length _str12575_) '1)
                    (eq? (string-ref _str12575_ '0) _char12573_)
                    '#f))
              '#f)
          '#f)))
  (define gx#core-bound-prelude?
    (lambda (_stx12566_)
      (gx#core-bound-identifier?__opt-lambda4697
       _stx12566_
       (lambda (_g1256712569_)
         (gx#expander-binding?__opt-lambda4734
          _g1256712569_
          gx#prelude-context?)))))
  (define gx#core-bound-module?
    (lambda (_stx12560_)
      (gx#core-bound-identifier?__opt-lambda4697
       _stx12560_
       (lambda (_g1256112563_)
         (gx#expander-binding?__opt-lambda4734
          _g1256112563_
          gx#module-context?)))))
  (define gx#core-bound-module-prelude?
    (lambda (_stx12547_)
      (letrec ((_module-prelude?12549_
                (lambda (_e12555_)
                  (let ((_$e12557_
                         (##structure-instance-of?
                          _e12555_
                          'gx#module-context::t)))
                    (if _$e12557_
                        _$e12557_
                        (##structure-instance-of?
                         _e12555_
                         'gx#prelude-context::t))))))
        (gx#core-bound-identifier?__opt-lambda4697
         _stx12547_
         (lambda (_g1255012552_)
           (gx#expander-binding?__opt-lambda4734
            _g1255012552_
            _module-prelude?12549_))))))
  (begin
    (define gx#core-bind-import!__opt-lambda12475
      (lambda (_in12477_ _ctx12478_ _force-weak?12479_)
        (let* ((_in1248012489_ _in12477_)
               (_E1248212493_
                (lambda () (error '"No clause matching" _in1248012489_)))
               (_K1248312506_
                (lambda (_weak?12496_ _phi12497_ _key12498_ _source12499_)
                  (gx#core-bind!__opt-lambda4973
                   _key12498_
                   (let ((_e12501_
                          (gx#core-resolve-module-export _source12499_)))
                     (##structure
                      gx#import-binding::t
                      (##structure-ref _e12501_ '1 gx#binding::t '#f)
                      _key12498_
                      _phi12497_
                      _e12501_
                      (##direct-structure-ref
                       _source12499_
                       '1
                       gx#module-export::t
                       '#f)
                      (let ((_$e12503_ _force-weak?12479_))
                        (if _$e12503_ _$e12503_ _weak?12496_))))
                   gx#core-context-rebind?
                   _phi12497_
                   _ctx12478_))))
          (if (##structure-direct-instance-of?
               _in1248012489_
               (##type-id gx#module-import::t))
              (let* ((_e1248412509_ (##vector-ref _in1248012489_ '1))
                     (_source12512_ _e1248412509_)
                     (_e1248512514_ (##vector-ref _in1248012489_ '2))
                     (_key12517_ _e1248512514_)
                     (_e1248612519_ (##vector-ref _in1248012489_ '3))
                     (_phi12522_ _e1248612519_)
                     (_e1248712524_ (##vector-ref _in1248012489_ '4))
                     (_weak?12527_ _e1248712524_))
                (_K1248312506_
                 _weak?12527_
                 _phi12522_
                 _key12517_
                 _source12512_))
              (_E1248212493_)))))
    (begin
      (define gx#core-bind-import!__0
        (lambda (_in12532_)
          (let* ((_ctx12534_ (gx#current-expander-context))
                 (_force-weak?12536_ '#f))
            (gx#core-bind-import!__opt-lambda12475
             _in12532_
             _ctx12534_
             _force-weak?12536_))))
      (define gx#core-bind-import!__1
        (lambda (_in12538_ _ctx12539_)
          (let ((_force-weak?12541_ '#f))
            (gx#core-bind-import!__opt-lambda12475
             _in12538_
             _ctx12539_
             _force-weak?12541_))))
      (define gx#core-bind-import!
        (lambda _g14113_
          (let ((_g14112_ (length _g14113_)))
            (cond ((fx= _g14112_ 1) (apply gx#core-bind-import!__0 _g14113_))
                  ((fx= _g14112_ 2) (apply gx#core-bind-import!__1 _g14113_))
                  ((fx= _g14112_ 3)
                   (apply gx#core-bind-import!__opt-lambda12475 _g14113_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-import!
                    _g14113_))))))))
  (begin
    (define gx#core-bind-weak-import!__opt-lambda12461
      (lambda (_in12463_ _ctx12464_)
        (gx#core-bind-import!__opt-lambda12475 _in12463_ _ctx12464_ '#t)))
    (begin
      (define gx#core-bind-weak-import!__0
        (lambda (_in12469_)
          (let ((_ctx12471_ (gx#current-expander-context)))
            (gx#core-bind-weak-import!__opt-lambda12461
             _in12469_
             _ctx12471_))))
      (define gx#core-bind-weak-import!
        (lambda _g14115_
          (let ((_g14114_ (length _g14115_)))
            (cond ((fx= _g14114_ 1)
                   (apply gx#core-bind-weak-import!__0 _g14115_))
                  ((fx= _g14114_ 2)
                   (apply gx#core-bind-weak-import!__opt-lambda12461 _g14115_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-weak-import!
                    _g14115_))))))))
  (define gx#core-resolve-module-export
    (lambda (_out12354_)
      (letrec ((_subst12356_
                (lambda (_key12402_)
                  (let* ((_key1240312411_ _key12402_)
                         (_E1240612415_
                          (lambda ()
                            (error '"No clause matching" _key1240312411_)))
                         (_else1240512419_ (lambda () _key12402_))
                         (_K1240712450_
                          (lambda (_mark12422_ _id12423_)
                            (let* ((_mark1242412430_ _mark12422_)
                                   (_E1242612434_
                                    (lambda ()
                                      (error '"No clause matching"
                                             _mark1242412430_)))
                                   (_K1242712442_
                                    (lambda (_subst12437_)
                                      (let ((_$e12439_
                                             (if _subst12437_
                                                 (table-ref
                                                  _subst12437_
                                                  _id12423_
                                                  '#f)
                                                 '#f)))
                                        (if _$e12439_
                                            _$e12439_
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Illegal key; missing substitution"
                                             _key12402_))))))
                              (if (##structure-instance-of?
                                   _mark1242412430_
                                   (##type-id gx#expander-mark::t))
                                  (let* ((_e1242812445_
                                          (##vector-ref _mark1242412430_ '1))
                                         (_subst12448_ _e1242812445_))
                                    (_K1242712442_ _subst12448_))
                                  (_E1242612434_))))))
                    (if (##pair? _key1240312411_)
                        (let ((_hd1240812453_ (##car _key1240312411_))
                              (_tl1240912455_ (##cdr _key1240312411_)))
                          (let* ((_id12458_ _hd1240812453_)
                                 (_mark12460_ _tl1240912455_))
                            (_K1240712450_ _mark12460_ _id12458_)))
                        (_else1240512419_))))))
        (let* ((_out1235712367_ _out12354_)
               (_E1235912371_
                (lambda () (error '"No clause matching" _out1235712367_)))
               (_K1236012378_
                (lambda (_phi12374_ _key12375_ _ctx12376_)
                  (gx#core-context-resolve
                   (gx#core-context-shift _ctx12376_ _phi12374_)
                   (_subst12356_ _key12375_)))))
          (if (##structure-direct-instance-of?
               _out1235712367_
               (##type-id gx#module-export::t))
              (let* ((_e1236112381_ (##vector-ref _out1235712367_ '1))
                     (_ctx12384_ _e1236112381_)
                     (_e1236212386_ (##vector-ref _out1235712367_ '2))
                     (_key12389_ _e1236212386_)
                     (_e1236312391_ (##vector-ref _out1235712367_ '3))
                     (_phi12394_ _e1236312391_)
                     (_e1236412396_ (##vector-ref _out1235712367_ '4))
                     (_e1236512399_ (##vector-ref _out1235712367_ '5)))
                (_K1236012378_ _phi12394_ _key12389_ _ctx12384_))
              (_E1235912371_))))))
  (begin
    (define gx#core-module-export->import__opt-lambda12277
      (lambda (_out12279_ _rename12280_ _dphi12281_)
        (let* ((_out1228212292_ _out12279_)
               (_E1228412296_
                (lambda () (error '"No clause matching" _out1228212292_)))
               (_K1228512308_
                (lambda (_weak?12299_
                         _name12300_
                         _phi12301_
                         _key12302_
                         _ctx12303_)
                  (##structure
                   gx#module-import::t
                   _out12279_
                   (let ((_$e12305_ _rename12280_))
                     (if _$e12305_ _$e12305_ _name12300_))
                   (fx+ _phi12301_ _dphi12281_)
                   _weak?12299_))))
          (if (##structure-direct-instance-of?
               _out1228212292_
               (##type-id gx#module-export::t))
              (let* ((_e1228612311_ (##vector-ref _out1228212292_ '1))
                     (_ctx12314_ _e1228612311_)
                     (_e1228712316_ (##vector-ref _out1228212292_ '2))
                     (_key12319_ _e1228712316_)
                     (_e1228812321_ (##vector-ref _out1228212292_ '3))
                     (_phi12324_ _e1228812321_)
                     (_e1228912326_ (##vector-ref _out1228212292_ '4))
                     (_name12329_ _e1228912326_)
                     (_e1229012331_ (##vector-ref _out1228212292_ '5))
                     (_weak?12334_ _e1229012331_))
                (_K1228512308_
                 _weak?12334_
                 _name12329_
                 _phi12324_
                 _key12319_
                 _ctx12314_))
              (_E1228412296_)))))
    (begin
      (define gx#core-module-export->import__0
        (lambda (_out12339_)
          (let* ((_rename12341_ '#f) (_dphi12343_ '0))
            (gx#core-module-export->import__opt-lambda12277
             _out12339_
             _rename12341_
             _dphi12343_))))
      (define gx#core-module-export->import__1
        (lambda (_out12345_ _rename12346_)
          (let ((_dphi12348_ '0))
            (gx#core-module-export->import__opt-lambda12277
             _out12345_
             _rename12346_
             _dphi12348_))))
      (define gx#core-module-export->import
        (lambda _g14117_
          (let ((_g14116_ (length _g14117_)))
            (cond ((fx= _g14116_ 1)
                   (apply gx#core-module-export->import__0 _g14117_))
                  ((fx= _g14116_ 2)
                   (apply gx#core-module-export->import__1 _g14117_))
                  ((fx= _g14116_ 3)
                   (apply gx#core-module-export->import__opt-lambda12277
                          _g14117_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-module-export->import
                    _g14117_))))))))
  (define gx#core-expand-module%
    (lambda (_stx12207_)
      (letrec ((_make-context12209_
                (lambda (_id12260_)
                  (let* ((_super12262_ (gx#current-expander-context))
                         (_bind-id12264_ (gx#stx-e _id12260_))
                         (_mod-id12266_
                          (if (##structure-instance-of?
                               _super12262_
                               'gx#module-context::t)
                              (make-symbol
                               (##structure-ref
                                _super12262_
                                '1
                                gx#expander-context::t
                                '#f)
                               '"$"
                               _bind-id12264_)
                              _bind-id12264_))
                         (_ns12268_ (symbol->string _mod-id12266_))
                         (_path12275_
                          (if (##structure-instance-of?
                               _super12262_
                               'gx#module-context::t)
                              (let ((_path12270_
                                     (##structure-ref
                                      _super12262_
                                      '7
                                      gx#module-context::t
                                      '#f)))
                                (if (let ((_$e12272_ (pair? _path12270_)))
                                      (if _$e12272_
                                          _$e12272_
                                          (null? _path12270_)))
                                    (cons _bind-id12264_ _path12270_)
                                    (if (not _path12270_)
                                        _bind-id12264_
                                        (cons _bind-id12264_
                                              (cons _path12270_ '())))))
                              _bind-id12264_)))
                    (let ((__obj14093 (make-object gx#module-context::t '11)))
                      (begin
                        (gx#module-context:::init!
                         __obj14093
                         _mod-id12266_
                         _super12262_
                         _ns12268_
                         _path12275_)
                        __obj14093))))))
        (let* ((_e1221012220_ _stx12207_)
               (_E1221212224_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1221012220_)))
               (_E1221112256_
                (lambda ()
                  (if (gx#stx-pair? _e1221012220_)
                      (let ((_e1221312228_ (gx#syntax-e _e1221012220_)))
                        (let ((_hd1221412231_ (##car _e1221312228_))
                              (_tl1221512233_ (##cdr _e1221312228_)))
                          (if (gx#stx-pair? _tl1221512233_)
                              (let ((_e1221612236_
                                     (gx#syntax-e _tl1221512233_)))
                                (let ((_hd1221712239_ (##car _e1221612236_))
                                      (_tl1221812241_ (##cdr _e1221612236_)))
                                  (let* ((_id12244_ _hd1221712239_)
                                         (_body12246_ _tl1221812241_))
                                    (if (if (gx#identifier? _id12244_)
                                            (gx#stx-list? _body12246_)
                                            '#f)
                                        (let* ((_ctx12248_
                                                (_make-context12209_
                                                 _id12244_))
                                               (_body12250_
                                                (gx#core-expand-module-begin
                                                 _body12246_
                                                 _ctx12248_))
                                               (_body12252_
                                                (gx#core-quote-syntax__1
                                                 (gx#core-cons
                                                  '%#begin
                                                  _body12250_)
                                                 (gx#stx-source _stx12207_))))
                                          (begin
                                            (##structure-set!
                                             _ctx12248_
                                             (make-promise
                                              (lambda ()
                                                (gx#eval-syntax* _body12252_)))
                                             '10
                                             gx#module-context::t
                                             '#f)
                                            (##structure-set!
                                             _ctx12248_
                                             _body12252_
                                             '11
                                             gx#module-context::t
                                             '#f)
                                            (gx#core-bind-syntax!__0
                                             _id12244_
                                             _ctx12248_)
                                            (gx#core-quote-syntax__1
                                             (gx#core-list
                                              '%#module
                                              (gx#core-quote-syntax__0
                                               _id12244_)
                                              _body12252_)
                                             (gx#stx-source _stx12207_))))
                                        (_E1221212224_)))))
                              (_E1221212224_))))
                      (_E1221212224_)))))
          (_E1221112256_)))))
  (define gx#core-expand-module-begin
    (lambda (_body12173_ _ctx12174_)
      (call-with-parameters
       (lambda ()
         (begin
           (gx#core-bind-feature!__1 'gerbil-module '#t)
           (let* ((_stx12177_
                   (gx#core-expand-head (cons '%%begin-module _body12173_)))
                  (_e1217812185_ _stx12177_)
                  (_E1218012189_
                   (lambda ()
                     (gx#raise-syntax-error
                      '#f
                      '"Illegal module body expansion"
                      _stx12177_)))
                  (_E1217912203_
                   (lambda ()
                     (if (gx#stx-pair? _e1217812185_)
                         (let ((_e1218112193_ (gx#syntax-e _e1217812185_)))
                           (let ((_hd1218212196_ (##car _e1218112193_))
                                 (_tl1218312198_ (##cdr _e1218112193_)))
                             (if (if (gx#identifier? _hd1218212196_)
                                     (gx#core-identifier=?
                                      _hd1218212196_
                                      '%#begin-module)
                                     '#f)
                                 (let ((_body12201_ _tl1218312198_))
                                   (if '#t
                                       (if (gx#sealed-syntax? _stx12177_)
                                           _body12201_
                                           (gx#core-expand-module-body
                                            _body12201_))
                                       (_E1218012189_)))
                                 (_E1218012189_))))
                         (_E1218012189_)))))
             (_E1217912203_))))
       gx#current-expander-context
       _ctx12174_
       gx#current-expander-phi
       '0)))
  (define gx#core-expand-module-body
    (lambda (_body11969_)
      (letrec ((_expand-special11971_
                (lambda (_hd12100_ _K12101_ _rest12102_ _r12103_)
                  (let* ((_e1210412121_ _hd12100_)
                         (_E1211612125_
                          (lambda ()
                            (_K12101_
                             _rest12102_
                             (cons (gx#core-expand-top _hd12100_) _r12103_))))
                         (_E1210612137_
                          (lambda ()
                            (if (gx#stx-pair? _e1210412121_)
                                (let ((_e1211712129_
                                       (gx#syntax-e _e1210412121_)))
                                  (let ((_hd1211812132_ (##car _e1211712129_))
                                        (_tl1211912134_ (##cdr _e1211712129_)))
                                    (if (if (gx#identifier? _hd1211812132_)
                                            (gx#core-identifier=?
                                             _hd1211812132_
                                             '%#export)
                                            '#f)
                                        (if '#t
                                            (_K12101_
                                             _rest12102_
                                             (cons _hd12100_ _r12103_))
                                            (_E1211612125_))
                                        (_E1211612125_))))
                                (_E1211612125_))))
                         (_E1210512169_
                          (lambda ()
                            (if (gx#stx-pair? _e1210412121_)
                                (let ((_e1210712141_
                                       (gx#syntax-e _e1210412121_)))
                                  (let ((_hd1210812144_ (##car _e1210712141_))
                                        (_tl1210912146_ (##cdr _e1210712141_)))
                                    (if (if (gx#identifier? _hd1210812144_)
                                            (gx#core-identifier=?
                                             _hd1210812144_
                                             '%#define-values)
                                            '#f)
                                        (if (gx#stx-pair? _tl1210912146_)
                                            (let ((_e1211012149_
                                                   (gx#syntax-e
                                                    _tl1210912146_)))
                                              (let ((_hd1211112152_
                                                     (##car _e1211012149_))
                                                    (_tl1211212154_
                                                     (##cdr _e1211012149_)))
                                                (let ((_hd-bind12157_
                                                       _hd1211112152_))
                                                  (if (gx#stx-pair?
                                                       _tl1211212154_)
                                                      (let ((_e1211312159_
                                                             (gx#syntax-e
                                                              _tl1211212154_)))
                                                        (let ((_hd1211412162_
                                                               (##car _e1211312159_))
                                                              (_tl1211512164_
                                                               (##cdr _e1211312159_)))
                                                          (let ((_expr12167_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1211412162_))
                    (if (gx#stx-null? _tl1211512164_)
                        (if (gx#core-bind-values? _hd-bind12157_)
                            (begin
                              (gx#core-bind-values!__0 _hd-bind12157_)
                              (_K12101_ _rest12102_ (cons _hd12100_ _r12103_)))
                            (_E1210612137_))
                        (_E1210612137_)))))
              (_E1210612137_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E1210612137_))
                                        (_E1210612137_))))
                                (_E1210612137_)))))
                    (_E1210512169_))))
               (_expand-body11972_
                (lambda (_rbody11974_)
                  (let _lp11976_ ((_rest11978_ _rbody11974_) (_body11979_ '()))
                    (let* ((_rest1198011988_ _rest11978_)
                           (_E1198311992_
                            (lambda ()
                              (error '"No clause matching" _rest1198011988_)))
                           (_else1198211996_ (lambda () _body11979_))
                           (_K1198412088_
                            (lambda (_rest11999_ _hd12000_)
                              (let* ((_e1200112022_ _hd12000_)
                                     (_E1201712026_
                                      (lambda ()
                                        (_lp11976_
                                         _rest11999_
                                         (cons (gx#core-expand-expression
                                                _hd12000_)
                                               _body11979_))))
                                     (_E1201312040_
                                      (lambda ()
                                        (if (gx#stx-pair? _e1200112022_)
                                            (let ((_e1201812030_
                                                   (gx#syntax-e
                                                    _e1200112022_)))
                                              (let ((_hd1201912033_
                                                     (##car _e1201812030_))
                                                    (_tl1202012035_
                                                     (##cdr _e1201812030_)))
                                                (let ((_form12038_
                                                       _hd1201912033_))
                                                  (if (gx#core-bound-identifier?__opt-lambda4697
                                                       _form12038_
                                                       gx#special-form-binding?)
                                                      (_lp11976_
                                                       _rest11999_
                                                       (cons _hd12000_
                                                             _body11979_))
                                                      (_E1201712026_)))))
                                            (_E1201712026_))))
                                     (_E1200312052_
                                      (lambda ()
                                        (if (gx#stx-pair? _e1200112022_)
                                            (let ((_e1201412044_
                                                   (gx#syntax-e
                                                    _e1200112022_)))
                                              (let ((_hd1201512047_
                                                     (##car _e1201412044_))
                                                    (_tl1201612049_
                                                     (##cdr _e1201412044_)))
                                                (if (if (gx#identifier?
                                                         _hd1201512047_)
                                                        (gx#core-identifier=?
                                                         _hd1201512047_
                                                         '%#export)
                                                        '#f)
                                                    (if '#t
                                                        (_lp11976_
                                                         _rest11999_
                                                         (cons (gx#core-expand-export%__0
                                                                _hd12000_)
                                                               _body11979_))
                                                        (_E1201312040_))
                                                    (_E1201312040_))))
                                            (_E1201312040_))))
                                     (_E1200212084_
                                      (lambda ()
                                        (if (gx#stx-pair? _e1200112022_)
                                            (let ((_e1200412056_
                                                   (gx#syntax-e
                                                    _e1200112022_)))
                                              (let ((_hd1200512059_
                                                     (##car _e1200412056_))
                                                    (_tl1200612061_
                                                     (##cdr _e1200412056_)))
                                                (if (if (gx#identifier?
                                                         _hd1200512059_)
                                                        (gx#core-identifier=?
                                                         _hd1200512059_
                                                         '%#define-values)
                                                        '#f)
                                                    (if (gx#stx-pair?
                                                         _tl1200612061_)
                                                        (let ((_e1200712064_
                                                               (gx#syntax-e
                                                                _tl1200612061_)))
                                                          (let ((_hd1200812067_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1200712064_))
                        (_tl1200912069_ (##cdr _e1200712064_)))
                    (let ((_hd-bind12072_ _hd1200812067_))
                      (if (gx#stx-pair? _tl1200912069_)
                          (let ((_e1201012074_ (gx#syntax-e _tl1200912069_)))
                            (let ((_hd1201112077_ (##car _e1201012074_))
                                  (_tl1201212079_ (##cdr _e1201012074_)))
                              (let ((_expr12082_ _hd1201112077_))
                                (if (gx#stx-null? _tl1201212079_)
                                    (if '#t
                                        (_lp11976_
                                         _rest11999_
                                         (cons (gx#core-quote-syntax__1
                                                (gx#core-list
                                                 '%#define-values
                                                 (gx#core-quote-bind-values
                                                  _hd-bind12072_)
                                                 (gx#core-expand-expression
                                                  _expr12082_))
                                                (gx#stx-source _hd12000_))
                                               _body11979_))
                                        (_E1200312052_))
                                    (_E1200312052_)))))
                          (_E1200312052_)))))
                (_E1200312052_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1200312052_))))
                                            (_E1200312052_)))))
                                (_E1200212084_)))))
                      (if (##pair? _rest1198011988_)
                          (let ((_hd1198512091_ (##car _rest1198011988_))
                                (_tl1198612093_ (##cdr _rest1198011988_)))
                            (let* ((_hd12096_ _hd1198512091_)
                                   (_rest12098_ _tl1198612093_))
                              (_K1198412088_ _rest12098_ _hd12096_)))
                          (_else1198211996_)))))))
        (_expand-body11972_
         (gx#core-expand-block__opt-lambda6606
          (cons '%#begin-module _body11969_)
          _expand-special11971_
          '#f
          values)))))
  (define gx#core-expand-import/export
    (lambda (_stx11812_
             _expanded?11813_
             _method11814_
             _current-phi11815_
             _expand111816_)
      (letrec ((_K11818_
                (lambda (_rest11936_ _r11937_)
                  (let* ((_e1193811945_ _rest11936_)
                         (_E1194011949_ (lambda () _r11937_))
                         (_E1193911965_
                          (lambda ()
                            (if (gx#stx-pair? _e1193811945_)
                                (let ((_e1194111953_
                                       (gx#syntax-e _e1193811945_)))
                                  (let ((_hd1194211956_ (##car _e1194111953_))
                                        (_tl1194311958_ (##cdr _e1194111953_)))
                                    (let* ((_hd11961_ _hd1194211956_)
                                           (_rest11963_ _tl1194311958_))
                                      (if '#t
                                          (_step11819_
                                           _hd11961_
                                           _rest11963_
                                           _r11937_)
                                          (_E1194011949_)))))
                                (_E1194011949_)))))
                    (_E1193911965_))))
               (_step11819_
                (lambda (_hd11850_ _rest11851_ _r11852_)
                  (let* ((_e1185311871_ _hd11850_)
                         (_E1186611875_
                          (lambda ()
                            (if (_expanded?11813_ (gx#stx-e _hd11850_))
                                (_K11818_
                                 _rest11851_
                                 (cons (gx#stx-e _hd11850_) _r11852_))
                                (_expand111816_
                                 _hd11850_
                                 _K11818_
                                 _rest11851_
                                 _r11852_))))
                         (_E1186211891_
                          (lambda ()
                            (if (gx#stx-pair? _e1185311871_)
                                (let ((_e1186711879_
                                       (gx#syntax-e _e1185311871_)))
                                  (let ((_hd1186811882_ (##car _e1186711879_))
                                        (_tl1186911884_ (##cdr _e1186711879_)))
                                    (let* ((_macro11887_ _hd1186811882_)
                                           (_body11889_ _tl1186911884_))
                                      (if (gx#core-bound-identifier?__opt-lambda4697
                                           _macro11887_
                                           gx#syntax-binding?)
                                          (_K11818_
                                           (cons (gx#core-apply-expander__opt-lambda6324
                                                  (gx#syntax-local-e__0
                                                   _macro11887_)
                                                  _hd11850_
                                                  _method11814_)
                                                 _rest11851_)
                                           _r11852_)
                                          (_E1186611875_)))))
                                (_E1186611875_))))
                         (_E1185511905_
                          (lambda ()
                            (if (gx#stx-pair? _e1185311871_)
                                (let ((_e1186311895_
                                       (gx#syntax-e _e1185311871_)))
                                  (let ((_hd1186411898_ (##car _e1186311895_))
                                        (_tl1186511900_ (##cdr _e1186311895_)))
                                    (if (eq? (gx#stx-e _hd1186411898_) 'begin:)
                                        (let ((_body11903_ _tl1186511900_))
                                          (if '#t
                                              (_K11818_
                                               (gx#stx-foldr
                                                cons
                                                _rest11851_
                                                _body11903_)
                                               _r11852_)
                                              (_E1186211891_)))
                                        (_E1186211891_))))
                                (_E1186211891_))))
                         (_E1185411932_
                          (lambda ()
                            (if (gx#stx-pair? _e1185311871_)
                                (let ((_e1185611909_
                                       (gx#syntax-e _e1185311871_)))
                                  (let ((_hd1185711912_ (##car _e1185611909_))
                                        (_tl1185811914_ (##cdr _e1185611909_)))
                                    (if (eq? (gx#stx-e _hd1185711912_) 'phi:)
                                        (if (gx#stx-pair? _tl1185811914_)
                                            (let ((_e1185911917_
                                                   (gx#syntax-e
                                                    _tl1185811914_)))
                                              (let ((_hd1186011920_
                                                     (##car _e1185911917_))
                                                    (_tl1186111922_
                                                     (##cdr _e1185911917_)))
                                                (let* ((_dphi11925_
                                                        _hd1186011920_)
                                                       (_body11927_
                                                        _tl1186111922_))
                                                  (if (gx#stx-fixnum?
                                                       _dphi11925_)
                                                      (let ((_rbody11930_
                                                             (call-with-parameters
                                                              (lambda ()
                                                                (_K11818_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _body11927_
                         '()))
                      _current-phi11815_
                      (fx+ (gx#stx-e _dphi11925_) (_current-phi11815_)))))
                (_K11818_ _rest11851_ (foldr1 cons _r11852_ _rbody11930_)))
              (_E1185511905_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E1185511905_))
                                        (_E1185511905_))))
                                (_E1185511905_)))))
                    (_E1185411932_)))))
        (let* ((_e1182011827_ _stx11812_)
               (_E1182211831_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1182011827_)))
               (_E1182111846_
                (lambda ()
                  (if (gx#stx-pair? _e1182011827_)
                      (let ((_e1182311835_ (gx#syntax-e _e1182011827_)))
                        (let ((_hd1182411838_ (##car _e1182311835_))
                              (_tl1182511840_ (##cdr _e1182311835_)))
                          (let ((_body11843_ _tl1182511840_))
                            (if '#t
                                (if (_current-phi11815_)
                                    (_K11818_ _body11843_ '())
                                    (call-with-parameters
                                     (lambda () (_K11818_ _body11843_ '()))
                                     _current-phi11815_
                                     (gx#current-expander-phi)))
                                (_E1182211831_)))))
                      (_E1182211831_)))))
          (_E1182111846_)))))
  (begin
    (define gx#core-expand-import%__opt-lambda11353
      (lambda (_stx11355_ _internal-expand?11356_)
        (letrec ((_expand111358_
                  (lambda (_hd11797_ _K11798_ _rest11799_ _r11800_)
                    (if (gx#core-bound-module? _hd11797_)
                        (_import111359_
                         (gx#syntax-local-e__0 _hd11797_)
                         _K11798_
                         _rest11799_
                         _r11800_)
                        (if (gx#core-library-module-path? _hd11797_)
                            (_import111359_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path _hd11797_))
                             _K11798_
                             _rest11799_
                             _r11800_)
                            (if (gx#stx-string? _hd11797_)
                                (_import111359_
                                 (gx#import-module__0
                                  (gx#core-resolve-module-path__opt-lambda12692
                                   _hd11797_
                                   (gx#stx-source _stx11355_)))
                                 _K11798_
                                 _rest11799_
                                 _r11800_)
                                (if (##structure-instance-of?
                                     (gx#stx-e _hd11797_)
                                     'gx#module-context::t)
                                    (_K11798_
                                     _rest11799_
                                     (cons (gx#stx-e _hd11797_) _r11800_))
                                    (if (_import-spec?11360_ _hd11797_)
                                        (_import-spec11365_
                                         _hd11797_
                                         _K11798_
                                         _rest11799_
                                         _r11800_)
                                        (if (_import-submodule?11361_
                                             _hd11797_)
                                            (_import-submodule11363_
                                             _hd11797_
                                             _K11798_
                                             _rest11799_
                                             _r11800_)
                                            (if (_import-runtime?11362_
                                                 _hd11797_)
                                                (_import-runtime11364_
                                                 _hd11797_
                                                 _K11798_
                                                 _rest11799_
                                                 _r11800_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; illegal import"
                                                 _stx11355_
                                                 _hd11797_))))))))))
                 (_import111359_
                  (lambda (_ctx11786_ _K11787_ _rest11788_ _r11789_)
                    (let ((_dphi11791_
                           (fx- (gx#current-import-expander-phi)
                                (gx#current-expander-phi))))
                      (_K11787_
                       _rest11788_
                       (cons (##structure
                              gx#import-set::t
                              _ctx11786_
                              _dphi11791_
                              (map (lambda (_g1179211794_)
                                     (gx#core-module-export->import__opt-lambda12277
                                      _g1179211794_
                                      '#f
                                      _dphi11791_))
                                   (##structure-ref
                                    _ctx11786_
                                    '9
                                    gx#module-context::t
                                    '#f)))
                             _r11789_)))))
                 (_import-spec?11360_
                  (lambda (_hd11743_)
                    (let* ((_e1174411754_ _hd11743_)
                           (_E1174611758_ (lambda () '#f))
                           (_E1174511782_
                            (lambda ()
                              (if (gx#stx-pair? _e1174411754_)
                                  (let ((_e1174711762_
                                         (gx#syntax-e _e1174411754_)))
                                    (let ((_hd1174811765_
                                           (##car _e1174711762_))
                                          (_tl1174911767_
                                           (##cdr _e1174711762_)))
                                      (if (eq? (gx#stx-e _hd1174811765_)
                                               'spec:)
                                          (if (gx#stx-pair? _tl1174911767_)
                                              (let ((_e1175011770_
                                                     (gx#syntax-e
                                                      _tl1174911767_)))
                                                (let ((_hd1175111773_
                                                       (##car _e1175011770_))
                                                      (_tl1175211775_
                                                       (##cdr _e1175011770_)))
                                                  (let* ((_spath11778_
                                                          _hd1175111773_)
                                                         (_specs11780_
                                                          _tl1175211775_))
                                                    (if '#t
                                                        '#t
                                                        (_E1174611758_)))))
                                              (_E1174611758_))
                                          (_E1174611758_))))
                                  (_E1174611758_)))))
                      (_E1174511782_))))
                 (_import-submodule?11361_
                  (lambda (_hd11700_)
                    (let* ((_e1170111711_ _hd11700_)
                           (_E1170311715_ (lambda () '#f))
                           (_E1170211739_
                            (lambda ()
                              (if (gx#stx-pair? _e1170111711_)
                                  (let ((_e1170411719_
                                         (gx#syntax-e _e1170111711_)))
                                    (let ((_hd1170511722_
                                           (##car _e1170411719_))
                                          (_tl1170611724_
                                           (##cdr _e1170411719_)))
                                      (if (eq? (gx#stx-e _hd1170511722_) 'in:)
                                          (if (gx#stx-pair? _tl1170611724_)
                                              (let ((_e1170711727_
                                                     (gx#syntax-e
                                                      _tl1170611724_)))
                                                (let ((_hd1170811730_
                                                       (##car _e1170711727_))
                                                      (_tl1170911732_
                                                       (##cdr _e1170711727_)))
                                                  (let* ((_top11735_
                                                          _hd1170811730_)
                                                         (_sub11737_
                                                          _tl1170911732_))
                                                    (if '#t
                                                        '#t
                                                        (_E1170311715_)))))
                                              (_E1170311715_))
                                          (_E1170311715_))))
                                  (_E1170311715_)))))
                      (_E1170211739_))))
                 (_import-runtime?11362_
                  (lambda (_hd11657_)
                    (let* ((_e1165811668_ _hd11657_)
                           (_E1166011672_ (lambda () '#f))
                           (_E1165911696_
                            (lambda ()
                              (if (gx#stx-pair? _e1165811668_)
                                  (let ((_e1166111676_
                                         (gx#syntax-e _e1165811668_)))
                                    (let ((_hd1166211679_
                                           (##car _e1166111676_))
                                          (_tl1166311681_
                                           (##cdr _e1166111676_)))
                                      (if (eq? (gx#stx-e _hd1166211679_)
                                               'runtime:)
                                          (if (gx#stx-pair? _tl1166311681_)
                                              (let ((_e1166411684_
                                                     (gx#syntax-e
                                                      _tl1166311681_)))
                                                (let ((_hd1166511687_
                                                       (##car _e1166411684_))
                                                      (_tl1166611689_
                                                       (##cdr _e1166411684_)))
                                                  (let* ((_top11692_
                                                          _hd1166511687_)
                                                         (_spath11694_
                                                          _tl1166611689_))
                                                    (if '#t
                                                        '#t
                                                        (_E1166011672_)))))
                                              (_E1166011672_))
                                          (_E1166011672_))))
                                  (_E1166011672_)))))
                      (_E1165911696_))))
                 (_import-submodule11363_
                  (lambda (_hd11624_ _K11625_ _rest11626_ _r11627_)
                    (let* ((_e1162811635_ _hd11624_)
                           (_E1163011639_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _e1162811635_)))
                           (_E1162911653_
                            (lambda ()
                              (if (gx#stx-pair? _e1162811635_)
                                  (let ((_e1163111643_
                                         (gx#syntax-e _e1162811635_)))
                                    (let ((_hd1163211646_
                                           (##car _e1163111643_))
                                          (_tl1163311648_
                                           (##cdr _e1163111643_)))
                                      (let ((_spath11651_ _tl1163311648_))
                                        (if '#t
                                            (_import111359_
                                             (_import-spec-source11366_
                                              _spath11651_)
                                             _K11625_
                                             _rest11626_
                                             _r11627_)
                                            (_E1163011639_)))))
                                  (_E1163011639_)))))
                      (_E1162911653_))))
                 (_import-runtime11364_
                  (lambda (_hd11591_ _K11592_ _rest11593_ _r11594_)
                    (let* ((_e1159511602_ _hd11591_)
                           (_E1159711606_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _e1159511602_)))
                           (_E1159611620_
                            (lambda ()
                              (if (gx#stx-pair? _e1159511602_)
                                  (let ((_e1159811610_
                                         (gx#syntax-e _e1159511602_)))
                                    (let ((_hd1159911613_
                                           (##car _e1159811610_))
                                          (_tl1160011615_
                                           (##cdr _e1159811610_)))
                                      (let ((_spath11618_ _tl1160011615_))
                                        (if '#t
                                            (_K11592_
                                             _rest11593_
                                             (cons (_import-spec-source11366_
                                                    _spath11618_)
                                                   _r11594_))
                                            (_E1159711606_)))))
                                  (_E1159711606_)))))
                      (_E1159611620_))))
                 (_import-spec11365_
                  (lambda (_hd11430_ _K11431_ _rest11432_ _r11433_)
                    (let* ((_e1143411451_ _hd11430_)
                           (_E1144311455_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _e1143411451_)))
                           (_E1143611565_
                            (lambda ()
                              (if (gx#stx-pair? _e1143411451_)
                                  (let ((_e1144411459_
                                         (gx#syntax-e _e1143411451_)))
                                    (let ((_hd1144511462_
                                           (##car _e1144411459_))
                                          (_tl1144611464_
                                           (##cdr _e1144411459_)))
                                      (if (gx#stx-pair? _tl1144611464_)
                                          (let ((_e1144711467_
                                                 (gx#syntax-e _tl1144611464_)))
                                            (let ((_hd1144811470_
                                                   (##car _e1144711467_))
                                                  (_tl1144911472_
                                                   (##cdr _e1144711467_)))
                                              (let* ((_path11475_
                                                      _hd1144811470_)
                                                     (_specs11477_
                                                      _tl1144911472_))
                                                (if '#t
                                                    (let ((_src-ctx11479_
                                                           (_import-spec-source11366_
                                                            _path11475_))
                                                          (_exports11480_
                                                           (make-table))
                                                          (_specs11481_
                                                           (gx#syntax->list
                                                            _specs11477_)))
                                                      (begin
                                                        (for-each
                                                         (lambda (_out11483_)
                                                           (table-set!
                                                            _exports11480_
                                                            (cons (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _out11483_
                           '3
                           gx#module-export::t
                           '#f)
                          (##direct-structure-ref
                           _out11483_
                           '4
                           gx#module-export::t
                           '#f))
                    _out11483_))
                 (##structure-ref _src-ctx11479_ '9 gx#module-context::t '#f))
                (_K11431_
                 _rest11432_
                 (foldl1 (lambda (_spec11485_ _r11486_)
                           (let* ((_e1148711503_ _spec11485_)
                                  (_E1148911507_
                                   (lambda ()
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _e1148711503_)))
                                  (_E1148811561_
                                   (lambda ()
                                     (if (gx#stx-pair? _e1148711503_)
                                         (let ((_e1149011511_
                                                (gx#syntax-e _e1148711503_)))
                                           (let ((_hd1149111514_
                                                  (##car _e1149011511_))
                                                 (_tl1149211516_
                                                  (##cdr _e1149011511_)))
                                             (let ((_phi11519_ _hd1149111514_))
                                               (if (gx#stx-pair?
                                                    _tl1149211516_)
                                                   (let ((_e1149311521_
                                                          (gx#syntax-e
                                                           _tl1149211516_)))
                                                     (let ((_hd1149411524_
                                                            (##car _e1149311521_))
                                                           (_tl1149511526_
                                                            (##cdr _e1149311521_)))
                                                       (let ((_name11529_
                                                              _hd1149411524_))
                                                         (if (gx#stx-pair?
                                                              _tl1149511526_)
                                                             (let ((_e1149611531_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _tl1149511526_)))
                       (let ((_hd1149711534_ (##car _e1149611531_))
                             (_tl1149811536_ (##cdr _e1149611531_)))
                         (let ((_src-phi11539_ _hd1149711534_))
                           (if (gx#stx-pair? _tl1149811536_)
                               (let ((_e1149911541_
                                      (gx#syntax-e _tl1149811536_)))
                                 (let ((_hd1150011544_ (##car _e1149911541_))
                                       (_tl1150111546_ (##cdr _e1149911541_)))
                                   (let ((_src-name11549_ _hd1150011544_))
                                     (if (gx#stx-null? _tl1150111546_)
                                         (if (if (gx#stx-fixnum?
                                                  _src-phi11539_)
                                                 (if (gx#identifier?
                                                      _src-name11549_)
                                                     (if (gx#stx-fixnum?
                                                          _phi11519_)
                                                         (gx#identifier?
                                                          _name11529_)
                                                         '#f)
                                                     '#f)
                                                 '#f)
                                             (let ((_src-phi11551_
                                                    (gx#stx-e _src-phi11539_))
                                                   (_src-name11552_
                                                    (gx#core-identifier-key
                                                     _src-name11549_))
                                                   (_phi11553_
                                                    (gx#stx-e _phi11519_))
                                                   (_name11554_
                                                    (gx#core-identifier-key
                                                     _name11529_)))
                                               (let ((_$e11556_
                                                      (table-ref
                                                       _exports11480_
                                                       (cons _src-phi11551_
                                                             _src-name11552_)
                                                       '#f)))
                                                 (if _$e11556_
                                                     ((lambda (_out11559_)
                                                        (cons (gx#core-module-export->import__opt-lambda12277
                                                               _out11559_
                                                               _name11554_
                                                               (fx- _phi11553_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _src-phi11551_))
                      _r11486_))
              _$e11556_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; no matching export"
                                                      _stx11355_
                                                      _hd11430_))))
                                             (_E1148911507_))
                                         (_E1148911507_)))))
                               (_E1148911507_)))))
                     (_E1148911507_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1148911507_)))))
                                         (_E1148911507_)))))
                             (_E1148811561_)))
                         _r11433_
                         _specs11481_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1144311455_)))))
                                          (_E1144311455_))))
                                  (_E1144311455_))))
                           (_E1143511587_
                            (lambda ()
                              (if (gx#stx-pair? _e1143411451_)
                                  (let ((_e1143711569_
                                         (gx#syntax-e _e1143411451_)))
                                    (let ((_hd1143811572_
                                           (##car _e1143711569_))
                                          (_tl1143911574_
                                           (##cdr _e1143711569_)))
                                      (if (gx#stx-pair? _tl1143911574_)
                                          (let ((_e1144011577_
                                                 (gx#syntax-e _tl1143911574_)))
                                            (let ((_hd1144111580_
                                                   (##car _e1144011577_))
                                                  (_tl1144211582_
                                                   (##cdr _e1144011577_)))
                                              (let ((_path11585_
                                                     _hd1144111580_))
                                                (if (gx#stx-null?
                                                     _tl1144211582_)
                                                    (if '#t
                                                        (_K11431_
                                                         _rest11432_
                                                         (cons (_import-spec-source11366_
                                                                _path11585_)
                                                               _r11433_))
                                                        (_E1143611565_))
                                                    (_E1143611565_)))))
                                          (_E1143611565_))))
                                  (_E1143611565_)))))
                      (_E1143511587_))))
                 (_import-spec-source11366_
                  (lambda (_spath11428_)
                    (gx#core-import-nested-module _spath11428_ _stx11355_)))
                 (_import!11367_
                  (lambda (_rbody11380_)
                    (letrec* ((_current-ctx11382_
                               (gx#current-expander-context))
                              (_deps11383_ (make-hash-table-eq))
                              (_bind!11384_
                               (lambda (_hd11426_)
                                 (begin
                                   (gx#core-bind-import!__1
                                    _hd11426_
                                    _current-ctx11382_)
                                   (if (if (fxpositive?
                                            (##direct-structure-ref
                                             _hd11426_
                                             '3
                                             gx#module-import::t
                                             '#f))
                                           (fxzero? (##direct-structure-ref
                                                     (##direct-structure-ref
                                                      _hd11426_
                                                      '1
                                                      gx#module-import::t
                                                      '#f)
                                                     '3
                                                     gx#module-export::t
                                                     '#f))
                                           '#f)
                                       (table-set!
                                        _deps11383_
                                        (##direct-structure-ref
                                         (##direct-structure-ref
                                          _hd11426_
                                          '1
                                          gx#module-import::t
                                          '#f)
                                         '1
                                         gx#module-export::t
                                         '#f)
                                        '#t)
                                       '#!void)))))
                      (let _lp11386_ ((_rest11388_ _rbody11380_)
                                      (_body11389_ '()))
                        (let* ((_rest1139011398_ _rest11388_)
                               (_E1139311402_
                                (lambda ()
                                  (error '"No clause matching"
                                         _rest1139011398_)))
                               (_else1139211408_
                                (lambda ()
                                  (begin
                                    (if (##structure-instance-of?
                                         _current-ctx11382_
                                         'gx#module-context::t)
                                        (##structure-set!
                                         _current-ctx11382_
                                         (foldl1 cons
                                                 (##structure-ref
                                                  _current-ctx11382_
                                                  '8
                                                  gx#module-context::t
                                                  '#f)
                                                 _body11389_)
                                         '8
                                         gx#module-context::t
                                         '#f)
                                        '#!void)
                                    (table-for-each
                                     (lambda (_ctx11406_ _g14118_)
                                       (gx#eval-module _ctx11406_))
                                     _deps11383_)
                                    _body11389_)))
                               (_K1139411414_
                                (lambda (_rest11411_ _hd11412_)
                                  (begin
                                    (if (##structure-direct-instance-of?
                                         _hd11412_
                                         'gx#module-import::t)
                                        (_bind!11384_ _hd11412_)
                                        (if (##structure-direct-instance-of?
                                             _hd11412_
                                             'gx#import-set::t)
                                            (for-each
                                             _bind!11384_
                                             (##direct-structure-ref
                                              _hd11412_
                                              '3
                                              gx#import-set::t
                                              '#f))
                                            (if (##structure-instance-of?
                                                 _hd11412_
                                                 'gx#module-context::t)
                                                '#!void
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Unexpected import"
                                                 _stx11355_
                                                 _hd11412_))))
                                    (_lp11386_
                                     _rest11411_
                                     (cons _hd11412_ _body11389_))))))
                          (if (##pair? _rest1139011398_)
                              (let ((_hd1139511417_ (##car _rest1139011398_))
                                    (_tl1139611419_ (##cdr _rest1139011398_)))
                                (let* ((_hd11422_ _hd1139511417_)
                                       (_rest11424_ _tl1139611419_))
                                  (_K1139411414_ _rest11424_ _hd11422_)))
                              (_else1139211408_)))))))
                 (_expanded-import?11368_
                  (lambda (_e11372_)
                    (let ((_$e11374_
                           (##structure-direct-instance-of?
                            _e11372_
                            'gx#import-set::t)))
                      (if _$e11374_
                          _$e11374_
                          (let ((_$e11377_
                                 (##structure-direct-instance-of?
                                  _e11372_
                                  'gx#module-import::t)))
                            (if _$e11377_
                                _$e11377_
                                (##structure-instance-of?
                                 _e11372_
                                 'gx#module-context::t))))))))
          (let ((_rbody11370_
                 (gx#core-expand-import/export
                  _stx11355_
                  _expanded-import?11368_
                  'apply-import-expander
                  gx#current-import-expander-phi
                  _expand111358_)))
            (if _internal-expand?11356_
                (reverse _rbody11370_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#import (_import!11367_ _rbody11370_))
                 (gx#stx-source _stx11355_)))))))
    (begin
      (define gx#core-expand-import%__0
        (lambda (_stx11805_)
          (let ((_internal-expand?11807_ '#f))
            (gx#core-expand-import%__opt-lambda11353
             _stx11805_
             _internal-expand?11807_))))
      (define gx#core-expand-import%
        (lambda _g14120_
          (let ((_g14119_ (length _g14120_)))
            (cond ((fx= _g14119_ 1) (apply gx#core-expand-import%__0 _g14120_))
                  ((fx= _g14119_ 2)
                   (apply gx#core-expand-import%__opt-lambda11353 _g14120_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-expand-import%
                    _g14120_))))))))
  (define gx#core-import-nested-module
    (lambda (_spath11282_ _where11283_)
      (let* ((_e1128411291_ _spath11282_)
             (_E1128611295_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1128411291_)))
             (_E1128511350_
              (lambda ()
                (if (gx#stx-pair? _e1128411291_)
                    (let ((_e1128711299_ (gx#syntax-e _e1128411291_)))
                      (let ((_hd1128811302_ (##car _e1128711299_))
                            (_tl1128911304_ (##cdr _e1128711299_)))
                        (let* ((_origin11307_ _hd1128811302_)
                               (_sub11309_ _tl1128911304_))
                          (if '#t
                              (let ((_origin-ctx11311_
                                     (if (gx#stx-false? _origin11307_)
                                         (gx#current-expander-context)
                                         (gx#import-module__0 _origin11307_))))
                                (let _lp11313_ ((_rest11315_ _sub11309_)
                                                (_ctx11316_ _origin-ctx11311_))
                                  (let* ((_e1131711324_ _rest11315_)
                                         (_E1131911328_ (lambda () _ctx11316_))
                                         (_E1131811346_
                                          (lambda ()
                                            (if (gx#stx-pair? _e1131711324_)
                                                (let ((_e1132011332_
                                                       (gx#syntax-e
                                                        _e1131711324_)))
                                                  (let ((_hd1132111335_
                                                         (##car _e1132011332_))
                                                        (_tl1132211337_
                                                         (##cdr _e1132011332_)))
                                                    (let* ((_id11340_
                                                            _hd1132111335_)
                                                           (_rest11342_
                                                            _tl1132211337_))
                                                      (if '#t
                                                          (let ((_bind11344_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#resolve-identifier__opt-lambda5254
                          _id11340_
                          '0
                          _ctx11316_)))
                    (begin
                      (if (if (##structure-direct-instance-of?
                               _bind11344_
                               'gx#syntax-binding::t)
                              (##structure-instance-of?
                               (##direct-structure-ref
                                _bind11344_
                                '4
                                gx#syntax-binding::t
                                '#f)
                               'gx#module-context::t)
                              '#f)
                          '#!void
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; not bound as module"
                           _where11283_
                           _spath11282_
                           _id11340_))
                      (_lp11313_
                       _rest11342_
                       (##direct-structure-ref
                        _bind11344_
                        '4
                        gx#syntax-binding::t
                        '#f))))
                  (_E1131911328_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E1131911328_)))))
                                    (_E1131811346_))))
                              (_E1128611295_)))))
                    (_E1128611295_)))))
        (_E1128511350_))))
  (define gx#core-expand-import-source
    (lambda (_hd11280_)
      (gx#core-expand-import%__opt-lambda11353
       (cons 'import-internal% (cons _hd11280_ '()))
       '#t)))
  (begin
    (define gx#core-expand-export%__opt-lambda10789
      (lambda (_stx10791_ _internal-expand?10792_)
        (letrec* ((_make-export__opt-lambda11226__1408214083_
                   (lambda (_bind11228_ _phi11229_ _ctx11230_ _name11231_)
                     (let* ((_key11233_
                             (##structure-ref
                              _bind11228_
                              '2
                              gx#binding::t
                              '#f))
                            (_export-key11235_
                             (if _name11231_
                                 (gx#core-identifier-key _name11231_)
                                 _key11233_)))
                       (##structure
                        gx#module-export::t
                        _ctx11230_
                        _key11233_
                        _phi11229_
                        _export-key11235_
                        (let ((_$e11238_
                               (##structure-instance-of?
                                _bind11228_
                                'gx#extern-binding::t)))
                          (if _$e11238_
                              _$e11238_
                              (##structure-direct-instance-of?
                               _bind11228_
                               'gx#import-binding::t)))))))
                  (_make-export__0__1408414087_
                   (lambda (_bind11244_)
                     (let* ((_phi11246_ (gx#current-export-expander-phi))
                            (_ctx11248_ (gx#current-expander-context))
                            (_name11250_ '#f))
                       (_make-export__opt-lambda11226__1408214083_
                        _bind11244_
                        _phi11246_
                        _ctx11248_
                        _name11250_))))
                  (_make-export__1__1408514088_
                   (lambda (_bind11252_ _phi11253_)
                     (let* ((_ctx11255_ (gx#current-expander-context))
                            (_name11257_ '#f))
                       (_make-export__opt-lambda11226__1408214083_
                        _bind11252_
                        _phi11253_
                        _ctx11255_
                        _name11257_))))
                  (_make-export__2__1408614089_
                   (lambda (_bind11259_ _phi11260_ _ctx11261_)
                     (let ((_name11263_ '#f))
                       (_make-export__opt-lambda11226__1408214083_
                        _bind11259_
                        _phi11260_
                        _ctx11261_
                        _name11263_))))
                  (_make-export10794_
                   (lambda _g14122_
                     (let ((_g14121_ (length _g14122_)))
                       (cond ((fx= _g14121_ 1)
                              (apply _make-export__0__1408414087_ _g14122_))
                             ((fx= _g14121_ 2)
                              (apply _make-export__1__1408514088_ _g14122_))
                             ((fx= _g14121_ 3)
                              (apply _make-export__2__1408614089_ _g14122_))
                             ((fx= _g14121_ 4)
                              (apply _make-export__opt-lambda11226__1408214083_
                                     _g14122_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g14122_))))))
                  (_expand110795_
                   (lambda (_hd10941_ _K10942_ _rest10943_ _r10944_)
                     (let* ((_e1094510977_ _hd10941_)
                            (_E1097210981_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal export"
                                _stx10791_
                                _hd10941_)))
                            (_E1096211060_
                             (lambda ()
                               (if (gx#stx-pair? _e1094510977_)
                                   (let ((_e1097310985_
                                          (gx#syntax-e _e1094510977_)))
                                     (let ((_hd1097410988_
                                            (##car _e1097310985_))
                                           (_tl1097510990_
                                            (##cdr _e1097310985_)))
                                       (if (eq? (gx#stx-e _hd1097410988_)
                                                'import:)
                                           (let ((_in10993_ _tl1097510990_))
                                             (if (gx#stx-list? _in10993_)
                                                 (let _lp10995_ ((_in-rest10997_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _in10993_)
                         (_r10998_ _r10944_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_e1099911006_
                                                           _in-rest10997_)
                                                          (_E1100111010_
                                                           (lambda ()
                                                             (_K10942_
                                                              _rest10943_
                                                              _r10998_)))
                                                          (_E1100011056_
                                                           (lambda ()
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _e1099911006_)
                         (let ((_e1100211014_ (gx#syntax-e _e1099911006_)))
                           (let ((_hd1100311017_ (##car _e1100211014_))
                                 (_tl1100411019_ (##cdr _e1100211014_)))
                             (let* ((_hd11022_ _hd1100311017_)
                                    (_in-rest11024_ _tl1100411019_))
                               (if '#t
                                   (let ((_src11054_
                                          (if (gx#core-bound-module? _hd11022_)
                                              (gx#syntax-local-e__0 _hd11022_)
                                              (if (gx#core-library-module-path?
                                                   _hd11022_)
                                                  (gx#import-module__0
                                                   (gx#core-resolve-library-module-path
                                                    _hd11022_))
                                                  (if (gx#stx-string?
                                                       _hd11022_)
                                                      (gx#import-module__0
                                                       (gx#core-resolve-module-path__opt-lambda12692
                                                        _hd11022_
                                                        (gx#stx-source
                                                         _stx10791_)))
                                                      (let* ((_e1102511032_
                                                              _hd11022_)
                                                             (_E1102711036_
                                                              (lambda ()
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; illegal re-export"
                         _stx10791_
                         _hd11022_)))
                     (_E1102611050_
                      (lambda ()
                        (if (gx#stx-pair? _e1102511032_)
                            (let ((_e1102811040_ (gx#syntax-e _e1102511032_)))
                              (let ((_hd1102911043_ (##car _e1102811040_))
                                    (_tl1103011045_ (##cdr _e1102811040_)))
                                (if (eq? (gx#stx-e _hd1102911043_) 'in:)
                                    (let ((_spath11048_ _tl1103011045_))
                                      (if '#t
                                          (gx#core-import-nested-module
                                           _spath11048_
                                           _stx10791_)
                                          (_E1102711036_)))
                                    (_E1102711036_))))
                            (_E1102711036_)))))
                (_E1102611050_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_lp10995_
                                      _in-rest11024_
                                      (_export-imports10796_
                                       _src11054_
                                       _r10998_)))
                                   (_E1100111010_)))))
                         (_E1100111010_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E1100011056_)))
                                                 (_E1097210981_)))
                                           (_E1097210981_))))
                                   (_E1097210981_))))
                            (_E1094911099_
                             (lambda ()
                               (if (gx#stx-pair? _e1094510977_)
                                   (let ((_e1096311064_
                                          (gx#syntax-e _e1094510977_)))
                                     (let ((_hd1096411067_
                                            (##car _e1096311064_))
                                           (_tl1096511069_
                                            (##cdr _e1096311064_)))
                                       (if (eq? (gx#stx-e _hd1096411067_)
                                                'rename:)
                                           (if (gx#stx-pair? _tl1096511069_)
                                               (let ((_e1096611072_
                                                      (gx#syntax-e
                                                       _tl1096511069_)))
                                                 (let ((_hd1096711075_
                                                        (##car _e1096611072_))
                                                       (_tl1096811077_
                                                        (##cdr _e1096611072_)))
                                                   (let ((_id11080_
                                                          _hd1096711075_))
                                                     (if (gx#stx-pair?
                                                          _tl1096811077_)
                                                         (let ((_e1096911082_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1096811077_)))
                   (let ((_hd1097011085_ (##car _e1096911082_))
                         (_tl1097111087_ (##cdr _e1096911082_)))
                     (let ((_name11090_ _hd1097011085_))
                       (if (gx#stx-null? _tl1097111087_)
                           (if '#t
                               (let* ((_phi11092_
                                       (gx#current-export-expander-phi))
                                      (_$e11094_
                                       (gx#core-resolve-identifier__1
                                        _id11080_
                                        _phi11092_)))
                                 (if _$e11094_
                                     ((lambda (_bind11097_)
                                        (_K10942_
                                         _rest10943_
                                         (cons (_make-export__opt-lambda11226__1408214083_
                                                _bind11097_
                                                _phi11092_
                                                (gx#current-expander-context)
                                                _name11090_)
                                               _r10944_)))
                                      _$e11094_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Reference to unbound identifier"
                                      _stx10791_
                                      _hd10941_
                                      _id11080_)))
                               (_E1096211060_))
                           (_E1096211060_)))))
                 (_E1096211060_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E1096211060_))
                                           (_E1096211060_))))
                                   (_E1096211060_))))
                            (_E1094811148_
                             (lambda ()
                               (if (gx#stx-pair? _e1094510977_)
                                   (let ((_e1095011103_
                                          (gx#syntax-e _e1094510977_)))
                                     (let ((_hd1095111106_
                                            (##car _e1095011103_))
                                           (_tl1095211108_
                                            (##cdr _e1095011103_)))
                                       (if (eq? (gx#stx-e _hd1095111106_)
                                                'spec:)
                                           (if (gx#stx-pair? _tl1095211108_)
                                               (let ((_e1095311111_
                                                      (gx#syntax-e
                                                       _tl1095211108_)))
                                                 (let ((_hd1095411114_
                                                        (##car _e1095311111_))
                                                       (_tl1095511116_
                                                        (##cdr _e1095311111_)))
                                                   (let ((_phi11119_
                                                          _hd1095411114_))
                                                     (if (gx#stx-pair?
                                                          _tl1095511116_)
                                                         (let ((_e1095611121_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1095511116_)))
                   (let ((_hd1095711124_ (##car _e1095611121_))
                         (_tl1095811126_ (##cdr _e1095611121_)))
                     (let ((_id11129_ _hd1095711124_))
                       (if (gx#stx-pair? _tl1095811126_)
                           (let ((_e1095911131_ (gx#syntax-e _tl1095811126_)))
                             (let ((_hd1096011134_ (##car _e1095911131_))
                                   (_tl1096111136_ (##cdr _e1095911131_)))
                               (let ((_name11139_ _hd1096011134_))
                                 (if (gx#stx-null? _tl1096111136_)
                                     (if (if (gx#stx-fixnum? _phi11119_)
                                             (if (gx#identifier? _id11129_)
                                                 (gx#identifier? _name11139_)
                                                 '#f)
                                             '#f)
                                         (let* ((_phi11141_
                                                 (gx#stx-e _phi11119_))
                                                (_$e11143_
                                                 (gx#core-resolve-identifier__1
                                                  _id11129_
                                                  _phi11141_)))
                                           (if _$e11143_
                                               ((lambda (_bind11146_)
                                                  (_K10942_
                                                   _rest10943_
                                                   (cons (_make-export__opt-lambda11226__1408214083_
                                                          _bind11146_
                                                          _phi11141_
                                                          (gx#current-expander-context)
                                                          _name11139_)
                                                         _r10944_)))
                                                _$e11143_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Reference to unbound identifier"
                                                _stx10791_
                                                _hd10941_
                                                _id11129_)))
                                         (_E1094911099_))
                                     (_E1094911099_)))))
                           (_E1094911099_)))))
                 (_E1094911099_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E1094911099_))
                                           (_E1094911099_))))
                                   (_E1094911099_))))
                            (_E1094711159_
                             (lambda ()
                               (let ((_id11152_ _e1094510977_))
                                 (if (gx#identifier? _id11152_)
                                     (let ((_$e11154_
                                            (gx#core-resolve-identifier__1
                                             _id11152_
                                             (gx#current-export-expander-phi))))
                                       (if _$e11154_
                                           ((lambda (_bind11157_)
                                              (_K10942_
                                               _rest10943_
                                               (cons (_make-export__0__1408414087_
                                                      _bind11157_)
                                                     _r10944_)))
                                            _$e11154_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Reference to unbound identifier"
                                            _stx10791_
                                            _hd10941_)))
                                     (_E1094811148_)))))
                            (_E1094611223_
                             (lambda ()
                               (if (eq? (gx#stx-e _e1094510977_) '#t)
                                   (if '#t
                                       (let* ((_current-ctx11163_
                                               (gx#current-expander-context))
                                              (_current-phi11165_
                                               (gx#current-export-expander-phi))
                                              (_phi-ctx11167_
                                               (gx#core-context-shift
                                                _current-ctx11163_
                                                _current-phi11165_))
                                              (_phi-bind11169_
                                               (table->list
                                                (##structure-ref
                                                 _phi-ctx11167_
                                                 '2
                                                 gx#expander-context::t
                                                 '#f))))
                                         (let _lp11172_ ((_bind-rest11174_
                                                          _phi-bind11169_)
                                                         (_set11175_ '()))
                                           (let* ((_bind-rest1117611186_
                                                   _bind-rest11174_)
                                                  (_E1117911190_
                                                   (lambda ()
                                                     (error '"No clause matching"
                                                            _bind-rest1117611186_)))
                                                  (_else1117811194_
                                                   (lambda ()
                                                     (_K10942_
                                                      _rest10943_
                                                      (cons (##structure
                                                             gx#export-set::t
                                                             '#f
                                                             _current-phi11165_
                                                             _set11175_)
                                                            _r10944_))))
                                                  (_K1118011204_
                                                   (lambda (_bind-rest11197_
                                                            _bind11198_
                                                            _key11199_)
                                                     (if (let ((_$e11201_
                                                                (##structure-direct-instance-of?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _bind11198_
                         'gx#import-binding::t)))
                   (if _$e11201_
                       _$e11201_
                       (gx#private-feature-binding? _bind11198_)))
                 (_lp11172_ _bind-rest11197_ _set11175_)
                 (_lp11172_
                  _bind-rest11197_
                  (cons (_make-export__2__1408614089_
                         _bind11198_
                         _current-phi11165_
                         _current-ctx11163_)
                        _set11175_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (##pair? _bind-rest1117611186_)
                                                 (let ((_hd1118111207_
                                                        (##car _bind-rest1117611186_))
                                                       (_tl1118211209_
                                                        (##cdr _bind-rest1117611186_)))
                                                   (if (##pair? _hd1118111207_)
                                                       (let ((_hd1118311212_
                                                              (##car _hd1118111207_))
                                                             (_tl1118411214_
                                                              (##cdr _hd1118111207_)))
                                                         (let* ((_key11217_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1118311212_)
                        (_bind11219_ _tl1118411214_)
                        (_bind-rest11221_ _tl1118211209_))
                   (_K1118011204_ _bind-rest11221_ _bind11219_ _key11217_)))
               (_else1117811194_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_else1117811194_)))))
                                       (_E1094711159_))
                                   (_E1094711159_)))))
                       (_E1094611223_))))
                  (_export-imports10796_
                   (lambda (_src10817_ _r10818_)
                     (letrec* ((_current-ctx10820_
                                (gx#current-expander-context))
                               (_current-phi10821_
                                (gx#current-export-expander-phi))
                               (_import->export10822_
                                (lambda (_in10903_)
                                  (let* ((_in1090410912_ _in10903_)
                                         (_E1090610916_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _in1090410912_)))
                                         (_K1090710923_
                                          (lambda (_phi10919_
                                                   _key10920_
                                                   _out10921_)
                                            (##structure
                                             gx#module-export::t
                                             _current-ctx10820_
                                             _key10920_
                                             _phi10919_
                                             _key10920_
                                             '#t))))
                                    (if (##structure-direct-instance-of?
                                         _in1090410912_
                                         (##type-id gx#module-import::t))
                                        (let* ((_e1090810926_
                                                (##vector-ref
                                                 _in1090410912_
                                                 '1))
                                               (_out10929_ _e1090810926_)
                                               (_e1090910931_
                                                (##vector-ref
                                                 _in1090410912_
                                                 '2))
                                               (_key10934_ _e1090910931_)
                                               (_e1091010936_
                                                (##vector-ref
                                                 _in1090410912_
                                                 '3))
                                               (_phi10939_ _e1091010936_))
                                          (_K1090710923_
                                           _phi10939_
                                           _key10934_
                                           _out10929_))
                                        (_E1090610916_)))))
                               (_fold-e10823_
                                (lambda (_in10825_ _r10826_)
                                  (let* ((_in1082710841_ _in10825_)
                                         (_E1083110845_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _in1082710841_)))
                                         (_else1083010849_
                                          (lambda () _r10826_))
                                         (_try-match1082910878_
                                          (lambda ()
                                            (let ((_K1083210860_
                                                   (lambda (_imports10853_
                                                            _phi10854_
                                                            _ctx10855_)
                                                     (if (if (fx= _phi10854_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _current-phi10821_)
                     (eq? _src10817_ _ctx10855_)
                     '#f)
                 (foldl1 (lambda (_in10857_ _r10858_)
                           (cons (_import->export10822_ _in10857_) _r10858_))
                         _r10826_
                         _imports10853_)
                 _r10826_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (##structure-direct-instance-of?
                                                   _in1082710841_
                                                   (##type-id
                                                    gx#import-set::t))
                                                  (let* ((_e1083310863_
                                                          (##vector-ref
                                                           _in1082710841_
                                                           '1))
                                                         (_ctx10866_
                                                          _e1083310863_)
                                                         (_e1083410868_
                                                          (##vector-ref
                                                           _in1082710841_
                                                           '2))
                                                         (_phi10871_
                                                          _e1083410868_)
                                                         (_e1083510873_
                                                          (##vector-ref
                                                           _in1082710841_
                                                           '3))
                                                         (_imports10876_
                                                          _e1083510873_))
                                                    (_K1083210860_
                                                     _imports10876_
                                                     _phi10871_
                                                     _ctx10866_))
                                                  (_else1083010849_)))))
                                         (_K1083610885_
                                          (lambda (_phi10881_
                                                   _key10882_
                                                   _out10883_)
                                            (if (if (fx= _phi10881_
                                                         _current-phi10821_)
                                                    (eq? _src10817_
                                                         (##direct-structure-ref
                                                          _out10883_
                                                          '1
                                                          gx#module-export::t
                                                          '#f))
                                                    '#f)
                                                (cons (_import->export10822_
                                                       _in10825_)
                                                      _r10826_)
                                                _r10826_))))
                                    (if (##structure-direct-instance-of?
                                         _in1082710841_
                                         (##type-id gx#module-import::t))
                                        (let* ((_e1083710888_
                                                (##vector-ref
                                                 _in1082710841_
                                                 '1))
                                               (_out10891_ _e1083710888_)
                                               (_e1083810893_
                                                (##vector-ref
                                                 _in1082710841_
                                                 '2))
                                               (_key10896_ _e1083810893_)
                                               (_e1083910898_
                                                (##vector-ref
                                                 _in1082710841_
                                                 '3))
                                               (_phi10901_ _e1083910898_))
                                          (_K1083610885_
                                           _phi10901_
                                           _key10896_
                                           _out10891_))
                                        (_try-match1082910878_))))))
                       (cons (##structure
                              gx#export-set::t
                              _src10817_
                              _current-phi10821_
                              (foldl1 _fold-e10823_
                                      '()
                                      (##structure-ref
                                       _current-ctx10820_
                                       '8
                                       gx#module-context::t
                                       '#f)))
                             _r10818_))))
                  (_export!10797_
                   (lambda (_rbody10807_)
                     (letrec* ((_current-ctx10809_
                                (gx#current-expander-context))
                               (_fold-e10810_
                                (lambda (_out10814_ _r10815_)
                                  (if (##structure-direct-instance-of?
                                       _out10814_
                                       'gx#module-export::t)
                                      (cons _out10814_ _r10815_)
                                      (if (##structure-direct-instance-of?
                                           _out10814_
                                           'gx#export-set::t)
                                          (foldl1 cons
                                                  _r10815_
                                                  (##direct-structure-ref
                                                   _out10814_
                                                   '3
                                                   gx#export-set::t
                                                   '#f))
                                          _r10815_)))))
                       (let ((_body10812_ (reverse _rbody10807_)))
                         (begin
                           (##structure-set!
                            _current-ctx10809_
                            (foldl1 _fold-e10810_
                                    (##structure-ref
                                     _current-ctx10809_
                                     '9
                                     gx#module-context::t
                                     '#f)
                                    _body10812_)
                            '9
                            gx#module-context::t
                            '#f)
                           _body10812_)))))
                  (_expanded-export?10798_
                   (lambda (_e10802_)
                     (let ((_$e10804_
                            (##structure-direct-instance-of?
                             _e10802_
                             'gx#module-export::t)))
                       (if _$e10804_
                           _$e10804_
                           (##structure-direct-instance-of?
                            _e10802_
                            'gx#export-set::t))))))
          (let ((_rbody10800_
                 (gx#core-expand-import/export
                  _stx10791_
                  _expanded-export?10798_
                  'apply-export-expander
                  gx#current-export-expander-phi
                  _expand110795_)))
            (if _internal-expand?10792_
                (reverse _rbody10800_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#export (_export!10797_ _rbody10800_))
                 (gx#stx-source _stx10791_)))))))
    (begin
      (define gx#core-expand-export%__0
        (lambda (_stx11273_)
          (let ((_internal-expand?11275_ '#f))
            (gx#core-expand-export%__opt-lambda10789
             _stx11273_
             _internal-expand?11275_))))
      (define gx#core-expand-export%
        (lambda _g14124_
          (let ((_g14123_ (length _g14124_)))
            (cond ((fx= _g14123_ 1) (apply gx#core-expand-export%__0 _g14124_))
                  ((fx= _g14123_ 2)
                   (apply gx#core-expand-export%__opt-lambda10789 _g14124_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-expand-export%
                    _g14124_))))))))
  (define gx#core-expand-export-source
    (lambda (_hd10788_)
      (gx#core-expand-export%__opt-lambda10789
       (cons 'export-macro% (cons _hd10788_ '()))
       '#t)))
  (define gx#core-expand-provide%
    (lambda (_stx10758_)
      (let* ((_e1075910766_ _stx10758_)
             (_E1076110770_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1075910766_)))
             (_E1076010784_
              (lambda ()
                (if (gx#stx-pair? _e1075910766_)
                    (let ((_e1076210774_ (gx#syntax-e _e1075910766_)))
                      (let ((_hd1076310777_ (##car _e1076210774_))
                            (_tl1076410779_ (##cdr _e1076210774_)))
                        (let ((_body10782_ _tl1076410779_))
                          (if (gx#identifier-list? _body10782_)
                              (begin
                                (gx#stx-for-each1
                                 gx#core-bind-feature!
                                 _body10782_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#provide
                                  (gx#stx-map1
                                   gx#core-quote-syntax
                                   _body10782_))
                                 (gx#stx-source _stx10758_)))
                              (_E1076110770_)))))
                    (_E1076110770_)))))
        (_E1076010784_))))
  (begin
    (define gx#core-bind-feature!__opt-lambda10722
      (lambda (_id10724_ _private?10725_ _phi10726_ _ctx10727_)
        (gx#core-bind-syntax!__opt-lambda7818
         _id10724_
         ((if _private?10725_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _id10724_))
         _private?10725_
         _phi10726_
         _ctx10727_)))
    (begin
      (define gx#core-bind-feature!__0
        (lambda (_id10732_)
          (let* ((_private?10734_ '#f)
                 (_phi10736_ (gx#current-expander-phi))
                 (_ctx10738_ (gx#current-expander-context)))
            (gx#core-bind-feature!__opt-lambda10722
             _id10732_
             _private?10734_
             _phi10736_
             _ctx10738_))))
      (define gx#core-bind-feature!__1
        (lambda (_id10740_ _private?10741_)
          (let* ((_phi10743_ (gx#current-expander-phi))
                 (_ctx10745_ (gx#current-expander-context)))
            (gx#core-bind-feature!__opt-lambda10722
             _id10740_
             _private?10741_
             _phi10743_
             _ctx10745_))))
      (define gx#core-bind-feature!__2
        (lambda (_id10747_ _private?10748_ _phi10749_)
          (let ((_ctx10751_ (gx#current-expander-context)))
            (gx#core-bind-feature!__opt-lambda10722
             _id10747_
             _private?10748_
             _phi10749_
             _ctx10751_))))
      (define gx#core-bind-feature!
        (lambda _g14126_
          (let ((_g14125_ (length _g14126_)))
            (cond ((fx= _g14125_ 1) (apply gx#core-bind-feature!__0 _g14126_))
                  ((fx= _g14125_ 2) (apply gx#core-bind-feature!__1 _g14126_))
                  ((fx= _g14125_ 3) (apply gx#core-bind-feature!__2 _g14126_))
                  ((fx= _g14125_ 4)
                   (apply gx#core-bind-feature!__opt-lambda10722 _g14126_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-feature!
                    _g14126_)))))))))
