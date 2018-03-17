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
    (lambda _$args14533_
      (apply make-struct-instance gx#module-import::t _$args14533_)))
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
    (lambda _$args14530_
      (apply make-struct-instance gx#module-export::t _$args14530_)))
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
    (lambda _$args14527_
      (apply make-struct-instance gx#import-set::t _$args14527_)))
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
    (lambda _$args14524_
      (apply make-struct-instance gx#export-set::t _$args14524_)))
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
    (lambda _$args14521_
      (apply make-class-instance gx#import-expander::t _$args14521_)))
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
    (lambda _$args14518_
      (apply make-class-instance gx#export-expander::t _$args14518_)))
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
    (lambda _$args14515_
      (apply make-class-instance gx#import-export-expander::t _$args14515_)))
  (define gx#current-import-expander-phi (make-parameter '#f))
  (define gx#current-export-expander-phi (make-parameter '#f))
  (define gx#current-module-reader-path (make-parameter '#f))
  (define gx#current-module-reader-args (make-parameter '#f))
  (define gx#module-context:::init!
    (lambda (_self14509_ _id14510_ _super14511_ _ns14512_ _path14513_)
      (if (##fx< '11 (##vector-length _self14509_))
          (begin
            (##vector-set! _self14509_ '1 _id14510_)
            (##vector-set! _self14509_ '2 (make-hash-table-eq))
            (##vector-set! _self14509_ '3 _super14511_)
            (##vector-set! _self14509_ '4 '#f)
            (##vector-set! _self14509_ '5 '#f)
            (##vector-set! _self14509_ '6 _ns14512_)
            (##vector-set! _self14509_ '7 _path14513_)
            (##vector-set! _self14509_ '8 '())
            (##vector-set! _self14509_ '9 '())
            (##vector-set! _self14509_ '10 '#f)
            (##vector-set! _self14509_ '11 '#f))
          (error '"struct-instance-init!: too many arguments for struct"
                 _self14509_))))
  (bind-method! gx#module-context::t ':init! gx#module-context:::init! '#f)
  (begin
    (define gx#prelude-context:::init!__%
      (lambda (_self14353_ _ctx14354_ _root14355_)
        (let ((_super14363_
               (let ((_$e14357_ _root14355_))
                 (if _$e14357_
                     _$e14357_
                     (let ((_$e14360_ (gx#core-context-root__0)))
                       (if _$e14360_
                           _$e14360_
                           (make-struct-instance gx#root-context::t)))))))
          (if _ctx14354_
              (let ((_id14366_
                     (##structure-ref
                      _ctx14354_
                      '1
                      gx#expander-context::t
                      '#f))
                    (_path14367_
                     (##structure-ref _ctx14354_ '7 gx#module-context::t '#f))
                    (_in14368_
                     (map gx#core-module-export->import
                          (##structure-ref
                           _ctx14354_
                           '9
                           gx#module-context::t
                           '#f)))
                    (_e14369_
                     (make-promise (lambda () (gx#eval-module _ctx14354_)))))
                (begin
                  (if (##fx< '8 (##vector-length _self14353_))
                      (begin
                        (##vector-set! _self14353_ '1 _id14366_)
                        (##vector-set! _self14353_ '2 (make-hash-table-eq))
                        (##vector-set! _self14353_ '3 _super14363_)
                        (##vector-set! _self14353_ '4 '#f)
                        (##vector-set! _self14353_ '5 '#f)
                        (##vector-set! _self14353_ '6 _path14367_)
                        (##vector-set! _self14353_ '7 _in14368_)
                        (##vector-set! _self14353_ '8 _e14369_))
                      (error '"struct-instance-init!: too many arguments for struct"
                             _self14353_))
                  (for-each
                   (lambda (_g1437014372_)
                     (gx#core-bind-weak-import!__% _g1437014372_ _self14353_))
                   _in14368_)))
              (if (##fx< '8 (##vector-length _self14353_))
                  (begin
                    (##vector-set! _self14353_ '1 '#f)
                    (##vector-set! _self14353_ '2 (make-hash-table-eq))
                    (##vector-set! _self14353_ '3 _super14363_)
                    (##vector-set! _self14353_ '4 '#f)
                    (##vector-set! _self14353_ '5 '#f)
                    (##vector-set! _self14353_ '6 '#f)
                    (##vector-set! _self14353_ '7 '())
                    (##vector-set! _self14353_ '8 '#f))
                  (error '"struct-instance-init!: too many arguments for struct"
                         _self14353_))))))
    (begin
      (define gx#prelude-context:::init!__0
        (lambda (_self14378_ _ctx14379_)
          (let ((_root14381_ '#f))
            (gx#prelude-context:::init!__%
             _self14378_
             _ctx14379_
             _root14381_))))
      (define gx#prelude-context:::init!
        (lambda _g14557_
          (let ((_g14556_ (length _g14557_)))
            (cond ((##fx= _g14556_ 2)
                   (apply gx#prelude-context:::init!__0 _g14557_))
                  ((##fx= _g14556_ 3)
                   (apply gx#prelude-context:::init!__% _g14557_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#prelude-context:::init!
                    _g14557_))))))))
  (bind-method! gx#prelude-context::t ':init! gx#prelude-context:::init! '#f)
  (define gx#import-export-expander-init!
    (lambda (_self14227_ _e14228_)
      (if (##fx< '3 (##vector-length _self14227_))
          (begin
            (##vector-set! _self14227_ '1 _e14228_)
            (##vector-set! _self14227_ '2 (gx#current-expander-context))
            (##vector-set! _self14227_ '3 (fx- (gx#current-expander-phi) '1)))
          (error '"struct-instance-init!: too many arguments for struct"
                 _self14227_))))
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
    (lambda (_g1385313856_ _g1385413858_)
      (gx#core-apply-user-expander__%
       _g1385313856_
       _g1385413858_
       'apply-import-expander)))
  (bind-method!
   gx#import-expander::t
   'apply-import-expander
   gx#import-expander::apply-import-expander
   '#f)
  (define gx#export-expander::apply-export-expander
    (lambda (_g1372413727_ _g1372513729_)
      (gx#core-apply-user-expander__%
       _g1372413727_
       _g1372513729_
       'apply-export-expander)))
  (bind-method!
   gx#export-expander::t
   'apply-export-expander
   gx#export-expander::apply-export-expander
   '#f)
  (define gx#module-source-path
    (lambda (_ctx13595_)
      (let* ((_path13597_
              (##structure-ref _ctx13595_ '7 gx#module-context::t '#f))
             (_path13599_
              (if (pair? _path13597_) (last _path13597_) _path13597_)))
        (if (string? _path13599_) _path13599_ '#f))))
  (begin
    (define gx#import-module__%
      (lambda (_path13571_ _reload?13572_ _eval?13573_)
        (let ((_ctx13575_
               ((gx#current-expander-module-import)
                _path13571_
                _reload?13572_)))
          (begin
            (if (if _ctx13575_ _eval?13573_ '#f)
                (gx#eval-module _ctx13575_)
                '#!void)
            _ctx13575_))))
    (begin
      (define gx#import-module__0
        (lambda (_path13580_)
          (let* ((_reload?13582_ '#f) (_eval?13584_ '#f))
            (gx#import-module__% _path13580_ _reload?13582_ _eval?13584_))))
      (define gx#import-module__1
        (lambda (_path13586_ _reload?13587_)
          (let ((_eval?13589_ '#f))
            (gx#import-module__% _path13586_ _reload?13587_ _eval?13589_))))
      (define gx#import-module
        (lambda _g14559_
          (let ((_g14558_ (length _g14559_)))
            (cond ((##fx= _g14558_ 1) (apply gx#import-module__0 _g14559_))
                  ((##fx= _g14558_ 2) (apply gx#import-module__1 _g14559_))
                  ((##fx= _g14558_ 3) (apply gx#import-module__% _g14559_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#import-module
                    _g14559_))))))))
  (define gx#eval-module
    (lambda (_mod13568_) ((gx#current-expander-module-eval) _mod13568_)))
  (define gx#core-eval-module
    (lambda (_obj13553_)
      (letrec ((_force-e13555_
                (lambda (_getf13564_ _e13565_)
                  (call-with-parameters
                   (lambda () (force (_getf13564_ _e13565_)))
                   gx#current-expander-context
                   _e13565_
                   gx#current-expander-phi
                   '0))))
        (let _recur13557_ ((_e13559_ _obj13553_))
          (if (##structure-instance-of? _e13559_ 'gx#module-context::t)
              (begin
                (let ((_$e13561_ (gx#core-context-prelude__% _e13559_)))
                  (if _$e13561_ (_recur13557_ _$e13561_) '#!void))
                (_force-e13555_ gx#module-context-e _e13559_))
              (if (##structure-instance-of? _e13559_ 'gx#prelude-context::t)
                  (_force-e13555_ gx#prelude-context-e _e13559_)
                  (if (gx#stx-string? _e13559_)
                      (_recur13557_
                       (gx#import-module__0
                        (gx#core-resolve-module-path__0 _e13559_)))
                      (if (gx#core-library-module-path? _e13559_)
                          (_recur13557_
                           (gx#import-module__0
                            (gx#core-resolve-library-module-path _e13559_)))
                          (error '"Cannot eval module" _obj13553_)))))))))
  (begin
    (define gx#core-context-prelude__%
      (lambda (_ctx13536_)
        (let _lp13538_ ((_e13540_ _ctx13536_))
          (if (let ((_$e13542_
                     (##structure-instance-of?
                      _e13540_
                      'gx#module-context::t)))
                (if _$e13542_
                    _$e13542_
                    (##structure-instance-of? _e13540_ 'gx#local-context::t)))
              (_lp13538_ (##structure-ref _e13540_ '3 gx#phi-context::t '#f))
              (if (##structure-instance-of? _e13540_ 'gx#prelude-context::t)
                  _e13540_
                  '#f)))))
    (begin
      (define gx#core-context-prelude__0
        (lambda ()
          (let ((_ctx13549_ (gx#current-expander-context)))
            (gx#core-context-prelude__% _ctx13549_))))
      (define gx#core-context-prelude
        (lambda _g14561_
          (let ((_g14560_ (length _g14561_)))
            (cond ((##fx= _g14560_ 0)
                   (apply gx#core-context-prelude__0 _g14561_))
                  ((##fx= _g14560_ 1)
                   (apply gx#core-context-prelude__% _g14561_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-context-prelude
                    _g14561_))))))))
  (define gx#core-module->prelude-context
    (lambda (_ctx13526_)
      (let* ((_ht13528_ (gx#current-expander-module-registry))
             (_$e13530_ (table-ref _ht13528_ _ctx13526_ '#f)))
        (if _$e13530_
            (values _$e13530_)
            (let ((_pre13533_
                   (let ((__obj14552 (make-object gx#prelude-context::t '8)))
                     (begin
                       (gx#prelude-context:::init!__0 __obj14552 _ctx13526_)
                       __obj14552))))
              (begin
                (table-set! _ht13528_ _ctx13526_ _pre13533_)
                _pre13533_))))))
  (begin
    (define gx#core-import-module__%
      (lambda (_rpath13407_ _reload?13408_)
        (letrec ((_import-source13410_
                  (lambda (_path13495_)
                    (begin
                      (if (member _path13495_ (gx#current-expander-path))
                          (error '"Cyclic expansion" _path13495_)
                          '#!void)
                      (call-with-parameters
                       (lambda ()
                         (let ((_g14562_ (gx#core-read-module _path13495_)))
                           (begin
                             (let ((_g14563_
                                    (if (##values? _g14562_)
                                        (##vector-length _g14562_)
                                        1)))
                               (if (not (##fx= _g14563_ 4))
                                   (error "Context expects 4 values"
                                          _g14563_)))
                             (let ((_pre13498_ (##vector-ref _g14562_ 0))
                                   (_id13499_ (##vector-ref _g14562_ 1))
                                   (_ns13500_ (##vector-ref _g14562_ 2))
                                   (_body13501_ (##vector-ref _g14562_ 3)))
                               (let* ((_prelude13506_
                                       (if (##structure-instance-of?
                                            _pre13498_
                                            'gx#prelude-context::t)
                                           _pre13498_
                                           (if (##structure-instance-of?
                                                _pre13498_
                                                'gx#module-context::t)
                                               (gx#core-module->prelude-context
                                                _pre13498_)
                                               (if (string? _pre13498_)
                                                   (gx#core-module->prelude-context
                                                    (gx#core-import-module__0
                                                     _pre13498_))
                                                   (if (not _pre13498_)
                                                       (let ((_$e13503_
                                                              (gx#current-expander-module-prelude)))
                                                         (if _$e13503_
                                                             _$e13503_
                                                             (let ((__obj14553
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (make-object gx#prelude-context::t '8)))
                       (begin
                         (gx#prelude-context:::init!__0 __obj14553 '#f)
                         __obj14553))))
               (error '"Cannot import module; unknown prelude"
                      _rpath13407_
                      _pre13498_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_ctx13508_
                                       (let ((__obj14554
                                              (make-object
                                               gx#module-context::t
                                               '11)))
                                         (begin
                                           (gx#module-context:::init!
                                            __obj14554
                                            _id13499_
                                            _prelude13506_
                                            _ns13500_
                                            _path13495_)
                                           __obj14554)))
                                      (_body13510_
                                       (gx#core-expand-module-begin
                                        _body13501_
                                        _ctx13508_))
                                      (_body13512_
                                       (gx#core-quote-syntax__%
                                        (gx#core-cons '%#begin _body13510_)
                                        _path13495_
                                        _ctx13508_
                                        '())))
                                 (begin
                                   (##structure-set!
                                    _ctx13508_
                                    (make-promise
                                     (lambda () (gx#eval-syntax* _body13512_)))
                                    '10
                                    gx#module-context::t
                                    '#f)
                                   (##structure-set!
                                    _ctx13508_
                                    _body13512_
                                    '11
                                    gx#module-context::t
                                    '#f)
                                   (table-set!
                                    (gx#current-expander-module-registry)
                                    _path13495_
                                    _ctx13508_)
                                   (table-set!
                                    (gx#current-expander-module-registry)
                                    _id13499_
                                    _ctx13508_)
                                   _ctx13508_))))))
                       gx#current-expander-context
                       (gx#core-context-root__0)
                       gx#current-expander-marks
                       '()
                       gx#current-expander-phi
                       '0
                       gx#current-expander-path
                       (cons _path13495_ (gx#current-expander-path))
                       gx#current-import-expander-phi
                       '#f
                       gx#current-export-expander-phi
                       '#f))))
                 (_import-submodule13411_
                  (lambda (_rpath13423_)
                    (let* ((_rpath1342413431_ _rpath13423_)
                           (_E1342613435_
                            (lambda ()
                              (error '"No clause matching" _rpath1342413431_)))
                           (_K1342713483_
                            (lambda (_refs13438_ _origin13439_)
                              (let ((_ctx13441_
                                     (if _origin13439_
                                         (gx#core-import-module__%
                                          _origin13439_
                                          _reload?13408_)
                                         (gx#current-expander-context))))
                                (let _lp13443_ ((_rest13445_ _refs13438_)
                                                (_ctx13446_ _ctx13441_))
                                  (let* ((_rest1344713455_ _rest13445_)
                                         (_else1344913463_
                                          (lambda () _ctx13446_))
                                         (_K1345113471_
                                          (lambda (_rest13466_ _id13467_)
                                            (let ((_bind13469_
                                                   (gx#resolve-identifier__%
                                                    _id13467_
                                                    '0
                                                    _ctx13446_)))
                                              (if (if (##structure-direct-instance-of?
                                                       _bind13469_
                                                       'gx#syntax-binding::t)
                                                      (##structure-instance-of?
                                                       (##direct-structure-ref
                                                        _bind13469_
                                                        '4
                                                        gx#syntax-binding::t
                                                        '#f)
                                                       'gx#module-context::t)
                                                      '#f)
                                                  (_lp13443_
                                                   _rest13466_
                                                   (##direct-structure-ref
                                                    _bind13469_
                                                    '4
                                                    gx#syntax-binding::t
                                                    '#f))
                                                  (error '"Cannot import submodule; not bound as a module"
                                                         _rpath13423_
                                                         _id13467_
                                                         _bind13469_))))))
                                    (if (##pair? _rest1344713455_)
                                        (let ((_hd1345213474_
                                               (##car _rest1344713455_))
                                              (_tl1345313476_
                                               (##cdr _rest1344713455_)))
                                          (let* ((_id13479_ _hd1345213474_)
                                                 (_rest13481_ _tl1345313476_))
                                            (_K1345113471_
                                             _rest13481_
                                             _id13479_)))
                                        (_else1344913463_))))))))
                      (if (##pair? _rpath1342413431_)
                          (let ((_hd1342813486_ (##car _rpath1342413431_))
                                (_tl1342913488_ (##cdr _rpath1342413431_)))
                            (let* ((_origin13491_ _hd1342813486_)
                                   (_refs13493_ _tl1342913488_))
                              (_K1342713483_ _refs13493_ _origin13491_)))
                          (_E1342613435_))))))
          (let ((_$e13413_
                 (if (not _reload?13408_)
                     (table-ref
                      (gx#current-expander-module-registry)
                      _rpath13407_
                      '#f)
                     '#f)))
            (if _$e13413_
                (values _$e13413_)
                (if (list? _rpath13407_)
                    (_import-submodule13411_ _rpath13407_)
                    (if (gx#core-library-module-path? _rpath13407_)
                        (let ((_ctx13416_
                               (gx#core-import-module__%
                                (gx#core-resolve-library-module-path
                                 _rpath13407_)
                                _reload?13408_)))
                          (begin
                            (table-set!
                             (gx#current-expander-module-registry)
                             _rpath13407_
                             _ctx13416_)
                            _ctx13416_))
                        (let* ((_npath13418_ (path-normalize _rpath13407_))
                               (_$e13420_
                                (if (not _reload?13408_)
                                    (table-ref
                                     (gx#current-expander-module-registry)
                                     _npath13418_
                                     '#f)
                                    '#f)))
                          (if _$e13420_
                              (values _$e13420_)
                              (_import-source13410_ _npath13418_))))))))))
    (begin
      (define gx#core-import-module__0
        (lambda (_rpath13519_)
          (let ((_reload?13521_ '#f))
            (gx#core-import-module__% _rpath13519_ _reload?13521_))))
      (define gx#core-import-module
        (lambda _g14565_
          (let ((_g14564_ (length _g14565_)))
            (cond ((##fx= _g14564_ 1)
                   (apply gx#core-import-module__0 _g14565_))
                  ((##fx= _g14564_ 2)
                   (apply gx#core-import-module__% _g14565_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-import-module
                    _g14565_))))))))
  (define gx#core-read-module
    (lambda (_path13401_)
      (with-exception-catcher
       (lambda (_exn13403_)
         (if (if (datum-parsing-exception? _exn13403_)
                 (eq? (datum-parsing-exception-filepos _exn13403_) '0)
                 '#f)
             (gx#core-read-module/lang _path13401_)
             (raise _exn13403_)))
       (lambda () (gx#core-read-module/sexp _path13401_)))))
  (define gx#core-read-module/sexp
    (lambda (_path13261_)
      (let _lp13263_ ((_body13265_ (read-syntax-from-file _path13261_))
                      (_pre13266_ '#f)
                      (_ns13267_ '#f)
                      (_pkg13268_ '#f))
        (let* ((_e1326913293_ _body13265_)
               (_E1328513315_
                (lambda ()
                  (let ((_g14566_
                         (if _pkg13268_
                             (values _pre13266_ _ns13267_ _pkg13268_)
                             (gx#core-read-module-package
                              _path13261_
                              _pre13266_
                              _ns13267_))))
                    (begin
                      (let ((_g14567_
                             (if (##values? _g14566_)
                                 (##vector-length _g14566_)
                                 1)))
                        (if (not (##fx= _g14567_ 3))
                            (error "Context expects 3 values" _g14567_)))
                      (let ((_pre13297_ (##vector-ref _g14566_ 0))
                            (_ns13298_ (##vector-ref _g14566_ 1))
                            (_pkg13299_ (##vector-ref _g14566_ 2)))
                        (let* ((_prelude13301_
                                (if (gx#core-bound-module-prelude? _pre13297_)
                                    (gx#syntax-local-e__0 _pre13297_)
                                    (if (gx#core-library-module-path?
                                         _pre13297_)
                                        (gx#core-resolve-library-module-path
                                         _pre13297_)
                                        (if (gx#stx-string? _pre13297_)
                                            (gx#core-resolve-module-path__%
                                             _pre13297_
                                             _path13261_)
                                            (gx#stx-e _pre13297_)))))
                               (_path-id13303_
                                (gx#core-module-path->namespace _path13261_))
                               (_pkg-id13305_
                                (if _pkg13299_
                                    (string-append
                                     _pkg13299_
                                     '"/"
                                     _path-id13303_)
                                    _path-id13303_))
                               (_module-id13307_
                                (string->symbol _pkg-id13305_))
                               (_module-ns13312_
                                (let ((_$e13309_ _ns13298_))
                                  (if _$e13309_ _$e13309_ _pkg-id13305_))))
                          (values _prelude13301_
                                  _module-id13307_
                                  _module-ns13312_
                                  _body13265_)))))))
               (_E1327813344_
                (lambda ()
                  (if (gx#stx-pair? _e1326913293_)
                      (let ((_e1328613319_ (gx#syntax-e _e1326913293_)))
                        (let ((_hd1328713322_ (##car _e1328613319_))
                              (_tl1328813324_ (##cdr _e1328613319_)))
                          (if (eq? (gx#stx-e _hd1328713322_) 'package:)
                              (if (gx#stx-pair? _tl1328813324_)
                                  (let ((_e1328913327_
                                         (gx#syntax-e _tl1328813324_)))
                                    (let ((_hd1329013330_
                                           (##car _e1328913327_))
                                          (_tl1329113332_
                                           (##cdr _e1328913327_)))
                                      (let* ((_pkg13335_ _hd1329013330_)
                                             (_rest13337_ _tl1329113332_))
                                        (if '#t
                                            (let ((_pkg13342_
                                                   (if (gx#identifier?
                                                        _pkg13335_)
                                                       (symbol->string
                                                        (gx#stx-e _pkg13335_))
                                                       (if (let ((_$e13339_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-string? _pkg13335_)))
                     (if _$e13339_ _$e13339_ (gx#stx-false? _pkg13335_)))
                   (gx#stx-e _pkg13335_)
                   (gx#raise-syntax-error
                    'import
                    '"Bad syntax; Illegal package name"
                    _pkg13335_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_lp13263_
                                               _rest13337_
                                               _pre13266_
                                               _ns13267_
                                               _pkg13342_))
                                            (_E1328513315_)))))
                                  (_E1328513315_))
                              (_E1328513315_))))
                      (_E1328513315_))))
               (_E1327113373_
                (lambda ()
                  (if (gx#stx-pair? _e1326913293_)
                      (let ((_e1327913348_ (gx#syntax-e _e1326913293_)))
                        (let ((_hd1328013351_ (##car _e1327913348_))
                              (_tl1328113353_ (##cdr _e1327913348_)))
                          (if (eq? (gx#stx-e _hd1328013351_) 'namespace:)
                              (if (gx#stx-pair? _tl1328113353_)
                                  (let ((_e1328213356_
                                         (gx#syntax-e _tl1328113353_)))
                                    (let ((_hd1328313359_
                                           (##car _e1328213356_))
                                          (_tl1328413361_
                                           (##cdr _e1328213356_)))
                                      (let* ((_ns13364_ _hd1328313359_)
                                             (_rest13366_ _tl1328413361_))
                                        (if '#t
                                            (let ((_ns13371_
                                                   (if (gx#identifier?
                                                        _ns13364_)
                                                       (symbol->string
                                                        (gx#stx-e _ns13364_))
                                                       (if (let ((_$e13368_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-string? _ns13364_)))
                     (if _$e13368_ _$e13368_ (gx#stx-false? _ns13364_)))
                   (gx#stx-e _ns13364_)
                   (gx#raise-syntax-error
                    'import
                    '"Bad syntax; illegal namespace"
                    _ns13364_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_lp13263_
                                               _rest13366_
                                               _pre13266_
                                               _ns13371_
                                               _pkg13268_))
                                            (_E1327813344_)))))
                                  (_E1327813344_))
                              (_E1327813344_))))
                      (_E1327813344_))))
               (_E1327013397_
                (lambda ()
                  (if (gx#stx-pair? _e1326913293_)
                      (let ((_e1327213377_ (gx#syntax-e _e1326913293_)))
                        (let ((_hd1327313380_ (##car _e1327213377_))
                              (_tl1327413382_ (##cdr _e1327213377_)))
                          (if (eq? (gx#stx-e _hd1327313380_) 'prelude:)
                              (if (gx#stx-pair? _tl1327413382_)
                                  (let ((_e1327513385_
                                         (gx#syntax-e _tl1327413382_)))
                                    (let ((_hd1327613388_
                                           (##car _e1327513385_))
                                          (_tl1327713390_
                                           (##cdr _e1327513385_)))
                                      (let* ((_prelude13393_ _hd1327613388_)
                                             (_rest13395_ _tl1327713390_))
                                        (if '#t
                                            (_lp13263_
                                             _rest13395_
                                             _prelude13393_
                                             _ns13267_
                                             _pkg13268_)
                                            (_E1327113373_)))))
                                  (_E1327113373_))
                              (_E1327113373_))))
                      (_E1327113373_)))))
          (_E1327013397_)))))
  (define gx#core-read-module/lang
    (lambda (_path13088_)
      (letrec ((_default-read-module-body13090_
                (lambda (_inp13253_)
                  (let _lp13255_ ((_body13257_ '()))
                    (let ((_next13259_ (read-syntax _inp13253_)))
                      (if (eof-object? _next13259_)
                          (reverse _body13257_)
                          (_lp13255_ (cons _next13259_ _body13257_)))))))
               (_read-body13091_
                (lambda (_inp13172_
                         _pre13173_
                         _ns13174_
                         _pkg13175_
                         _args13176_)
                  (let ((_g14568_
                         (if _pkg13175_
                             (values _pre13173_ _ns13174_ _pkg13175_)
                             (gx#core-read-module-package
                              _path13088_
                              _pre13173_
                              _ns13174_))))
                    (begin
                      (let ((_g14569_
                             (if (##values? _g14568_)
                                 (##vector-length _g14568_)
                                 1)))
                        (if (not (##fx= _g14569_ 3))
                            (error "Context expects 3 values" _g14569_)))
                      (let ((_pre13178_ (##vector-ref _g14568_ 0))
                            (_ns13179_ (##vector-ref _g14568_ 1))
                            (_pkg13180_ (##vector-ref _g14568_ 2)))
                        (let* ((_prelude13182_
                                (gx#import-module__0 _pre13178_))
                               (_read-module-body13236_
                                (let ((_$e13228_
                                       (find (lambda (_e1318313185_)
                                               (let* ((_g1318713197_
                                                       _e1318313185_)
                                                      (_else1318913205_
                                                       (lambda () '#f))
                                                      (_K1319113209_
                                                       (lambda () '#t)))
                                                 (if (##structure-direct-instance-of?
                                                      _g1318713197_
                                                      'gx#module-export::t)
                                                     (let* ((_e1319213212_
                                                             (##vector-ref
                                                              _g1318713197_
                                                              '1))
                                                            (_e1319313215_
                                                             (##vector-ref
                                                              _g1318713197_
                                                              '2))
                                                            (_e1319413218_
                                                             (##vector-ref
                                                              _g1318713197_
                                                              '3)))
                                                       (if (##eq? _e1319413218_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '1)
                   (let ((_e1319513221_ (##vector-ref _g1318713197_ '4)))
                     (if ((lambda (_g1322313225_)
                            (eq? _g1322313225_ 'read-module-body))
                          _e1319513221_)
                         (_K1319113209_)
                         (_else1318913205_)))
                   (_else1318913205_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_else1318913205_))))
                                             (##structure-ref
                                              _prelude13182_
                                              '9
                                              gx#module-context::t
                                              '#f))))
                                  (if _$e13228_
                                      ((lambda (_xport13231_)
                                         (let ((_proc13234_
                                                (with-exception-catcher
                                                 void
                                                 (lambda ()
                                                   (gx#eval-syntax__0
                                                    (##structure-ref
                                                     (gx#core-resolve-module-export
                                                      _xport13231_)
                                                     '1
                                                     gx#binding::t
                                                     '#f))))))
                                           (if (procedure? _proc13234_)
                                               _proc13234_
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Illegal #lang prelude; read-module-body is not a procedure"
                                                _path13088_
                                                _pre13178_
                                                _proc13234_))))
                                       _$e13228_)
                                      _default-read-module-body13090_)))
                               (_path-id13238_
                                (gx#core-module-path->namespace _path13088_))
                               (_pkg-id13240_
                                (if _pkg13180_
                                    (string-append
                                     _pkg13180_
                                     '"/"
                                     _path-id13238_)
                                    _path-id13238_))
                               (_module-id13242_
                                (string->symbol _pkg-id13240_))
                               (_module-ns13247_
                                (let ((_$e13244_ _ns13179_))
                                  (if _$e13244_ _$e13244_ _pkg-id13240_)))
                               (_body13250_
                                (call-with-parameters
                                 (lambda ()
                                   (_read-module-body13236_ _inp13172_))
                                 gx#current-module-reader-path
                                 _path13088_
                                 gx#current-module-reader-args
                                 _args13176_)))
                          (values _prelude13182_
                                  _module-id13242_
                                  _module-ns13247_
                                  _body13250_)))))))
               (_string-e13092_
                (lambda (_obj13169_ _what13170_)
                  (if (string? _obj13169_)
                      _obj13169_
                      (if (symbol? _obj13169_)
                          (symbol->string _obj13169_)
                          (gx#raise-syntax-error
                           '#f
                           (string-append '"Illegal module " _what13170_)
                           _path13088_
                           _obj13169_)))))
               (_read-lang-args13093_
                (lambda (_inp13124_ _args13125_)
                  (let* ((_args1312613134_ _args13125_)
                         (_else1312813142_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Illegal #lang arguments; missing prelude"
                             _path13088_)))
                         (_K1313013157_
                          (lambda (_args13145_ _prelude13146_)
                            (let* ((_pkg13148_ (pgetq 'package: _args13145_))
                                   (_pkg13150_
                                    (if _pkg13148_
                                        (_string-e13092_ _pkg13148_ '"package")
                                        '#f))
                                   (_ns13152_ (pgetq 'namespace: _args13145_))
                                   (_ns13154_
                                    (if _ns13152_
                                        (_string-e13092_
                                         _ns13152_
                                         '"namespace")
                                        '#f)))
                              (_read-body13091_
                               _inp13124_
                               _prelude13146_
                               _ns13154_
                               _pkg13150_
                               _args13145_)))))
                    (if (##pair? _args1312613134_)
                        (let ((_hd1313113160_ (##car _args1312613134_))
                              (_tl1313213162_ (##cdr _args1312613134_)))
                          (let* ((_prelude13165_ _hd1313113160_)
                                 (_args13167_ _tl1313213162_))
                            (_K1313013157_ _args13167_ _prelude13165_)))
                        (_else1312813142_)))))
               (_read-lang13094_
                (lambda (_inp13099_)
                  (let* ((_head13101_ (read-line _inp13099_))
                         (_$e13103_ (string-index _head13101_ '#\space)))
                    (if _$e13103_
                        ((lambda (_ix13106_)
                           (let ((_lang13108_
                                  (substring _head13101_ '0 _ix13106_)))
                             (if (equal? _lang13108_ '"#lang")
                                 (let* ((_rest13110_
                                         (substring
                                          _head13101_
                                          (fx+ _ix13106_ '1)
                                          (string-length _head13101_)))
                                        (_args13121_
                                         (with-exception-catcher
                                          (lambda (_g1311113113_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Illegal #lang arguments"
                                             _path13088_
                                             _g1311113113_))
                                          (lambda ()
                                            (call-with-input-string
                                             _rest13110_
                                             (lambda (_g1311613118_)
                                               (read-all
                                                _g1311613118_
                                                read)))))))
                                   (_read-lang-args13093_
                                    _inp13099_
                                    _args13121_))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Illegal module syntax"
                                  _path13088_))))
                         _$e13103_)
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module syntax"
                         _path13088_)))))
               (_read-e13095_
                (lambda (_inp13097_)
                  (if (eq? (peek-char _inp13097_) '#\#)
                      (_read-lang13094_ _inp13097_)
                      (gx#raise-syntax-error
                       '#f
                       '"Illegal module syntax"
                       _path13088_)))))
        (call-with-input-file _path13088_ _read-e13095_))))
  (define gx#core-read-module-package
    (lambda (_path13042_ _pre13043_ _ns13044_)
      (letrec ((_string-e13046_
                (lambda (_e13086_)
                  (if (symbol? _e13086_)
                      (symbol->string _e13086_)
                      (if (string? _e13086_)
                          _e13086_
                          (gx#raise-syntax-error
                           '#f
                           '"Malformed package info; unexpected datum"
                           _e13086_))))))
        (let _lp13048_ ((_dir13050_ (path-directory _path13042_))
                        (_pkg-path13051_ '()))
          (let ((_gerbil.pkg13053_ (path-expand '"gerbil.pkg" _dir13050_)))
            (if (file-exists? _gerbil.pkg13053_)
                (let ((_plist13055_
                       (gx#core-library-package-plist__% _dir13050_ '#t)))
                  (if (null? _plist13055_)
                      (let ((_pkg13057_
                             (if (not (null? _pkg-path13051_))
                                 (string-join _pkg-path13051_ '"/")
                                 '#f)))
                        (values _pre13043_ _ns13044_ _pkg13057_))
                      (if (list? _plist13055_)
                          (let* ((_root13059_ (pgetq 'package: _plist13055_))
                                 (_pkg13063_
                                  (let ((_pkg-path13061_
                                         (if _root13059_
                                             (cons (_string-e13046_
                                                    _root13059_)
                                                   _pkg-path13051_)
                                             _pkg-path13051_)))
                                    (if (not (null? _pkg-path13061_))
                                        (string-join _pkg-path13061_ '"/")
                                        '#f)))
                                 (_ns13070_
                                  (let ((_ns13068_
                                         (let ((_$e13065_ _ns13044_))
                                           (if _$e13065_
                                               _$e13065_
                                               (pgetq 'namespace:
                                                      _plist13055_)))))
                                    (if _ns13068_
                                        (_string-e13046_ _ns13068_)
                                        '#f)))
                                 (_pre13075_
                                  (let ((_$e13072_ _pre13043_))
                                    (if _$e13072_
                                        _$e13072_
                                        (pgetq 'prelude: _plist13055_)))))
                            (values _pre13075_ _ns13070_ _pkg13063_))
                          (gx#raise-syntax-error
                           '#f
                           '"Malformed package info; unexpected datum"
                           _plist13055_))))
                (let ((_dir*13078_
                       (path-strip-trailing-directory-separator _dir13050_)))
                  (if (let ((_$e13080_ (string-empty? _dir*13078_)))
                        (if _$e13080_
                            _$e13080_
                            (equal? _dir13050_ _dir*13078_)))
                      (values _pre13043_ _ns13044_ '#f)
                      (let ((_xpath13083_ (path-strip-directory _dir*13078_))
                            (_xdir13084_ (path-directory _dir*13078_)))
                        (_lp13048_
                         _xdir13084_
                         (cons _xpath13083_ _pkg-path13051_)))))))))))
  (define gx#core-module-path->namespace
    (lambda (_path13040_)
      (path-strip-extension (path-strip-directory _path13040_))))
  (define gx#core-module-path->id
    (lambda (_path13038_)
      (string->symbol (gx#core-module-path->namespace _path13038_))))
  (begin
    (define gx#core-resolve-module-path__%
      (lambda (_stx-path13017_ _rel13018_)
        (let* ((_path13020_ (gx#stx-e _stx-path13017_))
               (_path13022_
                (if (string-empty? (path-extension _path13020_))
                    (string-append _path13020_ '".ss")
                    _path13020_)))
          (gx#core-resolve-path__%
           _path13022_
           (let ((_$e13025_ (gx#stx-source _stx-path13017_)))
             (if _$e13025_ _$e13025_ _rel13018_))))))
    (begin
      (define gx#core-resolve-module-path__0
        (lambda (_stx-path13031_)
          (let ((_rel13033_ '#f))
            (gx#core-resolve-module-path__% _stx-path13031_ _rel13033_))))
      (define gx#core-resolve-module-path
        (lambda _g14571_
          (let ((_g14570_ (length _g14571_)))
            (cond ((##fx= _g14570_ 1)
                   (apply gx#core-resolve-module-path__0 _g14571_))
                  ((##fx= _g14570_ 2)
                   (apply gx#core-resolve-module-path__% _g14571_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-resolve-module-path
                    _g14571_))))))))
  (define gx#core-resolve-library-module-path
    (lambda (_libpath12944_)
      (let* ((_spath12946_ (symbol->string (gx#stx-e _libpath12944_)))
             (_spath12948_
              (substring _spath12946_ '1 (string-length _spath12946_)))
             (_ext12950_ (path-extension _spath12948_))
             (_ssi12952_
              (if (string-empty? _ext12950_)
                  (string-append _spath12948_ '".ssi")
                  (string-append (path-strip-extension _spath12948_) '".ssi")))
             (_src12954_
              (if (string-empty? _ext12950_)
                  (string-append _spath12948_ '".ss")
                  _spath12948_)))
        (let _lp12957_ ((_rest12959_
                         (gx#current-expander-module-library-path)))
          (let* ((_rest1296012969_ _rest12959_)
                 (_E1296312973_
                  (lambda () (error '"No clause matching" _rest1296012969_))))
            (let ((_K1296513004_
                   (lambda (_rest12984_ _dir12985_)
                     (letrec ((_resolve12987_
                               (lambda (_ssi12997_ _src12998_)
                                 (let ((_compiled-path13000_
                                        (path-expand _ssi12997_ _dir12985_)))
                                   (if (file-exists? _compiled-path13000_)
                                       (path-normalize _compiled-path13000_)
                                       (let ((_src-path13002_
                                              (path-expand
                                               _src12998_
                                               _dir12985_)))
                                         (if (file-exists? _src-path13002_)
                                             (path-normalize _src-path13002_)
                                             (_lp12957_ _rest12984_))))))))
                       (let ((_$e12989_
                              (gx#core-library-package-path-prefix
                               _dir12985_)))
                         (if _$e12989_
                             ((lambda (_prefix12992_)
                                (if (string-prefix? _spath12948_ _prefix12992_)
                                    (let ((_ssi12994_
                                           (substring
                                            _ssi12952_
                                            (string-length _prefix12992_)
                                            (string-length _ssi12952_)))
                                          (_src12995_
                                           (substring
                                            _src12954_
                                            (string-length _prefix12992_)
                                            (string-length _src12954_))))
                                      (_resolve12987_ _ssi12994_ _src12995_))
                                    (_lp12957_ _rest12984_)))
                              _$e12989_)
                             (_resolve12987_ _ssi12952_ _src12954_))))))
                  (_K1296412978_
                   (lambda ()
                     (gx#raise-syntax-error
                      '#f
                      '"Cannot find library module"
                      _libpath12944_))))
              (let ((_try-match1296212981_
                     (lambda ()
                       (if (##null? _rest1296012969_)
                           (let () (_K1296412978_))
                           (_E1296312973_)))))
                (if (##pair? _rest1296012969_)
                    (let ((_tl1296713009_ (##cdr _rest1296012969_))
                          (_hd1296613007_ (##car _rest1296012969_)))
                      (let ((_dir13012_ _hd1296613007_)
                            (_rest13014_ _tl1296713009_))
                        (_K1296513004_ _rest13014_ _dir13012_)))
                    (_try-match1296212981_)))))))))
  (define gx#core-library-package-path-prefix
    (lambda (_dir12937_)
      (let ((_$e12939_
             (pgetq 'package: (gx#core-library-package-plist__0 _dir12937_))))
        (if _$e12939_
            ((lambda (_pkg12942_)
               (string-append (symbol->string _pkg12942_) '"/"))
             _$e12939_)
            '#f))))
  (begin
    (define gx#core-library-package-plist__%
      (lambda (_dir12909_ _exists?12910_)
        (let* ((_cache12912_ (gx#core-library-package-cache))
               (_$e12914_ (table-ref _cache12912_ _dir12909_ '#f)))
          (if _$e12914_
              (values _$e12914_)
              (let* ((_gerbil.pkg12917_ (path-expand '"gerbil.pkg" _dir12909_))
                     (_plist12924_
                      (if (let ((_$e12919_ _exists?12910_))
                            (if _$e12919_
                                _$e12919_
                                (file-exists? _gerbil.pkg12917_)))
                          (let ((_e12922_
                                 (call-with-input-file
                                  _gerbil.pkg12917_
                                  read)))
                            (if (eof-object? _e12922_)
                                '()
                                (if (list? _e12922_)
                                    _e12922_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Malformed package info; unexpected datum"
                                     _gerbil.pkg12917_
                                     _e12922_))))
                          '())))
                (begin
                  (table-set! _cache12912_ _dir12909_ _plist12924_)
                  _plist12924_))))))
    (begin
      (define gx#core-library-package-plist__0
        (lambda (_dir12930_)
          (let ((_exists?12932_ '#f))
            (gx#core-library-package-plist__% _dir12930_ _exists?12932_))))
      (define gx#core-library-package-plist
        (lambda _g14573_
          (let ((_g14572_ (length _g14573_)))
            (cond ((##fx= _g14572_ 1)
                   (apply gx#core-library-package-plist__0 _g14573_))
                  ((##fx= _g14572_ 2)
                   (apply gx#core-library-package-plist__% _g14573_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-library-package-plist
                    _g14573_))))))))
  (define gx#core-library-package-cache
    (lambda ()
      (let ((_$e12903_ (gx#current-expander-module-library-package-cache)))
        (if _$e12903_
            (values _$e12903_)
            (let ((_cache12906_ (make-table)))
              (begin
                (gx#current-expander-module-library-package-cache _cache12906_)
                _cache12906_))))))
  (define gx#core-library-module-path?
    (lambda (_stx12900_) (gx#core-special-module-path? _stx12900_ '#\:)))
  (define gx#core-special-module-path?
    (lambda (_stx12895_ _char12896_)
      (if (gx#identifier? _stx12895_)
          (if (interned-symbol? (gx#stx-e _stx12895_))
              (let ((_str12898_ (symbol->string (gx#stx-e _stx12895_))))
                (if (fx> (string-length _str12898_) '1)
                    (eq? (string-ref _str12898_ '0) _char12896_)
                    '#f))
              '#f)
          '#f)))
  (define gx#core-bound-prelude?
    (lambda (_stx12889_)
      (gx#core-bound-identifier?__%
       _stx12889_
       (lambda (_g1289012892_)
         (gx#expander-binding?__% _g1289012892_ gx#prelude-context?)))))
  (define gx#core-bound-module?
    (lambda (_stx12883_)
      (gx#core-bound-identifier?__%
       _stx12883_
       (lambda (_g1288412886_)
         (gx#expander-binding?__% _g1288412886_ gx#module-context?)))))
  (define gx#core-bound-module-prelude?
    (lambda (_stx12870_)
      (letrec ((_module-prelude?12872_
                (lambda (_e12878_)
                  (let ((_$e12880_
                         (##structure-instance-of?
                          _e12878_
                          'gx#module-context::t)))
                    (if _$e12880_
                        _$e12880_
                        (##structure-instance-of?
                         _e12878_
                         'gx#prelude-context::t))))))
        (gx#core-bound-identifier?__%
         _stx12870_
         (lambda (_g1287312875_)
           (gx#expander-binding?__% _g1287312875_ _module-prelude?12872_))))))
  (begin
    (define gx#core-bind-import!__%
      (lambda (_in12800_ _ctx12801_ _force-weak?12802_)
        (let* ((_in1280312812_ _in12800_)
               (_E1280512816_
                (lambda () (error '"No clause matching" _in1280312812_)))
               (_K1280612829_
                (lambda (_weak?12819_ _phi12820_ _key12821_ _source12822_)
                  (gx#core-bind!__%
                   _key12821_
                   (let ((_e12824_
                          (gx#core-resolve-module-export _source12822_)))
                     (##structure
                      gx#import-binding::t
                      (##structure-ref _e12824_ '1 gx#binding::t '#f)
                      _key12821_
                      _phi12820_
                      _e12824_
                      (##direct-structure-ref
                       _source12822_
                       '1
                       gx#module-export::t
                       '#f)
                      (let ((_$e12826_ _force-weak?12802_))
                        (if _$e12826_ _$e12826_ _weak?12819_))))
                   gx#core-context-rebind?
                   _phi12820_
                   _ctx12801_))))
          (if (##structure-direct-instance-of?
               _in1280312812_
               'gx#module-import::t)
              (let* ((_e1280712832_ (##vector-ref _in1280312812_ '1))
                     (_source12835_ _e1280712832_)
                     (_e1280812837_ (##vector-ref _in1280312812_ '2))
                     (_key12840_ _e1280812837_)
                     (_e1280912842_ (##vector-ref _in1280312812_ '3))
                     (_phi12845_ _e1280912842_)
                     (_e1281012847_ (##vector-ref _in1280312812_ '4))
                     (_weak?12850_ _e1281012847_))
                (_K1280612829_
                 _weak?12850_
                 _phi12845_
                 _key12840_
                 _source12835_))
              (_E1280512816_)))))
    (begin
      (define gx#core-bind-import!__0
        (lambda (_in12855_)
          (let* ((_ctx12857_ (gx#current-expander-context))
                 (_force-weak?12859_ '#f))
            (gx#core-bind-import!__%
             _in12855_
             _ctx12857_
             _force-weak?12859_))))
      (define gx#core-bind-import!__1
        (lambda (_in12861_ _ctx12862_)
          (let ((_force-weak?12864_ '#f))
            (gx#core-bind-import!__%
             _in12861_
             _ctx12862_
             _force-weak?12864_))))
      (define gx#core-bind-import!
        (lambda _g14575_
          (let ((_g14574_ (length _g14575_)))
            (cond ((##fx= _g14574_ 1) (apply gx#core-bind-import!__0 _g14575_))
                  ((##fx= _g14574_ 2) (apply gx#core-bind-import!__1 _g14575_))
                  ((##fx= _g14574_ 3) (apply gx#core-bind-import!__% _g14575_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-import!
                    _g14575_))))))))
  (begin
    (define gx#core-bind-weak-import!__%
      (lambda (_in12786_ _ctx12787_)
        (gx#core-bind-import!__% _in12786_ _ctx12787_ '#t)))
    (begin
      (define gx#core-bind-weak-import!__0
        (lambda (_in12792_)
          (let ((_ctx12794_ (gx#current-expander-context)))
            (gx#core-bind-weak-import!__% _in12792_ _ctx12794_))))
      (define gx#core-bind-weak-import!
        (lambda _g14577_
          (let ((_g14576_ (length _g14577_)))
            (cond ((##fx= _g14576_ 1)
                   (apply gx#core-bind-weak-import!__0 _g14577_))
                  ((##fx= _g14576_ 2)
                   (apply gx#core-bind-weak-import!__% _g14577_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-weak-import!
                    _g14577_))))))))
  (define gx#core-resolve-module-export
    (lambda (_out12677_)
      (letrec ((_subst12679_
                (lambda (_key12725_)
                  (let* ((_key1272612734_ _key12725_)
                         (_else1272812742_ (lambda () _key12725_))
                         (_K1273012773_
                          (lambda (_mark12745_ _id12746_)
                            (let* ((_mark1274712753_ _mark12745_)
                                   (_E1274912757_
                                    (lambda ()
                                      (error '"No clause matching"
                                             _mark1274712753_)))
                                   (_K1275012765_
                                    (lambda (_subst12760_)
                                      (let ((_$e12762_
                                             (if _subst12760_
                                                 (table-ref
                                                  _subst12760_
                                                  _id12746_
                                                  '#f)
                                                 '#f)))
                                        (if _$e12762_
                                            _$e12762_
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Illegal key; missing substitution"
                                             _key12725_))))))
                              (if (##structure-instance-of?
                                   _mark1274712753_
                                   'gx#expander-mark::t)
                                  (let* ((_e1275112768_
                                          (##vector-ref _mark1274712753_ '1))
                                         (_subst12771_ _e1275112768_))
                                    (_K1275012765_ _subst12771_))
                                  (_E1274912757_))))))
                    (if (##pair? _key1272612734_)
                        (let ((_hd1273112776_ (##car _key1272612734_))
                              (_tl1273212778_ (##cdr _key1272612734_)))
                          (let* ((_id12781_ _hd1273112776_)
                                 (_mark12783_ _tl1273212778_))
                            (_K1273012773_ _mark12783_ _id12781_)))
                        (_else1272812742_))))))
        (let* ((_out1268012690_ _out12677_)
               (_E1268212694_
                (lambda () (error '"No clause matching" _out1268012690_)))
               (_K1268312701_
                (lambda (_phi12697_ _key12698_ _ctx12699_)
                  (gx#core-context-resolve
                   (gx#core-context-shift _ctx12699_ _phi12697_)
                   (_subst12679_ _key12698_)))))
          (if (##structure-direct-instance-of?
               _out1268012690_
               'gx#module-export::t)
              (let* ((_e1268412704_ (##vector-ref _out1268012690_ '1))
                     (_ctx12707_ _e1268412704_)
                     (_e1268512709_ (##vector-ref _out1268012690_ '2))
                     (_key12712_ _e1268512709_)
                     (_e1268612714_ (##vector-ref _out1268012690_ '3))
                     (_phi12717_ _e1268612714_)
                     (_e1268712719_ (##vector-ref _out1268012690_ '4))
                     (_e1268812722_ (##vector-ref _out1268012690_ '5)))
                (_K1268312701_ _phi12717_ _key12712_ _ctx12707_))
              (_E1268212694_))))))
  (begin
    (define gx#core-module-export->import__%
      (lambda (_out12602_ _rename12603_ _dphi12604_)
        (let* ((_out1260512615_ _out12602_)
               (_E1260712619_
                (lambda () (error '"No clause matching" _out1260512615_)))
               (_K1260812631_
                (lambda (_weak?12622_
                         _name12623_
                         _phi12624_
                         _key12625_
                         _ctx12626_)
                  (##structure
                   gx#module-import::t
                   _out12602_
                   (let ((_$e12628_ _rename12603_))
                     (if _$e12628_ _$e12628_ _name12623_))
                   (fx+ _phi12624_ _dphi12604_)
                   _weak?12622_))))
          (if (##structure-direct-instance-of?
               _out1260512615_
               'gx#module-export::t)
              (let* ((_e1260912634_ (##vector-ref _out1260512615_ '1))
                     (_ctx12637_ _e1260912634_)
                     (_e1261012639_ (##vector-ref _out1260512615_ '2))
                     (_key12642_ _e1261012639_)
                     (_e1261112644_ (##vector-ref _out1260512615_ '3))
                     (_phi12647_ _e1261112644_)
                     (_e1261212649_ (##vector-ref _out1260512615_ '4))
                     (_name12652_ _e1261212649_)
                     (_e1261312654_ (##vector-ref _out1260512615_ '5))
                     (_weak?12657_ _e1261312654_))
                (_K1260812631_
                 _weak?12657_
                 _name12652_
                 _phi12647_
                 _key12642_
                 _ctx12637_))
              (_E1260712619_)))))
    (begin
      (define gx#core-module-export->import__0
        (lambda (_out12662_)
          (let* ((_rename12664_ '#f) (_dphi12666_ '0))
            (gx#core-module-export->import__%
             _out12662_
             _rename12664_
             _dphi12666_))))
      (define gx#core-module-export->import__1
        (lambda (_out12668_ _rename12669_)
          (let ((_dphi12671_ '0))
            (gx#core-module-export->import__%
             _out12668_
             _rename12669_
             _dphi12671_))))
      (define gx#core-module-export->import
        (lambda _g14579_
          (let ((_g14578_ (length _g14579_)))
            (cond ((##fx= _g14578_ 1)
                   (apply gx#core-module-export->import__0 _g14579_))
                  ((##fx= _g14578_ 2)
                   (apply gx#core-module-export->import__1 _g14579_))
                  ((##fx= _g14578_ 3)
                   (apply gx#core-module-export->import__% _g14579_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-module-export->import
                    _g14579_))))))))
  (define gx#core-expand-module%
    (lambda (_stx12530_)
      (letrec ((_make-context12532_
                (lambda (_id12583_)
                  (let* ((_super12585_ (gx#current-expander-context))
                         (_bind-id12587_ (gx#stx-e _id12583_))
                         (_mod-id12589_
                          (if (##structure-instance-of?
                               _super12585_
                               'gx#module-context::t)
                              (make-symbol
                               (##structure-ref
                                _super12585_
                                '1
                                gx#expander-context::t
                                '#f)
                               '"$"
                               _bind-id12587_)
                              _bind-id12587_))
                         (_ns12591_ (symbol->string _mod-id12589_))
                         (_path12598_
                          (if (##structure-instance-of?
                               _super12585_
                               'gx#module-context::t)
                              (let ((_path12593_
                                     (##structure-ref
                                      _super12585_
                                      '7
                                      gx#module-context::t
                                      '#f)))
                                (if (let ((_$e12595_ (pair? _path12593_)))
                                      (if _$e12595_
                                          _$e12595_
                                          (null? _path12593_)))
                                    (cons _bind-id12587_ _path12593_)
                                    (if (not _path12593_)
                                        _bind-id12587_
                                        (cons _bind-id12587_
                                              (cons _path12593_ '())))))
                              _bind-id12587_)))
                    (let ((__obj14555 (make-object gx#module-context::t '11)))
                      (begin
                        (gx#module-context:::init!
                         __obj14555
                         _mod-id12589_
                         _super12585_
                         _ns12591_
                         _path12598_)
                        __obj14555))))))
        (let* ((_e1253312543_ _stx12530_)
               (_E1253512547_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1253312543_)))
               (_E1253412579_
                (lambda ()
                  (if (gx#stx-pair? _e1253312543_)
                      (let ((_e1253612551_ (gx#syntax-e _e1253312543_)))
                        (let ((_hd1253712554_ (##car _e1253612551_))
                              (_tl1253812556_ (##cdr _e1253612551_)))
                          (if (gx#stx-pair? _tl1253812556_)
                              (let ((_e1253912559_
                                     (gx#syntax-e _tl1253812556_)))
                                (let ((_hd1254012562_ (##car _e1253912559_))
                                      (_tl1254112564_ (##cdr _e1253912559_)))
                                  (let* ((_id12567_ _hd1254012562_)
                                         (_body12569_ _tl1254112564_))
                                    (if (if (gx#identifier? _id12567_)
                                            (gx#stx-list? _body12569_)
                                            '#f)
                                        (let* ((_ctx12571_
                                                (_make-context12532_
                                                 _id12567_))
                                               (_body12573_
                                                (gx#core-expand-module-begin
                                                 _body12569_
                                                 _ctx12571_))
                                               (_body12575_
                                                (gx#core-quote-syntax__1
                                                 (gx#core-cons
                                                  '%#begin
                                                  _body12573_)
                                                 (gx#stx-source _stx12530_))))
                                          (begin
                                            (##structure-set!
                                             _ctx12571_
                                             (make-promise
                                              (lambda ()
                                                (gx#eval-syntax* _body12575_)))
                                             '10
                                             gx#module-context::t
                                             '#f)
                                            (##structure-set!
                                             _ctx12571_
                                             _body12575_
                                             '11
                                             gx#module-context::t
                                             '#f)
                                            (gx#core-bind-syntax!__0
                                             _id12567_
                                             _ctx12571_)
                                            (gx#core-quote-syntax__1
                                             (gx#core-list
                                              '%#module
                                              (gx#core-quote-syntax__0
                                               _id12567_)
                                              _body12575_)
                                             (gx#stx-source _stx12530_))))
                                        (_E1253512547_)))))
                              (_E1253512547_))))
                      (_E1253512547_)))))
          (_E1253412579_)))))
  (define gx#core-expand-module-begin
    (lambda (_body12496_ _ctx12497_)
      (call-with-parameters
       (lambda ()
         (begin
           (gx#core-bind-feature!__1 'gerbil-module '#t)
           (let* ((_stx12500_
                   (gx#core-expand-head (cons '%%begin-module _body12496_)))
                  (_e1250112508_ _stx12500_)
                  (_E1250312512_
                   (lambda ()
                     (gx#raise-syntax-error
                      '#f
                      '"Illegal module body expansion"
                      _stx12500_)))
                  (_E1250212526_
                   (lambda ()
                     (if (gx#stx-pair? _e1250112508_)
                         (let ((_e1250412516_ (gx#syntax-e _e1250112508_)))
                           (let ((_hd1250512519_ (##car _e1250412516_))
                                 (_tl1250612521_ (##cdr _e1250412516_)))
                             (if (if (gx#identifier? _hd1250512519_)
                                     (gx#core-identifier=?
                                      _hd1250512519_
                                      '%#begin-module)
                                     '#f)
                                 (let ((_body12524_ _tl1250612521_))
                                   (if '#t
                                       (if (gx#sealed-syntax? _stx12500_)
                                           _body12524_
                                           (gx#core-expand-module-body
                                            _body12524_))
                                       (_E1250312512_)))
                                 (_E1250312512_))))
                         (_E1250312512_)))))
             (_E1250212526_))))
       gx#current-expander-context
       _ctx12497_
       gx#current-expander-phi
       '0)))
  (define gx#core-expand-module-body
    (lambda (_body12292_)
      (letrec ((_expand-special12294_
                (lambda (_hd12423_ _K12424_ _rest12425_ _r12426_)
                  (let* ((_e1242712444_ _hd12423_)
                         (_E1243912448_
                          (lambda ()
                            (_K12424_
                             _rest12425_
                             (cons (gx#core-expand-top _hd12423_) _r12426_))))
                         (_E1242912460_
                          (lambda ()
                            (if (gx#stx-pair? _e1242712444_)
                                (let ((_e1244012452_
                                       (gx#syntax-e _e1242712444_)))
                                  (let ((_hd1244112455_ (##car _e1244012452_))
                                        (_tl1244212457_ (##cdr _e1244012452_)))
                                    (if (if (gx#identifier? _hd1244112455_)
                                            (gx#core-identifier=?
                                             _hd1244112455_
                                             '%#export)
                                            '#f)
                                        (if '#t
                                            (_K12424_
                                             _rest12425_
                                             (cons _hd12423_ _r12426_))
                                            (_E1243912448_))
                                        (_E1243912448_))))
                                (_E1243912448_))))
                         (_E1242812492_
                          (lambda ()
                            (if (gx#stx-pair? _e1242712444_)
                                (let ((_e1243012464_
                                       (gx#syntax-e _e1242712444_)))
                                  (let ((_hd1243112467_ (##car _e1243012464_))
                                        (_tl1243212469_ (##cdr _e1243012464_)))
                                    (if (if (gx#identifier? _hd1243112467_)
                                            (gx#core-identifier=?
                                             _hd1243112467_
                                             '%#define-values)
                                            '#f)
                                        (if (gx#stx-pair? _tl1243212469_)
                                            (let ((_e1243312472_
                                                   (gx#syntax-e
                                                    _tl1243212469_)))
                                              (let ((_hd1243412475_
                                                     (##car _e1243312472_))
                                                    (_tl1243512477_
                                                     (##cdr _e1243312472_)))
                                                (let ((_hd-bind12480_
                                                       _hd1243412475_))
                                                  (if (gx#stx-pair?
                                                       _tl1243512477_)
                                                      (let ((_e1243612482_
                                                             (gx#syntax-e
                                                              _tl1243512477_)))
                                                        (let ((_hd1243712485_
                                                               (##car _e1243612482_))
                                                              (_tl1243812487_
                                                               (##cdr _e1243612482_)))
                                                          (let ((_expr12490_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1243712485_))
                    (if (gx#stx-null? _tl1243812487_)
                        (if (gx#core-bind-values? _hd-bind12480_)
                            (begin
                              (gx#core-bind-values!__0 _hd-bind12480_)
                              (_K12424_ _rest12425_ (cons _hd12423_ _r12426_)))
                            (_E1242912460_))
                        (_E1242912460_)))))
              (_E1242912460_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E1242912460_))
                                        (_E1242912460_))))
                                (_E1242912460_)))))
                    (_E1242812492_))))
               (_expand-body12295_
                (lambda (_rbody12297_)
                  (let _lp12299_ ((_rest12301_ _rbody12297_) (_body12302_ '()))
                    (let* ((_rest1230312311_ _rest12301_)
                           (_else1230512319_ (lambda () _body12302_))
                           (_K1230712411_
                            (lambda (_rest12322_ _hd12323_)
                              (let* ((_e1232412345_ _hd12323_)
                                     (_E1234012349_
                                      (lambda ()
                                        (_lp12299_
                                         _rest12322_
                                         (cons (gx#core-expand-expression
                                                _hd12323_)
                                               _body12302_))))
                                     (_E1233612363_
                                      (lambda ()
                                        (if (gx#stx-pair? _e1232412345_)
                                            (let ((_e1234112353_
                                                   (gx#syntax-e
                                                    _e1232412345_)))
                                              (let ((_hd1234212356_
                                                     (##car _e1234112353_))
                                                    (_tl1234312358_
                                                     (##cdr _e1234112353_)))
                                                (let ((_form12361_
                                                       _hd1234212356_))
                                                  (if (gx#core-bound-identifier?__%
                                                       _form12361_
                                                       gx#special-form-binding?)
                                                      (_lp12299_
                                                       _rest12322_
                                                       (cons _hd12323_
                                                             _body12302_))
                                                      (_E1234012349_)))))
                                            (_E1234012349_))))
                                     (_E1232612375_
                                      (lambda ()
                                        (if (gx#stx-pair? _e1232412345_)
                                            (let ((_e1233712367_
                                                   (gx#syntax-e
                                                    _e1232412345_)))
                                              (let ((_hd1233812370_
                                                     (##car _e1233712367_))
                                                    (_tl1233912372_
                                                     (##cdr _e1233712367_)))
                                                (if (if (gx#identifier?
                                                         _hd1233812370_)
                                                        (gx#core-identifier=?
                                                         _hd1233812370_
                                                         '%#export)
                                                        '#f)
                                                    (if '#t
                                                        (_lp12299_
                                                         _rest12322_
                                                         (cons (gx#core-expand-export%__0
                                                                _hd12323_)
                                                               _body12302_))
                                                        (_E1233612363_))
                                                    (_E1233612363_))))
                                            (_E1233612363_))))
                                     (_E1232512407_
                                      (lambda ()
                                        (if (gx#stx-pair? _e1232412345_)
                                            (let ((_e1232712379_
                                                   (gx#syntax-e
                                                    _e1232412345_)))
                                              (let ((_hd1232812382_
                                                     (##car _e1232712379_))
                                                    (_tl1232912384_
                                                     (##cdr _e1232712379_)))
                                                (if (if (gx#identifier?
                                                         _hd1232812382_)
                                                        (gx#core-identifier=?
                                                         _hd1232812382_
                                                         '%#define-values)
                                                        '#f)
                                                    (if (gx#stx-pair?
                                                         _tl1232912384_)
                                                        (let ((_e1233012387_
                                                               (gx#syntax-e
                                                                _tl1232912384_)))
                                                          (let ((_hd1233112390_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1233012387_))
                        (_tl1233212392_ (##cdr _e1233012387_)))
                    (let ((_hd-bind12395_ _hd1233112390_))
                      (if (gx#stx-pair? _tl1233212392_)
                          (let ((_e1233312397_ (gx#syntax-e _tl1233212392_)))
                            (let ((_hd1233412400_ (##car _e1233312397_))
                                  (_tl1233512402_ (##cdr _e1233312397_)))
                              (let ((_expr12405_ _hd1233412400_))
                                (if (gx#stx-null? _tl1233512402_)
                                    (if '#t
                                        (_lp12299_
                                         _rest12322_
                                         (cons (gx#core-quote-syntax__1
                                                (gx#core-list
                                                 '%#define-values
                                                 (gx#core-quote-bind-values
                                                  _hd-bind12395_)
                                                 (gx#core-expand-expression
                                                  _expr12405_))
                                                (gx#stx-source _hd12323_))
                                               _body12302_))
                                        (_E1232612375_))
                                    (_E1232612375_)))))
                          (_E1232612375_)))))
                (_E1232612375_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1232612375_))))
                                            (_E1232612375_)))))
                                (_E1232512407_)))))
                      (if (##pair? _rest1230312311_)
                          (let ((_hd1230812414_ (##car _rest1230312311_))
                                (_tl1230912416_ (##cdr _rest1230312311_)))
                            (let* ((_hd12419_ _hd1230812414_)
                                   (_rest12421_ _tl1230912416_))
                              (_K1230712411_ _rest12421_ _hd12419_)))
                          (_else1230512319_)))))))
        (_expand-body12295_
         (gx#core-expand-block__%
          (cons '%#begin-module _body12292_)
          _expand-special12294_
          '#f
          values)))))
  (define gx#core-expand-import/export
    (lambda (_stx12135_
             _expanded?12136_
             _method12137_
             _current-phi12138_
             _expand112139_)
      (letrec ((_K12141_
                (lambda (_rest12259_ _r12260_)
                  (let* ((_e1226112268_ _rest12259_)
                         (_E1226312272_ (lambda () _r12260_))
                         (_E1226212288_
                          (lambda ()
                            (if (gx#stx-pair? _e1226112268_)
                                (let ((_e1226412276_
                                       (gx#syntax-e _e1226112268_)))
                                  (let ((_hd1226512279_ (##car _e1226412276_))
                                        (_tl1226612281_ (##cdr _e1226412276_)))
                                    (let* ((_hd12284_ _hd1226512279_)
                                           (_rest12286_ _tl1226612281_))
                                      (if '#t
                                          (_step12142_
                                           _hd12284_
                                           _rest12286_
                                           _r12260_)
                                          (_E1226312272_)))))
                                (_E1226312272_)))))
                    (_E1226212288_))))
               (_step12142_
                (lambda (_hd12173_ _rest12174_ _r12175_)
                  (let* ((_e1217612194_ _hd12173_)
                         (_E1218912198_
                          (lambda ()
                            (if (_expanded?12136_ (gx#stx-e _hd12173_))
                                (_K12141_
                                 _rest12174_
                                 (cons (gx#stx-e _hd12173_) _r12175_))
                                (_expand112139_
                                 _hd12173_
                                 _K12141_
                                 _rest12174_
                                 _r12175_))))
                         (_E1218512214_
                          (lambda ()
                            (if (gx#stx-pair? _e1217612194_)
                                (let ((_e1219012202_
                                       (gx#syntax-e _e1217612194_)))
                                  (let ((_hd1219112205_ (##car _e1219012202_))
                                        (_tl1219212207_ (##cdr _e1219012202_)))
                                    (let* ((_macro12210_ _hd1219112205_)
                                           (_body12212_ _tl1219212207_))
                                      (if (gx#core-bound-identifier?__%
                                           _macro12210_
                                           gx#syntax-binding?)
                                          (_K12141_
                                           (cons (gx#core-apply-expander__%
                                                  (gx#syntax-local-e__0
                                                   _macro12210_)
                                                  _hd12173_
                                                  _method12137_)
                                                 _rest12174_)
                                           _r12175_)
                                          (_E1218912198_)))))
                                (_E1218912198_))))
                         (_E1217812228_
                          (lambda ()
                            (if (gx#stx-pair? _e1217612194_)
                                (let ((_e1218612218_
                                       (gx#syntax-e _e1217612194_)))
                                  (let ((_hd1218712221_ (##car _e1218612218_))
                                        (_tl1218812223_ (##cdr _e1218612218_)))
                                    (if (eq? (gx#stx-e _hd1218712221_) 'begin:)
                                        (let ((_body12226_ _tl1218812223_))
                                          (if '#t
                                              (_K12141_
                                               (gx#stx-foldr
                                                cons
                                                _rest12174_
                                                _body12226_)
                                               _r12175_)
                                              (_E1218512214_)))
                                        (_E1218512214_))))
                                (_E1218512214_))))
                         (_E1217712255_
                          (lambda ()
                            (if (gx#stx-pair? _e1217612194_)
                                (let ((_e1217912232_
                                       (gx#syntax-e _e1217612194_)))
                                  (let ((_hd1218012235_ (##car _e1217912232_))
                                        (_tl1218112237_ (##cdr _e1217912232_)))
                                    (if (eq? (gx#stx-e _hd1218012235_) 'phi:)
                                        (if (gx#stx-pair? _tl1218112237_)
                                            (let ((_e1218212240_
                                                   (gx#syntax-e
                                                    _tl1218112237_)))
                                              (let ((_hd1218312243_
                                                     (##car _e1218212240_))
                                                    (_tl1218412245_
                                                     (##cdr _e1218212240_)))
                                                (let* ((_dphi12248_
                                                        _hd1218312243_)
                                                       (_body12250_
                                                        _tl1218412245_))
                                                  (if (gx#stx-fixnum?
                                                       _dphi12248_)
                                                      (let ((_rbody12253_
                                                             (call-with-parameters
                                                              (lambda ()
                                                                (_K12141_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _body12250_
                         '()))
                      _current-phi12138_
                      (fx+ (gx#stx-e _dphi12248_) (_current-phi12138_)))))
                (_K12141_ _rest12174_ (foldr1 cons _r12175_ _rbody12253_)))
              (_E1217812228_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E1217812228_))
                                        (_E1217812228_))))
                                (_E1217812228_)))))
                    (_E1217712255_)))))
        (let* ((_e1214312150_ _stx12135_)
               (_E1214512154_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1214312150_)))
               (_E1214412169_
                (lambda ()
                  (if (gx#stx-pair? _e1214312150_)
                      (let ((_e1214612158_ (gx#syntax-e _e1214312150_)))
                        (let ((_hd1214712161_ (##car _e1214612158_))
                              (_tl1214812163_ (##cdr _e1214612158_)))
                          (let ((_body12166_ _tl1214812163_))
                            (if '#t
                                (if (_current-phi12138_)
                                    (_K12141_ _body12166_ '())
                                    (call-with-parameters
                                     (lambda () (_K12141_ _body12166_ '()))
                                     _current-phi12138_
                                     (gx#current-expander-phi)))
                                (_E1214512154_)))))
                      (_E1214512154_)))))
          (_E1214412169_)))))
  (begin
    (define gx#core-expand-import%__%
      (lambda (_stx11675_ _internal-expand?11676_)
        (letrec ((_expand111678_
                  (lambda (_hd12120_ _K12121_ _rest12122_ _r12123_)
                    (if (gx#core-bound-module? _hd12120_)
                        (_import111679_
                         (gx#syntax-local-e__0 _hd12120_)
                         _K12121_
                         _rest12122_
                         _r12123_)
                        (if (gx#core-library-module-path? _hd12120_)
                            (_import111679_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path _hd12120_))
                             _K12121_
                             _rest12122_
                             _r12123_)
                            (if (gx#stx-string? _hd12120_)
                                (_import111679_
                                 (gx#import-module__0
                                  (gx#core-resolve-module-path__%
                                   _hd12120_
                                   (gx#stx-source _stx11675_)))
                                 _K12121_
                                 _rest12122_
                                 _r12123_)
                                (if (##structure-instance-of?
                                     (gx#stx-e _hd12120_)
                                     'gx#module-context::t)
                                    (_K12121_
                                     _rest12122_
                                     (cons (gx#stx-e _hd12120_) _r12123_))
                                    (if (_import-spec?11680_ _hd12120_)
                                        (_import-spec11685_
                                         _hd12120_
                                         _K12121_
                                         _rest12122_
                                         _r12123_)
                                        (if (_import-submodule?11681_
                                             _hd12120_)
                                            (_import-submodule11683_
                                             _hd12120_
                                             _K12121_
                                             _rest12122_
                                             _r12123_)
                                            (if (_import-runtime?11682_
                                                 _hd12120_)
                                                (_import-runtime11684_
                                                 _hd12120_
                                                 _K12121_
                                                 _rest12122_
                                                 _r12123_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; illegal import"
                                                 _stx11675_
                                                 _hd12120_))))))))))
                 (_import111679_
                  (lambda (_ctx12109_ _K12110_ _rest12111_ _r12112_)
                    (let ((_dphi12114_
                           (fx- (gx#current-import-expander-phi)
                                (gx#current-expander-phi))))
                      (_K12110_
                       _rest12111_
                       (cons (##structure
                              gx#import-set::t
                              _ctx12109_
                              _dphi12114_
                              (map (lambda (_g1211512117_)
                                     (gx#core-module-export->import__%
                                      _g1211512117_
                                      '#f
                                      _dphi12114_))
                                   (##structure-ref
                                    _ctx12109_
                                    '9
                                    gx#module-context::t
                                    '#f)))
                             _r12112_)))))
                 (_import-spec?11680_
                  (lambda (_hd12066_)
                    (let* ((_e1206712077_ _hd12066_)
                           (_E1206912081_ (lambda () '#f))
                           (_E1206812105_
                            (lambda ()
                              (if (gx#stx-pair? _e1206712077_)
                                  (let ((_e1207012085_
                                         (gx#syntax-e _e1206712077_)))
                                    (let ((_hd1207112088_
                                           (##car _e1207012085_))
                                          (_tl1207212090_
                                           (##cdr _e1207012085_)))
                                      (if (eq? (gx#stx-e _hd1207112088_)
                                               'spec:)
                                          (if (gx#stx-pair? _tl1207212090_)
                                              (let ((_e1207312093_
                                                     (gx#syntax-e
                                                      _tl1207212090_)))
                                                (let ((_hd1207412096_
                                                       (##car _e1207312093_))
                                                      (_tl1207512098_
                                                       (##cdr _e1207312093_)))
                                                  (let* ((_spath12101_
                                                          _hd1207412096_)
                                                         (_specs12103_
                                                          _tl1207512098_))
                                                    (if '#t
                                                        '#t
                                                        (_E1206912081_)))))
                                              (_E1206912081_))
                                          (_E1206912081_))))
                                  (_E1206912081_)))))
                      (_E1206812105_))))
                 (_import-submodule?11681_
                  (lambda (_hd12023_)
                    (let* ((_e1202412034_ _hd12023_)
                           (_E1202612038_ (lambda () '#f))
                           (_E1202512062_
                            (lambda ()
                              (if (gx#stx-pair? _e1202412034_)
                                  (let ((_e1202712042_
                                         (gx#syntax-e _e1202412034_)))
                                    (let ((_hd1202812045_
                                           (##car _e1202712042_))
                                          (_tl1202912047_
                                           (##cdr _e1202712042_)))
                                      (if (eq? (gx#stx-e _hd1202812045_) 'in:)
                                          (if (gx#stx-pair? _tl1202912047_)
                                              (let ((_e1203012050_
                                                     (gx#syntax-e
                                                      _tl1202912047_)))
                                                (let ((_hd1203112053_
                                                       (##car _e1203012050_))
                                                      (_tl1203212055_
                                                       (##cdr _e1203012050_)))
                                                  (let* ((_top12058_
                                                          _hd1203112053_)
                                                         (_sub12060_
                                                          _tl1203212055_))
                                                    (if '#t
                                                        '#t
                                                        (_E1202612038_)))))
                                              (_E1202612038_))
                                          (_E1202612038_))))
                                  (_E1202612038_)))))
                      (_E1202512062_))))
                 (_import-runtime?11682_
                  (lambda (_hd11980_)
                    (let* ((_e1198111991_ _hd11980_)
                           (_E1198311995_ (lambda () '#f))
                           (_E1198212019_
                            (lambda ()
                              (if (gx#stx-pair? _e1198111991_)
                                  (let ((_e1198411999_
                                         (gx#syntax-e _e1198111991_)))
                                    (let ((_hd1198512002_
                                           (##car _e1198411999_))
                                          (_tl1198612004_
                                           (##cdr _e1198411999_)))
                                      (if (eq? (gx#stx-e _hd1198512002_)
                                               'runtime:)
                                          (if (gx#stx-pair? _tl1198612004_)
                                              (let ((_e1198712007_
                                                     (gx#syntax-e
                                                      _tl1198612004_)))
                                                (let ((_hd1198812010_
                                                       (##car _e1198712007_))
                                                      (_tl1198912012_
                                                       (##cdr _e1198712007_)))
                                                  (let* ((_top12015_
                                                          _hd1198812010_)
                                                         (_spath12017_
                                                          _tl1198912012_))
                                                    (if '#t
                                                        '#t
                                                        (_E1198311995_)))))
                                              (_E1198311995_))
                                          (_E1198311995_))))
                                  (_E1198311995_)))))
                      (_E1198212019_))))
                 (_import-submodule11683_
                  (lambda (_hd11947_ _K11948_ _rest11949_ _r11950_)
                    (let* ((_e1195111958_ _hd11947_)
                           (_E1195311962_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _e1195111958_)))
                           (_E1195211976_
                            (lambda ()
                              (if (gx#stx-pair? _e1195111958_)
                                  (let ((_e1195411966_
                                         (gx#syntax-e _e1195111958_)))
                                    (let ((_hd1195511969_
                                           (##car _e1195411966_))
                                          (_tl1195611971_
                                           (##cdr _e1195411966_)))
                                      (let ((_spath11974_ _tl1195611971_))
                                        (if '#t
                                            (_import111679_
                                             (_import-spec-source11686_
                                              _spath11974_)
                                             _K11948_
                                             _rest11949_
                                             _r11950_)
                                            (_E1195311962_)))))
                                  (_E1195311962_)))))
                      (_E1195211976_))))
                 (_import-runtime11684_
                  (lambda (_hd11914_ _K11915_ _rest11916_ _r11917_)
                    (let* ((_e1191811925_ _hd11914_)
                           (_E1192011929_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _e1191811925_)))
                           (_E1191911943_
                            (lambda ()
                              (if (gx#stx-pair? _e1191811925_)
                                  (let ((_e1192111933_
                                         (gx#syntax-e _e1191811925_)))
                                    (let ((_hd1192211936_
                                           (##car _e1192111933_))
                                          (_tl1192311938_
                                           (##cdr _e1192111933_)))
                                      (let ((_spath11941_ _tl1192311938_))
                                        (if '#t
                                            (_K11915_
                                             _rest11916_
                                             (cons (_import-spec-source11686_
                                                    _spath11941_)
                                                   _r11917_))
                                            (_E1192011929_)))))
                                  (_E1192011929_)))))
                      (_E1191911943_))))
                 (_import-spec11685_
                  (lambda (_hd11753_ _K11754_ _rest11755_ _r11756_)
                    (let* ((_e1175711774_ _hd11753_)
                           (_E1176611778_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _e1175711774_)))
                           (_E1175911888_
                            (lambda ()
                              (if (gx#stx-pair? _e1175711774_)
                                  (let ((_e1176711782_
                                         (gx#syntax-e _e1175711774_)))
                                    (let ((_hd1176811785_
                                           (##car _e1176711782_))
                                          (_tl1176911787_
                                           (##cdr _e1176711782_)))
                                      (if (gx#stx-pair? _tl1176911787_)
                                          (let ((_e1177011790_
                                                 (gx#syntax-e _tl1176911787_)))
                                            (let ((_hd1177111793_
                                                   (##car _e1177011790_))
                                                  (_tl1177211795_
                                                   (##cdr _e1177011790_)))
                                              (let* ((_path11798_
                                                      _hd1177111793_)
                                                     (_specs11800_
                                                      _tl1177211795_))
                                                (if '#t
                                                    (let ((_src-ctx11802_
                                                           (_import-spec-source11686_
                                                            _path11798_))
                                                          (_exports11803_
                                                           (make-table))
                                                          (_specs11804_
                                                           (gx#syntax->list
                                                            _specs11800_)))
                                                      (begin
                                                        (for-each
                                                         (lambda (_out11806_)
                                                           (table-set!
                                                            _exports11803_
                                                            (cons (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _out11806_
                           '3
                           gx#module-export::t
                           '#f)
                          (##direct-structure-ref
                           _out11806_
                           '4
                           gx#module-export::t
                           '#f))
                    _out11806_))
                 (##structure-ref _src-ctx11802_ '9 gx#module-context::t '#f))
                (_K11754_
                 _rest11755_
                 (foldl1 (lambda (_spec11808_ _r11809_)
                           (let* ((_e1181011826_ _spec11808_)
                                  (_E1181211830_
                                   (lambda ()
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _e1181011826_)))
                                  (_E1181111884_
                                   (lambda ()
                                     (if (gx#stx-pair? _e1181011826_)
                                         (let ((_e1181311834_
                                                (gx#syntax-e _e1181011826_)))
                                           (let ((_hd1181411837_
                                                  (##car _e1181311834_))
                                                 (_tl1181511839_
                                                  (##cdr _e1181311834_)))
                                             (let ((_phi11842_ _hd1181411837_))
                                               (if (gx#stx-pair?
                                                    _tl1181511839_)
                                                   (let ((_e1181611844_
                                                          (gx#syntax-e
                                                           _tl1181511839_)))
                                                     (let ((_hd1181711847_
                                                            (##car _e1181611844_))
                                                           (_tl1181811849_
                                                            (##cdr _e1181611844_)))
                                                       (let ((_name11852_
                                                              _hd1181711847_))
                                                         (if (gx#stx-pair?
                                                              _tl1181811849_)
                                                             (let ((_e1181911854_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _tl1181811849_)))
                       (let ((_hd1182011857_ (##car _e1181911854_))
                             (_tl1182111859_ (##cdr _e1181911854_)))
                         (let ((_src-phi11862_ _hd1182011857_))
                           (if (gx#stx-pair? _tl1182111859_)
                               (let ((_e1182211864_
                                      (gx#syntax-e _tl1182111859_)))
                                 (let ((_hd1182311867_ (##car _e1182211864_))
                                       (_tl1182411869_ (##cdr _e1182211864_)))
                                   (let ((_src-name11872_ _hd1182311867_))
                                     (if (gx#stx-null? _tl1182411869_)
                                         (if (if (gx#stx-fixnum?
                                                  _src-phi11862_)
                                                 (if (gx#identifier?
                                                      _src-name11872_)
                                                     (if (gx#stx-fixnum?
                                                          _phi11842_)
                                                         (gx#identifier?
                                                          _name11852_)
                                                         '#f)
                                                     '#f)
                                                 '#f)
                                             (let ((_src-phi11874_
                                                    (gx#stx-e _src-phi11862_))
                                                   (_src-name11875_
                                                    (gx#core-identifier-key
                                                     _src-name11872_))
                                                   (_phi11876_
                                                    (gx#stx-e _phi11842_))
                                                   (_name11877_
                                                    (gx#core-identifier-key
                                                     _name11852_)))
                                               (let ((_$e11879_
                                                      (table-ref
                                                       _exports11803_
                                                       (cons _src-phi11874_
                                                             _src-name11875_)
                                                       '#f)))
                                                 (if _$e11879_
                                                     ((lambda (_out11882_)
                                                        (cons (gx#core-module-export->import__%
                                                               _out11882_
                                                               _name11877_
                                                               (fx- _phi11876_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _src-phi11874_))
                      _r11809_))
              _$e11879_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; no matching export"
                                                      _stx11675_
                                                      _hd11753_))))
                                             (_E1181211830_))
                                         (_E1181211830_)))))
                               (_E1181211830_)))))
                     (_E1181211830_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1181211830_)))))
                                         (_E1181211830_)))))
                             (_E1181111884_)))
                         _r11756_
                         _specs11804_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1176611778_)))))
                                          (_E1176611778_))))
                                  (_E1176611778_))))
                           (_E1175811910_
                            (lambda ()
                              (if (gx#stx-pair? _e1175711774_)
                                  (let ((_e1176011892_
                                         (gx#syntax-e _e1175711774_)))
                                    (let ((_hd1176111895_
                                           (##car _e1176011892_))
                                          (_tl1176211897_
                                           (##cdr _e1176011892_)))
                                      (if (gx#stx-pair? _tl1176211897_)
                                          (let ((_e1176311900_
                                                 (gx#syntax-e _tl1176211897_)))
                                            (let ((_hd1176411903_
                                                   (##car _e1176311900_))
                                                  (_tl1176511905_
                                                   (##cdr _e1176311900_)))
                                              (let ((_path11908_
                                                     _hd1176411903_))
                                                (if (gx#stx-null?
                                                     _tl1176511905_)
                                                    (if '#t
                                                        (_K11754_
                                                         _rest11755_
                                                         (cons (_import-spec-source11686_
                                                                _path11908_)
                                                               _r11756_))
                                                        (_E1175911888_))
                                                    (_E1175911888_)))))
                                          (_E1175911888_))))
                                  (_E1175911888_)))))
                      (_E1175811910_))))
                 (_import-spec-source11686_
                  (lambda (_spath11751_)
                    (gx#core-import-nested-module _spath11751_ _stx11675_)))
                 (_import!11687_
                  (lambda (_rbody11700_)
                    (letrec* ((_current-ctx11702_
                               (gx#current-expander-context))
                              (_deps11703_ (make-hash-table-eq))
                              (_bind!11704_
                               (lambda (_hd11749_)
                                 (gx#core-bind-import!__1
                                  _hd11749_
                                  _current-ctx11702_))))
                      (let _lp11706_ ((_rest11708_ _rbody11700_)
                                      (_body11709_ '()))
                        (let* ((_rest1171011718_ _rest11708_)
                               (_else1171211728_
                                (lambda ()
                                  (begin
                                    (if (##structure-instance-of?
                                         _current-ctx11702_
                                         'gx#module-context::t)
                                        (##structure-set!
                                         _current-ctx11702_
                                         (foldl1 cons
                                                 (##structure-ref
                                                  _current-ctx11702_
                                                  '8
                                                  gx#module-context::t
                                                  '#f)
                                                 _body11709_)
                                         '8
                                         gx#module-context::t
                                         '#f)
                                        '#!void)
                                    (table-for-each
                                     (lambda (_ctx11726_ _g14580_)
                                       (gx#eval-module _ctx11726_))
                                     _deps11703_)
                                    _body11709_)))
                               (_K1171411737_
                                (lambda (_rest11731_ _hd11732_)
                                  (begin
                                    (if (##structure-direct-instance-of?
                                         _hd11732_
                                         'gx#module-import::t)
                                        (begin
                                          (_bind!11704_ _hd11732_)
                                          (if (if (fxpositive?
                                                   (##direct-structure-ref
                                                    _hd11732_
                                                    '3
                                                    gx#module-import::t
                                                    '#f))
                                                  (fxzero? (##direct-structure-ref
                                                            (##direct-structure-ref
                                                             _hd11732_
                                                             '1
                                                             gx#module-import::t
                                                             '#f)
                                                            '3
                                                            gx#module-export::t
                                                            '#f))
                                                  '#f)
                                              (table-set!
                                               _deps11703_
                                               (##direct-structure-ref
                                                (##direct-structure-ref
                                                 _hd11732_
                                                 '1
                                                 gx#module-import::t
                                                 '#f)
                                                '1
                                                gx#module-export::t
                                                '#f)
                                               '#t)
                                              '#!void))
                                        (if (##structure-direct-instance-of?
                                             _hd11732_
                                             'gx#import-set::t)
                                            (begin
                                              (for-each
                                               _bind!11704_
                                               (##direct-structure-ref
                                                _hd11732_
                                                '3
                                                gx#import-set::t
                                                '#f))
                                              (if (fxpositive?
                                                   (##direct-structure-ref
                                                    _hd11732_
                                                    '2
                                                    gx#import-set::t
                                                    '#f))
                                                  (table-set!
                                                   _deps11703_
                                                   (##direct-structure-ref
                                                    _hd11732_
                                                    '1
                                                    gx#import-set::t
                                                    '#f)
                                                   '#t)
                                                  '#!void))
                                            (let ((_$e11734_
                                                   (##structure-instance-of?
                                                    _hd11732_
                                                    'gx#module-context::t)))
                                              (if _$e11734_
                                                  (values _$e11734_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Unexpected import"
                                                   _stx11675_
                                                   _hd11732_)))))
                                    (_lp11706_
                                     _rest11731_
                                     (cons _hd11732_ _body11709_))))))
                          (if (##pair? _rest1171011718_)
                              (let ((_hd1171511740_ (##car _rest1171011718_))
                                    (_tl1171611742_ (##cdr _rest1171011718_)))
                                (let* ((_hd11745_ _hd1171511740_)
                                       (_rest11747_ _tl1171611742_))
                                  (_K1171411737_ _rest11747_ _hd11745_)))
                              (_else1171211728_)))))))
                 (_expanded-import?11688_
                  (lambda (_e11692_)
                    (let ((_$e11694_
                           (##structure-direct-instance-of?
                            _e11692_
                            'gx#import-set::t)))
                      (if _$e11694_
                          _$e11694_
                          (let ((_$e11697_
                                 (##structure-direct-instance-of?
                                  _e11692_
                                  'gx#module-import::t)))
                            (if _$e11697_
                                _$e11697_
                                (##structure-instance-of?
                                 _e11692_
                                 'gx#module-context::t))))))))
          (let ((_rbody11690_
                 (gx#core-expand-import/export
                  _stx11675_
                  _expanded-import?11688_
                  'apply-import-expander
                  gx#current-import-expander-phi
                  _expand111678_)))
            (if _internal-expand?11676_
                (reverse _rbody11690_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#import (_import!11687_ _rbody11690_))
                 (gx#stx-source _stx11675_)))))))
    (begin
      (define gx#core-expand-import%__0
        (lambda (_stx12128_)
          (let ((_internal-expand?12130_ '#f))
            (gx#core-expand-import%__% _stx12128_ _internal-expand?12130_))))
      (define gx#core-expand-import%
        (lambda _g14582_
          (let ((_g14581_ (length _g14582_)))
            (cond ((##fx= _g14581_ 1)
                   (apply gx#core-expand-import%__0 _g14582_))
                  ((##fx= _g14581_ 2)
                   (apply gx#core-expand-import%__% _g14582_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-expand-import%
                    _g14582_))))))))
  (define gx#core-import-nested-module
    (lambda (_spath11602_ _where11603_)
      (let* ((_e1160411611_ _spath11602_)
             (_E1160611615_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1160411611_)))
             (_E1160511670_
              (lambda ()
                (if (gx#stx-pair? _e1160411611_)
                    (let ((_e1160711619_ (gx#syntax-e _e1160411611_)))
                      (let ((_hd1160811622_ (##car _e1160711619_))
                            (_tl1160911624_ (##cdr _e1160711619_)))
                        (let* ((_origin11627_ _hd1160811622_)
                               (_sub11629_ _tl1160911624_))
                          (if '#t
                              (let ((_origin-ctx11631_
                                     (if (gx#stx-false? _origin11627_)
                                         (gx#current-expander-context)
                                         (gx#import-module__0 _origin11627_))))
                                (let _lp11633_ ((_rest11635_ _sub11629_)
                                                (_ctx11636_ _origin-ctx11631_))
                                  (let* ((_e1163711644_ _rest11635_)
                                         (_E1163911648_ (lambda () _ctx11636_))
                                         (_E1163811666_
                                          (lambda ()
                                            (if (gx#stx-pair? _e1163711644_)
                                                (let ((_e1164011652_
                                                       (gx#syntax-e
                                                        _e1163711644_)))
                                                  (let ((_hd1164111655_
                                                         (##car _e1164011652_))
                                                        (_tl1164211657_
                                                         (##cdr _e1164011652_)))
                                                    (let* ((_id11660_
                                                            _hd1164111655_)
                                                           (_rest11662_
                                                            _tl1164211657_))
                                                      (if '#t
                                                          (let ((_bind11664_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#resolve-identifier__% _id11660_ '0 _ctx11636_)))
                    (begin
                      (if (if (##structure-direct-instance-of?
                               _bind11664_
                               'gx#syntax-binding::t)
                              (##structure-instance-of?
                               (##direct-structure-ref
                                _bind11664_
                                '4
                                gx#syntax-binding::t
                                '#f)
                               'gx#module-context::t)
                              '#f)
                          '#!void
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; not bound as module"
                           _where11603_
                           _spath11602_
                           _id11660_))
                      (_lp11633_
                       _rest11662_
                       (##direct-structure-ref
                        _bind11664_
                        '4
                        gx#syntax-binding::t
                        '#f))))
                  (_E1163911648_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E1163911648_)))))
                                    (_E1163811666_))))
                              (_E1160611615_)))))
                    (_E1160611615_)))))
        (_E1160511670_))))
  (define gx#core-expand-import-source
    (lambda (_hd11600_)
      (gx#core-expand-import%__%
       (cons 'import-internal% (cons _hd11600_ '()))
       '#t)))
  (begin
    (define gx#core-expand-export%__%
      (lambda (_stx11111_ _internal-expand?11112_)
        (letrec* ((_make-export__1453614537_
                   (lambda (_bind11548_ _phi11549_ _ctx11550_ _name11551_)
                     (let* ((_key11553_
                             (##structure-ref
                              _bind11548_
                              '2
                              gx#binding::t
                              '#f))
                            (_export-key11555_
                             (if _name11551_
                                 (gx#core-identifier-key _name11551_)
                                 _key11553_)))
                       (##structure
                        gx#module-export::t
                        _ctx11550_
                        _key11553_
                        _phi11549_
                        _export-key11555_
                        (let ((_$e11558_
                               (##structure-instance-of?
                                _bind11548_
                                'gx#extern-binding::t)))
                          (if _$e11558_
                              _$e11558_
                              (##structure-direct-instance-of?
                               _bind11548_
                               'gx#import-binding::t)))))))
                  (_make-export__0__1453814541_
                   (lambda (_bind11564_)
                     (let* ((_phi11566_ (gx#current-export-expander-phi))
                            (_ctx11568_ (gx#current-expander-context))
                            (_name11570_ '#f))
                       (_make-export__1453614537_
                        _bind11564_
                        _phi11566_
                        _ctx11568_
                        _name11570_))))
                  (_make-export__1__1453914542_
                   (lambda (_bind11572_ _phi11573_)
                     (let* ((_ctx11575_ (gx#current-expander-context))
                            (_name11577_ '#f))
                       (_make-export__1453614537_
                        _bind11572_
                        _phi11573_
                        _ctx11575_
                        _name11577_))))
                  (_make-export__2__1454014543_
                   (lambda (_bind11579_ _phi11580_ _ctx11581_)
                     (let ((_name11583_ '#f))
                       (_make-export__1453614537_
                        _bind11579_
                        _phi11580_
                        _ctx11581_
                        _name11583_))))
                  (_make-export11114_
                   (lambda _g14584_
                     (let ((_g14583_ (length _g14584_)))
                       (cond ((##fx= _g14583_ 1)
                              (apply _make-export__0__1453814541_ _g14584_))
                             ((##fx= _g14583_ 2)
                              (apply _make-export__1__1453914542_ _g14584_))
                             ((##fx= _g14583_ 3)
                              (apply _make-export__2__1454014543_ _g14584_))
                             ((##fx= _g14583_ 4)
                              (apply _make-export__1453614537_ _g14584_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g14584_))))))
                  (_expand111115_
                   (lambda (_hd11261_ _K11262_ _rest11263_ _r11264_)
                     (let* ((_e1126511297_ _hd11261_)
                            (_E1129211301_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal export"
                                _stx11111_
                                _hd11261_)))
                            (_E1128211380_
                             (lambda ()
                               (if (gx#stx-pair? _e1126511297_)
                                   (let ((_e1129311305_
                                          (gx#syntax-e _e1126511297_)))
                                     (let ((_hd1129411308_
                                            (##car _e1129311305_))
                                           (_tl1129511310_
                                            (##cdr _e1129311305_)))
                                       (if (eq? (gx#stx-e _hd1129411308_)
                                                'import:)
                                           (let ((_in11313_ _tl1129511310_))
                                             (if (gx#stx-list? _in11313_)
                                                 (let _lp11315_ ((_in-rest11317_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _in11313_)
                         (_r11318_ _r11264_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_e1131911326_
                                                           _in-rest11317_)
                                                          (_E1132111330_
                                                           (lambda ()
                                                             (_K11262_
                                                              _rest11263_
                                                              _r11318_)))
                                                          (_E1132011376_
                                                           (lambda ()
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _e1131911326_)
                         (let ((_e1132211334_ (gx#syntax-e _e1131911326_)))
                           (let ((_hd1132311337_ (##car _e1132211334_))
                                 (_tl1132411339_ (##cdr _e1132211334_)))
                             (let* ((_hd11342_ _hd1132311337_)
                                    (_in-rest11344_ _tl1132411339_))
                               (if '#t
                                   (let ((_src11374_
                                          (if (gx#core-bound-module? _hd11342_)
                                              (gx#syntax-local-e__0 _hd11342_)
                                              (if (gx#core-library-module-path?
                                                   _hd11342_)
                                                  (gx#import-module__0
                                                   (gx#core-resolve-library-module-path
                                                    _hd11342_))
                                                  (if (gx#stx-string?
                                                       _hd11342_)
                                                      (gx#import-module__0
                                                       (gx#core-resolve-module-path__%
                                                        _hd11342_
                                                        (gx#stx-source
                                                         _stx11111_)))
                                                      (let* ((_e1134511352_
                                                              _hd11342_)
                                                             (_E1134711356_
                                                              (lambda ()
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; illegal re-export"
                         _stx11111_
                         _hd11342_)))
                     (_E1134611370_
                      (lambda ()
                        (if (gx#stx-pair? _e1134511352_)
                            (let ((_e1134811360_ (gx#syntax-e _e1134511352_)))
                              (let ((_hd1134911363_ (##car _e1134811360_))
                                    (_tl1135011365_ (##cdr _e1134811360_)))
                                (if (eq? (gx#stx-e _hd1134911363_) 'in:)
                                    (let ((_spath11368_ _tl1135011365_))
                                      (if '#t
                                          (gx#core-import-nested-module
                                           _spath11368_
                                           _stx11111_)
                                          (_E1134711356_)))
                                    (_E1134711356_))))
                            (_E1134711356_)))))
                (_E1134611370_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_lp11315_
                                      _in-rest11344_
                                      (_export-imports11116_
                                       _src11374_
                                       _r11318_)))
                                   (_E1132111330_)))))
                         (_E1132111330_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E1132011376_)))
                                                 (_E1129211301_)))
                                           (_E1129211301_))))
                                   (_E1129211301_))))
                            (_E1126911419_
                             (lambda ()
                               (if (gx#stx-pair? _e1126511297_)
                                   (let ((_e1128311384_
                                          (gx#syntax-e _e1126511297_)))
                                     (let ((_hd1128411387_
                                            (##car _e1128311384_))
                                           (_tl1128511389_
                                            (##cdr _e1128311384_)))
                                       (if (eq? (gx#stx-e _hd1128411387_)
                                                'rename:)
                                           (if (gx#stx-pair? _tl1128511389_)
                                               (let ((_e1128611392_
                                                      (gx#syntax-e
                                                       _tl1128511389_)))
                                                 (let ((_hd1128711395_
                                                        (##car _e1128611392_))
                                                       (_tl1128811397_
                                                        (##cdr _e1128611392_)))
                                                   (let ((_id11400_
                                                          _hd1128711395_))
                                                     (if (gx#stx-pair?
                                                          _tl1128811397_)
                                                         (let ((_e1128911402_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1128811397_)))
                   (let ((_hd1129011405_ (##car _e1128911402_))
                         (_tl1129111407_ (##cdr _e1128911402_)))
                     (let ((_name11410_ _hd1129011405_))
                       (if (gx#stx-null? _tl1129111407_)
                           (if '#t
                               (let* ((_phi11412_
                                       (gx#current-export-expander-phi))
                                      (_$e11414_
                                       (gx#core-resolve-identifier__1
                                        _id11400_
                                        _phi11412_)))
                                 (if _$e11414_
                                     ((lambda (_bind11417_)
                                        (_K11262_
                                         _rest11263_
                                         (cons (_make-export__1453614537_
                                                _bind11417_
                                                _phi11412_
                                                (gx#current-expander-context)
                                                _name11410_)
                                               _r11264_)))
                                      _$e11414_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Reference to unbound identifier"
                                      _stx11111_
                                      _hd11261_
                                      _id11400_)))
                               (_E1128211380_))
                           (_E1128211380_)))))
                 (_E1128211380_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E1128211380_))
                                           (_E1128211380_))))
                                   (_E1128211380_))))
                            (_E1126811468_
                             (lambda ()
                               (if (gx#stx-pair? _e1126511297_)
                                   (let ((_e1127011423_
                                          (gx#syntax-e _e1126511297_)))
                                     (let ((_hd1127111426_
                                            (##car _e1127011423_))
                                           (_tl1127211428_
                                            (##cdr _e1127011423_)))
                                       (if (eq? (gx#stx-e _hd1127111426_)
                                                'spec:)
                                           (if (gx#stx-pair? _tl1127211428_)
                                               (let ((_e1127311431_
                                                      (gx#syntax-e
                                                       _tl1127211428_)))
                                                 (let ((_hd1127411434_
                                                        (##car _e1127311431_))
                                                       (_tl1127511436_
                                                        (##cdr _e1127311431_)))
                                                   (let ((_phi11439_
                                                          _hd1127411434_))
                                                     (if (gx#stx-pair?
                                                          _tl1127511436_)
                                                         (let ((_e1127611441_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1127511436_)))
                   (let ((_hd1127711444_ (##car _e1127611441_))
                         (_tl1127811446_ (##cdr _e1127611441_)))
                     (let ((_id11449_ _hd1127711444_))
                       (if (gx#stx-pair? _tl1127811446_)
                           (let ((_e1127911451_ (gx#syntax-e _tl1127811446_)))
                             (let ((_hd1128011454_ (##car _e1127911451_))
                                   (_tl1128111456_ (##cdr _e1127911451_)))
                               (let ((_name11459_ _hd1128011454_))
                                 (if (gx#stx-null? _tl1128111456_)
                                     (if (if (gx#stx-fixnum? _phi11439_)
                                             (if (gx#identifier? _id11449_)
                                                 (gx#identifier? _name11459_)
                                                 '#f)
                                             '#f)
                                         (let* ((_phi11461_
                                                 (gx#stx-e _phi11439_))
                                                (_$e11463_
                                                 (gx#core-resolve-identifier__1
                                                  _id11449_
                                                  _phi11461_)))
                                           (if _$e11463_
                                               ((lambda (_bind11466_)
                                                  (_K11262_
                                                   _rest11263_
                                                   (cons (_make-export__1453614537_
                                                          _bind11466_
                                                          _phi11461_
                                                          (gx#current-expander-context)
                                                          _name11459_)
                                                         _r11264_)))
                                                _$e11463_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Reference to unbound identifier"
                                                _stx11111_
                                                _hd11261_
                                                _id11449_)))
                                         (_E1126911419_))
                                     (_E1126911419_)))))
                           (_E1126911419_)))))
                 (_E1126911419_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E1126911419_))
                                           (_E1126911419_))))
                                   (_E1126911419_))))
                            (_E1126711479_
                             (lambda ()
                               (let ((_id11472_ _e1126511297_))
                                 (if (gx#identifier? _id11472_)
                                     (let ((_$e11474_
                                            (gx#core-resolve-identifier__1
                                             _id11472_
                                             (gx#current-export-expander-phi))))
                                       (if _$e11474_
                                           ((lambda (_bind11477_)
                                              (_K11262_
                                               _rest11263_
                                               (cons (_make-export__0__1453814541_
                                                      _bind11477_)
                                                     _r11264_)))
                                            _$e11474_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Reference to unbound identifier"
                                            _stx11111_
                                            _hd11261_)))
                                     (_E1126811468_)))))
                            (_E1126611543_
                             (lambda ()
                               (if (eq? (gx#stx-e _e1126511297_) '#t)
                                   (if '#t
                                       (let* ((_current-ctx11483_
                                               (gx#current-expander-context))
                                              (_current-phi11485_
                                               (gx#current-export-expander-phi))
                                              (_phi-ctx11487_
                                               (gx#core-context-shift
                                                _current-ctx11483_
                                                _current-phi11485_))
                                              (_phi-bind11489_
                                               (table->list
                                                (##structure-ref
                                                 _phi-ctx11487_
                                                 '2
                                                 gx#expander-context::t
                                                 '#f))))
                                         (let _lp11492_ ((_bind-rest11494_
                                                          _phi-bind11489_)
                                                         (_set11495_ '()))
                                           (let* ((_bind-rest1149611506_
                                                   _bind-rest11494_)
                                                  (_else1149811514_
                                                   (lambda ()
                                                     (_K11262_
                                                      _rest11263_
                                                      (cons (##structure
                                                             gx#export-set::t
                                                             '#f
                                                             _current-phi11485_
                                                             _set11495_)
                                                            _r11264_))))
                                                  (_K1150011524_
                                                   (lambda (_bind-rest11517_
                                                            _bind11518_
                                                            _key11519_)
                                                     (if (let ((_$e11521_
                                                                (##structure-direct-instance-of?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _bind11518_
                         'gx#import-binding::t)))
                   (if _$e11521_
                       _$e11521_
                       (gx#private-feature-binding? _bind11518_)))
                 (_lp11492_ _bind-rest11517_ _set11495_)
                 (_lp11492_
                  _bind-rest11517_
                  (cons (_make-export__2__1454014543_
                         _bind11518_
                         _current-phi11485_
                         _current-ctx11483_)
                        _set11495_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (##pair? _bind-rest1149611506_)
                                                 (let ((_hd1150111527_
                                                        (##car _bind-rest1149611506_))
                                                       (_tl1150211529_
                                                        (##cdr _bind-rest1149611506_)))
                                                   (if (##pair? _hd1150111527_)
                                                       (let ((_hd1150311532_
                                                              (##car _hd1150111527_))
                                                             (_tl1150411534_
                                                              (##cdr _hd1150111527_)))
                                                         (let* ((_key11537_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1150311532_)
                        (_bind11539_ _tl1150411534_)
                        (_bind-rest11541_ _tl1150211529_))
                   (_K1150011524_ _bind-rest11541_ _bind11539_ _key11537_)))
               (_else1149811514_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_else1149811514_)))))
                                       (_E1126711479_))
                                   (_E1126711479_)))))
                       (_E1126611543_))))
                  (_export-imports11116_
                   (lambda (_src11137_ _r11138_)
                     (letrec* ((_current-ctx11140_
                                (gx#current-expander-context))
                               (_current-phi11141_
                                (gx#current-export-expander-phi))
                               (_import->export11142_
                                (lambda (_in11223_)
                                  (let* ((_in1122411232_ _in11223_)
                                         (_E1122611236_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _in1122411232_)))
                                         (_K1122711243_
                                          (lambda (_phi11239_
                                                   _key11240_
                                                   _out11241_)
                                            (##structure
                                             gx#module-export::t
                                             _current-ctx11140_
                                             _key11240_
                                             _phi11239_
                                             _key11240_
                                             '#t))))
                                    (if (##structure-direct-instance-of?
                                         _in1122411232_
                                         'gx#module-import::t)
                                        (let* ((_e1122811246_
                                                (##vector-ref
                                                 _in1122411232_
                                                 '1))
                                               (_out11249_ _e1122811246_)
                                               (_e1122911251_
                                                (##vector-ref
                                                 _in1122411232_
                                                 '2))
                                               (_key11254_ _e1122911251_)
                                               (_e1123011256_
                                                (##vector-ref
                                                 _in1122411232_
                                                 '3))
                                               (_phi11259_ _e1123011256_))
                                          (_K1122711243_
                                           _phi11259_
                                           _key11254_
                                           _out11249_))
                                        (_E1122611236_)))))
                               (_fold-e11143_
                                (lambda (_in11145_ _r11146_)
                                  (let* ((_in1114711161_ _in11145_)
                                         (_else1115011169_
                                          (lambda () _r11146_)))
                                    (let ((_K1115611205_
                                           (lambda (_phi11201_
                                                    _key11202_
                                                    _out11203_)
                                             (if (if (fx= _phi11201_
                                                          _current-phi11141_)
                                                     (eq? _src11137_
                                                          (##direct-structure-ref
                                                           _out11203_
                                                           '1
                                                           gx#module-export::t
                                                           '#f))
                                                     '#f)
                                                 (cons (_import->export11142_
                                                        _in11145_)
                                                       _r11146_)
                                                 _r11146_)))
                                          (_K1115211180_
                                           (lambda (_imports11173_
                                                    _phi11174_
                                                    _ctx11175_)
                                             (if (if (fx= _phi11174_
                                                          _current-phi11141_)
                                                     (eq? _src11137_
                                                          _ctx11175_)
                                                     '#f)
                                                 (foldl1 (lambda (_in11177_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _r11178_)
                   (cons (_import->export11142_ _in11177_) _r11178_))
                 _r11146_
                 _imports11173_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _r11146_))))
                                      (let ((_try-match1114911198_
                                             (lambda ()
                                               (if (##structure-direct-instance-of?
                                                    _in1114711161_
                                                    'gx#import-set::t)
                                                   (let* ((_e1115311183_
                                                           (##vector-ref
                                                            _in1114711161_
                                                            '1))
                                                          (_e1115411188_
                                                           (##vector-ref
                                                            _in1114711161_
                                                            '2))
                                                          (_e1115511193_
                                                           (##vector-ref
                                                            _in1114711161_
                                                            '3)))
                                                     (let ((_ctx11186_
                                                            _e1115311183_)
                                                           (_phi11191_
                                                            _e1115411188_)
                                                           (_imports11196_
                                                            _e1115511193_))
                                                       (_K1115211180_
                                                        _imports11196_
                                                        _phi11191_
                                                        _ctx11186_)))
                                                   (_else1115011169_)))))
                                        (if (##structure-direct-instance-of?
                                             _in1114711161_
                                             'gx#module-import::t)
                                            (let* ((_e1115711208_
                                                    (##vector-ref
                                                     _in1114711161_
                                                     '1))
                                                   (_e1115811213_
                                                    (##vector-ref
                                                     _in1114711161_
                                                     '2))
                                                   (_e1115911218_
                                                    (##vector-ref
                                                     _in1114711161_
                                                     '3)))
                                              (let ((_out11211_ _e1115711208_)
                                                    (_key11216_ _e1115811213_)
                                                    (_phi11221_ _e1115911218_))
                                                (_K1115611205_
                                                 _phi11221_
                                                 _key11216_
                                                 _out11211_)))
                                            (_try-match1114911198_))))))))
                       (cons (##structure
                              gx#export-set::t
                              _src11137_
                              _current-phi11141_
                              (foldl1 _fold-e11143_
                                      '()
                                      (##structure-ref
                                       _current-ctx11140_
                                       '8
                                       gx#module-context::t
                                       '#f)))
                             _r11138_))))
                  (_export!11117_
                   (lambda (_rbody11127_)
                     (letrec* ((_current-ctx11129_
                                (gx#current-expander-context))
                               (_fold-e11130_
                                (lambda (_out11134_ _r11135_)
                                  (if (##structure-direct-instance-of?
                                       _out11134_
                                       'gx#module-export::t)
                                      (cons _out11134_ _r11135_)
                                      (if (##structure-direct-instance-of?
                                           _out11134_
                                           'gx#export-set::t)
                                          (foldl1 cons
                                                  _r11135_
                                                  (##direct-structure-ref
                                                   _out11134_
                                                   '3
                                                   gx#export-set::t
                                                   '#f))
                                          _r11135_)))))
                       (let ((_body11132_ (reverse _rbody11127_)))
                         (begin
                           (##structure-set!
                            _current-ctx11129_
                            (foldl1 _fold-e11130_
                                    (##structure-ref
                                     _current-ctx11129_
                                     '9
                                     gx#module-context::t
                                     '#f)
                                    _body11132_)
                            '9
                            gx#module-context::t
                            '#f)
                           _body11132_)))))
                  (_expanded-export?11118_
                   (lambda (_e11122_)
                     (let ((_$e11124_
                            (##structure-direct-instance-of?
                             _e11122_
                             'gx#module-export::t)))
                       (if _$e11124_
                           _$e11124_
                           (##structure-direct-instance-of?
                            _e11122_
                            'gx#export-set::t))))))
          (let ((_rbody11120_
                 (gx#core-expand-import/export
                  _stx11111_
                  _expanded-export?11118_
                  'apply-export-expander
                  gx#current-export-expander-phi
                  _expand111115_)))
            (if _internal-expand?11112_
                (reverse _rbody11120_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#export (_export!11117_ _rbody11120_))
                 (gx#stx-source _stx11111_)))))))
    (begin
      (define gx#core-expand-export%__0
        (lambda (_stx11593_)
          (let ((_internal-expand?11595_ '#f))
            (gx#core-expand-export%__% _stx11593_ _internal-expand?11595_))))
      (define gx#core-expand-export%
        (lambda _g14586_
          (let ((_g14585_ (length _g14586_)))
            (cond ((##fx= _g14585_ 1)
                   (apply gx#core-expand-export%__0 _g14586_))
                  ((##fx= _g14585_ 2)
                   (apply gx#core-expand-export%__% _g14586_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-expand-export%
                    _g14586_))))))))
  (define gx#core-expand-export-source
    (lambda (_hd11108_)
      (gx#core-expand-export%__%
       (cons 'export-macro% (cons _hd11108_ '()))
       '#t)))
  (define gx#core-expand-provide%
    (lambda (_stx11078_)
      (let* ((_e1107911086_ _stx11078_)
             (_E1108111090_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1107911086_)))
             (_E1108011104_
              (lambda ()
                (if (gx#stx-pair? _e1107911086_)
                    (let ((_e1108211094_ (gx#syntax-e _e1107911086_)))
                      (let ((_hd1108311097_ (##car _e1108211094_))
                            (_tl1108411099_ (##cdr _e1108211094_)))
                        (let ((_body11102_ _tl1108411099_))
                          (if (gx#identifier-list? _body11102_)
                              (begin
                                (gx#stx-for-each1
                                 gx#core-bind-feature!
                                 _body11102_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#provide
                                  (gx#stx-map1
                                   gx#core-quote-syntax
                                   _body11102_))
                                 (gx#stx-source _stx11078_)))
                              (_E1108111090_)))))
                    (_E1108111090_)))))
        (_E1108011104_))))
  (begin
    (define gx#core-bind-feature!__%
      (lambda (_id11044_ _private?11045_ _phi11046_ _ctx11047_)
        (gx#core-bind-syntax!__%
         _id11044_
         ((if _private?11045_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _id11044_))
         _private?11045_
         _phi11046_
         _ctx11047_)))
    (begin
      (define gx#core-bind-feature!__0
        (lambda (_id11052_)
          (let* ((_private?11054_ '#f)
                 (_phi11056_ (gx#current-expander-phi))
                 (_ctx11058_ (gx#current-expander-context)))
            (gx#core-bind-feature!__%
             _id11052_
             _private?11054_
             _phi11056_
             _ctx11058_))))
      (define gx#core-bind-feature!__1
        (lambda (_id11060_ _private?11061_)
          (let* ((_phi11063_ (gx#current-expander-phi))
                 (_ctx11065_ (gx#current-expander-context)))
            (gx#core-bind-feature!__%
             _id11060_
             _private?11061_
             _phi11063_
             _ctx11065_))))
      (define gx#core-bind-feature!__2
        (lambda (_id11067_ _private?11068_ _phi11069_)
          (let ((_ctx11071_ (gx#current-expander-context)))
            (gx#core-bind-feature!__%
             _id11067_
             _private?11068_
             _phi11069_
             _ctx11071_))))
      (define gx#core-bind-feature!
        (lambda _g14588_
          (let ((_g14587_ (length _g14588_)))
            (cond ((##fx= _g14587_ 1)
                   (apply gx#core-bind-feature!__0 _g14588_))
                  ((##fx= _g14587_ 2)
                   (apply gx#core-bind-feature!__1 _g14588_))
                  ((##fx= _g14587_ 3)
                   (apply gx#core-bind-feature!__2 _g14588_))
                  ((##fx= _g14587_ 4)
                   (apply gx#core-bind-feature!__% _g14588_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-feature!
                    _g14588_)))))))))
