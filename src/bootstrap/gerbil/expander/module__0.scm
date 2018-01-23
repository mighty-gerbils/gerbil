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
    (lambda _$args14006_
      (apply make-struct-instance gx#module-import::t _$args14006_)))
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
    (lambda _$args14003_
      (apply make-struct-instance gx#module-export::t _$args14003_)))
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
    (lambda _$args14000_
      (apply make-struct-instance gx#import-set::t _$args14000_)))
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
    (lambda _$args13997_
      (apply make-struct-instance gx#export-set::t _$args13997_)))
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
    (lambda _$args13994_
      (apply make-struct-instance gx#import-expander::t _$args13994_)))
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
    (lambda _$args13991_
      (apply make-struct-instance gx#export-expander::t _$args13991_)))
  (define gx#current-import-expander-phi (make-parameter '#f))
  (define gx#current-export-expander-phi (make-parameter '#f))
  (define gx#current-module-reader-path (make-parameter '#f))
  (define gx#current-module-reader-args (make-parameter '#f))
  (define gx#module-context:::init!
    (lambda (_self13985_ _id13986_ _super13987_ _ns13988_ _path13989_)
      (if (##fx< '11 (##vector-length _self13985_))
          (begin
            (##vector-set! _self13985_ '1 _id13986_)
            (##vector-set! _self13985_ '2 (make-hash-table-eq))
            (##vector-set! _self13985_ '3 _super13987_)
            (##vector-set! _self13985_ '4 '#f)
            (##vector-set! _self13985_ '5 '#f)
            (##vector-set! _self13985_ '6 _ns13988_)
            (##vector-set! _self13985_ '7 _path13989_)
            (##vector-set! _self13985_ '8 '())
            (##vector-set! _self13985_ '9 '())
            (##vector-set! _self13985_ '10 '#f)
            (##vector-set! _self13985_ '11 '#f))
          (error '"struct-instance-init!: too many arguments for struct"
                 _self13985_))))
  (bind-method! gx#module-context::t ':init! gx#module-context:::init! '#f)
  (begin
    (define gx#prelude-context:::init!__opt-lambda13827
      (lambda (_self13829_ _ctx13830_ _root13831_)
        (let ((_super13839_
               (let ((_$e13833_ _root13831_))
                 (if _$e13833_
                     _$e13833_
                     (let ((_$e13836_ (gx#core-context-root__0)))
                       (if _$e13836_
                           _$e13836_
                           (make-struct-instance gx#root-context::t)))))))
          (if _ctx13830_
              (let ((_id13842_
                     (##structure-ref
                      _ctx13830_
                      '1
                      gx#expander-context::t
                      '#f))
                    (_path13843_
                     (##structure-ref _ctx13830_ '7 gx#module-context::t '#f))
                    (_in13844_
                     (map gx#core-module-export->import
                          (##structure-ref
                           _ctx13830_
                           '9
                           gx#module-context::t
                           '#f)))
                    (_e13845_
                     (make-promise (lambda () (gx#eval-module _ctx13830_)))))
                (begin
                  (if (##fx< '8 (##vector-length _self13829_))
                      (begin
                        (##vector-set! _self13829_ '1 _id13842_)
                        (##vector-set! _self13829_ '2 (make-hash-table-eq))
                        (##vector-set! _self13829_ '3 _super13839_)
                        (##vector-set! _self13829_ '4 '#f)
                        (##vector-set! _self13829_ '5 '#f)
                        (##vector-set! _self13829_ '6 _path13843_)
                        (##vector-set! _self13829_ '7 _in13844_)
                        (##vector-set! _self13829_ '8 _e13845_))
                      (error '"struct-instance-init!: too many arguments for struct"
                             _self13829_))
                  (for-each
                   (lambda (_g1384613848_)
                     (gx#core-bind-weak-import!__opt-lambda12388
                      _g1384613848_
                      _self13829_))
                   _in13844_)))
              (if (##fx< '8 (##vector-length _self13829_))
                  (begin
                    (##vector-set! _self13829_ '1 '#f)
                    (##vector-set! _self13829_ '2 (make-hash-table-eq))
                    (##vector-set! _self13829_ '3 _super13839_)
                    (##vector-set! _self13829_ '4 '#f)
                    (##vector-set! _self13829_ '5 '#f)
                    (##vector-set! _self13829_ '6 '#f)
                    (##vector-set! _self13829_ '7 '())
                    (##vector-set! _self13829_ '8 '#f))
                  (error '"struct-instance-init!: too many arguments for struct"
                         _self13829_))))))
    (begin
      (define gx#prelude-context:::init!__0
        (lambda (_self13854_ _ctx13855_)
          (let ((_root13857_ '#f))
            (gx#prelude-context:::init!__opt-lambda13827
             _self13854_
             _ctx13855_
             _root13857_))))
      (define gx#prelude-context:::init!
        (lambda _g14022_
          (let ((_g14021_ (length _g14022_)))
            (cond ((fx= _g14021_ 2)
                   (apply gx#prelude-context:::init!__0 _g14022_))
                  ((fx= _g14021_ 3)
                   (apply gx#prelude-context:::init!__opt-lambda13827
                          _g14022_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#prelude-context:::init!
                    _g14022_))))))))
  (bind-method! gx#prelude-context::t ':init! gx#prelude-context:::init! '#f)
  (define gx#import-expander:::init!
    (lambda (_self13703_ _e13704_)
      (if (##fx< '3 (##vector-length _self13703_))
          (begin
            (##vector-set! _self13703_ '1 _e13704_)
            (##vector-set! _self13703_ '2 (gx#current-expander-context))
            (##vector-set! _self13703_ '3 (fx- (gx#current-expander-phi) '1)))
          (error '"struct-instance-init!: too many arguments for struct"
                 _self13703_))))
  (bind-method! gx#import-expander::t ':init! gx#import-expander:::init! '#f)
  (define gx#export-expander:::init!
    (lambda (_self13578_ _e13579_)
      (if (##fx< '3 (##vector-length _self13578_))
          (begin
            (##vector-set! _self13578_ '1 _e13579_)
            (##vector-set! _self13578_ '2 (gx#current-expander-context))
            (##vector-set! _self13578_ '3 (fx- (gx#current-expander-phi) '1)))
          (error '"struct-instance-init!: too many arguments for struct"
                 _self13578_))))
  (bind-method! gx#export-expander::t ':init! gx#export-expander:::init! '#f)
  (define gx#import-expander::apply-import-expander
    (lambda (_g1344813451_ _g1344913453_)
      (gx#core-apply-user-expander__opt-lambda5409
       _g1344813451_
       _g1344913453_
       'apply-import-expander)))
  (bind-method!
   gx#import-expander::t
   'apply-import-expander
   gx#import-expander::apply-import-expander
   '#f)
  (define gx#export-expander::apply-export-expander
    (lambda (_g1331913322_ _g1332013324_)
      (gx#core-apply-user-expander__opt-lambda5409
       _g1331913322_
       _g1332013324_
       'apply-export-expander)))
  (bind-method!
   gx#export-expander::t
   'apply-export-expander
   gx#export-expander::apply-export-expander
   '#f)
  (define gx#module-source-path
    (lambda (_ctx13190_)
      (let* ((_path13192_
              (##structure-ref _ctx13190_ '7 gx#module-context::t '#f))
             (_path13194_
              (if (pair? _path13192_) (last _path13192_) _path13192_)))
        (if (string? _path13194_) _path13194_ '#f))))
  (begin
    (define gx#import-module__opt-lambda13164
      (lambda (_path13166_ _reload?13167_ _eval?13168_)
        (let ((_ctx13170_
               ((gx#current-expander-module-import)
                _path13166_
                _reload?13167_)))
          (begin
            (if (if _ctx13170_ _eval?13168_ '#f)
                (gx#eval-module _ctx13170_)
                '#!void)
            _ctx13170_))))
    (begin
      (define gx#import-module__0
        (lambda (_path13175_)
          (let* ((_reload?13177_ '#f) (_eval?13179_ '#f))
            (gx#import-module__opt-lambda13164
             _path13175_
             _reload?13177_
             _eval?13179_))))
      (define gx#import-module__1
        (lambda (_path13181_ _reload?13182_)
          (let ((_eval?13184_ '#f))
            (gx#import-module__opt-lambda13164
             _path13181_
             _reload?13182_
             _eval?13184_))))
      (define gx#import-module
        (lambda _g14024_
          (let ((_g14023_ (length _g14024_)))
            (cond ((fx= _g14023_ 1) (apply gx#import-module__0 _g14024_))
                  ((fx= _g14023_ 2) (apply gx#import-module__1 _g14024_))
                  ((fx= _g14023_ 3)
                   (apply gx#import-module__opt-lambda13164 _g14024_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#import-module
                    _g14024_))))))))
  (define gx#eval-module
    (lambda (_mod13163_) ((gx#current-expander-module-eval) _mod13163_)))
  (define gx#core-eval-module
    (lambda (_obj13148_)
      (letrec ((_force-e13150_
                (lambda (_getf13159_ _e13160_)
                  (call-with-parameters
                   (lambda () (force (_getf13159_ _e13160_)))
                   gx#current-expander-context
                   _e13160_
                   gx#current-expander-phi
                   '0))))
        (let _recur13152_ ((_e13154_ _obj13148_))
          (if (##structure-instance-of? _e13154_ 'gx#module-context::t)
              (begin
                (let ((_$e13156_
                       (gx#core-context-prelude__opt-lambda13129 _e13154_)))
                  (if _$e13156_ (_recur13152_ _$e13156_) '#!void))
                (_force-e13150_ gx#module-context-e _e13154_))
              (if (##structure-instance-of? _e13154_ 'gx#prelude-context::t)
                  (_force-e13150_ gx#prelude-context-e _e13154_)
                  (if (gx#stx-string? _e13154_)
                      (_recur13152_
                       (gx#import-module__0
                        (gx#core-resolve-module-path__0 _e13154_)))
                      (if (gx#core-library-module-path? _e13154_)
                          (_recur13152_
                           (gx#import-module__0
                            (gx#core-resolve-library-module-path _e13154_)))
                          (error '"Cannot eval module" _obj13148_)))))))))
  (begin
    (define gx#core-context-prelude__opt-lambda13129
      (lambda (_ctx13131_)
        (let _lp13133_ ((_e13135_ _ctx13131_))
          (if (let ((_$e13137_
                     (##structure-instance-of?
                      _e13135_
                      'gx#module-context::t)))
                (if _$e13137_
                    _$e13137_
                    (##structure-instance-of? _e13135_ 'gx#local-context::t)))
              (_lp13133_ (##structure-ref _e13135_ '3 gx#phi-context::t '#f))
              (if (##structure-instance-of? _e13135_ 'gx#prelude-context::t)
                  _e13135_
                  '#f)))))
    (begin
      (define gx#core-context-prelude__0
        (lambda ()
          (let ((_ctx13144_ (gx#current-expander-context)))
            (gx#core-context-prelude__opt-lambda13129 _ctx13144_))))
      (define gx#core-context-prelude
        (lambda _g14026_
          (let ((_g14025_ (length _g14026_)))
            (cond ((fx= _g14025_ 0)
                   (apply gx#core-context-prelude__0 _g14026_))
                  ((fx= _g14025_ 1)
                   (apply gx#core-context-prelude__opt-lambda13129 _g14026_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-context-prelude
                    _g14026_))))))))
  (define gx#core-module->prelude-context
    (lambda (_ctx13121_)
      (let* ((_ht13123_ (gx#current-expander-module-registry))
             (_$e13125_ (table-ref _ht13123_ _ctx13121_ '#f)))
        (if _$e13125_
            (values _$e13125_)
            (let ((_pre13128_
                   (let ((__obj14017 (make-object gx#prelude-context::t '8)))
                     (begin
                       (gx#prelude-context:::init!__0 __obj14017 _ctx13121_)
                       __obj14017))))
              (begin
                (table-set! _ht13123_ _ctx13121_ _pre13128_)
                _pre13128_))))))
  (begin
    (define gx#core-import-module__opt-lambda13000
      (lambda (_rpath13002_ _reload?13003_)
        (letrec ((_import-source13005_
                  (lambda (_path13090_)
                    (begin
                      (if (member _path13090_ (gx#current-expander-path))
                          (error '"Cyclic expansion" _path13090_)
                          '#!void)
                      (call-with-parameters
                       (lambda ()
                         (let ((_g14027_ (gx#core-read-module _path13090_)))
                           (begin
                             (let ((_g14028_ (values-count _g14027_)))
                               (if (not (fx= _g14028_ 4))
                                   (error "Context expects 4 values"
                                          _g14028_)))
                             (let ((_pre13093_ (values-ref _g14027_ 0))
                                   (_id13094_ (values-ref _g14027_ 1))
                                   (_ns13095_ (values-ref _g14027_ 2))
                                   (_body13096_ (values-ref _g14027_ 3)))
                               (let* ((_prelude13101_
                                       (if (##structure-instance-of?
                                            _pre13093_
                                            'gx#prelude-context::t)
                                           _pre13093_
                                           (if (##structure-instance-of?
                                                _pre13093_
                                                'gx#module-context::t)
                                               (gx#core-module->prelude-context
                                                _pre13093_)
                                               (if (string? _pre13093_)
                                                   (gx#core-module->prelude-context
                                                    (gx#core-import-module__0
                                                     _pre13093_))
                                                   (if (not _pre13093_)
                                                       (let ((_$e13098_
                                                              (gx#current-expander-module-prelude)))
                                                         (if _$e13098_
                                                             _$e13098_
                                                             (let ((__obj14018
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (make-object gx#prelude-context::t '8)))
                       (begin
                         (gx#prelude-context:::init!__0 __obj14018 '#f)
                         __obj14018))))
               (error '"Cannot import module; unknown prelude"
                      _rpath13002_
                      _pre13093_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_ctx13103_
                                       (let ((__obj14019
                                              (make-object
                                               gx#module-context::t
                                               '11)))
                                         (begin
                                           (gx#module-context:::init!
                                            __obj14019
                                            _id13094_
                                            _prelude13101_
                                            _ns13095_
                                            _path13090_)
                                           __obj14019)))
                                      (_body13105_
                                       (gx#core-expand-module-begin
                                        _body13096_
                                        _ctx13103_))
                                      (_body13107_
                                       (gx#core-quote-syntax__opt-lambda4639
                                        (gx#core-cons '%#begin _body13105_)
                                        _path13090_
                                        _ctx13103_
                                        '())))
                                 (begin
                                   (##structure-set!
                                    _ctx13103_
                                    (make-promise
                                     (lambda () (gx#eval-syntax* _body13107_)))
                                    '10
                                    gx#module-context::t
                                    '#f)
                                   (##structure-set!
                                    _ctx13103_
                                    _body13107_
                                    '11
                                    gx#module-context::t
                                    '#f)
                                   (table-set!
                                    (gx#current-expander-module-registry)
                                    _path13090_
                                    _ctx13103_)
                                   (table-set!
                                    (gx#current-expander-module-registry)
                                    _id13094_
                                    _ctx13103_)
                                   _ctx13103_))))))
                       gx#current-expander-context
                       (gx#core-context-root__0)
                       gx#current-expander-marks
                       '()
                       gx#current-expander-phi
                       '0
                       gx#current-expander-path
                       (cons _path13090_ (gx#current-expander-path))
                       gx#current-import-expander-phi
                       '#f
                       gx#current-export-expander-phi
                       '#f))))
                 (_import-submodule13006_
                  (lambda (_rpath13018_)
                    (let* ((_rpath1301913026_ _rpath13018_)
                           (_E1302113030_
                            (lambda ()
                              (error '"No clause matching" _rpath1301913026_)))
                           (_K1302213078_
                            (lambda (_refs13033_ _origin13034_)
                              (let ((_ctx13036_
                                     (if _origin13034_
                                         (gx#core-import-module__opt-lambda13000
                                          _origin13034_
                                          _reload?13003_)
                                         (gx#current-expander-context))))
                                (let _lp13038_ ((_rest13040_ _refs13033_)
                                                (_ctx13041_ _ctx13036_))
                                  (let* ((_rest1304213050_ _rest13040_)
                                         (_E1304513054_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _rest1304213050_)))
                                         (_else1304413058_
                                          (lambda () _ctx13041_))
                                         (_K1304613066_
                                          (lambda (_rest13061_ _id13062_)
                                            (let ((_bind13064_
                                                   (gx#resolve-identifier__opt-lambda5250
                                                    _id13062_
                                                    '0
                                                    _ctx13041_)))
                                              (if (if (##structure-direct-instance-of?
                                                       _bind13064_
                                                       'gx#syntax-binding::t)
                                                      (##structure-instance-of?
                                                       (##direct-structure-ref
                                                        _bind13064_
                                                        '4
                                                        gx#syntax-binding::t
                                                        '#f)
                                                       'gx#module-context::t)
                                                      '#f)
                                                  (_lp13038_
                                                   _rest13061_
                                                   (##direct-structure-ref
                                                    _bind13064_
                                                    '4
                                                    gx#syntax-binding::t
                                                    '#f))
                                                  (error '"Cannot import submodule; not bound as a module"
                                                         _rpath13018_
                                                         _id13062_
                                                         _bind13064_))))))
                                    (if (##pair? _rest1304213050_)
                                        (let ((_hd1304713069_
                                               (##car _rest1304213050_))
                                              (_tl1304813071_
                                               (##cdr _rest1304213050_)))
                                          (let* ((_id13074_ _hd1304713069_)
                                                 (_rest13076_ _tl1304813071_))
                                            (_K1304613066_
                                             _rest13076_
                                             _id13074_)))
                                        (_else1304413058_))))))))
                      (if (##pair? _rpath1301913026_)
                          (let ((_hd1302313081_ (##car _rpath1301913026_))
                                (_tl1302413083_ (##cdr _rpath1301913026_)))
                            (let* ((_origin13086_ _hd1302313081_)
                                   (_refs13088_ _tl1302413083_))
                              (_K1302213078_ _refs13088_ _origin13086_)))
                          (_E1302113030_))))))
          (let ((_$e13008_
                 (if (not _reload?13003_)
                     (table-ref
                      (gx#current-expander-module-registry)
                      _rpath13002_
                      '#f)
                     '#f)))
            (if _$e13008_
                (values _$e13008_)
                (if (list? _rpath13002_)
                    (_import-submodule13006_ _rpath13002_)
                    (if (gx#core-library-module-path? _rpath13002_)
                        (let ((_ctx13011_
                               (gx#core-import-module__opt-lambda13000
                                (gx#core-resolve-library-module-path
                                 _rpath13002_)
                                _reload?13003_)))
                          (begin
                            (table-set!
                             (gx#current-expander-module-registry)
                             _rpath13002_
                             _ctx13011_)
                            _ctx13011_))
                        (let* ((_npath13013_ (path-normalize _rpath13002_))
                               (_$e13015_
                                (if (not _reload?13003_)
                                    (table-ref
                                     (gx#current-expander-module-registry)
                                     _npath13013_
                                     '#f)
                                    '#f)))
                          (if _$e13015_
                              (values _$e13015_)
                              (_import-source13005_ _npath13013_))))))))))
    (begin
      (define gx#core-import-module__0
        (lambda (_rpath13114_)
          (let ((_reload?13116_ '#f))
            (gx#core-import-module__opt-lambda13000
             _rpath13114_
             _reload?13116_))))
      (define gx#core-import-module
        (lambda _g14030_
          (let ((_g14029_ (length _g14030_)))
            (cond ((fx= _g14029_ 1) (apply gx#core-import-module__0 _g14030_))
                  ((fx= _g14029_ 2)
                   (apply gx#core-import-module__opt-lambda13000 _g14030_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-import-module
                    _g14030_))))))))
  (define gx#core-read-module
    (lambda (_path12996_)
      (with-exception-catcher
       (lambda (_exn12998_)
         (if (if (datum-parsing-exception? _exn12998_)
                 (eq? (datum-parsing-exception-filepos _exn12998_) '0)
                 '#f)
             (gx#core-read-module/lang _path12996_)
             (raise _exn12998_)))
       (lambda () (gx#core-read-module/sexp _path12996_)))))
  (define gx#core-read-module/sexp
    (lambda (_path12856_)
      (let _lp12858_ ((_body12860_ (read-syntax-from-file _path12856_))
                      (_pre12861_ '#f)
                      (_ns12862_ '#f)
                      (_pkg12863_ '#f))
        (let* ((_e1286412888_ _body12860_)
               (_E1288012910_
                (lambda ()
                  (let ((_g14031_
                         (if _pkg12863_
                             (values _pre12861_ _ns12862_ _pkg12863_)
                             (gx#core-read-module-package
                              _path12856_
                              _pre12861_
                              _ns12862_))))
                    (begin
                      (let ((_g14032_ (values-count _g14031_)))
                        (if (not (fx= _g14032_ 3))
                            (error "Context expects 3 values" _g14032_)))
                      (let ((_pre12892_ (values-ref _g14031_ 0))
                            (_ns12893_ (values-ref _g14031_ 1))
                            (_pkg12894_ (values-ref _g14031_ 2)))
                        (let* ((_prelude12896_
                                (if (gx#core-bound-module-prelude? _pre12892_)
                                    (gx#syntax-local-e__0 _pre12892_)
                                    (if (gx#core-library-module-path?
                                         _pre12892_)
                                        (gx#core-resolve-library-module-path
                                         _pre12892_)
                                        (if (gx#stx-string? _pre12892_)
                                            (gx#core-resolve-module-path__opt-lambda12619
                                             _pre12892_
                                             _path12856_)
                                            (gx#stx-e _pre12892_)))))
                               (_path-id12898_
                                (gx#core-module-path->namespace _path12856_))
                               (_pkg-id12900_
                                (if _pkg12894_
                                    (string-append
                                     _pkg12894_
                                     '"/"
                                     _path-id12898_)
                                    _path-id12898_))
                               (_module-id12902_
                                (string->symbol _pkg-id12900_))
                               (_module-ns12907_
                                (let ((_$e12904_ _ns12893_))
                                  (if _$e12904_ _$e12904_ _pkg-id12900_))))
                          (values _prelude12896_
                                  _module-id12902_
                                  _module-ns12907_
                                  _body12860_)))))))
               (_E1287312939_
                (lambda ()
                  (if (gx#stx-pair? _e1286412888_)
                      (let ((_e1288112914_ (gx#syntax-e _e1286412888_)))
                        (let ((_hd1288212917_ (##car _e1288112914_))
                              (_tl1288312919_ (##cdr _e1288112914_)))
                          (if (eq? (gx#stx-e _hd1288212917_) 'package:)
                              (if (gx#stx-pair? _tl1288312919_)
                                  (let ((_e1288412922_
                                         (gx#syntax-e _tl1288312919_)))
                                    (let ((_hd1288512925_
                                           (##car _e1288412922_))
                                          (_tl1288612927_
                                           (##cdr _e1288412922_)))
                                      (let* ((_pkg12930_ _hd1288512925_)
                                             (_rest12932_ _tl1288612927_))
                                        (if '#t
                                            (let ((_pkg12937_
                                                   (if (gx#identifier?
                                                        _pkg12930_)
                                                       (symbol->string
                                                        (gx#stx-e _pkg12930_))
                                                       (if (let ((_$e12934_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-string? _pkg12930_)))
                     (if _$e12934_ _$e12934_ (gx#stx-false? _pkg12930_)))
                   (gx#stx-e _pkg12930_)
                   (gx#raise-syntax-error
                    'import
                    '"Bad syntax; Illegal package name"
                    _pkg12930_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_lp12858_
                                               _rest12932_
                                               _pre12861_
                                               _ns12862_
                                               _pkg12937_))
                                            (_E1288012910_)))))
                                  (_E1288012910_))
                              (_E1288012910_))))
                      (_E1288012910_))))
               (_E1286612968_
                (lambda ()
                  (if (gx#stx-pair? _e1286412888_)
                      (let ((_e1287412943_ (gx#syntax-e _e1286412888_)))
                        (let ((_hd1287512946_ (##car _e1287412943_))
                              (_tl1287612948_ (##cdr _e1287412943_)))
                          (if (eq? (gx#stx-e _hd1287512946_) 'namespace:)
                              (if (gx#stx-pair? _tl1287612948_)
                                  (let ((_e1287712951_
                                         (gx#syntax-e _tl1287612948_)))
                                    (let ((_hd1287812954_
                                           (##car _e1287712951_))
                                          (_tl1287912956_
                                           (##cdr _e1287712951_)))
                                      (let* ((_ns12959_ _hd1287812954_)
                                             (_rest12961_ _tl1287912956_))
                                        (if '#t
                                            (let ((_ns12966_
                                                   (if (gx#identifier?
                                                        _ns12959_)
                                                       (symbol->string
                                                        (gx#stx-e _ns12959_))
                                                       (if (let ((_$e12963_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-string? _ns12959_)))
                     (if _$e12963_ _$e12963_ (gx#stx-false? _ns12959_)))
                   (gx#stx-e _ns12959_)
                   (gx#raise-syntax-error
                    'import
                    '"Bad syntax; illegal namespace"
                    _ns12959_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_lp12858_
                                               _rest12961_
                                               _pre12861_
                                               _ns12966_
                                               _pkg12863_))
                                            (_E1287312939_)))))
                                  (_E1287312939_))
                              (_E1287312939_))))
                      (_E1287312939_))))
               (_E1286512992_
                (lambda ()
                  (if (gx#stx-pair? _e1286412888_)
                      (let ((_e1286712972_ (gx#syntax-e _e1286412888_)))
                        (let ((_hd1286812975_ (##car _e1286712972_))
                              (_tl1286912977_ (##cdr _e1286712972_)))
                          (if (eq? (gx#stx-e _hd1286812975_) 'prelude:)
                              (if (gx#stx-pair? _tl1286912977_)
                                  (let ((_e1287012980_
                                         (gx#syntax-e _tl1286912977_)))
                                    (let ((_hd1287112983_
                                           (##car _e1287012980_))
                                          (_tl1287212985_
                                           (##cdr _e1287012980_)))
                                      (let* ((_prelude12988_ _hd1287112983_)
                                             (_rest12990_ _tl1287212985_))
                                        (if '#t
                                            (_lp12858_
                                             _rest12990_
                                             _prelude12988_
                                             _ns12862_
                                             _pkg12863_)
                                            (_E1286612968_)))))
                                  (_E1286612968_))
                              (_E1286612968_))))
                      (_E1286612968_)))))
          (_E1286512992_)))))
  (define gx#core-read-module/lang
    (lambda (_path12692_)
      (letrec ((_read-body12694_
                (lambda (_inp12775_
                         _pre12776_
                         _ns12777_
                         _pkg12778_
                         _args12779_)
                  (let ((_g14033_
                         (if _pkg12778_
                             (values _pre12776_ _ns12777_ _pkg12778_)
                             (gx#core-read-module-package
                              _path12692_
                              _pre12776_
                              _ns12777_))))
                    (begin
                      (let ((_g14034_ (values-count _g14033_)))
                        (if (not (fx= _g14034_ 3))
                            (error "Context expects 3 values" _g14034_)))
                      (let ((_pre12781_ (values-ref _g14033_ 0))
                            (_ns12782_ (values-ref _g14033_ 1))
                            (_pkg12783_ (values-ref _g14033_ 2)))
                        (let* ((_prelude12785_
                                (gx#import-module__0 _pre12781_))
                               (_read-module-body12839_
                                (let ((_$e12831_
                                       (find (lambda (_e1278612788_)
                                               (let* ((_g1279012800_
                                                       _e1278612788_)
                                                      (_E1279312804_
                                                       (lambda ()
                                                         (error '"No clause matching"
                                                                _g1279012800_)))
                                                      (_else1279212808_
                                                       (lambda () '#f))
                                                      (_K1279412812_
                                                       (lambda () '#t)))
                                                 (if (##structure-direct-instance-of?
                                                      _g1279012800_
                                                      (##type-id
                                                       gx#module-export::t))
                                                     (let* ((_e1279512815_
                                                             (##vector-ref
                                                              _g1279012800_
                                                              '1))
                                                            (_e1279612818_
                                                             (##vector-ref
                                                              _g1279012800_
                                                              '2))
                                                            (_e1279712821_
                                                             (##vector-ref
                                                              _g1279012800_
                                                              '3)))
                                                       (if (##eq? _e1279712821_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '1)
                   (let ((_e1279812824_ (##vector-ref _g1279012800_ '4)))
                     (if ((lambda (_g1282612828_)
                            (eq? _g1282612828_ 'read-module-body))
                          _e1279812824_)
                         (_K1279412812_)
                         (_else1279212808_)))
                   (_else1279212808_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_else1279212808_))))
                                             (##structure-ref
                                              _prelude12785_
                                              '9
                                              gx#module-context::t
                                              '#f))))
                                  (if _$e12831_
                                      ((lambda (_xport12834_)
                                         (let ((_proc12837_
                                                (with-exception-catcher
                                                 void
                                                 (lambda ()
                                                   (gx#eval-syntax__0
                                                    (##structure-ref
                                                     (gx#core-resolve-module-export
                                                      _xport12834_)
                                                     '1
                                                     gx#binding::t
                                                     '#f))))))
                                           (if (procedure? _proc12837_)
                                               _proc12837_
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Illegal #lang prelude; read-module-body is not a procedure"
                                                _path12692_
                                                _pre12781_
                                                _proc12837_))))
                                       _$e12831_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Illegal #lang prelude; does not export read-module-body for syntax"
                                       _path12692_
                                       _pre12781_))))
                               (_path-id12841_
                                (gx#core-module-path->namespace _path12692_))
                               (_pkg-id12843_
                                (if _pkg12783_
                                    (string-append
                                     _pkg12783_
                                     '"/"
                                     _path-id12841_)
                                    _path-id12841_))
                               (_module-id12845_
                                (string->symbol _pkg-id12843_))
                               (_module-ns12850_
                                (let ((_$e12847_ _ns12782_))
                                  (if _$e12847_ _$e12847_ _pkg-id12843_)))
                               (_body12853_
                                (call-with-parameters
                                 (lambda ()
                                   (_read-module-body12839_ _inp12775_))
                                 gx#current-module-reader-path
                                 _path12692_
                                 gx#current-module-reader-args
                                 _args12779_)))
                          (values _prelude12785_
                                  _module-id12845_
                                  _module-ns12850_
                                  _body12853_)))))))
               (_string-e12695_
                (lambda (_obj12772_ _what12773_)
                  (if (string? _obj12772_)
                      _obj12772_
                      (if (symbol? _obj12772_)
                          (symbol->string _obj12772_)
                          (gx#raise-syntax-error
                           '#f
                           (string-append '"Illegal module " _what12773_)
                           _path12692_
                           _obj12772_)))))
               (_read-lang-args12696_
                (lambda (_inp12727_ _args12728_)
                  (let* ((_args1272912737_ _args12728_)
                         (_E1273212741_
                          (lambda ()
                            (error '"No clause matching" _args1272912737_)))
                         (_else1273112745_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Illegal #lang arguments; missing prelude"
                             _path12692_)))
                         (_K1273312760_
                          (lambda (_args12748_ _prelude12749_)
                            (let* ((_pkg12751_ (pgetq 'package: _args12748_))
                                   (_pkg12753_
                                    (if _pkg12751_
                                        (_string-e12695_ _pkg12751_ '"package")
                                        '#f))
                                   (_ns12755_ (pgetq 'namespace: _args12748_))
                                   (_ns12757_
                                    (if _ns12755_
                                        (_string-e12695_
                                         _ns12755_
                                         '"namespace")
                                        '#f)))
                              (_read-body12694_
                               _inp12727_
                               _prelude12749_
                               _ns12757_
                               _pkg12753_
                               _args12748_)))))
                    (if (##pair? _args1272912737_)
                        (let ((_hd1273412763_ (##car _args1272912737_))
                              (_tl1273512765_ (##cdr _args1272912737_)))
                          (let* ((_prelude12768_ _hd1273412763_)
                                 (_args12770_ _tl1273512765_))
                            (_K1273312760_ _args12770_ _prelude12768_)))
                        (_else1273112745_)))))
               (_read-lang12697_
                (lambda (_inp12702_)
                  (let* ((_head12704_ (read-line _inp12702_))
                         (_$e12706_ (string-index _head12704_ '#\space)))
                    (if _$e12706_
                        ((lambda (_ix12709_)
                           (let ((_lang12711_
                                  (substring _head12704_ '0 _ix12709_)))
                             (if (equal? _lang12711_ '"#lang")
                                 (let* ((_rest12713_
                                         (substring
                                          _head12704_
                                          (fx+ _ix12709_ '1)
                                          (string-length _head12704_)))
                                        (_args12724_
                                         (with-exception-catcher
                                          (lambda (_g1271412716_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Illegal #lang arguments"
                                             _path12692_
                                             _g1271412716_))
                                          (lambda ()
                                            (call-with-input-string
                                             _rest12713_
                                             (lambda (_g1271912721_)
                                               (read-all
                                                _g1271912721_
                                                read)))))))
                                   (_read-lang-args12696_
                                    _inp12702_
                                    _args12724_))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Illegal module syntax"
                                  _path12692_))))
                         _$e12706_)
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module syntax"
                         _path12692_)))))
               (_read-e12698_
                (lambda (_inp12700_)
                  (if (eq? (peek-char _inp12700_) '#\#)
                      (_read-lang12697_ _inp12700_)
                      (gx#raise-syntax-error
                       '#f
                       '"Illegal module syntax"
                       _path12692_)))))
        (call-with-input-file _path12692_ _read-e12698_))))
  (define gx#core-read-module-package
    (lambda (_path12646_ _pre12647_ _ns12648_)
      (letrec ((_string-e12650_
                (lambda (_e12690_)
                  (if (symbol? _e12690_)
                      (symbol->string _e12690_)
                      (if (string? _e12690_)
                          _e12690_
                          (gx#raise-syntax-error
                           '#f
                           '"Malformed package info; unexpected datum"
                           _e12690_))))))
        (let _lp12652_ ((_dir12654_ (path-directory _path12646_))
                        (_pkg-path12655_ '()))
          (let ((_gerbil.pkg12657_ (path-expand '"gerbil.pkg" _dir12654_)))
            (if (file-exists? _gerbil.pkg12657_)
                (let ((_plist12659_
                       (gx#core-library-package-plist__opt-lambda12511
                        _dir12654_
                        '#t)))
                  (if (null? _plist12659_)
                      (let ((_pkg12661_
                             (if (not (null? _pkg-path12655_))
                                 (string-join _pkg-path12655_ '"/")
                                 '#f)))
                        (values _pre12647_ _ns12648_ _pkg12661_))
                      (if (list? _plist12659_)
                          (let* ((_root12663_ (pgetq 'package: _plist12659_))
                                 (_pkg12667_
                                  (let ((_pkg-path12665_
                                         (if _root12663_
                                             (cons (_string-e12650_
                                                    _root12663_)
                                                   _pkg-path12655_)
                                             _pkg-path12655_)))
                                    (if (not (null? _pkg-path12665_))
                                        (string-join _pkg-path12665_ '"/")
                                        '#f)))
                                 (_ns12674_
                                  (let ((_ns12672_
                                         (let ((_$e12669_ _ns12648_))
                                           (if _$e12669_
                                               _$e12669_
                                               (pgetq 'namespace:
                                                      _plist12659_)))))
                                    (if _ns12672_
                                        (_string-e12650_ _ns12672_)
                                        '#f)))
                                 (_pre12679_
                                  (let ((_$e12676_ _pre12647_))
                                    (if _$e12676_
                                        _$e12676_
                                        (pgetq 'prelude: _plist12659_)))))
                            (values _pre12679_ _ns12674_ _pkg12667_))
                          (gx#raise-syntax-error
                           '#f
                           '"Malformed package info; unexpected datum"
                           _plist12659_))))
                (let ((_dir*12682_
                       (path-strip-trailing-directory-separator _dir12654_)))
                  (if (let ((_$e12684_ (string-empty? _dir*12682_)))
                        (if _$e12684_
                            _$e12684_
                            (equal? _dir12654_ _dir*12682_)))
                      (values _pre12647_ _ns12648_ '#f)
                      (let ((_xpath12687_ (path-strip-directory _dir*12682_))
                            (_xdir12688_ (path-directory _dir*12682_)))
                        (_lp12652_
                         _xdir12688_
                         (cons _xpath12687_ _pkg-path12655_)))))))))))
  (define gx#core-module-path->namespace
    (lambda (_path12644_)
      (path-strip-extension (path-strip-directory _path12644_))))
  (define gx#core-module-path->id
    (lambda (_path12642_)
      (string->symbol (gx#core-module-path->namespace _path12642_))))
  (begin
    (define gx#core-resolve-module-path__opt-lambda12619
      (lambda (_stx-path12621_ _rel12622_)
        (let* ((_path12624_ (gx#stx-e _stx-path12621_))
               (_path12626_
                (if (string-empty? (path-extension _path12624_))
                    (string-append _path12624_ '".ss")
                    _path12624_)))
          (gx#core-resolve-path__opt-lambda4603
           _path12626_
           (let ((_$e12629_ (gx#stx-source _stx-path12621_)))
             (if _$e12629_ _$e12629_ _rel12622_))))))
    (begin
      (define gx#core-resolve-module-path__0
        (lambda (_stx-path12635_)
          (let ((_rel12637_ '#f))
            (gx#core-resolve-module-path__opt-lambda12619
             _stx-path12635_
             _rel12637_))))
      (define gx#core-resolve-module-path
        (lambda _g14036_
          (let ((_g14035_ (length _g14036_)))
            (cond ((fx= _g14035_ 1)
                   (apply gx#core-resolve-module-path__0 _g14036_))
                  ((fx= _g14035_ 2)
                   (apply gx#core-resolve-module-path__opt-lambda12619
                          _g14036_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-resolve-module-path
                    _g14036_))))))))
  (define gx#core-resolve-library-module-path
    (lambda (_libpath12548_)
      (let* ((_spath12550_ (symbol->string (gx#stx-e _libpath12548_)))
             (_spath12552_
              (substring _spath12550_ '1 (string-length _spath12550_)))
             (_ext12554_ (path-extension _spath12552_))
             (_ssi12556_
              (if (string-empty? _ext12554_)
                  (string-append _spath12552_ '".ssi")
                  (string-append (path-strip-extension _spath12552_) '".ssi")))
             (_src12558_
              (if (string-empty? _ext12554_)
                  (string-append _spath12552_ '".ss")
                  _spath12552_)))
        (let _lp12561_ ((_rest12563_
                         (gx#current-expander-module-library-path)))
          (let* ((_rest1256412573_ _rest12563_)
                 (_E1256712577_
                  (lambda () (error '"No clause matching" _rest1256412573_)))
                 (_try-match1256612585_
                  (lambda ()
                    (let ((_K1256812582_
                           (lambda ()
                             (gx#raise-syntax-error
                              '#f
                              '"Cannot find library module"
                              _libpath12548_))))
                      (if (##null? _rest1256412573_)
                          (_K1256812582_)
                          (_E1256712577_)))))
                 (_K1256912608_
                  (lambda (_rest12588_ _dir12589_)
                    (letrec ((_resolve12591_
                              (lambda (_ssi12601_ _src12602_)
                                (let ((_compiled-path12604_
                                       (path-expand _ssi12601_ _dir12589_)))
                                  (if (file-exists? _compiled-path12604_)
                                      (path-normalize _compiled-path12604_)
                                      (let ((_src-path12606_
                                             (path-expand
                                              _src12602_
                                              _dir12589_)))
                                        (if (file-exists? _src-path12606_)
                                            (path-normalize _src-path12606_)
                                            (_lp12561_ _rest12588_))))))))
                      (let ((_$e12593_
                             (gx#core-library-package-path-prefix _dir12589_)))
                        (if _$e12593_
                            ((lambda (_prefix12596_)
                               (if (string-prefix? _spath12552_ _prefix12596_)
                                   (let ((_ssi12598_
                                          (substring
                                           _ssi12556_
                                           (string-length _prefix12596_)
                                           (string-length _ssi12556_)))
                                         (_src12599_
                                          (substring
                                           _src12558_
                                           (string-length _prefix12596_)
                                           (string-length _src12558_))))
                                     (_resolve12591_ _ssi12598_ _src12599_))
                                   (_lp12561_ _rest12588_)))
                             _$e12593_)
                            (_resolve12591_ _ssi12556_ _src12558_)))))))
            (if (##pair? _rest1256412573_)
                (let ((_hd1257012611_ (##car _rest1256412573_))
                      (_tl1257112613_ (##cdr _rest1256412573_)))
                  (let* ((_dir12616_ _hd1257012611_)
                         (_rest12618_ _tl1257112613_))
                    (_K1256912608_ _rest12618_ _dir12616_)))
                (_try-match1256612585_)))))))
  (define gx#core-library-package-path-prefix
    (lambda (_dir12541_)
      (let ((_$e12543_
             (pgetq 'package: (gx#core-library-package-plist__0 _dir12541_))))
        (if _$e12543_
            ((lambda (_pkg12546_)
               (string-append (symbol->string _pkg12546_) '"/"))
             _$e12543_)
            '#f))))
  (begin
    (define gx#core-library-package-plist__opt-lambda12511
      (lambda (_dir12513_ _exists?12514_)
        (let* ((_cache12516_ (gx#core-library-package-cache))
               (_$e12518_ (table-ref _cache12516_ _dir12513_ '#f)))
          (if _$e12518_
              (values _$e12518_)
              (let* ((_gerbil.pkg12521_ (path-expand '"gerbil.pkg" _dir12513_))
                     (_plist12528_
                      (if (let ((_$e12523_ _exists?12514_))
                            (if _$e12523_
                                _$e12523_
                                (file-exists? _gerbil.pkg12521_)))
                          (let ((_e12526_
                                 (call-with-input-file
                                  _gerbil.pkg12521_
                                  read)))
                            (if (eof-object? _e12526_)
                                '()
                                (if (list? _e12526_)
                                    _e12526_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Malformed package info; unexpected datum"
                                     _gerbil.pkg12521_
                                     _e12526_))))
                          '())))
                (begin
                  (table-set! _cache12516_ _dir12513_ _plist12528_)
                  _plist12528_))))))
    (begin
      (define gx#core-library-package-plist__0
        (lambda (_dir12534_)
          (let ((_exists?12536_ '#f))
            (gx#core-library-package-plist__opt-lambda12511
             _dir12534_
             _exists?12536_))))
      (define gx#core-library-package-plist
        (lambda _g14038_
          (let ((_g14037_ (length _g14038_)))
            (cond ((fx= _g14037_ 1)
                   (apply gx#core-library-package-plist__0 _g14038_))
                  ((fx= _g14037_ 2)
                   (apply gx#core-library-package-plist__opt-lambda12511
                          _g14038_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-library-package-plist
                    _g14038_))))))))
  (define gx#core-library-package-cache
    (lambda ()
      (let ((_$e12507_ (gx#current-expander-module-library-package-cache)))
        (if _$e12507_
            (values _$e12507_)
            (let ((_cache12510_ (make-table)))
              (begin
                (gx#current-expander-module-library-package-cache _cache12510_)
                _cache12510_))))))
  (define gx#core-library-module-path?
    (lambda (_stx12504_) (gx#core-special-module-path? _stx12504_ '#\:)))
  (define gx#core-special-module-path?
    (lambda (_stx12499_ _char12500_)
      (if (gx#identifier? _stx12499_)
          (if (interned-symbol? (gx#stx-e _stx12499_))
              (let ((_str12502_ (symbol->string (gx#stx-e _stx12499_))))
                (if (fx> (string-length _str12502_) '1)
                    (eq? (string-ref _str12502_ '0) _char12500_)
                    '#f))
              '#f)
          '#f)))
  (define gx#core-bound-prelude?
    (lambda (_stx12493_)
      (gx#core-bound-identifier?__opt-lambda4693
       _stx12493_
       (lambda (_g1249412496_)
         (gx#expander-binding?__opt-lambda4730
          _g1249412496_
          gx#prelude-context?)))))
  (define gx#core-bound-module?
    (lambda (_stx12487_)
      (gx#core-bound-identifier?__opt-lambda4693
       _stx12487_
       (lambda (_g1248812490_)
         (gx#expander-binding?__opt-lambda4730
          _g1248812490_
          gx#module-context?)))))
  (define gx#core-bound-module-prelude?
    (lambda (_stx12474_)
      (letrec ((_module-prelude?12476_
                (lambda (_e12482_)
                  (let ((_$e12484_
                         (##structure-instance-of?
                          _e12482_
                          'gx#module-context::t)))
                    (if _$e12484_
                        _$e12484_
                        (##structure-instance-of?
                         _e12482_
                         'gx#prelude-context::t))))))
        (gx#core-bound-identifier?__opt-lambda4693
         _stx12474_
         (lambda (_g1247712479_)
           (gx#expander-binding?__opt-lambda4730
            _g1247712479_
            _module-prelude?12476_))))))
  (begin
    (define gx#core-bind-import!__opt-lambda12402
      (lambda (_in12404_ _ctx12405_ _force-weak?12406_)
        (let* ((_in1240712416_ _in12404_)
               (_E1240912420_
                (lambda () (error '"No clause matching" _in1240712416_)))
               (_K1241012433_
                (lambda (_weak?12423_ _phi12424_ _key12425_ _source12426_)
                  (gx#core-bind!__opt-lambda4969
                   _key12425_
                   (let ((_e12428_
                          (gx#core-resolve-module-export _source12426_)))
                     (##structure
                      gx#import-binding::t
                      (##structure-ref _e12428_ '1 gx#binding::t '#f)
                      _key12425_
                      _phi12424_
                      _e12428_
                      (##direct-structure-ref
                       _source12426_
                       '1
                       gx#module-export::t
                       '#f)
                      (let ((_$e12430_ _force-weak?12406_))
                        (if _$e12430_ _$e12430_ _weak?12423_))))
                   gx#core-context-rebind?
                   _phi12424_
                   _ctx12405_))))
          (if (##structure-direct-instance-of?
               _in1240712416_
               (##type-id gx#module-import::t))
              (let* ((_e1241112436_ (##vector-ref _in1240712416_ '1))
                     (_source12439_ _e1241112436_)
                     (_e1241212441_ (##vector-ref _in1240712416_ '2))
                     (_key12444_ _e1241212441_)
                     (_e1241312446_ (##vector-ref _in1240712416_ '3))
                     (_phi12449_ _e1241312446_)
                     (_e1241412451_ (##vector-ref _in1240712416_ '4))
                     (_weak?12454_ _e1241412451_))
                (_K1241012433_
                 _weak?12454_
                 _phi12449_
                 _key12444_
                 _source12439_))
              (_E1240912420_)))))
    (begin
      (define gx#core-bind-import!__0
        (lambda (_in12459_)
          (let* ((_ctx12461_ (gx#current-expander-context))
                 (_force-weak?12463_ '#f))
            (gx#core-bind-import!__opt-lambda12402
             _in12459_
             _ctx12461_
             _force-weak?12463_))))
      (define gx#core-bind-import!__1
        (lambda (_in12465_ _ctx12466_)
          (let ((_force-weak?12468_ '#f))
            (gx#core-bind-import!__opt-lambda12402
             _in12465_
             _ctx12466_
             _force-weak?12468_))))
      (define gx#core-bind-import!
        (lambda _g14040_
          (let ((_g14039_ (length _g14040_)))
            (cond ((fx= _g14039_ 1) (apply gx#core-bind-import!__0 _g14040_))
                  ((fx= _g14039_ 2) (apply gx#core-bind-import!__1 _g14040_))
                  ((fx= _g14039_ 3)
                   (apply gx#core-bind-import!__opt-lambda12402 _g14040_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-import!
                    _g14040_))))))))
  (begin
    (define gx#core-bind-weak-import!__opt-lambda12388
      (lambda (_in12390_ _ctx12391_)
        (gx#core-bind-import!__opt-lambda12402 _in12390_ _ctx12391_ '#t)))
    (begin
      (define gx#core-bind-weak-import!__0
        (lambda (_in12396_)
          (let ((_ctx12398_ (gx#current-expander-context)))
            (gx#core-bind-weak-import!__opt-lambda12388
             _in12396_
             _ctx12398_))))
      (define gx#core-bind-weak-import!
        (lambda _g14042_
          (let ((_g14041_ (length _g14042_)))
            (cond ((fx= _g14041_ 1)
                   (apply gx#core-bind-weak-import!__0 _g14042_))
                  ((fx= _g14041_ 2)
                   (apply gx#core-bind-weak-import!__opt-lambda12388 _g14042_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-weak-import!
                    _g14042_))))))))
  (define gx#core-resolve-module-export
    (lambda (_out12281_)
      (letrec ((_subst12283_
                (lambda (_key12329_)
                  (let* ((_key1233012338_ _key12329_)
                         (_E1233312342_
                          (lambda ()
                            (error '"No clause matching" _key1233012338_)))
                         (_else1233212346_ (lambda () _key12329_))
                         (_K1233412377_
                          (lambda (_mark12349_ _id12350_)
                            (let* ((_mark1235112357_ _mark12349_)
                                   (_E1235312361_
                                    (lambda ()
                                      (error '"No clause matching"
                                             _mark1235112357_)))
                                   (_K1235412369_
                                    (lambda (_subst12364_)
                                      (let ((_$e12366_
                                             (if _subst12364_
                                                 (table-ref
                                                  _subst12364_
                                                  _id12350_
                                                  '#f)
                                                 '#f)))
                                        (if _$e12366_
                                            _$e12366_
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Illegal key; missing substitution"
                                             _key12329_))))))
                              (if (##structure-instance-of?
                                   _mark1235112357_
                                   (##type-id gx#expander-mark::t))
                                  (let* ((_e1235512372_
                                          (##vector-ref _mark1235112357_ '1))
                                         (_subst12375_ _e1235512372_))
                                    (_K1235412369_ _subst12375_))
                                  (_E1235312361_))))))
                    (if (##pair? _key1233012338_)
                        (let ((_hd1233512380_ (##car _key1233012338_))
                              (_tl1233612382_ (##cdr _key1233012338_)))
                          (let* ((_id12385_ _hd1233512380_)
                                 (_mark12387_ _tl1233612382_))
                            (_K1233412377_ _mark12387_ _id12385_)))
                        (_else1233212346_))))))
        (let* ((_out1228412294_ _out12281_)
               (_E1228612298_
                (lambda () (error '"No clause matching" _out1228412294_)))
               (_K1228712305_
                (lambda (_phi12301_ _key12302_ _ctx12303_)
                  (gx#core-context-resolve
                   (gx#core-context-shift _ctx12303_ _phi12301_)
                   (_subst12283_ _key12302_)))))
          (if (##structure-direct-instance-of?
               _out1228412294_
               (##type-id gx#module-export::t))
              (let* ((_e1228812308_ (##vector-ref _out1228412294_ '1))
                     (_ctx12311_ _e1228812308_)
                     (_e1228912313_ (##vector-ref _out1228412294_ '2))
                     (_key12316_ _e1228912313_)
                     (_e1229012318_ (##vector-ref _out1228412294_ '3))
                     (_phi12321_ _e1229012318_)
                     (_e1229112323_ (##vector-ref _out1228412294_ '4))
                     (_e1229212326_ (##vector-ref _out1228412294_ '5)))
                (_K1228712305_ _phi12321_ _key12316_ _ctx12311_))
              (_E1228612298_))))))
  (begin
    (define gx#core-module-export->import__opt-lambda12204
      (lambda (_out12206_ _rename12207_ _dphi12208_)
        (let* ((_out1220912219_ _out12206_)
               (_E1221112223_
                (lambda () (error '"No clause matching" _out1220912219_)))
               (_K1221212235_
                (lambda (_weak?12226_
                         _name12227_
                         _phi12228_
                         _key12229_
                         _ctx12230_)
                  (##structure
                   gx#module-import::t
                   _out12206_
                   (let ((_$e12232_ _rename12207_))
                     (if _$e12232_ _$e12232_ _name12227_))
                   (fx+ _phi12228_ _dphi12208_)
                   _weak?12226_))))
          (if (##structure-direct-instance-of?
               _out1220912219_
               (##type-id gx#module-export::t))
              (let* ((_e1221312238_ (##vector-ref _out1220912219_ '1))
                     (_ctx12241_ _e1221312238_)
                     (_e1221412243_ (##vector-ref _out1220912219_ '2))
                     (_key12246_ _e1221412243_)
                     (_e1221512248_ (##vector-ref _out1220912219_ '3))
                     (_phi12251_ _e1221512248_)
                     (_e1221612253_ (##vector-ref _out1220912219_ '4))
                     (_name12256_ _e1221612253_)
                     (_e1221712258_ (##vector-ref _out1220912219_ '5))
                     (_weak?12261_ _e1221712258_))
                (_K1221212235_
                 _weak?12261_
                 _name12256_
                 _phi12251_
                 _key12246_
                 _ctx12241_))
              (_E1221112223_)))))
    (begin
      (define gx#core-module-export->import__0
        (lambda (_out12266_)
          (let* ((_rename12268_ '#f) (_dphi12270_ '0))
            (gx#core-module-export->import__opt-lambda12204
             _out12266_
             _rename12268_
             _dphi12270_))))
      (define gx#core-module-export->import__1
        (lambda (_out12272_ _rename12273_)
          (let ((_dphi12275_ '0))
            (gx#core-module-export->import__opt-lambda12204
             _out12272_
             _rename12273_
             _dphi12275_))))
      (define gx#core-module-export->import
        (lambda _g14044_
          (let ((_g14043_ (length _g14044_)))
            (cond ((fx= _g14043_ 1)
                   (apply gx#core-module-export->import__0 _g14044_))
                  ((fx= _g14043_ 2)
                   (apply gx#core-module-export->import__1 _g14044_))
                  ((fx= _g14043_ 3)
                   (apply gx#core-module-export->import__opt-lambda12204
                          _g14044_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-module-export->import
                    _g14044_))))))))
  (define gx#core-expand-module%
    (lambda (_stx12134_)
      (letrec ((_make-context12136_
                (lambda (_id12187_)
                  (let* ((_super12189_ (gx#current-expander-context))
                         (_bind-id12191_ (gx#stx-e _id12187_))
                         (_mod-id12193_
                          (if (##structure-instance-of?
                               _super12189_
                               'gx#module-context::t)
                              (make-symbol
                               (##structure-ref
                                _super12189_
                                '1
                                gx#expander-context::t
                                '#f)
                               '"$"
                               _bind-id12191_)
                              _bind-id12191_))
                         (_ns12195_ (symbol->string _mod-id12193_))
                         (_path12202_
                          (if (##structure-instance-of?
                               _super12189_
                               'gx#module-context::t)
                              (let ((_path12197_
                                     (##structure-ref
                                      _super12189_
                                      '7
                                      gx#module-context::t
                                      '#f)))
                                (if (let ((_$e12199_ (pair? _path12197_)))
                                      (if _$e12199_
                                          _$e12199_
                                          (null? _path12197_)))
                                    (cons _bind-id12191_ _path12197_)
                                    (if (not _path12197_)
                                        _bind-id12191_
                                        (cons _bind-id12191_
                                              (cons _path12197_ '())))))
                              _bind-id12191_)))
                    (let ((__obj14020 (make-object gx#module-context::t '11)))
                      (begin
                        (gx#module-context:::init!
                         __obj14020
                         _mod-id12193_
                         _super12189_
                         _ns12195_
                         _path12202_)
                        __obj14020))))))
        (let* ((_e1213712147_ _stx12134_)
               (_E1213912151_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1213712147_)))
               (_E1213812183_
                (lambda ()
                  (if (gx#stx-pair? _e1213712147_)
                      (let ((_e1214012155_ (gx#syntax-e _e1213712147_)))
                        (let ((_hd1214112158_ (##car _e1214012155_))
                              (_tl1214212160_ (##cdr _e1214012155_)))
                          (if (gx#stx-pair? _tl1214212160_)
                              (let ((_e1214312163_
                                     (gx#syntax-e _tl1214212160_)))
                                (let ((_hd1214412166_ (##car _e1214312163_))
                                      (_tl1214512168_ (##cdr _e1214312163_)))
                                  (let* ((_id12171_ _hd1214412166_)
                                         (_body12173_ _tl1214512168_))
                                    (if (if (gx#identifier? _id12171_)
                                            (gx#stx-list? _body12173_)
                                            '#f)
                                        (let* ((_ctx12175_
                                                (_make-context12136_
                                                 _id12171_))
                                               (_body12177_
                                                (gx#core-expand-module-begin
                                                 _body12173_
                                                 _ctx12175_))
                                               (_body12179_
                                                (gx#core-quote-syntax__1
                                                 (gx#core-cons
                                                  '%#begin
                                                  _body12177_)
                                                 (gx#stx-source _stx12134_))))
                                          (begin
                                            (##structure-set!
                                             _ctx12175_
                                             (make-promise
                                              (lambda ()
                                                (gx#eval-syntax* _body12179_)))
                                             '10
                                             gx#module-context::t
                                             '#f)
                                            (##structure-set!
                                             _ctx12175_
                                             _body12179_
                                             '11
                                             gx#module-context::t
                                             '#f)
                                            (gx#core-bind-syntax!__0
                                             _id12171_
                                             _ctx12175_)
                                            (gx#core-quote-syntax__1
                                             (gx#core-list
                                              '%#module
                                              (gx#core-quote-syntax__0
                                               _id12171_)
                                              _body12179_)
                                             (gx#stx-source _stx12134_))))
                                        (_E1213912151_)))))
                              (_E1213912151_))))
                      (_E1213912151_)))))
          (_E1213812183_)))))
  (define gx#core-expand-module-begin
    (lambda (_body12100_ _ctx12101_)
      (call-with-parameters
       (lambda ()
         (begin
           (gx#core-bind-feature!__1 'gerbil-module '#t)
           (let* ((_stx12104_
                   (gx#core-expand-head (cons '%%begin-module _body12100_)))
                  (_e1210512112_ _stx12104_)
                  (_E1210712116_
                   (lambda ()
                     (gx#raise-syntax-error
                      '#f
                      '"Illegal module body expansion"
                      _stx12104_)))
                  (_E1210612130_
                   (lambda ()
                     (if (gx#stx-pair? _e1210512112_)
                         (let ((_e1210812120_ (gx#syntax-e _e1210512112_)))
                           (let ((_hd1210912123_ (##car _e1210812120_))
                                 (_tl1211012125_ (##cdr _e1210812120_)))
                             (if (if (gx#identifier? _hd1210912123_)
                                     (gx#core-identifier=?
                                      _hd1210912123_
                                      '%#begin-module)
                                     '#f)
                                 (let ((_body12128_ _tl1211012125_))
                                   (if '#t
                                       (if (gx#sealed-syntax? _stx12104_)
                                           _body12128_
                                           (gx#core-expand-module-body
                                            _body12128_))
                                       (_E1210712116_)))
                                 (_E1210712116_))))
                         (_E1210712116_)))))
             (_E1210612130_))))
       gx#current-expander-context
       _ctx12101_
       gx#current-expander-phi
       '0)))
  (define gx#core-expand-module-body
    (lambda (_body11896_)
      (letrec ((_expand-special11898_
                (lambda (_hd12027_ _K12028_ _rest12029_ _r12030_)
                  (let* ((_e1203112048_ _hd12027_)
                         (_E1204312052_
                          (lambda ()
                            (_K12028_
                             _rest12029_
                             (cons (gx#core-expand-top _hd12027_) _r12030_))))
                         (_E1203312064_
                          (lambda ()
                            (if (gx#stx-pair? _e1203112048_)
                                (let ((_e1204412056_
                                       (gx#syntax-e _e1203112048_)))
                                  (let ((_hd1204512059_ (##car _e1204412056_))
                                        (_tl1204612061_ (##cdr _e1204412056_)))
                                    (if (if (gx#identifier? _hd1204512059_)
                                            (gx#core-identifier=?
                                             _hd1204512059_
                                             '%#export)
                                            '#f)
                                        (if '#t
                                            (_K12028_
                                             _rest12029_
                                             (cons _hd12027_ _r12030_))
                                            (_E1204312052_))
                                        (_E1204312052_))))
                                (_E1204312052_))))
                         (_E1203212096_
                          (lambda ()
                            (if (gx#stx-pair? _e1203112048_)
                                (let ((_e1203412068_
                                       (gx#syntax-e _e1203112048_)))
                                  (let ((_hd1203512071_ (##car _e1203412068_))
                                        (_tl1203612073_ (##cdr _e1203412068_)))
                                    (if (if (gx#identifier? _hd1203512071_)
                                            (gx#core-identifier=?
                                             _hd1203512071_
                                             '%#define-values)
                                            '#f)
                                        (if (gx#stx-pair? _tl1203612073_)
                                            (let ((_e1203712076_
                                                   (gx#syntax-e
                                                    _tl1203612073_)))
                                              (let ((_hd1203812079_
                                                     (##car _e1203712076_))
                                                    (_tl1203912081_
                                                     (##cdr _e1203712076_)))
                                                (let ((_hd-bind12084_
                                                       _hd1203812079_))
                                                  (if (gx#stx-pair?
                                                       _tl1203912081_)
                                                      (let ((_e1204012086_
                                                             (gx#syntax-e
                                                              _tl1203912081_)))
                                                        (let ((_hd1204112089_
                                                               (##car _e1204012086_))
                                                              (_tl1204212091_
                                                               (##cdr _e1204012086_)))
                                                          (let ((_expr12094_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1204112089_))
                    (if (gx#stx-null? _tl1204212091_)
                        (if (gx#core-bind-values? _hd-bind12084_)
                            (begin
                              (gx#core-bind-values!__0 _hd-bind12084_)
                              (_K12028_ _rest12029_ (cons _hd12027_ _r12030_)))
                            (_E1203312064_))
                        (_E1203312064_)))))
              (_E1203312064_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E1203312064_))
                                        (_E1203312064_))))
                                (_E1203312064_)))))
                    (_E1203212096_))))
               (_expand-body11899_
                (lambda (_rbody11901_)
                  (let _lp11903_ ((_rest11905_ _rbody11901_) (_body11906_ '()))
                    (let* ((_rest1190711915_ _rest11905_)
                           (_E1191011919_
                            (lambda ()
                              (error '"No clause matching" _rest1190711915_)))
                           (_else1190911923_ (lambda () _body11906_))
                           (_K1191112015_
                            (lambda (_rest11926_ _hd11927_)
                              (let* ((_e1192811949_ _hd11927_)
                                     (_E1194411953_
                                      (lambda ()
                                        (_lp11903_
                                         _rest11926_
                                         (cons (gx#core-expand-expression
                                                _hd11927_)
                                               _body11906_))))
                                     (_E1194011967_
                                      (lambda ()
                                        (if (gx#stx-pair? _e1192811949_)
                                            (let ((_e1194511957_
                                                   (gx#syntax-e
                                                    _e1192811949_)))
                                              (let ((_hd1194611960_
                                                     (##car _e1194511957_))
                                                    (_tl1194711962_
                                                     (##cdr _e1194511957_)))
                                                (let ((_form11965_
                                                       _hd1194611960_))
                                                  (if (gx#core-bound-identifier?__opt-lambda4693
                                                       _form11965_
                                                       gx#special-form-binding?)
                                                      (_lp11903_
                                                       _rest11926_
                                                       (cons _hd11927_
                                                             _body11906_))
                                                      (_E1194411953_)))))
                                            (_E1194411953_))))
                                     (_E1193011979_
                                      (lambda ()
                                        (if (gx#stx-pair? _e1192811949_)
                                            (let ((_e1194111971_
                                                   (gx#syntax-e
                                                    _e1192811949_)))
                                              (let ((_hd1194211974_
                                                     (##car _e1194111971_))
                                                    (_tl1194311976_
                                                     (##cdr _e1194111971_)))
                                                (if (if (gx#identifier?
                                                         _hd1194211974_)
                                                        (gx#core-identifier=?
                                                         _hd1194211974_
                                                         '%#export)
                                                        '#f)
                                                    (if '#t
                                                        (_lp11903_
                                                         _rest11926_
                                                         (cons (gx#core-expand-export%__0
                                                                _hd11927_)
                                                               _body11906_))
                                                        (_E1194011967_))
                                                    (_E1194011967_))))
                                            (_E1194011967_))))
                                     (_E1192912011_
                                      (lambda ()
                                        (if (gx#stx-pair? _e1192811949_)
                                            (let ((_e1193111983_
                                                   (gx#syntax-e
                                                    _e1192811949_)))
                                              (let ((_hd1193211986_
                                                     (##car _e1193111983_))
                                                    (_tl1193311988_
                                                     (##cdr _e1193111983_)))
                                                (if (if (gx#identifier?
                                                         _hd1193211986_)
                                                        (gx#core-identifier=?
                                                         _hd1193211986_
                                                         '%#define-values)
                                                        '#f)
                                                    (if (gx#stx-pair?
                                                         _tl1193311988_)
                                                        (let ((_e1193411991_
                                                               (gx#syntax-e
                                                                _tl1193311988_)))
                                                          (let ((_hd1193511994_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1193411991_))
                        (_tl1193611996_ (##cdr _e1193411991_)))
                    (let ((_hd-bind11999_ _hd1193511994_))
                      (if (gx#stx-pair? _tl1193611996_)
                          (let ((_e1193712001_ (gx#syntax-e _tl1193611996_)))
                            (let ((_hd1193812004_ (##car _e1193712001_))
                                  (_tl1193912006_ (##cdr _e1193712001_)))
                              (let ((_expr12009_ _hd1193812004_))
                                (if (gx#stx-null? _tl1193912006_)
                                    (if '#t
                                        (_lp11903_
                                         _rest11926_
                                         (cons (gx#core-quote-syntax__1
                                                (gx#core-list
                                                 '%#define-values
                                                 (gx#core-quote-bind-values
                                                  _hd-bind11999_)
                                                 (gx#core-expand-expression
                                                  _expr12009_))
                                                (gx#stx-source _hd11927_))
                                               _body11906_))
                                        (_E1193011979_))
                                    (_E1193011979_)))))
                          (_E1193011979_)))))
                (_E1193011979_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1193011979_))))
                                            (_E1193011979_)))))
                                (_E1192912011_)))))
                      (if (##pair? _rest1190711915_)
                          (let ((_hd1191212018_ (##car _rest1190711915_))
                                (_tl1191312020_ (##cdr _rest1190711915_)))
                            (let* ((_hd12023_ _hd1191212018_)
                                   (_rest12025_ _tl1191312020_))
                              (_K1191112015_ _rest12025_ _hd12023_)))
                          (_else1190911923_)))))))
        (_expand-body11899_
         (gx#core-expand-block__opt-lambda6602
          (cons '%#begin-module _body11896_)
          _expand-special11898_
          '#f
          values)))))
  (define gx#core-expand-import/export
    (lambda (_stx11739_
             _expanded?11740_
             _method11741_
             _current-phi11742_
             _expand111743_)
      (letrec ((_K11745_
                (lambda (_rest11863_ _r11864_)
                  (let* ((_e1186511872_ _rest11863_)
                         (_E1186711876_ (lambda () _r11864_))
                         (_E1186611892_
                          (lambda ()
                            (if (gx#stx-pair? _e1186511872_)
                                (let ((_e1186811880_
                                       (gx#syntax-e _e1186511872_)))
                                  (let ((_hd1186911883_ (##car _e1186811880_))
                                        (_tl1187011885_ (##cdr _e1186811880_)))
                                    (let* ((_hd11888_ _hd1186911883_)
                                           (_rest11890_ _tl1187011885_))
                                      (if '#t
                                          (_step11746_
                                           _hd11888_
                                           _rest11890_
                                           _r11864_)
                                          (_E1186711876_)))))
                                (_E1186711876_)))))
                    (_E1186611892_))))
               (_step11746_
                (lambda (_hd11777_ _rest11778_ _r11779_)
                  (let* ((_e1178011798_ _hd11777_)
                         (_E1179311802_
                          (lambda ()
                            (if (_expanded?11740_ (gx#stx-e _hd11777_))
                                (_K11745_
                                 _rest11778_
                                 (cons (gx#stx-e _hd11777_) _r11779_))
                                (_expand111743_
                                 _hd11777_
                                 _K11745_
                                 _rest11778_
                                 _r11779_))))
                         (_E1178911818_
                          (lambda ()
                            (if (gx#stx-pair? _e1178011798_)
                                (let ((_e1179411806_
                                       (gx#syntax-e _e1178011798_)))
                                  (let ((_hd1179511809_ (##car _e1179411806_))
                                        (_tl1179611811_ (##cdr _e1179411806_)))
                                    (let* ((_macro11814_ _hd1179511809_)
                                           (_body11816_ _tl1179611811_))
                                      (if (gx#core-bound-identifier?__opt-lambda4693
                                           _macro11814_
                                           gx#syntax-binding?)
                                          (_K11745_
                                           (cons (gx#core-apply-expander__opt-lambda6320
                                                  (gx#syntax-local-e__0
                                                   _macro11814_)
                                                  _hd11777_
                                                  _method11741_)
                                                 _rest11778_)
                                           _r11779_)
                                          (_E1179311802_)))))
                                (_E1179311802_))))
                         (_E1178211832_
                          (lambda ()
                            (if (gx#stx-pair? _e1178011798_)
                                (let ((_e1179011822_
                                       (gx#syntax-e _e1178011798_)))
                                  (let ((_hd1179111825_ (##car _e1179011822_))
                                        (_tl1179211827_ (##cdr _e1179011822_)))
                                    (if (eq? (gx#stx-e _hd1179111825_) 'begin:)
                                        (let ((_body11830_ _tl1179211827_))
                                          (if '#t
                                              (_K11745_
                                               (gx#stx-foldr
                                                cons
                                                _rest11778_
                                                _body11830_)
                                               _r11779_)
                                              (_E1178911818_)))
                                        (_E1178911818_))))
                                (_E1178911818_))))
                         (_E1178111859_
                          (lambda ()
                            (if (gx#stx-pair? _e1178011798_)
                                (let ((_e1178311836_
                                       (gx#syntax-e _e1178011798_)))
                                  (let ((_hd1178411839_ (##car _e1178311836_))
                                        (_tl1178511841_ (##cdr _e1178311836_)))
                                    (if (eq? (gx#stx-e _hd1178411839_) 'phi:)
                                        (if (gx#stx-pair? _tl1178511841_)
                                            (let ((_e1178611844_
                                                   (gx#syntax-e
                                                    _tl1178511841_)))
                                              (let ((_hd1178711847_
                                                     (##car _e1178611844_))
                                                    (_tl1178811849_
                                                     (##cdr _e1178611844_)))
                                                (let* ((_dphi11852_
                                                        _hd1178711847_)
                                                       (_body11854_
                                                        _tl1178811849_))
                                                  (if (gx#stx-fixnum?
                                                       _dphi11852_)
                                                      (let ((_rbody11857_
                                                             (call-with-parameters
                                                              (lambda ()
                                                                (_K11745_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _body11854_
                         '()))
                      _current-phi11742_
                      (fx+ (gx#stx-e _dphi11852_) (_current-phi11742_)))))
                (_K11745_ _rest11778_ (foldr1 cons _r11779_ _rbody11857_)))
              (_E1178211832_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E1178211832_))
                                        (_E1178211832_))))
                                (_E1178211832_)))))
                    (_E1178111859_)))))
        (let* ((_e1174711754_ _stx11739_)
               (_E1174911758_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1174711754_)))
               (_E1174811773_
                (lambda ()
                  (if (gx#stx-pair? _e1174711754_)
                      (let ((_e1175011762_ (gx#syntax-e _e1174711754_)))
                        (let ((_hd1175111765_ (##car _e1175011762_))
                              (_tl1175211767_ (##cdr _e1175011762_)))
                          (let ((_body11770_ _tl1175211767_))
                            (if '#t
                                (if (_current-phi11742_)
                                    (_K11745_ _body11770_ '())
                                    (call-with-parameters
                                     (lambda () (_K11745_ _body11770_ '()))
                                     _current-phi11742_
                                     (gx#current-expander-phi)))
                                (_E1174911758_)))))
                      (_E1174911758_)))))
          (_E1174811773_)))))
  (begin
    (define gx#core-expand-import%__opt-lambda11276
      (lambda (_stx11278_ _internal-expand?11279_)
        (letrec ((_expand111281_
                  (lambda (_hd11724_ _K11725_ _rest11726_ _r11727_)
                    (if (gx#core-bound-module? _hd11724_)
                        (_import111282_
                         (gx#syntax-local-e__0 _hd11724_)
                         _K11725_
                         _rest11726_
                         _r11727_)
                        (if (gx#core-library-module-path? _hd11724_)
                            (_import111282_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path _hd11724_))
                             _K11725_
                             _rest11726_
                             _r11727_)
                            (if (gx#stx-string? _hd11724_)
                                (_import111282_
                                 (gx#import-module__0
                                  (gx#core-resolve-module-path__opt-lambda12619
                                   _hd11724_
                                   (gx#stx-source _stx11278_)))
                                 _K11725_
                                 _rest11726_
                                 _r11727_)
                                (if (##structure-instance-of?
                                     (gx#stx-e _hd11724_)
                                     'gx#module-context::t)
                                    (_K11725_
                                     _rest11726_
                                     (cons (gx#stx-e _hd11724_) _r11727_))
                                    (if (_import-spec?11283_ _hd11724_)
                                        (_import-spec11288_
                                         _hd11724_
                                         _K11725_
                                         _rest11726_
                                         _r11727_)
                                        (if (_import-submodule?11284_
                                             _hd11724_)
                                            (_import-submodule11286_
                                             _hd11724_
                                             _K11725_
                                             _rest11726_
                                             _r11727_)
                                            (if (_import-runtime?11285_
                                                 _hd11724_)
                                                (_import-runtime11287_
                                                 _hd11724_
                                                 _K11725_
                                                 _rest11726_
                                                 _r11727_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; illegal import"
                                                 _stx11278_
                                                 _hd11724_))))))))))
                 (_import111282_
                  (lambda (_ctx11713_ _K11714_ _rest11715_ _r11716_)
                    (let ((_dphi11718_
                           (fx- (gx#current-import-expander-phi)
                                (gx#current-expander-phi))))
                      (_K11714_
                       _rest11715_
                       (cons (##structure
                              gx#import-set::t
                              _ctx11713_
                              _dphi11718_
                              (map (lambda (_g1171911721_)
                                     (gx#core-module-export->import__opt-lambda12204
                                      _g1171911721_
                                      '#f
                                      _dphi11718_))
                                   (##structure-ref
                                    _ctx11713_
                                    '9
                                    gx#module-context::t
                                    '#f)))
                             _r11716_)))))
                 (_import-spec?11283_
                  (lambda (_hd11670_)
                    (let* ((_e1167111681_ _hd11670_)
                           (_E1167311685_ (lambda () '#f))
                           (_E1167211709_
                            (lambda ()
                              (if (gx#stx-pair? _e1167111681_)
                                  (let ((_e1167411689_
                                         (gx#syntax-e _e1167111681_)))
                                    (let ((_hd1167511692_
                                           (##car _e1167411689_))
                                          (_tl1167611694_
                                           (##cdr _e1167411689_)))
                                      (if (eq? (gx#stx-e _hd1167511692_)
                                               'spec:)
                                          (if (gx#stx-pair? _tl1167611694_)
                                              (let ((_e1167711697_
                                                     (gx#syntax-e
                                                      _tl1167611694_)))
                                                (let ((_hd1167811700_
                                                       (##car _e1167711697_))
                                                      (_tl1167911702_
                                                       (##cdr _e1167711697_)))
                                                  (let* ((_spath11705_
                                                          _hd1167811700_)
                                                         (_specs11707_
                                                          _tl1167911702_))
                                                    (if '#t
                                                        '#t
                                                        (_E1167311685_)))))
                                              (_E1167311685_))
                                          (_E1167311685_))))
                                  (_E1167311685_)))))
                      (_E1167211709_))))
                 (_import-submodule?11284_
                  (lambda (_hd11627_)
                    (let* ((_e1162811638_ _hd11627_)
                           (_E1163011642_ (lambda () '#f))
                           (_E1162911666_
                            (lambda ()
                              (if (gx#stx-pair? _e1162811638_)
                                  (let ((_e1163111646_
                                         (gx#syntax-e _e1162811638_)))
                                    (let ((_hd1163211649_
                                           (##car _e1163111646_))
                                          (_tl1163311651_
                                           (##cdr _e1163111646_)))
                                      (if (eq? (gx#stx-e _hd1163211649_) 'in:)
                                          (if (gx#stx-pair? _tl1163311651_)
                                              (let ((_e1163411654_
                                                     (gx#syntax-e
                                                      _tl1163311651_)))
                                                (let ((_hd1163511657_
                                                       (##car _e1163411654_))
                                                      (_tl1163611659_
                                                       (##cdr _e1163411654_)))
                                                  (let* ((_top11662_
                                                          _hd1163511657_)
                                                         (_sub11664_
                                                          _tl1163611659_))
                                                    (if '#t
                                                        '#t
                                                        (_E1163011642_)))))
                                              (_E1163011642_))
                                          (_E1163011642_))))
                                  (_E1163011642_)))))
                      (_E1162911666_))))
                 (_import-runtime?11285_
                  (lambda (_hd11584_)
                    (let* ((_e1158511595_ _hd11584_)
                           (_E1158711599_ (lambda () '#f))
                           (_E1158611623_
                            (lambda ()
                              (if (gx#stx-pair? _e1158511595_)
                                  (let ((_e1158811603_
                                         (gx#syntax-e _e1158511595_)))
                                    (let ((_hd1158911606_
                                           (##car _e1158811603_))
                                          (_tl1159011608_
                                           (##cdr _e1158811603_)))
                                      (if (eq? (gx#stx-e _hd1158911606_)
                                               'runtime:)
                                          (if (gx#stx-pair? _tl1159011608_)
                                              (let ((_e1159111611_
                                                     (gx#syntax-e
                                                      _tl1159011608_)))
                                                (let ((_hd1159211614_
                                                       (##car _e1159111611_))
                                                      (_tl1159311616_
                                                       (##cdr _e1159111611_)))
                                                  (let* ((_top11619_
                                                          _hd1159211614_)
                                                         (_spath11621_
                                                          _tl1159311616_))
                                                    (if '#t
                                                        '#t
                                                        (_E1158711599_)))))
                                              (_E1158711599_))
                                          (_E1158711599_))))
                                  (_E1158711599_)))))
                      (_E1158611623_))))
                 (_import-submodule11286_
                  (lambda (_hd11551_ _K11552_ _rest11553_ _r11554_)
                    (let* ((_e1155511562_ _hd11551_)
                           (_E1155711566_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _e1155511562_)))
                           (_E1155611580_
                            (lambda ()
                              (if (gx#stx-pair? _e1155511562_)
                                  (let ((_e1155811570_
                                         (gx#syntax-e _e1155511562_)))
                                    (let ((_hd1155911573_
                                           (##car _e1155811570_))
                                          (_tl1156011575_
                                           (##cdr _e1155811570_)))
                                      (let ((_spath11578_ _tl1156011575_))
                                        (if '#t
                                            (_import111282_
                                             (_import-spec-source11289_
                                              _spath11578_)
                                             _K11552_
                                             _rest11553_
                                             _r11554_)
                                            (_E1155711566_)))))
                                  (_E1155711566_)))))
                      (_E1155611580_))))
                 (_import-runtime11287_
                  (lambda (_hd11518_ _K11519_ _rest11520_ _r11521_)
                    (let* ((_e1152211529_ _hd11518_)
                           (_E1152411533_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _e1152211529_)))
                           (_E1152311547_
                            (lambda ()
                              (if (gx#stx-pair? _e1152211529_)
                                  (let ((_e1152511537_
                                         (gx#syntax-e _e1152211529_)))
                                    (let ((_hd1152611540_
                                           (##car _e1152511537_))
                                          (_tl1152711542_
                                           (##cdr _e1152511537_)))
                                      (let ((_spath11545_ _tl1152711542_))
                                        (if '#t
                                            (_K11519_
                                             _rest11520_
                                             (cons (_import-spec-source11289_
                                                    _spath11545_)
                                                   _r11521_))
                                            (_E1152411533_)))))
                                  (_E1152411533_)))))
                      (_E1152311547_))))
                 (_import-spec11288_
                  (lambda (_hd11357_ _K11358_ _rest11359_ _r11360_)
                    (let* ((_e1136111378_ _hd11357_)
                           (_E1137011382_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _e1136111378_)))
                           (_E1136311492_
                            (lambda ()
                              (if (gx#stx-pair? _e1136111378_)
                                  (let ((_e1137111386_
                                         (gx#syntax-e _e1136111378_)))
                                    (let ((_hd1137211389_
                                           (##car _e1137111386_))
                                          (_tl1137311391_
                                           (##cdr _e1137111386_)))
                                      (if (gx#stx-pair? _tl1137311391_)
                                          (let ((_e1137411394_
                                                 (gx#syntax-e _tl1137311391_)))
                                            (let ((_hd1137511397_
                                                   (##car _e1137411394_))
                                                  (_tl1137611399_
                                                   (##cdr _e1137411394_)))
                                              (let* ((_path11402_
                                                      _hd1137511397_)
                                                     (_specs11404_
                                                      _tl1137611399_))
                                                (if '#t
                                                    (let ((_src-ctx11406_
                                                           (_import-spec-source11289_
                                                            _path11402_))
                                                          (_exports11407_
                                                           (make-table))
                                                          (_specs11408_
                                                           (gx#syntax->list
                                                            _specs11404_)))
                                                      (begin
                                                        (for-each
                                                         (lambda (_out11410_)
                                                           (table-set!
                                                            _exports11407_
                                                            (cons (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _out11410_
                           '3
                           gx#module-export::t
                           '#f)
                          (##direct-structure-ref
                           _out11410_
                           '4
                           gx#module-export::t
                           '#f))
                    _out11410_))
                 (##structure-ref _src-ctx11406_ '9 gx#module-context::t '#f))
                (_K11358_
                 _rest11359_
                 (foldl1 (lambda (_spec11412_ _r11413_)
                           (let* ((_e1141411430_ _spec11412_)
                                  (_E1141611434_
                                   (lambda ()
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _e1141411430_)))
                                  (_E1141511488_
                                   (lambda ()
                                     (if (gx#stx-pair? _e1141411430_)
                                         (let ((_e1141711438_
                                                (gx#syntax-e _e1141411430_)))
                                           (let ((_hd1141811441_
                                                  (##car _e1141711438_))
                                                 (_tl1141911443_
                                                  (##cdr _e1141711438_)))
                                             (let ((_phi11446_ _hd1141811441_))
                                               (if (gx#stx-pair?
                                                    _tl1141911443_)
                                                   (let ((_e1142011448_
                                                          (gx#syntax-e
                                                           _tl1141911443_)))
                                                     (let ((_hd1142111451_
                                                            (##car _e1142011448_))
                                                           (_tl1142211453_
                                                            (##cdr _e1142011448_)))
                                                       (let ((_name11456_
                                                              _hd1142111451_))
                                                         (if (gx#stx-pair?
                                                              _tl1142211453_)
                                                             (let ((_e1142311458_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _tl1142211453_)))
                       (let ((_hd1142411461_ (##car _e1142311458_))
                             (_tl1142511463_ (##cdr _e1142311458_)))
                         (let ((_src-phi11466_ _hd1142411461_))
                           (if (gx#stx-pair? _tl1142511463_)
                               (let ((_e1142611468_
                                      (gx#syntax-e _tl1142511463_)))
                                 (let ((_hd1142711471_ (##car _e1142611468_))
                                       (_tl1142811473_ (##cdr _e1142611468_)))
                                   (let ((_src-name11476_ _hd1142711471_))
                                     (if (gx#stx-null? _tl1142811473_)
                                         (if (if (gx#stx-fixnum?
                                                  _src-phi11466_)
                                                 (if (gx#identifier?
                                                      _src-name11476_)
                                                     (if (gx#stx-fixnum?
                                                          _phi11446_)
                                                         (gx#identifier?
                                                          _name11456_)
                                                         '#f)
                                                     '#f)
                                                 '#f)
                                             (let ((_src-phi11478_
                                                    (gx#stx-e _src-phi11466_))
                                                   (_src-name11479_
                                                    (gx#core-identifier-key
                                                     _src-name11476_))
                                                   (_phi11480_
                                                    (gx#stx-e _phi11446_))
                                                   (_name11481_
                                                    (gx#core-identifier-key
                                                     _name11456_)))
                                               (let ((_$e11483_
                                                      (table-ref
                                                       _exports11407_
                                                       (cons _src-phi11478_
                                                             _src-name11479_)
                                                       '#f)))
                                                 (if _$e11483_
                                                     ((lambda (_out11486_)
                                                        (cons (gx#core-module-export->import__opt-lambda12204
                                                               _out11486_
                                                               _name11481_
                                                               (fx- _phi11480_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _src-phi11478_))
                      _r11413_))
              _$e11483_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; no matching export"
                                                      _stx11278_
                                                      _hd11357_))))
                                             (_E1141611434_))
                                         (_E1141611434_)))))
                               (_E1141611434_)))))
                     (_E1141611434_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1141611434_)))))
                                         (_E1141611434_)))))
                             (_E1141511488_)))
                         _r11360_
                         _specs11408_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1137011382_)))))
                                          (_E1137011382_))))
                                  (_E1137011382_))))
                           (_E1136211514_
                            (lambda ()
                              (if (gx#stx-pair? _e1136111378_)
                                  (let ((_e1136411496_
                                         (gx#syntax-e _e1136111378_)))
                                    (let ((_hd1136511499_
                                           (##car _e1136411496_))
                                          (_tl1136611501_
                                           (##cdr _e1136411496_)))
                                      (if (gx#stx-pair? _tl1136611501_)
                                          (let ((_e1136711504_
                                                 (gx#syntax-e _tl1136611501_)))
                                            (let ((_hd1136811507_
                                                   (##car _e1136711504_))
                                                  (_tl1136911509_
                                                   (##cdr _e1136711504_)))
                                              (let ((_path11512_
                                                     _hd1136811507_))
                                                (if (gx#stx-null?
                                                     _tl1136911509_)
                                                    (if '#t
                                                        (_K11358_
                                                         _rest11359_
                                                         (cons (_import-spec-source11289_
                                                                _path11512_)
                                                               _r11360_))
                                                        (_E1136311492_))
                                                    (_E1136311492_)))))
                                          (_E1136311492_))))
                                  (_E1136311492_)))))
                      (_E1136211514_))))
                 (_import-spec-source11289_
                  (lambda (_spath11355_)
                    (gx#core-import-nested-module _spath11355_ _stx11278_)))
                 (_import!11290_
                  (lambda (_rbody11303_)
                    (letrec* ((_current-ctx11305_
                               (gx#current-expander-context))
                              (_deps11306_ (make-hash-table-eq))
                              (_bind!11307_
                               (lambda (_hd11353_)
                                 (begin
                                   (gx#core-bind-import!__1
                                    _hd11353_
                                    _current-ctx11305_)
                                   (if (if (fxpositive?
                                            (##direct-structure-ref
                                             _hd11353_
                                             '3
                                             gx#module-import::t
                                             '#f))
                                           (fxzero? (##direct-structure-ref
                                                     (##direct-structure-ref
                                                      _hd11353_
                                                      '1
                                                      gx#module-import::t
                                                      '#f)
                                                     '3
                                                     gx#module-export::t
                                                     '#f))
                                           '#f)
                                       (table-set!
                                        _deps11306_
                                        (##direct-structure-ref
                                         (##direct-structure-ref
                                          _hd11353_
                                          '1
                                          gx#module-import::t
                                          '#f)
                                         '1
                                         gx#module-export::t
                                         '#f)
                                        '#t)
                                       '#!void))))
                              (_fold-e11308_
                               (lambda (_in11350_ _r11351_)
                                 (if (##structure-direct-instance-of?
                                      _in11350_
                                      'gx#module-import::t)
                                     (cons _in11350_ _r11351_)
                                     (if (##structure-direct-instance-of?
                                          _in11350_
                                          'gx#import-set::t)
                                         (foldl1 cons
                                                 _r11351_
                                                 (##direct-structure-ref
                                                  _in11350_
                                                  '3
                                                  gx#import-set::t
                                                  '#f))
                                         _r11351_)))))
                      (let _lp11310_ ((_rest11312_ _rbody11303_)
                                      (_body11313_ '()))
                        (let* ((_rest1131411322_ _rest11312_)
                               (_E1131711326_
                                (lambda ()
                                  (error '"No clause matching"
                                         _rest1131411322_)))
                               (_else1131611332_
                                (lambda ()
                                  (begin
                                    (if (##structure-instance-of?
                                         _current-ctx11305_
                                         'gx#module-context::t)
                                        (##structure-set!
                                         _current-ctx11305_
                                         (foldl1 _fold-e11308_
                                                 (##structure-ref
                                                  _current-ctx11305_
                                                  '8
                                                  gx#module-context::t
                                                  '#f)
                                                 _body11313_)
                                         '8
                                         gx#module-context::t
                                         '#f)
                                        '#!void)
                                    (table-for-each
                                     (lambda (_ctx11330_ _g14045_)
                                       (gx#eval-module _ctx11330_))
                                     _deps11306_)
                                    _body11313_)))
                               (_K1131811338_
                                (lambda (_rest11335_ _hd11336_)
                                  (begin
                                    (if (##structure-direct-instance-of?
                                         _hd11336_
                                         'gx#module-import::t)
                                        (_bind!11307_ _hd11336_)
                                        (if (##structure-direct-instance-of?
                                             _hd11336_
                                             'gx#import-set::t)
                                            (for-each
                                             _bind!11307_
                                             (##direct-structure-ref
                                              _hd11336_
                                              '3
                                              gx#import-set::t
                                              '#f))
                                            (if (##structure-instance-of?
                                                 _hd11336_
                                                 'gx#module-context::t)
                                                '#!void
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Unexpected import"
                                                 _stx11278_
                                                 _hd11336_))))
                                    (_lp11310_
                                     _rest11335_
                                     (cons _hd11336_ _body11313_))))))
                          (if (##pair? _rest1131411322_)
                              (let ((_hd1131911341_ (##car _rest1131411322_))
                                    (_tl1132011343_ (##cdr _rest1131411322_)))
                                (let* ((_hd11346_ _hd1131911341_)
                                       (_rest11348_ _tl1132011343_))
                                  (_K1131811338_ _rest11348_ _hd11346_)))
                              (_else1131611332_)))))))
                 (_expanded-import?11291_
                  (lambda (_e11295_)
                    (let ((_$e11297_
                           (##structure-direct-instance-of?
                            _e11295_
                            'gx#import-set::t)))
                      (if _$e11297_
                          _$e11297_
                          (let ((_$e11300_
                                 (##structure-direct-instance-of?
                                  _e11295_
                                  'gx#module-import::t)))
                            (if _$e11300_
                                _$e11300_
                                (##structure-instance-of?
                                 _e11295_
                                 'gx#module-context::t))))))))
          (let ((_rbody11293_
                 (gx#core-expand-import/export
                  _stx11278_
                  _expanded-import?11291_
                  'apply-import-expander
                  gx#current-import-expander-phi
                  _expand111281_)))
            (if _internal-expand?11279_
                (reverse _rbody11293_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#import (_import!11290_ _rbody11293_))
                 (gx#stx-source _stx11278_)))))))
    (begin
      (define gx#core-expand-import%__0
        (lambda (_stx11732_)
          (let ((_internal-expand?11734_ '#f))
            (gx#core-expand-import%__opt-lambda11276
             _stx11732_
             _internal-expand?11734_))))
      (define gx#core-expand-import%
        (lambda _g14047_
          (let ((_g14046_ (length _g14047_)))
            (cond ((fx= _g14046_ 1) (apply gx#core-expand-import%__0 _g14047_))
                  ((fx= _g14046_ 2)
                   (apply gx#core-expand-import%__opt-lambda11276 _g14047_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-expand-import%
                    _g14047_))))))))
  (define gx#core-import-nested-module
    (lambda (_spath11205_ _where11206_)
      (let* ((_e1120711214_ _spath11205_)
             (_E1120911218_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1120711214_)))
             (_E1120811273_
              (lambda ()
                (if (gx#stx-pair? _e1120711214_)
                    (let ((_e1121011222_ (gx#syntax-e _e1120711214_)))
                      (let ((_hd1121111225_ (##car _e1121011222_))
                            (_tl1121211227_ (##cdr _e1121011222_)))
                        (let* ((_origin11230_ _hd1121111225_)
                               (_sub11232_ _tl1121211227_))
                          (if '#t
                              (let ((_origin-ctx11234_
                                     (if (gx#stx-false? _origin11230_)
                                         (gx#current-expander-context)
                                         (gx#import-module__0 _origin11230_))))
                                (let _lp11236_ ((_rest11238_ _sub11232_)
                                                (_ctx11239_ _origin-ctx11234_))
                                  (let* ((_e1124011247_ _rest11238_)
                                         (_E1124211251_ (lambda () _ctx11239_))
                                         (_E1124111269_
                                          (lambda ()
                                            (if (gx#stx-pair? _e1124011247_)
                                                (let ((_e1124311255_
                                                       (gx#syntax-e
                                                        _e1124011247_)))
                                                  (let ((_hd1124411258_
                                                         (##car _e1124311255_))
                                                        (_tl1124511260_
                                                         (##cdr _e1124311255_)))
                                                    (let* ((_id11263_
                                                            _hd1124411258_)
                                                           (_rest11265_
                                                            _tl1124511260_))
                                                      (if '#t
                                                          (let ((_bind11267_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#resolve-identifier__opt-lambda5250
                          _id11263_
                          '0
                          _ctx11239_)))
                    (begin
                      (if (if (##structure-direct-instance-of?
                               _bind11267_
                               'gx#syntax-binding::t)
                              (##structure-instance-of?
                               (##direct-structure-ref
                                _bind11267_
                                '4
                                gx#syntax-binding::t
                                '#f)
                               'gx#module-context::t)
                              '#f)
                          '#!void
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; not bound as module"
                           _where11206_
                           _spath11205_
                           _id11263_))
                      (_lp11236_
                       _rest11265_
                       (##direct-structure-ref
                        _bind11267_
                        '4
                        gx#syntax-binding::t
                        '#f))))
                  (_E1124211251_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E1124211251_)))))
                                    (_E1124111269_))))
                              (_E1120911218_)))))
                    (_E1120911218_)))))
        (_E1120811273_))))
  (define gx#core-expand-import-source
    (lambda (_hd11203_)
      (gx#core-expand-import%__opt-lambda11276
       (cons 'import-internal% (cons _hd11203_ '()))
       '#t)))
  (begin
    (define gx#core-expand-export%__opt-lambda10785
      (lambda (_stx10787_ _internal-expand?10788_)
        (letrec* ((_make-export__opt-lambda11149__1400914010_
                   (lambda (_bind11151_ _phi11152_ _ctx11153_ _name11154_)
                     (let* ((_key11156_
                             (##structure-ref
                              _bind11151_
                              '2
                              gx#binding::t
                              '#f))
                            (_export-key11158_
                             (if _name11154_
                                 (gx#core-identifier-key _name11154_)
                                 _key11156_)))
                       (##structure
                        gx#module-export::t
                        _ctx11153_
                        _key11156_
                        _phi11152_
                        _export-key11158_
                        (let ((_$e11161_
                               (##structure-instance-of?
                                _bind11151_
                                'gx#extern-binding::t)))
                          (if _$e11161_
                              _$e11161_
                              (##structure-direct-instance-of?
                               _bind11151_
                               'gx#import-binding::t)))))))
                  (_make-export__0__1401114014_
                   (lambda (_bind11167_)
                     (let* ((_phi11169_ (gx#current-export-expander-phi))
                            (_ctx11171_ (gx#current-expander-context))
                            (_name11173_ '#f))
                       (_make-export__opt-lambda11149__1400914010_
                        _bind11167_
                        _phi11169_
                        _ctx11171_
                        _name11173_))))
                  (_make-export__1__1401214015_
                   (lambda (_bind11175_ _phi11176_)
                     (let* ((_ctx11178_ (gx#current-expander-context))
                            (_name11180_ '#f))
                       (_make-export__opt-lambda11149__1400914010_
                        _bind11175_
                        _phi11176_
                        _ctx11178_
                        _name11180_))))
                  (_make-export__2__1401314016_
                   (lambda (_bind11182_ _phi11183_ _ctx11184_)
                     (let ((_name11186_ '#f))
                       (_make-export__opt-lambda11149__1400914010_
                        _bind11182_
                        _phi11183_
                        _ctx11184_
                        _name11186_))))
                  (_make-export10790_
                   (lambda _g14049_
                     (let ((_g14048_ (length _g14049_)))
                       (cond ((fx= _g14048_ 1)
                              (apply _make-export__0__1401114014_ _g14049_))
                             ((fx= _g14048_ 2)
                              (apply _make-export__1__1401214015_ _g14049_))
                             ((fx= _g14048_ 3)
                              (apply _make-export__2__1401314016_ _g14049_))
                             ((fx= _g14048_ 4)
                              (apply _make-export__opt-lambda11149__1400914010_
                                     _g14049_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g14049_))))))
                  (_expand110791_
                   (lambda (_hd10864_ _K10865_ _rest10866_ _r10867_)
                     (let* ((_e1086810900_ _hd10864_)
                            (_E1089510904_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal export"
                                _stx10787_
                                _hd10864_)))
                            (_E1088510983_
                             (lambda ()
                               (if (gx#stx-pair? _e1086810900_)
                                   (let ((_e1089610908_
                                          (gx#syntax-e _e1086810900_)))
                                     (let ((_hd1089710911_
                                            (##car _e1089610908_))
                                           (_tl1089810913_
                                            (##cdr _e1089610908_)))
                                       (if (eq? (gx#stx-e _hd1089710911_)
                                                'import:)
                                           (let ((_in10916_ _tl1089810913_))
                                             (if (gx#stx-list? _in10916_)
                                                 (let _lp10918_ ((_in-rest10920_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _in10916_)
                         (_r10921_ _r10867_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_e1092210929_
                                                           _in-rest10920_)
                                                          (_E1092410933_
                                                           (lambda ()
                                                             (_K10865_
                                                              _rest10866_
                                                              _r10921_)))
                                                          (_E1092310979_
                                                           (lambda ()
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _e1092210929_)
                         (let ((_e1092510937_ (gx#syntax-e _e1092210929_)))
                           (let ((_hd1092610940_ (##car _e1092510937_))
                                 (_tl1092710942_ (##cdr _e1092510937_)))
                             (let* ((_hd10945_ _hd1092610940_)
                                    (_in-rest10947_ _tl1092710942_))
                               (if '#t
                                   (let ((_src10977_
                                          (if (gx#core-bound-module? _hd10945_)
                                              (gx#syntax-local-e__0 _hd10945_)
                                              (if (gx#core-library-module-path?
                                                   _hd10945_)
                                                  (gx#import-module__0
                                                   (gx#core-resolve-library-module-path
                                                    _hd10945_))
                                                  (if (gx#stx-string?
                                                       _hd10945_)
                                                      (gx#import-module__0
                                                       (gx#core-resolve-module-path__opt-lambda12619
                                                        _hd10945_
                                                        (gx#stx-source
                                                         _stx10787_)))
                                                      (let* ((_e1094810955_
                                                              _hd10945_)
                                                             (_E1095010959_
                                                              (lambda ()
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; illegal re-export"
                         _stx10787_
                         _hd10945_)))
                     (_E1094910973_
                      (lambda ()
                        (if (gx#stx-pair? _e1094810955_)
                            (let ((_e1095110963_ (gx#syntax-e _e1094810955_)))
                              (let ((_hd1095210966_ (##car _e1095110963_))
                                    (_tl1095310968_ (##cdr _e1095110963_)))
                                (if (eq? (gx#stx-e _hd1095210966_) 'in:)
                                    (let ((_spath10971_ _tl1095310968_))
                                      (if '#t
                                          (gx#core-import-nested-module
                                           _spath10971_
                                           _stx10787_)
                                          (_E1095010959_)))
                                    (_E1095010959_))))
                            (_E1095010959_)))))
                (_E1094910973_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_lp10918_
                                      _in-rest10947_
                                      (_export-imports10792_
                                       _src10977_
                                       _r10921_)))
                                   (_E1092410933_)))))
                         (_E1092410933_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E1092310979_)))
                                                 (_E1089510904_)))
                                           (_E1089510904_))))
                                   (_E1089510904_))))
                            (_E1087211022_
                             (lambda ()
                               (if (gx#stx-pair? _e1086810900_)
                                   (let ((_e1088610987_
                                          (gx#syntax-e _e1086810900_)))
                                     (let ((_hd1088710990_
                                            (##car _e1088610987_))
                                           (_tl1088810992_
                                            (##cdr _e1088610987_)))
                                       (if (eq? (gx#stx-e _hd1088710990_)
                                                'rename:)
                                           (if (gx#stx-pair? _tl1088810992_)
                                               (let ((_e1088910995_
                                                      (gx#syntax-e
                                                       _tl1088810992_)))
                                                 (let ((_hd1089010998_
                                                        (##car _e1088910995_))
                                                       (_tl1089111000_
                                                        (##cdr _e1088910995_)))
                                                   (let ((_id11003_
                                                          _hd1089010998_))
                                                     (if (gx#stx-pair?
                                                          _tl1089111000_)
                                                         (let ((_e1089211005_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1089111000_)))
                   (let ((_hd1089311008_ (##car _e1089211005_))
                         (_tl1089411010_ (##cdr _e1089211005_)))
                     (let ((_name11013_ _hd1089311008_))
                       (if (gx#stx-null? _tl1089411010_)
                           (if '#t
                               (let* ((_phi11015_
                                       (gx#current-export-expander-phi))
                                      (_$e11017_
                                       (gx#core-resolve-identifier__1
                                        _id11003_
                                        _phi11015_)))
                                 (if _$e11017_
                                     ((lambda (_bind11020_)
                                        (_K10865_
                                         _rest10866_
                                         (cons (_make-export__opt-lambda11149__1400914010_
                                                _bind11020_
                                                _phi11015_
                                                (gx#current-expander-context)
                                                _name11013_)
                                               _r10867_)))
                                      _$e11017_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Reference to unbound identifier"
                                      _stx10787_
                                      _hd10864_
                                      _id11003_)))
                               (_E1088510983_))
                           (_E1088510983_)))))
                 (_E1088510983_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E1088510983_))
                                           (_E1088510983_))))
                                   (_E1088510983_))))
                            (_E1087111071_
                             (lambda ()
                               (if (gx#stx-pair? _e1086810900_)
                                   (let ((_e1087311026_
                                          (gx#syntax-e _e1086810900_)))
                                     (let ((_hd1087411029_
                                            (##car _e1087311026_))
                                           (_tl1087511031_
                                            (##cdr _e1087311026_)))
                                       (if (eq? (gx#stx-e _hd1087411029_)
                                                'spec:)
                                           (if (gx#stx-pair? _tl1087511031_)
                                               (let ((_e1087611034_
                                                      (gx#syntax-e
                                                       _tl1087511031_)))
                                                 (let ((_hd1087711037_
                                                        (##car _e1087611034_))
                                                       (_tl1087811039_
                                                        (##cdr _e1087611034_)))
                                                   (let ((_phi11042_
                                                          _hd1087711037_))
                                                     (if (gx#stx-pair?
                                                          _tl1087811039_)
                                                         (let ((_e1087911044_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1087811039_)))
                   (let ((_hd1088011047_ (##car _e1087911044_))
                         (_tl1088111049_ (##cdr _e1087911044_)))
                     (let ((_id11052_ _hd1088011047_))
                       (if (gx#stx-pair? _tl1088111049_)
                           (let ((_e1088211054_ (gx#syntax-e _tl1088111049_)))
                             (let ((_hd1088311057_ (##car _e1088211054_))
                                   (_tl1088411059_ (##cdr _e1088211054_)))
                               (let ((_name11062_ _hd1088311057_))
                                 (if (gx#stx-null? _tl1088411059_)
                                     (if (if (gx#stx-fixnum? _phi11042_)
                                             (if (gx#identifier? _id11052_)
                                                 (gx#identifier? _name11062_)
                                                 '#f)
                                             '#f)
                                         (let* ((_phi11064_
                                                 (gx#stx-e _phi11042_))
                                                (_$e11066_
                                                 (gx#core-resolve-identifier__1
                                                  _id11052_
                                                  _phi11064_)))
                                           (if _$e11066_
                                               ((lambda (_bind11069_)
                                                  (_K10865_
                                                   _rest10866_
                                                   (cons (_make-export__opt-lambda11149__1400914010_
                                                          _bind11069_
                                                          _phi11064_
                                                          (gx#current-expander-context)
                                                          _name11062_)
                                                         _r10867_)))
                                                _$e11066_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Reference to unbound identifier"
                                                _stx10787_
                                                _hd10864_
                                                _id11052_)))
                                         (_E1087211022_))
                                     (_E1087211022_)))))
                           (_E1087211022_)))))
                 (_E1087211022_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E1087211022_))
                                           (_E1087211022_))))
                                   (_E1087211022_))))
                            (_E1087011082_
                             (lambda ()
                               (let ((_id11075_ _e1086810900_))
                                 (if (gx#identifier? _id11075_)
                                     (let ((_$e11077_
                                            (gx#core-resolve-identifier__1
                                             _id11075_
                                             (gx#current-export-expander-phi))))
                                       (if _$e11077_
                                           ((lambda (_bind11080_)
                                              (_K10865_
                                               _rest10866_
                                               (cons (_make-export__0__1401114014_
                                                      _bind11080_)
                                                     _r10867_)))
                                            _$e11077_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Reference to unbound identifier"
                                            _stx10787_
                                            _hd10864_)))
                                     (_E1087111071_)))))
                            (_E1086911146_
                             (lambda ()
                               (if (eq? (gx#stx-e _e1086810900_) '#t)
                                   (if '#t
                                       (let* ((_current-ctx11086_
                                               (gx#current-expander-context))
                                              (_current-phi11088_
                                               (gx#current-export-expander-phi))
                                              (_phi-ctx11090_
                                               (gx#core-context-shift
                                                _current-ctx11086_
                                                _current-phi11088_))
                                              (_phi-bind11092_
                                               (table->list
                                                (##structure-ref
                                                 _phi-ctx11090_
                                                 '2
                                                 gx#expander-context::t
                                                 '#f))))
                                         (let _lp11095_ ((_bind-rest11097_
                                                          _phi-bind11092_)
                                                         (_set11098_ '()))
                                           (let* ((_bind-rest1109911109_
                                                   _bind-rest11097_)
                                                  (_E1110211113_
                                                   (lambda ()
                                                     (error '"No clause matching"
                                                            _bind-rest1109911109_)))
                                                  (_else1110111117_
                                                   (lambda ()
                                                     (_K10865_
                                                      _rest10866_
                                                      (cons (##structure
                                                             gx#export-set::t
                                                             '#f
                                                             _current-phi11088_
                                                             _set11098_)
                                                            _r10867_))))
                                                  (_K1110311127_
                                                   (lambda (_bind-rest11120_
                                                            _bind11121_
                                                            _key11122_)
                                                     (if (let ((_$e11124_
                                                                (##structure-direct-instance-of?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _bind11121_
                         'gx#import-binding::t)))
                   (if _$e11124_
                       _$e11124_
                       (gx#private-feature-binding? _bind11121_)))
                 (_lp11095_ _bind-rest11120_ _set11098_)
                 (_lp11095_
                  _bind-rest11120_
                  (cons (_make-export__2__1401314016_
                         _bind11121_
                         _current-phi11088_
                         _current-ctx11086_)
                        _set11098_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (##pair? _bind-rest1109911109_)
                                                 (let ((_hd1110411130_
                                                        (##car _bind-rest1109911109_))
                                                       (_tl1110511132_
                                                        (##cdr _bind-rest1109911109_)))
                                                   (if (##pair? _hd1110411130_)
                                                       (let ((_hd1110611135_
                                                              (##car _hd1110411130_))
                                                             (_tl1110711137_
                                                              (##cdr _hd1110411130_)))
                                                         (let* ((_key11140_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1110611135_)
                        (_bind11142_ _tl1110711137_)
                        (_bind-rest11144_ _tl1110511132_))
                   (_K1110311127_ _bind-rest11144_ _bind11142_ _key11140_)))
               (_else1110111117_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_else1110111117_)))))
                                       (_E1087011082_))
                                   (_E1087011082_)))))
                       (_E1086911146_))))
                  (_export-imports10792_
                   (lambda (_src10813_ _r10814_)
                     (letrec* ((_current-ctx10816_
                                (gx#current-expander-context))
                               (_current-phi10817_
                                (gx#current-export-expander-phi))
                               (_import->export10818_
                                (lambda (_in10826_)
                                  (let* ((_in1082710835_ _in10826_)
                                         (_E1082910839_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _in1082710835_)))
                                         (_K1083010846_
                                          (lambda (_phi10842_
                                                   _key10843_
                                                   _out10844_)
                                            (if (fx= _phi10842_
                                                     _current-phi10817_)
                                                (if (eq? _src10813_
                                                         (##direct-structure-ref
                                                          _out10844_
                                                          '1
                                                          gx#module-export::t
                                                          '#f))
                                                    (##structure
                                                     gx#module-export::t
                                                     _current-ctx10816_
                                                     _key10843_
                                                     _phi10842_
                                                     _key10843_
                                                     '#t)
                                                    '#f)
                                                '#f))))
                                    (if (##structure-direct-instance-of?
                                         _in1082710835_
                                         (##type-id gx#module-import::t))
                                        (let* ((_e1083110849_
                                                (##vector-ref
                                                 _in1082710835_
                                                 '1))
                                               (_out10852_ _e1083110849_)
                                               (_e1083210854_
                                                (##vector-ref
                                                 _in1082710835_
                                                 '2))
                                               (_key10857_ _e1083210854_)
                                               (_e1083310859_
                                                (##vector-ref
                                                 _in1082710835_
                                                 '3))
                                               (_phi10862_ _e1083310859_))
                                          (_K1083010846_
                                           _phi10862_
                                           _key10857_
                                           _out10852_))
                                        (_E1082910839_)))))
                               (_fold-e10819_
                                (lambda (_in10821_ _r10822_)
                                  (let ((_out10824_
                                         (_import->export10818_ _in10821_)))
                                    (if _out10824_
                                        (cons _out10824_ _r10822_)
                                        _r10822_)))))
                       (cons (##structure
                              gx#export-set::t
                              _src10813_
                              _current-phi10817_
                              (foldl1 _fold-e10819_
                                      '()
                                      (##structure-ref
                                       _current-ctx10816_
                                       '8
                                       gx#module-context::t
                                       '#f)))
                             _r10814_))))
                  (_export!10793_
                   (lambda (_rbody10803_)
                     (letrec* ((_current-ctx10805_
                                (gx#current-expander-context))
                               (_fold-e10806_
                                (lambda (_out10810_ _r10811_)
                                  (if (##structure-direct-instance-of?
                                       _out10810_
                                       'gx#module-export::t)
                                      (cons _out10810_ _r10811_)
                                      (if (##structure-direct-instance-of?
                                           _out10810_
                                           'gx#export-set::t)
                                          (foldl1 cons
                                                  _r10811_
                                                  (##direct-structure-ref
                                                   _out10810_
                                                   '3
                                                   gx#export-set::t
                                                   '#f))
                                          _r10811_)))))
                       (let ((_body10808_ (reverse _rbody10803_)))
                         (begin
                           (##structure-set!
                            _current-ctx10805_
                            (foldl1 _fold-e10806_
                                    (##structure-ref
                                     _current-ctx10805_
                                     '9
                                     gx#module-context::t
                                     '#f)
                                    _body10808_)
                            '9
                            gx#module-context::t
                            '#f)
                           _body10808_)))))
                  (_expanded-export?10794_
                   (lambda (_e10798_)
                     (let ((_$e10800_
                            (##structure-direct-instance-of?
                             _e10798_
                             'gx#module-export::t)))
                       (if _$e10800_
                           _$e10800_
                           (##structure-direct-instance-of?
                            _e10798_
                            'gx#export-set::t))))))
          (let ((_rbody10796_
                 (gx#core-expand-import/export
                  _stx10787_
                  _expanded-export?10794_
                  'apply-export-expander
                  gx#current-export-expander-phi
                  _expand110791_)))
            (if _internal-expand?10788_
                (reverse _rbody10796_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#export (_export!10793_ _rbody10796_))
                 (gx#stx-source _stx10787_)))))))
    (begin
      (define gx#core-expand-export%__0
        (lambda (_stx11196_)
          (let ((_internal-expand?11198_ '#f))
            (gx#core-expand-export%__opt-lambda10785
             _stx11196_
             _internal-expand?11198_))))
      (define gx#core-expand-export%
        (lambda _g14051_
          (let ((_g14050_ (length _g14051_)))
            (cond ((fx= _g14050_ 1) (apply gx#core-expand-export%__0 _g14051_))
                  ((fx= _g14050_ 2)
                   (apply gx#core-expand-export%__opt-lambda10785 _g14051_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-expand-export%
                    _g14051_))))))))
  (define gx#core-expand-export-source
    (lambda (_hd10784_)
      (gx#core-expand-export%__opt-lambda10785
       (cons 'export-macro% (cons _hd10784_ '()))
       '#t)))
  (define gx#core-expand-provide%
    (lambda (_stx10754_)
      (let* ((_e1075510762_ _stx10754_)
             (_E1075710766_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1075510762_)))
             (_E1075610780_
              (lambda ()
                (if (gx#stx-pair? _e1075510762_)
                    (let ((_e1075810770_ (gx#syntax-e _e1075510762_)))
                      (let ((_hd1075910773_ (##car _e1075810770_))
                            (_tl1076010775_ (##cdr _e1075810770_)))
                        (let ((_body10778_ _tl1076010775_))
                          (if (gx#identifier-list? _body10778_)
                              (begin
                                (gx#stx-for-each1
                                 gx#core-bind-feature!
                                 _body10778_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#provide
                                  (gx#stx-map1
                                   gx#core-quote-syntax
                                   _body10778_))
                                 (gx#stx-source _stx10754_)))
                              (_E1075710766_)))))
                    (_E1075710766_)))))
        (_E1075610780_))))
  (begin
    (define gx#core-bind-feature!__opt-lambda10718
      (lambda (_id10720_ _private?10721_ _phi10722_ _ctx10723_)
        (gx#core-bind-syntax!__opt-lambda7814
         _id10720_
         ((if _private?10721_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _id10720_))
         _private?10721_
         _phi10722_
         _ctx10723_)))
    (begin
      (define gx#core-bind-feature!__0
        (lambda (_id10728_)
          (let* ((_private?10730_ '#f)
                 (_phi10732_ (gx#current-expander-phi))
                 (_ctx10734_ (gx#current-expander-context)))
            (gx#core-bind-feature!__opt-lambda10718
             _id10728_
             _private?10730_
             _phi10732_
             _ctx10734_))))
      (define gx#core-bind-feature!__1
        (lambda (_id10736_ _private?10737_)
          (let* ((_phi10739_ (gx#current-expander-phi))
                 (_ctx10741_ (gx#current-expander-context)))
            (gx#core-bind-feature!__opt-lambda10718
             _id10736_
             _private?10737_
             _phi10739_
             _ctx10741_))))
      (define gx#core-bind-feature!__2
        (lambda (_id10743_ _private?10744_ _phi10745_)
          (let ((_ctx10747_ (gx#current-expander-context)))
            (gx#core-bind-feature!__opt-lambda10718
             _id10743_
             _private?10744_
             _phi10745_
             _ctx10747_))))
      (define gx#core-bind-feature!
        (lambda _g14053_
          (let ((_g14052_ (length _g14053_)))
            (cond ((fx= _g14052_ 1) (apply gx#core-bind-feature!__0 _g14053_))
                  ((fx= _g14052_ 2) (apply gx#core-bind-feature!__1 _g14053_))
                  ((fx= _g14052_ 3) (apply gx#core-bind-feature!__2 _g14053_))
                  ((fx= _g14052_ 4)
                   (apply gx#core-bind-feature!__opt-lambda10718 _g14053_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-feature!
                    _g14053_)))))))))
