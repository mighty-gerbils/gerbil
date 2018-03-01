(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gx#module-import::t
    (make-struct-type
     'gx#module-import::t
     '#f
     '4
     'module-import
     '((final: . #t))
     '#f
     '(source name phi weak?)))
  (define gx#module-import? (make-struct-predicate gx#module-import::t))
  (define gx#make-module-import
    (lambda _$args14213_
      (apply make-struct-instance gx#module-import::t _$args14213_)))
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
     '#f
     '(context key phi name weak?)))
  (define gx#module-export? (make-struct-predicate gx#module-export::t))
  (define gx#make-module-export
    (lambda _$args14210_
      (apply make-struct-instance gx#module-export::t _$args14210_)))
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
     '#f
     '(source phi imports)))
  (define gx#import-set? (make-struct-predicate gx#import-set::t))
  (define gx#make-import-set
    (lambda _$args14207_
      (apply make-struct-instance gx#import-set::t _$args14207_)))
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
     '#f
     '(source phi exports)))
  (define gx#export-set? (make-struct-predicate gx#export-set::t))
  (define gx#make-export-set
    (lambda _$args14204_
      (apply make-struct-instance gx#export-set::t _$args14204_)))
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
    (make-class-type
     'gx#import-expander::t
     (cons gx#user-expander::t '())
     '()
     'import-expander
     '()
     ':init!))
  (define gx#import-expander? (make-class-predicate gx#import-expander::t))
  (define gx#make-import-expander
    (lambda _$args14201_
      (apply make-class-instance gx#import-expander::t _$args14201_)))
  (define gx#export-expander::t
    (make-class-type
     'gx#export-expander::t
     (cons gx#user-expander::t '())
     '()
     'export-expander
     '()
     ':init!))
  (define gx#export-expander? (make-class-predicate gx#export-expander::t))
  (define gx#make-export-expander
    (lambda _$args14198_
      (apply make-class-instance gx#export-expander::t _$args14198_)))
  (define gx#import-export-expander::t
    (make-class-type
     'gx#import-export-expander::t
     (cons gx#import-expander::t (cons gx#export-expander::t '()))
     '()
     'import-export-expander
     '()
     ':init!))
  (define gx#import-export-expander?
    (make-class-predicate gx#import-export-expander::t))
  (define gx#make-import-export-expander
    (lambda _$args14195_
      (apply make-class-instance gx#import-export-expander::t _$args14195_)))
  (define gx#current-import-expander-phi (make-parameter '#f))
  (define gx#current-export-expander-phi (make-parameter '#f))
  (define gx#current-module-reader-path (make-parameter '#f))
  (define gx#current-module-reader-args (make-parameter '#f))
  (define gx#module-context:::init!
    (lambda (_self14189_ _id14190_ _super14191_ _ns14192_ _path14193_)
      (if (##fx< '11 (##vector-length _self14189_))
          (begin
            (##vector-set! _self14189_ '1 _id14190_)
            (##vector-set! _self14189_ '2 (make-hash-table-eq))
            (##vector-set! _self14189_ '3 _super14191_)
            (##vector-set! _self14189_ '4 '#f)
            (##vector-set! _self14189_ '5 '#f)
            (##vector-set! _self14189_ '6 _ns14192_)
            (##vector-set! _self14189_ '7 _path14193_)
            (##vector-set! _self14189_ '8 '())
            (##vector-set! _self14189_ '9 '())
            (##vector-set! _self14189_ '10 '#f)
            (##vector-set! _self14189_ '11 '#f))
          (error '"struct-instance-init!: too many arguments for struct"
                 _self14189_))))
  (bind-method! gx#module-context::t ':init! gx#module-context:::init! '#f)
  (begin
    (define gx#prelude-context:::init!__opt-lambda14031
      (lambda (_self14033_ _ctx14034_ _root14035_)
        (let ((_super14043_
               (let ((_$e14037_ _root14035_))
                 (if _$e14037_
                     _$e14037_
                     (let ((_$e14040_ (gx#core-context-root__0)))
                       (if _$e14040_
                           _$e14040_
                           (make-struct-instance gx#root-context::t)))))))
          (if _ctx14034_
              (let ((_id14046_
                     (##structure-ref
                      _ctx14034_
                      '1
                      gx#expander-context::t
                      '#f))
                    (_path14047_
                     (##structure-ref _ctx14034_ '7 gx#module-context::t '#f))
                    (_in14048_
                     (map gx#core-module-export->import
                          (##structure-ref
                           _ctx14034_
                           '9
                           gx#module-context::t
                           '#f)))
                    (_e14049_
                     (make-promise (lambda () (gx#eval-module _ctx14034_)))))
                (begin
                  (if (##fx< '8 (##vector-length _self14033_))
                      (begin
                        (##vector-set! _self14033_ '1 _id14046_)
                        (##vector-set! _self14033_ '2 (make-hash-table-eq))
                        (##vector-set! _self14033_ '3 _super14043_)
                        (##vector-set! _self14033_ '4 '#f)
                        (##vector-set! _self14033_ '5 '#f)
                        (##vector-set! _self14033_ '6 _path14047_)
                        (##vector-set! _self14033_ '7 _in14048_)
                        (##vector-set! _self14033_ '8 _e14049_))
                      (error '"struct-instance-init!: too many arguments for struct"
                             _self14033_))
                  (for-each
                   (lambda (_g1405014052_)
                     (gx#core-bind-weak-import!__opt-lambda12464
                      _g1405014052_
                      _self14033_))
                   _in14048_)))
              (if (##fx< '8 (##vector-length _self14033_))
                  (begin
                    (##vector-set! _self14033_ '1 '#f)
                    (##vector-set! _self14033_ '2 (make-hash-table-eq))
                    (##vector-set! _self14033_ '3 _super14043_)
                    (##vector-set! _self14033_ '4 '#f)
                    (##vector-set! _self14033_ '5 '#f)
                    (##vector-set! _self14033_ '6 '#f)
                    (##vector-set! _self14033_ '7 '())
                    (##vector-set! _self14033_ '8 '#f))
                  (error '"struct-instance-init!: too many arguments for struct"
                         _self14033_))))))
    (begin
      (define gx#prelude-context:::init!__0
        (lambda (_self14058_ _ctx14059_)
          (let ((_root14061_ '#f))
            (gx#prelude-context:::init!__opt-lambda14031
             _self14058_
             _ctx14059_
             _root14061_))))
      (define gx#prelude-context:::init!
        (lambda _g14229_
          (let ((_g14228_ (length _g14229_)))
            (cond ((fx= _g14228_ 2)
                   (apply gx#prelude-context:::init!__0 _g14229_))
                  ((fx= _g14228_ 3)
                   (apply gx#prelude-context:::init!__opt-lambda14031
                          _g14229_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#prelude-context:::init!
                    _g14229_))))))))
  (bind-method! gx#prelude-context::t ':init! gx#prelude-context:::init! '#f)
  (define gx#import-export-expander-init!
    (lambda (_self13907_ _e13908_)
      (if (##fx< '3 (##vector-length _self13907_))
          (begin
            (##vector-set! _self13907_ '1 _e13908_)
            (##vector-set! _self13907_ '2 (gx#current-expander-context))
            (##vector-set! _self13907_ '3 (fx- (gx#current-expander-phi) '1)))
          (error '"struct-instance-init!: too many arguments for struct"
                 _self13907_))))
  (define gx#import-expander:::init! gx#import-export-expander-init!)
  (bind-method! gx#import-expander::t ':init! gx#import-expander:::init! '#f)
  (define gx#export-expander:::init! gx#import-export-expander-init!)
  (bind-method! gx#export-expander::t ':init! gx#export-expander:::init! '#f)
  (define gx#import-export-expander:::init! gx#import-export-expander-init!)
  (bind-method!
   gx#import-export-expander::t
   ':init!
   gx#import-export-expander:::init!
   '#f)
  (define gx#import-expander::apply-import-expander
    (lambda (_g1353313536_ _g1353413538_)
      (gx#core-apply-user-expander__opt-lambda5413
       _g1353313536_
       _g1353413538_
       'apply-import-expander)))
  (bind-method!
   gx#import-expander::t
   'apply-import-expander
   gx#import-expander::apply-import-expander
   '#f)
  (define gx#export-expander::apply-export-expander
    (lambda (_g1340413407_ _g1340513409_)
      (gx#core-apply-user-expander__opt-lambda5413
       _g1340413407_
       _g1340513409_
       'apply-export-expander)))
  (bind-method!
   gx#export-expander::t
   'apply-export-expander
   gx#export-expander::apply-export-expander
   '#f)
  (define gx#module-source-path
    (lambda (_ctx13275_)
      (let* ((_path13277_
              (##structure-ref _ctx13275_ '7 gx#module-context::t '#f))
             (_path13279_
              (if (pair? _path13277_) (last _path13277_) _path13277_)))
        (if (string? _path13279_) _path13279_ '#f))))
  (begin
    (define gx#import-module__opt-lambda13249
      (lambda (_path13251_ _reload?13252_ _eval?13253_)
        (let ((_ctx13255_
               ((gx#current-expander-module-import)
                _path13251_
                _reload?13252_)))
          (begin
            (if (if _ctx13255_ _eval?13253_ '#f)
                (gx#eval-module _ctx13255_)
                '#!void)
            _ctx13255_))))
    (begin
      (define gx#import-module__0
        (lambda (_path13260_)
          (let* ((_reload?13262_ '#f) (_eval?13264_ '#f))
            (gx#import-module__opt-lambda13249
             _path13260_
             _reload?13262_
             _eval?13264_))))
      (define gx#import-module__1
        (lambda (_path13266_ _reload?13267_)
          (let ((_eval?13269_ '#f))
            (gx#import-module__opt-lambda13249
             _path13266_
             _reload?13267_
             _eval?13269_))))
      (define gx#import-module
        (lambda _g14231_
          (let ((_g14230_ (length _g14231_)))
            (cond ((fx= _g14230_ 1) (apply gx#import-module__0 _g14231_))
                  ((fx= _g14230_ 2) (apply gx#import-module__1 _g14231_))
                  ((fx= _g14230_ 3)
                   (apply gx#import-module__opt-lambda13249 _g14231_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#import-module
                    _g14231_))))))))
  (define gx#eval-module
    (lambda (_mod13248_) ((gx#current-expander-module-eval) _mod13248_)))
  (define gx#core-eval-module
    (lambda (_obj13233_)
      (letrec ((_force-e13235_
                (lambda (_getf13244_ _e13245_)
                  (call-with-parameters
                   (lambda () (force (_getf13244_ _e13245_)))
                   gx#current-expander-context
                   _e13245_
                   gx#current-expander-phi
                   '0))))
        (let _recur13237_ ((_e13239_ _obj13233_))
          (if (##structure-instance-of? _e13239_ 'gx#module-context::t)
              (begin
                (let ((_$e13241_
                       (gx#core-context-prelude__opt-lambda13214 _e13239_)))
                  (if _$e13241_ (_recur13237_ _$e13241_) '#!void))
                (_force-e13235_ gx#module-context-e _e13239_))
              (if (##structure-instance-of? _e13239_ 'gx#prelude-context::t)
                  (_force-e13235_ gx#prelude-context-e _e13239_)
                  (if (gx#stx-string? _e13239_)
                      (_recur13237_
                       (gx#import-module__0
                        (gx#core-resolve-module-path__0 _e13239_)))
                      (if (gx#core-library-module-path? _e13239_)
                          (_recur13237_
                           (gx#import-module__0
                            (gx#core-resolve-library-module-path _e13239_)))
                          (error '"Cannot eval module" _obj13233_)))))))))
  (begin
    (define gx#core-context-prelude__opt-lambda13214
      (lambda (_ctx13216_)
        (let _lp13218_ ((_e13220_ _ctx13216_))
          (if (let ((_$e13222_
                     (##structure-instance-of?
                      _e13220_
                      'gx#module-context::t)))
                (if _$e13222_
                    _$e13222_
                    (##structure-instance-of? _e13220_ 'gx#local-context::t)))
              (_lp13218_ (##structure-ref _e13220_ '3 gx#phi-context::t '#f))
              (if (##structure-instance-of? _e13220_ 'gx#prelude-context::t)
                  _e13220_
                  '#f)))))
    (begin
      (define gx#core-context-prelude__0
        (lambda ()
          (let ((_ctx13229_ (gx#current-expander-context)))
            (gx#core-context-prelude__opt-lambda13214 _ctx13229_))))
      (define gx#core-context-prelude
        (lambda _g14233_
          (let ((_g14232_ (length _g14233_)))
            (cond ((fx= _g14232_ 0)
                   (apply gx#core-context-prelude__0 _g14233_))
                  ((fx= _g14232_ 1)
                   (apply gx#core-context-prelude__opt-lambda13214 _g14233_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-context-prelude
                    _g14233_))))))))
  (define gx#core-module->prelude-context
    (lambda (_ctx13206_)
      (let* ((_ht13208_ (gx#current-expander-module-registry))
             (_$e13210_ (table-ref _ht13208_ _ctx13206_ '#f)))
        (if _$e13210_
            (values _$e13210_)
            (let ((_pre13213_
                   (let ((__obj14224 (make-object gx#prelude-context::t '8)))
                     (begin
                       (gx#prelude-context:::init!__0 __obj14224 _ctx13206_)
                       __obj14224))))
              (begin
                (table-set! _ht13208_ _ctx13206_ _pre13213_)
                _pre13213_))))))
  (begin
    (define gx#core-import-module__opt-lambda13085
      (lambda (_rpath13087_ _reload?13088_)
        (letrec ((_import-source13090_
                  (lambda (_path13175_)
                    (begin
                      (if (member _path13175_ (gx#current-expander-path))
                          (error '"Cyclic expansion" _path13175_)
                          '#!void)
                      (call-with-parameters
                       (lambda ()
                         (let ((_g14234_ (gx#core-read-module _path13175_)))
                           (begin
                             (let ((_g14235_ (values-count _g14234_)))
                               (if (not (fx= _g14235_ 4))
                                   (error "Context expects 4 values"
                                          _g14235_)))
                             (let ((_pre13178_ (values-ref _g14234_ 0))
                                   (_id13179_ (values-ref _g14234_ 1))
                                   (_ns13180_ (values-ref _g14234_ 2))
                                   (_body13181_ (values-ref _g14234_ 3)))
                               (let* ((_prelude13186_
                                       (if (##structure-instance-of?
                                            _pre13178_
                                            'gx#prelude-context::t)
                                           _pre13178_
                                           (if (##structure-instance-of?
                                                _pre13178_
                                                'gx#module-context::t)
                                               (gx#core-module->prelude-context
                                                _pre13178_)
                                               (if (string? _pre13178_)
                                                   (gx#core-module->prelude-context
                                                    (gx#core-import-module__0
                                                     _pre13178_))
                                                   (if (not _pre13178_)
                                                       (let ((_$e13183_
                                                              (gx#current-expander-module-prelude)))
                                                         (if _$e13183_
                                                             _$e13183_
                                                             (let ((__obj14225
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (make-object gx#prelude-context::t '8)))
                       (begin
                         (gx#prelude-context:::init!__0 __obj14225 '#f)
                         __obj14225))))
               (error '"Cannot import module; unknown prelude"
                      _rpath13087_
                      _pre13178_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_ctx13188_
                                       (let ((__obj14226
                                              (make-object
                                               gx#module-context::t
                                               '11)))
                                         (begin
                                           (gx#module-context:::init!
                                            __obj14226
                                            _id13179_
                                            _prelude13186_
                                            _ns13180_
                                            _path13175_)
                                           __obj14226)))
                                      (_body13190_
                                       (gx#core-expand-module-begin
                                        _body13181_
                                        _ctx13188_))
                                      (_body13192_
                                       (gx#core-quote-syntax__opt-lambda4643
                                        (gx#core-cons '%#begin _body13190_)
                                        _path13175_
                                        _ctx13188_
                                        '())))
                                 (begin
                                   (##structure-set!
                                    _ctx13188_
                                    (make-promise
                                     (lambda () (gx#eval-syntax* _body13192_)))
                                    '10
                                    gx#module-context::t
                                    '#f)
                                   (##structure-set!
                                    _ctx13188_
                                    _body13192_
                                    '11
                                    gx#module-context::t
                                    '#f)
                                   (table-set!
                                    (gx#current-expander-module-registry)
                                    _path13175_
                                    _ctx13188_)
                                   (table-set!
                                    (gx#current-expander-module-registry)
                                    _id13179_
                                    _ctx13188_)
                                   _ctx13188_))))))
                       gx#current-expander-context
                       (gx#core-context-root__0)
                       gx#current-expander-marks
                       '()
                       gx#current-expander-phi
                       '0
                       gx#current-expander-path
                       (cons _path13175_ (gx#current-expander-path))
                       gx#current-import-expander-phi
                       '#f
                       gx#current-export-expander-phi
                       '#f))))
                 (_import-submodule13091_
                  (lambda (_rpath13103_)
                    (let* ((_rpath1310413111_ _rpath13103_)
                           (_E1310613115_
                            (lambda ()
                              (error '"No clause matching" _rpath1310413111_)))
                           (_K1310713163_
                            (lambda (_refs13118_ _origin13119_)
                              (let ((_ctx13121_
                                     (if _origin13119_
                                         (gx#core-import-module__opt-lambda13085
                                          _origin13119_
                                          _reload?13088_)
                                         (gx#current-expander-context))))
                                (let _lp13123_ ((_rest13125_ _refs13118_)
                                                (_ctx13126_ _ctx13121_))
                                  (let* ((_rest1312713135_ _rest13125_)
                                         (_E1313013139_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _rest1312713135_)))
                                         (_else1312913143_
                                          (lambda () _ctx13126_))
                                         (_K1313113151_
                                          (lambda (_rest13146_ _id13147_)
                                            (let ((_bind13149_
                                                   (gx#resolve-identifier__opt-lambda5254
                                                    _id13147_
                                                    '0
                                                    _ctx13126_)))
                                              (if (if (##structure-direct-instance-of?
                                                       _bind13149_
                                                       'gx#syntax-binding::t)
                                                      (##structure-instance-of?
                                                       (##direct-structure-ref
                                                        _bind13149_
                                                        '4
                                                        gx#syntax-binding::t
                                                        '#f)
                                                       'gx#module-context::t)
                                                      '#f)
                                                  (_lp13123_
                                                   _rest13146_
                                                   (##direct-structure-ref
                                                    _bind13149_
                                                    '4
                                                    gx#syntax-binding::t
                                                    '#f))
                                                  (error '"Cannot import submodule; not bound as a module"
                                                         _rpath13103_
                                                         _id13147_
                                                         _bind13149_))))))
                                    (if (##pair? _rest1312713135_)
                                        (let ((_hd1313213154_
                                               (##car _rest1312713135_))
                                              (_tl1313313156_
                                               (##cdr _rest1312713135_)))
                                          (let* ((_id13159_ _hd1313213154_)
                                                 (_rest13161_ _tl1313313156_))
                                            (_K1313113151_
                                             _rest13161_
                                             _id13159_)))
                                        (_else1312913143_))))))))
                      (if (##pair? _rpath1310413111_)
                          (let ((_hd1310813166_ (##car _rpath1310413111_))
                                (_tl1310913168_ (##cdr _rpath1310413111_)))
                            (let* ((_origin13171_ _hd1310813166_)
                                   (_refs13173_ _tl1310913168_))
                              (_K1310713163_ _refs13173_ _origin13171_)))
                          (_E1310613115_))))))
          (let ((_$e13093_
                 (if (not _reload?13088_)
                     (table-ref
                      (gx#current-expander-module-registry)
                      _rpath13087_
                      '#f)
                     '#f)))
            (if _$e13093_
                (values _$e13093_)
                (if (list? _rpath13087_)
                    (_import-submodule13091_ _rpath13087_)
                    (if (gx#core-library-module-path? _rpath13087_)
                        (let ((_ctx13096_
                               (gx#core-import-module__opt-lambda13085
                                (gx#core-resolve-library-module-path
                                 _rpath13087_)
                                _reload?13088_)))
                          (begin
                            (table-set!
                             (gx#current-expander-module-registry)
                             _rpath13087_
                             _ctx13096_)
                            _ctx13096_))
                        (let* ((_npath13098_ (path-normalize _rpath13087_))
                               (_$e13100_
                                (if (not _reload?13088_)
                                    (table-ref
                                     (gx#current-expander-module-registry)
                                     _npath13098_
                                     '#f)
                                    '#f)))
                          (if _$e13100_
                              (values _$e13100_)
                              (_import-source13090_ _npath13098_))))))))))
    (begin
      (define gx#core-import-module__0
        (lambda (_rpath13199_)
          (let ((_reload?13201_ '#f))
            (gx#core-import-module__opt-lambda13085
             _rpath13199_
             _reload?13201_))))
      (define gx#core-import-module
        (lambda _g14237_
          (let ((_g14236_ (length _g14237_)))
            (cond ((fx= _g14236_ 1) (apply gx#core-import-module__0 _g14237_))
                  ((fx= _g14236_ 2)
                   (apply gx#core-import-module__opt-lambda13085 _g14237_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-import-module
                    _g14237_))))))))
  (define gx#core-read-module
    (lambda (_path13081_)
      (with-exception-catcher
       (lambda (_exn13083_)
         (if (if (datum-parsing-exception? _exn13083_)
                 (eq? (datum-parsing-exception-filepos _exn13083_) '0)
                 '#f)
             (gx#core-read-module/lang _path13081_)
             (raise _exn13083_)))
       (lambda () (gx#core-read-module/sexp _path13081_)))))
  (define gx#core-read-module/sexp
    (lambda (_path12941_)
      (let _lp12943_ ((_body12945_ (read-syntax-from-file _path12941_))
                      (_pre12946_ '#f)
                      (_ns12947_ '#f)
                      (_pkg12948_ '#f))
        (let* ((_e1294912973_ _body12945_)
               (_E1296512995_
                (lambda ()
                  (let ((_g14238_
                         (if _pkg12948_
                             (values _pre12946_ _ns12947_ _pkg12948_)
                             (gx#core-read-module-package
                              _path12941_
                              _pre12946_
                              _ns12947_))))
                    (begin
                      (let ((_g14239_ (values-count _g14238_)))
                        (if (not (fx= _g14239_ 3))
                            (error "Context expects 3 values" _g14239_)))
                      (let ((_pre12977_ (values-ref _g14238_ 0))
                            (_ns12978_ (values-ref _g14238_ 1))
                            (_pkg12979_ (values-ref _g14238_ 2)))
                        (let* ((_prelude12981_
                                (if (gx#core-bound-module-prelude? _pre12977_)
                                    (gx#syntax-local-e__0 _pre12977_)
                                    (if (gx#core-library-module-path?
                                         _pre12977_)
                                        (gx#core-resolve-library-module-path
                                         _pre12977_)
                                        (if (gx#stx-string? _pre12977_)
                                            (gx#core-resolve-module-path__opt-lambda12695
                                             _pre12977_
                                             _path12941_)
                                            (gx#stx-e _pre12977_)))))
                               (_path-id12983_
                                (gx#core-module-path->namespace _path12941_))
                               (_pkg-id12985_
                                (if _pkg12979_
                                    (string-append
                                     _pkg12979_
                                     '"/"
                                     _path-id12983_)
                                    _path-id12983_))
                               (_module-id12987_
                                (string->symbol _pkg-id12985_))
                               (_module-ns12992_
                                (let ((_$e12989_ _ns12978_))
                                  (if _$e12989_ _$e12989_ _pkg-id12985_))))
                          (values _prelude12981_
                                  _module-id12987_
                                  _module-ns12992_
                                  _body12945_)))))))
               (_E1295813024_
                (lambda ()
                  (if (gx#stx-pair? _e1294912973_)
                      (let ((_e1296612999_ (gx#syntax-e _e1294912973_)))
                        (let ((_hd1296713002_ (##car _e1296612999_))
                              (_tl1296813004_ (##cdr _e1296612999_)))
                          (if (eq? (gx#stx-e _hd1296713002_) 'package:)
                              (if (gx#stx-pair? _tl1296813004_)
                                  (let ((_e1296913007_
                                         (gx#syntax-e _tl1296813004_)))
                                    (let ((_hd1297013010_
                                           (##car _e1296913007_))
                                          (_tl1297113012_
                                           (##cdr _e1296913007_)))
                                      (let* ((_pkg13015_ _hd1297013010_)
                                             (_rest13017_ _tl1297113012_))
                                        (if '#t
                                            (let ((_pkg13022_
                                                   (if (gx#identifier?
                                                        _pkg13015_)
                                                       (symbol->string
                                                        (gx#stx-e _pkg13015_))
                                                       (if (let ((_$e13019_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-string? _pkg13015_)))
                     (if _$e13019_ _$e13019_ (gx#stx-false? _pkg13015_)))
                   (gx#stx-e _pkg13015_)
                   (gx#raise-syntax-error
                    'import
                    '"Bad syntax; Illegal package name"
                    _pkg13015_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_lp12943_
                                               _rest13017_
                                               _pre12946_
                                               _ns12947_
                                               _pkg13022_))
                                            (_E1296512995_)))))
                                  (_E1296512995_))
                              (_E1296512995_))))
                      (_E1296512995_))))
               (_E1295113053_
                (lambda ()
                  (if (gx#stx-pair? _e1294912973_)
                      (let ((_e1295913028_ (gx#syntax-e _e1294912973_)))
                        (let ((_hd1296013031_ (##car _e1295913028_))
                              (_tl1296113033_ (##cdr _e1295913028_)))
                          (if (eq? (gx#stx-e _hd1296013031_) 'namespace:)
                              (if (gx#stx-pair? _tl1296113033_)
                                  (let ((_e1296213036_
                                         (gx#syntax-e _tl1296113033_)))
                                    (let ((_hd1296313039_
                                           (##car _e1296213036_))
                                          (_tl1296413041_
                                           (##cdr _e1296213036_)))
                                      (let* ((_ns13044_ _hd1296313039_)
                                             (_rest13046_ _tl1296413041_))
                                        (if '#t
                                            (let ((_ns13051_
                                                   (if (gx#identifier?
                                                        _ns13044_)
                                                       (symbol->string
                                                        (gx#stx-e _ns13044_))
                                                       (if (let ((_$e13048_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-string? _ns13044_)))
                     (if _$e13048_ _$e13048_ (gx#stx-false? _ns13044_)))
                   (gx#stx-e _ns13044_)
                   (gx#raise-syntax-error
                    'import
                    '"Bad syntax; illegal namespace"
                    _ns13044_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_lp12943_
                                               _rest13046_
                                               _pre12946_
                                               _ns13051_
                                               _pkg12948_))
                                            (_E1295813024_)))))
                                  (_E1295813024_))
                              (_E1295813024_))))
                      (_E1295813024_))))
               (_E1295013077_
                (lambda ()
                  (if (gx#stx-pair? _e1294912973_)
                      (let ((_e1295213057_ (gx#syntax-e _e1294912973_)))
                        (let ((_hd1295313060_ (##car _e1295213057_))
                              (_tl1295413062_ (##cdr _e1295213057_)))
                          (if (eq? (gx#stx-e _hd1295313060_) 'prelude:)
                              (if (gx#stx-pair? _tl1295413062_)
                                  (let ((_e1295513065_
                                         (gx#syntax-e _tl1295413062_)))
                                    (let ((_hd1295613068_
                                           (##car _e1295513065_))
                                          (_tl1295713070_
                                           (##cdr _e1295513065_)))
                                      (let* ((_prelude13073_ _hd1295613068_)
                                             (_rest13075_ _tl1295713070_))
                                        (if '#t
                                            (_lp12943_
                                             _rest13075_
                                             _prelude13073_
                                             _ns12947_
                                             _pkg12948_)
                                            (_E1295113053_)))))
                                  (_E1295113053_))
                              (_E1295113053_))))
                      (_E1295113053_)))))
          (_E1295013077_)))))
  (define gx#core-read-module/lang
    (lambda (_path12768_)
      (letrec ((_default-read-module-body12770_
                (lambda (_inp12933_)
                  (let _lp12935_ ((_body12937_ '()))
                    (let ((_next12939_ (read-syntax _inp12933_)))
                      (if (eof-object? _next12939_)
                          (reverse _body12937_)
                          (_lp12935_ (cons _next12939_ _body12937_)))))))
               (_read-body12771_
                (lambda (_inp12852_
                         _pre12853_
                         _ns12854_
                         _pkg12855_
                         _args12856_)
                  (let ((_g14240_
                         (if _pkg12855_
                             (values _pre12853_ _ns12854_ _pkg12855_)
                             (gx#core-read-module-package
                              _path12768_
                              _pre12853_
                              _ns12854_))))
                    (begin
                      (let ((_g14241_ (values-count _g14240_)))
                        (if (not (fx= _g14241_ 3))
                            (error "Context expects 3 values" _g14241_)))
                      (let ((_pre12858_ (values-ref _g14240_ 0))
                            (_ns12859_ (values-ref _g14240_ 1))
                            (_pkg12860_ (values-ref _g14240_ 2)))
                        (let* ((_prelude12862_
                                (gx#import-module__0 _pre12858_))
                               (_read-module-body12916_
                                (let ((_$e12908_
                                       (find (lambda (_e1286312865_)
                                               (let* ((_g1286712877_
                                                       _e1286312865_)
                                                      (_E1287012881_
                                                       (lambda ()
                                                         (error '"No clause matching"
                                                                _g1286712877_)))
                                                      (_else1286912885_
                                                       (lambda () '#f))
                                                      (_K1287112889_
                                                       (lambda () '#t)))
                                                 (if (##structure-direct-instance-of?
                                                      _g1286712877_
                                                      (##type-id
                                                       gx#module-export::t))
                                                     (let* ((_e1287212892_
                                                             (##vector-ref
                                                              _g1286712877_
                                                              '1))
                                                            (_e1287312895_
                                                             (##vector-ref
                                                              _g1286712877_
                                                              '2))
                                                            (_e1287412898_
                                                             (##vector-ref
                                                              _g1286712877_
                                                              '3)))
                                                       (if (##eq? _e1287412898_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '1)
                   (let ((_e1287512901_ (##vector-ref _g1286712877_ '4)))
                     (if ((lambda (_g1290312905_)
                            (eq? _g1290312905_ 'read-module-body))
                          _e1287512901_)
                         (_K1287112889_)
                         (_else1286912885_)))
                   (_else1286912885_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_else1286912885_))))
                                             (##structure-ref
                                              _prelude12862_
                                              '9
                                              gx#module-context::t
                                              '#f))))
                                  (if _$e12908_
                                      ((lambda (_xport12911_)
                                         (let ((_proc12914_
                                                (with-exception-catcher
                                                 void
                                                 (lambda ()
                                                   (gx#eval-syntax__0
                                                    (##structure-ref
                                                     (gx#core-resolve-module-export
                                                      _xport12911_)
                                                     '1
                                                     gx#binding::t
                                                     '#f))))))
                                           (if (procedure? _proc12914_)
                                               _proc12914_
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Illegal #lang prelude; read-module-body is not a procedure"
                                                _path12768_
                                                _pre12858_
                                                _proc12914_))))
                                       _$e12908_)
                                      _default-read-module-body12770_)))
                               (_path-id12918_
                                (gx#core-module-path->namespace _path12768_))
                               (_pkg-id12920_
                                (if _pkg12860_
                                    (string-append
                                     _pkg12860_
                                     '"/"
                                     _path-id12918_)
                                    _path-id12918_))
                               (_module-id12922_
                                (string->symbol _pkg-id12920_))
                               (_module-ns12927_
                                (let ((_$e12924_ _ns12859_))
                                  (if _$e12924_ _$e12924_ _pkg-id12920_)))
                               (_body12930_
                                (call-with-parameters
                                 (lambda ()
                                   (_read-module-body12916_ _inp12852_))
                                 gx#current-module-reader-path
                                 _path12768_
                                 gx#current-module-reader-args
                                 _args12856_)))
                          (values _prelude12862_
                                  _module-id12922_
                                  _module-ns12927_
                                  _body12930_)))))))
               (_string-e12772_
                (lambda (_obj12849_ _what12850_)
                  (if (string? _obj12849_)
                      _obj12849_
                      (if (symbol? _obj12849_)
                          (symbol->string _obj12849_)
                          (gx#raise-syntax-error
                           '#f
                           (string-append '"Illegal module " _what12850_)
                           _path12768_
                           _obj12849_)))))
               (_read-lang-args12773_
                (lambda (_inp12804_ _args12805_)
                  (let* ((_args1280612814_ _args12805_)
                         (_E1280912818_
                          (lambda ()
                            (error '"No clause matching" _args1280612814_)))
                         (_else1280812822_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Illegal #lang arguments; missing prelude"
                             _path12768_)))
                         (_K1281012837_
                          (lambda (_args12825_ _prelude12826_)
                            (let* ((_pkg12828_ (pgetq 'package: _args12825_))
                                   (_pkg12830_
                                    (if _pkg12828_
                                        (_string-e12772_ _pkg12828_ '"package")
                                        '#f))
                                   (_ns12832_ (pgetq 'namespace: _args12825_))
                                   (_ns12834_
                                    (if _ns12832_
                                        (_string-e12772_
                                         _ns12832_
                                         '"namespace")
                                        '#f)))
                              (_read-body12771_
                               _inp12804_
                               _prelude12826_
                               _ns12834_
                               _pkg12830_
                               _args12825_)))))
                    (if (##pair? _args1280612814_)
                        (let ((_hd1281112840_ (##car _args1280612814_))
                              (_tl1281212842_ (##cdr _args1280612814_)))
                          (let* ((_prelude12845_ _hd1281112840_)
                                 (_args12847_ _tl1281212842_))
                            (_K1281012837_ _args12847_ _prelude12845_)))
                        (_else1280812822_)))))
               (_read-lang12774_
                (lambda (_inp12779_)
                  (let* ((_head12781_ (read-line _inp12779_))
                         (_$e12783_ (string-index _head12781_ '#\space)))
                    (if _$e12783_
                        ((lambda (_ix12786_)
                           (let ((_lang12788_
                                  (substring _head12781_ '0 _ix12786_)))
                             (if (equal? _lang12788_ '"#lang")
                                 (let* ((_rest12790_
                                         (substring
                                          _head12781_
                                          (fx+ _ix12786_ '1)
                                          (string-length _head12781_)))
                                        (_args12801_
                                         (with-exception-catcher
                                          (lambda (_g1279112793_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Illegal #lang arguments"
                                             _path12768_
                                             _g1279112793_))
                                          (lambda ()
                                            (call-with-input-string
                                             _rest12790_
                                             (lambda (_g1279612798_)
                                               (read-all
                                                _g1279612798_
                                                read)))))))
                                   (_read-lang-args12773_
                                    _inp12779_
                                    _args12801_))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Illegal module syntax"
                                  _path12768_))))
                         _$e12783_)
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module syntax"
                         _path12768_)))))
               (_read-e12775_
                (lambda (_inp12777_)
                  (if (eq? (peek-char _inp12777_) '#\#)
                      (_read-lang12774_ _inp12777_)
                      (gx#raise-syntax-error
                       '#f
                       '"Illegal module syntax"
                       _path12768_)))))
        (call-with-input-file _path12768_ _read-e12775_))))
  (define gx#core-read-module-package
    (lambda (_path12722_ _pre12723_ _ns12724_)
      (letrec ((_string-e12726_
                (lambda (_e12766_)
                  (if (symbol? _e12766_)
                      (symbol->string _e12766_)
                      (if (string? _e12766_)
                          _e12766_
                          (gx#raise-syntax-error
                           '#f
                           '"Malformed package info; unexpected datum"
                           _e12766_))))))
        (let _lp12728_ ((_dir12730_ (path-directory _path12722_))
                        (_pkg-path12731_ '()))
          (let ((_gerbil.pkg12733_ (path-expand '"gerbil.pkg" _dir12730_)))
            (if (file-exists? _gerbil.pkg12733_)
                (let ((_plist12735_
                       (gx#core-library-package-plist__opt-lambda12587
                        _dir12730_
                        '#t)))
                  (if (null? _plist12735_)
                      (let ((_pkg12737_
                             (if (not (null? _pkg-path12731_))
                                 (string-join _pkg-path12731_ '"/")
                                 '#f)))
                        (values _pre12723_ _ns12724_ _pkg12737_))
                      (if (list? _plist12735_)
                          (let* ((_root12739_ (pgetq 'package: _plist12735_))
                                 (_pkg12743_
                                  (let ((_pkg-path12741_
                                         (if _root12739_
                                             (cons (_string-e12726_
                                                    _root12739_)
                                                   _pkg-path12731_)
                                             _pkg-path12731_)))
                                    (if (not (null? _pkg-path12741_))
                                        (string-join _pkg-path12741_ '"/")
                                        '#f)))
                                 (_ns12750_
                                  (let ((_ns12748_
                                         (let ((_$e12745_ _ns12724_))
                                           (if _$e12745_
                                               _$e12745_
                                               (pgetq 'namespace:
                                                      _plist12735_)))))
                                    (if _ns12748_
                                        (_string-e12726_ _ns12748_)
                                        '#f)))
                                 (_pre12755_
                                  (let ((_$e12752_ _pre12723_))
                                    (if _$e12752_
                                        _$e12752_
                                        (pgetq 'prelude: _plist12735_)))))
                            (values _pre12755_ _ns12750_ _pkg12743_))
                          (gx#raise-syntax-error
                           '#f
                           '"Malformed package info; unexpected datum"
                           _plist12735_))))
                (let ((_dir*12758_
                       (path-strip-trailing-directory-separator _dir12730_)))
                  (if (let ((_$e12760_ (string-empty? _dir*12758_)))
                        (if _$e12760_
                            _$e12760_
                            (equal? _dir12730_ _dir*12758_)))
                      (values _pre12723_ _ns12724_ '#f)
                      (let ((_xpath12763_ (path-strip-directory _dir*12758_))
                            (_xdir12764_ (path-directory _dir*12758_)))
                        (_lp12728_
                         _xdir12764_
                         (cons _xpath12763_ _pkg-path12731_)))))))))))
  (define gx#core-module-path->namespace
    (lambda (_path12720_)
      (path-strip-extension (path-strip-directory _path12720_))))
  (define gx#core-module-path->id
    (lambda (_path12718_)
      (string->symbol (gx#core-module-path->namespace _path12718_))))
  (begin
    (define gx#core-resolve-module-path__opt-lambda12695
      (lambda (_stx-path12697_ _rel12698_)
        (let* ((_path12700_ (gx#stx-e _stx-path12697_))
               (_path12702_
                (if (string-empty? (path-extension _path12700_))
                    (string-append _path12700_ '".ss")
                    _path12700_)))
          (gx#core-resolve-path__opt-lambda4607
           _path12702_
           (let ((_$e12705_ (gx#stx-source _stx-path12697_)))
             (if _$e12705_ _$e12705_ _rel12698_))))))
    (begin
      (define gx#core-resolve-module-path__0
        (lambda (_stx-path12711_)
          (let ((_rel12713_ '#f))
            (gx#core-resolve-module-path__opt-lambda12695
             _stx-path12711_
             _rel12713_))))
      (define gx#core-resolve-module-path
        (lambda _g14243_
          (let ((_g14242_ (length _g14243_)))
            (cond ((fx= _g14242_ 1)
                   (apply gx#core-resolve-module-path__0 _g14243_))
                  ((fx= _g14242_ 2)
                   (apply gx#core-resolve-module-path__opt-lambda12695
                          _g14243_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-resolve-module-path
                    _g14243_))))))))
  (define gx#core-resolve-library-module-path
    (lambda (_libpath12624_)
      (let* ((_spath12626_ (symbol->string (gx#stx-e _libpath12624_)))
             (_spath12628_
              (substring _spath12626_ '1 (string-length _spath12626_)))
             (_ext12630_ (path-extension _spath12628_))
             (_ssi12632_
              (if (string-empty? _ext12630_)
                  (string-append _spath12628_ '".ssi")
                  (string-append (path-strip-extension _spath12628_) '".ssi")))
             (_src12634_
              (if (string-empty? _ext12630_)
                  (string-append _spath12628_ '".ss")
                  _spath12628_)))
        (let _lp12637_ ((_rest12639_
                         (gx#current-expander-module-library-path)))
          (let* ((_rest1264012649_ _rest12639_)
                 (_E1264312653_
                  (lambda () (error '"No clause matching" _rest1264012649_)))
                 (_try-match1264212661_
                  (lambda ()
                    (let ((_K1264412658_
                           (lambda ()
                             (gx#raise-syntax-error
                              '#f
                              '"Cannot find library module"
                              _libpath12624_))))
                      (if (##null? _rest1264012649_)
                          (_K1264412658_)
                          (_E1264312653_)))))
                 (_K1264512684_
                  (lambda (_rest12664_ _dir12665_)
                    (letrec ((_resolve12667_
                              (lambda (_ssi12677_ _src12678_)
                                (let ((_compiled-path12680_
                                       (path-expand _ssi12677_ _dir12665_)))
                                  (if (file-exists? _compiled-path12680_)
                                      (path-normalize _compiled-path12680_)
                                      (let ((_src-path12682_
                                             (path-expand
                                              _src12678_
                                              _dir12665_)))
                                        (if (file-exists? _src-path12682_)
                                            (path-normalize _src-path12682_)
                                            (_lp12637_ _rest12664_))))))))
                      (let ((_$e12669_
                             (gx#core-library-package-path-prefix _dir12665_)))
                        (if _$e12669_
                            ((lambda (_prefix12672_)
                               (if (string-prefix? _spath12628_ _prefix12672_)
                                   (let ((_ssi12674_
                                          (substring
                                           _ssi12632_
                                           (string-length _prefix12672_)
                                           (string-length _ssi12632_)))
                                         (_src12675_
                                          (substring
                                           _src12634_
                                           (string-length _prefix12672_)
                                           (string-length _src12634_))))
                                     (_resolve12667_ _ssi12674_ _src12675_))
                                   (_lp12637_ _rest12664_)))
                             _$e12669_)
                            (_resolve12667_ _ssi12632_ _src12634_)))))))
            (if (##pair? _rest1264012649_)
                (let ((_hd1264612687_ (##car _rest1264012649_))
                      (_tl1264712689_ (##cdr _rest1264012649_)))
                  (let* ((_dir12692_ _hd1264612687_)
                         (_rest12694_ _tl1264712689_))
                    (_K1264512684_ _rest12694_ _dir12692_)))
                (_try-match1264212661_)))))))
  (define gx#core-library-package-path-prefix
    (lambda (_dir12617_)
      (let ((_$e12619_
             (pgetq 'package: (gx#core-library-package-plist__0 _dir12617_))))
        (if _$e12619_
            ((lambda (_pkg12622_)
               (string-append (symbol->string _pkg12622_) '"/"))
             _$e12619_)
            '#f))))
  (begin
    (define gx#core-library-package-plist__opt-lambda12587
      (lambda (_dir12589_ _exists?12590_)
        (let* ((_cache12592_ (gx#core-library-package-cache))
               (_$e12594_ (table-ref _cache12592_ _dir12589_ '#f)))
          (if _$e12594_
              (values _$e12594_)
              (let* ((_gerbil.pkg12597_ (path-expand '"gerbil.pkg" _dir12589_))
                     (_plist12604_
                      (if (let ((_$e12599_ _exists?12590_))
                            (if _$e12599_
                                _$e12599_
                                (file-exists? _gerbil.pkg12597_)))
                          (let ((_e12602_
                                 (call-with-input-file
                                  _gerbil.pkg12597_
                                  read)))
                            (if (eof-object? _e12602_)
                                '()
                                (if (list? _e12602_)
                                    _e12602_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Malformed package info; unexpected datum"
                                     _gerbil.pkg12597_
                                     _e12602_))))
                          '())))
                (begin
                  (table-set! _cache12592_ _dir12589_ _plist12604_)
                  _plist12604_))))))
    (begin
      (define gx#core-library-package-plist__0
        (lambda (_dir12610_)
          (let ((_exists?12612_ '#f))
            (gx#core-library-package-plist__opt-lambda12587
             _dir12610_
             _exists?12612_))))
      (define gx#core-library-package-plist
        (lambda _g14245_
          (let ((_g14244_ (length _g14245_)))
            (cond ((fx= _g14244_ 1)
                   (apply gx#core-library-package-plist__0 _g14245_))
                  ((fx= _g14244_ 2)
                   (apply gx#core-library-package-plist__opt-lambda12587
                          _g14245_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-library-package-plist
                    _g14245_))))))))
  (define gx#core-library-package-cache
    (lambda ()
      (let ((_$e12583_ (gx#current-expander-module-library-package-cache)))
        (if _$e12583_
            (values _$e12583_)
            (let ((_cache12586_ (make-table)))
              (begin
                (gx#current-expander-module-library-package-cache _cache12586_)
                _cache12586_))))))
  (define gx#core-library-module-path?
    (lambda (_stx12580_) (gx#core-special-module-path? _stx12580_ '#\:)))
  (define gx#core-special-module-path?
    (lambda (_stx12575_ _char12576_)
      (if (gx#identifier? _stx12575_)
          (if (interned-symbol? (gx#stx-e _stx12575_))
              (let ((_str12578_ (symbol->string (gx#stx-e _stx12575_))))
                (if (fx> (string-length _str12578_) '1)
                    (eq? (string-ref _str12578_ '0) _char12576_)
                    '#f))
              '#f)
          '#f)))
  (define gx#core-bound-prelude?
    (lambda (_stx12569_)
      (gx#core-bound-identifier?__opt-lambda4697
       _stx12569_
       (lambda (_g1257012572_)
         (gx#expander-binding?__opt-lambda4734
          _g1257012572_
          gx#prelude-context?)))))
  (define gx#core-bound-module?
    (lambda (_stx12563_)
      (gx#core-bound-identifier?__opt-lambda4697
       _stx12563_
       (lambda (_g1256412566_)
         (gx#expander-binding?__opt-lambda4734
          _g1256412566_
          gx#module-context?)))))
  (define gx#core-bound-module-prelude?
    (lambda (_stx12550_)
      (letrec ((_module-prelude?12552_
                (lambda (_e12558_)
                  (let ((_$e12560_
                         (##structure-instance-of?
                          _e12558_
                          'gx#module-context::t)))
                    (if _$e12560_
                        _$e12560_
                        (##structure-instance-of?
                         _e12558_
                         'gx#prelude-context::t))))))
        (gx#core-bound-identifier?__opt-lambda4697
         _stx12550_
         (lambda (_g1255312555_)
           (gx#expander-binding?__opt-lambda4734
            _g1255312555_
            _module-prelude?12552_))))))
  (begin
    (define gx#core-bind-import!__opt-lambda12478
      (lambda (_in12480_ _ctx12481_ _force-weak?12482_)
        (let* ((_in1248312492_ _in12480_)
               (_E1248512496_
                (lambda () (error '"No clause matching" _in1248312492_)))
               (_K1248612509_
                (lambda (_weak?12499_ _phi12500_ _key12501_ _source12502_)
                  (gx#core-bind!__opt-lambda4973
                   _key12501_
                   (let ((_e12504_
                          (gx#core-resolve-module-export _source12502_)))
                     (##structure
                      gx#import-binding::t
                      (##structure-ref _e12504_ '1 gx#binding::t '#f)
                      _key12501_
                      _phi12500_
                      _e12504_
                      (##direct-structure-ref
                       _source12502_
                       '1
                       gx#module-export::t
                       '#f)
                      (let ((_$e12506_ _force-weak?12482_))
                        (if _$e12506_ _$e12506_ _weak?12499_))))
                   gx#core-context-rebind?
                   _phi12500_
                   _ctx12481_))))
          (if (##structure-direct-instance-of?
               _in1248312492_
               (##type-id gx#module-import::t))
              (let* ((_e1248712512_ (##vector-ref _in1248312492_ '1))
                     (_source12515_ _e1248712512_)
                     (_e1248812517_ (##vector-ref _in1248312492_ '2))
                     (_key12520_ _e1248812517_)
                     (_e1248912522_ (##vector-ref _in1248312492_ '3))
                     (_phi12525_ _e1248912522_)
                     (_e1249012527_ (##vector-ref _in1248312492_ '4))
                     (_weak?12530_ _e1249012527_))
                (_K1248612509_
                 _weak?12530_
                 _phi12525_
                 _key12520_
                 _source12515_))
              (_E1248512496_)))))
    (begin
      (define gx#core-bind-import!__0
        (lambda (_in12535_)
          (let* ((_ctx12537_ (gx#current-expander-context))
                 (_force-weak?12539_ '#f))
            (gx#core-bind-import!__opt-lambda12478
             _in12535_
             _ctx12537_
             _force-weak?12539_))))
      (define gx#core-bind-import!__1
        (lambda (_in12541_ _ctx12542_)
          (let ((_force-weak?12544_ '#f))
            (gx#core-bind-import!__opt-lambda12478
             _in12541_
             _ctx12542_
             _force-weak?12544_))))
      (define gx#core-bind-import!
        (lambda _g14247_
          (let ((_g14246_ (length _g14247_)))
            (cond ((fx= _g14246_ 1) (apply gx#core-bind-import!__0 _g14247_))
                  ((fx= _g14246_ 2) (apply gx#core-bind-import!__1 _g14247_))
                  ((fx= _g14246_ 3)
                   (apply gx#core-bind-import!__opt-lambda12478 _g14247_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-import!
                    _g14247_))))))))
  (begin
    (define gx#core-bind-weak-import!__opt-lambda12464
      (lambda (_in12466_ _ctx12467_)
        (gx#core-bind-import!__opt-lambda12478 _in12466_ _ctx12467_ '#t)))
    (begin
      (define gx#core-bind-weak-import!__0
        (lambda (_in12472_)
          (let ((_ctx12474_ (gx#current-expander-context)))
            (gx#core-bind-weak-import!__opt-lambda12464
             _in12472_
             _ctx12474_))))
      (define gx#core-bind-weak-import!
        (lambda _g14249_
          (let ((_g14248_ (length _g14249_)))
            (cond ((fx= _g14248_ 1)
                   (apply gx#core-bind-weak-import!__0 _g14249_))
                  ((fx= _g14248_ 2)
                   (apply gx#core-bind-weak-import!__opt-lambda12464 _g14249_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-weak-import!
                    _g14249_))))))))
  (define gx#core-resolve-module-export
    (lambda (_out12357_)
      (letrec ((_subst12359_
                (lambda (_key12405_)
                  (let* ((_key1240612414_ _key12405_)
                         (_E1240912418_
                          (lambda ()
                            (error '"No clause matching" _key1240612414_)))
                         (_else1240812422_ (lambda () _key12405_))
                         (_K1241012453_
                          (lambda (_mark12425_ _id12426_)
                            (let* ((_mark1242712433_ _mark12425_)
                                   (_E1242912437_
                                    (lambda ()
                                      (error '"No clause matching"
                                             _mark1242712433_)))
                                   (_K1243012445_
                                    (lambda (_subst12440_)
                                      (let ((_$e12442_
                                             (if _subst12440_
                                                 (table-ref
                                                  _subst12440_
                                                  _id12426_
                                                  '#f)
                                                 '#f)))
                                        (if _$e12442_
                                            _$e12442_
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Illegal key; missing substitution"
                                             _key12405_))))))
                              (if (##structure-instance-of?
                                   _mark1242712433_
                                   (##type-id gx#expander-mark::t))
                                  (let* ((_e1243112448_
                                          (##vector-ref _mark1242712433_ '1))
                                         (_subst12451_ _e1243112448_))
                                    (_K1243012445_ _subst12451_))
                                  (_E1242912437_))))))
                    (if (##pair? _key1240612414_)
                        (let ((_hd1241112456_ (##car _key1240612414_))
                              (_tl1241212458_ (##cdr _key1240612414_)))
                          (let* ((_id12461_ _hd1241112456_)
                                 (_mark12463_ _tl1241212458_))
                            (_K1241012453_ _mark12463_ _id12461_)))
                        (_else1240812422_))))))
        (let* ((_out1236012370_ _out12357_)
               (_E1236212374_
                (lambda () (error '"No clause matching" _out1236012370_)))
               (_K1236312381_
                (lambda (_phi12377_ _key12378_ _ctx12379_)
                  (gx#core-context-resolve
                   (gx#core-context-shift _ctx12379_ _phi12377_)
                   (_subst12359_ _key12378_)))))
          (if (##structure-direct-instance-of?
               _out1236012370_
               (##type-id gx#module-export::t))
              (let* ((_e1236412384_ (##vector-ref _out1236012370_ '1))
                     (_ctx12387_ _e1236412384_)
                     (_e1236512389_ (##vector-ref _out1236012370_ '2))
                     (_key12392_ _e1236512389_)
                     (_e1236612394_ (##vector-ref _out1236012370_ '3))
                     (_phi12397_ _e1236612394_)
                     (_e1236712399_ (##vector-ref _out1236012370_ '4))
                     (_e1236812402_ (##vector-ref _out1236012370_ '5)))
                (_K1236312381_ _phi12397_ _key12392_ _ctx12387_))
              (_E1236212374_))))))
  (begin
    (define gx#core-module-export->import__opt-lambda12280
      (lambda (_out12282_ _rename12283_ _dphi12284_)
        (let* ((_out1228512295_ _out12282_)
               (_E1228712299_
                (lambda () (error '"No clause matching" _out1228512295_)))
               (_K1228812311_
                (lambda (_weak?12302_
                         _name12303_
                         _phi12304_
                         _key12305_
                         _ctx12306_)
                  (##structure
                   gx#module-import::t
                   _out12282_
                   (let ((_$e12308_ _rename12283_))
                     (if _$e12308_ _$e12308_ _name12303_))
                   (fx+ _phi12304_ _dphi12284_)
                   _weak?12302_))))
          (if (##structure-direct-instance-of?
               _out1228512295_
               (##type-id gx#module-export::t))
              (let* ((_e1228912314_ (##vector-ref _out1228512295_ '1))
                     (_ctx12317_ _e1228912314_)
                     (_e1229012319_ (##vector-ref _out1228512295_ '2))
                     (_key12322_ _e1229012319_)
                     (_e1229112324_ (##vector-ref _out1228512295_ '3))
                     (_phi12327_ _e1229112324_)
                     (_e1229212329_ (##vector-ref _out1228512295_ '4))
                     (_name12332_ _e1229212329_)
                     (_e1229312334_ (##vector-ref _out1228512295_ '5))
                     (_weak?12337_ _e1229312334_))
                (_K1228812311_
                 _weak?12337_
                 _name12332_
                 _phi12327_
                 _key12322_
                 _ctx12317_))
              (_E1228712299_)))))
    (begin
      (define gx#core-module-export->import__0
        (lambda (_out12342_)
          (let* ((_rename12344_ '#f) (_dphi12346_ '0))
            (gx#core-module-export->import__opt-lambda12280
             _out12342_
             _rename12344_
             _dphi12346_))))
      (define gx#core-module-export->import__1
        (lambda (_out12348_ _rename12349_)
          (let ((_dphi12351_ '0))
            (gx#core-module-export->import__opt-lambda12280
             _out12348_
             _rename12349_
             _dphi12351_))))
      (define gx#core-module-export->import
        (lambda _g14251_
          (let ((_g14250_ (length _g14251_)))
            (cond ((fx= _g14250_ 1)
                   (apply gx#core-module-export->import__0 _g14251_))
                  ((fx= _g14250_ 2)
                   (apply gx#core-module-export->import__1 _g14251_))
                  ((fx= _g14250_ 3)
                   (apply gx#core-module-export->import__opt-lambda12280
                          _g14251_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-module-export->import
                    _g14251_))))))))
  (define gx#core-expand-module%
    (lambda (_stx12210_)
      (letrec ((_make-context12212_
                (lambda (_id12263_)
                  (let* ((_super12265_ (gx#current-expander-context))
                         (_bind-id12267_ (gx#stx-e _id12263_))
                         (_mod-id12269_
                          (if (##structure-instance-of?
                               _super12265_
                               'gx#module-context::t)
                              (make-symbol
                               (##structure-ref
                                _super12265_
                                '1
                                gx#expander-context::t
                                '#f)
                               '"$"
                               _bind-id12267_)
                              _bind-id12267_))
                         (_ns12271_ (symbol->string _mod-id12269_))
                         (_path12278_
                          (if (##structure-instance-of?
                               _super12265_
                               'gx#module-context::t)
                              (let ((_path12273_
                                     (##structure-ref
                                      _super12265_
                                      '7
                                      gx#module-context::t
                                      '#f)))
                                (if (let ((_$e12275_ (pair? _path12273_)))
                                      (if _$e12275_
                                          _$e12275_
                                          (null? _path12273_)))
                                    (cons _bind-id12267_ _path12273_)
                                    (if (not _path12273_)
                                        _bind-id12267_
                                        (cons _bind-id12267_
                                              (cons _path12273_ '())))))
                              _bind-id12267_)))
                    (let ((__obj14227 (make-object gx#module-context::t '11)))
                      (begin
                        (gx#module-context:::init!
                         __obj14227
                         _mod-id12269_
                         _super12265_
                         _ns12271_
                         _path12278_)
                        __obj14227))))))
        (let* ((_e1221312223_ _stx12210_)
               (_E1221512227_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1221312223_)))
               (_E1221412259_
                (lambda ()
                  (if (gx#stx-pair? _e1221312223_)
                      (let ((_e1221612231_ (gx#syntax-e _e1221312223_)))
                        (let ((_hd1221712234_ (##car _e1221612231_))
                              (_tl1221812236_ (##cdr _e1221612231_)))
                          (if (gx#stx-pair? _tl1221812236_)
                              (let ((_e1221912239_
                                     (gx#syntax-e _tl1221812236_)))
                                (let ((_hd1222012242_ (##car _e1221912239_))
                                      (_tl1222112244_ (##cdr _e1221912239_)))
                                  (let* ((_id12247_ _hd1222012242_)
                                         (_body12249_ _tl1222112244_))
                                    (if (if (gx#identifier? _id12247_)
                                            (gx#stx-list? _body12249_)
                                            '#f)
                                        (let* ((_ctx12251_
                                                (_make-context12212_
                                                 _id12247_))
                                               (_body12253_
                                                (gx#core-expand-module-begin
                                                 _body12249_
                                                 _ctx12251_))
                                               (_body12255_
                                                (gx#core-quote-syntax__1
                                                 (gx#core-cons
                                                  '%#begin
                                                  _body12253_)
                                                 (gx#stx-source _stx12210_))))
                                          (begin
                                            (##structure-set!
                                             _ctx12251_
                                             (make-promise
                                              (lambda ()
                                                (gx#eval-syntax* _body12255_)))
                                             '10
                                             gx#module-context::t
                                             '#f)
                                            (##structure-set!
                                             _ctx12251_
                                             _body12255_
                                             '11
                                             gx#module-context::t
                                             '#f)
                                            (gx#core-bind-syntax!__0
                                             _id12247_
                                             _ctx12251_)
                                            (gx#core-quote-syntax__1
                                             (gx#core-list
                                              '%#module
                                              (gx#core-quote-syntax__0
                                               _id12247_)
                                              _body12255_)
                                             (gx#stx-source _stx12210_))))
                                        (_E1221512227_)))))
                              (_E1221512227_))))
                      (_E1221512227_)))))
          (_E1221412259_)))))
  (define gx#core-expand-module-begin
    (lambda (_body12176_ _ctx12177_)
      (call-with-parameters
       (lambda ()
         (begin
           (gx#core-bind-feature!__1 'gerbil-module '#t)
           (let* ((_stx12180_
                   (gx#core-expand-head (cons '%%begin-module _body12176_)))
                  (_e1218112188_ _stx12180_)
                  (_E1218312192_
                   (lambda ()
                     (gx#raise-syntax-error
                      '#f
                      '"Illegal module body expansion"
                      _stx12180_)))
                  (_E1218212206_
                   (lambda ()
                     (if (gx#stx-pair? _e1218112188_)
                         (let ((_e1218412196_ (gx#syntax-e _e1218112188_)))
                           (let ((_hd1218512199_ (##car _e1218412196_))
                                 (_tl1218612201_ (##cdr _e1218412196_)))
                             (if (if (gx#identifier? _hd1218512199_)
                                     (gx#core-identifier=?
                                      _hd1218512199_
                                      '%#begin-module)
                                     '#f)
                                 (let ((_body12204_ _tl1218612201_))
                                   (if '#t
                                       (if (gx#sealed-syntax? _stx12180_)
                                           _body12204_
                                           (gx#core-expand-module-body
                                            _body12204_))
                                       (_E1218312192_)))
                                 (_E1218312192_))))
                         (_E1218312192_)))))
             (_E1218212206_))))
       gx#current-expander-context
       _ctx12177_
       gx#current-expander-phi
       '0)))
  (define gx#core-expand-module-body
    (lambda (_body11972_)
      (letrec ((_expand-special11974_
                (lambda (_hd12103_ _K12104_ _rest12105_ _r12106_)
                  (let* ((_e1210712124_ _hd12103_)
                         (_E1211912128_
                          (lambda ()
                            (_K12104_
                             _rest12105_
                             (cons (gx#core-expand-top _hd12103_) _r12106_))))
                         (_E1210912140_
                          (lambda ()
                            (if (gx#stx-pair? _e1210712124_)
                                (let ((_e1212012132_
                                       (gx#syntax-e _e1210712124_)))
                                  (let ((_hd1212112135_ (##car _e1212012132_))
                                        (_tl1212212137_ (##cdr _e1212012132_)))
                                    (if (if (gx#identifier? _hd1212112135_)
                                            (gx#core-identifier=?
                                             _hd1212112135_
                                             '%#export)
                                            '#f)
                                        (if '#t
                                            (_K12104_
                                             _rest12105_
                                             (cons _hd12103_ _r12106_))
                                            (_E1211912128_))
                                        (_E1211912128_))))
                                (_E1211912128_))))
                         (_E1210812172_
                          (lambda ()
                            (if (gx#stx-pair? _e1210712124_)
                                (let ((_e1211012144_
                                       (gx#syntax-e _e1210712124_)))
                                  (let ((_hd1211112147_ (##car _e1211012144_))
                                        (_tl1211212149_ (##cdr _e1211012144_)))
                                    (if (if (gx#identifier? _hd1211112147_)
                                            (gx#core-identifier=?
                                             _hd1211112147_
                                             '%#define-values)
                                            '#f)
                                        (if (gx#stx-pair? _tl1211212149_)
                                            (let ((_e1211312152_
                                                   (gx#syntax-e
                                                    _tl1211212149_)))
                                              (let ((_hd1211412155_
                                                     (##car _e1211312152_))
                                                    (_tl1211512157_
                                                     (##cdr _e1211312152_)))
                                                (let ((_hd-bind12160_
                                                       _hd1211412155_))
                                                  (if (gx#stx-pair?
                                                       _tl1211512157_)
                                                      (let ((_e1211612162_
                                                             (gx#syntax-e
                                                              _tl1211512157_)))
                                                        (let ((_hd1211712165_
                                                               (##car _e1211612162_))
                                                              (_tl1211812167_
                                                               (##cdr _e1211612162_)))
                                                          (let ((_expr12170_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1211712165_))
                    (if (gx#stx-null? _tl1211812167_)
                        (if (gx#core-bind-values? _hd-bind12160_)
                            (begin
                              (gx#core-bind-values!__0 _hd-bind12160_)
                              (_K12104_ _rest12105_ (cons _hd12103_ _r12106_)))
                            (_E1210912140_))
                        (_E1210912140_)))))
              (_E1210912140_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E1210912140_))
                                        (_E1210912140_))))
                                (_E1210912140_)))))
                    (_E1210812172_))))
               (_expand-body11975_
                (lambda (_rbody11977_)
                  (let _lp11979_ ((_rest11981_ _rbody11977_) (_body11982_ '()))
                    (let* ((_rest1198311991_ _rest11981_)
                           (_E1198611995_
                            (lambda ()
                              (error '"No clause matching" _rest1198311991_)))
                           (_else1198511999_ (lambda () _body11982_))
                           (_K1198712091_
                            (lambda (_rest12002_ _hd12003_)
                              (let* ((_e1200412025_ _hd12003_)
                                     (_E1202012029_
                                      (lambda ()
                                        (_lp11979_
                                         _rest12002_
                                         (cons (gx#core-expand-expression
                                                _hd12003_)
                                               _body11982_))))
                                     (_E1201612043_
                                      (lambda ()
                                        (if (gx#stx-pair? _e1200412025_)
                                            (let ((_e1202112033_
                                                   (gx#syntax-e
                                                    _e1200412025_)))
                                              (let ((_hd1202212036_
                                                     (##car _e1202112033_))
                                                    (_tl1202312038_
                                                     (##cdr _e1202112033_)))
                                                (let ((_form12041_
                                                       _hd1202212036_))
                                                  (if (gx#core-bound-identifier?__opt-lambda4697
                                                       _form12041_
                                                       gx#special-form-binding?)
                                                      (_lp11979_
                                                       _rest12002_
                                                       (cons _hd12003_
                                                             _body11982_))
                                                      (_E1202012029_)))))
                                            (_E1202012029_))))
                                     (_E1200612055_
                                      (lambda ()
                                        (if (gx#stx-pair? _e1200412025_)
                                            (let ((_e1201712047_
                                                   (gx#syntax-e
                                                    _e1200412025_)))
                                              (let ((_hd1201812050_
                                                     (##car _e1201712047_))
                                                    (_tl1201912052_
                                                     (##cdr _e1201712047_)))
                                                (if (if (gx#identifier?
                                                         _hd1201812050_)
                                                        (gx#core-identifier=?
                                                         _hd1201812050_
                                                         '%#export)
                                                        '#f)
                                                    (if '#t
                                                        (_lp11979_
                                                         _rest12002_
                                                         (cons (gx#core-expand-export%__0
                                                                _hd12003_)
                                                               _body11982_))
                                                        (_E1201612043_))
                                                    (_E1201612043_))))
                                            (_E1201612043_))))
                                     (_E1200512087_
                                      (lambda ()
                                        (if (gx#stx-pair? _e1200412025_)
                                            (let ((_e1200712059_
                                                   (gx#syntax-e
                                                    _e1200412025_)))
                                              (let ((_hd1200812062_
                                                     (##car _e1200712059_))
                                                    (_tl1200912064_
                                                     (##cdr _e1200712059_)))
                                                (if (if (gx#identifier?
                                                         _hd1200812062_)
                                                        (gx#core-identifier=?
                                                         _hd1200812062_
                                                         '%#define-values)
                                                        '#f)
                                                    (if (gx#stx-pair?
                                                         _tl1200912064_)
                                                        (let ((_e1201012067_
                                                               (gx#syntax-e
                                                                _tl1200912064_)))
                                                          (let ((_hd1201112070_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1201012067_))
                        (_tl1201212072_ (##cdr _e1201012067_)))
                    (let ((_hd-bind12075_ _hd1201112070_))
                      (if (gx#stx-pair? _tl1201212072_)
                          (let ((_e1201312077_ (gx#syntax-e _tl1201212072_)))
                            (let ((_hd1201412080_ (##car _e1201312077_))
                                  (_tl1201512082_ (##cdr _e1201312077_)))
                              (let ((_expr12085_ _hd1201412080_))
                                (if (gx#stx-null? _tl1201512082_)
                                    (if '#t
                                        (_lp11979_
                                         _rest12002_
                                         (cons (gx#core-quote-syntax__1
                                                (gx#core-list
                                                 '%#define-values
                                                 (gx#core-quote-bind-values
                                                  _hd-bind12075_)
                                                 (gx#core-expand-expression
                                                  _expr12085_))
                                                (gx#stx-source _hd12003_))
                                               _body11982_))
                                        (_E1200612055_))
                                    (_E1200612055_)))))
                          (_E1200612055_)))))
                (_E1200612055_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1200612055_))))
                                            (_E1200612055_)))))
                                (_E1200512087_)))))
                      (if (##pair? _rest1198311991_)
                          (let ((_hd1198812094_ (##car _rest1198311991_))
                                (_tl1198912096_ (##cdr _rest1198311991_)))
                            (let* ((_hd12099_ _hd1198812094_)
                                   (_rest12101_ _tl1198912096_))
                              (_K1198712091_ _rest12101_ _hd12099_)))
                          (_else1198511999_)))))))
        (_expand-body11975_
         (gx#core-expand-block__opt-lambda6606
          (cons '%#begin-module _body11972_)
          _expand-special11974_
          '#f
          values)))))
  (define gx#core-expand-import/export
    (lambda (_stx11815_
             _expanded?11816_
             _method11817_
             _current-phi11818_
             _expand111819_)
      (letrec ((_K11821_
                (lambda (_rest11939_ _r11940_)
                  (let* ((_e1194111948_ _rest11939_)
                         (_E1194311952_ (lambda () _r11940_))
                         (_E1194211968_
                          (lambda ()
                            (if (gx#stx-pair? _e1194111948_)
                                (let ((_e1194411956_
                                       (gx#syntax-e _e1194111948_)))
                                  (let ((_hd1194511959_ (##car _e1194411956_))
                                        (_tl1194611961_ (##cdr _e1194411956_)))
                                    (let* ((_hd11964_ _hd1194511959_)
                                           (_rest11966_ _tl1194611961_))
                                      (if '#t
                                          (_step11822_
                                           _hd11964_
                                           _rest11966_
                                           _r11940_)
                                          (_E1194311952_)))))
                                (_E1194311952_)))))
                    (_E1194211968_))))
               (_step11822_
                (lambda (_hd11853_ _rest11854_ _r11855_)
                  (let* ((_e1185611874_ _hd11853_)
                         (_E1186911878_
                          (lambda ()
                            (if (_expanded?11816_ (gx#stx-e _hd11853_))
                                (_K11821_
                                 _rest11854_
                                 (cons (gx#stx-e _hd11853_) _r11855_))
                                (_expand111819_
                                 _hd11853_
                                 _K11821_
                                 _rest11854_
                                 _r11855_))))
                         (_E1186511894_
                          (lambda ()
                            (if (gx#stx-pair? _e1185611874_)
                                (let ((_e1187011882_
                                       (gx#syntax-e _e1185611874_)))
                                  (let ((_hd1187111885_ (##car _e1187011882_))
                                        (_tl1187211887_ (##cdr _e1187011882_)))
                                    (let* ((_macro11890_ _hd1187111885_)
                                           (_body11892_ _tl1187211887_))
                                      (if (gx#core-bound-identifier?__opt-lambda4697
                                           _macro11890_
                                           gx#syntax-binding?)
                                          (_K11821_
                                           (cons (gx#core-apply-expander__opt-lambda6324
                                                  (gx#syntax-local-e__0
                                                   _macro11890_)
                                                  _hd11853_
                                                  _method11817_)
                                                 _rest11854_)
                                           _r11855_)
                                          (_E1186911878_)))))
                                (_E1186911878_))))
                         (_E1185811908_
                          (lambda ()
                            (if (gx#stx-pair? _e1185611874_)
                                (let ((_e1186611898_
                                       (gx#syntax-e _e1185611874_)))
                                  (let ((_hd1186711901_ (##car _e1186611898_))
                                        (_tl1186811903_ (##cdr _e1186611898_)))
                                    (if (eq? (gx#stx-e _hd1186711901_) 'begin:)
                                        (let ((_body11906_ _tl1186811903_))
                                          (if '#t
                                              (_K11821_
                                               (gx#stx-foldr
                                                cons
                                                _rest11854_
                                                _body11906_)
                                               _r11855_)
                                              (_E1186511894_)))
                                        (_E1186511894_))))
                                (_E1186511894_))))
                         (_E1185711935_
                          (lambda ()
                            (if (gx#stx-pair? _e1185611874_)
                                (let ((_e1185911912_
                                       (gx#syntax-e _e1185611874_)))
                                  (let ((_hd1186011915_ (##car _e1185911912_))
                                        (_tl1186111917_ (##cdr _e1185911912_)))
                                    (if (eq? (gx#stx-e _hd1186011915_) 'phi:)
                                        (if (gx#stx-pair? _tl1186111917_)
                                            (let ((_e1186211920_
                                                   (gx#syntax-e
                                                    _tl1186111917_)))
                                              (let ((_hd1186311923_
                                                     (##car _e1186211920_))
                                                    (_tl1186411925_
                                                     (##cdr _e1186211920_)))
                                                (let* ((_dphi11928_
                                                        _hd1186311923_)
                                                       (_body11930_
                                                        _tl1186411925_))
                                                  (if (gx#stx-fixnum?
                                                       _dphi11928_)
                                                      (let ((_rbody11933_
                                                             (call-with-parameters
                                                              (lambda ()
                                                                (_K11821_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _body11930_
                         '()))
                      _current-phi11818_
                      (fx+ (gx#stx-e _dphi11928_) (_current-phi11818_)))))
                (_K11821_ _rest11854_ (foldr1 cons _r11855_ _rbody11933_)))
              (_E1185811908_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E1185811908_))
                                        (_E1185811908_))))
                                (_E1185811908_)))))
                    (_E1185711935_)))))
        (let* ((_e1182311830_ _stx11815_)
               (_E1182511834_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1182311830_)))
               (_E1182411849_
                (lambda ()
                  (if (gx#stx-pair? _e1182311830_)
                      (let ((_e1182611838_ (gx#syntax-e _e1182311830_)))
                        (let ((_hd1182711841_ (##car _e1182611838_))
                              (_tl1182811843_ (##cdr _e1182611838_)))
                          (let ((_body11846_ _tl1182811843_))
                            (if '#t
                                (if (_current-phi11818_)
                                    (_K11821_ _body11846_ '())
                                    (call-with-parameters
                                     (lambda () (_K11821_ _body11846_ '()))
                                     _current-phi11818_
                                     (gx#current-expander-phi)))
                                (_E1182511834_)))))
                      (_E1182511834_)))))
          (_E1182411849_)))))
  (begin
    (define gx#core-expand-import%__opt-lambda11353
      (lambda (_stx11355_ _internal-expand?11356_)
        (letrec ((_expand111358_
                  (lambda (_hd11800_ _K11801_ _rest11802_ _r11803_)
                    (if (gx#core-bound-module? _hd11800_)
                        (_import111359_
                         (gx#syntax-local-e__0 _hd11800_)
                         _K11801_
                         _rest11802_
                         _r11803_)
                        (if (gx#core-library-module-path? _hd11800_)
                            (_import111359_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path _hd11800_))
                             _K11801_
                             _rest11802_
                             _r11803_)
                            (if (gx#stx-string? _hd11800_)
                                (_import111359_
                                 (gx#import-module__0
                                  (gx#core-resolve-module-path__opt-lambda12695
                                   _hd11800_
                                   (gx#stx-source _stx11355_)))
                                 _K11801_
                                 _rest11802_
                                 _r11803_)
                                (if (##structure-instance-of?
                                     (gx#stx-e _hd11800_)
                                     'gx#module-context::t)
                                    (_K11801_
                                     _rest11802_
                                     (cons (gx#stx-e _hd11800_) _r11803_))
                                    (if (_import-spec?11360_ _hd11800_)
                                        (_import-spec11365_
                                         _hd11800_
                                         _K11801_
                                         _rest11802_
                                         _r11803_)
                                        (if (_import-submodule?11361_
                                             _hd11800_)
                                            (_import-submodule11363_
                                             _hd11800_
                                             _K11801_
                                             _rest11802_
                                             _r11803_)
                                            (if (_import-runtime?11362_
                                                 _hd11800_)
                                                (_import-runtime11364_
                                                 _hd11800_
                                                 _K11801_
                                                 _rest11802_
                                                 _r11803_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; illegal import"
                                                 _stx11355_
                                                 _hd11800_))))))))))
                 (_import111359_
                  (lambda (_ctx11789_ _K11790_ _rest11791_ _r11792_)
                    (let ((_dphi11794_
                           (fx- (gx#current-import-expander-phi)
                                (gx#current-expander-phi))))
                      (_K11790_
                       _rest11791_
                       (cons (##structure
                              gx#import-set::t
                              _ctx11789_
                              _dphi11794_
                              (map (lambda (_g1179511797_)
                                     (gx#core-module-export->import__opt-lambda12280
                                      _g1179511797_
                                      '#f
                                      _dphi11794_))
                                   (##structure-ref
                                    _ctx11789_
                                    '9
                                    gx#module-context::t
                                    '#f)))
                             _r11792_)))))
                 (_import-spec?11360_
                  (lambda (_hd11746_)
                    (let* ((_e1174711757_ _hd11746_)
                           (_E1174911761_ (lambda () '#f))
                           (_E1174811785_
                            (lambda ()
                              (if (gx#stx-pair? _e1174711757_)
                                  (let ((_e1175011765_
                                         (gx#syntax-e _e1174711757_)))
                                    (let ((_hd1175111768_
                                           (##car _e1175011765_))
                                          (_tl1175211770_
                                           (##cdr _e1175011765_)))
                                      (if (eq? (gx#stx-e _hd1175111768_)
                                               'spec:)
                                          (if (gx#stx-pair? _tl1175211770_)
                                              (let ((_e1175311773_
                                                     (gx#syntax-e
                                                      _tl1175211770_)))
                                                (let ((_hd1175411776_
                                                       (##car _e1175311773_))
                                                      (_tl1175511778_
                                                       (##cdr _e1175311773_)))
                                                  (let* ((_spath11781_
                                                          _hd1175411776_)
                                                         (_specs11783_
                                                          _tl1175511778_))
                                                    (if '#t
                                                        '#t
                                                        (_E1174911761_)))))
                                              (_E1174911761_))
                                          (_E1174911761_))))
                                  (_E1174911761_)))))
                      (_E1174811785_))))
                 (_import-submodule?11361_
                  (lambda (_hd11703_)
                    (let* ((_e1170411714_ _hd11703_)
                           (_E1170611718_ (lambda () '#f))
                           (_E1170511742_
                            (lambda ()
                              (if (gx#stx-pair? _e1170411714_)
                                  (let ((_e1170711722_
                                         (gx#syntax-e _e1170411714_)))
                                    (let ((_hd1170811725_
                                           (##car _e1170711722_))
                                          (_tl1170911727_
                                           (##cdr _e1170711722_)))
                                      (if (eq? (gx#stx-e _hd1170811725_) 'in:)
                                          (if (gx#stx-pair? _tl1170911727_)
                                              (let ((_e1171011730_
                                                     (gx#syntax-e
                                                      _tl1170911727_)))
                                                (let ((_hd1171111733_
                                                       (##car _e1171011730_))
                                                      (_tl1171211735_
                                                       (##cdr _e1171011730_)))
                                                  (let* ((_top11738_
                                                          _hd1171111733_)
                                                         (_sub11740_
                                                          _tl1171211735_))
                                                    (if '#t
                                                        '#t
                                                        (_E1170611718_)))))
                                              (_E1170611718_))
                                          (_E1170611718_))))
                                  (_E1170611718_)))))
                      (_E1170511742_))))
                 (_import-runtime?11362_
                  (lambda (_hd11660_)
                    (let* ((_e1166111671_ _hd11660_)
                           (_E1166311675_ (lambda () '#f))
                           (_E1166211699_
                            (lambda ()
                              (if (gx#stx-pair? _e1166111671_)
                                  (let ((_e1166411679_
                                         (gx#syntax-e _e1166111671_)))
                                    (let ((_hd1166511682_
                                           (##car _e1166411679_))
                                          (_tl1166611684_
                                           (##cdr _e1166411679_)))
                                      (if (eq? (gx#stx-e _hd1166511682_)
                                               'runtime:)
                                          (if (gx#stx-pair? _tl1166611684_)
                                              (let ((_e1166711687_
                                                     (gx#syntax-e
                                                      _tl1166611684_)))
                                                (let ((_hd1166811690_
                                                       (##car _e1166711687_))
                                                      (_tl1166911692_
                                                       (##cdr _e1166711687_)))
                                                  (let* ((_top11695_
                                                          _hd1166811690_)
                                                         (_spath11697_
                                                          _tl1166911692_))
                                                    (if '#t
                                                        '#t
                                                        (_E1166311675_)))))
                                              (_E1166311675_))
                                          (_E1166311675_))))
                                  (_E1166311675_)))))
                      (_E1166211699_))))
                 (_import-submodule11363_
                  (lambda (_hd11627_ _K11628_ _rest11629_ _r11630_)
                    (let* ((_e1163111638_ _hd11627_)
                           (_E1163311642_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _e1163111638_)))
                           (_E1163211656_
                            (lambda ()
                              (if (gx#stx-pair? _e1163111638_)
                                  (let ((_e1163411646_
                                         (gx#syntax-e _e1163111638_)))
                                    (let ((_hd1163511649_
                                           (##car _e1163411646_))
                                          (_tl1163611651_
                                           (##cdr _e1163411646_)))
                                      (let ((_spath11654_ _tl1163611651_))
                                        (if '#t
                                            (_import111359_
                                             (_import-spec-source11366_
                                              _spath11654_)
                                             _K11628_
                                             _rest11629_
                                             _r11630_)
                                            (_E1163311642_)))))
                                  (_E1163311642_)))))
                      (_E1163211656_))))
                 (_import-runtime11364_
                  (lambda (_hd11594_ _K11595_ _rest11596_ _r11597_)
                    (let* ((_e1159811605_ _hd11594_)
                           (_E1160011609_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _e1159811605_)))
                           (_E1159911623_
                            (lambda ()
                              (if (gx#stx-pair? _e1159811605_)
                                  (let ((_e1160111613_
                                         (gx#syntax-e _e1159811605_)))
                                    (let ((_hd1160211616_
                                           (##car _e1160111613_))
                                          (_tl1160311618_
                                           (##cdr _e1160111613_)))
                                      (let ((_spath11621_ _tl1160311618_))
                                        (if '#t
                                            (_K11595_
                                             _rest11596_
                                             (cons (_import-spec-source11366_
                                                    _spath11621_)
                                                   _r11597_))
                                            (_E1160011609_)))))
                                  (_E1160011609_)))))
                      (_E1159911623_))))
                 (_import-spec11365_
                  (lambda (_hd11433_ _K11434_ _rest11435_ _r11436_)
                    (let* ((_e1143711454_ _hd11433_)
                           (_E1144611458_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _e1143711454_)))
                           (_E1143911568_
                            (lambda ()
                              (if (gx#stx-pair? _e1143711454_)
                                  (let ((_e1144711462_
                                         (gx#syntax-e _e1143711454_)))
                                    (let ((_hd1144811465_
                                           (##car _e1144711462_))
                                          (_tl1144911467_
                                           (##cdr _e1144711462_)))
                                      (if (gx#stx-pair? _tl1144911467_)
                                          (let ((_e1145011470_
                                                 (gx#syntax-e _tl1144911467_)))
                                            (let ((_hd1145111473_
                                                   (##car _e1145011470_))
                                                  (_tl1145211475_
                                                   (##cdr _e1145011470_)))
                                              (let* ((_path11478_
                                                      _hd1145111473_)
                                                     (_specs11480_
                                                      _tl1145211475_))
                                                (if '#t
                                                    (let ((_src-ctx11482_
                                                           (_import-spec-source11366_
                                                            _path11478_))
                                                          (_exports11483_
                                                           (make-table))
                                                          (_specs11484_
                                                           (gx#syntax->list
                                                            _specs11480_)))
                                                      (begin
                                                        (for-each
                                                         (lambda (_out11486_)
                                                           (table-set!
                                                            _exports11483_
                                                            (cons (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _out11486_
                           '3
                           gx#module-export::t
                           '#f)
                          (##direct-structure-ref
                           _out11486_
                           '4
                           gx#module-export::t
                           '#f))
                    _out11486_))
                 (##structure-ref _src-ctx11482_ '9 gx#module-context::t '#f))
                (_K11434_
                 _rest11435_
                 (foldl1 (lambda (_spec11488_ _r11489_)
                           (let* ((_e1149011506_ _spec11488_)
                                  (_E1149211510_
                                   (lambda ()
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _e1149011506_)))
                                  (_E1149111564_
                                   (lambda ()
                                     (if (gx#stx-pair? _e1149011506_)
                                         (let ((_e1149311514_
                                                (gx#syntax-e _e1149011506_)))
                                           (let ((_hd1149411517_
                                                  (##car _e1149311514_))
                                                 (_tl1149511519_
                                                  (##cdr _e1149311514_)))
                                             (let ((_phi11522_ _hd1149411517_))
                                               (if (gx#stx-pair?
                                                    _tl1149511519_)
                                                   (let ((_e1149611524_
                                                          (gx#syntax-e
                                                           _tl1149511519_)))
                                                     (let ((_hd1149711527_
                                                            (##car _e1149611524_))
                                                           (_tl1149811529_
                                                            (##cdr _e1149611524_)))
                                                       (let ((_name11532_
                                                              _hd1149711527_))
                                                         (if (gx#stx-pair?
                                                              _tl1149811529_)
                                                             (let ((_e1149911534_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _tl1149811529_)))
                       (let ((_hd1150011537_ (##car _e1149911534_))
                             (_tl1150111539_ (##cdr _e1149911534_)))
                         (let ((_src-phi11542_ _hd1150011537_))
                           (if (gx#stx-pair? _tl1150111539_)
                               (let ((_e1150211544_
                                      (gx#syntax-e _tl1150111539_)))
                                 (let ((_hd1150311547_ (##car _e1150211544_))
                                       (_tl1150411549_ (##cdr _e1150211544_)))
                                   (let ((_src-name11552_ _hd1150311547_))
                                     (if (gx#stx-null? _tl1150411549_)
                                         (if (if (gx#stx-fixnum?
                                                  _src-phi11542_)
                                                 (if (gx#identifier?
                                                      _src-name11552_)
                                                     (if (gx#stx-fixnum?
                                                          _phi11522_)
                                                         (gx#identifier?
                                                          _name11532_)
                                                         '#f)
                                                     '#f)
                                                 '#f)
                                             (let ((_src-phi11554_
                                                    (gx#stx-e _src-phi11542_))
                                                   (_src-name11555_
                                                    (gx#core-identifier-key
                                                     _src-name11552_))
                                                   (_phi11556_
                                                    (gx#stx-e _phi11522_))
                                                   (_name11557_
                                                    (gx#core-identifier-key
                                                     _name11532_)))
                                               (let ((_$e11559_
                                                      (table-ref
                                                       _exports11483_
                                                       (cons _src-phi11554_
                                                             _src-name11555_)
                                                       '#f)))
                                                 (if _$e11559_
                                                     ((lambda (_out11562_)
                                                        (cons (gx#core-module-export->import__opt-lambda12280
                                                               _out11562_
                                                               _name11557_
                                                               (fx- _phi11556_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _src-phi11554_))
                      _r11489_))
              _$e11559_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; no matching export"
                                                      _stx11355_
                                                      _hd11433_))))
                                             (_E1149211510_))
                                         (_E1149211510_)))))
                               (_E1149211510_)))))
                     (_E1149211510_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1149211510_)))))
                                         (_E1149211510_)))))
                             (_E1149111564_)))
                         _r11436_
                         _specs11484_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1144611458_)))))
                                          (_E1144611458_))))
                                  (_E1144611458_))))
                           (_E1143811590_
                            (lambda ()
                              (if (gx#stx-pair? _e1143711454_)
                                  (let ((_e1144011572_
                                         (gx#syntax-e _e1143711454_)))
                                    (let ((_hd1144111575_
                                           (##car _e1144011572_))
                                          (_tl1144211577_
                                           (##cdr _e1144011572_)))
                                      (if (gx#stx-pair? _tl1144211577_)
                                          (let ((_e1144311580_
                                                 (gx#syntax-e _tl1144211577_)))
                                            (let ((_hd1144411583_
                                                   (##car _e1144311580_))
                                                  (_tl1144511585_
                                                   (##cdr _e1144311580_)))
                                              (let ((_path11588_
                                                     _hd1144411583_))
                                                (if (gx#stx-null?
                                                     _tl1144511585_)
                                                    (if '#t
                                                        (_K11434_
                                                         _rest11435_
                                                         (cons (_import-spec-source11366_
                                                                _path11588_)
                                                               _r11436_))
                                                        (_E1143911568_))
                                                    (_E1143911568_)))))
                                          (_E1143911568_))))
                                  (_E1143911568_)))))
                      (_E1143811590_))))
                 (_import-spec-source11366_
                  (lambda (_spath11431_)
                    (gx#core-import-nested-module _spath11431_ _stx11355_)))
                 (_import!11367_
                  (lambda (_rbody11380_)
                    (letrec* ((_current-ctx11382_
                               (gx#current-expander-context))
                              (_deps11383_ (make-hash-table-eq))
                              (_bind!11384_
                               (lambda (_hd11429_)
                                 (gx#core-bind-import!__1
                                  _hd11429_
                                  _current-ctx11382_))))
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
                                     (lambda (_ctx11406_ _g14252_)
                                       (gx#eval-module _ctx11406_))
                                     _deps11383_)
                                    _body11389_)))
                               (_K1139411417_
                                (lambda (_rest11411_ _hd11412_)
                                  (begin
                                    (if (##structure-direct-instance-of?
                                         _hd11412_
                                         'gx#module-import::t)
                                        (begin
                                          (_bind!11384_ _hd11412_)
                                          (if (if (fxpositive?
                                                   (##direct-structure-ref
                                                    _hd11412_
                                                    '3
                                                    gx#module-import::t
                                                    '#f))
                                                  (fxzero? (##direct-structure-ref
                                                            (##direct-structure-ref
                                                             _hd11412_
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
                                                 _hd11412_
                                                 '1
                                                 gx#module-import::t
                                                 '#f)
                                                '1
                                                gx#module-export::t
                                                '#f)
                                               '#t)
                                              '#!void))
                                        (if (##structure-direct-instance-of?
                                             _hd11412_
                                             'gx#import-set::t)
                                            (begin
                                              (for-each
                                               _bind!11384_
                                               (##direct-structure-ref
                                                _hd11412_
                                                '3
                                                gx#import-set::t
                                                '#f))
                                              (if (fxpositive?
                                                   (##direct-structure-ref
                                                    _hd11412_
                                                    '2
                                                    gx#import-set::t
                                                    '#f))
                                                  (table-set!
                                                   _deps11383_
                                                   (##direct-structure-ref
                                                    _hd11412_
                                                    '1
                                                    gx#import-set::t
                                                    '#f)
                                                   '#t)
                                                  '#!void))
                                            (let ((_$e11414_
                                                   (##structure-instance-of?
                                                    _hd11412_
                                                    'gx#module-context::t)))
                                              (if _$e11414_
                                                  (values _$e11414_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Unexpected import"
                                                   _stx11355_
                                                   _hd11412_)))))
                                    (_lp11386_
                                     _rest11411_
                                     (cons _hd11412_ _body11389_))))))
                          (if (##pair? _rest1139011398_)
                              (let ((_hd1139511420_ (##car _rest1139011398_))
                                    (_tl1139611422_ (##cdr _rest1139011398_)))
                                (let* ((_hd11425_ _hd1139511420_)
                                       (_rest11427_ _tl1139611422_))
                                  (_K1139411417_ _rest11427_ _hd11425_)))
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
        (lambda (_stx11808_)
          (let ((_internal-expand?11810_ '#f))
            (gx#core-expand-import%__opt-lambda11353
             _stx11808_
             _internal-expand?11810_))))
      (define gx#core-expand-import%
        (lambda _g14254_
          (let ((_g14253_ (length _g14254_)))
            (cond ((fx= _g14253_ 1) (apply gx#core-expand-import%__0 _g14254_))
                  ((fx= _g14253_ 2)
                   (apply gx#core-expand-import%__opt-lambda11353 _g14254_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-expand-import%
                    _g14254_))))))))
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
        (letrec* ((_make-export__opt-lambda11226__1421614217_
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
                  (_make-export__0__1421814221_
                   (lambda (_bind11244_)
                     (let* ((_phi11246_ (gx#current-export-expander-phi))
                            (_ctx11248_ (gx#current-expander-context))
                            (_name11250_ '#f))
                       (_make-export__opt-lambda11226__1421614217_
                        _bind11244_
                        _phi11246_
                        _ctx11248_
                        _name11250_))))
                  (_make-export__1__1421914222_
                   (lambda (_bind11252_ _phi11253_)
                     (let* ((_ctx11255_ (gx#current-expander-context))
                            (_name11257_ '#f))
                       (_make-export__opt-lambda11226__1421614217_
                        _bind11252_
                        _phi11253_
                        _ctx11255_
                        _name11257_))))
                  (_make-export__2__1422014223_
                   (lambda (_bind11259_ _phi11260_ _ctx11261_)
                     (let ((_name11263_ '#f))
                       (_make-export__opt-lambda11226__1421614217_
                        _bind11259_
                        _phi11260_
                        _ctx11261_
                        _name11263_))))
                  (_make-export10794_
                   (lambda _g14256_
                     (let ((_g14255_ (length _g14256_)))
                       (cond ((fx= _g14255_ 1)
                              (apply _make-export__0__1421814221_ _g14256_))
                             ((fx= _g14255_ 2)
                              (apply _make-export__1__1421914222_ _g14256_))
                             ((fx= _g14255_ 3)
                              (apply _make-export__2__1422014223_ _g14256_))
                             ((fx= _g14255_ 4)
                              (apply _make-export__opt-lambda11226__1421614217_
                                     _g14256_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g14256_))))))
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
                                                       (gx#core-resolve-module-path__opt-lambda12695
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
                                         (cons (_make-export__opt-lambda11226__1421614217_
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
                                                   (cons (_make-export__opt-lambda11226__1421614217_
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
                                               (cons (_make-export__0__1421814221_
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
                  (cons (_make-export__2__1422014223_
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
        (lambda _g14258_
          (let ((_g14257_ (length _g14258_)))
            (cond ((fx= _g14257_ 1) (apply gx#core-expand-export%__0 _g14258_))
                  ((fx= _g14257_ 2)
                   (apply gx#core-expand-export%__opt-lambda10789 _g14258_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-expand-export%
                    _g14258_))))))))
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
        (lambda _g14260_
          (let ((_g14259_ (length _g14260_)))
            (cond ((fx= _g14259_ 1) (apply gx#core-bind-feature!__0 _g14260_))
                  ((fx= _g14259_ 2) (apply gx#core-bind-feature!__1 _g14260_))
                  ((fx= _g14259_ 3) (apply gx#core-bind-feature!__2 _g14260_))
                  ((fx= _g14259_ 4)
                   (apply gx#core-bind-feature!__opt-lambda10722 _g14260_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-feature!
                    _g14260_)))))))))
