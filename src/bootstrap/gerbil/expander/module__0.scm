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
    (lambda _$args14234_
      (apply make-struct-instance gx#module-import::t _$args14234_)))
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
    (lambda _$args14231_
      (apply make-struct-instance gx#module-export::t _$args14231_)))
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
    (lambda _$args14228_
      (apply make-struct-instance gx#import-set::t _$args14228_)))
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
    (lambda _$args14225_
      (apply make-struct-instance gx#export-set::t _$args14225_)))
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
    (lambda _$args14222_
      (apply make-class-instance gx#import-expander::t _$args14222_)))
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
    (lambda _$args14219_
      (apply make-class-instance gx#export-expander::t _$args14219_)))
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
    (lambda _$args14216_
      (apply make-class-instance gx#import-export-expander::t _$args14216_)))
  (define gx#current-import-expander-phi (make-parameter '#f))
  (define gx#current-export-expander-phi (make-parameter '#f))
  (define gx#current-module-reader-path (make-parameter '#f))
  (define gx#current-module-reader-args (make-parameter '#f))
  (define gx#module-context:::init!
    (lambda (_self14210_ _id14211_ _super14212_ _ns14213_ _path14214_)
      (if (##fx< '11 (##vector-length _self14210_))
          (begin
            (##vector-set! _self14210_ '1 _id14211_)
            (##vector-set! _self14210_ '2 (make-hash-table-eq))
            (##vector-set! _self14210_ '3 _super14212_)
            (##vector-set! _self14210_ '4 '#f)
            (##vector-set! _self14210_ '5 '#f)
            (##vector-set! _self14210_ '6 _ns14213_)
            (##vector-set! _self14210_ '7 _path14214_)
            (##vector-set! _self14210_ '8 '())
            (##vector-set! _self14210_ '9 '())
            (##vector-set! _self14210_ '10 '#f)
            (##vector-set! _self14210_ '11 '#f))
          (error '"struct-instance-init!: too many arguments for struct"
                 _self14210_))))
  (bind-method! gx#module-context::t ':init! gx#module-context:::init! '#f)
  (begin
    (define gx#prelude-context:::init!__%
      (lambda (_self14054_ _ctx14055_ _root14056_)
        (let ((_super14064_
               (let ((_$e14058_ _root14056_))
                 (if _$e14058_
                     _$e14058_
                     (let ((_$e14061_ (gx#core-context-root__0)))
                       (if _$e14061_
                           _$e14061_
                           (make-struct-instance gx#root-context::t)))))))
          (if _ctx14055_
              (let ((_id14067_
                     (##structure-ref
                      _ctx14055_
                      '1
                      gx#expander-context::t
                      '#f))
                    (_path14068_
                     (##structure-ref _ctx14055_ '7 gx#module-context::t '#f))
                    (_in14069_
                     (map gx#core-module-export->import
                          (##structure-ref
                           _ctx14055_
                           '9
                           gx#module-context::t
                           '#f)))
                    (_e14070_
                     (make-promise (lambda () (gx#eval-module _ctx14055_)))))
                (begin
                  (if (##fx< '8 (##vector-length _self14054_))
                      (begin
                        (##vector-set! _self14054_ '1 _id14067_)
                        (##vector-set! _self14054_ '2 (make-hash-table-eq))
                        (##vector-set! _self14054_ '3 _super14064_)
                        (##vector-set! _self14054_ '4 '#f)
                        (##vector-set! _self14054_ '5 '#f)
                        (##vector-set! _self14054_ '6 _path14068_)
                        (##vector-set! _self14054_ '7 _in14069_)
                        (##vector-set! _self14054_ '8 _e14070_))
                      (error '"struct-instance-init!: too many arguments for struct"
                             _self14054_))
                  (for-each
                   (lambda (_g1407114073_)
                     (gx#core-bind-weak-import!__% _g1407114073_ _self14054_))
                   _in14069_)))
              (if (##fx< '8 (##vector-length _self14054_))
                  (begin
                    (##vector-set! _self14054_ '1 '#f)
                    (##vector-set! _self14054_ '2 (make-hash-table-eq))
                    (##vector-set! _self14054_ '3 _super14064_)
                    (##vector-set! _self14054_ '4 '#f)
                    (##vector-set! _self14054_ '5 '#f)
                    (##vector-set! _self14054_ '6 '#f)
                    (##vector-set! _self14054_ '7 '())
                    (##vector-set! _self14054_ '8 '#f))
                  (error '"struct-instance-init!: too many arguments for struct"
                         _self14054_))))))
    (begin
      (define gx#prelude-context:::init!__0
        (lambda (_self14079_ _ctx14080_)
          (let ((_root14082_ '#f))
            (gx#prelude-context:::init!__%
             _self14079_
             _ctx14080_
             _root14082_))))
      (define gx#prelude-context:::init!
        (lambda _g14250_
          (let ((_g14249_ (length _g14250_)))
            (cond ((fx= _g14249_ 2)
                   (apply gx#prelude-context:::init!__0 _g14250_))
                  ((fx= _g14249_ 3)
                   (apply gx#prelude-context:::init!__% _g14250_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#prelude-context:::init!
                    _g14250_))))))))
  (bind-method! gx#prelude-context::t ':init! gx#prelude-context:::init! '#f)
  (define gx#import-export-expander-init!
    (lambda (_self13928_ _e13929_)
      (if (##fx< '3 (##vector-length _self13928_))
          (begin
            (##vector-set! _self13928_ '1 _e13929_)
            (##vector-set! _self13928_ '2 (gx#current-expander-context))
            (##vector-set! _self13928_ '3 (fx- (gx#current-expander-phi) '1)))
          (error '"struct-instance-init!: too many arguments for struct"
                 _self13928_))))
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
    (lambda (_g1355413557_ _g1355513559_)
      (gx#core-apply-user-expander__%
       _g1355413557_
       _g1355513559_
       'apply-import-expander)))
  (bind-method!
   gx#import-expander::t
   'apply-import-expander
   gx#import-expander::apply-import-expander
   '#f)
  (define gx#export-expander::apply-export-expander
    (lambda (_g1342513428_ _g1342613430_)
      (gx#core-apply-user-expander__%
       _g1342513428_
       _g1342613430_
       'apply-export-expander)))
  (bind-method!
   gx#export-expander::t
   'apply-export-expander
   gx#export-expander::apply-export-expander
   '#f)
  (define gx#module-source-path
    (lambda (_ctx13296_)
      (let* ((_path13298_
              (##structure-ref _ctx13296_ '7 gx#module-context::t '#f))
             (_path13300_
              (if (pair? _path13298_) (last _path13298_) _path13298_)))
        (if (string? _path13300_) _path13300_ '#f))))
  (begin
    (define gx#import-module__%
      (lambda (_path13272_ _reload?13273_ _eval?13274_)
        (let ((_ctx13276_
               ((gx#current-expander-module-import)
                _path13272_
                _reload?13273_)))
          (begin
            (if (if _ctx13276_ _eval?13274_ '#f)
                (gx#eval-module _ctx13276_)
                '#!void)
            _ctx13276_))))
    (begin
      (define gx#import-module__0
        (lambda (_path13281_)
          (let* ((_reload?13283_ '#f) (_eval?13285_ '#f))
            (gx#import-module__% _path13281_ _reload?13283_ _eval?13285_))))
      (define gx#import-module__1
        (lambda (_path13287_ _reload?13288_)
          (let ((_eval?13290_ '#f))
            (gx#import-module__% _path13287_ _reload?13288_ _eval?13290_))))
      (define gx#import-module
        (lambda _g14252_
          (let ((_g14251_ (length _g14252_)))
            (cond ((fx= _g14251_ 1) (apply gx#import-module__0 _g14252_))
                  ((fx= _g14251_ 2) (apply gx#import-module__1 _g14252_))
                  ((fx= _g14251_ 3) (apply gx#import-module__% _g14252_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#import-module
                    _g14252_))))))))
  (define gx#eval-module
    (lambda (_mod13269_) ((gx#current-expander-module-eval) _mod13269_)))
  (define gx#core-eval-module
    (lambda (_obj13254_)
      (letrec ((_force-e13256_
                (lambda (_getf13265_ _e13266_)
                  (call-with-parameters
                   (lambda () (force (_getf13265_ _e13266_)))
                   gx#current-expander-context
                   _e13266_
                   gx#current-expander-phi
                   '0))))
        (let _recur13258_ ((_e13260_ _obj13254_))
          (if (##structure-instance-of? _e13260_ 'gx#module-context::t)
              (begin
                (let ((_$e13262_ (gx#core-context-prelude__% _e13260_)))
                  (if _$e13262_ (_recur13258_ _$e13262_) '#!void))
                (_force-e13256_ gx#module-context-e _e13260_))
              (if (##structure-instance-of? _e13260_ 'gx#prelude-context::t)
                  (_force-e13256_ gx#prelude-context-e _e13260_)
                  (if (gx#stx-string? _e13260_)
                      (_recur13258_
                       (gx#import-module__0
                        (gx#core-resolve-module-path__0 _e13260_)))
                      (if (gx#core-library-module-path? _e13260_)
                          (_recur13258_
                           (gx#import-module__0
                            (gx#core-resolve-library-module-path _e13260_)))
                          (error '"Cannot eval module" _obj13254_)))))))))
  (begin
    (define gx#core-context-prelude__%
      (lambda (_ctx13237_)
        (let _lp13239_ ((_e13241_ _ctx13237_))
          (if (let ((_$e13243_
                     (##structure-instance-of?
                      _e13241_
                      'gx#module-context::t)))
                (if _$e13243_
                    _$e13243_
                    (##structure-instance-of? _e13241_ 'gx#local-context::t)))
              (_lp13239_ (##structure-ref _e13241_ '3 gx#phi-context::t '#f))
              (if (##structure-instance-of? _e13241_ 'gx#prelude-context::t)
                  _e13241_
                  '#f)))))
    (begin
      (define gx#core-context-prelude__0
        (lambda ()
          (let ((_ctx13250_ (gx#current-expander-context)))
            (gx#core-context-prelude__% _ctx13250_))))
      (define gx#core-context-prelude
        (lambda _g14254_
          (let ((_g14253_ (length _g14254_)))
            (cond ((fx= _g14253_ 0)
                   (apply gx#core-context-prelude__0 _g14254_))
                  ((fx= _g14253_ 1)
                   (apply gx#core-context-prelude__% _g14254_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-context-prelude
                    _g14254_))))))))
  (define gx#core-module->prelude-context
    (lambda (_ctx13227_)
      (let* ((_ht13229_ (gx#current-expander-module-registry))
             (_$e13231_ (table-ref _ht13229_ _ctx13227_ '#f)))
        (if _$e13231_
            (values _$e13231_)
            (let ((_pre13234_
                   (let ((__obj14245 (make-object gx#prelude-context::t '8)))
                     (begin
                       (gx#prelude-context:::init!__0 __obj14245 _ctx13227_)
                       __obj14245))))
              (begin
                (table-set! _ht13229_ _ctx13227_ _pre13234_)
                _pre13234_))))))
  (begin
    (define gx#core-import-module__%
      (lambda (_rpath13108_ _reload?13109_)
        (letrec ((_import-source13111_
                  (lambda (_path13196_)
                    (begin
                      (if (member _path13196_ (gx#current-expander-path))
                          (error '"Cyclic expansion" _path13196_)
                          '#!void)
                      (call-with-parameters
                       (lambda ()
                         (let ((_g14255_ (gx#core-read-module _path13196_)))
                           (begin
                             (let ((_g14256_ (values-count _g14255_)))
                               (if (not (fx= _g14256_ 4))
                                   (error "Context expects 4 values"
                                          _g14256_)))
                             (let ((_pre13199_ (values-ref _g14255_ 0))
                                   (_id13200_ (values-ref _g14255_ 1))
                                   (_ns13201_ (values-ref _g14255_ 2))
                                   (_body13202_ (values-ref _g14255_ 3)))
                               (let* ((_prelude13207_
                                       (if (##structure-instance-of?
                                            _pre13199_
                                            'gx#prelude-context::t)
                                           _pre13199_
                                           (if (##structure-instance-of?
                                                _pre13199_
                                                'gx#module-context::t)
                                               (gx#core-module->prelude-context
                                                _pre13199_)
                                               (if (string? _pre13199_)
                                                   (gx#core-module->prelude-context
                                                    (gx#core-import-module__0
                                                     _pre13199_))
                                                   (if (not _pre13199_)
                                                       (let ((_$e13204_
                                                              (gx#current-expander-module-prelude)))
                                                         (if _$e13204_
                                                             _$e13204_
                                                             (let ((__obj14246
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (make-object gx#prelude-context::t '8)))
                       (begin
                         (gx#prelude-context:::init!__0 __obj14246 '#f)
                         __obj14246))))
               (error '"Cannot import module; unknown prelude"
                      _rpath13108_
                      _pre13199_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_ctx13209_
                                       (let ((__obj14247
                                              (make-object
                                               gx#module-context::t
                                               '11)))
                                         (begin
                                           (gx#module-context:::init!
                                            __obj14247
                                            _id13200_
                                            _prelude13207_
                                            _ns13201_
                                            _path13196_)
                                           __obj14247)))
                                      (_body13211_
                                       (gx#core-expand-module-begin
                                        _body13202_
                                        _ctx13209_))
                                      (_body13213_
                                       (gx#core-quote-syntax__%
                                        (gx#core-cons '%#begin _body13211_)
                                        _path13196_
                                        _ctx13209_
                                        '())))
                                 (begin
                                   (##structure-set!
                                    _ctx13209_
                                    (make-promise
                                     (lambda () (gx#eval-syntax* _body13213_)))
                                    '10
                                    gx#module-context::t
                                    '#f)
                                   (##structure-set!
                                    _ctx13209_
                                    _body13213_
                                    '11
                                    gx#module-context::t
                                    '#f)
                                   (table-set!
                                    (gx#current-expander-module-registry)
                                    _path13196_
                                    _ctx13209_)
                                   (table-set!
                                    (gx#current-expander-module-registry)
                                    _id13200_
                                    _ctx13209_)
                                   _ctx13209_))))))
                       gx#current-expander-context
                       (gx#core-context-root__0)
                       gx#current-expander-marks
                       '()
                       gx#current-expander-phi
                       '0
                       gx#current-expander-path
                       (cons _path13196_ (gx#current-expander-path))
                       gx#current-import-expander-phi
                       '#f
                       gx#current-export-expander-phi
                       '#f))))
                 (_import-submodule13112_
                  (lambda (_rpath13124_)
                    (let* ((_rpath1312513132_ _rpath13124_)
                           (_E1312713136_
                            (lambda ()
                              (error '"No clause matching" _rpath1312513132_)))
                           (_K1312813184_
                            (lambda (_refs13139_ _origin13140_)
                              (let ((_ctx13142_
                                     (if _origin13140_
                                         (gx#core-import-module__%
                                          _origin13140_
                                          _reload?13109_)
                                         (gx#current-expander-context))))
                                (let _lp13144_ ((_rest13146_ _refs13139_)
                                                (_ctx13147_ _ctx13142_))
                                  (let* ((_rest1314813156_ _rest13146_)
                                         (_E1315113160_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _rest1314813156_)))
                                         (_else1315013164_
                                          (lambda () _ctx13147_))
                                         (_K1315213172_
                                          (lambda (_rest13167_ _id13168_)
                                            (let ((_bind13170_
                                                   (gx#resolve-identifier__%
                                                    _id13168_
                                                    '0
                                                    _ctx13147_)))
                                              (if (if (##structure-direct-instance-of?
                                                       _bind13170_
                                                       'gx#syntax-binding::t)
                                                      (##structure-instance-of?
                                                       (##direct-structure-ref
                                                        _bind13170_
                                                        '4
                                                        gx#syntax-binding::t
                                                        '#f)
                                                       'gx#module-context::t)
                                                      '#f)
                                                  (_lp13144_
                                                   _rest13167_
                                                   (##direct-structure-ref
                                                    _bind13170_
                                                    '4
                                                    gx#syntax-binding::t
                                                    '#f))
                                                  (error '"Cannot import submodule; not bound as a module"
                                                         _rpath13124_
                                                         _id13168_
                                                         _bind13170_))))))
                                    (if (##pair? _rest1314813156_)
                                        (let ((_hd1315313175_
                                               (##car _rest1314813156_))
                                              (_tl1315413177_
                                               (##cdr _rest1314813156_)))
                                          (let* ((_id13180_ _hd1315313175_)
                                                 (_rest13182_ _tl1315413177_))
                                            (_K1315213172_
                                             _rest13182_
                                             _id13180_)))
                                        (_else1315013164_))))))))
                      (if (##pair? _rpath1312513132_)
                          (let ((_hd1312913187_ (##car _rpath1312513132_))
                                (_tl1313013189_ (##cdr _rpath1312513132_)))
                            (let* ((_origin13192_ _hd1312913187_)
                                   (_refs13194_ _tl1313013189_))
                              (_K1312813184_ _refs13194_ _origin13192_)))
                          (_E1312713136_))))))
          (let ((_$e13114_
                 (if (not _reload?13109_)
                     (table-ref
                      (gx#current-expander-module-registry)
                      _rpath13108_
                      '#f)
                     '#f)))
            (if _$e13114_
                (values _$e13114_)
                (if (list? _rpath13108_)
                    (_import-submodule13112_ _rpath13108_)
                    (if (gx#core-library-module-path? _rpath13108_)
                        (let ((_ctx13117_
                               (gx#core-import-module__%
                                (gx#core-resolve-library-module-path
                                 _rpath13108_)
                                _reload?13109_)))
                          (begin
                            (table-set!
                             (gx#current-expander-module-registry)
                             _rpath13108_
                             _ctx13117_)
                            _ctx13117_))
                        (let* ((_npath13119_ (path-normalize _rpath13108_))
                               (_$e13121_
                                (if (not _reload?13109_)
                                    (table-ref
                                     (gx#current-expander-module-registry)
                                     _npath13119_
                                     '#f)
                                    '#f)))
                          (if _$e13121_
                              (values _$e13121_)
                              (_import-source13111_ _npath13119_))))))))))
    (begin
      (define gx#core-import-module__0
        (lambda (_rpath13220_)
          (let ((_reload?13222_ '#f))
            (gx#core-import-module__% _rpath13220_ _reload?13222_))))
      (define gx#core-import-module
        (lambda _g14258_
          (let ((_g14257_ (length _g14258_)))
            (cond ((fx= _g14257_ 1) (apply gx#core-import-module__0 _g14258_))
                  ((fx= _g14257_ 2) (apply gx#core-import-module__% _g14258_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-import-module
                    _g14258_))))))))
  (define gx#core-read-module
    (lambda (_path13102_)
      (with-exception-catcher
       (lambda (_exn13104_)
         (if (if (datum-parsing-exception? _exn13104_)
                 (eq? (datum-parsing-exception-filepos _exn13104_) '0)
                 '#f)
             (gx#core-read-module/lang _path13102_)
             (raise _exn13104_)))
       (lambda () (gx#core-read-module/sexp _path13102_)))))
  (define gx#core-read-module/sexp
    (lambda (_path12962_)
      (let _lp12964_ ((_body12966_ (read-syntax-from-file _path12962_))
                      (_pre12967_ '#f)
                      (_ns12968_ '#f)
                      (_pkg12969_ '#f))
        (let* ((_e1297012994_ _body12966_)
               (_E1298613016_
                (lambda ()
                  (let ((_g14259_
                         (if _pkg12969_
                             (values _pre12967_ _ns12968_ _pkg12969_)
                             (gx#core-read-module-package
                              _path12962_
                              _pre12967_
                              _ns12968_))))
                    (begin
                      (let ((_g14260_ (values-count _g14259_)))
                        (if (not (fx= _g14260_ 3))
                            (error "Context expects 3 values" _g14260_)))
                      (let ((_pre12998_ (values-ref _g14259_ 0))
                            (_ns12999_ (values-ref _g14259_ 1))
                            (_pkg13000_ (values-ref _g14259_ 2)))
                        (let* ((_prelude13002_
                                (if (gx#core-bound-module-prelude? _pre12998_)
                                    (gx#syntax-local-e__0 _pre12998_)
                                    (if (gx#core-library-module-path?
                                         _pre12998_)
                                        (gx#core-resolve-library-module-path
                                         _pre12998_)
                                        (if (gx#stx-string? _pre12998_)
                                            (gx#core-resolve-module-path__%
                                             _pre12998_
                                             _path12962_)
                                            (gx#stx-e _pre12998_)))))
                               (_path-id13004_
                                (gx#core-module-path->namespace _path12962_))
                               (_pkg-id13006_
                                (if _pkg13000_
                                    (string-append
                                     _pkg13000_
                                     '"/"
                                     _path-id13004_)
                                    _path-id13004_))
                               (_module-id13008_
                                (string->symbol _pkg-id13006_))
                               (_module-ns13013_
                                (let ((_$e13010_ _ns12999_))
                                  (if _$e13010_ _$e13010_ _pkg-id13006_))))
                          (values _prelude13002_
                                  _module-id13008_
                                  _module-ns13013_
                                  _body12966_)))))))
               (_E1297913045_
                (lambda ()
                  (if (gx#stx-pair? _e1297012994_)
                      (let ((_e1298713020_ (gx#syntax-e _e1297012994_)))
                        (let ((_hd1298813023_ (##car _e1298713020_))
                              (_tl1298913025_ (##cdr _e1298713020_)))
                          (if (eq? (gx#stx-e _hd1298813023_) 'package:)
                              (if (gx#stx-pair? _tl1298913025_)
                                  (let ((_e1299013028_
                                         (gx#syntax-e _tl1298913025_)))
                                    (let ((_hd1299113031_
                                           (##car _e1299013028_))
                                          (_tl1299213033_
                                           (##cdr _e1299013028_)))
                                      (let* ((_pkg13036_ _hd1299113031_)
                                             (_rest13038_ _tl1299213033_))
                                        (if '#t
                                            (let ((_pkg13043_
                                                   (if (gx#identifier?
                                                        _pkg13036_)
                                                       (symbol->string
                                                        (gx#stx-e _pkg13036_))
                                                       (if (let ((_$e13040_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-string? _pkg13036_)))
                     (if _$e13040_ _$e13040_ (gx#stx-false? _pkg13036_)))
                   (gx#stx-e _pkg13036_)
                   (gx#raise-syntax-error
                    'import
                    '"Bad syntax; Illegal package name"
                    _pkg13036_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_lp12964_
                                               _rest13038_
                                               _pre12967_
                                               _ns12968_
                                               _pkg13043_))
                                            (_E1298613016_)))))
                                  (_E1298613016_))
                              (_E1298613016_))))
                      (_E1298613016_))))
               (_E1297213074_
                (lambda ()
                  (if (gx#stx-pair? _e1297012994_)
                      (let ((_e1298013049_ (gx#syntax-e _e1297012994_)))
                        (let ((_hd1298113052_ (##car _e1298013049_))
                              (_tl1298213054_ (##cdr _e1298013049_)))
                          (if (eq? (gx#stx-e _hd1298113052_) 'namespace:)
                              (if (gx#stx-pair? _tl1298213054_)
                                  (let ((_e1298313057_
                                         (gx#syntax-e _tl1298213054_)))
                                    (let ((_hd1298413060_
                                           (##car _e1298313057_))
                                          (_tl1298513062_
                                           (##cdr _e1298313057_)))
                                      (let* ((_ns13065_ _hd1298413060_)
                                             (_rest13067_ _tl1298513062_))
                                        (if '#t
                                            (let ((_ns13072_
                                                   (if (gx#identifier?
                                                        _ns13065_)
                                                       (symbol->string
                                                        (gx#stx-e _ns13065_))
                                                       (if (let ((_$e13069_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-string? _ns13065_)))
                     (if _$e13069_ _$e13069_ (gx#stx-false? _ns13065_)))
                   (gx#stx-e _ns13065_)
                   (gx#raise-syntax-error
                    'import
                    '"Bad syntax; illegal namespace"
                    _ns13065_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_lp12964_
                                               _rest13067_
                                               _pre12967_
                                               _ns13072_
                                               _pkg12969_))
                                            (_E1297913045_)))))
                                  (_E1297913045_))
                              (_E1297913045_))))
                      (_E1297913045_))))
               (_E1297113098_
                (lambda ()
                  (if (gx#stx-pair? _e1297012994_)
                      (let ((_e1297313078_ (gx#syntax-e _e1297012994_)))
                        (let ((_hd1297413081_ (##car _e1297313078_))
                              (_tl1297513083_ (##cdr _e1297313078_)))
                          (if (eq? (gx#stx-e _hd1297413081_) 'prelude:)
                              (if (gx#stx-pair? _tl1297513083_)
                                  (let ((_e1297613086_
                                         (gx#syntax-e _tl1297513083_)))
                                    (let ((_hd1297713089_
                                           (##car _e1297613086_))
                                          (_tl1297813091_
                                           (##cdr _e1297613086_)))
                                      (let* ((_prelude13094_ _hd1297713089_)
                                             (_rest13096_ _tl1297813091_))
                                        (if '#t
                                            (_lp12964_
                                             _rest13096_
                                             _prelude13094_
                                             _ns12968_
                                             _pkg12969_)
                                            (_E1297213074_)))))
                                  (_E1297213074_))
                              (_E1297213074_))))
                      (_E1297213074_)))))
          (_E1297113098_)))))
  (define gx#core-read-module/lang
    (lambda (_path12789_)
      (letrec ((_default-read-module-body12791_
                (lambda (_inp12954_)
                  (let _lp12956_ ((_body12958_ '()))
                    (let ((_next12960_ (read-syntax _inp12954_)))
                      (if (eof-object? _next12960_)
                          (reverse _body12958_)
                          (_lp12956_ (cons _next12960_ _body12958_)))))))
               (_read-body12792_
                (lambda (_inp12873_
                         _pre12874_
                         _ns12875_
                         _pkg12876_
                         _args12877_)
                  (let ((_g14261_
                         (if _pkg12876_
                             (values _pre12874_ _ns12875_ _pkg12876_)
                             (gx#core-read-module-package
                              _path12789_
                              _pre12874_
                              _ns12875_))))
                    (begin
                      (let ((_g14262_ (values-count _g14261_)))
                        (if (not (fx= _g14262_ 3))
                            (error "Context expects 3 values" _g14262_)))
                      (let ((_pre12879_ (values-ref _g14261_ 0))
                            (_ns12880_ (values-ref _g14261_ 1))
                            (_pkg12881_ (values-ref _g14261_ 2)))
                        (let* ((_prelude12883_
                                (gx#import-module__0 _pre12879_))
                               (_read-module-body12937_
                                (let ((_$e12929_
                                       (find (lambda (_e1288412886_)
                                               (let* ((_g1288812898_
                                                       _e1288412886_)
                                                      (_E1289112902_
                                                       (lambda ()
                                                         (error '"No clause matching"
                                                                _g1288812898_)))
                                                      (_else1289012906_
                                                       (lambda () '#f))
                                                      (_K1289212910_
                                                       (lambda () '#t)))
                                                 (if (##structure-direct-instance-of?
                                                      _g1288812898_
                                                      (##type-id
                                                       gx#module-export::t))
                                                     (let* ((_e1289312913_
                                                             (##vector-ref
                                                              _g1288812898_
                                                              '1))
                                                            (_e1289412916_
                                                             (##vector-ref
                                                              _g1288812898_
                                                              '2))
                                                            (_e1289512919_
                                                             (##vector-ref
                                                              _g1288812898_
                                                              '3)))
                                                       (if (##eq? _e1289512919_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '1)
                   (let ((_e1289612922_ (##vector-ref _g1288812898_ '4)))
                     (if ((lambda (_g1292412926_)
                            (eq? _g1292412926_ 'read-module-body))
                          _e1289612922_)
                         (_K1289212910_)
                         (_else1289012906_)))
                   (_else1289012906_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_else1289012906_))))
                                             (##structure-ref
                                              _prelude12883_
                                              '9
                                              gx#module-context::t
                                              '#f))))
                                  (if _$e12929_
                                      ((lambda (_xport12932_)
                                         (let ((_proc12935_
                                                (with-exception-catcher
                                                 void
                                                 (lambda ()
                                                   (gx#eval-syntax__0
                                                    (##structure-ref
                                                     (gx#core-resolve-module-export
                                                      _xport12932_)
                                                     '1
                                                     gx#binding::t
                                                     '#f))))))
                                           (if (procedure? _proc12935_)
                                               _proc12935_
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Illegal #lang prelude; read-module-body is not a procedure"
                                                _path12789_
                                                _pre12879_
                                                _proc12935_))))
                                       _$e12929_)
                                      _default-read-module-body12791_)))
                               (_path-id12939_
                                (gx#core-module-path->namespace _path12789_))
                               (_pkg-id12941_
                                (if _pkg12881_
                                    (string-append
                                     _pkg12881_
                                     '"/"
                                     _path-id12939_)
                                    _path-id12939_))
                               (_module-id12943_
                                (string->symbol _pkg-id12941_))
                               (_module-ns12948_
                                (let ((_$e12945_ _ns12880_))
                                  (if _$e12945_ _$e12945_ _pkg-id12941_)))
                               (_body12951_
                                (call-with-parameters
                                 (lambda ()
                                   (_read-module-body12937_ _inp12873_))
                                 gx#current-module-reader-path
                                 _path12789_
                                 gx#current-module-reader-args
                                 _args12877_)))
                          (values _prelude12883_
                                  _module-id12943_
                                  _module-ns12948_
                                  _body12951_)))))))
               (_string-e12793_
                (lambda (_obj12870_ _what12871_)
                  (if (string? _obj12870_)
                      _obj12870_
                      (if (symbol? _obj12870_)
                          (symbol->string _obj12870_)
                          (gx#raise-syntax-error
                           '#f
                           (string-append '"Illegal module " _what12871_)
                           _path12789_
                           _obj12870_)))))
               (_read-lang-args12794_
                (lambda (_inp12825_ _args12826_)
                  (let* ((_args1282712835_ _args12826_)
                         (_E1283012839_
                          (lambda ()
                            (error '"No clause matching" _args1282712835_)))
                         (_else1282912843_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Illegal #lang arguments; missing prelude"
                             _path12789_)))
                         (_K1283112858_
                          (lambda (_args12846_ _prelude12847_)
                            (let* ((_pkg12849_ (pgetq 'package: _args12846_))
                                   (_pkg12851_
                                    (if _pkg12849_
                                        (_string-e12793_ _pkg12849_ '"package")
                                        '#f))
                                   (_ns12853_ (pgetq 'namespace: _args12846_))
                                   (_ns12855_
                                    (if _ns12853_
                                        (_string-e12793_
                                         _ns12853_
                                         '"namespace")
                                        '#f)))
                              (_read-body12792_
                               _inp12825_
                               _prelude12847_
                               _ns12855_
                               _pkg12851_
                               _args12846_)))))
                    (if (##pair? _args1282712835_)
                        (let ((_hd1283212861_ (##car _args1282712835_))
                              (_tl1283312863_ (##cdr _args1282712835_)))
                          (let* ((_prelude12866_ _hd1283212861_)
                                 (_args12868_ _tl1283312863_))
                            (_K1283112858_ _args12868_ _prelude12866_)))
                        (_else1282912843_)))))
               (_read-lang12795_
                (lambda (_inp12800_)
                  (let* ((_head12802_ (read-line _inp12800_))
                         (_$e12804_ (string-index _head12802_ '#\space)))
                    (if _$e12804_
                        ((lambda (_ix12807_)
                           (let ((_lang12809_
                                  (substring _head12802_ '0 _ix12807_)))
                             (if (equal? _lang12809_ '"#lang")
                                 (let* ((_rest12811_
                                         (substring
                                          _head12802_
                                          (fx+ _ix12807_ '1)
                                          (string-length _head12802_)))
                                        (_args12822_
                                         (with-exception-catcher
                                          (lambda (_g1281212814_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Illegal #lang arguments"
                                             _path12789_
                                             _g1281212814_))
                                          (lambda ()
                                            (call-with-input-string
                                             _rest12811_
                                             (lambda (_g1281712819_)
                                               (read-all
                                                _g1281712819_
                                                read)))))))
                                   (_read-lang-args12794_
                                    _inp12800_
                                    _args12822_))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Illegal module syntax"
                                  _path12789_))))
                         _$e12804_)
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module syntax"
                         _path12789_)))))
               (_read-e12796_
                (lambda (_inp12798_)
                  (if (eq? (peek-char _inp12798_) '#\#)
                      (_read-lang12795_ _inp12798_)
                      (gx#raise-syntax-error
                       '#f
                       '"Illegal module syntax"
                       _path12789_)))))
        (call-with-input-file _path12789_ _read-e12796_))))
  (define gx#core-read-module-package
    (lambda (_path12743_ _pre12744_ _ns12745_)
      (letrec ((_string-e12747_
                (lambda (_e12787_)
                  (if (symbol? _e12787_)
                      (symbol->string _e12787_)
                      (if (string? _e12787_)
                          _e12787_
                          (gx#raise-syntax-error
                           '#f
                           '"Malformed package info; unexpected datum"
                           _e12787_))))))
        (let _lp12749_ ((_dir12751_ (path-directory _path12743_))
                        (_pkg-path12752_ '()))
          (let ((_gerbil.pkg12754_ (path-expand '"gerbil.pkg" _dir12751_)))
            (if (file-exists? _gerbil.pkg12754_)
                (let ((_plist12756_
                       (gx#core-library-package-plist__% _dir12751_ '#t)))
                  (if (null? _plist12756_)
                      (let ((_pkg12758_
                             (if (not (null? _pkg-path12752_))
                                 (string-join _pkg-path12752_ '"/")
                                 '#f)))
                        (values _pre12744_ _ns12745_ _pkg12758_))
                      (if (list? _plist12756_)
                          (let* ((_root12760_ (pgetq 'package: _plist12756_))
                                 (_pkg12764_
                                  (let ((_pkg-path12762_
                                         (if _root12760_
                                             (cons (_string-e12747_
                                                    _root12760_)
                                                   _pkg-path12752_)
                                             _pkg-path12752_)))
                                    (if (not (null? _pkg-path12762_))
                                        (string-join _pkg-path12762_ '"/")
                                        '#f)))
                                 (_ns12771_
                                  (let ((_ns12769_
                                         (let ((_$e12766_ _ns12745_))
                                           (if _$e12766_
                                               _$e12766_
                                               (pgetq 'namespace:
                                                      _plist12756_)))))
                                    (if _ns12769_
                                        (_string-e12747_ _ns12769_)
                                        '#f)))
                                 (_pre12776_
                                  (let ((_$e12773_ _pre12744_))
                                    (if _$e12773_
                                        _$e12773_
                                        (pgetq 'prelude: _plist12756_)))))
                            (values _pre12776_ _ns12771_ _pkg12764_))
                          (gx#raise-syntax-error
                           '#f
                           '"Malformed package info; unexpected datum"
                           _plist12756_))))
                (let ((_dir*12779_
                       (path-strip-trailing-directory-separator _dir12751_)))
                  (if (let ((_$e12781_ (string-empty? _dir*12779_)))
                        (if _$e12781_
                            _$e12781_
                            (equal? _dir12751_ _dir*12779_)))
                      (values _pre12744_ _ns12745_ '#f)
                      (let ((_xpath12784_ (path-strip-directory _dir*12779_))
                            (_xdir12785_ (path-directory _dir*12779_)))
                        (_lp12749_
                         _xdir12785_
                         (cons _xpath12784_ _pkg-path12752_)))))))))))
  (define gx#core-module-path->namespace
    (lambda (_path12741_)
      (path-strip-extension (path-strip-directory _path12741_))))
  (define gx#core-module-path->id
    (lambda (_path12739_)
      (string->symbol (gx#core-module-path->namespace _path12739_))))
  (begin
    (define gx#core-resolve-module-path__%
      (lambda (_stx-path12718_ _rel12719_)
        (let* ((_path12721_ (gx#stx-e _stx-path12718_))
               (_path12723_
                (if (string-empty? (path-extension _path12721_))
                    (string-append _path12721_ '".ss")
                    _path12721_)))
          (gx#core-resolve-path__%
           _path12723_
           (let ((_$e12726_ (gx#stx-source _stx-path12718_)))
             (if _$e12726_ _$e12726_ _rel12719_))))))
    (begin
      (define gx#core-resolve-module-path__0
        (lambda (_stx-path12732_)
          (let ((_rel12734_ '#f))
            (gx#core-resolve-module-path__% _stx-path12732_ _rel12734_))))
      (define gx#core-resolve-module-path
        (lambda _g14264_
          (let ((_g14263_ (length _g14264_)))
            (cond ((fx= _g14263_ 1)
                   (apply gx#core-resolve-module-path__0 _g14264_))
                  ((fx= _g14263_ 2)
                   (apply gx#core-resolve-module-path__% _g14264_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-resolve-module-path
                    _g14264_))))))))
  (define gx#core-resolve-library-module-path
    (lambda (_libpath12645_)
      (let* ((_spath12647_ (symbol->string (gx#stx-e _libpath12645_)))
             (_spath12649_
              (substring _spath12647_ '1 (string-length _spath12647_)))
             (_ext12651_ (path-extension _spath12649_))
             (_ssi12653_
              (if (string-empty? _ext12651_)
                  (string-append _spath12649_ '".ssi")
                  (string-append (path-strip-extension _spath12649_) '".ssi")))
             (_src12655_
              (if (string-empty? _ext12651_)
                  (string-append _spath12649_ '".ss")
                  _spath12649_)))
        (let _lp12658_ ((_rest12660_
                         (gx#current-expander-module-library-path)))
          (let* ((_rest1266112670_ _rest12660_)
                 (_E1266412674_
                  (lambda () (error '"No clause matching" _rest1266112670_)))
                 (_try-match1266312682_
                  (lambda ()
                    (let ((_K1266512679_
                           (lambda ()
                             (gx#raise-syntax-error
                              '#f
                              '"Cannot find library module"
                              _libpath12645_))))
                      (if (##null? _rest1266112670_)
                          (_K1266512679_)
                          (_E1266412674_)))))
                 (_K1266612705_
                  (lambda (_rest12685_ _dir12686_)
                    (letrec ((_resolve12688_
                              (lambda (_ssi12698_ _src12699_)
                                (let ((_compiled-path12701_
                                       (path-expand _ssi12698_ _dir12686_)))
                                  (if (file-exists? _compiled-path12701_)
                                      (path-normalize _compiled-path12701_)
                                      (let ((_src-path12703_
                                             (path-expand
                                              _src12699_
                                              _dir12686_)))
                                        (if (file-exists? _src-path12703_)
                                            (path-normalize _src-path12703_)
                                            (_lp12658_ _rest12685_))))))))
                      (let ((_$e12690_
                             (gx#core-library-package-path-prefix _dir12686_)))
                        (if _$e12690_
                            ((lambda (_prefix12693_)
                               (if (string-prefix? _spath12649_ _prefix12693_)
                                   (let ((_ssi12695_
                                          (substring
                                           _ssi12653_
                                           (string-length _prefix12693_)
                                           (string-length _ssi12653_)))
                                         (_src12696_
                                          (substring
                                           _src12655_
                                           (string-length _prefix12693_)
                                           (string-length _src12655_))))
                                     (_resolve12688_ _ssi12695_ _src12696_))
                                   (_lp12658_ _rest12685_)))
                             _$e12690_)
                            (_resolve12688_ _ssi12653_ _src12655_)))))))
            (if (##pair? _rest1266112670_)
                (let ((_hd1266712708_ (##car _rest1266112670_))
                      (_tl1266812710_ (##cdr _rest1266112670_)))
                  (let* ((_dir12713_ _hd1266712708_)
                         (_rest12715_ _tl1266812710_))
                    (_K1266612705_ _rest12715_ _dir12713_)))
                (_try-match1266312682_)))))))
  (define gx#core-library-package-path-prefix
    (lambda (_dir12638_)
      (let ((_$e12640_
             (pgetq 'package: (gx#core-library-package-plist__0 _dir12638_))))
        (if _$e12640_
            ((lambda (_pkg12643_)
               (string-append (symbol->string _pkg12643_) '"/"))
             _$e12640_)
            '#f))))
  (begin
    (define gx#core-library-package-plist__%
      (lambda (_dir12610_ _exists?12611_)
        (let* ((_cache12613_ (gx#core-library-package-cache))
               (_$e12615_ (table-ref _cache12613_ _dir12610_ '#f)))
          (if _$e12615_
              (values _$e12615_)
              (let* ((_gerbil.pkg12618_ (path-expand '"gerbil.pkg" _dir12610_))
                     (_plist12625_
                      (if (let ((_$e12620_ _exists?12611_))
                            (if _$e12620_
                                _$e12620_
                                (file-exists? _gerbil.pkg12618_)))
                          (let ((_e12623_
                                 (call-with-input-file
                                  _gerbil.pkg12618_
                                  read)))
                            (if (eof-object? _e12623_)
                                '()
                                (if (list? _e12623_)
                                    _e12623_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Malformed package info; unexpected datum"
                                     _gerbil.pkg12618_
                                     _e12623_))))
                          '())))
                (begin
                  (table-set! _cache12613_ _dir12610_ _plist12625_)
                  _plist12625_))))))
    (begin
      (define gx#core-library-package-plist__0
        (lambda (_dir12631_)
          (let ((_exists?12633_ '#f))
            (gx#core-library-package-plist__% _dir12631_ _exists?12633_))))
      (define gx#core-library-package-plist
        (lambda _g14266_
          (let ((_g14265_ (length _g14266_)))
            (cond ((fx= _g14265_ 1)
                   (apply gx#core-library-package-plist__0 _g14266_))
                  ((fx= _g14265_ 2)
                   (apply gx#core-library-package-plist__% _g14266_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-library-package-plist
                    _g14266_))))))))
  (define gx#core-library-package-cache
    (lambda ()
      (let ((_$e12604_ (gx#current-expander-module-library-package-cache)))
        (if _$e12604_
            (values _$e12604_)
            (let ((_cache12607_ (make-table)))
              (begin
                (gx#current-expander-module-library-package-cache _cache12607_)
                _cache12607_))))))
  (define gx#core-library-module-path?
    (lambda (_stx12601_) (gx#core-special-module-path? _stx12601_ '#\:)))
  (define gx#core-special-module-path?
    (lambda (_stx12596_ _char12597_)
      (if (gx#identifier? _stx12596_)
          (if (interned-symbol? (gx#stx-e _stx12596_))
              (let ((_str12599_ (symbol->string (gx#stx-e _stx12596_))))
                (if (fx> (string-length _str12599_) '1)
                    (eq? (string-ref _str12599_ '0) _char12597_)
                    '#f))
              '#f)
          '#f)))
  (define gx#core-bound-prelude?
    (lambda (_stx12590_)
      (gx#core-bound-identifier?__%
       _stx12590_
       (lambda (_g1259112593_)
         (gx#expander-binding?__% _g1259112593_ gx#prelude-context?)))))
  (define gx#core-bound-module?
    (lambda (_stx12584_)
      (gx#core-bound-identifier?__%
       _stx12584_
       (lambda (_g1258512587_)
         (gx#expander-binding?__% _g1258512587_ gx#module-context?)))))
  (define gx#core-bound-module-prelude?
    (lambda (_stx12571_)
      (letrec ((_module-prelude?12573_
                (lambda (_e12579_)
                  (let ((_$e12581_
                         (##structure-instance-of?
                          _e12579_
                          'gx#module-context::t)))
                    (if _$e12581_
                        _$e12581_
                        (##structure-instance-of?
                         _e12579_
                         'gx#prelude-context::t))))))
        (gx#core-bound-identifier?__%
         _stx12571_
         (lambda (_g1257412576_)
           (gx#expander-binding?__% _g1257412576_ _module-prelude?12573_))))))
  (begin
    (define gx#core-bind-import!__%
      (lambda (_in12501_ _ctx12502_ _force-weak?12503_)
        (let* ((_in1250412513_ _in12501_)
               (_E1250612517_
                (lambda () (error '"No clause matching" _in1250412513_)))
               (_K1250712530_
                (lambda (_weak?12520_ _phi12521_ _key12522_ _source12523_)
                  (gx#core-bind!__%
                   _key12522_
                   (let ((_e12525_
                          (gx#core-resolve-module-export _source12523_)))
                     (##structure
                      gx#import-binding::t
                      (##structure-ref _e12525_ '1 gx#binding::t '#f)
                      _key12522_
                      _phi12521_
                      _e12525_
                      (##direct-structure-ref
                       _source12523_
                       '1
                       gx#module-export::t
                       '#f)
                      (let ((_$e12527_ _force-weak?12503_))
                        (if _$e12527_ _$e12527_ _weak?12520_))))
                   gx#core-context-rebind?
                   _phi12521_
                   _ctx12502_))))
          (if (##structure-direct-instance-of?
               _in1250412513_
               (##type-id gx#module-import::t))
              (let* ((_e1250812533_ (##vector-ref _in1250412513_ '1))
                     (_source12536_ _e1250812533_)
                     (_e1250912538_ (##vector-ref _in1250412513_ '2))
                     (_key12541_ _e1250912538_)
                     (_e1251012543_ (##vector-ref _in1250412513_ '3))
                     (_phi12546_ _e1251012543_)
                     (_e1251112548_ (##vector-ref _in1250412513_ '4))
                     (_weak?12551_ _e1251112548_))
                (_K1250712530_
                 _weak?12551_
                 _phi12546_
                 _key12541_
                 _source12536_))
              (_E1250612517_)))))
    (begin
      (define gx#core-bind-import!__0
        (lambda (_in12556_)
          (let* ((_ctx12558_ (gx#current-expander-context))
                 (_force-weak?12560_ '#f))
            (gx#core-bind-import!__%
             _in12556_
             _ctx12558_
             _force-weak?12560_))))
      (define gx#core-bind-import!__1
        (lambda (_in12562_ _ctx12563_)
          (let ((_force-weak?12565_ '#f))
            (gx#core-bind-import!__%
             _in12562_
             _ctx12563_
             _force-weak?12565_))))
      (define gx#core-bind-import!
        (lambda _g14268_
          (let ((_g14267_ (length _g14268_)))
            (cond ((fx= _g14267_ 1) (apply gx#core-bind-import!__0 _g14268_))
                  ((fx= _g14267_ 2) (apply gx#core-bind-import!__1 _g14268_))
                  ((fx= _g14267_ 3) (apply gx#core-bind-import!__% _g14268_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-import!
                    _g14268_))))))))
  (begin
    (define gx#core-bind-weak-import!__%
      (lambda (_in12487_ _ctx12488_)
        (gx#core-bind-import!__% _in12487_ _ctx12488_ '#t)))
    (begin
      (define gx#core-bind-weak-import!__0
        (lambda (_in12493_)
          (let ((_ctx12495_ (gx#current-expander-context)))
            (gx#core-bind-weak-import!__% _in12493_ _ctx12495_))))
      (define gx#core-bind-weak-import!
        (lambda _g14270_
          (let ((_g14269_ (length _g14270_)))
            (cond ((fx= _g14269_ 1)
                   (apply gx#core-bind-weak-import!__0 _g14270_))
                  ((fx= _g14269_ 2)
                   (apply gx#core-bind-weak-import!__% _g14270_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-weak-import!
                    _g14270_))))))))
  (define gx#core-resolve-module-export
    (lambda (_out12378_)
      (letrec ((_subst12380_
                (lambda (_key12426_)
                  (let* ((_key1242712435_ _key12426_)
                         (_E1243012439_
                          (lambda ()
                            (error '"No clause matching" _key1242712435_)))
                         (_else1242912443_ (lambda () _key12426_))
                         (_K1243112474_
                          (lambda (_mark12446_ _id12447_)
                            (let* ((_mark1244812454_ _mark12446_)
                                   (_E1245012458_
                                    (lambda ()
                                      (error '"No clause matching"
                                             _mark1244812454_)))
                                   (_K1245112466_
                                    (lambda (_subst12461_)
                                      (let ((_$e12463_
                                             (if _subst12461_
                                                 (table-ref
                                                  _subst12461_
                                                  _id12447_
                                                  '#f)
                                                 '#f)))
                                        (if _$e12463_
                                            _$e12463_
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Illegal key; missing substitution"
                                             _key12426_))))))
                              (if (##structure-instance-of?
                                   _mark1244812454_
                                   (##type-id gx#expander-mark::t))
                                  (let* ((_e1245212469_
                                          (##vector-ref _mark1244812454_ '1))
                                         (_subst12472_ _e1245212469_))
                                    (_K1245112466_ _subst12472_))
                                  (_E1245012458_))))))
                    (if (##pair? _key1242712435_)
                        (let ((_hd1243212477_ (##car _key1242712435_))
                              (_tl1243312479_ (##cdr _key1242712435_)))
                          (let* ((_id12482_ _hd1243212477_)
                                 (_mark12484_ _tl1243312479_))
                            (_K1243112474_ _mark12484_ _id12482_)))
                        (_else1242912443_))))))
        (let* ((_out1238112391_ _out12378_)
               (_E1238312395_
                (lambda () (error '"No clause matching" _out1238112391_)))
               (_K1238412402_
                (lambda (_phi12398_ _key12399_ _ctx12400_)
                  (gx#core-context-resolve
                   (gx#core-context-shift _ctx12400_ _phi12398_)
                   (_subst12380_ _key12399_)))))
          (if (##structure-direct-instance-of?
               _out1238112391_
               (##type-id gx#module-export::t))
              (let* ((_e1238512405_ (##vector-ref _out1238112391_ '1))
                     (_ctx12408_ _e1238512405_)
                     (_e1238612410_ (##vector-ref _out1238112391_ '2))
                     (_key12413_ _e1238612410_)
                     (_e1238712415_ (##vector-ref _out1238112391_ '3))
                     (_phi12418_ _e1238712415_)
                     (_e1238812420_ (##vector-ref _out1238112391_ '4))
                     (_e1238912423_ (##vector-ref _out1238112391_ '5)))
                (_K1238412402_ _phi12418_ _key12413_ _ctx12408_))
              (_E1238312395_))))))
  (begin
    (define gx#core-module-export->import__%
      (lambda (_out12303_ _rename12304_ _dphi12305_)
        (let* ((_out1230612316_ _out12303_)
               (_E1230812320_
                (lambda () (error '"No clause matching" _out1230612316_)))
               (_K1230912332_
                (lambda (_weak?12323_
                         _name12324_
                         _phi12325_
                         _key12326_
                         _ctx12327_)
                  (##structure
                   gx#module-import::t
                   _out12303_
                   (let ((_$e12329_ _rename12304_))
                     (if _$e12329_ _$e12329_ _name12324_))
                   (fx+ _phi12325_ _dphi12305_)
                   _weak?12323_))))
          (if (##structure-direct-instance-of?
               _out1230612316_
               (##type-id gx#module-export::t))
              (let* ((_e1231012335_ (##vector-ref _out1230612316_ '1))
                     (_ctx12338_ _e1231012335_)
                     (_e1231112340_ (##vector-ref _out1230612316_ '2))
                     (_key12343_ _e1231112340_)
                     (_e1231212345_ (##vector-ref _out1230612316_ '3))
                     (_phi12348_ _e1231212345_)
                     (_e1231312350_ (##vector-ref _out1230612316_ '4))
                     (_name12353_ _e1231312350_)
                     (_e1231412355_ (##vector-ref _out1230612316_ '5))
                     (_weak?12358_ _e1231412355_))
                (_K1230912332_
                 _weak?12358_
                 _name12353_
                 _phi12348_
                 _key12343_
                 _ctx12338_))
              (_E1230812320_)))))
    (begin
      (define gx#core-module-export->import__0
        (lambda (_out12363_)
          (let* ((_rename12365_ '#f) (_dphi12367_ '0))
            (gx#core-module-export->import__%
             _out12363_
             _rename12365_
             _dphi12367_))))
      (define gx#core-module-export->import__1
        (lambda (_out12369_ _rename12370_)
          (let ((_dphi12372_ '0))
            (gx#core-module-export->import__%
             _out12369_
             _rename12370_
             _dphi12372_))))
      (define gx#core-module-export->import
        (lambda _g14272_
          (let ((_g14271_ (length _g14272_)))
            (cond ((fx= _g14271_ 1)
                   (apply gx#core-module-export->import__0 _g14272_))
                  ((fx= _g14271_ 2)
                   (apply gx#core-module-export->import__1 _g14272_))
                  ((fx= _g14271_ 3)
                   (apply gx#core-module-export->import__% _g14272_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-module-export->import
                    _g14272_))))))))
  (define gx#core-expand-module%
    (lambda (_stx12231_)
      (letrec ((_make-context12233_
                (lambda (_id12284_)
                  (let* ((_super12286_ (gx#current-expander-context))
                         (_bind-id12288_ (gx#stx-e _id12284_))
                         (_mod-id12290_
                          (if (##structure-instance-of?
                               _super12286_
                               'gx#module-context::t)
                              (make-symbol
                               (##structure-ref
                                _super12286_
                                '1
                                gx#expander-context::t
                                '#f)
                               '"$"
                               _bind-id12288_)
                              _bind-id12288_))
                         (_ns12292_ (symbol->string _mod-id12290_))
                         (_path12299_
                          (if (##structure-instance-of?
                               _super12286_
                               'gx#module-context::t)
                              (let ((_path12294_
                                     (##structure-ref
                                      _super12286_
                                      '7
                                      gx#module-context::t
                                      '#f)))
                                (if (let ((_$e12296_ (pair? _path12294_)))
                                      (if _$e12296_
                                          _$e12296_
                                          (null? _path12294_)))
                                    (cons _bind-id12288_ _path12294_)
                                    (if (not _path12294_)
                                        _bind-id12288_
                                        (cons _bind-id12288_
                                              (cons _path12294_ '())))))
                              _bind-id12288_)))
                    (let ((__obj14248 (make-object gx#module-context::t '11)))
                      (begin
                        (gx#module-context:::init!
                         __obj14248
                         _mod-id12290_
                         _super12286_
                         _ns12292_
                         _path12299_)
                        __obj14248))))))
        (let* ((_e1223412244_ _stx12231_)
               (_E1223612248_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1223412244_)))
               (_E1223512280_
                (lambda ()
                  (if (gx#stx-pair? _e1223412244_)
                      (let ((_e1223712252_ (gx#syntax-e _e1223412244_)))
                        (let ((_hd1223812255_ (##car _e1223712252_))
                              (_tl1223912257_ (##cdr _e1223712252_)))
                          (if (gx#stx-pair? _tl1223912257_)
                              (let ((_e1224012260_
                                     (gx#syntax-e _tl1223912257_)))
                                (let ((_hd1224112263_ (##car _e1224012260_))
                                      (_tl1224212265_ (##cdr _e1224012260_)))
                                  (let* ((_id12268_ _hd1224112263_)
                                         (_body12270_ _tl1224212265_))
                                    (if (if (gx#identifier? _id12268_)
                                            (gx#stx-list? _body12270_)
                                            '#f)
                                        (let* ((_ctx12272_
                                                (_make-context12233_
                                                 _id12268_))
                                               (_body12274_
                                                (gx#core-expand-module-begin
                                                 _body12270_
                                                 _ctx12272_))
                                               (_body12276_
                                                (gx#core-quote-syntax__1
                                                 (gx#core-cons
                                                  '%#begin
                                                  _body12274_)
                                                 (gx#stx-source _stx12231_))))
                                          (begin
                                            (##structure-set!
                                             _ctx12272_
                                             (make-promise
                                              (lambda ()
                                                (gx#eval-syntax* _body12276_)))
                                             '10
                                             gx#module-context::t
                                             '#f)
                                            (##structure-set!
                                             _ctx12272_
                                             _body12276_
                                             '11
                                             gx#module-context::t
                                             '#f)
                                            (gx#core-bind-syntax!__0
                                             _id12268_
                                             _ctx12272_)
                                            (gx#core-quote-syntax__1
                                             (gx#core-list
                                              '%#module
                                              (gx#core-quote-syntax__0
                                               _id12268_)
                                              _body12276_)
                                             (gx#stx-source _stx12231_))))
                                        (_E1223612248_)))))
                              (_E1223612248_))))
                      (_E1223612248_)))))
          (_E1223512280_)))))
  (define gx#core-expand-module-begin
    (lambda (_body12197_ _ctx12198_)
      (call-with-parameters
       (lambda ()
         (begin
           (gx#core-bind-feature!__1 'gerbil-module '#t)
           (let* ((_stx12201_
                   (gx#core-expand-head (cons '%%begin-module _body12197_)))
                  (_e1220212209_ _stx12201_)
                  (_E1220412213_
                   (lambda ()
                     (gx#raise-syntax-error
                      '#f
                      '"Illegal module body expansion"
                      _stx12201_)))
                  (_E1220312227_
                   (lambda ()
                     (if (gx#stx-pair? _e1220212209_)
                         (let ((_e1220512217_ (gx#syntax-e _e1220212209_)))
                           (let ((_hd1220612220_ (##car _e1220512217_))
                                 (_tl1220712222_ (##cdr _e1220512217_)))
                             (if (if (gx#identifier? _hd1220612220_)
                                     (gx#core-identifier=?
                                      _hd1220612220_
                                      '%#begin-module)
                                     '#f)
                                 (let ((_body12225_ _tl1220712222_))
                                   (if '#t
                                       (if (gx#sealed-syntax? _stx12201_)
                                           _body12225_
                                           (gx#core-expand-module-body
                                            _body12225_))
                                       (_E1220412213_)))
                                 (_E1220412213_))))
                         (_E1220412213_)))))
             (_E1220312227_))))
       gx#current-expander-context
       _ctx12198_
       gx#current-expander-phi
       '0)))
  (define gx#core-expand-module-body
    (lambda (_body11993_)
      (letrec ((_expand-special11995_
                (lambda (_hd12124_ _K12125_ _rest12126_ _r12127_)
                  (let* ((_e1212812145_ _hd12124_)
                         (_E1214012149_
                          (lambda ()
                            (_K12125_
                             _rest12126_
                             (cons (gx#core-expand-top _hd12124_) _r12127_))))
                         (_E1213012161_
                          (lambda ()
                            (if (gx#stx-pair? _e1212812145_)
                                (let ((_e1214112153_
                                       (gx#syntax-e _e1212812145_)))
                                  (let ((_hd1214212156_ (##car _e1214112153_))
                                        (_tl1214312158_ (##cdr _e1214112153_)))
                                    (if (if (gx#identifier? _hd1214212156_)
                                            (gx#core-identifier=?
                                             _hd1214212156_
                                             '%#export)
                                            '#f)
                                        (if '#t
                                            (_K12125_
                                             _rest12126_
                                             (cons _hd12124_ _r12127_))
                                            (_E1214012149_))
                                        (_E1214012149_))))
                                (_E1214012149_))))
                         (_E1212912193_
                          (lambda ()
                            (if (gx#stx-pair? _e1212812145_)
                                (let ((_e1213112165_
                                       (gx#syntax-e _e1212812145_)))
                                  (let ((_hd1213212168_ (##car _e1213112165_))
                                        (_tl1213312170_ (##cdr _e1213112165_)))
                                    (if (if (gx#identifier? _hd1213212168_)
                                            (gx#core-identifier=?
                                             _hd1213212168_
                                             '%#define-values)
                                            '#f)
                                        (if (gx#stx-pair? _tl1213312170_)
                                            (let ((_e1213412173_
                                                   (gx#syntax-e
                                                    _tl1213312170_)))
                                              (let ((_hd1213512176_
                                                     (##car _e1213412173_))
                                                    (_tl1213612178_
                                                     (##cdr _e1213412173_)))
                                                (let ((_hd-bind12181_
                                                       _hd1213512176_))
                                                  (if (gx#stx-pair?
                                                       _tl1213612178_)
                                                      (let ((_e1213712183_
                                                             (gx#syntax-e
                                                              _tl1213612178_)))
                                                        (let ((_hd1213812186_
                                                               (##car _e1213712183_))
                                                              (_tl1213912188_
                                                               (##cdr _e1213712183_)))
                                                          (let ((_expr12191_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1213812186_))
                    (if (gx#stx-null? _tl1213912188_)
                        (if (gx#core-bind-values? _hd-bind12181_)
                            (begin
                              (gx#core-bind-values!__0 _hd-bind12181_)
                              (_K12125_ _rest12126_ (cons _hd12124_ _r12127_)))
                            (_E1213012161_))
                        (_E1213012161_)))))
              (_E1213012161_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E1213012161_))
                                        (_E1213012161_))))
                                (_E1213012161_)))))
                    (_E1212912193_))))
               (_expand-body11996_
                (lambda (_rbody11998_)
                  (let _lp12000_ ((_rest12002_ _rbody11998_) (_body12003_ '()))
                    (let* ((_rest1200412012_ _rest12002_)
                           (_E1200712016_
                            (lambda ()
                              (error '"No clause matching" _rest1200412012_)))
                           (_else1200612020_ (lambda () _body12003_))
                           (_K1200812112_
                            (lambda (_rest12023_ _hd12024_)
                              (let* ((_e1202512046_ _hd12024_)
                                     (_E1204112050_
                                      (lambda ()
                                        (_lp12000_
                                         _rest12023_
                                         (cons (gx#core-expand-expression
                                                _hd12024_)
                                               _body12003_))))
                                     (_E1203712064_
                                      (lambda ()
                                        (if (gx#stx-pair? _e1202512046_)
                                            (let ((_e1204212054_
                                                   (gx#syntax-e
                                                    _e1202512046_)))
                                              (let ((_hd1204312057_
                                                     (##car _e1204212054_))
                                                    (_tl1204412059_
                                                     (##cdr _e1204212054_)))
                                                (let ((_form12062_
                                                       _hd1204312057_))
                                                  (if (gx#core-bound-identifier?__%
                                                       _form12062_
                                                       gx#special-form-binding?)
                                                      (_lp12000_
                                                       _rest12023_
                                                       (cons _hd12024_
                                                             _body12003_))
                                                      (_E1204112050_)))))
                                            (_E1204112050_))))
                                     (_E1202712076_
                                      (lambda ()
                                        (if (gx#stx-pair? _e1202512046_)
                                            (let ((_e1203812068_
                                                   (gx#syntax-e
                                                    _e1202512046_)))
                                              (let ((_hd1203912071_
                                                     (##car _e1203812068_))
                                                    (_tl1204012073_
                                                     (##cdr _e1203812068_)))
                                                (if (if (gx#identifier?
                                                         _hd1203912071_)
                                                        (gx#core-identifier=?
                                                         _hd1203912071_
                                                         '%#export)
                                                        '#f)
                                                    (if '#t
                                                        (_lp12000_
                                                         _rest12023_
                                                         (cons (gx#core-expand-export%__0
                                                                _hd12024_)
                                                               _body12003_))
                                                        (_E1203712064_))
                                                    (_E1203712064_))))
                                            (_E1203712064_))))
                                     (_E1202612108_
                                      (lambda ()
                                        (if (gx#stx-pair? _e1202512046_)
                                            (let ((_e1202812080_
                                                   (gx#syntax-e
                                                    _e1202512046_)))
                                              (let ((_hd1202912083_
                                                     (##car _e1202812080_))
                                                    (_tl1203012085_
                                                     (##cdr _e1202812080_)))
                                                (if (if (gx#identifier?
                                                         _hd1202912083_)
                                                        (gx#core-identifier=?
                                                         _hd1202912083_
                                                         '%#define-values)
                                                        '#f)
                                                    (if (gx#stx-pair?
                                                         _tl1203012085_)
                                                        (let ((_e1203112088_
                                                               (gx#syntax-e
                                                                _tl1203012085_)))
                                                          (let ((_hd1203212091_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1203112088_))
                        (_tl1203312093_ (##cdr _e1203112088_)))
                    (let ((_hd-bind12096_ _hd1203212091_))
                      (if (gx#stx-pair? _tl1203312093_)
                          (let ((_e1203412098_ (gx#syntax-e _tl1203312093_)))
                            (let ((_hd1203512101_ (##car _e1203412098_))
                                  (_tl1203612103_ (##cdr _e1203412098_)))
                              (let ((_expr12106_ _hd1203512101_))
                                (if (gx#stx-null? _tl1203612103_)
                                    (if '#t
                                        (_lp12000_
                                         _rest12023_
                                         (cons (gx#core-quote-syntax__1
                                                (gx#core-list
                                                 '%#define-values
                                                 (gx#core-quote-bind-values
                                                  _hd-bind12096_)
                                                 (gx#core-expand-expression
                                                  _expr12106_))
                                                (gx#stx-source _hd12024_))
                                               _body12003_))
                                        (_E1202712076_))
                                    (_E1202712076_)))))
                          (_E1202712076_)))))
                (_E1202712076_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1202712076_))))
                                            (_E1202712076_)))))
                                (_E1202612108_)))))
                      (if (##pair? _rest1200412012_)
                          (let ((_hd1200912115_ (##car _rest1200412012_))
                                (_tl1201012117_ (##cdr _rest1200412012_)))
                            (let* ((_hd12120_ _hd1200912115_)
                                   (_rest12122_ _tl1201012117_))
                              (_K1200812112_ _rest12122_ _hd12120_)))
                          (_else1200612020_)))))))
        (_expand-body11996_
         (gx#core-expand-block__%
          (cons '%#begin-module _body11993_)
          _expand-special11995_
          '#f
          values)))))
  (define gx#core-expand-import/export
    (lambda (_stx11836_
             _expanded?11837_
             _method11838_
             _current-phi11839_
             _expand111840_)
      (letrec ((_K11842_
                (lambda (_rest11960_ _r11961_)
                  (let* ((_e1196211969_ _rest11960_)
                         (_E1196411973_ (lambda () _r11961_))
                         (_E1196311989_
                          (lambda ()
                            (if (gx#stx-pair? _e1196211969_)
                                (let ((_e1196511977_
                                       (gx#syntax-e _e1196211969_)))
                                  (let ((_hd1196611980_ (##car _e1196511977_))
                                        (_tl1196711982_ (##cdr _e1196511977_)))
                                    (let* ((_hd11985_ _hd1196611980_)
                                           (_rest11987_ _tl1196711982_))
                                      (if '#t
                                          (_step11843_
                                           _hd11985_
                                           _rest11987_
                                           _r11961_)
                                          (_E1196411973_)))))
                                (_E1196411973_)))))
                    (_E1196311989_))))
               (_step11843_
                (lambda (_hd11874_ _rest11875_ _r11876_)
                  (let* ((_e1187711895_ _hd11874_)
                         (_E1189011899_
                          (lambda ()
                            (if (_expanded?11837_ (gx#stx-e _hd11874_))
                                (_K11842_
                                 _rest11875_
                                 (cons (gx#stx-e _hd11874_) _r11876_))
                                (_expand111840_
                                 _hd11874_
                                 _K11842_
                                 _rest11875_
                                 _r11876_))))
                         (_E1188611915_
                          (lambda ()
                            (if (gx#stx-pair? _e1187711895_)
                                (let ((_e1189111903_
                                       (gx#syntax-e _e1187711895_)))
                                  (let ((_hd1189211906_ (##car _e1189111903_))
                                        (_tl1189311908_ (##cdr _e1189111903_)))
                                    (let* ((_macro11911_ _hd1189211906_)
                                           (_body11913_ _tl1189311908_))
                                      (if (gx#core-bound-identifier?__%
                                           _macro11911_
                                           gx#syntax-binding?)
                                          (_K11842_
                                           (cons (gx#core-apply-expander__%
                                                  (gx#syntax-local-e__0
                                                   _macro11911_)
                                                  _hd11874_
                                                  _method11838_)
                                                 _rest11875_)
                                           _r11876_)
                                          (_E1189011899_)))))
                                (_E1189011899_))))
                         (_E1187911929_
                          (lambda ()
                            (if (gx#stx-pair? _e1187711895_)
                                (let ((_e1188711919_
                                       (gx#syntax-e _e1187711895_)))
                                  (let ((_hd1188811922_ (##car _e1188711919_))
                                        (_tl1188911924_ (##cdr _e1188711919_)))
                                    (if (eq? (gx#stx-e _hd1188811922_) 'begin:)
                                        (let ((_body11927_ _tl1188911924_))
                                          (if '#t
                                              (_K11842_
                                               (gx#stx-foldr
                                                cons
                                                _rest11875_
                                                _body11927_)
                                               _r11876_)
                                              (_E1188611915_)))
                                        (_E1188611915_))))
                                (_E1188611915_))))
                         (_E1187811956_
                          (lambda ()
                            (if (gx#stx-pair? _e1187711895_)
                                (let ((_e1188011933_
                                       (gx#syntax-e _e1187711895_)))
                                  (let ((_hd1188111936_ (##car _e1188011933_))
                                        (_tl1188211938_ (##cdr _e1188011933_)))
                                    (if (eq? (gx#stx-e _hd1188111936_) 'phi:)
                                        (if (gx#stx-pair? _tl1188211938_)
                                            (let ((_e1188311941_
                                                   (gx#syntax-e
                                                    _tl1188211938_)))
                                              (let ((_hd1188411944_
                                                     (##car _e1188311941_))
                                                    (_tl1188511946_
                                                     (##cdr _e1188311941_)))
                                                (let* ((_dphi11949_
                                                        _hd1188411944_)
                                                       (_body11951_
                                                        _tl1188511946_))
                                                  (if (gx#stx-fixnum?
                                                       _dphi11949_)
                                                      (let ((_rbody11954_
                                                             (call-with-parameters
                                                              (lambda ()
                                                                (_K11842_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _body11951_
                         '()))
                      _current-phi11839_
                      (fx+ (gx#stx-e _dphi11949_) (_current-phi11839_)))))
                (_K11842_ _rest11875_ (foldr1 cons _r11876_ _rbody11954_)))
              (_E1187911929_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E1187911929_))
                                        (_E1187911929_))))
                                (_E1187911929_)))))
                    (_E1187811956_)))))
        (let* ((_e1184411851_ _stx11836_)
               (_E1184611855_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1184411851_)))
               (_E1184511870_
                (lambda ()
                  (if (gx#stx-pair? _e1184411851_)
                      (let ((_e1184711859_ (gx#syntax-e _e1184411851_)))
                        (let ((_hd1184811862_ (##car _e1184711859_))
                              (_tl1184911864_ (##cdr _e1184711859_)))
                          (let ((_body11867_ _tl1184911864_))
                            (if '#t
                                (if (_current-phi11839_)
                                    (_K11842_ _body11867_ '())
                                    (call-with-parameters
                                     (lambda () (_K11842_ _body11867_ '()))
                                     _current-phi11839_
                                     (gx#current-expander-phi)))
                                (_E1184611855_)))))
                      (_E1184611855_)))))
          (_E1184511870_)))))
  (begin
    (define gx#core-expand-import%__%
      (lambda (_stx11376_ _internal-expand?11377_)
        (letrec ((_expand111379_
                  (lambda (_hd11821_ _K11822_ _rest11823_ _r11824_)
                    (if (gx#core-bound-module? _hd11821_)
                        (_import111380_
                         (gx#syntax-local-e__0 _hd11821_)
                         _K11822_
                         _rest11823_
                         _r11824_)
                        (if (gx#core-library-module-path? _hd11821_)
                            (_import111380_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path _hd11821_))
                             _K11822_
                             _rest11823_
                             _r11824_)
                            (if (gx#stx-string? _hd11821_)
                                (_import111380_
                                 (gx#import-module__0
                                  (gx#core-resolve-module-path__%
                                   _hd11821_
                                   (gx#stx-source _stx11376_)))
                                 _K11822_
                                 _rest11823_
                                 _r11824_)
                                (if (##structure-instance-of?
                                     (gx#stx-e _hd11821_)
                                     'gx#module-context::t)
                                    (_K11822_
                                     _rest11823_
                                     (cons (gx#stx-e _hd11821_) _r11824_))
                                    (if (_import-spec?11381_ _hd11821_)
                                        (_import-spec11386_
                                         _hd11821_
                                         _K11822_
                                         _rest11823_
                                         _r11824_)
                                        (if (_import-submodule?11382_
                                             _hd11821_)
                                            (_import-submodule11384_
                                             _hd11821_
                                             _K11822_
                                             _rest11823_
                                             _r11824_)
                                            (if (_import-runtime?11383_
                                                 _hd11821_)
                                                (_import-runtime11385_
                                                 _hd11821_
                                                 _K11822_
                                                 _rest11823_
                                                 _r11824_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; illegal import"
                                                 _stx11376_
                                                 _hd11821_))))))))))
                 (_import111380_
                  (lambda (_ctx11810_ _K11811_ _rest11812_ _r11813_)
                    (let ((_dphi11815_
                           (fx- (gx#current-import-expander-phi)
                                (gx#current-expander-phi))))
                      (_K11811_
                       _rest11812_
                       (cons (##structure
                              gx#import-set::t
                              _ctx11810_
                              _dphi11815_
                              (map (lambda (_g1181611818_)
                                     (gx#core-module-export->import__%
                                      _g1181611818_
                                      '#f
                                      _dphi11815_))
                                   (##structure-ref
                                    _ctx11810_
                                    '9
                                    gx#module-context::t
                                    '#f)))
                             _r11813_)))))
                 (_import-spec?11381_
                  (lambda (_hd11767_)
                    (let* ((_e1176811778_ _hd11767_)
                           (_E1177011782_ (lambda () '#f))
                           (_E1176911806_
                            (lambda ()
                              (if (gx#stx-pair? _e1176811778_)
                                  (let ((_e1177111786_
                                         (gx#syntax-e _e1176811778_)))
                                    (let ((_hd1177211789_
                                           (##car _e1177111786_))
                                          (_tl1177311791_
                                           (##cdr _e1177111786_)))
                                      (if (eq? (gx#stx-e _hd1177211789_)
                                               'spec:)
                                          (if (gx#stx-pair? _tl1177311791_)
                                              (let ((_e1177411794_
                                                     (gx#syntax-e
                                                      _tl1177311791_)))
                                                (let ((_hd1177511797_
                                                       (##car _e1177411794_))
                                                      (_tl1177611799_
                                                       (##cdr _e1177411794_)))
                                                  (let* ((_spath11802_
                                                          _hd1177511797_)
                                                         (_specs11804_
                                                          _tl1177611799_))
                                                    (if '#t
                                                        '#t
                                                        (_E1177011782_)))))
                                              (_E1177011782_))
                                          (_E1177011782_))))
                                  (_E1177011782_)))))
                      (_E1176911806_))))
                 (_import-submodule?11382_
                  (lambda (_hd11724_)
                    (let* ((_e1172511735_ _hd11724_)
                           (_E1172711739_ (lambda () '#f))
                           (_E1172611763_
                            (lambda ()
                              (if (gx#stx-pair? _e1172511735_)
                                  (let ((_e1172811743_
                                         (gx#syntax-e _e1172511735_)))
                                    (let ((_hd1172911746_
                                           (##car _e1172811743_))
                                          (_tl1173011748_
                                           (##cdr _e1172811743_)))
                                      (if (eq? (gx#stx-e _hd1172911746_) 'in:)
                                          (if (gx#stx-pair? _tl1173011748_)
                                              (let ((_e1173111751_
                                                     (gx#syntax-e
                                                      _tl1173011748_)))
                                                (let ((_hd1173211754_
                                                       (##car _e1173111751_))
                                                      (_tl1173311756_
                                                       (##cdr _e1173111751_)))
                                                  (let* ((_top11759_
                                                          _hd1173211754_)
                                                         (_sub11761_
                                                          _tl1173311756_))
                                                    (if '#t
                                                        '#t
                                                        (_E1172711739_)))))
                                              (_E1172711739_))
                                          (_E1172711739_))))
                                  (_E1172711739_)))))
                      (_E1172611763_))))
                 (_import-runtime?11383_
                  (lambda (_hd11681_)
                    (let* ((_e1168211692_ _hd11681_)
                           (_E1168411696_ (lambda () '#f))
                           (_E1168311720_
                            (lambda ()
                              (if (gx#stx-pair? _e1168211692_)
                                  (let ((_e1168511700_
                                         (gx#syntax-e _e1168211692_)))
                                    (let ((_hd1168611703_
                                           (##car _e1168511700_))
                                          (_tl1168711705_
                                           (##cdr _e1168511700_)))
                                      (if (eq? (gx#stx-e _hd1168611703_)
                                               'runtime:)
                                          (if (gx#stx-pair? _tl1168711705_)
                                              (let ((_e1168811708_
                                                     (gx#syntax-e
                                                      _tl1168711705_)))
                                                (let ((_hd1168911711_
                                                       (##car _e1168811708_))
                                                      (_tl1169011713_
                                                       (##cdr _e1168811708_)))
                                                  (let* ((_top11716_
                                                          _hd1168911711_)
                                                         (_spath11718_
                                                          _tl1169011713_))
                                                    (if '#t
                                                        '#t
                                                        (_E1168411696_)))))
                                              (_E1168411696_))
                                          (_E1168411696_))))
                                  (_E1168411696_)))))
                      (_E1168311720_))))
                 (_import-submodule11384_
                  (lambda (_hd11648_ _K11649_ _rest11650_ _r11651_)
                    (let* ((_e1165211659_ _hd11648_)
                           (_E1165411663_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _e1165211659_)))
                           (_E1165311677_
                            (lambda ()
                              (if (gx#stx-pair? _e1165211659_)
                                  (let ((_e1165511667_
                                         (gx#syntax-e _e1165211659_)))
                                    (let ((_hd1165611670_
                                           (##car _e1165511667_))
                                          (_tl1165711672_
                                           (##cdr _e1165511667_)))
                                      (let ((_spath11675_ _tl1165711672_))
                                        (if '#t
                                            (_import111380_
                                             (_import-spec-source11387_
                                              _spath11675_)
                                             _K11649_
                                             _rest11650_
                                             _r11651_)
                                            (_E1165411663_)))))
                                  (_E1165411663_)))))
                      (_E1165311677_))))
                 (_import-runtime11385_
                  (lambda (_hd11615_ _K11616_ _rest11617_ _r11618_)
                    (let* ((_e1161911626_ _hd11615_)
                           (_E1162111630_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _e1161911626_)))
                           (_E1162011644_
                            (lambda ()
                              (if (gx#stx-pair? _e1161911626_)
                                  (let ((_e1162211634_
                                         (gx#syntax-e _e1161911626_)))
                                    (let ((_hd1162311637_
                                           (##car _e1162211634_))
                                          (_tl1162411639_
                                           (##cdr _e1162211634_)))
                                      (let ((_spath11642_ _tl1162411639_))
                                        (if '#t
                                            (_K11616_
                                             _rest11617_
                                             (cons (_import-spec-source11387_
                                                    _spath11642_)
                                                   _r11618_))
                                            (_E1162111630_)))))
                                  (_E1162111630_)))))
                      (_E1162011644_))))
                 (_import-spec11386_
                  (lambda (_hd11454_ _K11455_ _rest11456_ _r11457_)
                    (let* ((_e1145811475_ _hd11454_)
                           (_E1146711479_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _e1145811475_)))
                           (_E1146011589_
                            (lambda ()
                              (if (gx#stx-pair? _e1145811475_)
                                  (let ((_e1146811483_
                                         (gx#syntax-e _e1145811475_)))
                                    (let ((_hd1146911486_
                                           (##car _e1146811483_))
                                          (_tl1147011488_
                                           (##cdr _e1146811483_)))
                                      (if (gx#stx-pair? _tl1147011488_)
                                          (let ((_e1147111491_
                                                 (gx#syntax-e _tl1147011488_)))
                                            (let ((_hd1147211494_
                                                   (##car _e1147111491_))
                                                  (_tl1147311496_
                                                   (##cdr _e1147111491_)))
                                              (let* ((_path11499_
                                                      _hd1147211494_)
                                                     (_specs11501_
                                                      _tl1147311496_))
                                                (if '#t
                                                    (let ((_src-ctx11503_
                                                           (_import-spec-source11387_
                                                            _path11499_))
                                                          (_exports11504_
                                                           (make-table))
                                                          (_specs11505_
                                                           (gx#syntax->list
                                                            _specs11501_)))
                                                      (begin
                                                        (for-each
                                                         (lambda (_out11507_)
                                                           (table-set!
                                                            _exports11504_
                                                            (cons (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _out11507_
                           '3
                           gx#module-export::t
                           '#f)
                          (##direct-structure-ref
                           _out11507_
                           '4
                           gx#module-export::t
                           '#f))
                    _out11507_))
                 (##structure-ref _src-ctx11503_ '9 gx#module-context::t '#f))
                (_K11455_
                 _rest11456_
                 (foldl1 (lambda (_spec11509_ _r11510_)
                           (let* ((_e1151111527_ _spec11509_)
                                  (_E1151311531_
                                   (lambda ()
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _e1151111527_)))
                                  (_E1151211585_
                                   (lambda ()
                                     (if (gx#stx-pair? _e1151111527_)
                                         (let ((_e1151411535_
                                                (gx#syntax-e _e1151111527_)))
                                           (let ((_hd1151511538_
                                                  (##car _e1151411535_))
                                                 (_tl1151611540_
                                                  (##cdr _e1151411535_)))
                                             (let ((_phi11543_ _hd1151511538_))
                                               (if (gx#stx-pair?
                                                    _tl1151611540_)
                                                   (let ((_e1151711545_
                                                          (gx#syntax-e
                                                           _tl1151611540_)))
                                                     (let ((_hd1151811548_
                                                            (##car _e1151711545_))
                                                           (_tl1151911550_
                                                            (##cdr _e1151711545_)))
                                                       (let ((_name11553_
                                                              _hd1151811548_))
                                                         (if (gx#stx-pair?
                                                              _tl1151911550_)
                                                             (let ((_e1152011555_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _tl1151911550_)))
                       (let ((_hd1152111558_ (##car _e1152011555_))
                             (_tl1152211560_ (##cdr _e1152011555_)))
                         (let ((_src-phi11563_ _hd1152111558_))
                           (if (gx#stx-pair? _tl1152211560_)
                               (let ((_e1152311565_
                                      (gx#syntax-e _tl1152211560_)))
                                 (let ((_hd1152411568_ (##car _e1152311565_))
                                       (_tl1152511570_ (##cdr _e1152311565_)))
                                   (let ((_src-name11573_ _hd1152411568_))
                                     (if (gx#stx-null? _tl1152511570_)
                                         (if (if (gx#stx-fixnum?
                                                  _src-phi11563_)
                                                 (if (gx#identifier?
                                                      _src-name11573_)
                                                     (if (gx#stx-fixnum?
                                                          _phi11543_)
                                                         (gx#identifier?
                                                          _name11553_)
                                                         '#f)
                                                     '#f)
                                                 '#f)
                                             (let ((_src-phi11575_
                                                    (gx#stx-e _src-phi11563_))
                                                   (_src-name11576_
                                                    (gx#core-identifier-key
                                                     _src-name11573_))
                                                   (_phi11577_
                                                    (gx#stx-e _phi11543_))
                                                   (_name11578_
                                                    (gx#core-identifier-key
                                                     _name11553_)))
                                               (let ((_$e11580_
                                                      (table-ref
                                                       _exports11504_
                                                       (cons _src-phi11575_
                                                             _src-name11576_)
                                                       '#f)))
                                                 (if _$e11580_
                                                     ((lambda (_out11583_)
                                                        (cons (gx#core-module-export->import__%
                                                               _out11583_
                                                               _name11578_
                                                               (fx- _phi11577_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _src-phi11575_))
                      _r11510_))
              _$e11580_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; no matching export"
                                                      _stx11376_
                                                      _hd11454_))))
                                             (_E1151311531_))
                                         (_E1151311531_)))))
                               (_E1151311531_)))))
                     (_E1151311531_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1151311531_)))))
                                         (_E1151311531_)))))
                             (_E1151211585_)))
                         _r11457_
                         _specs11505_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1146711479_)))))
                                          (_E1146711479_))))
                                  (_E1146711479_))))
                           (_E1145911611_
                            (lambda ()
                              (if (gx#stx-pair? _e1145811475_)
                                  (let ((_e1146111593_
                                         (gx#syntax-e _e1145811475_)))
                                    (let ((_hd1146211596_
                                           (##car _e1146111593_))
                                          (_tl1146311598_
                                           (##cdr _e1146111593_)))
                                      (if (gx#stx-pair? _tl1146311598_)
                                          (let ((_e1146411601_
                                                 (gx#syntax-e _tl1146311598_)))
                                            (let ((_hd1146511604_
                                                   (##car _e1146411601_))
                                                  (_tl1146611606_
                                                   (##cdr _e1146411601_)))
                                              (let ((_path11609_
                                                     _hd1146511604_))
                                                (if (gx#stx-null?
                                                     _tl1146611606_)
                                                    (if '#t
                                                        (_K11455_
                                                         _rest11456_
                                                         (cons (_import-spec-source11387_
                                                                _path11609_)
                                                               _r11457_))
                                                        (_E1146011589_))
                                                    (_E1146011589_)))))
                                          (_E1146011589_))))
                                  (_E1146011589_)))))
                      (_E1145911611_))))
                 (_import-spec-source11387_
                  (lambda (_spath11452_)
                    (gx#core-import-nested-module _spath11452_ _stx11376_)))
                 (_import!11388_
                  (lambda (_rbody11401_)
                    (letrec* ((_current-ctx11403_
                               (gx#current-expander-context))
                              (_deps11404_ (make-hash-table-eq))
                              (_bind!11405_
                               (lambda (_hd11450_)
                                 (gx#core-bind-import!__1
                                  _hd11450_
                                  _current-ctx11403_))))
                      (let _lp11407_ ((_rest11409_ _rbody11401_)
                                      (_body11410_ '()))
                        (let* ((_rest1141111419_ _rest11409_)
                               (_E1141411423_
                                (lambda ()
                                  (error '"No clause matching"
                                         _rest1141111419_)))
                               (_else1141311429_
                                (lambda ()
                                  (begin
                                    (if (##structure-instance-of?
                                         _current-ctx11403_
                                         'gx#module-context::t)
                                        (##structure-set!
                                         _current-ctx11403_
                                         (foldl1 cons
                                                 (##structure-ref
                                                  _current-ctx11403_
                                                  '8
                                                  gx#module-context::t
                                                  '#f)
                                                 _body11410_)
                                         '8
                                         gx#module-context::t
                                         '#f)
                                        '#!void)
                                    (table-for-each
                                     (lambda (_ctx11427_ _g14273_)
                                       (gx#eval-module _ctx11427_))
                                     _deps11404_)
                                    _body11410_)))
                               (_K1141511438_
                                (lambda (_rest11432_ _hd11433_)
                                  (begin
                                    (if (##structure-direct-instance-of?
                                         _hd11433_
                                         'gx#module-import::t)
                                        (begin
                                          (_bind!11405_ _hd11433_)
                                          (if (if (fxpositive?
                                                   (##direct-structure-ref
                                                    _hd11433_
                                                    '3
                                                    gx#module-import::t
                                                    '#f))
                                                  (fxzero? (##direct-structure-ref
                                                            (##direct-structure-ref
                                                             _hd11433_
                                                             '1
                                                             gx#module-import::t
                                                             '#f)
                                                            '3
                                                            gx#module-export::t
                                                            '#f))
                                                  '#f)
                                              (table-set!
                                               _deps11404_
                                               (##direct-structure-ref
                                                (##direct-structure-ref
                                                 _hd11433_
                                                 '1
                                                 gx#module-import::t
                                                 '#f)
                                                '1
                                                gx#module-export::t
                                                '#f)
                                               '#t)
                                              '#!void))
                                        (if (##structure-direct-instance-of?
                                             _hd11433_
                                             'gx#import-set::t)
                                            (begin
                                              (for-each
                                               _bind!11405_
                                               (##direct-structure-ref
                                                _hd11433_
                                                '3
                                                gx#import-set::t
                                                '#f))
                                              (if (fxpositive?
                                                   (##direct-structure-ref
                                                    _hd11433_
                                                    '2
                                                    gx#import-set::t
                                                    '#f))
                                                  (table-set!
                                                   _deps11404_
                                                   (##direct-structure-ref
                                                    _hd11433_
                                                    '1
                                                    gx#import-set::t
                                                    '#f)
                                                   '#t)
                                                  '#!void))
                                            (let ((_$e11435_
                                                   (##structure-instance-of?
                                                    _hd11433_
                                                    'gx#module-context::t)))
                                              (if _$e11435_
                                                  (values _$e11435_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Unexpected import"
                                                   _stx11376_
                                                   _hd11433_)))))
                                    (_lp11407_
                                     _rest11432_
                                     (cons _hd11433_ _body11410_))))))
                          (if (##pair? _rest1141111419_)
                              (let ((_hd1141611441_ (##car _rest1141111419_))
                                    (_tl1141711443_ (##cdr _rest1141111419_)))
                                (let* ((_hd11446_ _hd1141611441_)
                                       (_rest11448_ _tl1141711443_))
                                  (_K1141511438_ _rest11448_ _hd11446_)))
                              (_else1141311429_)))))))
                 (_expanded-import?11389_
                  (lambda (_e11393_)
                    (let ((_$e11395_
                           (##structure-direct-instance-of?
                            _e11393_
                            'gx#import-set::t)))
                      (if _$e11395_
                          _$e11395_
                          (let ((_$e11398_
                                 (##structure-direct-instance-of?
                                  _e11393_
                                  'gx#module-import::t)))
                            (if _$e11398_
                                _$e11398_
                                (##structure-instance-of?
                                 _e11393_
                                 'gx#module-context::t))))))))
          (let ((_rbody11391_
                 (gx#core-expand-import/export
                  _stx11376_
                  _expanded-import?11389_
                  'apply-import-expander
                  gx#current-import-expander-phi
                  _expand111379_)))
            (if _internal-expand?11377_
                (reverse _rbody11391_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#import (_import!11388_ _rbody11391_))
                 (gx#stx-source _stx11376_)))))))
    (begin
      (define gx#core-expand-import%__0
        (lambda (_stx11829_)
          (let ((_internal-expand?11831_ '#f))
            (gx#core-expand-import%__% _stx11829_ _internal-expand?11831_))))
      (define gx#core-expand-import%
        (lambda _g14275_
          (let ((_g14274_ (length _g14275_)))
            (cond ((fx= _g14274_ 1) (apply gx#core-expand-import%__0 _g14275_))
                  ((fx= _g14274_ 2) (apply gx#core-expand-import%__% _g14275_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-expand-import%
                    _g14275_))))))))
  (define gx#core-import-nested-module
    (lambda (_spath11303_ _where11304_)
      (let* ((_e1130511312_ _spath11303_)
             (_E1130711316_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1130511312_)))
             (_E1130611371_
              (lambda ()
                (if (gx#stx-pair? _e1130511312_)
                    (let ((_e1130811320_ (gx#syntax-e _e1130511312_)))
                      (let ((_hd1130911323_ (##car _e1130811320_))
                            (_tl1131011325_ (##cdr _e1130811320_)))
                        (let* ((_origin11328_ _hd1130911323_)
                               (_sub11330_ _tl1131011325_))
                          (if '#t
                              (let ((_origin-ctx11332_
                                     (if (gx#stx-false? _origin11328_)
                                         (gx#current-expander-context)
                                         (gx#import-module__0 _origin11328_))))
                                (let _lp11334_ ((_rest11336_ _sub11330_)
                                                (_ctx11337_ _origin-ctx11332_))
                                  (let* ((_e1133811345_ _rest11336_)
                                         (_E1134011349_ (lambda () _ctx11337_))
                                         (_E1133911367_
                                          (lambda ()
                                            (if (gx#stx-pair? _e1133811345_)
                                                (let ((_e1134111353_
                                                       (gx#syntax-e
                                                        _e1133811345_)))
                                                  (let ((_hd1134211356_
                                                         (##car _e1134111353_))
                                                        (_tl1134311358_
                                                         (##cdr _e1134111353_)))
                                                    (let* ((_id11361_
                                                            _hd1134211356_)
                                                           (_rest11363_
                                                            _tl1134311358_))
                                                      (if '#t
                                                          (let ((_bind11365_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#resolve-identifier__% _id11361_ '0 _ctx11337_)))
                    (begin
                      (if (if (##structure-direct-instance-of?
                               _bind11365_
                               'gx#syntax-binding::t)
                              (##structure-instance-of?
                               (##direct-structure-ref
                                _bind11365_
                                '4
                                gx#syntax-binding::t
                                '#f)
                               'gx#module-context::t)
                              '#f)
                          '#!void
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; not bound as module"
                           _where11304_
                           _spath11303_
                           _id11361_))
                      (_lp11334_
                       _rest11363_
                       (##direct-structure-ref
                        _bind11365_
                        '4
                        gx#syntax-binding::t
                        '#f))))
                  (_E1134011349_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E1134011349_)))))
                                    (_E1133911367_))))
                              (_E1130711316_)))))
                    (_E1130711316_)))))
        (_E1130611371_))))
  (define gx#core-expand-import-source
    (lambda (_hd11301_)
      (gx#core-expand-import%__%
       (cons 'import-internal% (cons _hd11301_ '()))
       '#t)))
  (begin
    (define gx#core-expand-export%__%
      (lambda (_stx10812_ _internal-expand?10813_)
        (letrec* ((_make-export__opt-lambda11247__1423714238_
                   (lambda (_bind11249_ _phi11250_ _ctx11251_ _name11252_)
                     (let* ((_key11254_
                             (##structure-ref
                              _bind11249_
                              '2
                              gx#binding::t
                              '#f))
                            (_export-key11256_
                             (if _name11252_
                                 (gx#core-identifier-key _name11252_)
                                 _key11254_)))
                       (##structure
                        gx#module-export::t
                        _ctx11251_
                        _key11254_
                        _phi11250_
                        _export-key11256_
                        (let ((_$e11259_
                               (##structure-instance-of?
                                _bind11249_
                                'gx#extern-binding::t)))
                          (if _$e11259_
                              _$e11259_
                              (##structure-direct-instance-of?
                               _bind11249_
                               'gx#import-binding::t)))))))
                  (_make-export__0__1423914242_
                   (lambda (_bind11265_)
                     (let* ((_phi11267_ (gx#current-export-expander-phi))
                            (_ctx11269_ (gx#current-expander-context))
                            (_name11271_ '#f))
                       (_make-export__opt-lambda11247__1423714238_
                        _bind11265_
                        _phi11267_
                        _ctx11269_
                        _name11271_))))
                  (_make-export__1__1424014243_
                   (lambda (_bind11273_ _phi11274_)
                     (let* ((_ctx11276_ (gx#current-expander-context))
                            (_name11278_ '#f))
                       (_make-export__opt-lambda11247__1423714238_
                        _bind11273_
                        _phi11274_
                        _ctx11276_
                        _name11278_))))
                  (_make-export__2__1424114244_
                   (lambda (_bind11280_ _phi11281_ _ctx11282_)
                     (let ((_name11284_ '#f))
                       (_make-export__opt-lambda11247__1423714238_
                        _bind11280_
                        _phi11281_
                        _ctx11282_
                        _name11284_))))
                  (_make-export10815_
                   (lambda _g14277_
                     (let ((_g14276_ (length _g14277_)))
                       (cond ((fx= _g14276_ 1)
                              (apply _make-export__0__1423914242_ _g14277_))
                             ((fx= _g14276_ 2)
                              (apply _make-export__1__1424014243_ _g14277_))
                             ((fx= _g14276_ 3)
                              (apply _make-export__2__1424114244_ _g14277_))
                             ((fx= _g14276_ 4)
                              (apply _make-export__opt-lambda11247__1423714238_
                                     _g14277_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g14277_))))))
                  (_expand110816_
                   (lambda (_hd10962_ _K10963_ _rest10964_ _r10965_)
                     (let* ((_e1096610998_ _hd10962_)
                            (_E1099311002_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal export"
                                _stx10812_
                                _hd10962_)))
                            (_E1098311081_
                             (lambda ()
                               (if (gx#stx-pair? _e1096610998_)
                                   (let ((_e1099411006_
                                          (gx#syntax-e _e1096610998_)))
                                     (let ((_hd1099511009_
                                            (##car _e1099411006_))
                                           (_tl1099611011_
                                            (##cdr _e1099411006_)))
                                       (if (eq? (gx#stx-e _hd1099511009_)
                                                'import:)
                                           (let ((_in11014_ _tl1099611011_))
                                             (if (gx#stx-list? _in11014_)
                                                 (let _lp11016_ ((_in-rest11018_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _in11014_)
                         (_r11019_ _r10965_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_e1102011027_
                                                           _in-rest11018_)
                                                          (_E1102211031_
                                                           (lambda ()
                                                             (_K10963_
                                                              _rest10964_
                                                              _r11019_)))
                                                          (_E1102111077_
                                                           (lambda ()
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _e1102011027_)
                         (let ((_e1102311035_ (gx#syntax-e _e1102011027_)))
                           (let ((_hd1102411038_ (##car _e1102311035_))
                                 (_tl1102511040_ (##cdr _e1102311035_)))
                             (let* ((_hd11043_ _hd1102411038_)
                                    (_in-rest11045_ _tl1102511040_))
                               (if '#t
                                   (let ((_src11075_
                                          (if (gx#core-bound-module? _hd11043_)
                                              (gx#syntax-local-e__0 _hd11043_)
                                              (if (gx#core-library-module-path?
                                                   _hd11043_)
                                                  (gx#import-module__0
                                                   (gx#core-resolve-library-module-path
                                                    _hd11043_))
                                                  (if (gx#stx-string?
                                                       _hd11043_)
                                                      (gx#import-module__0
                                                       (gx#core-resolve-module-path__%
                                                        _hd11043_
                                                        (gx#stx-source
                                                         _stx10812_)))
                                                      (let* ((_e1104611053_
                                                              _hd11043_)
                                                             (_E1104811057_
                                                              (lambda ()
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; illegal re-export"
                         _stx10812_
                         _hd11043_)))
                     (_E1104711071_
                      (lambda ()
                        (if (gx#stx-pair? _e1104611053_)
                            (let ((_e1104911061_ (gx#syntax-e _e1104611053_)))
                              (let ((_hd1105011064_ (##car _e1104911061_))
                                    (_tl1105111066_ (##cdr _e1104911061_)))
                                (if (eq? (gx#stx-e _hd1105011064_) 'in:)
                                    (let ((_spath11069_ _tl1105111066_))
                                      (if '#t
                                          (gx#core-import-nested-module
                                           _spath11069_
                                           _stx10812_)
                                          (_E1104811057_)))
                                    (_E1104811057_))))
                            (_E1104811057_)))))
                (_E1104711071_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_lp11016_
                                      _in-rest11045_
                                      (_export-imports10817_
                                       _src11075_
                                       _r11019_)))
                                   (_E1102211031_)))))
                         (_E1102211031_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E1102111077_)))
                                                 (_E1099311002_)))
                                           (_E1099311002_))))
                                   (_E1099311002_))))
                            (_E1097011120_
                             (lambda ()
                               (if (gx#stx-pair? _e1096610998_)
                                   (let ((_e1098411085_
                                          (gx#syntax-e _e1096610998_)))
                                     (let ((_hd1098511088_
                                            (##car _e1098411085_))
                                           (_tl1098611090_
                                            (##cdr _e1098411085_)))
                                       (if (eq? (gx#stx-e _hd1098511088_)
                                                'rename:)
                                           (if (gx#stx-pair? _tl1098611090_)
                                               (let ((_e1098711093_
                                                      (gx#syntax-e
                                                       _tl1098611090_)))
                                                 (let ((_hd1098811096_
                                                        (##car _e1098711093_))
                                                       (_tl1098911098_
                                                        (##cdr _e1098711093_)))
                                                   (let ((_id11101_
                                                          _hd1098811096_))
                                                     (if (gx#stx-pair?
                                                          _tl1098911098_)
                                                         (let ((_e1099011103_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1098911098_)))
                   (let ((_hd1099111106_ (##car _e1099011103_))
                         (_tl1099211108_ (##cdr _e1099011103_)))
                     (let ((_name11111_ _hd1099111106_))
                       (if (gx#stx-null? _tl1099211108_)
                           (if '#t
                               (let* ((_phi11113_
                                       (gx#current-export-expander-phi))
                                      (_$e11115_
                                       (gx#core-resolve-identifier__1
                                        _id11101_
                                        _phi11113_)))
                                 (if _$e11115_
                                     ((lambda (_bind11118_)
                                        (_K10963_
                                         _rest10964_
                                         (cons (_make-export__opt-lambda11247__1423714238_
                                                _bind11118_
                                                _phi11113_
                                                (gx#current-expander-context)
                                                _name11111_)
                                               _r10965_)))
                                      _$e11115_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Reference to unbound identifier"
                                      _stx10812_
                                      _hd10962_
                                      _id11101_)))
                               (_E1098311081_))
                           (_E1098311081_)))))
                 (_E1098311081_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E1098311081_))
                                           (_E1098311081_))))
                                   (_E1098311081_))))
                            (_E1096911169_
                             (lambda ()
                               (if (gx#stx-pair? _e1096610998_)
                                   (let ((_e1097111124_
                                          (gx#syntax-e _e1096610998_)))
                                     (let ((_hd1097211127_
                                            (##car _e1097111124_))
                                           (_tl1097311129_
                                            (##cdr _e1097111124_)))
                                       (if (eq? (gx#stx-e _hd1097211127_)
                                                'spec:)
                                           (if (gx#stx-pair? _tl1097311129_)
                                               (let ((_e1097411132_
                                                      (gx#syntax-e
                                                       _tl1097311129_)))
                                                 (let ((_hd1097511135_
                                                        (##car _e1097411132_))
                                                       (_tl1097611137_
                                                        (##cdr _e1097411132_)))
                                                   (let ((_phi11140_
                                                          _hd1097511135_))
                                                     (if (gx#stx-pair?
                                                          _tl1097611137_)
                                                         (let ((_e1097711142_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1097611137_)))
                   (let ((_hd1097811145_ (##car _e1097711142_))
                         (_tl1097911147_ (##cdr _e1097711142_)))
                     (let ((_id11150_ _hd1097811145_))
                       (if (gx#stx-pair? _tl1097911147_)
                           (let ((_e1098011152_ (gx#syntax-e _tl1097911147_)))
                             (let ((_hd1098111155_ (##car _e1098011152_))
                                   (_tl1098211157_ (##cdr _e1098011152_)))
                               (let ((_name11160_ _hd1098111155_))
                                 (if (gx#stx-null? _tl1098211157_)
                                     (if (if (gx#stx-fixnum? _phi11140_)
                                             (if (gx#identifier? _id11150_)
                                                 (gx#identifier? _name11160_)
                                                 '#f)
                                             '#f)
                                         (let* ((_phi11162_
                                                 (gx#stx-e _phi11140_))
                                                (_$e11164_
                                                 (gx#core-resolve-identifier__1
                                                  _id11150_
                                                  _phi11162_)))
                                           (if _$e11164_
                                               ((lambda (_bind11167_)
                                                  (_K10963_
                                                   _rest10964_
                                                   (cons (_make-export__opt-lambda11247__1423714238_
                                                          _bind11167_
                                                          _phi11162_
                                                          (gx#current-expander-context)
                                                          _name11160_)
                                                         _r10965_)))
                                                _$e11164_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Reference to unbound identifier"
                                                _stx10812_
                                                _hd10962_
                                                _id11150_)))
                                         (_E1097011120_))
                                     (_E1097011120_)))))
                           (_E1097011120_)))))
                 (_E1097011120_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E1097011120_))
                                           (_E1097011120_))))
                                   (_E1097011120_))))
                            (_E1096811180_
                             (lambda ()
                               (let ((_id11173_ _e1096610998_))
                                 (if (gx#identifier? _id11173_)
                                     (let ((_$e11175_
                                            (gx#core-resolve-identifier__1
                                             _id11173_
                                             (gx#current-export-expander-phi))))
                                       (if _$e11175_
                                           ((lambda (_bind11178_)
                                              (_K10963_
                                               _rest10964_
                                               (cons (_make-export__0__1423914242_
                                                      _bind11178_)
                                                     _r10965_)))
                                            _$e11175_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Reference to unbound identifier"
                                            _stx10812_
                                            _hd10962_)))
                                     (_E1096911169_)))))
                            (_E1096711244_
                             (lambda ()
                               (if (eq? (gx#stx-e _e1096610998_) '#t)
                                   (if '#t
                                       (let* ((_current-ctx11184_
                                               (gx#current-expander-context))
                                              (_current-phi11186_
                                               (gx#current-export-expander-phi))
                                              (_phi-ctx11188_
                                               (gx#core-context-shift
                                                _current-ctx11184_
                                                _current-phi11186_))
                                              (_phi-bind11190_
                                               (table->list
                                                (##structure-ref
                                                 _phi-ctx11188_
                                                 '2
                                                 gx#expander-context::t
                                                 '#f))))
                                         (let _lp11193_ ((_bind-rest11195_
                                                          _phi-bind11190_)
                                                         (_set11196_ '()))
                                           (let* ((_bind-rest1119711207_
                                                   _bind-rest11195_)
                                                  (_E1120011211_
                                                   (lambda ()
                                                     (error '"No clause matching"
                                                            _bind-rest1119711207_)))
                                                  (_else1119911215_
                                                   (lambda ()
                                                     (_K10963_
                                                      _rest10964_
                                                      (cons (##structure
                                                             gx#export-set::t
                                                             '#f
                                                             _current-phi11186_
                                                             _set11196_)
                                                            _r10965_))))
                                                  (_K1120111225_
                                                   (lambda (_bind-rest11218_
                                                            _bind11219_
                                                            _key11220_)
                                                     (if (let ((_$e11222_
                                                                (##structure-direct-instance-of?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _bind11219_
                         'gx#import-binding::t)))
                   (if _$e11222_
                       _$e11222_
                       (gx#private-feature-binding? _bind11219_)))
                 (_lp11193_ _bind-rest11218_ _set11196_)
                 (_lp11193_
                  _bind-rest11218_
                  (cons (_make-export__2__1424114244_
                         _bind11219_
                         _current-phi11186_
                         _current-ctx11184_)
                        _set11196_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (##pair? _bind-rest1119711207_)
                                                 (let ((_hd1120211228_
                                                        (##car _bind-rest1119711207_))
                                                       (_tl1120311230_
                                                        (##cdr _bind-rest1119711207_)))
                                                   (if (##pair? _hd1120211228_)
                                                       (let ((_hd1120411233_
                                                              (##car _hd1120211228_))
                                                             (_tl1120511235_
                                                              (##cdr _hd1120211228_)))
                                                         (let* ((_key11238_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1120411233_)
                        (_bind11240_ _tl1120511235_)
                        (_bind-rest11242_ _tl1120311230_))
                   (_K1120111225_ _bind-rest11242_ _bind11240_ _key11238_)))
               (_else1119911215_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_else1119911215_)))))
                                       (_E1096811180_))
                                   (_E1096811180_)))))
                       (_E1096711244_))))
                  (_export-imports10817_
                   (lambda (_src10838_ _r10839_)
                     (letrec* ((_current-ctx10841_
                                (gx#current-expander-context))
                               (_current-phi10842_
                                (gx#current-export-expander-phi))
                               (_import->export10843_
                                (lambda (_in10924_)
                                  (let* ((_in1092510933_ _in10924_)
                                         (_E1092710937_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _in1092510933_)))
                                         (_K1092810944_
                                          (lambda (_phi10940_
                                                   _key10941_
                                                   _out10942_)
                                            (##structure
                                             gx#module-export::t
                                             _current-ctx10841_
                                             _key10941_
                                             _phi10940_
                                             _key10941_
                                             '#t))))
                                    (if (##structure-direct-instance-of?
                                         _in1092510933_
                                         (##type-id gx#module-import::t))
                                        (let* ((_e1092910947_
                                                (##vector-ref
                                                 _in1092510933_
                                                 '1))
                                               (_out10950_ _e1092910947_)
                                               (_e1093010952_
                                                (##vector-ref
                                                 _in1092510933_
                                                 '2))
                                               (_key10955_ _e1093010952_)
                                               (_e1093110957_
                                                (##vector-ref
                                                 _in1092510933_
                                                 '3))
                                               (_phi10960_ _e1093110957_))
                                          (_K1092810944_
                                           _phi10960_
                                           _key10955_
                                           _out10950_))
                                        (_E1092710937_)))))
                               (_fold-e10844_
                                (lambda (_in10846_ _r10847_)
                                  (let* ((_in1084810862_ _in10846_)
                                         (_E1085210866_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _in1084810862_)))
                                         (_else1085110870_
                                          (lambda () _r10847_))
                                         (_try-match1085010899_
                                          (lambda ()
                                            (let ((_K1085310881_
                                                   (lambda (_imports10874_
                                                            _phi10875_
                                                            _ctx10876_)
                                                     (if (if (fx= _phi10875_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _current-phi10842_)
                     (eq? _src10838_ _ctx10876_)
                     '#f)
                 (foldl1 (lambda (_in10878_ _r10879_)
                           (cons (_import->export10843_ _in10878_) _r10879_))
                         _r10847_
                         _imports10874_)
                 _r10847_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (##structure-direct-instance-of?
                                                   _in1084810862_
                                                   (##type-id
                                                    gx#import-set::t))
                                                  (let* ((_e1085410884_
                                                          (##vector-ref
                                                           _in1084810862_
                                                           '1))
                                                         (_ctx10887_
                                                          _e1085410884_)
                                                         (_e1085510889_
                                                          (##vector-ref
                                                           _in1084810862_
                                                           '2))
                                                         (_phi10892_
                                                          _e1085510889_)
                                                         (_e1085610894_
                                                          (##vector-ref
                                                           _in1084810862_
                                                           '3))
                                                         (_imports10897_
                                                          _e1085610894_))
                                                    (_K1085310881_
                                                     _imports10897_
                                                     _phi10892_
                                                     _ctx10887_))
                                                  (_else1085110870_)))))
                                         (_K1085710906_
                                          (lambda (_phi10902_
                                                   _key10903_
                                                   _out10904_)
                                            (if (if (fx= _phi10902_
                                                         _current-phi10842_)
                                                    (eq? _src10838_
                                                         (##direct-structure-ref
                                                          _out10904_
                                                          '1
                                                          gx#module-export::t
                                                          '#f))
                                                    '#f)
                                                (cons (_import->export10843_
                                                       _in10846_)
                                                      _r10847_)
                                                _r10847_))))
                                    (if (##structure-direct-instance-of?
                                         _in1084810862_
                                         (##type-id gx#module-import::t))
                                        (let* ((_e1085810909_
                                                (##vector-ref
                                                 _in1084810862_
                                                 '1))
                                               (_out10912_ _e1085810909_)
                                               (_e1085910914_
                                                (##vector-ref
                                                 _in1084810862_
                                                 '2))
                                               (_key10917_ _e1085910914_)
                                               (_e1086010919_
                                                (##vector-ref
                                                 _in1084810862_
                                                 '3))
                                               (_phi10922_ _e1086010919_))
                                          (_K1085710906_
                                           _phi10922_
                                           _key10917_
                                           _out10912_))
                                        (_try-match1085010899_))))))
                       (cons (##structure
                              gx#export-set::t
                              _src10838_
                              _current-phi10842_
                              (foldl1 _fold-e10844_
                                      '()
                                      (##structure-ref
                                       _current-ctx10841_
                                       '8
                                       gx#module-context::t
                                       '#f)))
                             _r10839_))))
                  (_export!10818_
                   (lambda (_rbody10828_)
                     (letrec* ((_current-ctx10830_
                                (gx#current-expander-context))
                               (_fold-e10831_
                                (lambda (_out10835_ _r10836_)
                                  (if (##structure-direct-instance-of?
                                       _out10835_
                                       'gx#module-export::t)
                                      (cons _out10835_ _r10836_)
                                      (if (##structure-direct-instance-of?
                                           _out10835_
                                           'gx#export-set::t)
                                          (foldl1 cons
                                                  _r10836_
                                                  (##direct-structure-ref
                                                   _out10835_
                                                   '3
                                                   gx#export-set::t
                                                   '#f))
                                          _r10836_)))))
                       (let ((_body10833_ (reverse _rbody10828_)))
                         (begin
                           (##structure-set!
                            _current-ctx10830_
                            (foldl1 _fold-e10831_
                                    (##structure-ref
                                     _current-ctx10830_
                                     '9
                                     gx#module-context::t
                                     '#f)
                                    _body10833_)
                            '9
                            gx#module-context::t
                            '#f)
                           _body10833_)))))
                  (_expanded-export?10819_
                   (lambda (_e10823_)
                     (let ((_$e10825_
                            (##structure-direct-instance-of?
                             _e10823_
                             'gx#module-export::t)))
                       (if _$e10825_
                           _$e10825_
                           (##structure-direct-instance-of?
                            _e10823_
                            'gx#export-set::t))))))
          (let ((_rbody10821_
                 (gx#core-expand-import/export
                  _stx10812_
                  _expanded-export?10819_
                  'apply-export-expander
                  gx#current-export-expander-phi
                  _expand110816_)))
            (if _internal-expand?10813_
                (reverse _rbody10821_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#export (_export!10818_ _rbody10821_))
                 (gx#stx-source _stx10812_)))))))
    (begin
      (define gx#core-expand-export%__0
        (lambda (_stx11294_)
          (let ((_internal-expand?11296_ '#f))
            (gx#core-expand-export%__% _stx11294_ _internal-expand?11296_))))
      (define gx#core-expand-export%
        (lambda _g14279_
          (let ((_g14278_ (length _g14279_)))
            (cond ((fx= _g14278_ 1) (apply gx#core-expand-export%__0 _g14279_))
                  ((fx= _g14278_ 2) (apply gx#core-expand-export%__% _g14279_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-expand-export%
                    _g14279_))))))))
  (define gx#core-expand-export-source
    (lambda (_hd10809_)
      (gx#core-expand-export%__%
       (cons 'export-macro% (cons _hd10809_ '()))
       '#t)))
  (define gx#core-expand-provide%
    (lambda (_stx10779_)
      (let* ((_e1078010787_ _stx10779_)
             (_E1078210791_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1078010787_)))
             (_E1078110805_
              (lambda ()
                (if (gx#stx-pair? _e1078010787_)
                    (let ((_e1078310795_ (gx#syntax-e _e1078010787_)))
                      (let ((_hd1078410798_ (##car _e1078310795_))
                            (_tl1078510800_ (##cdr _e1078310795_)))
                        (let ((_body10803_ _tl1078510800_))
                          (if (gx#identifier-list? _body10803_)
                              (begin
                                (gx#stx-for-each1
                                 gx#core-bind-feature!
                                 _body10803_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#provide
                                  (gx#stx-map1
                                   gx#core-quote-syntax
                                   _body10803_))
                                 (gx#stx-source _stx10779_)))
                              (_E1078210791_)))))
                    (_E1078210791_)))))
        (_E1078110805_))))
  (begin
    (define gx#core-bind-feature!__%
      (lambda (_id10745_ _private?10746_ _phi10747_ _ctx10748_)
        (gx#core-bind-syntax!__%
         _id10745_
         ((if _private?10746_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _id10745_))
         _private?10746_
         _phi10747_
         _ctx10748_)))
    (begin
      (define gx#core-bind-feature!__0
        (lambda (_id10753_)
          (let* ((_private?10755_ '#f)
                 (_phi10757_ (gx#current-expander-phi))
                 (_ctx10759_ (gx#current-expander-context)))
            (gx#core-bind-feature!__%
             _id10753_
             _private?10755_
             _phi10757_
             _ctx10759_))))
      (define gx#core-bind-feature!__1
        (lambda (_id10761_ _private?10762_)
          (let* ((_phi10764_ (gx#current-expander-phi))
                 (_ctx10766_ (gx#current-expander-context)))
            (gx#core-bind-feature!__%
             _id10761_
             _private?10762_
             _phi10764_
             _ctx10766_))))
      (define gx#core-bind-feature!__2
        (lambda (_id10768_ _private?10769_ _phi10770_)
          (let ((_ctx10772_ (gx#current-expander-context)))
            (gx#core-bind-feature!__%
             _id10768_
             _private?10769_
             _phi10770_
             _ctx10772_))))
      (define gx#core-bind-feature!
        (lambda _g14281_
          (let ((_g14280_ (length _g14281_)))
            (cond ((fx= _g14280_ 1) (apply gx#core-bind-feature!__0 _g14281_))
                  ((fx= _g14280_ 2) (apply gx#core-bind-feature!__1 _g14281_))
                  ((fx= _g14280_ 3) (apply gx#core-bind-feature!__2 _g14281_))
                  ((fx= _g14280_ 4) (apply gx#core-bind-feature!__% _g14281_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-feature!
                    _g14281_)))))))))
