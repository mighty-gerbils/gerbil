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
    (lambda _$args14608_
      (apply make-struct-instance gx#module-import::t _$args14608_)))
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
    (lambda _$args14605_
      (apply make-struct-instance gx#module-export::t _$args14605_)))
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
    (lambda _$args14602_
      (apply make-struct-instance gx#import-set::t _$args14602_)))
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
    (lambda _$args14599_
      (apply make-struct-instance gx#export-set::t _$args14599_)))
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
    (lambda _$args14596_
      (apply make-class-instance gx#import-expander::t _$args14596_)))
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
    (lambda _$args14593_
      (apply make-class-instance gx#export-expander::t _$args14593_)))
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
    (lambda _$args14590_
      (apply make-class-instance gx#import-export-expander::t _$args14590_)))
  (define gx#current-import-expander-phi (make-parameter '#f))
  (define gx#current-export-expander-phi (make-parameter '#f))
  (define gx#current-module-reader-path (make-parameter '#f))
  (define gx#current-module-reader-args (make-parameter '#f))
  (define gx#module-context:::init!
    (lambda (_self14584_ _id14585_ _super14586_ _ns14587_ _path14588_)
      (if (##fx< '11 (##vector-length _self14584_))
          (begin
            (##vector-set! _self14584_ '1 _id14585_)
            (##vector-set! _self14584_ '2 (make-hash-table-eq))
            (##vector-set! _self14584_ '3 _super14586_)
            (##vector-set! _self14584_ '4 '#f)
            (##vector-set! _self14584_ '5 '#f)
            (##vector-set! _self14584_ '6 _ns14587_)
            (##vector-set! _self14584_ '7 _path14588_)
            (##vector-set! _self14584_ '8 '())
            (##vector-set! _self14584_ '9 '())
            (##vector-set! _self14584_ '10 '#f)
            (##vector-set! _self14584_ '11 '#f))
          (error '"struct-instance-init!: too many arguments for struct"
                 _self14584_))))
  (bind-method! gx#module-context::t ':init! gx#module-context:::init! '#f)
  (begin
    (define gx#prelude-context:::init!__%
      (lambda (_self14428_ _ctx14429_ _root14430_)
        (let ((_super14438_
               (let ((_$e14432_ _root14430_))
                 (if _$e14432_
                     _$e14432_
                     (let ((_$e14435_ (gx#core-context-root__0)))
                       (if _$e14435_
                           _$e14435_
                           (make-struct-instance gx#root-context::t)))))))
          (if _ctx14429_
              (let ((_id14441_
                     (##structure-ref
                      _ctx14429_
                      '1
                      gx#expander-context::t
                      '#f))
                    (_path14442_
                     (##structure-ref _ctx14429_ '7 gx#module-context::t '#f))
                    (_in14443_
                     (map gx#core-module-export->import
                          (##structure-ref
                           _ctx14429_
                           '9
                           gx#module-context::t
                           '#f)))
                    (_e14444_
                     (##make-promise (lambda () (gx#eval-module _ctx14429_)))))
                (begin
                  (if (##fx< '8 (##vector-length _self14428_))
                      (begin
                        (##vector-set! _self14428_ '1 _id14441_)
                        (##vector-set! _self14428_ '2 (make-hash-table-eq))
                        (##vector-set! _self14428_ '3 _super14438_)
                        (##vector-set! _self14428_ '4 '#f)
                        (##vector-set! _self14428_ '5 '#f)
                        (##vector-set! _self14428_ '6 _path14442_)
                        (##vector-set! _self14428_ '7 _in14443_)
                        (##vector-set! _self14428_ '8 _e14444_))
                      (error '"struct-instance-init!: too many arguments for struct"
                             _self14428_))
                  (for-each
                   (lambda (_g1444514447_)
                     (gx#core-bind-weak-import!__% _g1444514447_ _self14428_))
                   _in14443_)))
              (if (##fx< '8 (##vector-length _self14428_))
                  (begin
                    (##vector-set! _self14428_ '1 '#f)
                    (##vector-set! _self14428_ '2 (make-hash-table-eq))
                    (##vector-set! _self14428_ '3 _super14438_)
                    (##vector-set! _self14428_ '4 '#f)
                    (##vector-set! _self14428_ '5 '#f)
                    (##vector-set! _self14428_ '6 '#f)
                    (##vector-set! _self14428_ '7 '())
                    (##vector-set! _self14428_ '8 '#f))
                  (error '"struct-instance-init!: too many arguments for struct"
                         _self14428_))))))
    (begin
      (define gx#prelude-context:::init!__0
        (lambda (_self14453_ _ctx14454_)
          (let ((_root14456_ '#f))
            (gx#prelude-context:::init!__%
             _self14453_
             _ctx14454_
             _root14456_))))
      (define gx#prelude-context:::init!
        (lambda _g14648_
          (let ((_g14647_ (length _g14648_)))
            (cond ((##fx= _g14647_ 2)
                   (apply gx#prelude-context:::init!__0 _g14648_))
                  ((##fx= _g14647_ 3)
                   (apply gx#prelude-context:::init!__% _g14648_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#prelude-context:::init!
                    _g14648_))))))))
  (bind-method! gx#prelude-context::t ':init! gx#prelude-context:::init! '#f)
  (define gx#import-export-expander-init!
    (lambda (_self14302_ _e14303_)
      (if (##fx< '3 (##vector-length _self14302_))
          (begin
            (##vector-set! _self14302_ '1 _e14303_)
            (##vector-set! _self14302_ '2 (gx#current-expander-context))
            (##vector-set! _self14302_ '3 (fx- (gx#current-expander-phi) '1)))
          (error '"struct-instance-init!: too many arguments for struct"
                 _self14302_))))
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
    (lambda (_g1392813931_ _g1392913933_)
      (gx#core-apply-user-expander__%
       _g1392813931_
       _g1392913933_
       'apply-import-expander)))
  (bind-method!
   gx#import-expander::t
   'apply-import-expander
   gx#import-expander::apply-import-expander
   '#f)
  (define gx#export-expander::apply-export-expander
    (lambda (_g1379913802_ _g1380013804_)
      (gx#core-apply-user-expander__%
       _g1379913802_
       _g1380013804_
       'apply-export-expander)))
  (bind-method!
   gx#export-expander::t
   'apply-export-expander
   gx#export-expander::apply-export-expander
   '#f)
  (define gx#module-source-path
    (lambda (_ctx13670_)
      (let* ((_path13672_
              (##structure-ref _ctx13670_ '7 gx#module-context::t '#f))
             (_path13674_
              (if (pair? _path13672_) (last _path13672_) _path13672_)))
        (if (string? _path13674_) _path13674_ '#f))))
  (begin
    (define gx#import-module__%
      (lambda (_path13646_ _reload?13647_ _eval?13648_)
        (let ((_ctx13650_
               ((gx#current-expander-module-import)
                _path13646_
                _reload?13647_)))
          (begin
            (if (if _ctx13650_ _eval?13648_ '#f)
                (gx#eval-module _ctx13650_)
                '#!void)
            _ctx13650_))))
    (begin
      (define gx#import-module__0
        (lambda (_path13655_)
          (let* ((_reload?13657_ '#f) (_eval?13659_ '#f))
            (gx#import-module__% _path13655_ _reload?13657_ _eval?13659_))))
      (define gx#import-module__1
        (lambda (_path13661_ _reload?13662_)
          (let ((_eval?13664_ '#f))
            (gx#import-module__% _path13661_ _reload?13662_ _eval?13664_))))
      (define gx#import-module
        (lambda _g14650_
          (let ((_g14649_ (length _g14650_)))
            (cond ((##fx= _g14649_ 1) (apply gx#import-module__0 _g14650_))
                  ((##fx= _g14649_ 2) (apply gx#import-module__1 _g14650_))
                  ((##fx= _g14649_ 3) (apply gx#import-module__% _g14650_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#import-module
                    _g14650_))))))))
  (define gx#eval-module
    (lambda (_mod13643_) ((gx#current-expander-module-eval) _mod13643_)))
  (define gx#core-eval-module
    (lambda (_obj13628_)
      (letrec ((_force-e13630_
                (lambda (_getf13639_ _e13640_)
                  (call-with-parameters
                   (lambda () (force (_getf13639_ _e13640_)))
                   gx#current-expander-context
                   _e13640_
                   gx#current-expander-phi
                   '0))))
        (let _recur13632_ ((_e13634_ _obj13628_))
          (if (##structure-instance-of? _e13634_ 'gx#module-context::t)
              (begin
                (let ((_$e13636_ (gx#core-context-prelude__% _e13634_)))
                  (if _$e13636_ (_recur13632_ _$e13636_) '#!void))
                (_force-e13630_ gx#module-context-e _e13634_))
              (if (##structure-instance-of? _e13634_ 'gx#prelude-context::t)
                  (_force-e13630_ gx#prelude-context-e _e13634_)
                  (if (gx#stx-string? _e13634_)
                      (_recur13632_
                       (gx#import-module__0
                        (gx#core-resolve-module-path__0 _e13634_)))
                      (if (gx#core-library-module-path? _e13634_)
                          (_recur13632_
                           (gx#import-module__0
                            (gx#core-resolve-library-module-path _e13634_)))
                          (error '"Cannot eval module" _obj13628_)))))))))
  (begin
    (define gx#core-context-prelude__%
      (lambda (_ctx13611_)
        (let _lp13613_ ((_e13615_ _ctx13611_))
          (if (let ((_$e13617_
                     (##structure-instance-of?
                      _e13615_
                      'gx#module-context::t)))
                (if _$e13617_
                    _$e13617_
                    (##structure-instance-of? _e13615_ 'gx#local-context::t)))
              (_lp13613_ (##structure-ref _e13615_ '3 gx#phi-context::t '#f))
              (if (##structure-instance-of? _e13615_ 'gx#prelude-context::t)
                  _e13615_
                  '#f)))))
    (begin
      (define gx#core-context-prelude__0
        (lambda ()
          (let ((_ctx13624_ (gx#current-expander-context)))
            (gx#core-context-prelude__% _ctx13624_))))
      (define gx#core-context-prelude
        (lambda _g14652_
          (let ((_g14651_ (length _g14652_)))
            (cond ((##fx= _g14651_ 0)
                   (apply gx#core-context-prelude__0 _g14652_))
                  ((##fx= _g14651_ 1)
                   (apply gx#core-context-prelude__% _g14652_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-context-prelude
                    _g14652_))))))))
  (define gx#core-module->prelude-context
    (lambda (_ctx13601_)
      (let* ((_ht13603_ (gx#current-expander-module-registry))
             (_$e13605_ (table-ref _ht13603_ _ctx13601_ '#f)))
        (if _$e13605_
            (values _$e13605_)
            (let ((_pre13608_
                   (let ((__obj14643 (make-object gx#prelude-context::t '8)))
                     (begin
                       (gx#prelude-context:::init!__0 __obj14643 _ctx13601_)
                       __obj14643))))
              (begin
                (table-set! _ht13603_ _ctx13601_ _pre13608_)
                _pre13608_))))))
  (begin
    (define gx#core-import-module__%
      (lambda (_rpath13482_ _reload?13483_)
        (letrec ((_import-source13485_
                  (lambda (_path13570_)
                    (begin
                      (if (member _path13570_ (gx#current-expander-path))
                          (error '"Cyclic expansion" _path13570_)
                          '#!void)
                      (call-with-parameters
                       (lambda ()
                         (let ((_g14653_ (gx#core-read-module _path13570_)))
                           (begin
                             (let ((_g14654_
                                    (if (##values? _g14653_)
                                        (##vector-length _g14653_)
                                        1)))
                               (if (not (##fx= _g14654_ 4))
                                   (error "Context expects 4 values"
                                          _g14654_)))
                             (let ((_pre13573_ (##vector-ref _g14653_ 0))
                                   (_id13574_ (##vector-ref _g14653_ 1))
                                   (_ns13575_ (##vector-ref _g14653_ 2))
                                   (_body13576_ (##vector-ref _g14653_ 3)))
                               (let* ((_prelude13581_
                                       (if (##structure-instance-of?
                                            _pre13573_
                                            'gx#prelude-context::t)
                                           _pre13573_
                                           (if (##structure-instance-of?
                                                _pre13573_
                                                'gx#module-context::t)
                                               (gx#core-module->prelude-context
                                                _pre13573_)
                                               (if (string? _pre13573_)
                                                   (gx#core-module->prelude-context
                                                    (gx#core-import-module__0
                                                     _pre13573_))
                                                   (if (not _pre13573_)
                                                       (let ((_$e13578_
                                                              (gx#current-expander-module-prelude)))
                                                         (if _$e13578_
                                                             _$e13578_
                                                             (let ((__obj14644
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (make-object gx#prelude-context::t '8)))
                       (begin
                         (gx#prelude-context:::init!__0 __obj14644 '#f)
                         __obj14644))))
               (error '"Cannot import module; unknown prelude"
                      _rpath13482_
                      _pre13573_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_ctx13583_
                                       (let ((__obj14645
                                              (make-object
                                               gx#module-context::t
                                               '11)))
                                         (begin
                                           (gx#module-context:::init!
                                            __obj14645
                                            _id13574_
                                            _prelude13581_
                                            _ns13575_
                                            _path13570_)
                                           __obj14645)))
                                      (_body13585_
                                       (gx#core-expand-module-begin
                                        _body13576_
                                        _ctx13583_))
                                      (_body13587_
                                       (gx#core-quote-syntax__%
                                        (gx#core-cons '%#begin _body13585_)
                                        _path13570_
                                        _ctx13583_
                                        '())))
                                 (begin
                                   (##structure-set!
                                    _ctx13583_
                                    (##make-promise
                                     (lambda () (gx#eval-syntax* _body13587_)))
                                    '10
                                    gx#module-context::t
                                    '#f)
                                   (##structure-set!
                                    _ctx13583_
                                    _body13587_
                                    '11
                                    gx#module-context::t
                                    '#f)
                                   (table-set!
                                    (gx#current-expander-module-registry)
                                    _path13570_
                                    _ctx13583_)
                                   (table-set!
                                    (gx#current-expander-module-registry)
                                    _id13574_
                                    _ctx13583_)
                                   _ctx13583_))))))
                       gx#current-expander-context
                       (gx#core-context-root__0)
                       gx#current-expander-marks
                       '()
                       gx#current-expander-phi
                       '0
                       gx#current-expander-path
                       (cons _path13570_ (gx#current-expander-path))
                       gx#current-import-expander-phi
                       '#f
                       gx#current-export-expander-phi
                       '#f))))
                 (_import-submodule13486_
                  (lambda (_rpath13498_)
                    (let* ((_rpath1349913506_ _rpath13498_)
                           (_E1350113510_
                            (lambda ()
                              (error '"No clause matching" _rpath1349913506_)))
                           (_K1350213558_
                            (lambda (_refs13513_ _origin13514_)
                              (let ((_ctx13516_
                                     (if _origin13514_
                                         (gx#core-import-module__%
                                          _origin13514_
                                          _reload?13483_)
                                         (gx#current-expander-context))))
                                (let _lp13518_ ((_rest13520_ _refs13513_)
                                                (_ctx13521_ _ctx13516_))
                                  (let* ((_rest1352213530_ _rest13520_)
                                         (_else1352413538_
                                          (lambda () _ctx13521_))
                                         (_K1352613546_
                                          (lambda (_rest13541_ _id13542_)
                                            (let ((_bind13544_
                                                   (gx#resolve-identifier__%
                                                    _id13542_
                                                    '0
                                                    _ctx13521_)))
                                              (if (if (##structure-direct-instance-of?
                                                       _bind13544_
                                                       'gx#syntax-binding::t)
                                                      (##structure-instance-of?
                                                       (##direct-structure-ref
                                                        _bind13544_
                                                        '4
                                                        gx#syntax-binding::t
                                                        '#f)
                                                       'gx#module-context::t)
                                                      '#f)
                                                  (_lp13518_
                                                   _rest13541_
                                                   (##direct-structure-ref
                                                    _bind13544_
                                                    '4
                                                    gx#syntax-binding::t
                                                    '#f))
                                                  (error '"Cannot import submodule; not bound as a module"
                                                         _rpath13498_
                                                         _id13542_
                                                         _bind13544_))))))
                                    (if (##pair? _rest1352213530_)
                                        (let ((_hd1352713549_
                                               (##car _rest1352213530_))
                                              (_tl1352813551_
                                               (##cdr _rest1352213530_)))
                                          (let* ((_id13554_ _hd1352713549_)
                                                 (_rest13556_ _tl1352813551_))
                                            (_K1352613546_
                                             _rest13556_
                                             _id13554_)))
                                        (_else1352413538_))))))))
                      (if (##pair? _rpath1349913506_)
                          (let ((_hd1350313561_ (##car _rpath1349913506_))
                                (_tl1350413563_ (##cdr _rpath1349913506_)))
                            (let* ((_origin13566_ _hd1350313561_)
                                   (_refs13568_ _tl1350413563_))
                              (_K1350213558_ _refs13568_ _origin13566_)))
                          (_E1350113510_))))))
          (let ((_$e13488_
                 (if (not _reload?13483_)
                     (table-ref
                      (gx#current-expander-module-registry)
                      _rpath13482_
                      '#f)
                     '#f)))
            (if _$e13488_
                (values _$e13488_)
                (if (list? _rpath13482_)
                    (_import-submodule13486_ _rpath13482_)
                    (if (gx#core-library-module-path? _rpath13482_)
                        (let ((_ctx13491_
                               (gx#core-import-module__%
                                (gx#core-resolve-library-module-path
                                 _rpath13482_)
                                _reload?13483_)))
                          (begin
                            (table-set!
                             (gx#current-expander-module-registry)
                             _rpath13482_
                             _ctx13491_)
                            _ctx13491_))
                        (let* ((_npath13493_ (path-normalize _rpath13482_))
                               (_$e13495_
                                (if (not _reload?13483_)
                                    (table-ref
                                     (gx#current-expander-module-registry)
                                     _npath13493_
                                     '#f)
                                    '#f)))
                          (if _$e13495_
                              (values _$e13495_)
                              (_import-source13485_ _npath13493_))))))))))
    (begin
      (define gx#core-import-module__0
        (lambda (_rpath13594_)
          (let ((_reload?13596_ '#f))
            (gx#core-import-module__% _rpath13594_ _reload?13596_))))
      (define gx#core-import-module
        (lambda _g14656_
          (let ((_g14655_ (length _g14656_)))
            (cond ((##fx= _g14655_ 1)
                   (apply gx#core-import-module__0 _g14656_))
                  ((##fx= _g14655_ 2)
                   (apply gx#core-import-module__% _g14656_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-import-module
                    _g14656_))))))))
  (define gx#core-read-module
    (lambda (_path13476_)
      (with-exception-catcher
       (lambda (_exn13478_)
         (if (if (datum-parsing-exception? _exn13478_)
                 (eq? (datum-parsing-exception-filepos _exn13478_) '0)
                 '#f)
             (gx#core-read-module/lang _path13476_)
             (raise _exn13478_)))
       (lambda () (gx#core-read-module/sexp _path13476_)))))
  (define gx#core-read-module/sexp
    (lambda (_path13336_)
      (let _lp13338_ ((_body13340_ (read-syntax-from-file _path13336_))
                      (_pre13341_ '#f)
                      (_ns13342_ '#f)
                      (_pkg13343_ '#f))
        (let* ((_e1334413368_ _body13340_)
               (_E1336013390_
                (lambda ()
                  (let ((_g14657_
                         (if _pkg13343_
                             (values _pre13341_ _ns13342_ _pkg13343_)
                             (gx#core-read-module-package
                              _path13336_
                              _pre13341_
                              _ns13342_))))
                    (begin
                      (let ((_g14658_
                             (if (##values? _g14657_)
                                 (##vector-length _g14657_)
                                 1)))
                        (if (not (##fx= _g14658_ 3))
                            (error "Context expects 3 values" _g14658_)))
                      (let ((_pre13372_ (##vector-ref _g14657_ 0))
                            (_ns13373_ (##vector-ref _g14657_ 1))
                            (_pkg13374_ (##vector-ref _g14657_ 2)))
                        (let* ((_prelude13376_
                                (if (gx#core-bound-module-prelude? _pre13372_)
                                    (gx#syntax-local-e__0 _pre13372_)
                                    (if (gx#core-library-module-path?
                                         _pre13372_)
                                        (gx#core-resolve-library-module-path
                                         _pre13372_)
                                        (if (gx#stx-string? _pre13372_)
                                            (gx#core-resolve-module-path__%
                                             _pre13372_
                                             _path13336_)
                                            (gx#stx-e _pre13372_)))))
                               (_path-id13378_
                                (gx#core-module-path->namespace _path13336_))
                               (_pkg-id13380_
                                (if _pkg13374_
                                    (string-append
                                     _pkg13374_
                                     '"/"
                                     _path-id13378_)
                                    _path-id13378_))
                               (_module-id13382_
                                (string->symbol _pkg-id13380_))
                               (_module-ns13387_
                                (let ((_$e13384_ _ns13373_))
                                  (if _$e13384_ _$e13384_ _pkg-id13380_))))
                          (values _prelude13376_
                                  _module-id13382_
                                  _module-ns13387_
                                  _body13340_)))))))
               (_E1335313419_
                (lambda ()
                  (if (gx#stx-pair? _e1334413368_)
                      (let ((_e1336113394_ (gx#syntax-e _e1334413368_)))
                        (let ((_hd1336213397_ (##car _e1336113394_))
                              (_tl1336313399_ (##cdr _e1336113394_)))
                          (if (eq? (gx#stx-e _hd1336213397_) 'package:)
                              (if (gx#stx-pair? _tl1336313399_)
                                  (let ((_e1336413402_
                                         (gx#syntax-e _tl1336313399_)))
                                    (let ((_hd1336513405_
                                           (##car _e1336413402_))
                                          (_tl1336613407_
                                           (##cdr _e1336413402_)))
                                      (let* ((_pkg13410_ _hd1336513405_)
                                             (_rest13412_ _tl1336613407_))
                                        (if '#t
                                            (let ((_pkg13417_
                                                   (if (gx#identifier?
                                                        _pkg13410_)
                                                       (symbol->string
                                                        (gx#stx-e _pkg13410_))
                                                       (if (let ((_$e13414_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-string? _pkg13410_)))
                     (if _$e13414_ _$e13414_ (gx#stx-false? _pkg13410_)))
                   (gx#stx-e _pkg13410_)
                   (gx#raise-syntax-error
                    'import
                    '"Bad syntax; Illegal package name"
                    _pkg13410_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_lp13338_
                                               _rest13412_
                                               _pre13341_
                                               _ns13342_
                                               _pkg13417_))
                                            (_E1336013390_)))))
                                  (_E1336013390_))
                              (_E1336013390_))))
                      (_E1336013390_))))
               (_E1334613448_
                (lambda ()
                  (if (gx#stx-pair? _e1334413368_)
                      (let ((_e1335413423_ (gx#syntax-e _e1334413368_)))
                        (let ((_hd1335513426_ (##car _e1335413423_))
                              (_tl1335613428_ (##cdr _e1335413423_)))
                          (if (eq? (gx#stx-e _hd1335513426_) 'namespace:)
                              (if (gx#stx-pair? _tl1335613428_)
                                  (let ((_e1335713431_
                                         (gx#syntax-e _tl1335613428_)))
                                    (let ((_hd1335813434_
                                           (##car _e1335713431_))
                                          (_tl1335913436_
                                           (##cdr _e1335713431_)))
                                      (let* ((_ns13439_ _hd1335813434_)
                                             (_rest13441_ _tl1335913436_))
                                        (if '#t
                                            (let ((_ns13446_
                                                   (if (gx#identifier?
                                                        _ns13439_)
                                                       (symbol->string
                                                        (gx#stx-e _ns13439_))
                                                       (if (let ((_$e13443_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-string? _ns13439_)))
                     (if _$e13443_ _$e13443_ (gx#stx-false? _ns13439_)))
                   (gx#stx-e _ns13439_)
                   (gx#raise-syntax-error
                    'import
                    '"Bad syntax; illegal namespace"
                    _ns13439_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_lp13338_
                                               _rest13441_
                                               _pre13341_
                                               _ns13446_
                                               _pkg13343_))
                                            (_E1335313419_)))))
                                  (_E1335313419_))
                              (_E1335313419_))))
                      (_E1335313419_))))
               (_E1334513472_
                (lambda ()
                  (if (gx#stx-pair? _e1334413368_)
                      (let ((_e1334713452_ (gx#syntax-e _e1334413368_)))
                        (let ((_hd1334813455_ (##car _e1334713452_))
                              (_tl1334913457_ (##cdr _e1334713452_)))
                          (if (eq? (gx#stx-e _hd1334813455_) 'prelude:)
                              (if (gx#stx-pair? _tl1334913457_)
                                  (let ((_e1335013460_
                                         (gx#syntax-e _tl1334913457_)))
                                    (let ((_hd1335113463_
                                           (##car _e1335013460_))
                                          (_tl1335213465_
                                           (##cdr _e1335013460_)))
                                      (let* ((_prelude13468_ _hd1335113463_)
                                             (_rest13470_ _tl1335213465_))
                                        (if '#t
                                            (_lp13338_
                                             _rest13470_
                                             _prelude13468_
                                             _ns13342_
                                             _pkg13343_)
                                            (_E1334613448_)))))
                                  (_E1334613448_))
                              (_E1334613448_))))
                      (_E1334613448_)))))
          (_E1334513472_)))))
  (define gx#core-read-module/lang
    (lambda (_path13163_)
      (letrec ((_default-read-module-body13165_
                (lambda (_inp13328_)
                  (let _lp13330_ ((_body13332_ '()))
                    (let ((_next13334_ (read-syntax _inp13328_)))
                      (if (eof-object? _next13334_)
                          (reverse _body13332_)
                          (_lp13330_ (cons _next13334_ _body13332_)))))))
               (_read-body13166_
                (lambda (_inp13247_
                         _pre13248_
                         _ns13249_
                         _pkg13250_
                         _args13251_)
                  (let ((_g14659_
                         (if _pkg13250_
                             (values _pre13248_ _ns13249_ _pkg13250_)
                             (gx#core-read-module-package
                              _path13163_
                              _pre13248_
                              _ns13249_))))
                    (begin
                      (let ((_g14660_
                             (if (##values? _g14659_)
                                 (##vector-length _g14659_)
                                 1)))
                        (if (not (##fx= _g14660_ 3))
                            (error "Context expects 3 values" _g14660_)))
                      (let ((_pre13253_ (##vector-ref _g14659_ 0))
                            (_ns13254_ (##vector-ref _g14659_ 1))
                            (_pkg13255_ (##vector-ref _g14659_ 2)))
                        (let* ((_prelude13257_
                                (gx#import-module__0 _pre13253_))
                               (_read-module-body13311_
                                (let ((_$e13303_
                                       (find (lambda (_e1325813260_)
                                               (let* ((_g1326213272_
                                                       _e1325813260_)
                                                      (_else1326413280_
                                                       (lambda () '#f))
                                                      (_K1326613284_
                                                       (lambda () '#t)))
                                                 (if (##structure-direct-instance-of?
                                                      _g1326213272_
                                                      'gx#module-export::t)
                                                     (let* ((_e1326713287_
                                                             (##vector-ref
                                                              _g1326213272_
                                                              '1))
                                                            (_e1326813290_
                                                             (##vector-ref
                                                              _g1326213272_
                                                              '2))
                                                            (_e1326913293_
                                                             (##vector-ref
                                                              _g1326213272_
                                                              '3)))
                                                       (if (##eq? _e1326913293_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '1)
                   (let ((_e1327013296_ (##vector-ref _g1326213272_ '4)))
                     (if ((lambda (_g1329813300_)
                            (eq? _g1329813300_ 'read-module-body))
                          _e1327013296_)
                         (_K1326613284_)
                         (_else1326413280_)))
                   (_else1326413280_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_else1326413280_))))
                                             (##structure-ref
                                              _prelude13257_
                                              '9
                                              gx#module-context::t
                                              '#f))))
                                  (if _$e13303_
                                      ((lambda (_xport13306_)
                                         (let ((_proc13309_
                                                (with-exception-catcher
                                                 void
                                                 (lambda ()
                                                   (gx#eval-syntax__0
                                                    (##structure-ref
                                                     (gx#core-resolve-module-export
                                                      _xport13306_)
                                                     '1
                                                     gx#binding::t
                                                     '#f))))))
                                           (if (procedure? _proc13309_)
                                               _proc13309_
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Illegal #lang prelude; read-module-body is not a procedure"
                                                _path13163_
                                                _pre13253_
                                                _proc13309_))))
                                       _$e13303_)
                                      _default-read-module-body13165_)))
                               (_path-id13313_
                                (gx#core-module-path->namespace _path13163_))
                               (_pkg-id13315_
                                (if _pkg13255_
                                    (string-append
                                     _pkg13255_
                                     '"/"
                                     _path-id13313_)
                                    _path-id13313_))
                               (_module-id13317_
                                (string->symbol _pkg-id13315_))
                               (_module-ns13322_
                                (let ((_$e13319_ _ns13254_))
                                  (if _$e13319_ _$e13319_ _pkg-id13315_)))
                               (_body13325_
                                (call-with-parameters
                                 (lambda ()
                                   (_read-module-body13311_ _inp13247_))
                                 gx#current-module-reader-path
                                 _path13163_
                                 gx#current-module-reader-args
                                 _args13251_)))
                          (values _prelude13257_
                                  _module-id13317_
                                  _module-ns13322_
                                  _body13325_)))))))
               (_string-e13167_
                (lambda (_obj13244_ _what13245_)
                  (if (string? _obj13244_)
                      _obj13244_
                      (if (symbol? _obj13244_)
                          (symbol->string _obj13244_)
                          (gx#raise-syntax-error
                           '#f
                           (string-append '"Illegal module " _what13245_)
                           _path13163_
                           _obj13244_)))))
               (_read-lang-args13168_
                (lambda (_inp13199_ _args13200_)
                  (let* ((_args1320113209_ _args13200_)
                         (_else1320313217_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Illegal #lang arguments; missing prelude"
                             _path13163_)))
                         (_K1320513232_
                          (lambda (_args13220_ _prelude13221_)
                            (let* ((_pkg13223_ (pgetq 'package: _args13220_))
                                   (_pkg13225_
                                    (if _pkg13223_
                                        (_string-e13167_ _pkg13223_ '"package")
                                        '#f))
                                   (_ns13227_ (pgetq 'namespace: _args13220_))
                                   (_ns13229_
                                    (if _ns13227_
                                        (_string-e13167_
                                         _ns13227_
                                         '"namespace")
                                        '#f)))
                              (_read-body13166_
                               _inp13199_
                               _prelude13221_
                               _ns13229_
                               _pkg13225_
                               _args13220_)))))
                    (if (##pair? _args1320113209_)
                        (let ((_hd1320613235_ (##car _args1320113209_))
                              (_tl1320713237_ (##cdr _args1320113209_)))
                          (let* ((_prelude13240_ _hd1320613235_)
                                 (_args13242_ _tl1320713237_))
                            (_K1320513232_ _args13242_ _prelude13240_)))
                        (_else1320313217_)))))
               (_read-lang13169_
                (lambda (_inp13174_)
                  (let* ((_head13176_ (read-line _inp13174_))
                         (_$e13178_ (string-index _head13176_ '#\space)))
                    (if _$e13178_
                        ((lambda (_ix13181_)
                           (let ((_lang13183_
                                  (substring _head13176_ '0 _ix13181_)))
                             (if (equal? _lang13183_ '"#lang")
                                 (let* ((_rest13185_
                                         (substring
                                          _head13176_
                                          (fx+ _ix13181_ '1)
                                          (string-length _head13176_)))
                                        (_args13196_
                                         (with-exception-catcher
                                          (lambda (_g1318613188_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Illegal #lang arguments"
                                             _path13163_
                                             _g1318613188_))
                                          (lambda ()
                                            (call-with-input-string
                                             _rest13185_
                                             (lambda (_g1319113193_)
                                               (read-all
                                                _g1319113193_
                                                read)))))))
                                   (_read-lang-args13168_
                                    _inp13174_
                                    _args13196_))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Illegal module syntax"
                                  _path13163_))))
                         _$e13178_)
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module syntax"
                         _path13163_)))))
               (_read-e13170_
                (lambda (_inp13172_)
                  (if (eq? (peek-char _inp13172_) '#\#)
                      (_read-lang13169_ _inp13172_)
                      (gx#raise-syntax-error
                       '#f
                       '"Illegal module syntax"
                       _path13163_)))))
        (call-with-input-file _path13163_ _read-e13170_))))
  (define gx#core-read-module-package
    (lambda (_path13117_ _pre13118_ _ns13119_)
      (letrec ((_string-e13121_
                (lambda (_e13161_)
                  (if (symbol? _e13161_)
                      (symbol->string _e13161_)
                      (if (string? _e13161_)
                          _e13161_
                          (gx#raise-syntax-error
                           '#f
                           '"Malformed package info; unexpected datum"
                           _e13161_))))))
        (let _lp13123_ ((_dir13125_ (path-directory _path13117_))
                        (_pkg-path13126_ '()))
          (let ((_gerbil.pkg13128_ (path-expand '"gerbil.pkg" _dir13125_)))
            (if (file-exists? _gerbil.pkg13128_)
                (let ((_plist13130_
                       (gx#core-library-package-plist__% _dir13125_ '#t)))
                  (if (null? _plist13130_)
                      (let ((_pkg13132_
                             (if (not (null? _pkg-path13126_))
                                 (string-join _pkg-path13126_ '"/")
                                 '#f)))
                        (values _pre13118_ _ns13119_ _pkg13132_))
                      (if (list? _plist13130_)
                          (let* ((_root13134_ (pgetq 'package: _plist13130_))
                                 (_pkg13138_
                                  (let ((_pkg-path13136_
                                         (if _root13134_
                                             (cons (_string-e13121_
                                                    _root13134_)
                                                   _pkg-path13126_)
                                             _pkg-path13126_)))
                                    (if (not (null? _pkg-path13136_))
                                        (string-join _pkg-path13136_ '"/")
                                        '#f)))
                                 (_ns13145_
                                  (let ((_ns13143_
                                         (let ((_$e13140_ _ns13119_))
                                           (if _$e13140_
                                               _$e13140_
                                               (pgetq 'namespace:
                                                      _plist13130_)))))
                                    (if _ns13143_
                                        (_string-e13121_ _ns13143_)
                                        '#f)))
                                 (_pre13150_
                                  (let ((_$e13147_ _pre13118_))
                                    (if _$e13147_
                                        _$e13147_
                                        (pgetq 'prelude: _plist13130_)))))
                            (values _pre13150_ _ns13145_ _pkg13138_))
                          (gx#raise-syntax-error
                           '#f
                           '"Malformed package info; unexpected datum"
                           _plist13130_))))
                (let ((_dir*13153_
                       (path-strip-trailing-directory-separator _dir13125_)))
                  (if (let ((_$e13155_ (string-empty? _dir*13153_)))
                        (if _$e13155_
                            _$e13155_
                            (equal? _dir13125_ _dir*13153_)))
                      (values _pre13118_ _ns13119_ '#f)
                      (let ((_xpath13158_ (path-strip-directory _dir*13153_))
                            (_xdir13159_ (path-directory _dir*13153_)))
                        (_lp13123_
                         _xdir13159_
                         (cons _xpath13158_ _pkg-path13126_)))))))))))
  (define gx#core-module-path->namespace
    (lambda (_path13115_)
      (path-strip-extension (path-strip-directory _path13115_))))
  (define gx#core-module-path->id
    (lambda (_path13113_)
      (string->symbol (gx#core-module-path->namespace _path13113_))))
  (begin
    (define gx#core-resolve-module-path__%
      (lambda (_stx-path13092_ _rel13093_)
        (let* ((_path13095_ (gx#stx-e _stx-path13092_))
               (_path13097_
                (if (string-empty? (path-extension _path13095_))
                    (string-append _path13095_ '".ss")
                    _path13095_)))
          (gx#core-resolve-path__%
           _path13097_
           (let ((_$e13100_ (gx#stx-source _stx-path13092_)))
             (if _$e13100_ _$e13100_ _rel13093_))))))
    (begin
      (define gx#core-resolve-module-path__0
        (lambda (_stx-path13106_)
          (let ((_rel13108_ '#f))
            (gx#core-resolve-module-path__% _stx-path13106_ _rel13108_))))
      (define gx#core-resolve-module-path
        (lambda _g14662_
          (let ((_g14661_ (length _g14662_)))
            (cond ((##fx= _g14661_ 1)
                   (apply gx#core-resolve-module-path__0 _g14662_))
                  ((##fx= _g14661_ 2)
                   (apply gx#core-resolve-module-path__% _g14662_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-resolve-module-path
                    _g14662_))))))))
  (define gx#core-resolve-library-module-path
    (lambda (_libpath13019_)
      (let* ((_spath13021_ (symbol->string (gx#stx-e _libpath13019_)))
             (_spath13023_
              (substring _spath13021_ '1 (string-length _spath13021_)))
             (_ext13025_ (path-extension _spath13023_))
             (_ssi13027_
              (if (string-empty? _ext13025_)
                  (string-append _spath13023_ '".ssi")
                  (string-append (path-strip-extension _spath13023_) '".ssi")))
             (_src13029_
              (if (string-empty? _ext13025_)
                  (string-append _spath13023_ '".ss")
                  _spath13023_)))
        (let _lp13032_ ((_rest13034_
                         (gx#current-expander-module-library-path)))
          (let* ((_rest1303513044_ _rest13034_)
                 (_E1303813048_
                  (lambda () (error '"No clause matching" _rest1303513044_))))
            (let ((_K1304013079_
                   (lambda (_rest13059_ _dir13060_)
                     (letrec ((_resolve13062_
                               (lambda (_ssi13072_ _src13073_)
                                 (let ((_compiled-path13075_
                                        (path-expand _ssi13072_ _dir13060_)))
                                   (if (file-exists? _compiled-path13075_)
                                       (path-normalize _compiled-path13075_)
                                       (let ((_src-path13077_
                                              (path-expand
                                               _src13073_
                                               _dir13060_)))
                                         (if (file-exists? _src-path13077_)
                                             (path-normalize _src-path13077_)
                                             (_lp13032_ _rest13059_))))))))
                       (let ((_$e13064_
                              (gx#core-library-package-path-prefix
                               _dir13060_)))
                         (if _$e13064_
                             ((lambda (_prefix13067_)
                                (if (string-prefix? _spath13023_ _prefix13067_)
                                    (let ((_ssi13069_
                                           (substring
                                            _ssi13027_
                                            (string-length _prefix13067_)
                                            (string-length _ssi13027_)))
                                          (_src13070_
                                           (substring
                                            _src13029_
                                            (string-length _prefix13067_)
                                            (string-length _src13029_))))
                                      (_resolve13062_ _ssi13069_ _src13070_))
                                    (_lp13032_ _rest13059_)))
                              _$e13064_)
                             (_resolve13062_ _ssi13027_ _src13029_))))))
                  (_K1303913053_
                   (lambda ()
                     (gx#raise-syntax-error
                      '#f
                      '"Cannot find library module"
                      _libpath13019_))))
              (let ((_try-match1303713056_
                     (lambda ()
                       (if (##null? _rest1303513044_)
                           (_K1303913053_)
                           (_E1303813048_)))))
                (if (##pair? _rest1303513044_)
                    (let ((_tl1304213084_ (##cdr _rest1303513044_))
                          (_hd1304113082_ (##car _rest1303513044_)))
                      (let ((_dir13087_ _hd1304113082_)
                            (_rest13089_ _tl1304213084_))
                        (_K1304013079_ _rest13089_ _dir13087_)))
                    (_try-match1303713056_)))))))))
  (define gx#core-library-package-path-prefix
    (lambda (_dir13012_)
      (let ((_$e13014_
             (pgetq 'package: (gx#core-library-package-plist__0 _dir13012_))))
        (if _$e13014_
            ((lambda (_pkg13017_)
               (string-append (symbol->string _pkg13017_) '"/"))
             _$e13014_)
            '#f))))
  (begin
    (define gx#core-library-package-plist__%
      (lambda (_dir12984_ _exists?12985_)
        (let* ((_cache12987_ (gx#core-library-package-cache))
               (_$e12989_ (table-ref _cache12987_ _dir12984_ '#f)))
          (if _$e12989_
              (values _$e12989_)
              (let* ((_gerbil.pkg12992_ (path-expand '"gerbil.pkg" _dir12984_))
                     (_plist12999_
                      (if (let ((_$e12994_ _exists?12985_))
                            (if _$e12994_
                                _$e12994_
                                (file-exists? _gerbil.pkg12992_)))
                          (let ((_e12997_
                                 (call-with-input-file
                                  _gerbil.pkg12992_
                                  read)))
                            (if (eof-object? _e12997_)
                                '()
                                (if (list? _e12997_)
                                    _e12997_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Malformed package info; unexpected datum"
                                     _gerbil.pkg12992_
                                     _e12997_))))
                          '())))
                (begin
                  (table-set! _cache12987_ _dir12984_ _plist12999_)
                  _plist12999_))))))
    (begin
      (define gx#core-library-package-plist__0
        (lambda (_dir13005_)
          (let ((_exists?13007_ '#f))
            (gx#core-library-package-plist__% _dir13005_ _exists?13007_))))
      (define gx#core-library-package-plist
        (lambda _g14664_
          (let ((_g14663_ (length _g14664_)))
            (cond ((##fx= _g14663_ 1)
                   (apply gx#core-library-package-plist__0 _g14664_))
                  ((##fx= _g14663_ 2)
                   (apply gx#core-library-package-plist__% _g14664_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-library-package-plist
                    _g14664_))))))))
  (define gx#core-library-package-cache
    (lambda ()
      (let ((_$e12978_ (gx#current-expander-module-library-package-cache)))
        (if _$e12978_
            (values _$e12978_)
            (let ((_cache12981_ (make-table)))
              (begin
                (gx#current-expander-module-library-package-cache _cache12981_)
                _cache12981_))))))
  (define gx#core-library-module-path?
    (lambda (_stx12975_) (gx#core-special-module-path? _stx12975_ '#\:)))
  (define gx#core-special-module-path?
    (lambda (_stx12970_ _char12971_)
      (if (gx#identifier? _stx12970_)
          (if (interned-symbol? (gx#stx-e _stx12970_))
              (let ((_str12973_ (symbol->string (gx#stx-e _stx12970_))))
                (if (fx> (string-length _str12973_) '1)
                    (eq? (string-ref _str12973_ '0) _char12971_)
                    '#f))
              '#f)
          '#f)))
  (define gx#core-bound-prelude?
    (lambda (_stx12964_)
      (gx#core-bound-identifier?__%
       _stx12964_
       (lambda (_g1296512967_)
         (gx#expander-binding?__% _g1296512967_ gx#prelude-context?)))))
  (define gx#core-bound-module?
    (lambda (_stx12958_)
      (gx#core-bound-identifier?__%
       _stx12958_
       (lambda (_g1295912961_)
         (gx#expander-binding?__% _g1295912961_ gx#module-context?)))))
  (define gx#core-bound-module-prelude?
    (lambda (_stx12945_)
      (letrec ((_module-prelude?12947_
                (lambda (_e12953_)
                  (let ((_$e12955_
                         (##structure-instance-of?
                          _e12953_
                          'gx#module-context::t)))
                    (if _$e12955_
                        _$e12955_
                        (##structure-instance-of?
                         _e12953_
                         'gx#prelude-context::t))))))
        (gx#core-bound-identifier?__%
         _stx12945_
         (lambda (_g1294812950_)
           (gx#expander-binding?__% _g1294812950_ _module-prelude?12947_))))))
  (begin
    (define gx#core-bind-import!__%
      (lambda (_in12875_ _ctx12876_ _force-weak?12877_)
        (let* ((_in1287812887_ _in12875_)
               (_E1288012891_
                (lambda () (error '"No clause matching" _in1287812887_)))
               (_K1288112904_
                (lambda (_weak?12894_ _phi12895_ _key12896_ _source12897_)
                  (gx#core-bind!__%
                   _key12896_
                   (let ((_e12899_
                          (gx#core-resolve-module-export _source12897_)))
                     (##structure
                      gx#import-binding::t
                      (##structure-ref _e12899_ '1 gx#binding::t '#f)
                      _key12896_
                      _phi12895_
                      _e12899_
                      (##direct-structure-ref
                       _source12897_
                       '1
                       gx#module-export::t
                       '#f)
                      (let ((_$e12901_ _force-weak?12877_))
                        (if _$e12901_ _$e12901_ _weak?12894_))))
                   gx#core-context-rebind?
                   _phi12895_
                   _ctx12876_))))
          (if (##structure-direct-instance-of?
               _in1287812887_
               'gx#module-import::t)
              (let* ((_e1288212907_ (##vector-ref _in1287812887_ '1))
                     (_source12910_ _e1288212907_)
                     (_e1288312912_ (##vector-ref _in1287812887_ '2))
                     (_key12915_ _e1288312912_)
                     (_e1288412917_ (##vector-ref _in1287812887_ '3))
                     (_phi12920_ _e1288412917_)
                     (_e1288512922_ (##vector-ref _in1287812887_ '4))
                     (_weak?12925_ _e1288512922_))
                (_K1288112904_
                 _weak?12925_
                 _phi12920_
                 _key12915_
                 _source12910_))
              (_E1288012891_)))))
    (begin
      (define gx#core-bind-import!__0
        (lambda (_in12930_)
          (let* ((_ctx12932_ (gx#current-expander-context))
                 (_force-weak?12934_ '#f))
            (gx#core-bind-import!__%
             _in12930_
             _ctx12932_
             _force-weak?12934_))))
      (define gx#core-bind-import!__1
        (lambda (_in12936_ _ctx12937_)
          (let ((_force-weak?12939_ '#f))
            (gx#core-bind-import!__%
             _in12936_
             _ctx12937_
             _force-weak?12939_))))
      (define gx#core-bind-import!
        (lambda _g14666_
          (let ((_g14665_ (length _g14666_)))
            (cond ((##fx= _g14665_ 1) (apply gx#core-bind-import!__0 _g14666_))
                  ((##fx= _g14665_ 2) (apply gx#core-bind-import!__1 _g14666_))
                  ((##fx= _g14665_ 3) (apply gx#core-bind-import!__% _g14666_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-import!
                    _g14666_))))))))
  (begin
    (define gx#core-bind-weak-import!__%
      (lambda (_in12861_ _ctx12862_)
        (gx#core-bind-import!__% _in12861_ _ctx12862_ '#t)))
    (begin
      (define gx#core-bind-weak-import!__0
        (lambda (_in12867_)
          (let ((_ctx12869_ (gx#current-expander-context)))
            (gx#core-bind-weak-import!__% _in12867_ _ctx12869_))))
      (define gx#core-bind-weak-import!
        (lambda _g14668_
          (let ((_g14667_ (length _g14668_)))
            (cond ((##fx= _g14667_ 1)
                   (apply gx#core-bind-weak-import!__0 _g14668_))
                  ((##fx= _g14667_ 2)
                   (apply gx#core-bind-weak-import!__% _g14668_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-weak-import!
                    _g14668_))))))))
  (define gx#core-resolve-module-export
    (lambda (_out12752_)
      (letrec ((_subst12754_
                (lambda (_key12800_)
                  (let* ((_key1280112809_ _key12800_)
                         (_else1280312817_ (lambda () _key12800_))
                         (_K1280512848_
                          (lambda (_mark12820_ _id12821_)
                            (let* ((_mark1282212828_ _mark12820_)
                                   (_E1282412832_
                                    (lambda ()
                                      (error '"No clause matching"
                                             _mark1282212828_)))
                                   (_K1282512840_
                                    (lambda (_subst12835_)
                                      (let ((_$e12837_
                                             (if _subst12835_
                                                 (table-ref
                                                  _subst12835_
                                                  _id12821_
                                                  '#f)
                                                 '#f)))
                                        (if _$e12837_
                                            _$e12837_
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Illegal key; missing substitution"
                                             _key12800_))))))
                              (if (##structure-instance-of?
                                   _mark1282212828_
                                   'gx#expander-mark::t)
                                  (let* ((_e1282612843_
                                          (##vector-ref _mark1282212828_ '1))
                                         (_subst12846_ _e1282612843_))
                                    (_K1282512840_ _subst12846_))
                                  (_E1282412832_))))))
                    (if (##pair? _key1280112809_)
                        (let ((_hd1280612851_ (##car _key1280112809_))
                              (_tl1280712853_ (##cdr _key1280112809_)))
                          (let* ((_id12856_ _hd1280612851_)
                                 (_mark12858_ _tl1280712853_))
                            (_K1280512848_ _mark12858_ _id12856_)))
                        (_else1280312817_))))))
        (let* ((_out1275512765_ _out12752_)
               (_E1275712769_
                (lambda () (error '"No clause matching" _out1275512765_)))
               (_K1275812776_
                (lambda (_phi12772_ _key12773_ _ctx12774_)
                  (gx#core-context-resolve
                   (gx#core-context-shift _ctx12774_ _phi12772_)
                   (_subst12754_ _key12773_)))))
          (if (##structure-direct-instance-of?
               _out1275512765_
               'gx#module-export::t)
              (let* ((_e1275912779_ (##vector-ref _out1275512765_ '1))
                     (_ctx12782_ _e1275912779_)
                     (_e1276012784_ (##vector-ref _out1275512765_ '2))
                     (_key12787_ _e1276012784_)
                     (_e1276112789_ (##vector-ref _out1275512765_ '3))
                     (_phi12792_ _e1276112789_)
                     (_e1276212794_ (##vector-ref _out1275512765_ '4))
                     (_e1276312797_ (##vector-ref _out1275512765_ '5)))
                (_K1275812776_ _phi12792_ _key12787_ _ctx12782_))
              (_E1275712769_))))))
  (begin
    (define gx#core-module-export->import__%
      (lambda (_out12677_ _rename12678_ _dphi12679_)
        (let* ((_out1268012690_ _out12677_)
               (_E1268212694_
                (lambda () (error '"No clause matching" _out1268012690_)))
               (_K1268312706_
                (lambda (_weak?12697_
                         _name12698_
                         _phi12699_
                         _key12700_
                         _ctx12701_)
                  (##structure
                   gx#module-import::t
                   _out12677_
                   (let ((_$e12703_ _rename12678_))
                     (if _$e12703_ _$e12703_ _name12698_))
                   (fx+ _phi12699_ _dphi12679_)
                   _weak?12697_))))
          (if (##structure-direct-instance-of?
               _out1268012690_
               'gx#module-export::t)
              (let* ((_e1268412709_ (##vector-ref _out1268012690_ '1))
                     (_ctx12712_ _e1268412709_)
                     (_e1268512714_ (##vector-ref _out1268012690_ '2))
                     (_key12717_ _e1268512714_)
                     (_e1268612719_ (##vector-ref _out1268012690_ '3))
                     (_phi12722_ _e1268612719_)
                     (_e1268712724_ (##vector-ref _out1268012690_ '4))
                     (_name12727_ _e1268712724_)
                     (_e1268812729_ (##vector-ref _out1268012690_ '5))
                     (_weak?12732_ _e1268812729_))
                (_K1268312706_
                 _weak?12732_
                 _name12727_
                 _phi12722_
                 _key12717_
                 _ctx12712_))
              (_E1268212694_)))))
    (begin
      (define gx#core-module-export->import__0
        (lambda (_out12737_)
          (let* ((_rename12739_ '#f) (_dphi12741_ '0))
            (gx#core-module-export->import__%
             _out12737_
             _rename12739_
             _dphi12741_))))
      (define gx#core-module-export->import__1
        (lambda (_out12743_ _rename12744_)
          (let ((_dphi12746_ '0))
            (gx#core-module-export->import__%
             _out12743_
             _rename12744_
             _dphi12746_))))
      (define gx#core-module-export->import
        (lambda _g14670_
          (let ((_g14669_ (length _g14670_)))
            (cond ((##fx= _g14669_ 1)
                   (apply gx#core-module-export->import__0 _g14670_))
                  ((##fx= _g14669_ 2)
                   (apply gx#core-module-export->import__1 _g14670_))
                  ((##fx= _g14669_ 3)
                   (apply gx#core-module-export->import__% _g14670_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-module-export->import
                    _g14670_))))))))
  (define gx#core-expand-module%
    (lambda (_stx12605_)
      (letrec ((_make-context12607_
                (lambda (_id12658_)
                  (let* ((_super12660_ (gx#current-expander-context))
                         (_bind-id12662_ (gx#stx-e _id12658_))
                         (_mod-id12664_
                          (if (##structure-instance-of?
                               _super12660_
                               'gx#module-context::t)
                              (make-symbol
                               (##structure-ref
                                _super12660_
                                '1
                                gx#expander-context::t
                                '#f)
                               '"$"
                               _bind-id12662_)
                              _bind-id12662_))
                         (_ns12666_ (symbol->string _mod-id12664_))
                         (_path12673_
                          (if (##structure-instance-of?
                               _super12660_
                               'gx#module-context::t)
                              (let ((_path12668_
                                     (##structure-ref
                                      _super12660_
                                      '7
                                      gx#module-context::t
                                      '#f)))
                                (if (let ((_$e12670_ (pair? _path12668_)))
                                      (if _$e12670_
                                          _$e12670_
                                          (null? _path12668_)))
                                    (cons _bind-id12662_ _path12668_)
                                    (if (not _path12668_)
                                        _bind-id12662_
                                        (cons _bind-id12662_
                                              (cons _path12668_ '())))))
                              _bind-id12662_)))
                    (let ((__obj14646 (make-object gx#module-context::t '11)))
                      (begin
                        (gx#module-context:::init!
                         __obj14646
                         _mod-id12664_
                         _super12660_
                         _ns12666_
                         _path12673_)
                        __obj14646))))))
        (let* ((_e1260812618_ _stx12605_)
               (_E1261012622_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1260812618_)))
               (_E1260912654_
                (lambda ()
                  (if (gx#stx-pair? _e1260812618_)
                      (let ((_e1261112626_ (gx#syntax-e _e1260812618_)))
                        (let ((_hd1261212629_ (##car _e1261112626_))
                              (_tl1261312631_ (##cdr _e1261112626_)))
                          (if (gx#stx-pair? _tl1261312631_)
                              (let ((_e1261412634_
                                     (gx#syntax-e _tl1261312631_)))
                                (let ((_hd1261512637_ (##car _e1261412634_))
                                      (_tl1261612639_ (##cdr _e1261412634_)))
                                  (let* ((_id12642_ _hd1261512637_)
                                         (_body12644_ _tl1261612639_))
                                    (if (if (gx#identifier? _id12642_)
                                            (gx#stx-list? _body12644_)
                                            '#f)
                                        (let* ((_ctx12646_
                                                (_make-context12607_
                                                 _id12642_))
                                               (_body12648_
                                                (gx#core-expand-module-begin
                                                 _body12644_
                                                 _ctx12646_))
                                               (_body12650_
                                                (gx#core-quote-syntax__1
                                                 (gx#core-cons
                                                  '%#begin
                                                  _body12648_)
                                                 (gx#stx-source _stx12605_))))
                                          (begin
                                            (##structure-set!
                                             _ctx12646_
                                             (##make-promise
                                              (lambda ()
                                                (gx#eval-syntax* _body12650_)))
                                             '10
                                             gx#module-context::t
                                             '#f)
                                            (##structure-set!
                                             _ctx12646_
                                             _body12650_
                                             '11
                                             gx#module-context::t
                                             '#f)
                                            (gx#core-bind-syntax!__0
                                             _id12642_
                                             _ctx12646_)
                                            (gx#core-quote-syntax__1
                                             (gx#core-list
                                              '%#module
                                              (gx#core-quote-syntax__0
                                               _id12642_)
                                              _body12650_)
                                             (gx#stx-source _stx12605_))))
                                        (_E1261012622_)))))
                              (_E1261012622_))))
                      (_E1261012622_)))))
          (_E1260912654_)))))
  (define gx#core-expand-module-begin
    (lambda (_body12571_ _ctx12572_)
      (call-with-parameters
       (lambda ()
         (begin
           (gx#core-bind-feature!__1 'gerbil-module '#t)
           (let* ((_stx12575_
                   (gx#core-expand-head (cons '%%begin-module _body12571_)))
                  (_e1257612583_ _stx12575_)
                  (_E1257812587_
                   (lambda ()
                     (gx#raise-syntax-error
                      '#f
                      '"Illegal module body expansion"
                      _stx12575_)))
                  (_E1257712601_
                   (lambda ()
                     (if (gx#stx-pair? _e1257612583_)
                         (let ((_e1257912591_ (gx#syntax-e _e1257612583_)))
                           (let ((_hd1258012594_ (##car _e1257912591_))
                                 (_tl1258112596_ (##cdr _e1257912591_)))
                             (if (if (gx#identifier? _hd1258012594_)
                                     (gx#core-identifier=?
                                      _hd1258012594_
                                      '%#begin-module)
                                     '#f)
                                 (let ((_body12599_ _tl1258112596_))
                                   (if '#t
                                       (if (gx#sealed-syntax? _stx12575_)
                                           _body12599_
                                           (gx#core-expand-module-body
                                            _body12599_))
                                       (_E1257812587_)))
                                 (_E1257812587_))))
                         (_E1257812587_)))))
             (_E1257712601_))))
       gx#current-expander-context
       _ctx12572_
       gx#current-expander-phi
       '0)))
  (define gx#core-expand-module-body
    (lambda (_body12367_)
      (letrec ((_expand-special12369_
                (lambda (_hd12498_ _K12499_ _rest12500_ _r12501_)
                  (let* ((_e1250212519_ _hd12498_)
                         (_E1251412523_
                          (lambda ()
                            (_K12499_
                             _rest12500_
                             (cons (gx#core-expand-top _hd12498_) _r12501_))))
                         (_E1250412535_
                          (lambda ()
                            (if (gx#stx-pair? _e1250212519_)
                                (let ((_e1251512527_
                                       (gx#syntax-e _e1250212519_)))
                                  (let ((_hd1251612530_ (##car _e1251512527_))
                                        (_tl1251712532_ (##cdr _e1251512527_)))
                                    (if (if (gx#identifier? _hd1251612530_)
                                            (gx#core-identifier=?
                                             _hd1251612530_
                                             '%#export)
                                            '#f)
                                        (if '#t
                                            (_K12499_
                                             _rest12500_
                                             (cons _hd12498_ _r12501_))
                                            (_E1251412523_))
                                        (_E1251412523_))))
                                (_E1251412523_))))
                         (_E1250312567_
                          (lambda ()
                            (if (gx#stx-pair? _e1250212519_)
                                (let ((_e1250512539_
                                       (gx#syntax-e _e1250212519_)))
                                  (let ((_hd1250612542_ (##car _e1250512539_))
                                        (_tl1250712544_ (##cdr _e1250512539_)))
                                    (if (if (gx#identifier? _hd1250612542_)
                                            (gx#core-identifier=?
                                             _hd1250612542_
                                             '%#define-values)
                                            '#f)
                                        (if (gx#stx-pair? _tl1250712544_)
                                            (let ((_e1250812547_
                                                   (gx#syntax-e
                                                    _tl1250712544_)))
                                              (let ((_hd1250912550_
                                                     (##car _e1250812547_))
                                                    (_tl1251012552_
                                                     (##cdr _e1250812547_)))
                                                (let ((_hd-bind12555_
                                                       _hd1250912550_))
                                                  (if (gx#stx-pair?
                                                       _tl1251012552_)
                                                      (let ((_e1251112557_
                                                             (gx#syntax-e
                                                              _tl1251012552_)))
                                                        (let ((_hd1251212560_
                                                               (##car _e1251112557_))
                                                              (_tl1251312562_
                                                               (##cdr _e1251112557_)))
                                                          (let ((_expr12565_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1251212560_))
                    (if (gx#stx-null? _tl1251312562_)
                        (if (gx#core-bind-values? _hd-bind12555_)
                            (begin
                              (gx#core-bind-values!__0 _hd-bind12555_)
                              (_K12499_ _rest12500_ (cons _hd12498_ _r12501_)))
                            (_E1250412535_))
                        (_E1250412535_)))))
              (_E1250412535_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E1250412535_))
                                        (_E1250412535_))))
                                (_E1250412535_)))))
                    (_E1250312567_))))
               (_expand-body12370_
                (lambda (_rbody12372_)
                  (let _lp12374_ ((_rest12376_ _rbody12372_) (_body12377_ '()))
                    (let* ((_rest1237812386_ _rest12376_)
                           (_else1238012394_ (lambda () _body12377_))
                           (_K1238212486_
                            (lambda (_rest12397_ _hd12398_)
                              (let* ((_e1239912420_ _hd12398_)
                                     (_E1241512424_
                                      (lambda ()
                                        (_lp12374_
                                         _rest12397_
                                         (cons (gx#core-expand-expression
                                                _hd12398_)
                                               _body12377_))))
                                     (_E1241112438_
                                      (lambda ()
                                        (if (gx#stx-pair? _e1239912420_)
                                            (let ((_e1241612428_
                                                   (gx#syntax-e
                                                    _e1239912420_)))
                                              (let ((_hd1241712431_
                                                     (##car _e1241612428_))
                                                    (_tl1241812433_
                                                     (##cdr _e1241612428_)))
                                                (let ((_form12436_
                                                       _hd1241712431_))
                                                  (if (gx#core-bound-identifier?__%
                                                       _form12436_
                                                       gx#special-form-binding?)
                                                      (_lp12374_
                                                       _rest12397_
                                                       (cons _hd12398_
                                                             _body12377_))
                                                      (_E1241512424_)))))
                                            (_E1241512424_))))
                                     (_E1240112450_
                                      (lambda ()
                                        (if (gx#stx-pair? _e1239912420_)
                                            (let ((_e1241212442_
                                                   (gx#syntax-e
                                                    _e1239912420_)))
                                              (let ((_hd1241312445_
                                                     (##car _e1241212442_))
                                                    (_tl1241412447_
                                                     (##cdr _e1241212442_)))
                                                (if (if (gx#identifier?
                                                         _hd1241312445_)
                                                        (gx#core-identifier=?
                                                         _hd1241312445_
                                                         '%#export)
                                                        '#f)
                                                    (if '#t
                                                        (_lp12374_
                                                         _rest12397_
                                                         (cons (gx#core-expand-export%__0
                                                                _hd12398_)
                                                               _body12377_))
                                                        (_E1241112438_))
                                                    (_E1241112438_))))
                                            (_E1241112438_))))
                                     (_E1240012482_
                                      (lambda ()
                                        (if (gx#stx-pair? _e1239912420_)
                                            (let ((_e1240212454_
                                                   (gx#syntax-e
                                                    _e1239912420_)))
                                              (let ((_hd1240312457_
                                                     (##car _e1240212454_))
                                                    (_tl1240412459_
                                                     (##cdr _e1240212454_)))
                                                (if (if (gx#identifier?
                                                         _hd1240312457_)
                                                        (gx#core-identifier=?
                                                         _hd1240312457_
                                                         '%#define-values)
                                                        '#f)
                                                    (if (gx#stx-pair?
                                                         _tl1240412459_)
                                                        (let ((_e1240512462_
                                                               (gx#syntax-e
                                                                _tl1240412459_)))
                                                          (let ((_hd1240612465_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1240512462_))
                        (_tl1240712467_ (##cdr _e1240512462_)))
                    (let ((_hd-bind12470_ _hd1240612465_))
                      (if (gx#stx-pair? _tl1240712467_)
                          (let ((_e1240812472_ (gx#syntax-e _tl1240712467_)))
                            (let ((_hd1240912475_ (##car _e1240812472_))
                                  (_tl1241012477_ (##cdr _e1240812472_)))
                              (let ((_expr12480_ _hd1240912475_))
                                (if (gx#stx-null? _tl1241012477_)
                                    (if '#t
                                        (_lp12374_
                                         _rest12397_
                                         (cons (gx#core-quote-syntax__1
                                                (gx#core-list
                                                 '%#define-values
                                                 (gx#core-quote-bind-values
                                                  _hd-bind12470_)
                                                 (gx#core-expand-expression
                                                  _expr12480_))
                                                (gx#stx-source _hd12398_))
                                               _body12377_))
                                        (_E1240112450_))
                                    (_E1240112450_)))))
                          (_E1240112450_)))))
                (_E1240112450_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1240112450_))))
                                            (_E1240112450_)))))
                                (_E1240012482_)))))
                      (if (##pair? _rest1237812386_)
                          (let ((_hd1238312489_ (##car _rest1237812386_))
                                (_tl1238412491_ (##cdr _rest1237812386_)))
                            (let* ((_hd12494_ _hd1238312489_)
                                   (_rest12496_ _tl1238412491_))
                              (_K1238212486_ _rest12496_ _hd12494_)))
                          (_else1238012394_)))))))
        (_expand-body12370_
         (gx#core-expand-block__%
          (cons '%#begin-module _body12367_)
          _expand-special12369_
          '#f
          values)))))
  (define gx#core-expand-import/export
    (lambda (_stx12210_
             _expanded?12211_
             _method12212_
             _current-phi12213_
             _expand112214_)
      (letrec ((_K12216_
                (lambda (_rest12334_ _r12335_)
                  (let* ((_e1233612343_ _rest12334_)
                         (_E1233812347_ (lambda () _r12335_))
                         (_E1233712363_
                          (lambda ()
                            (if (gx#stx-pair? _e1233612343_)
                                (let ((_e1233912351_
                                       (gx#syntax-e _e1233612343_)))
                                  (let ((_hd1234012354_ (##car _e1233912351_))
                                        (_tl1234112356_ (##cdr _e1233912351_)))
                                    (let* ((_hd12359_ _hd1234012354_)
                                           (_rest12361_ _tl1234112356_))
                                      (if '#t
                                          (_step12217_
                                           _hd12359_
                                           _rest12361_
                                           _r12335_)
                                          (_E1233812347_)))))
                                (_E1233812347_)))))
                    (_E1233712363_))))
               (_step12217_
                (lambda (_hd12248_ _rest12249_ _r12250_)
                  (let* ((_e1225112269_ _hd12248_)
                         (_E1226412273_
                          (lambda ()
                            (if (_expanded?12211_ (gx#stx-e _hd12248_))
                                (_K12216_
                                 _rest12249_
                                 (cons (gx#stx-e _hd12248_) _r12250_))
                                (_expand112214_
                                 _hd12248_
                                 _K12216_
                                 _rest12249_
                                 _r12250_))))
                         (_E1226012289_
                          (lambda ()
                            (if (gx#stx-pair? _e1225112269_)
                                (let ((_e1226512277_
                                       (gx#syntax-e _e1225112269_)))
                                  (let ((_hd1226612280_ (##car _e1226512277_))
                                        (_tl1226712282_ (##cdr _e1226512277_)))
                                    (let* ((_macro12285_ _hd1226612280_)
                                           (_body12287_ _tl1226712282_))
                                      (if (gx#core-bound-identifier?__%
                                           _macro12285_
                                           gx#syntax-binding?)
                                          (_K12216_
                                           (cons (gx#core-apply-expander__%
                                                  (gx#syntax-local-e__0
                                                   _macro12285_)
                                                  _hd12248_
                                                  _method12212_)
                                                 _rest12249_)
                                           _r12250_)
                                          (_E1226412273_)))))
                                (_E1226412273_))))
                         (_E1225312303_
                          (lambda ()
                            (if (gx#stx-pair? _e1225112269_)
                                (let ((_e1226112293_
                                       (gx#syntax-e _e1225112269_)))
                                  (let ((_hd1226212296_ (##car _e1226112293_))
                                        (_tl1226312298_ (##cdr _e1226112293_)))
                                    (if (eq? (gx#stx-e _hd1226212296_) 'begin:)
                                        (let ((_body12301_ _tl1226312298_))
                                          (if '#t
                                              (_K12216_
                                               (gx#stx-foldr
                                                cons
                                                _rest12249_
                                                _body12301_)
                                               _r12250_)
                                              (_E1226012289_)))
                                        (_E1226012289_))))
                                (_E1226012289_))))
                         (_E1225212330_
                          (lambda ()
                            (if (gx#stx-pair? _e1225112269_)
                                (let ((_e1225412307_
                                       (gx#syntax-e _e1225112269_)))
                                  (let ((_hd1225512310_ (##car _e1225412307_))
                                        (_tl1225612312_ (##cdr _e1225412307_)))
                                    (if (eq? (gx#stx-e _hd1225512310_) 'phi:)
                                        (if (gx#stx-pair? _tl1225612312_)
                                            (let ((_e1225712315_
                                                   (gx#syntax-e
                                                    _tl1225612312_)))
                                              (let ((_hd1225812318_
                                                     (##car _e1225712315_))
                                                    (_tl1225912320_
                                                     (##cdr _e1225712315_)))
                                                (let* ((_dphi12323_
                                                        _hd1225812318_)
                                                       (_body12325_
                                                        _tl1225912320_))
                                                  (if (gx#stx-fixnum?
                                                       _dphi12323_)
                                                      (let ((_rbody12328_
                                                             (call-with-parameters
                                                              (lambda ()
                                                                (_K12216_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _body12325_
                         '()))
                      _current-phi12213_
                      (fx+ (gx#stx-e _dphi12323_) (_current-phi12213_)))))
                (_K12216_ _rest12249_ (foldr1 cons _r12250_ _rbody12328_)))
              (_E1225312303_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E1225312303_))
                                        (_E1225312303_))))
                                (_E1225312303_)))))
                    (_E1225212330_)))))
        (let* ((_e1221812225_ _stx12210_)
               (_E1222012229_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1221812225_)))
               (_E1221912244_
                (lambda ()
                  (if (gx#stx-pair? _e1221812225_)
                      (let ((_e1222112233_ (gx#syntax-e _e1221812225_)))
                        (let ((_hd1222212236_ (##car _e1222112233_))
                              (_tl1222312238_ (##cdr _e1222112233_)))
                          (let ((_body12241_ _tl1222312238_))
                            (if '#t
                                (if (_current-phi12213_)
                                    (_K12216_ _body12241_ '())
                                    (call-with-parameters
                                     (lambda () (_K12216_ _body12241_ '()))
                                     _current-phi12213_
                                     (gx#current-expander-phi)))
                                (_E1222012229_)))))
                      (_E1222012229_)))))
          (_E1221912244_)))))
  (begin
    (define gx#core-expand-import%__%
      (lambda (_stx11750_ _internal-expand?11751_)
        (letrec ((_expand111753_
                  (lambda (_hd12195_ _K12196_ _rest12197_ _r12198_)
                    (if (gx#core-bound-module? _hd12195_)
                        (_import111754_
                         (gx#syntax-local-e__0 _hd12195_)
                         _K12196_
                         _rest12197_
                         _r12198_)
                        (if (gx#core-library-module-path? _hd12195_)
                            (_import111754_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path _hd12195_))
                             _K12196_
                             _rest12197_
                             _r12198_)
                            (if (gx#stx-string? _hd12195_)
                                (_import111754_
                                 (gx#import-module__0
                                  (gx#core-resolve-module-path__%
                                   _hd12195_
                                   (gx#stx-source _stx11750_)))
                                 _K12196_
                                 _rest12197_
                                 _r12198_)
                                (if (##structure-instance-of?
                                     (gx#stx-e _hd12195_)
                                     'gx#module-context::t)
                                    (_K12196_
                                     _rest12197_
                                     (cons (gx#stx-e _hd12195_) _r12198_))
                                    (if (_import-spec?11755_ _hd12195_)
                                        (_import-spec11760_
                                         _hd12195_
                                         _K12196_
                                         _rest12197_
                                         _r12198_)
                                        (if (_import-submodule?11756_
                                             _hd12195_)
                                            (_import-submodule11758_
                                             _hd12195_
                                             _K12196_
                                             _rest12197_
                                             _r12198_)
                                            (if (_import-runtime?11757_
                                                 _hd12195_)
                                                (_import-runtime11759_
                                                 _hd12195_
                                                 _K12196_
                                                 _rest12197_
                                                 _r12198_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; illegal import"
                                                 _stx11750_
                                                 _hd12195_))))))))))
                 (_import111754_
                  (lambda (_ctx12184_ _K12185_ _rest12186_ _r12187_)
                    (let ((_dphi12189_
                           (fx- (gx#current-import-expander-phi)
                                (gx#current-expander-phi))))
                      (_K12185_
                       _rest12186_
                       (cons (##structure
                              gx#import-set::t
                              _ctx12184_
                              _dphi12189_
                              (map (lambda (_g1219012192_)
                                     (gx#core-module-export->import__%
                                      _g1219012192_
                                      '#f
                                      _dphi12189_))
                                   (##structure-ref
                                    _ctx12184_
                                    '9
                                    gx#module-context::t
                                    '#f)))
                             _r12187_)))))
                 (_import-spec?11755_
                  (lambda (_hd12141_)
                    (let* ((_e1214212152_ _hd12141_)
                           (_E1214412156_ (lambda () '#f))
                           (_E1214312180_
                            (lambda ()
                              (if (gx#stx-pair? _e1214212152_)
                                  (let ((_e1214512160_
                                         (gx#syntax-e _e1214212152_)))
                                    (let ((_hd1214612163_
                                           (##car _e1214512160_))
                                          (_tl1214712165_
                                           (##cdr _e1214512160_)))
                                      (if (eq? (gx#stx-e _hd1214612163_)
                                               'spec:)
                                          (if (gx#stx-pair? _tl1214712165_)
                                              (let ((_e1214812168_
                                                     (gx#syntax-e
                                                      _tl1214712165_)))
                                                (let ((_hd1214912171_
                                                       (##car _e1214812168_))
                                                      (_tl1215012173_
                                                       (##cdr _e1214812168_)))
                                                  (let* ((_spath12176_
                                                          _hd1214912171_)
                                                         (_specs12178_
                                                          _tl1215012173_))
                                                    (if '#t
                                                        '#t
                                                        (_E1214412156_)))))
                                              (_E1214412156_))
                                          (_E1214412156_))))
                                  (_E1214412156_)))))
                      (_E1214312180_))))
                 (_import-submodule?11756_
                  (lambda (_hd12098_)
                    (let* ((_e1209912109_ _hd12098_)
                           (_E1210112113_ (lambda () '#f))
                           (_E1210012137_
                            (lambda ()
                              (if (gx#stx-pair? _e1209912109_)
                                  (let ((_e1210212117_
                                         (gx#syntax-e _e1209912109_)))
                                    (let ((_hd1210312120_
                                           (##car _e1210212117_))
                                          (_tl1210412122_
                                           (##cdr _e1210212117_)))
                                      (if (eq? (gx#stx-e _hd1210312120_) 'in:)
                                          (if (gx#stx-pair? _tl1210412122_)
                                              (let ((_e1210512125_
                                                     (gx#syntax-e
                                                      _tl1210412122_)))
                                                (let ((_hd1210612128_
                                                       (##car _e1210512125_))
                                                      (_tl1210712130_
                                                       (##cdr _e1210512125_)))
                                                  (let* ((_top12133_
                                                          _hd1210612128_)
                                                         (_sub12135_
                                                          _tl1210712130_))
                                                    (if '#t
                                                        '#t
                                                        (_E1210112113_)))))
                                              (_E1210112113_))
                                          (_E1210112113_))))
                                  (_E1210112113_)))))
                      (_E1210012137_))))
                 (_import-runtime?11757_
                  (lambda (_hd12055_)
                    (let* ((_e1205612066_ _hd12055_)
                           (_E1205812070_ (lambda () '#f))
                           (_E1205712094_
                            (lambda ()
                              (if (gx#stx-pair? _e1205612066_)
                                  (let ((_e1205912074_
                                         (gx#syntax-e _e1205612066_)))
                                    (let ((_hd1206012077_
                                           (##car _e1205912074_))
                                          (_tl1206112079_
                                           (##cdr _e1205912074_)))
                                      (if (eq? (gx#stx-e _hd1206012077_)
                                               'runtime:)
                                          (if (gx#stx-pair? _tl1206112079_)
                                              (let ((_e1206212082_
                                                     (gx#syntax-e
                                                      _tl1206112079_)))
                                                (let ((_hd1206312085_
                                                       (##car _e1206212082_))
                                                      (_tl1206412087_
                                                       (##cdr _e1206212082_)))
                                                  (let* ((_top12090_
                                                          _hd1206312085_)
                                                         (_spath12092_
                                                          _tl1206412087_))
                                                    (if '#t
                                                        '#t
                                                        (_E1205812070_)))))
                                              (_E1205812070_))
                                          (_E1205812070_))))
                                  (_E1205812070_)))))
                      (_E1205712094_))))
                 (_import-submodule11758_
                  (lambda (_hd12022_ _K12023_ _rest12024_ _r12025_)
                    (let* ((_e1202612033_ _hd12022_)
                           (_E1202812037_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _e1202612033_)))
                           (_E1202712051_
                            (lambda ()
                              (if (gx#stx-pair? _e1202612033_)
                                  (let ((_e1202912041_
                                         (gx#syntax-e _e1202612033_)))
                                    (let ((_hd1203012044_
                                           (##car _e1202912041_))
                                          (_tl1203112046_
                                           (##cdr _e1202912041_)))
                                      (let ((_spath12049_ _tl1203112046_))
                                        (if '#t
                                            (_import111754_
                                             (_import-spec-source11761_
                                              _spath12049_)
                                             _K12023_
                                             _rest12024_
                                             _r12025_)
                                            (_E1202812037_)))))
                                  (_E1202812037_)))))
                      (_E1202712051_))))
                 (_import-runtime11759_
                  (lambda (_hd11989_ _K11990_ _rest11991_ _r11992_)
                    (let* ((_e1199312000_ _hd11989_)
                           (_E1199512004_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _e1199312000_)))
                           (_E1199412018_
                            (lambda ()
                              (if (gx#stx-pair? _e1199312000_)
                                  (let ((_e1199612008_
                                         (gx#syntax-e _e1199312000_)))
                                    (let ((_hd1199712011_
                                           (##car _e1199612008_))
                                          (_tl1199812013_
                                           (##cdr _e1199612008_)))
                                      (let ((_spath12016_ _tl1199812013_))
                                        (if '#t
                                            (_K11990_
                                             _rest11991_
                                             (cons (_import-spec-source11761_
                                                    _spath12016_)
                                                   _r11992_))
                                            (_E1199512004_)))))
                                  (_E1199512004_)))))
                      (_E1199412018_))))
                 (_import-spec11760_
                  (lambda (_hd11828_ _K11829_ _rest11830_ _r11831_)
                    (let* ((_e1183211849_ _hd11828_)
                           (_E1184111853_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _e1183211849_)))
                           (_E1183411963_
                            (lambda ()
                              (if (gx#stx-pair? _e1183211849_)
                                  (let ((_e1184211857_
                                         (gx#syntax-e _e1183211849_)))
                                    (let ((_hd1184311860_
                                           (##car _e1184211857_))
                                          (_tl1184411862_
                                           (##cdr _e1184211857_)))
                                      (if (gx#stx-pair? _tl1184411862_)
                                          (let ((_e1184511865_
                                                 (gx#syntax-e _tl1184411862_)))
                                            (let ((_hd1184611868_
                                                   (##car _e1184511865_))
                                                  (_tl1184711870_
                                                   (##cdr _e1184511865_)))
                                              (let* ((_path11873_
                                                      _hd1184611868_)
                                                     (_specs11875_
                                                      _tl1184711870_))
                                                (if '#t
                                                    (let ((_src-ctx11877_
                                                           (_import-spec-source11761_
                                                            _path11873_))
                                                          (_exports11878_
                                                           (make-table))
                                                          (_specs11879_
                                                           (gx#syntax->list
                                                            _specs11875_)))
                                                      (begin
                                                        (for-each
                                                         (lambda (_out11881_)
                                                           (table-set!
                                                            _exports11878_
                                                            (cons (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _out11881_
                           '3
                           gx#module-export::t
                           '#f)
                          (##direct-structure-ref
                           _out11881_
                           '4
                           gx#module-export::t
                           '#f))
                    _out11881_))
                 (##structure-ref _src-ctx11877_ '9 gx#module-context::t '#f))
                (_K11829_
                 _rest11830_
                 (foldl1 (lambda (_spec11883_ _r11884_)
                           (let* ((_e1188511901_ _spec11883_)
                                  (_E1188711905_
                                   (lambda ()
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _e1188511901_)))
                                  (_E1188611959_
                                   (lambda ()
                                     (if (gx#stx-pair? _e1188511901_)
                                         (let ((_e1188811909_
                                                (gx#syntax-e _e1188511901_)))
                                           (let ((_hd1188911912_
                                                  (##car _e1188811909_))
                                                 (_tl1189011914_
                                                  (##cdr _e1188811909_)))
                                             (let ((_phi11917_ _hd1188911912_))
                                               (if (gx#stx-pair?
                                                    _tl1189011914_)
                                                   (let ((_e1189111919_
                                                          (gx#syntax-e
                                                           _tl1189011914_)))
                                                     (let ((_hd1189211922_
                                                            (##car _e1189111919_))
                                                           (_tl1189311924_
                                                            (##cdr _e1189111919_)))
                                                       (let ((_name11927_
                                                              _hd1189211922_))
                                                         (if (gx#stx-pair?
                                                              _tl1189311924_)
                                                             (let ((_e1189411929_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _tl1189311924_)))
                       (let ((_hd1189511932_ (##car _e1189411929_))
                             (_tl1189611934_ (##cdr _e1189411929_)))
                         (let ((_src-phi11937_ _hd1189511932_))
                           (if (gx#stx-pair? _tl1189611934_)
                               (let ((_e1189711939_
                                      (gx#syntax-e _tl1189611934_)))
                                 (let ((_hd1189811942_ (##car _e1189711939_))
                                       (_tl1189911944_ (##cdr _e1189711939_)))
                                   (let ((_src-name11947_ _hd1189811942_))
                                     (if (gx#stx-null? _tl1189911944_)
                                         (if (if (gx#stx-fixnum?
                                                  _src-phi11937_)
                                                 (if (gx#identifier?
                                                      _src-name11947_)
                                                     (if (gx#stx-fixnum?
                                                          _phi11917_)
                                                         (gx#identifier?
                                                          _name11927_)
                                                         '#f)
                                                     '#f)
                                                 '#f)
                                             (let ((_src-phi11949_
                                                    (gx#stx-e _src-phi11937_))
                                                   (_src-name11950_
                                                    (gx#core-identifier-key
                                                     _src-name11947_))
                                                   (_phi11951_
                                                    (gx#stx-e _phi11917_))
                                                   (_name11952_
                                                    (gx#core-identifier-key
                                                     _name11927_)))
                                               (let ((_$e11954_
                                                      (table-ref
                                                       _exports11878_
                                                       (cons _src-phi11949_
                                                             _src-name11950_)
                                                       '#f)))
                                                 (if _$e11954_
                                                     ((lambda (_out11957_)
                                                        (cons (gx#core-module-export->import__%
                                                               _out11957_
                                                               _name11952_
                                                               (fx- _phi11951_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _src-phi11949_))
                      _r11884_))
              _$e11954_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; no matching export"
                                                      _stx11750_
                                                      _hd11828_))))
                                             (_E1188711905_))
                                         (_E1188711905_)))))
                               (_E1188711905_)))))
                     (_E1188711905_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1188711905_)))))
                                         (_E1188711905_)))))
                             (_E1188611959_)))
                         _r11831_
                         _specs11879_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1184111853_)))))
                                          (_E1184111853_))))
                                  (_E1184111853_))))
                           (_E1183311985_
                            (lambda ()
                              (if (gx#stx-pair? _e1183211849_)
                                  (let ((_e1183511967_
                                         (gx#syntax-e _e1183211849_)))
                                    (let ((_hd1183611970_
                                           (##car _e1183511967_))
                                          (_tl1183711972_
                                           (##cdr _e1183511967_)))
                                      (if (gx#stx-pair? _tl1183711972_)
                                          (let ((_e1183811975_
                                                 (gx#syntax-e _tl1183711972_)))
                                            (let ((_hd1183911978_
                                                   (##car _e1183811975_))
                                                  (_tl1184011980_
                                                   (##cdr _e1183811975_)))
                                              (let ((_path11983_
                                                     _hd1183911978_))
                                                (if (gx#stx-null?
                                                     _tl1184011980_)
                                                    (if '#t
                                                        (_K11829_
                                                         _rest11830_
                                                         (cons (_import-spec-source11761_
                                                                _path11983_)
                                                               _r11831_))
                                                        (_E1183411963_))
                                                    (_E1183411963_)))))
                                          (_E1183411963_))))
                                  (_E1183411963_)))))
                      (_E1183311985_))))
                 (_import-spec-source11761_
                  (lambda (_spath11826_)
                    (gx#core-import-nested-module _spath11826_ _stx11750_)))
                 (_import!11762_
                  (lambda (_rbody11775_)
                    (letrec* ((_current-ctx11777_
                               (gx#current-expander-context))
                              (_deps11778_ (make-hash-table-eq))
                              (_bind!11779_
                               (lambda (_hd11824_)
                                 (gx#core-bind-import!__1
                                  _hd11824_
                                  _current-ctx11777_))))
                      (let _lp11781_ ((_rest11783_ _rbody11775_)
                                      (_body11784_ '()))
                        (let* ((_rest1178511793_ _rest11783_)
                               (_else1178711803_
                                (lambda ()
                                  (begin
                                    (if (##structure-instance-of?
                                         _current-ctx11777_
                                         'gx#module-context::t)
                                        (##structure-set!
                                         _current-ctx11777_
                                         (foldl1 cons
                                                 (##structure-ref
                                                  _current-ctx11777_
                                                  '8
                                                  gx#module-context::t
                                                  '#f)
                                                 _body11784_)
                                         '8
                                         gx#module-context::t
                                         '#f)
                                        '#!void)
                                    (table-for-each
                                     (lambda (_ctx11801_ _g14671_)
                                       (gx#eval-module _ctx11801_))
                                     _deps11778_)
                                    _body11784_)))
                               (_K1178911812_
                                (lambda (_rest11806_ _hd11807_)
                                  (begin
                                    (if (##structure-direct-instance-of?
                                         _hd11807_
                                         'gx#module-import::t)
                                        (begin
                                          (_bind!11779_ _hd11807_)
                                          (if (if (fxpositive?
                                                   (##direct-structure-ref
                                                    _hd11807_
                                                    '3
                                                    gx#module-import::t
                                                    '#f))
                                                  (fxzero? (##direct-structure-ref
                                                            (##direct-structure-ref
                                                             _hd11807_
                                                             '1
                                                             gx#module-import::t
                                                             '#f)
                                                            '3
                                                            gx#module-export::t
                                                            '#f))
                                                  '#f)
                                              (table-set!
                                               _deps11778_
                                               (##direct-structure-ref
                                                (##direct-structure-ref
                                                 _hd11807_
                                                 '1
                                                 gx#module-import::t
                                                 '#f)
                                                '1
                                                gx#module-export::t
                                                '#f)
                                               '#t)
                                              '#!void))
                                        (if (##structure-direct-instance-of?
                                             _hd11807_
                                             'gx#import-set::t)
                                            (begin
                                              (for-each
                                               _bind!11779_
                                               (##direct-structure-ref
                                                _hd11807_
                                                '3
                                                gx#import-set::t
                                                '#f))
                                              (if (fxpositive?
                                                   (##direct-structure-ref
                                                    _hd11807_
                                                    '2
                                                    gx#import-set::t
                                                    '#f))
                                                  (table-set!
                                                   _deps11778_
                                                   (##direct-structure-ref
                                                    _hd11807_
                                                    '1
                                                    gx#import-set::t
                                                    '#f)
                                                   '#t)
                                                  '#!void))
                                            (let ((_$e11809_
                                                   (##structure-instance-of?
                                                    _hd11807_
                                                    'gx#module-context::t)))
                                              (if _$e11809_
                                                  _$e11809_
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Unexpected import"
                                                   _stx11750_
                                                   _hd11807_)))))
                                    (_lp11781_
                                     _rest11806_
                                     (cons _hd11807_ _body11784_))))))
                          (if (##pair? _rest1178511793_)
                              (let ((_hd1179011815_ (##car _rest1178511793_))
                                    (_tl1179111817_ (##cdr _rest1178511793_)))
                                (let* ((_hd11820_ _hd1179011815_)
                                       (_rest11822_ _tl1179111817_))
                                  (_K1178911812_ _rest11822_ _hd11820_)))
                              (_else1178711803_)))))))
                 (_expanded-import?11763_
                  (lambda (_e11767_)
                    (let ((_$e11769_
                           (##structure-direct-instance-of?
                            _e11767_
                            'gx#import-set::t)))
                      (if _$e11769_
                          _$e11769_
                          (let ((_$e11772_
                                 (##structure-direct-instance-of?
                                  _e11767_
                                  'gx#module-import::t)))
                            (if _$e11772_
                                _$e11772_
                                (##structure-instance-of?
                                 _e11767_
                                 'gx#module-context::t))))))))
          (let ((_rbody11765_
                 (gx#core-expand-import/export
                  _stx11750_
                  _expanded-import?11763_
                  'apply-import-expander
                  gx#current-import-expander-phi
                  _expand111753_)))
            (if _internal-expand?11751_
                (reverse _rbody11765_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#import (_import!11762_ _rbody11765_))
                 (gx#stx-source _stx11750_)))))))
    (begin
      (define gx#core-expand-import%__0
        (lambda (_stx12203_)
          (let ((_internal-expand?12205_ '#f))
            (gx#core-expand-import%__% _stx12203_ _internal-expand?12205_))))
      (define gx#core-expand-import%
        (lambda _g14673_
          (let ((_g14672_ (length _g14673_)))
            (cond ((##fx= _g14672_ 1)
                   (apply gx#core-expand-import%__0 _g14673_))
                  ((##fx= _g14672_ 2)
                   (apply gx#core-expand-import%__% _g14673_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-expand-import%
                    _g14673_))))))))
  (define gx#core-import-nested-module
    (lambda (_spath11677_ _where11678_)
      (let* ((_e1167911686_ _spath11677_)
             (_E1168111690_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1167911686_)))
             (_E1168011745_
              (lambda ()
                (if (gx#stx-pair? _e1167911686_)
                    (let ((_e1168211694_ (gx#syntax-e _e1167911686_)))
                      (let ((_hd1168311697_ (##car _e1168211694_))
                            (_tl1168411699_ (##cdr _e1168211694_)))
                        (let* ((_origin11702_ _hd1168311697_)
                               (_sub11704_ _tl1168411699_))
                          (if '#t
                              (let ((_origin-ctx11706_
                                     (if (gx#stx-false? _origin11702_)
                                         (gx#current-expander-context)
                                         (gx#import-module__0 _origin11702_))))
                                (let _lp11708_ ((_rest11710_ _sub11704_)
                                                (_ctx11711_ _origin-ctx11706_))
                                  (let* ((_e1171211719_ _rest11710_)
                                         (_E1171411723_ (lambda () _ctx11711_))
                                         (_E1171311741_
                                          (lambda ()
                                            (if (gx#stx-pair? _e1171211719_)
                                                (let ((_e1171511727_
                                                       (gx#syntax-e
                                                        _e1171211719_)))
                                                  (let ((_hd1171611730_
                                                         (##car _e1171511727_))
                                                        (_tl1171711732_
                                                         (##cdr _e1171511727_)))
                                                    (let* ((_id11735_
                                                            _hd1171611730_)
                                                           (_rest11737_
                                                            _tl1171711732_))
                                                      (if '#t
                                                          (let ((_bind11739_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#resolve-identifier__% _id11735_ '0 _ctx11711_)))
                    (begin
                      (if (if (##structure-direct-instance-of?
                               _bind11739_
                               'gx#syntax-binding::t)
                              (##structure-instance-of?
                               (##direct-structure-ref
                                _bind11739_
                                '4
                                gx#syntax-binding::t
                                '#f)
                               'gx#module-context::t)
                              '#f)
                          '#!void
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; not bound as module"
                           _where11678_
                           _spath11677_
                           _id11735_))
                      (_lp11708_
                       _rest11737_
                       (##direct-structure-ref
                        _bind11739_
                        '4
                        gx#syntax-binding::t
                        '#f))))
                  (_E1171411723_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E1171411723_)))))
                                    (_E1171311741_))))
                              (_E1168111690_)))))
                    (_E1168111690_)))))
        (_E1168011745_))))
  (define gx#core-expand-import-source
    (lambda (_hd11675_)
      (gx#core-expand-import%__%
       (cons 'import-internal% (cons _hd11675_ '()))
       '#t)))
  (begin
    (define gx#core-expand-export%__%
      (lambda (_stx11186_ _internal-expand?11187_)
        (letrec* ((_make-export__1461114612_
                   (lambda (_bind11623_ _phi11624_ _ctx11625_ _name11626_)
                     (let* ((_key11628_
                             (##structure-ref
                              _bind11623_
                              '2
                              gx#binding::t
                              '#f))
                            (_export-key11630_
                             (if _name11626_
                                 (gx#core-identifier-key _name11626_)
                                 _key11628_)))
                       (##structure
                        gx#module-export::t
                        _ctx11625_
                        _key11628_
                        _phi11624_
                        _export-key11630_
                        (let ((_$e11633_
                               (##structure-instance-of?
                                _bind11623_
                                'gx#extern-binding::t)))
                          (if _$e11633_
                              _$e11633_
                              (##structure-direct-instance-of?
                               _bind11623_
                               'gx#import-binding::t)))))))
                  (_make-export__0__1461314616_
                   (lambda (_bind11639_)
                     (let* ((_phi11641_ (gx#current-export-expander-phi))
                            (_ctx11643_ (gx#current-expander-context))
                            (_name11645_ '#f))
                       (_make-export__1461114612_
                        _bind11639_
                        _phi11641_
                        _ctx11643_
                        _name11645_))))
                  (_make-export__1__1461414617_
                   (lambda (_bind11647_ _phi11648_)
                     (let* ((_ctx11650_ (gx#current-expander-context))
                            (_name11652_ '#f))
                       (_make-export__1461114612_
                        _bind11647_
                        _phi11648_
                        _ctx11650_
                        _name11652_))))
                  (_make-export__2__1461514618_
                   (lambda (_bind11654_ _phi11655_ _ctx11656_)
                     (let ((_name11658_ '#f))
                       (_make-export__1461114612_
                        _bind11654_
                        _phi11655_
                        _ctx11656_
                        _name11658_))))
                  (_make-export11189_
                   (lambda _g14675_
                     (let ((_g14674_ (length _g14675_)))
                       (cond ((##fx= _g14674_ 1)
                              (apply _make-export__0__1461314616_ _g14675_))
                             ((##fx= _g14674_ 2)
                              (apply _make-export__1__1461414617_ _g14675_))
                             ((##fx= _g14674_ 3)
                              (apply _make-export__2__1461514618_ _g14675_))
                             ((##fx= _g14674_ 4)
                              (apply _make-export__1461114612_ _g14675_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g14675_))))))
                  (_expand111190_
                   (lambda (_hd11336_ _K11337_ _rest11338_ _r11339_)
                     (let* ((_e1134011372_ _hd11336_)
                            (_E1136711376_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal export"
                                _stx11186_
                                _hd11336_)))
                            (_E1135711455_
                             (lambda ()
                               (if (gx#stx-pair? _e1134011372_)
                                   (let ((_e1136811380_
                                          (gx#syntax-e _e1134011372_)))
                                     (let ((_hd1136911383_
                                            (##car _e1136811380_))
                                           (_tl1137011385_
                                            (##cdr _e1136811380_)))
                                       (if (eq? (gx#stx-e _hd1136911383_)
                                                'import:)
                                           (let ((_in11388_ _tl1137011385_))
                                             (if (gx#stx-list? _in11388_)
                                                 (let _lp11390_ ((_in-rest11392_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _in11388_)
                         (_r11393_ _r11339_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_e1139411401_
                                                           _in-rest11392_)
                                                          (_E1139611405_
                                                           (lambda ()
                                                             (_K11337_
                                                              _rest11338_
                                                              _r11393_)))
                                                          (_E1139511451_
                                                           (lambda ()
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _e1139411401_)
                         (let ((_e1139711409_ (gx#syntax-e _e1139411401_)))
                           (let ((_hd1139811412_ (##car _e1139711409_))
                                 (_tl1139911414_ (##cdr _e1139711409_)))
                             (let* ((_hd11417_ _hd1139811412_)
                                    (_in-rest11419_ _tl1139911414_))
                               (if '#t
                                   (let ((_src11449_
                                          (if (gx#core-bound-module? _hd11417_)
                                              (gx#syntax-local-e__0 _hd11417_)
                                              (if (gx#core-library-module-path?
                                                   _hd11417_)
                                                  (gx#import-module__0
                                                   (gx#core-resolve-library-module-path
                                                    _hd11417_))
                                                  (if (gx#stx-string?
                                                       _hd11417_)
                                                      (gx#import-module__0
                                                       (gx#core-resolve-module-path__%
                                                        _hd11417_
                                                        (gx#stx-source
                                                         _stx11186_)))
                                                      (let* ((_e1142011427_
                                                              _hd11417_)
                                                             (_E1142211431_
                                                              (lambda ()
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; illegal re-export"
                         _stx11186_
                         _hd11417_)))
                     (_E1142111445_
                      (lambda ()
                        (if (gx#stx-pair? _e1142011427_)
                            (let ((_e1142311435_ (gx#syntax-e _e1142011427_)))
                              (let ((_hd1142411438_ (##car _e1142311435_))
                                    (_tl1142511440_ (##cdr _e1142311435_)))
                                (if (eq? (gx#stx-e _hd1142411438_) 'in:)
                                    (let ((_spath11443_ _tl1142511440_))
                                      (if '#t
                                          (gx#core-import-nested-module
                                           _spath11443_
                                           _stx11186_)
                                          (_E1142211431_)))
                                    (_E1142211431_))))
                            (_E1142211431_)))))
                (_E1142111445_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_lp11390_
                                      _in-rest11419_
                                      (_export-imports11191_
                                       _src11449_
                                       _r11393_)))
                                   (_E1139611405_)))))
                         (_E1139611405_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E1139511451_)))
                                                 (_E1136711376_)))
                                           (_E1136711376_))))
                                   (_E1136711376_))))
                            (_E1134411494_
                             (lambda ()
                               (if (gx#stx-pair? _e1134011372_)
                                   (let ((_e1135811459_
                                          (gx#syntax-e _e1134011372_)))
                                     (let ((_hd1135911462_
                                            (##car _e1135811459_))
                                           (_tl1136011464_
                                            (##cdr _e1135811459_)))
                                       (if (eq? (gx#stx-e _hd1135911462_)
                                                'rename:)
                                           (if (gx#stx-pair? _tl1136011464_)
                                               (let ((_e1136111467_
                                                      (gx#syntax-e
                                                       _tl1136011464_)))
                                                 (let ((_hd1136211470_
                                                        (##car _e1136111467_))
                                                       (_tl1136311472_
                                                        (##cdr _e1136111467_)))
                                                   (let ((_id11475_
                                                          _hd1136211470_))
                                                     (if (gx#stx-pair?
                                                          _tl1136311472_)
                                                         (let ((_e1136411477_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1136311472_)))
                   (let ((_hd1136511480_ (##car _e1136411477_))
                         (_tl1136611482_ (##cdr _e1136411477_)))
                     (let ((_name11485_ _hd1136511480_))
                       (if (gx#stx-null? _tl1136611482_)
                           (if '#t
                               (let* ((_phi11487_
                                       (gx#current-export-expander-phi))
                                      (_$e11489_
                                       (gx#core-resolve-identifier__1
                                        _id11475_
                                        _phi11487_)))
                                 (if _$e11489_
                                     ((lambda (_bind11492_)
                                        (_K11337_
                                         _rest11338_
                                         (cons (_make-export__1461114612_
                                                _bind11492_
                                                _phi11487_
                                                (gx#current-expander-context)
                                                _name11485_)
                                               _r11339_)))
                                      _$e11489_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Reference to unbound identifier"
                                      _stx11186_
                                      _hd11336_
                                      _id11475_)))
                               (_E1135711455_))
                           (_E1135711455_)))))
                 (_E1135711455_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E1135711455_))
                                           (_E1135711455_))))
                                   (_E1135711455_))))
                            (_E1134311543_
                             (lambda ()
                               (if (gx#stx-pair? _e1134011372_)
                                   (let ((_e1134511498_
                                          (gx#syntax-e _e1134011372_)))
                                     (let ((_hd1134611501_
                                            (##car _e1134511498_))
                                           (_tl1134711503_
                                            (##cdr _e1134511498_)))
                                       (if (eq? (gx#stx-e _hd1134611501_)
                                                'spec:)
                                           (if (gx#stx-pair? _tl1134711503_)
                                               (let ((_e1134811506_
                                                      (gx#syntax-e
                                                       _tl1134711503_)))
                                                 (let ((_hd1134911509_
                                                        (##car _e1134811506_))
                                                       (_tl1135011511_
                                                        (##cdr _e1134811506_)))
                                                   (let ((_phi11514_
                                                          _hd1134911509_))
                                                     (if (gx#stx-pair?
                                                          _tl1135011511_)
                                                         (let ((_e1135111516_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1135011511_)))
                   (let ((_hd1135211519_ (##car _e1135111516_))
                         (_tl1135311521_ (##cdr _e1135111516_)))
                     (let ((_id11524_ _hd1135211519_))
                       (if (gx#stx-pair? _tl1135311521_)
                           (let ((_e1135411526_ (gx#syntax-e _tl1135311521_)))
                             (let ((_hd1135511529_ (##car _e1135411526_))
                                   (_tl1135611531_ (##cdr _e1135411526_)))
                               (let ((_name11534_ _hd1135511529_))
                                 (if (gx#stx-null? _tl1135611531_)
                                     (if (if (gx#stx-fixnum? _phi11514_)
                                             (if (gx#identifier? _id11524_)
                                                 (gx#identifier? _name11534_)
                                                 '#f)
                                             '#f)
                                         (let* ((_phi11536_
                                                 (gx#stx-e _phi11514_))
                                                (_$e11538_
                                                 (gx#core-resolve-identifier__1
                                                  _id11524_
                                                  _phi11536_)))
                                           (if _$e11538_
                                               ((lambda (_bind11541_)
                                                  (_K11337_
                                                   _rest11338_
                                                   (cons (_make-export__1461114612_
                                                          _bind11541_
                                                          _phi11536_
                                                          (gx#current-expander-context)
                                                          _name11534_)
                                                         _r11339_)))
                                                _$e11538_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Reference to unbound identifier"
                                                _stx11186_
                                                _hd11336_
                                                _id11524_)))
                                         (_E1134411494_))
                                     (_E1134411494_)))))
                           (_E1134411494_)))))
                 (_E1134411494_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E1134411494_))
                                           (_E1134411494_))))
                                   (_E1134411494_))))
                            (_E1134211554_
                             (lambda ()
                               (let ((_id11547_ _e1134011372_))
                                 (if (gx#identifier? _id11547_)
                                     (let ((_$e11549_
                                            (gx#core-resolve-identifier__1
                                             _id11547_
                                             (gx#current-export-expander-phi))))
                                       (if _$e11549_
                                           ((lambda (_bind11552_)
                                              (_K11337_
                                               _rest11338_
                                               (cons (_make-export__0__1461314616_
                                                      _bind11552_)
                                                     _r11339_)))
                                            _$e11549_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Reference to unbound identifier"
                                            _stx11186_
                                            _hd11336_)))
                                     (_E1134311543_)))))
                            (_E1134111618_
                             (lambda ()
                               (if (eq? (gx#stx-e _e1134011372_) '#t)
                                   (if '#t
                                       (let* ((_current-ctx11558_
                                               (gx#current-expander-context))
                                              (_current-phi11560_
                                               (gx#current-export-expander-phi))
                                              (_phi-ctx11562_
                                               (gx#core-context-shift
                                                _current-ctx11558_
                                                _current-phi11560_))
                                              (_phi-bind11564_
                                               (table->list
                                                (##structure-ref
                                                 _phi-ctx11562_
                                                 '2
                                                 gx#expander-context::t
                                                 '#f))))
                                         (let _lp11567_ ((_bind-rest11569_
                                                          _phi-bind11564_)
                                                         (_set11570_ '()))
                                           (let* ((_bind-rest1157111581_
                                                   _bind-rest11569_)
                                                  (_else1157311589_
                                                   (lambda ()
                                                     (_K11337_
                                                      _rest11338_
                                                      (cons (##structure
                                                             gx#export-set::t
                                                             '#f
                                                             _current-phi11560_
                                                             _set11570_)
                                                            _r11339_))))
                                                  (_K1157511599_
                                                   (lambda (_bind-rest11592_
                                                            _bind11593_
                                                            _key11594_)
                                                     (if (let ((_$e11596_
                                                                (##structure-direct-instance-of?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _bind11593_
                         'gx#import-binding::t)))
                   (if _$e11596_
                       _$e11596_
                       (gx#private-feature-binding? _bind11593_)))
                 (_lp11567_ _bind-rest11592_ _set11570_)
                 (_lp11567_
                  _bind-rest11592_
                  (cons (_make-export__2__1461514618_
                         _bind11593_
                         _current-phi11560_
                         _current-ctx11558_)
                        _set11570_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (##pair? _bind-rest1157111581_)
                                                 (let ((_hd1157611602_
                                                        (##car _bind-rest1157111581_))
                                                       (_tl1157711604_
                                                        (##cdr _bind-rest1157111581_)))
                                                   (if (##pair? _hd1157611602_)
                                                       (let ((_hd1157811607_
                                                              (##car _hd1157611602_))
                                                             (_tl1157911609_
                                                              (##cdr _hd1157611602_)))
                                                         (let* ((_key11612_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1157811607_)
                        (_bind11614_ _tl1157911609_)
                        (_bind-rest11616_ _tl1157711604_))
                   (_K1157511599_ _bind-rest11616_ _bind11614_ _key11612_)))
               (_else1157311589_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_else1157311589_)))))
                                       (_E1134211554_))
                                   (_E1134211554_)))))
                       (_E1134111618_))))
                  (_export-imports11191_
                   (lambda (_src11212_ _r11213_)
                     (letrec* ((_current-ctx11215_
                                (gx#current-expander-context))
                               (_current-phi11216_
                                (gx#current-export-expander-phi))
                               (_import->export11217_
                                (lambda (_in11298_)
                                  (let* ((_in1129911307_ _in11298_)
                                         (_E1130111311_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _in1129911307_)))
                                         (_K1130211318_
                                          (lambda (_phi11314_
                                                   _key11315_
                                                   _out11316_)
                                            (##structure
                                             gx#module-export::t
                                             _current-ctx11215_
                                             _key11315_
                                             _phi11314_
                                             _key11315_
                                             '#t))))
                                    (if (##structure-direct-instance-of?
                                         _in1129911307_
                                         'gx#module-import::t)
                                        (let* ((_e1130311321_
                                                (##vector-ref
                                                 _in1129911307_
                                                 '1))
                                               (_out11324_ _e1130311321_)
                                               (_e1130411326_
                                                (##vector-ref
                                                 _in1129911307_
                                                 '2))
                                               (_key11329_ _e1130411326_)
                                               (_e1130511331_
                                                (##vector-ref
                                                 _in1129911307_
                                                 '3))
                                               (_phi11334_ _e1130511331_))
                                          (_K1130211318_
                                           _phi11334_
                                           _key11329_
                                           _out11324_))
                                        (_E1130111311_)))))
                               (_fold-e11218_
                                (lambda (_in11220_ _r11221_)
                                  (let* ((_in1122211236_ _in11220_)
                                         (_else1122511244_
                                          (lambda () _r11221_)))
                                    (let ((_K1123111280_
                                           (lambda (_phi11276_
                                                    _key11277_
                                                    _out11278_)
                                             (if (if (fx= _phi11276_
                                                          _current-phi11216_)
                                                     (eq? _src11212_
                                                          (##direct-structure-ref
                                                           _out11278_
                                                           '1
                                                           gx#module-export::t
                                                           '#f))
                                                     '#f)
                                                 (cons (_import->export11217_
                                                        _in11220_)
                                                       _r11221_)
                                                 _r11221_)))
                                          (_K1122711255_
                                           (lambda (_imports11248_
                                                    _phi11249_
                                                    _ctx11250_)
                                             (if (if (fx= _phi11249_
                                                          _current-phi11216_)
                                                     (eq? _src11212_
                                                          _ctx11250_)
                                                     '#f)
                                                 (foldl1 (lambda (_in11252_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _r11253_)
                   (cons (_import->export11217_ _in11252_) _r11253_))
                 _r11221_
                 _imports11248_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _r11221_))))
                                      (let ((_try-match1122411273_
                                             (lambda ()
                                               (if (##structure-direct-instance-of?
                                                    _in1122211236_
                                                    'gx#import-set::t)
                                                   (let* ((_e1122811258_
                                                           (##vector-ref
                                                            _in1122211236_
                                                            '1))
                                                          (_e1122911263_
                                                           (##vector-ref
                                                            _in1122211236_
                                                            '2))
                                                          (_e1123011268_
                                                           (##vector-ref
                                                            _in1122211236_
                                                            '3)))
                                                     (let ((_ctx11261_
                                                            _e1122811258_)
                                                           (_phi11266_
                                                            _e1122911263_)
                                                           (_imports11271_
                                                            _e1123011268_))
                                                       (_K1122711255_
                                                        _imports11271_
                                                        _phi11266_
                                                        _ctx11261_)))
                                                   (_else1122511244_)))))
                                        (if (##structure-direct-instance-of?
                                             _in1122211236_
                                             'gx#module-import::t)
                                            (let* ((_e1123211283_
                                                    (##vector-ref
                                                     _in1122211236_
                                                     '1))
                                                   (_e1123311288_
                                                    (##vector-ref
                                                     _in1122211236_
                                                     '2))
                                                   (_e1123411293_
                                                    (##vector-ref
                                                     _in1122211236_
                                                     '3)))
                                              (let ((_out11286_ _e1123211283_)
                                                    (_key11291_ _e1123311288_)
                                                    (_phi11296_ _e1123411293_))
                                                (_K1123111280_
                                                 _phi11296_
                                                 _key11291_
                                                 _out11286_)))
                                            (_try-match1122411273_))))))))
                       (cons (##structure
                              gx#export-set::t
                              _src11212_
                              _current-phi11216_
                              (foldl1 _fold-e11218_
                                      '()
                                      (##structure-ref
                                       _current-ctx11215_
                                       '8
                                       gx#module-context::t
                                       '#f)))
                             _r11213_))))
                  (_export!11192_
                   (lambda (_rbody11202_)
                     (letrec* ((_current-ctx11204_
                                (gx#current-expander-context))
                               (_fold-e11205_
                                (lambda (_out11209_ _r11210_)
                                  (if (##structure-direct-instance-of?
                                       _out11209_
                                       'gx#module-export::t)
                                      (cons _out11209_ _r11210_)
                                      (if (##structure-direct-instance-of?
                                           _out11209_
                                           'gx#export-set::t)
                                          (foldl1 cons
                                                  _r11210_
                                                  (##direct-structure-ref
                                                   _out11209_
                                                   '3
                                                   gx#export-set::t
                                                   '#f))
                                          _r11210_)))))
                       (let ((_body11207_ (reverse _rbody11202_)))
                         (begin
                           (##structure-set!
                            _current-ctx11204_
                            (foldl1 _fold-e11205_
                                    (##structure-ref
                                     _current-ctx11204_
                                     '9
                                     gx#module-context::t
                                     '#f)
                                    _body11207_)
                            '9
                            gx#module-context::t
                            '#f)
                           _body11207_)))))
                  (_expanded-export?11193_
                   (lambda (_e11197_)
                     (let ((_$e11199_
                            (##structure-direct-instance-of?
                             _e11197_
                             'gx#module-export::t)))
                       (if _$e11199_
                           _$e11199_
                           (##structure-direct-instance-of?
                            _e11197_
                            'gx#export-set::t))))))
          (let ((_rbody11195_
                 (gx#core-expand-import/export
                  _stx11186_
                  _expanded-export?11193_
                  'apply-export-expander
                  gx#current-export-expander-phi
                  _expand111190_)))
            (if _internal-expand?11187_
                (reverse _rbody11195_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#export (_export!11192_ _rbody11195_))
                 (gx#stx-source _stx11186_)))))))
    (begin
      (define gx#core-expand-export%__0
        (lambda (_stx11668_)
          (let ((_internal-expand?11670_ '#f))
            (gx#core-expand-export%__% _stx11668_ _internal-expand?11670_))))
      (define gx#core-expand-export%
        (lambda _g14677_
          (let ((_g14676_ (length _g14677_)))
            (cond ((##fx= _g14676_ 1)
                   (apply gx#core-expand-export%__0 _g14677_))
                  ((##fx= _g14676_ 2)
                   (apply gx#core-expand-export%__% _g14677_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-expand-export%
                    _g14677_))))))))
  (define gx#core-expand-export-source
    (lambda (_hd11183_)
      (gx#core-expand-export%__%
       (cons 'export-macro% (cons _hd11183_ '()))
       '#t)))
  (define gx#core-expand-provide%
    (lambda (_stx11153_)
      (let* ((_e1115411161_ _stx11153_)
             (_E1115611165_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1115411161_)))
             (_E1115511179_
              (lambda ()
                (if (gx#stx-pair? _e1115411161_)
                    (let ((_e1115711169_ (gx#syntax-e _e1115411161_)))
                      (let ((_hd1115811172_ (##car _e1115711169_))
                            (_tl1115911174_ (##cdr _e1115711169_)))
                        (let ((_body11177_ _tl1115911174_))
                          (if (gx#identifier-list? _body11177_)
                              (begin
                                (gx#stx-for-each1
                                 gx#core-bind-feature!
                                 _body11177_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#provide
                                  (gx#stx-map1
                                   gx#core-quote-syntax
                                   _body11177_))
                                 (gx#stx-source _stx11153_)))
                              (_E1115611165_)))))
                    (_E1115611165_)))))
        (_E1115511179_))))
  (begin
    (define gx#core-bind-feature!__%
      (lambda (_id11119_ _private?11120_ _phi11121_ _ctx11122_)
        (gx#core-bind-syntax!__%
         _id11119_
         ((if _private?11120_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _id11119_))
         _private?11120_
         _phi11121_
         _ctx11122_)))
    (begin
      (define gx#core-bind-feature!__0
        (lambda (_id11127_)
          (let* ((_private?11129_ '#f)
                 (_phi11131_ (gx#current-expander-phi))
                 (_ctx11133_ (gx#current-expander-context)))
            (gx#core-bind-feature!__%
             _id11127_
             _private?11129_
             _phi11131_
             _ctx11133_))))
      (define gx#core-bind-feature!__1
        (lambda (_id11135_ _private?11136_)
          (let* ((_phi11138_ (gx#current-expander-phi))
                 (_ctx11140_ (gx#current-expander-context)))
            (gx#core-bind-feature!__%
             _id11135_
             _private?11136_
             _phi11138_
             _ctx11140_))))
      (define gx#core-bind-feature!__2
        (lambda (_id11142_ _private?11143_ _phi11144_)
          (let ((_ctx11146_ (gx#current-expander-context)))
            (gx#core-bind-feature!__%
             _id11142_
             _private?11143_
             _phi11144_
             _ctx11146_))))
      (define gx#core-bind-feature!
        (lambda _g14679_
          (let ((_g14678_ (length _g14679_)))
            (cond ((##fx= _g14678_ 1)
                   (apply gx#core-bind-feature!__0 _g14679_))
                  ((##fx= _g14678_ 2)
                   (apply gx#core-bind-feature!__1 _g14679_))
                  ((##fx= _g14678_ 3)
                   (apply gx#core-bind-feature!__2 _g14679_))
                  ((##fx= _g14678_ 4)
                   (apply gx#core-bind-feature!__% _g14679_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-feature!
                    _g14679_)))))))))
