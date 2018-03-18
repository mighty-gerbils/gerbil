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
    (lambda _$args14534_
      (apply make-struct-instance gx#module-import::t _$args14534_)))
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
    (lambda _$args14531_
      (apply make-struct-instance gx#module-export::t _$args14531_)))
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
    (lambda _$args14528_
      (apply make-struct-instance gx#import-set::t _$args14528_)))
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
    (lambda _$args14525_
      (apply make-struct-instance gx#export-set::t _$args14525_)))
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
    (lambda _$args14522_
      (apply make-class-instance gx#import-expander::t _$args14522_)))
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
    (lambda _$args14519_
      (apply make-class-instance gx#export-expander::t _$args14519_)))
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
    (lambda _$args14516_
      (apply make-class-instance gx#import-export-expander::t _$args14516_)))
  (define gx#current-import-expander-phi (make-parameter '#f))
  (define gx#current-export-expander-phi (make-parameter '#f))
  (define gx#current-module-reader-path (make-parameter '#f))
  (define gx#current-module-reader-args (make-parameter '#f))
  (define gx#module-context:::init!
    (lambda (_self14510_ _id14511_ _super14512_ _ns14513_ _path14514_)
      (if (##fx< '11 (##vector-length _self14510_))
          (begin
            (##vector-set! _self14510_ '1 _id14511_)
            (##vector-set! _self14510_ '2 (make-hash-table-eq))
            (##vector-set! _self14510_ '3 _super14512_)
            (##vector-set! _self14510_ '4 '#f)
            (##vector-set! _self14510_ '5 '#f)
            (##vector-set! _self14510_ '6 _ns14513_)
            (##vector-set! _self14510_ '7 _path14514_)
            (##vector-set! _self14510_ '8 '())
            (##vector-set! _self14510_ '9 '())
            (##vector-set! _self14510_ '10 '#f)
            (##vector-set! _self14510_ '11 '#f))
          (error '"struct-instance-init!: too many arguments for struct"
                 _self14510_))))
  (bind-method! gx#module-context::t ':init! gx#module-context:::init! '#f)
  (begin
    (define gx#prelude-context:::init!__%
      (lambda (_self14354_ _ctx14355_ _root14356_)
        (let ((_super14364_
               (let ((_$e14358_ _root14356_))
                 (if _$e14358_
                     _$e14358_
                     (let ((_$e14361_ (gx#core-context-root__0)))
                       (if _$e14361_
                           _$e14361_
                           (make-struct-instance gx#root-context::t)))))))
          (if _ctx14355_
              (let ((_id14367_
                     (##structure-ref
                      _ctx14355_
                      '1
                      gx#expander-context::t
                      '#f))
                    (_path14368_
                     (##structure-ref _ctx14355_ '7 gx#module-context::t '#f))
                    (_in14369_
                     (map gx#core-module-export->import
                          (##structure-ref
                           _ctx14355_
                           '9
                           gx#module-context::t
                           '#f)))
                    (_e14370_
                     (make-promise (lambda () (gx#eval-module _ctx14355_)))))
                (begin
                  (if (##fx< '8 (##vector-length _self14354_))
                      (begin
                        (##vector-set! _self14354_ '1 _id14367_)
                        (##vector-set! _self14354_ '2 (make-hash-table-eq))
                        (##vector-set! _self14354_ '3 _super14364_)
                        (##vector-set! _self14354_ '4 '#f)
                        (##vector-set! _self14354_ '5 '#f)
                        (##vector-set! _self14354_ '6 _path14368_)
                        (##vector-set! _self14354_ '7 _in14369_)
                        (##vector-set! _self14354_ '8 _e14370_))
                      (error '"struct-instance-init!: too many arguments for struct"
                             _self14354_))
                  (for-each
                   (lambda (_g1437114373_)
                     (gx#core-bind-weak-import!__% _g1437114373_ _self14354_))
                   _in14369_)))
              (if (##fx< '8 (##vector-length _self14354_))
                  (begin
                    (##vector-set! _self14354_ '1 '#f)
                    (##vector-set! _self14354_ '2 (make-hash-table-eq))
                    (##vector-set! _self14354_ '3 _super14364_)
                    (##vector-set! _self14354_ '4 '#f)
                    (##vector-set! _self14354_ '5 '#f)
                    (##vector-set! _self14354_ '6 '#f)
                    (##vector-set! _self14354_ '7 '())
                    (##vector-set! _self14354_ '8 '#f))
                  (error '"struct-instance-init!: too many arguments for struct"
                         _self14354_))))))
    (begin
      (define gx#prelude-context:::init!__0
        (lambda (_self14379_ _ctx14380_)
          (let ((_root14382_ '#f))
            (gx#prelude-context:::init!__%
             _self14379_
             _ctx14380_
             _root14382_))))
      (define gx#prelude-context:::init!
        (lambda _g14558_
          (let ((_g14557_ (length _g14558_)))
            (cond ((##fx= _g14557_ 2)
                   (apply gx#prelude-context:::init!__0 _g14558_))
                  ((##fx= _g14557_ 3)
                   (apply gx#prelude-context:::init!__% _g14558_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#prelude-context:::init!
                    _g14558_))))))))
  (bind-method! gx#prelude-context::t ':init! gx#prelude-context:::init! '#f)
  (define gx#import-export-expander-init!
    (lambda (_self14228_ _e14229_)
      (if (##fx< '3 (##vector-length _self14228_))
          (begin
            (##vector-set! _self14228_ '1 _e14229_)
            (##vector-set! _self14228_ '2 (gx#current-expander-context))
            (##vector-set! _self14228_ '3 (fx- (gx#current-expander-phi) '1)))
          (error '"struct-instance-init!: too many arguments for struct"
                 _self14228_))))
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
    (lambda (_g1385413857_ _g1385513859_)
      (gx#core-apply-user-expander__%
       _g1385413857_
       _g1385513859_
       'apply-import-expander)))
  (bind-method!
   gx#import-expander::t
   'apply-import-expander
   gx#import-expander::apply-import-expander
   '#f)
  (define gx#export-expander::apply-export-expander
    (lambda (_g1372513728_ _g1372613730_)
      (gx#core-apply-user-expander__%
       _g1372513728_
       _g1372613730_
       'apply-export-expander)))
  (bind-method!
   gx#export-expander::t
   'apply-export-expander
   gx#export-expander::apply-export-expander
   '#f)
  (define gx#module-source-path
    (lambda (_ctx13596_)
      (let* ((_path13598_
              (##structure-ref _ctx13596_ '7 gx#module-context::t '#f))
             (_path13600_
              (if (pair? _path13598_) (last _path13598_) _path13598_)))
        (if (string? _path13600_) _path13600_ '#f))))
  (begin
    (define gx#import-module__%
      (lambda (_path13572_ _reload?13573_ _eval?13574_)
        (let ((_ctx13576_
               ((gx#current-expander-module-import)
                _path13572_
                _reload?13573_)))
          (begin
            (if (if _ctx13576_ _eval?13574_ '#f)
                (gx#eval-module _ctx13576_)
                '#!void)
            _ctx13576_))))
    (begin
      (define gx#import-module__0
        (lambda (_path13581_)
          (let* ((_reload?13583_ '#f) (_eval?13585_ '#f))
            (gx#import-module__% _path13581_ _reload?13583_ _eval?13585_))))
      (define gx#import-module__1
        (lambda (_path13587_ _reload?13588_)
          (let ((_eval?13590_ '#f))
            (gx#import-module__% _path13587_ _reload?13588_ _eval?13590_))))
      (define gx#import-module
        (lambda _g14560_
          (let ((_g14559_ (length _g14560_)))
            (cond ((##fx= _g14559_ 1) (apply gx#import-module__0 _g14560_))
                  ((##fx= _g14559_ 2) (apply gx#import-module__1 _g14560_))
                  ((##fx= _g14559_ 3) (apply gx#import-module__% _g14560_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#import-module
                    _g14560_))))))))
  (define gx#eval-module
    (lambda (_mod13569_) ((gx#current-expander-module-eval) _mod13569_)))
  (define gx#core-eval-module
    (lambda (_obj13554_)
      (letrec ((_force-e13556_
                (lambda (_getf13565_ _e13566_)
                  (call-with-parameters
                   (lambda () (force (_getf13565_ _e13566_)))
                   gx#current-expander-context
                   _e13566_
                   gx#current-expander-phi
                   '0))))
        (let _recur13558_ ((_e13560_ _obj13554_))
          (if (##structure-instance-of? _e13560_ 'gx#module-context::t)
              (begin
                (let ((_$e13562_ (gx#core-context-prelude__% _e13560_)))
                  (if _$e13562_ (_recur13558_ _$e13562_) '#!void))
                (_force-e13556_ gx#module-context-e _e13560_))
              (if (##structure-instance-of? _e13560_ 'gx#prelude-context::t)
                  (_force-e13556_ gx#prelude-context-e _e13560_)
                  (if (gx#stx-string? _e13560_)
                      (_recur13558_
                       (gx#import-module__0
                        (gx#core-resolve-module-path__0 _e13560_)))
                      (if (gx#core-library-module-path? _e13560_)
                          (_recur13558_
                           (gx#import-module__0
                            (gx#core-resolve-library-module-path _e13560_)))
                          (error '"Cannot eval module" _obj13554_)))))))))
  (begin
    (define gx#core-context-prelude__%
      (lambda (_ctx13537_)
        (let _lp13539_ ((_e13541_ _ctx13537_))
          (if (let ((_$e13543_
                     (##structure-instance-of?
                      _e13541_
                      'gx#module-context::t)))
                (if _$e13543_
                    _$e13543_
                    (##structure-instance-of? _e13541_ 'gx#local-context::t)))
              (_lp13539_ (##structure-ref _e13541_ '3 gx#phi-context::t '#f))
              (if (##structure-instance-of? _e13541_ 'gx#prelude-context::t)
                  _e13541_
                  '#f)))))
    (begin
      (define gx#core-context-prelude__0
        (lambda ()
          (let ((_ctx13550_ (gx#current-expander-context)))
            (gx#core-context-prelude__% _ctx13550_))))
      (define gx#core-context-prelude
        (lambda _g14562_
          (let ((_g14561_ (length _g14562_)))
            (cond ((##fx= _g14561_ 0)
                   (apply gx#core-context-prelude__0 _g14562_))
                  ((##fx= _g14561_ 1)
                   (apply gx#core-context-prelude__% _g14562_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-context-prelude
                    _g14562_))))))))
  (define gx#core-module->prelude-context
    (lambda (_ctx13527_)
      (let* ((_ht13529_ (gx#current-expander-module-registry))
             (_$e13531_ (table-ref _ht13529_ _ctx13527_ '#f)))
        (if _$e13531_
            (values _$e13531_)
            (let ((_pre13534_
                   (let ((__obj14553 (make-object gx#prelude-context::t '8)))
                     (begin
                       (gx#prelude-context:::init!__0 __obj14553 _ctx13527_)
                       __obj14553))))
              (begin
                (table-set! _ht13529_ _ctx13527_ _pre13534_)
                _pre13534_))))))
  (begin
    (define gx#core-import-module__%
      (lambda (_rpath13408_ _reload?13409_)
        (letrec ((_import-source13411_
                  (lambda (_path13496_)
                    (begin
                      (if (member _path13496_ (gx#current-expander-path))
                          (error '"Cyclic expansion" _path13496_)
                          '#!void)
                      (call-with-parameters
                       (lambda ()
                         (let ((_g14563_ (gx#core-read-module _path13496_)))
                           (begin
                             (let ((_g14564_
                                    (if (##values? _g14563_)
                                        (##vector-length _g14563_)
                                        1)))
                               (if (not (##fx= _g14564_ 4))
                                   (error "Context expects 4 values"
                                          _g14564_)))
                             (let ((_pre13499_ (##vector-ref _g14563_ 0))
                                   (_id13500_ (##vector-ref _g14563_ 1))
                                   (_ns13501_ (##vector-ref _g14563_ 2))
                                   (_body13502_ (##vector-ref _g14563_ 3)))
                               (let* ((_prelude13507_
                                       (if (##structure-instance-of?
                                            _pre13499_
                                            'gx#prelude-context::t)
                                           _pre13499_
                                           (if (##structure-instance-of?
                                                _pre13499_
                                                'gx#module-context::t)
                                               (gx#core-module->prelude-context
                                                _pre13499_)
                                               (if (string? _pre13499_)
                                                   (gx#core-module->prelude-context
                                                    (gx#core-import-module__0
                                                     _pre13499_))
                                                   (if (not _pre13499_)
                                                       (let ((_$e13504_
                                                              (gx#current-expander-module-prelude)))
                                                         (if _$e13504_
                                                             _$e13504_
                                                             (let ((__obj14554
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (make-object gx#prelude-context::t '8)))
                       (begin
                         (gx#prelude-context:::init!__0 __obj14554 '#f)
                         __obj14554))))
               (error '"Cannot import module; unknown prelude"
                      _rpath13408_
                      _pre13499_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_ctx13509_
                                       (let ((__obj14555
                                              (make-object
                                               gx#module-context::t
                                               '11)))
                                         (begin
                                           (gx#module-context:::init!
                                            __obj14555
                                            _id13500_
                                            _prelude13507_
                                            _ns13501_
                                            _path13496_)
                                           __obj14555)))
                                      (_body13511_
                                       (gx#core-expand-module-begin
                                        _body13502_
                                        _ctx13509_))
                                      (_body13513_
                                       (gx#core-quote-syntax__%
                                        (gx#core-cons '%#begin _body13511_)
                                        _path13496_
                                        _ctx13509_
                                        '())))
                                 (begin
                                   (##structure-set!
                                    _ctx13509_
                                    (make-promise
                                     (lambda () (gx#eval-syntax* _body13513_)))
                                    '10
                                    gx#module-context::t
                                    '#f)
                                   (##structure-set!
                                    _ctx13509_
                                    _body13513_
                                    '11
                                    gx#module-context::t
                                    '#f)
                                   (table-set!
                                    (gx#current-expander-module-registry)
                                    _path13496_
                                    _ctx13509_)
                                   (table-set!
                                    (gx#current-expander-module-registry)
                                    _id13500_
                                    _ctx13509_)
                                   _ctx13509_))))))
                       gx#current-expander-context
                       (gx#core-context-root__0)
                       gx#current-expander-marks
                       '()
                       gx#current-expander-phi
                       '0
                       gx#current-expander-path
                       (cons _path13496_ (gx#current-expander-path))
                       gx#current-import-expander-phi
                       '#f
                       gx#current-export-expander-phi
                       '#f))))
                 (_import-submodule13412_
                  (lambda (_rpath13424_)
                    (let* ((_rpath1342513432_ _rpath13424_)
                           (_E1342713436_
                            (lambda ()
                              (error '"No clause matching" _rpath1342513432_)))
                           (_K1342813484_
                            (lambda (_refs13439_ _origin13440_)
                              (let ((_ctx13442_
                                     (if _origin13440_
                                         (gx#core-import-module__%
                                          _origin13440_
                                          _reload?13409_)
                                         (gx#current-expander-context))))
                                (let _lp13444_ ((_rest13446_ _refs13439_)
                                                (_ctx13447_ _ctx13442_))
                                  (let* ((_rest1344813456_ _rest13446_)
                                         (_else1345013464_
                                          (lambda () _ctx13447_))
                                         (_K1345213472_
                                          (lambda (_rest13467_ _id13468_)
                                            (let ((_bind13470_
                                                   (gx#resolve-identifier__%
                                                    _id13468_
                                                    '0
                                                    _ctx13447_)))
                                              (if (if (##structure-direct-instance-of?
                                                       _bind13470_
                                                       'gx#syntax-binding::t)
                                                      (##structure-instance-of?
                                                       (##direct-structure-ref
                                                        _bind13470_
                                                        '4
                                                        gx#syntax-binding::t
                                                        '#f)
                                                       'gx#module-context::t)
                                                      '#f)
                                                  (_lp13444_
                                                   _rest13467_
                                                   (##direct-structure-ref
                                                    _bind13470_
                                                    '4
                                                    gx#syntax-binding::t
                                                    '#f))
                                                  (error '"Cannot import submodule; not bound as a module"
                                                         _rpath13424_
                                                         _id13468_
                                                         _bind13470_))))))
                                    (if (##pair? _rest1344813456_)
                                        (let ((_hd1345313475_
                                               (##car _rest1344813456_))
                                              (_tl1345413477_
                                               (##cdr _rest1344813456_)))
                                          (let* ((_id13480_ _hd1345313475_)
                                                 (_rest13482_ _tl1345413477_))
                                            (_K1345213472_
                                             _rest13482_
                                             _id13480_)))
                                        (_else1345013464_))))))))
                      (if (##pair? _rpath1342513432_)
                          (let ((_hd1342913487_ (##car _rpath1342513432_))
                                (_tl1343013489_ (##cdr _rpath1342513432_)))
                            (let* ((_origin13492_ _hd1342913487_)
                                   (_refs13494_ _tl1343013489_))
                              (_K1342813484_ _refs13494_ _origin13492_)))
                          (_E1342713436_))))))
          (let ((_$e13414_
                 (if (not _reload?13409_)
                     (table-ref
                      (gx#current-expander-module-registry)
                      _rpath13408_
                      '#f)
                     '#f)))
            (if _$e13414_
                (values _$e13414_)
                (if (list? _rpath13408_)
                    (_import-submodule13412_ _rpath13408_)
                    (if (gx#core-library-module-path? _rpath13408_)
                        (let ((_ctx13417_
                               (gx#core-import-module__%
                                (gx#core-resolve-library-module-path
                                 _rpath13408_)
                                _reload?13409_)))
                          (begin
                            (table-set!
                             (gx#current-expander-module-registry)
                             _rpath13408_
                             _ctx13417_)
                            _ctx13417_))
                        (let* ((_npath13419_ (path-normalize _rpath13408_))
                               (_$e13421_
                                (if (not _reload?13409_)
                                    (table-ref
                                     (gx#current-expander-module-registry)
                                     _npath13419_
                                     '#f)
                                    '#f)))
                          (if _$e13421_
                              (values _$e13421_)
                              (_import-source13411_ _npath13419_))))))))))
    (begin
      (define gx#core-import-module__0
        (lambda (_rpath13520_)
          (let ((_reload?13522_ '#f))
            (gx#core-import-module__% _rpath13520_ _reload?13522_))))
      (define gx#core-import-module
        (lambda _g14566_
          (let ((_g14565_ (length _g14566_)))
            (cond ((##fx= _g14565_ 1)
                   (apply gx#core-import-module__0 _g14566_))
                  ((##fx= _g14565_ 2)
                   (apply gx#core-import-module__% _g14566_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-import-module
                    _g14566_))))))))
  (define gx#core-read-module
    (lambda (_path13402_)
      (with-exception-catcher
       (lambda (_exn13404_)
         (if (if (datum-parsing-exception? _exn13404_)
                 (eq? (datum-parsing-exception-filepos _exn13404_) '0)
                 '#f)
             (gx#core-read-module/lang _path13402_)
             (raise _exn13404_)))
       (lambda () (gx#core-read-module/sexp _path13402_)))))
  (define gx#core-read-module/sexp
    (lambda (_path13262_)
      (let _lp13264_ ((_body13266_ (read-syntax-from-file _path13262_))
                      (_pre13267_ '#f)
                      (_ns13268_ '#f)
                      (_pkg13269_ '#f))
        (let* ((_e1327013294_ _body13266_)
               (_E1328613316_
                (lambda ()
                  (let ((_g14567_
                         (if _pkg13269_
                             (values _pre13267_ _ns13268_ _pkg13269_)
                             (gx#core-read-module-package
                              _path13262_
                              _pre13267_
                              _ns13268_))))
                    (begin
                      (let ((_g14568_
                             (if (##values? _g14567_)
                                 (##vector-length _g14567_)
                                 1)))
                        (if (not (##fx= _g14568_ 3))
                            (error "Context expects 3 values" _g14568_)))
                      (let ((_pre13298_ (##vector-ref _g14567_ 0))
                            (_ns13299_ (##vector-ref _g14567_ 1))
                            (_pkg13300_ (##vector-ref _g14567_ 2)))
                        (let* ((_prelude13302_
                                (if (gx#core-bound-module-prelude? _pre13298_)
                                    (gx#syntax-local-e__0 _pre13298_)
                                    (if (gx#core-library-module-path?
                                         _pre13298_)
                                        (gx#core-resolve-library-module-path
                                         _pre13298_)
                                        (if (gx#stx-string? _pre13298_)
                                            (gx#core-resolve-module-path__%
                                             _pre13298_
                                             _path13262_)
                                            (gx#stx-e _pre13298_)))))
                               (_path-id13304_
                                (gx#core-module-path->namespace _path13262_))
                               (_pkg-id13306_
                                (if _pkg13300_
                                    (string-append
                                     _pkg13300_
                                     '"/"
                                     _path-id13304_)
                                    _path-id13304_))
                               (_module-id13308_
                                (string->symbol _pkg-id13306_))
                               (_module-ns13313_
                                (let ((_$e13310_ _ns13299_))
                                  (if _$e13310_ _$e13310_ _pkg-id13306_))))
                          (values _prelude13302_
                                  _module-id13308_
                                  _module-ns13313_
                                  _body13266_)))))))
               (_E1327913345_
                (lambda ()
                  (if (gx#stx-pair? _e1327013294_)
                      (let ((_e1328713320_ (gx#syntax-e _e1327013294_)))
                        (let ((_hd1328813323_ (##car _e1328713320_))
                              (_tl1328913325_ (##cdr _e1328713320_)))
                          (if (eq? (gx#stx-e _hd1328813323_) 'package:)
                              (if (gx#stx-pair? _tl1328913325_)
                                  (let ((_e1329013328_
                                         (gx#syntax-e _tl1328913325_)))
                                    (let ((_hd1329113331_
                                           (##car _e1329013328_))
                                          (_tl1329213333_
                                           (##cdr _e1329013328_)))
                                      (let* ((_pkg13336_ _hd1329113331_)
                                             (_rest13338_ _tl1329213333_))
                                        (if '#t
                                            (let ((_pkg13343_
                                                   (if (gx#identifier?
                                                        _pkg13336_)
                                                       (symbol->string
                                                        (gx#stx-e _pkg13336_))
                                                       (if (let ((_$e13340_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-string? _pkg13336_)))
                     (if _$e13340_ _$e13340_ (gx#stx-false? _pkg13336_)))
                   (gx#stx-e _pkg13336_)
                   (gx#raise-syntax-error
                    'import
                    '"Bad syntax; Illegal package name"
                    _pkg13336_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_lp13264_
                                               _rest13338_
                                               _pre13267_
                                               _ns13268_
                                               _pkg13343_))
                                            (_E1328613316_)))))
                                  (_E1328613316_))
                              (_E1328613316_))))
                      (_E1328613316_))))
               (_E1327213374_
                (lambda ()
                  (if (gx#stx-pair? _e1327013294_)
                      (let ((_e1328013349_ (gx#syntax-e _e1327013294_)))
                        (let ((_hd1328113352_ (##car _e1328013349_))
                              (_tl1328213354_ (##cdr _e1328013349_)))
                          (if (eq? (gx#stx-e _hd1328113352_) 'namespace:)
                              (if (gx#stx-pair? _tl1328213354_)
                                  (let ((_e1328313357_
                                         (gx#syntax-e _tl1328213354_)))
                                    (let ((_hd1328413360_
                                           (##car _e1328313357_))
                                          (_tl1328513362_
                                           (##cdr _e1328313357_)))
                                      (let* ((_ns13365_ _hd1328413360_)
                                             (_rest13367_ _tl1328513362_))
                                        (if '#t
                                            (let ((_ns13372_
                                                   (if (gx#identifier?
                                                        _ns13365_)
                                                       (symbol->string
                                                        (gx#stx-e _ns13365_))
                                                       (if (let ((_$e13369_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-string? _ns13365_)))
                     (if _$e13369_ _$e13369_ (gx#stx-false? _ns13365_)))
                   (gx#stx-e _ns13365_)
                   (gx#raise-syntax-error
                    'import
                    '"Bad syntax; illegal namespace"
                    _ns13365_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_lp13264_
                                               _rest13367_
                                               _pre13267_
                                               _ns13372_
                                               _pkg13269_))
                                            (_E1327913345_)))))
                                  (_E1327913345_))
                              (_E1327913345_))))
                      (_E1327913345_))))
               (_E1327113398_
                (lambda ()
                  (if (gx#stx-pair? _e1327013294_)
                      (let ((_e1327313378_ (gx#syntax-e _e1327013294_)))
                        (let ((_hd1327413381_ (##car _e1327313378_))
                              (_tl1327513383_ (##cdr _e1327313378_)))
                          (if (eq? (gx#stx-e _hd1327413381_) 'prelude:)
                              (if (gx#stx-pair? _tl1327513383_)
                                  (let ((_e1327613386_
                                         (gx#syntax-e _tl1327513383_)))
                                    (let ((_hd1327713389_
                                           (##car _e1327613386_))
                                          (_tl1327813391_
                                           (##cdr _e1327613386_)))
                                      (let* ((_prelude13394_ _hd1327713389_)
                                             (_rest13396_ _tl1327813391_))
                                        (if '#t
                                            (_lp13264_
                                             _rest13396_
                                             _prelude13394_
                                             _ns13268_
                                             _pkg13269_)
                                            (_E1327213374_)))))
                                  (_E1327213374_))
                              (_E1327213374_))))
                      (_E1327213374_)))))
          (_E1327113398_)))))
  (define gx#core-read-module/lang
    (lambda (_path13089_)
      (letrec ((_default-read-module-body13091_
                (lambda (_inp13254_)
                  (let _lp13256_ ((_body13258_ '()))
                    (let ((_next13260_ (read-syntax _inp13254_)))
                      (if (eof-object? _next13260_)
                          (reverse _body13258_)
                          (_lp13256_ (cons _next13260_ _body13258_)))))))
               (_read-body13092_
                (lambda (_inp13173_
                         _pre13174_
                         _ns13175_
                         _pkg13176_
                         _args13177_)
                  (let ((_g14569_
                         (if _pkg13176_
                             (values _pre13174_ _ns13175_ _pkg13176_)
                             (gx#core-read-module-package
                              _path13089_
                              _pre13174_
                              _ns13175_))))
                    (begin
                      (let ((_g14570_
                             (if (##values? _g14569_)
                                 (##vector-length _g14569_)
                                 1)))
                        (if (not (##fx= _g14570_ 3))
                            (error "Context expects 3 values" _g14570_)))
                      (let ((_pre13179_ (##vector-ref _g14569_ 0))
                            (_ns13180_ (##vector-ref _g14569_ 1))
                            (_pkg13181_ (##vector-ref _g14569_ 2)))
                        (let* ((_prelude13183_
                                (gx#import-module__0 _pre13179_))
                               (_read-module-body13237_
                                (let ((_$e13229_
                                       (find (lambda (_e1318413186_)
                                               (let* ((_g1318813198_
                                                       _e1318413186_)
                                                      (_else1319013206_
                                                       (lambda () '#f))
                                                      (_K1319213210_
                                                       (lambda () '#t)))
                                                 (if (##structure-direct-instance-of?
                                                      _g1318813198_
                                                      'gx#module-export::t)
                                                     (let* ((_e1319313213_
                                                             (##vector-ref
                                                              _g1318813198_
                                                              '1))
                                                            (_e1319413216_
                                                             (##vector-ref
                                                              _g1318813198_
                                                              '2))
                                                            (_e1319513219_
                                                             (##vector-ref
                                                              _g1318813198_
                                                              '3)))
                                                       (if (##eq? _e1319513219_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '1)
                   (let ((_e1319613222_ (##vector-ref _g1318813198_ '4)))
                     (if ((lambda (_g1322413226_)
                            (eq? _g1322413226_ 'read-module-body))
                          _e1319613222_)
                         (_K1319213210_)
                         (_else1319013206_)))
                   (_else1319013206_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_else1319013206_))))
                                             (##structure-ref
                                              _prelude13183_
                                              '9
                                              gx#module-context::t
                                              '#f))))
                                  (if _$e13229_
                                      ((lambda (_xport13232_)
                                         (let ((_proc13235_
                                                (with-exception-catcher
                                                 void
                                                 (lambda ()
                                                   (gx#eval-syntax__0
                                                    (##structure-ref
                                                     (gx#core-resolve-module-export
                                                      _xport13232_)
                                                     '1
                                                     gx#binding::t
                                                     '#f))))))
                                           (if (procedure? _proc13235_)
                                               _proc13235_
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Illegal #lang prelude; read-module-body is not a procedure"
                                                _path13089_
                                                _pre13179_
                                                _proc13235_))))
                                       _$e13229_)
                                      _default-read-module-body13091_)))
                               (_path-id13239_
                                (gx#core-module-path->namespace _path13089_))
                               (_pkg-id13241_
                                (if _pkg13181_
                                    (string-append
                                     _pkg13181_
                                     '"/"
                                     _path-id13239_)
                                    _path-id13239_))
                               (_module-id13243_
                                (string->symbol _pkg-id13241_))
                               (_module-ns13248_
                                (let ((_$e13245_ _ns13180_))
                                  (if _$e13245_ _$e13245_ _pkg-id13241_)))
                               (_body13251_
                                (call-with-parameters
                                 (lambda ()
                                   (_read-module-body13237_ _inp13173_))
                                 gx#current-module-reader-path
                                 _path13089_
                                 gx#current-module-reader-args
                                 _args13177_)))
                          (values _prelude13183_
                                  _module-id13243_
                                  _module-ns13248_
                                  _body13251_)))))))
               (_string-e13093_
                (lambda (_obj13170_ _what13171_)
                  (if (string? _obj13170_)
                      _obj13170_
                      (if (symbol? _obj13170_)
                          (symbol->string _obj13170_)
                          (gx#raise-syntax-error
                           '#f
                           (string-append '"Illegal module " _what13171_)
                           _path13089_
                           _obj13170_)))))
               (_read-lang-args13094_
                (lambda (_inp13125_ _args13126_)
                  (let* ((_args1312713135_ _args13126_)
                         (_else1312913143_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Illegal #lang arguments; missing prelude"
                             _path13089_)))
                         (_K1313113158_
                          (lambda (_args13146_ _prelude13147_)
                            (let* ((_pkg13149_ (pgetq 'package: _args13146_))
                                   (_pkg13151_
                                    (if _pkg13149_
                                        (_string-e13093_ _pkg13149_ '"package")
                                        '#f))
                                   (_ns13153_ (pgetq 'namespace: _args13146_))
                                   (_ns13155_
                                    (if _ns13153_
                                        (_string-e13093_
                                         _ns13153_
                                         '"namespace")
                                        '#f)))
                              (_read-body13092_
                               _inp13125_
                               _prelude13147_
                               _ns13155_
                               _pkg13151_
                               _args13146_)))))
                    (if (##pair? _args1312713135_)
                        (let ((_hd1313213161_ (##car _args1312713135_))
                              (_tl1313313163_ (##cdr _args1312713135_)))
                          (let* ((_prelude13166_ _hd1313213161_)
                                 (_args13168_ _tl1313313163_))
                            (_K1313113158_ _args13168_ _prelude13166_)))
                        (_else1312913143_)))))
               (_read-lang13095_
                (lambda (_inp13100_)
                  (let* ((_head13102_ (read-line _inp13100_))
                         (_$e13104_ (string-index _head13102_ '#\space)))
                    (if _$e13104_
                        ((lambda (_ix13107_)
                           (let ((_lang13109_
                                  (substring _head13102_ '0 _ix13107_)))
                             (if (equal? _lang13109_ '"#lang")
                                 (let* ((_rest13111_
                                         (substring
                                          _head13102_
                                          (fx+ _ix13107_ '1)
                                          (string-length _head13102_)))
                                        (_args13122_
                                         (with-exception-catcher
                                          (lambda (_g1311213114_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Illegal #lang arguments"
                                             _path13089_
                                             _g1311213114_))
                                          (lambda ()
                                            (call-with-input-string
                                             _rest13111_
                                             (lambda (_g1311713119_)
                                               (read-all
                                                _g1311713119_
                                                read)))))))
                                   (_read-lang-args13094_
                                    _inp13100_
                                    _args13122_))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Illegal module syntax"
                                  _path13089_))))
                         _$e13104_)
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module syntax"
                         _path13089_)))))
               (_read-e13096_
                (lambda (_inp13098_)
                  (if (eq? (peek-char _inp13098_) '#\#)
                      (_read-lang13095_ _inp13098_)
                      (gx#raise-syntax-error
                       '#f
                       '"Illegal module syntax"
                       _path13089_)))))
        (call-with-input-file _path13089_ _read-e13096_))))
  (define gx#core-read-module-package
    (lambda (_path13043_ _pre13044_ _ns13045_)
      (letrec ((_string-e13047_
                (lambda (_e13087_)
                  (if (symbol? _e13087_)
                      (symbol->string _e13087_)
                      (if (string? _e13087_)
                          _e13087_
                          (gx#raise-syntax-error
                           '#f
                           '"Malformed package info; unexpected datum"
                           _e13087_))))))
        (let _lp13049_ ((_dir13051_ (path-directory _path13043_))
                        (_pkg-path13052_ '()))
          (let ((_gerbil.pkg13054_ (path-expand '"gerbil.pkg" _dir13051_)))
            (if (file-exists? _gerbil.pkg13054_)
                (let ((_plist13056_
                       (gx#core-library-package-plist__% _dir13051_ '#t)))
                  (if (null? _plist13056_)
                      (let ((_pkg13058_
                             (if (not (null? _pkg-path13052_))
                                 (string-join _pkg-path13052_ '"/")
                                 '#f)))
                        (values _pre13044_ _ns13045_ _pkg13058_))
                      (if (list? _plist13056_)
                          (let* ((_root13060_ (pgetq 'package: _plist13056_))
                                 (_pkg13064_
                                  (let ((_pkg-path13062_
                                         (if _root13060_
                                             (cons (_string-e13047_
                                                    _root13060_)
                                                   _pkg-path13052_)
                                             _pkg-path13052_)))
                                    (if (not (null? _pkg-path13062_))
                                        (string-join _pkg-path13062_ '"/")
                                        '#f)))
                                 (_ns13071_
                                  (let ((_ns13069_
                                         (let ((_$e13066_ _ns13045_))
                                           (if _$e13066_
                                               _$e13066_
                                               (pgetq 'namespace:
                                                      _plist13056_)))))
                                    (if _ns13069_
                                        (_string-e13047_ _ns13069_)
                                        '#f)))
                                 (_pre13076_
                                  (let ((_$e13073_ _pre13044_))
                                    (if _$e13073_
                                        _$e13073_
                                        (pgetq 'prelude: _plist13056_)))))
                            (values _pre13076_ _ns13071_ _pkg13064_))
                          (gx#raise-syntax-error
                           '#f
                           '"Malformed package info; unexpected datum"
                           _plist13056_))))
                (let ((_dir*13079_
                       (path-strip-trailing-directory-separator _dir13051_)))
                  (if (let ((_$e13081_ (string-empty? _dir*13079_)))
                        (if _$e13081_
                            _$e13081_
                            (equal? _dir13051_ _dir*13079_)))
                      (values _pre13044_ _ns13045_ '#f)
                      (let ((_xpath13084_ (path-strip-directory _dir*13079_))
                            (_xdir13085_ (path-directory _dir*13079_)))
                        (_lp13049_
                         _xdir13085_
                         (cons _xpath13084_ _pkg-path13052_)))))))))))
  (define gx#core-module-path->namespace
    (lambda (_path13041_)
      (path-strip-extension (path-strip-directory _path13041_))))
  (define gx#core-module-path->id
    (lambda (_path13039_)
      (string->symbol (gx#core-module-path->namespace _path13039_))))
  (begin
    (define gx#core-resolve-module-path__%
      (lambda (_stx-path13018_ _rel13019_)
        (let* ((_path13021_ (gx#stx-e _stx-path13018_))
               (_path13023_
                (if (string-empty? (path-extension _path13021_))
                    (string-append _path13021_ '".ss")
                    _path13021_)))
          (gx#core-resolve-path__%
           _path13023_
           (let ((_$e13026_ (gx#stx-source _stx-path13018_)))
             (if _$e13026_ _$e13026_ _rel13019_))))))
    (begin
      (define gx#core-resolve-module-path__0
        (lambda (_stx-path13032_)
          (let ((_rel13034_ '#f))
            (gx#core-resolve-module-path__% _stx-path13032_ _rel13034_))))
      (define gx#core-resolve-module-path
        (lambda _g14572_
          (let ((_g14571_ (length _g14572_)))
            (cond ((##fx= _g14571_ 1)
                   (apply gx#core-resolve-module-path__0 _g14572_))
                  ((##fx= _g14571_ 2)
                   (apply gx#core-resolve-module-path__% _g14572_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-resolve-module-path
                    _g14572_))))))))
  (define gx#core-resolve-library-module-path
    (lambda (_libpath12945_)
      (let* ((_spath12947_ (symbol->string (gx#stx-e _libpath12945_)))
             (_spath12949_
              (substring _spath12947_ '1 (string-length _spath12947_)))
             (_ext12951_ (path-extension _spath12949_))
             (_ssi12953_
              (if (string-empty? _ext12951_)
                  (string-append _spath12949_ '".ssi")
                  (string-append (path-strip-extension _spath12949_) '".ssi")))
             (_src12955_
              (if (string-empty? _ext12951_)
                  (string-append _spath12949_ '".ss")
                  _spath12949_)))
        (let _lp12958_ ((_rest12960_
                         (gx#current-expander-module-library-path)))
          (let* ((_rest1296112970_ _rest12960_)
                 (_E1296412974_
                  (lambda () (error '"No clause matching" _rest1296112970_))))
            (let ((_K1296613005_
                   (lambda (_rest12985_ _dir12986_)
                     (letrec ((_resolve12988_
                               (lambda (_ssi12998_ _src12999_)
                                 (let ((_compiled-path13001_
                                        (path-expand _ssi12998_ _dir12986_)))
                                   (if (file-exists? _compiled-path13001_)
                                       (path-normalize _compiled-path13001_)
                                       (let ((_src-path13003_
                                              (path-expand
                                               _src12999_
                                               _dir12986_)))
                                         (if (file-exists? _src-path13003_)
                                             (path-normalize _src-path13003_)
                                             (_lp12958_ _rest12985_))))))))
                       (let ((_$e12990_
                              (gx#core-library-package-path-prefix
                               _dir12986_)))
                         (if _$e12990_
                             ((lambda (_prefix12993_)
                                (if (string-prefix? _spath12949_ _prefix12993_)
                                    (let ((_ssi12995_
                                           (substring
                                            _ssi12953_
                                            (string-length _prefix12993_)
                                            (string-length _ssi12953_)))
                                          (_src12996_
                                           (substring
                                            _src12955_
                                            (string-length _prefix12993_)
                                            (string-length _src12955_))))
                                      (_resolve12988_ _ssi12995_ _src12996_))
                                    (_lp12958_ _rest12985_)))
                              _$e12990_)
                             (_resolve12988_ _ssi12953_ _src12955_))))))
                  (_K1296512979_
                   (lambda ()
                     (gx#raise-syntax-error
                      '#f
                      '"Cannot find library module"
                      _libpath12945_))))
              (let ((_try-match1296312982_
                     (lambda ()
                       (if (##null? _rest1296112970_)
                           (let () (_K1296512979_))
                           (_E1296412974_)))))
                (if (##pair? _rest1296112970_)
                    (let ((_tl1296813010_ (##cdr _rest1296112970_))
                          (_hd1296713008_ (##car _rest1296112970_)))
                      (let ((_dir13013_ _hd1296713008_)
                            (_rest13015_ _tl1296813010_))
                        (_K1296613005_ _rest13015_ _dir13013_)))
                    (_try-match1296312982_)))))))))
  (define gx#core-library-package-path-prefix
    (lambda (_dir12938_)
      (let ((_$e12940_
             (pgetq 'package: (gx#core-library-package-plist__0 _dir12938_))))
        (if _$e12940_
            ((lambda (_pkg12943_)
               (string-append (symbol->string _pkg12943_) '"/"))
             _$e12940_)
            '#f))))
  (begin
    (define gx#core-library-package-plist__%
      (lambda (_dir12910_ _exists?12911_)
        (let* ((_cache12913_ (gx#core-library-package-cache))
               (_$e12915_ (table-ref _cache12913_ _dir12910_ '#f)))
          (if _$e12915_
              (values _$e12915_)
              (let* ((_gerbil.pkg12918_ (path-expand '"gerbil.pkg" _dir12910_))
                     (_plist12925_
                      (if (let ((_$e12920_ _exists?12911_))
                            (if _$e12920_
                                _$e12920_
                                (file-exists? _gerbil.pkg12918_)))
                          (let ((_e12923_
                                 (call-with-input-file
                                  _gerbil.pkg12918_
                                  read)))
                            (if (eof-object? _e12923_)
                                '()
                                (if (list? _e12923_)
                                    _e12923_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Malformed package info; unexpected datum"
                                     _gerbil.pkg12918_
                                     _e12923_))))
                          '())))
                (begin
                  (table-set! _cache12913_ _dir12910_ _plist12925_)
                  _plist12925_))))))
    (begin
      (define gx#core-library-package-plist__0
        (lambda (_dir12931_)
          (let ((_exists?12933_ '#f))
            (gx#core-library-package-plist__% _dir12931_ _exists?12933_))))
      (define gx#core-library-package-plist
        (lambda _g14574_
          (let ((_g14573_ (length _g14574_)))
            (cond ((##fx= _g14573_ 1)
                   (apply gx#core-library-package-plist__0 _g14574_))
                  ((##fx= _g14573_ 2)
                   (apply gx#core-library-package-plist__% _g14574_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-library-package-plist
                    _g14574_))))))))
  (define gx#core-library-package-cache
    (lambda ()
      (let ((_$e12904_ (gx#current-expander-module-library-package-cache)))
        (if _$e12904_
            (values _$e12904_)
            (let ((_cache12907_ (make-table)))
              (begin
                (gx#current-expander-module-library-package-cache _cache12907_)
                _cache12907_))))))
  (define gx#core-library-module-path?
    (lambda (_stx12901_) (gx#core-special-module-path? _stx12901_ '#\:)))
  (define gx#core-special-module-path?
    (lambda (_stx12896_ _char12897_)
      (if (gx#identifier? _stx12896_)
          (if (interned-symbol? (gx#stx-e _stx12896_))
              (let ((_str12899_ (symbol->string (gx#stx-e _stx12896_))))
                (if (fx> (string-length _str12899_) '1)
                    (eq? (string-ref _str12899_ '0) _char12897_)
                    '#f))
              '#f)
          '#f)))
  (define gx#core-bound-prelude?
    (lambda (_stx12890_)
      (gx#core-bound-identifier?__%
       _stx12890_
       (lambda (_g1289112893_)
         (gx#expander-binding?__% _g1289112893_ gx#prelude-context?)))))
  (define gx#core-bound-module?
    (lambda (_stx12884_)
      (gx#core-bound-identifier?__%
       _stx12884_
       (lambda (_g1288512887_)
         (gx#expander-binding?__% _g1288512887_ gx#module-context?)))))
  (define gx#core-bound-module-prelude?
    (lambda (_stx12871_)
      (letrec ((_module-prelude?12873_
                (lambda (_e12879_)
                  (let ((_$e12881_
                         (##structure-instance-of?
                          _e12879_
                          'gx#module-context::t)))
                    (if _$e12881_
                        _$e12881_
                        (##structure-instance-of?
                         _e12879_
                         'gx#prelude-context::t))))))
        (gx#core-bound-identifier?__%
         _stx12871_
         (lambda (_g1287412876_)
           (gx#expander-binding?__% _g1287412876_ _module-prelude?12873_))))))
  (begin
    (define gx#core-bind-import!__%
      (lambda (_in12801_ _ctx12802_ _force-weak?12803_)
        (let* ((_in1280412813_ _in12801_)
               (_E1280612817_
                (lambda () (error '"No clause matching" _in1280412813_)))
               (_K1280712830_
                (lambda (_weak?12820_ _phi12821_ _key12822_ _source12823_)
                  (gx#core-bind!__%
                   _key12822_
                   (let ((_e12825_
                          (gx#core-resolve-module-export _source12823_)))
                     (##structure
                      gx#import-binding::t
                      (##structure-ref _e12825_ '1 gx#binding::t '#f)
                      _key12822_
                      _phi12821_
                      _e12825_
                      (##direct-structure-ref
                       _source12823_
                       '1
                       gx#module-export::t
                       '#f)
                      (let ((_$e12827_ _force-weak?12803_))
                        (if _$e12827_ _$e12827_ _weak?12820_))))
                   gx#core-context-rebind?
                   _phi12821_
                   _ctx12802_))))
          (if (##structure-direct-instance-of?
               _in1280412813_
               'gx#module-import::t)
              (let* ((_e1280812833_ (##vector-ref _in1280412813_ '1))
                     (_source12836_ _e1280812833_)
                     (_e1280912838_ (##vector-ref _in1280412813_ '2))
                     (_key12841_ _e1280912838_)
                     (_e1281012843_ (##vector-ref _in1280412813_ '3))
                     (_phi12846_ _e1281012843_)
                     (_e1281112848_ (##vector-ref _in1280412813_ '4))
                     (_weak?12851_ _e1281112848_))
                (_K1280712830_
                 _weak?12851_
                 _phi12846_
                 _key12841_
                 _source12836_))
              (_E1280612817_)))))
    (begin
      (define gx#core-bind-import!__0
        (lambda (_in12856_)
          (let* ((_ctx12858_ (gx#current-expander-context))
                 (_force-weak?12860_ '#f))
            (gx#core-bind-import!__%
             _in12856_
             _ctx12858_
             _force-weak?12860_))))
      (define gx#core-bind-import!__1
        (lambda (_in12862_ _ctx12863_)
          (let ((_force-weak?12865_ '#f))
            (gx#core-bind-import!__%
             _in12862_
             _ctx12863_
             _force-weak?12865_))))
      (define gx#core-bind-import!
        (lambda _g14576_
          (let ((_g14575_ (length _g14576_)))
            (cond ((##fx= _g14575_ 1) (apply gx#core-bind-import!__0 _g14576_))
                  ((##fx= _g14575_ 2) (apply gx#core-bind-import!__1 _g14576_))
                  ((##fx= _g14575_ 3) (apply gx#core-bind-import!__% _g14576_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-import!
                    _g14576_))))))))
  (begin
    (define gx#core-bind-weak-import!__%
      (lambda (_in12787_ _ctx12788_)
        (gx#core-bind-import!__% _in12787_ _ctx12788_ '#t)))
    (begin
      (define gx#core-bind-weak-import!__0
        (lambda (_in12793_)
          (let ((_ctx12795_ (gx#current-expander-context)))
            (gx#core-bind-weak-import!__% _in12793_ _ctx12795_))))
      (define gx#core-bind-weak-import!
        (lambda _g14578_
          (let ((_g14577_ (length _g14578_)))
            (cond ((##fx= _g14577_ 1)
                   (apply gx#core-bind-weak-import!__0 _g14578_))
                  ((##fx= _g14577_ 2)
                   (apply gx#core-bind-weak-import!__% _g14578_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-weak-import!
                    _g14578_))))))))
  (define gx#core-resolve-module-export
    (lambda (_out12678_)
      (letrec ((_subst12680_
                (lambda (_key12726_)
                  (let* ((_key1272712735_ _key12726_)
                         (_else1272912743_ (lambda () _key12726_))
                         (_K1273112774_
                          (lambda (_mark12746_ _id12747_)
                            (let* ((_mark1274812754_ _mark12746_)
                                   (_E1275012758_
                                    (lambda ()
                                      (error '"No clause matching"
                                             _mark1274812754_)))
                                   (_K1275112766_
                                    (lambda (_subst12761_)
                                      (let ((_$e12763_
                                             (if _subst12761_
                                                 (table-ref
                                                  _subst12761_
                                                  _id12747_
                                                  '#f)
                                                 '#f)))
                                        (if _$e12763_
                                            _$e12763_
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Illegal key; missing substitution"
                                             _key12726_))))))
                              (if (##structure-instance-of?
                                   _mark1274812754_
                                   'gx#expander-mark::t)
                                  (let* ((_e1275212769_
                                          (##vector-ref _mark1274812754_ '1))
                                         (_subst12772_ _e1275212769_))
                                    (_K1275112766_ _subst12772_))
                                  (_E1275012758_))))))
                    (if (##pair? _key1272712735_)
                        (let ((_hd1273212777_ (##car _key1272712735_))
                              (_tl1273312779_ (##cdr _key1272712735_)))
                          (let* ((_id12782_ _hd1273212777_)
                                 (_mark12784_ _tl1273312779_))
                            (_K1273112774_ _mark12784_ _id12782_)))
                        (_else1272912743_))))))
        (let* ((_out1268112691_ _out12678_)
               (_E1268312695_
                (lambda () (error '"No clause matching" _out1268112691_)))
               (_K1268412702_
                (lambda (_phi12698_ _key12699_ _ctx12700_)
                  (gx#core-context-resolve
                   (gx#core-context-shift _ctx12700_ _phi12698_)
                   (_subst12680_ _key12699_)))))
          (if (##structure-direct-instance-of?
               _out1268112691_
               'gx#module-export::t)
              (let* ((_e1268512705_ (##vector-ref _out1268112691_ '1))
                     (_ctx12708_ _e1268512705_)
                     (_e1268612710_ (##vector-ref _out1268112691_ '2))
                     (_key12713_ _e1268612710_)
                     (_e1268712715_ (##vector-ref _out1268112691_ '3))
                     (_phi12718_ _e1268712715_)
                     (_e1268812720_ (##vector-ref _out1268112691_ '4))
                     (_e1268912723_ (##vector-ref _out1268112691_ '5)))
                (_K1268412702_ _phi12718_ _key12713_ _ctx12708_))
              (_E1268312695_))))))
  (begin
    (define gx#core-module-export->import__%
      (lambda (_out12603_ _rename12604_ _dphi12605_)
        (let* ((_out1260612616_ _out12603_)
               (_E1260812620_
                (lambda () (error '"No clause matching" _out1260612616_)))
               (_K1260912632_
                (lambda (_weak?12623_
                         _name12624_
                         _phi12625_
                         _key12626_
                         _ctx12627_)
                  (##structure
                   gx#module-import::t
                   _out12603_
                   (let ((_$e12629_ _rename12604_))
                     (if _$e12629_ _$e12629_ _name12624_))
                   (fx+ _phi12625_ _dphi12605_)
                   _weak?12623_))))
          (if (##structure-direct-instance-of?
               _out1260612616_
               'gx#module-export::t)
              (let* ((_e1261012635_ (##vector-ref _out1260612616_ '1))
                     (_ctx12638_ _e1261012635_)
                     (_e1261112640_ (##vector-ref _out1260612616_ '2))
                     (_key12643_ _e1261112640_)
                     (_e1261212645_ (##vector-ref _out1260612616_ '3))
                     (_phi12648_ _e1261212645_)
                     (_e1261312650_ (##vector-ref _out1260612616_ '4))
                     (_name12653_ _e1261312650_)
                     (_e1261412655_ (##vector-ref _out1260612616_ '5))
                     (_weak?12658_ _e1261412655_))
                (_K1260912632_
                 _weak?12658_
                 _name12653_
                 _phi12648_
                 _key12643_
                 _ctx12638_))
              (_E1260812620_)))))
    (begin
      (define gx#core-module-export->import__0
        (lambda (_out12663_)
          (let* ((_rename12665_ '#f) (_dphi12667_ '0))
            (gx#core-module-export->import__%
             _out12663_
             _rename12665_
             _dphi12667_))))
      (define gx#core-module-export->import__1
        (lambda (_out12669_ _rename12670_)
          (let ((_dphi12672_ '0))
            (gx#core-module-export->import__%
             _out12669_
             _rename12670_
             _dphi12672_))))
      (define gx#core-module-export->import
        (lambda _g14580_
          (let ((_g14579_ (length _g14580_)))
            (cond ((##fx= _g14579_ 1)
                   (apply gx#core-module-export->import__0 _g14580_))
                  ((##fx= _g14579_ 2)
                   (apply gx#core-module-export->import__1 _g14580_))
                  ((##fx= _g14579_ 3)
                   (apply gx#core-module-export->import__% _g14580_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-module-export->import
                    _g14580_))))))))
  (define gx#core-expand-module%
    (lambda (_stx12531_)
      (letrec ((_make-context12533_
                (lambda (_id12584_)
                  (let* ((_super12586_ (gx#current-expander-context))
                         (_bind-id12588_ (gx#stx-e _id12584_))
                         (_mod-id12590_
                          (if (##structure-instance-of?
                               _super12586_
                               'gx#module-context::t)
                              (make-symbol
                               (##structure-ref
                                _super12586_
                                '1
                                gx#expander-context::t
                                '#f)
                               '"$"
                               _bind-id12588_)
                              _bind-id12588_))
                         (_ns12592_ (symbol->string _mod-id12590_))
                         (_path12599_
                          (if (##structure-instance-of?
                               _super12586_
                               'gx#module-context::t)
                              (let ((_path12594_
                                     (##structure-ref
                                      _super12586_
                                      '7
                                      gx#module-context::t
                                      '#f)))
                                (if (let ((_$e12596_ (pair? _path12594_)))
                                      (if _$e12596_
                                          _$e12596_
                                          (null? _path12594_)))
                                    (cons _bind-id12588_ _path12594_)
                                    (if (not _path12594_)
                                        _bind-id12588_
                                        (cons _bind-id12588_
                                              (cons _path12594_ '())))))
                              _bind-id12588_)))
                    (let ((__obj14556 (make-object gx#module-context::t '11)))
                      (begin
                        (gx#module-context:::init!
                         __obj14556
                         _mod-id12590_
                         _super12586_
                         _ns12592_
                         _path12599_)
                        __obj14556))))))
        (let* ((_e1253412544_ _stx12531_)
               (_E1253612548_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1253412544_)))
               (_E1253512580_
                (lambda ()
                  (if (gx#stx-pair? _e1253412544_)
                      (let ((_e1253712552_ (gx#syntax-e _e1253412544_)))
                        (let ((_hd1253812555_ (##car _e1253712552_))
                              (_tl1253912557_ (##cdr _e1253712552_)))
                          (if (gx#stx-pair? _tl1253912557_)
                              (let ((_e1254012560_
                                     (gx#syntax-e _tl1253912557_)))
                                (let ((_hd1254112563_ (##car _e1254012560_))
                                      (_tl1254212565_ (##cdr _e1254012560_)))
                                  (let* ((_id12568_ _hd1254112563_)
                                         (_body12570_ _tl1254212565_))
                                    (if (if (gx#identifier? _id12568_)
                                            (gx#stx-list? _body12570_)
                                            '#f)
                                        (let* ((_ctx12572_
                                                (_make-context12533_
                                                 _id12568_))
                                               (_body12574_
                                                (gx#core-expand-module-begin
                                                 _body12570_
                                                 _ctx12572_))
                                               (_body12576_
                                                (gx#core-quote-syntax__1
                                                 (gx#core-cons
                                                  '%#begin
                                                  _body12574_)
                                                 (gx#stx-source _stx12531_))))
                                          (begin
                                            (##structure-set!
                                             _ctx12572_
                                             (make-promise
                                              (lambda ()
                                                (gx#eval-syntax* _body12576_)))
                                             '10
                                             gx#module-context::t
                                             '#f)
                                            (##structure-set!
                                             _ctx12572_
                                             _body12576_
                                             '11
                                             gx#module-context::t
                                             '#f)
                                            (gx#core-bind-syntax!__0
                                             _id12568_
                                             _ctx12572_)
                                            (gx#core-quote-syntax__1
                                             (gx#core-list
                                              '%#module
                                              (gx#core-quote-syntax__0
                                               _id12568_)
                                              _body12576_)
                                             (gx#stx-source _stx12531_))))
                                        (_E1253612548_)))))
                              (_E1253612548_))))
                      (_E1253612548_)))))
          (_E1253512580_)))))
  (define gx#core-expand-module-begin
    (lambda (_body12497_ _ctx12498_)
      (call-with-parameters
       (lambda ()
         (begin
           (gx#core-bind-feature!__1 'gerbil-module '#t)
           (let* ((_stx12501_
                   (gx#core-expand-head (cons '%%begin-module _body12497_)))
                  (_e1250212509_ _stx12501_)
                  (_E1250412513_
                   (lambda ()
                     (gx#raise-syntax-error
                      '#f
                      '"Illegal module body expansion"
                      _stx12501_)))
                  (_E1250312527_
                   (lambda ()
                     (if (gx#stx-pair? _e1250212509_)
                         (let ((_e1250512517_ (gx#syntax-e _e1250212509_)))
                           (let ((_hd1250612520_ (##car _e1250512517_))
                                 (_tl1250712522_ (##cdr _e1250512517_)))
                             (if (if (gx#identifier? _hd1250612520_)
                                     (gx#core-identifier=?
                                      _hd1250612520_
                                      '%#begin-module)
                                     '#f)
                                 (let ((_body12525_ _tl1250712522_))
                                   (if '#t
                                       (if (gx#sealed-syntax? _stx12501_)
                                           _body12525_
                                           (gx#core-expand-module-body
                                            _body12525_))
                                       (_E1250412513_)))
                                 (_E1250412513_))))
                         (_E1250412513_)))))
             (_E1250312527_))))
       gx#current-expander-context
       _ctx12498_
       gx#current-expander-phi
       '0)))
  (define gx#core-expand-module-body
    (lambda (_body12293_)
      (letrec ((_expand-special12295_
                (lambda (_hd12424_ _K12425_ _rest12426_ _r12427_)
                  (let* ((_e1242812445_ _hd12424_)
                         (_E1244012449_
                          (lambda ()
                            (_K12425_
                             _rest12426_
                             (cons (gx#core-expand-top _hd12424_) _r12427_))))
                         (_E1243012461_
                          (lambda ()
                            (if (gx#stx-pair? _e1242812445_)
                                (let ((_e1244112453_
                                       (gx#syntax-e _e1242812445_)))
                                  (let ((_hd1244212456_ (##car _e1244112453_))
                                        (_tl1244312458_ (##cdr _e1244112453_)))
                                    (if (if (gx#identifier? _hd1244212456_)
                                            (gx#core-identifier=?
                                             _hd1244212456_
                                             '%#export)
                                            '#f)
                                        (if '#t
                                            (_K12425_
                                             _rest12426_
                                             (cons _hd12424_ _r12427_))
                                            (_E1244012449_))
                                        (_E1244012449_))))
                                (_E1244012449_))))
                         (_E1242912493_
                          (lambda ()
                            (if (gx#stx-pair? _e1242812445_)
                                (let ((_e1243112465_
                                       (gx#syntax-e _e1242812445_)))
                                  (let ((_hd1243212468_ (##car _e1243112465_))
                                        (_tl1243312470_ (##cdr _e1243112465_)))
                                    (if (if (gx#identifier? _hd1243212468_)
                                            (gx#core-identifier=?
                                             _hd1243212468_
                                             '%#define-values)
                                            '#f)
                                        (if (gx#stx-pair? _tl1243312470_)
                                            (let ((_e1243412473_
                                                   (gx#syntax-e
                                                    _tl1243312470_)))
                                              (let ((_hd1243512476_
                                                     (##car _e1243412473_))
                                                    (_tl1243612478_
                                                     (##cdr _e1243412473_)))
                                                (let ((_hd-bind12481_
                                                       _hd1243512476_))
                                                  (if (gx#stx-pair?
                                                       _tl1243612478_)
                                                      (let ((_e1243712483_
                                                             (gx#syntax-e
                                                              _tl1243612478_)))
                                                        (let ((_hd1243812486_
                                                               (##car _e1243712483_))
                                                              (_tl1243912488_
                                                               (##cdr _e1243712483_)))
                                                          (let ((_expr12491_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1243812486_))
                    (if (gx#stx-null? _tl1243912488_)
                        (if (gx#core-bind-values? _hd-bind12481_)
                            (begin
                              (gx#core-bind-values!__0 _hd-bind12481_)
                              (_K12425_ _rest12426_ (cons _hd12424_ _r12427_)))
                            (_E1243012461_))
                        (_E1243012461_)))))
              (_E1243012461_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E1243012461_))
                                        (_E1243012461_))))
                                (_E1243012461_)))))
                    (_E1242912493_))))
               (_expand-body12296_
                (lambda (_rbody12298_)
                  (let _lp12300_ ((_rest12302_ _rbody12298_) (_body12303_ '()))
                    (let* ((_rest1230412312_ _rest12302_)
                           (_else1230612320_ (lambda () _body12303_))
                           (_K1230812412_
                            (lambda (_rest12323_ _hd12324_)
                              (let* ((_e1232512346_ _hd12324_)
                                     (_E1234112350_
                                      (lambda ()
                                        (_lp12300_
                                         _rest12323_
                                         (cons (gx#core-expand-expression
                                                _hd12324_)
                                               _body12303_))))
                                     (_E1233712364_
                                      (lambda ()
                                        (if (gx#stx-pair? _e1232512346_)
                                            (let ((_e1234212354_
                                                   (gx#syntax-e
                                                    _e1232512346_)))
                                              (let ((_hd1234312357_
                                                     (##car _e1234212354_))
                                                    (_tl1234412359_
                                                     (##cdr _e1234212354_)))
                                                (let ((_form12362_
                                                       _hd1234312357_))
                                                  (if (gx#core-bound-identifier?__%
                                                       _form12362_
                                                       gx#special-form-binding?)
                                                      (_lp12300_
                                                       _rest12323_
                                                       (cons _hd12324_
                                                             _body12303_))
                                                      (_E1234112350_)))))
                                            (_E1234112350_))))
                                     (_E1232712376_
                                      (lambda ()
                                        (if (gx#stx-pair? _e1232512346_)
                                            (let ((_e1233812368_
                                                   (gx#syntax-e
                                                    _e1232512346_)))
                                              (let ((_hd1233912371_
                                                     (##car _e1233812368_))
                                                    (_tl1234012373_
                                                     (##cdr _e1233812368_)))
                                                (if (if (gx#identifier?
                                                         _hd1233912371_)
                                                        (gx#core-identifier=?
                                                         _hd1233912371_
                                                         '%#export)
                                                        '#f)
                                                    (if '#t
                                                        (_lp12300_
                                                         _rest12323_
                                                         (cons (gx#core-expand-export%__0
                                                                _hd12324_)
                                                               _body12303_))
                                                        (_E1233712364_))
                                                    (_E1233712364_))))
                                            (_E1233712364_))))
                                     (_E1232612408_
                                      (lambda ()
                                        (if (gx#stx-pair? _e1232512346_)
                                            (let ((_e1232812380_
                                                   (gx#syntax-e
                                                    _e1232512346_)))
                                              (let ((_hd1232912383_
                                                     (##car _e1232812380_))
                                                    (_tl1233012385_
                                                     (##cdr _e1232812380_)))
                                                (if (if (gx#identifier?
                                                         _hd1232912383_)
                                                        (gx#core-identifier=?
                                                         _hd1232912383_
                                                         '%#define-values)
                                                        '#f)
                                                    (if (gx#stx-pair?
                                                         _tl1233012385_)
                                                        (let ((_e1233112388_
                                                               (gx#syntax-e
                                                                _tl1233012385_)))
                                                          (let ((_hd1233212391_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1233112388_))
                        (_tl1233312393_ (##cdr _e1233112388_)))
                    (let ((_hd-bind12396_ _hd1233212391_))
                      (if (gx#stx-pair? _tl1233312393_)
                          (let ((_e1233412398_ (gx#syntax-e _tl1233312393_)))
                            (let ((_hd1233512401_ (##car _e1233412398_))
                                  (_tl1233612403_ (##cdr _e1233412398_)))
                              (let ((_expr12406_ _hd1233512401_))
                                (if (gx#stx-null? _tl1233612403_)
                                    (if '#t
                                        (_lp12300_
                                         _rest12323_
                                         (cons (gx#core-quote-syntax__1
                                                (gx#core-list
                                                 '%#define-values
                                                 (gx#core-quote-bind-values
                                                  _hd-bind12396_)
                                                 (gx#core-expand-expression
                                                  _expr12406_))
                                                (gx#stx-source _hd12324_))
                                               _body12303_))
                                        (_E1232712376_))
                                    (_E1232712376_)))))
                          (_E1232712376_)))))
                (_E1232712376_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1232712376_))))
                                            (_E1232712376_)))))
                                (_E1232612408_)))))
                      (if (##pair? _rest1230412312_)
                          (let ((_hd1230912415_ (##car _rest1230412312_))
                                (_tl1231012417_ (##cdr _rest1230412312_)))
                            (let* ((_hd12420_ _hd1230912415_)
                                   (_rest12422_ _tl1231012417_))
                              (_K1230812412_ _rest12422_ _hd12420_)))
                          (_else1230612320_)))))))
        (_expand-body12296_
         (gx#core-expand-block__%
          (cons '%#begin-module _body12293_)
          _expand-special12295_
          '#f
          values)))))
  (define gx#core-expand-import/export
    (lambda (_stx12136_
             _expanded?12137_
             _method12138_
             _current-phi12139_
             _expand112140_)
      (letrec ((_K12142_
                (lambda (_rest12260_ _r12261_)
                  (let* ((_e1226212269_ _rest12260_)
                         (_E1226412273_ (lambda () _r12261_))
                         (_E1226312289_
                          (lambda ()
                            (if (gx#stx-pair? _e1226212269_)
                                (let ((_e1226512277_
                                       (gx#syntax-e _e1226212269_)))
                                  (let ((_hd1226612280_ (##car _e1226512277_))
                                        (_tl1226712282_ (##cdr _e1226512277_)))
                                    (let* ((_hd12285_ _hd1226612280_)
                                           (_rest12287_ _tl1226712282_))
                                      (if '#t
                                          (_step12143_
                                           _hd12285_
                                           _rest12287_
                                           _r12261_)
                                          (_E1226412273_)))))
                                (_E1226412273_)))))
                    (_E1226312289_))))
               (_step12143_
                (lambda (_hd12174_ _rest12175_ _r12176_)
                  (let* ((_e1217712195_ _hd12174_)
                         (_E1219012199_
                          (lambda ()
                            (if (_expanded?12137_ (gx#stx-e _hd12174_))
                                (_K12142_
                                 _rest12175_
                                 (cons (gx#stx-e _hd12174_) _r12176_))
                                (_expand112140_
                                 _hd12174_
                                 _K12142_
                                 _rest12175_
                                 _r12176_))))
                         (_E1218612215_
                          (lambda ()
                            (if (gx#stx-pair? _e1217712195_)
                                (let ((_e1219112203_
                                       (gx#syntax-e _e1217712195_)))
                                  (let ((_hd1219212206_ (##car _e1219112203_))
                                        (_tl1219312208_ (##cdr _e1219112203_)))
                                    (let* ((_macro12211_ _hd1219212206_)
                                           (_body12213_ _tl1219312208_))
                                      (if (gx#core-bound-identifier?__%
                                           _macro12211_
                                           gx#syntax-binding?)
                                          (_K12142_
                                           (cons (gx#core-apply-expander__%
                                                  (gx#syntax-local-e__0
                                                   _macro12211_)
                                                  _hd12174_
                                                  _method12138_)
                                                 _rest12175_)
                                           _r12176_)
                                          (_E1219012199_)))))
                                (_E1219012199_))))
                         (_E1217912229_
                          (lambda ()
                            (if (gx#stx-pair? _e1217712195_)
                                (let ((_e1218712219_
                                       (gx#syntax-e _e1217712195_)))
                                  (let ((_hd1218812222_ (##car _e1218712219_))
                                        (_tl1218912224_ (##cdr _e1218712219_)))
                                    (if (eq? (gx#stx-e _hd1218812222_) 'begin:)
                                        (let ((_body12227_ _tl1218912224_))
                                          (if '#t
                                              (_K12142_
                                               (gx#stx-foldr
                                                cons
                                                _rest12175_
                                                _body12227_)
                                               _r12176_)
                                              (_E1218612215_)))
                                        (_E1218612215_))))
                                (_E1218612215_))))
                         (_E1217812256_
                          (lambda ()
                            (if (gx#stx-pair? _e1217712195_)
                                (let ((_e1218012233_
                                       (gx#syntax-e _e1217712195_)))
                                  (let ((_hd1218112236_ (##car _e1218012233_))
                                        (_tl1218212238_ (##cdr _e1218012233_)))
                                    (if (eq? (gx#stx-e _hd1218112236_) 'phi:)
                                        (if (gx#stx-pair? _tl1218212238_)
                                            (let ((_e1218312241_
                                                   (gx#syntax-e
                                                    _tl1218212238_)))
                                              (let ((_hd1218412244_
                                                     (##car _e1218312241_))
                                                    (_tl1218512246_
                                                     (##cdr _e1218312241_)))
                                                (let* ((_dphi12249_
                                                        _hd1218412244_)
                                                       (_body12251_
                                                        _tl1218512246_))
                                                  (if (gx#stx-fixnum?
                                                       _dphi12249_)
                                                      (let ((_rbody12254_
                                                             (call-with-parameters
                                                              (lambda ()
                                                                (_K12142_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _body12251_
                         '()))
                      _current-phi12139_
                      (fx+ (gx#stx-e _dphi12249_) (_current-phi12139_)))))
                (_K12142_ _rest12175_ (foldr1 cons _r12176_ _rbody12254_)))
              (_E1217912229_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E1217912229_))
                                        (_E1217912229_))))
                                (_E1217912229_)))))
                    (_E1217812256_)))))
        (let* ((_e1214412151_ _stx12136_)
               (_E1214612155_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1214412151_)))
               (_E1214512170_
                (lambda ()
                  (if (gx#stx-pair? _e1214412151_)
                      (let ((_e1214712159_ (gx#syntax-e _e1214412151_)))
                        (let ((_hd1214812162_ (##car _e1214712159_))
                              (_tl1214912164_ (##cdr _e1214712159_)))
                          (let ((_body12167_ _tl1214912164_))
                            (if '#t
                                (if (_current-phi12139_)
                                    (_K12142_ _body12167_ '())
                                    (call-with-parameters
                                     (lambda () (_K12142_ _body12167_ '()))
                                     _current-phi12139_
                                     (gx#current-expander-phi)))
                                (_E1214612155_)))))
                      (_E1214612155_)))))
          (_E1214512170_)))))
  (begin
    (define gx#core-expand-import%__%
      (lambda (_stx11676_ _internal-expand?11677_)
        (letrec ((_expand111679_
                  (lambda (_hd12121_ _K12122_ _rest12123_ _r12124_)
                    (if (gx#core-bound-module? _hd12121_)
                        (_import111680_
                         (gx#syntax-local-e__0 _hd12121_)
                         _K12122_
                         _rest12123_
                         _r12124_)
                        (if (gx#core-library-module-path? _hd12121_)
                            (_import111680_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path _hd12121_))
                             _K12122_
                             _rest12123_
                             _r12124_)
                            (if (gx#stx-string? _hd12121_)
                                (_import111680_
                                 (gx#import-module__0
                                  (gx#core-resolve-module-path__%
                                   _hd12121_
                                   (gx#stx-source _stx11676_)))
                                 _K12122_
                                 _rest12123_
                                 _r12124_)
                                (if (##structure-instance-of?
                                     (gx#stx-e _hd12121_)
                                     'gx#module-context::t)
                                    (_K12122_
                                     _rest12123_
                                     (cons (gx#stx-e _hd12121_) _r12124_))
                                    (if (_import-spec?11681_ _hd12121_)
                                        (_import-spec11686_
                                         _hd12121_
                                         _K12122_
                                         _rest12123_
                                         _r12124_)
                                        (if (_import-submodule?11682_
                                             _hd12121_)
                                            (_import-submodule11684_
                                             _hd12121_
                                             _K12122_
                                             _rest12123_
                                             _r12124_)
                                            (if (_import-runtime?11683_
                                                 _hd12121_)
                                                (_import-runtime11685_
                                                 _hd12121_
                                                 _K12122_
                                                 _rest12123_
                                                 _r12124_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; illegal import"
                                                 _stx11676_
                                                 _hd12121_))))))))))
                 (_import111680_
                  (lambda (_ctx12110_ _K12111_ _rest12112_ _r12113_)
                    (let ((_dphi12115_
                           (fx- (gx#current-import-expander-phi)
                                (gx#current-expander-phi))))
                      (_K12111_
                       _rest12112_
                       (cons (##structure
                              gx#import-set::t
                              _ctx12110_
                              _dphi12115_
                              (map (lambda (_g1211612118_)
                                     (gx#core-module-export->import__%
                                      _g1211612118_
                                      '#f
                                      _dphi12115_))
                                   (##structure-ref
                                    _ctx12110_
                                    '9
                                    gx#module-context::t
                                    '#f)))
                             _r12113_)))))
                 (_import-spec?11681_
                  (lambda (_hd12067_)
                    (let* ((_e1206812078_ _hd12067_)
                           (_E1207012082_ (lambda () '#f))
                           (_E1206912106_
                            (lambda ()
                              (if (gx#stx-pair? _e1206812078_)
                                  (let ((_e1207112086_
                                         (gx#syntax-e _e1206812078_)))
                                    (let ((_hd1207212089_
                                           (##car _e1207112086_))
                                          (_tl1207312091_
                                           (##cdr _e1207112086_)))
                                      (if (eq? (gx#stx-e _hd1207212089_)
                                               'spec:)
                                          (if (gx#stx-pair? _tl1207312091_)
                                              (let ((_e1207412094_
                                                     (gx#syntax-e
                                                      _tl1207312091_)))
                                                (let ((_hd1207512097_
                                                       (##car _e1207412094_))
                                                      (_tl1207612099_
                                                       (##cdr _e1207412094_)))
                                                  (let* ((_spath12102_
                                                          _hd1207512097_)
                                                         (_specs12104_
                                                          _tl1207612099_))
                                                    (if '#t
                                                        '#t
                                                        (_E1207012082_)))))
                                              (_E1207012082_))
                                          (_E1207012082_))))
                                  (_E1207012082_)))))
                      (_E1206912106_))))
                 (_import-submodule?11682_
                  (lambda (_hd12024_)
                    (let* ((_e1202512035_ _hd12024_)
                           (_E1202712039_ (lambda () '#f))
                           (_E1202612063_
                            (lambda ()
                              (if (gx#stx-pair? _e1202512035_)
                                  (let ((_e1202812043_
                                         (gx#syntax-e _e1202512035_)))
                                    (let ((_hd1202912046_
                                           (##car _e1202812043_))
                                          (_tl1203012048_
                                           (##cdr _e1202812043_)))
                                      (if (eq? (gx#stx-e _hd1202912046_) 'in:)
                                          (if (gx#stx-pair? _tl1203012048_)
                                              (let ((_e1203112051_
                                                     (gx#syntax-e
                                                      _tl1203012048_)))
                                                (let ((_hd1203212054_
                                                       (##car _e1203112051_))
                                                      (_tl1203312056_
                                                       (##cdr _e1203112051_)))
                                                  (let* ((_top12059_
                                                          _hd1203212054_)
                                                         (_sub12061_
                                                          _tl1203312056_))
                                                    (if '#t
                                                        '#t
                                                        (_E1202712039_)))))
                                              (_E1202712039_))
                                          (_E1202712039_))))
                                  (_E1202712039_)))))
                      (_E1202612063_))))
                 (_import-runtime?11683_
                  (lambda (_hd11981_)
                    (let* ((_e1198211992_ _hd11981_)
                           (_E1198411996_ (lambda () '#f))
                           (_E1198312020_
                            (lambda ()
                              (if (gx#stx-pair? _e1198211992_)
                                  (let ((_e1198512000_
                                         (gx#syntax-e _e1198211992_)))
                                    (let ((_hd1198612003_
                                           (##car _e1198512000_))
                                          (_tl1198712005_
                                           (##cdr _e1198512000_)))
                                      (if (eq? (gx#stx-e _hd1198612003_)
                                               'runtime:)
                                          (if (gx#stx-pair? _tl1198712005_)
                                              (let ((_e1198812008_
                                                     (gx#syntax-e
                                                      _tl1198712005_)))
                                                (let ((_hd1198912011_
                                                       (##car _e1198812008_))
                                                      (_tl1199012013_
                                                       (##cdr _e1198812008_)))
                                                  (let* ((_top12016_
                                                          _hd1198912011_)
                                                         (_spath12018_
                                                          _tl1199012013_))
                                                    (if '#t
                                                        '#t
                                                        (_E1198411996_)))))
                                              (_E1198411996_))
                                          (_E1198411996_))))
                                  (_E1198411996_)))))
                      (_E1198312020_))))
                 (_import-submodule11684_
                  (lambda (_hd11948_ _K11949_ _rest11950_ _r11951_)
                    (let* ((_e1195211959_ _hd11948_)
                           (_E1195411963_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _e1195211959_)))
                           (_E1195311977_
                            (lambda ()
                              (if (gx#stx-pair? _e1195211959_)
                                  (let ((_e1195511967_
                                         (gx#syntax-e _e1195211959_)))
                                    (let ((_hd1195611970_
                                           (##car _e1195511967_))
                                          (_tl1195711972_
                                           (##cdr _e1195511967_)))
                                      (let ((_spath11975_ _tl1195711972_))
                                        (if '#t
                                            (_import111680_
                                             (_import-spec-source11687_
                                              _spath11975_)
                                             _K11949_
                                             _rest11950_
                                             _r11951_)
                                            (_E1195411963_)))))
                                  (_E1195411963_)))))
                      (_E1195311977_))))
                 (_import-runtime11685_
                  (lambda (_hd11915_ _K11916_ _rest11917_ _r11918_)
                    (let* ((_e1191911926_ _hd11915_)
                           (_E1192111930_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _e1191911926_)))
                           (_E1192011944_
                            (lambda ()
                              (if (gx#stx-pair? _e1191911926_)
                                  (let ((_e1192211934_
                                         (gx#syntax-e _e1191911926_)))
                                    (let ((_hd1192311937_
                                           (##car _e1192211934_))
                                          (_tl1192411939_
                                           (##cdr _e1192211934_)))
                                      (let ((_spath11942_ _tl1192411939_))
                                        (if '#t
                                            (_K11916_
                                             _rest11917_
                                             (cons (_import-spec-source11687_
                                                    _spath11942_)
                                                   _r11918_))
                                            (_E1192111930_)))))
                                  (_E1192111930_)))))
                      (_E1192011944_))))
                 (_import-spec11686_
                  (lambda (_hd11754_ _K11755_ _rest11756_ _r11757_)
                    (let* ((_e1175811775_ _hd11754_)
                           (_E1176711779_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _e1175811775_)))
                           (_E1176011889_
                            (lambda ()
                              (if (gx#stx-pair? _e1175811775_)
                                  (let ((_e1176811783_
                                         (gx#syntax-e _e1175811775_)))
                                    (let ((_hd1176911786_
                                           (##car _e1176811783_))
                                          (_tl1177011788_
                                           (##cdr _e1176811783_)))
                                      (if (gx#stx-pair? _tl1177011788_)
                                          (let ((_e1177111791_
                                                 (gx#syntax-e _tl1177011788_)))
                                            (let ((_hd1177211794_
                                                   (##car _e1177111791_))
                                                  (_tl1177311796_
                                                   (##cdr _e1177111791_)))
                                              (let* ((_path11799_
                                                      _hd1177211794_)
                                                     (_specs11801_
                                                      _tl1177311796_))
                                                (if '#t
                                                    (let ((_src-ctx11803_
                                                           (_import-spec-source11687_
                                                            _path11799_))
                                                          (_exports11804_
                                                           (make-table))
                                                          (_specs11805_
                                                           (gx#syntax->list
                                                            _specs11801_)))
                                                      (begin
                                                        (for-each
                                                         (lambda (_out11807_)
                                                           (table-set!
                                                            _exports11804_
                                                            (cons (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _out11807_
                           '3
                           gx#module-export::t
                           '#f)
                          (##direct-structure-ref
                           _out11807_
                           '4
                           gx#module-export::t
                           '#f))
                    _out11807_))
                 (##structure-ref _src-ctx11803_ '9 gx#module-context::t '#f))
                (_K11755_
                 _rest11756_
                 (foldl1 (lambda (_spec11809_ _r11810_)
                           (let* ((_e1181111827_ _spec11809_)
                                  (_E1181311831_
                                   (lambda ()
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _e1181111827_)))
                                  (_E1181211885_
                                   (lambda ()
                                     (if (gx#stx-pair? _e1181111827_)
                                         (let ((_e1181411835_
                                                (gx#syntax-e _e1181111827_)))
                                           (let ((_hd1181511838_
                                                  (##car _e1181411835_))
                                                 (_tl1181611840_
                                                  (##cdr _e1181411835_)))
                                             (let ((_phi11843_ _hd1181511838_))
                                               (if (gx#stx-pair?
                                                    _tl1181611840_)
                                                   (let ((_e1181711845_
                                                          (gx#syntax-e
                                                           _tl1181611840_)))
                                                     (let ((_hd1181811848_
                                                            (##car _e1181711845_))
                                                           (_tl1181911850_
                                                            (##cdr _e1181711845_)))
                                                       (let ((_name11853_
                                                              _hd1181811848_))
                                                         (if (gx#stx-pair?
                                                              _tl1181911850_)
                                                             (let ((_e1182011855_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _tl1181911850_)))
                       (let ((_hd1182111858_ (##car _e1182011855_))
                             (_tl1182211860_ (##cdr _e1182011855_)))
                         (let ((_src-phi11863_ _hd1182111858_))
                           (if (gx#stx-pair? _tl1182211860_)
                               (let ((_e1182311865_
                                      (gx#syntax-e _tl1182211860_)))
                                 (let ((_hd1182411868_ (##car _e1182311865_))
                                       (_tl1182511870_ (##cdr _e1182311865_)))
                                   (let ((_src-name11873_ _hd1182411868_))
                                     (if (gx#stx-null? _tl1182511870_)
                                         (if (if (gx#stx-fixnum?
                                                  _src-phi11863_)
                                                 (if (gx#identifier?
                                                      _src-name11873_)
                                                     (if (gx#stx-fixnum?
                                                          _phi11843_)
                                                         (gx#identifier?
                                                          _name11853_)
                                                         '#f)
                                                     '#f)
                                                 '#f)
                                             (let ((_src-phi11875_
                                                    (gx#stx-e _src-phi11863_))
                                                   (_src-name11876_
                                                    (gx#core-identifier-key
                                                     _src-name11873_))
                                                   (_phi11877_
                                                    (gx#stx-e _phi11843_))
                                                   (_name11878_
                                                    (gx#core-identifier-key
                                                     _name11853_)))
                                               (let ((_$e11880_
                                                      (table-ref
                                                       _exports11804_
                                                       (cons _src-phi11875_
                                                             _src-name11876_)
                                                       '#f)))
                                                 (if _$e11880_
                                                     ((lambda (_out11883_)
                                                        (cons (gx#core-module-export->import__%
                                                               _out11883_
                                                               _name11878_
                                                               (fx- _phi11877_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _src-phi11875_))
                      _r11810_))
              _$e11880_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; no matching export"
                                                      _stx11676_
                                                      _hd11754_))))
                                             (_E1181311831_))
                                         (_E1181311831_)))))
                               (_E1181311831_)))))
                     (_E1181311831_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1181311831_)))))
                                         (_E1181311831_)))))
                             (_E1181211885_)))
                         _r11757_
                         _specs11805_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1176711779_)))))
                                          (_E1176711779_))))
                                  (_E1176711779_))))
                           (_E1175911911_
                            (lambda ()
                              (if (gx#stx-pair? _e1175811775_)
                                  (let ((_e1176111893_
                                         (gx#syntax-e _e1175811775_)))
                                    (let ((_hd1176211896_
                                           (##car _e1176111893_))
                                          (_tl1176311898_
                                           (##cdr _e1176111893_)))
                                      (if (gx#stx-pair? _tl1176311898_)
                                          (let ((_e1176411901_
                                                 (gx#syntax-e _tl1176311898_)))
                                            (let ((_hd1176511904_
                                                   (##car _e1176411901_))
                                                  (_tl1176611906_
                                                   (##cdr _e1176411901_)))
                                              (let ((_path11909_
                                                     _hd1176511904_))
                                                (if (gx#stx-null?
                                                     _tl1176611906_)
                                                    (if '#t
                                                        (_K11755_
                                                         _rest11756_
                                                         (cons (_import-spec-source11687_
                                                                _path11909_)
                                                               _r11757_))
                                                        (_E1176011889_))
                                                    (_E1176011889_)))))
                                          (_E1176011889_))))
                                  (_E1176011889_)))))
                      (_E1175911911_))))
                 (_import-spec-source11687_
                  (lambda (_spath11752_)
                    (gx#core-import-nested-module _spath11752_ _stx11676_)))
                 (_import!11688_
                  (lambda (_rbody11701_)
                    (letrec* ((_current-ctx11703_
                               (gx#current-expander-context))
                              (_deps11704_ (make-hash-table-eq))
                              (_bind!11705_
                               (lambda (_hd11750_)
                                 (gx#core-bind-import!__1
                                  _hd11750_
                                  _current-ctx11703_))))
                      (let _lp11707_ ((_rest11709_ _rbody11701_)
                                      (_body11710_ '()))
                        (let* ((_rest1171111719_ _rest11709_)
                               (_else1171311729_
                                (lambda ()
                                  (begin
                                    (if (##structure-instance-of?
                                         _current-ctx11703_
                                         'gx#module-context::t)
                                        (##structure-set!
                                         _current-ctx11703_
                                         (foldl1 cons
                                                 (##structure-ref
                                                  _current-ctx11703_
                                                  '8
                                                  gx#module-context::t
                                                  '#f)
                                                 _body11710_)
                                         '8
                                         gx#module-context::t
                                         '#f)
                                        '#!void)
                                    (table-for-each
                                     (lambda (_ctx11727_ _g14581_)
                                       (gx#eval-module _ctx11727_))
                                     _deps11704_)
                                    _body11710_)))
                               (_K1171511738_
                                (lambda (_rest11732_ _hd11733_)
                                  (begin
                                    (if (##structure-direct-instance-of?
                                         _hd11733_
                                         'gx#module-import::t)
                                        (begin
                                          (_bind!11705_ _hd11733_)
                                          (if (if (fxpositive?
                                                   (##direct-structure-ref
                                                    _hd11733_
                                                    '3
                                                    gx#module-import::t
                                                    '#f))
                                                  (fxzero? (##direct-structure-ref
                                                            (##direct-structure-ref
                                                             _hd11733_
                                                             '1
                                                             gx#module-import::t
                                                             '#f)
                                                            '3
                                                            gx#module-export::t
                                                            '#f))
                                                  '#f)
                                              (table-set!
                                               _deps11704_
                                               (##direct-structure-ref
                                                (##direct-structure-ref
                                                 _hd11733_
                                                 '1
                                                 gx#module-import::t
                                                 '#f)
                                                '1
                                                gx#module-export::t
                                                '#f)
                                               '#t)
                                              '#!void))
                                        (if (##structure-direct-instance-of?
                                             _hd11733_
                                             'gx#import-set::t)
                                            (begin
                                              (for-each
                                               _bind!11705_
                                               (##direct-structure-ref
                                                _hd11733_
                                                '3
                                                gx#import-set::t
                                                '#f))
                                              (if (fxpositive?
                                                   (##direct-structure-ref
                                                    _hd11733_
                                                    '2
                                                    gx#import-set::t
                                                    '#f))
                                                  (table-set!
                                                   _deps11704_
                                                   (##direct-structure-ref
                                                    _hd11733_
                                                    '1
                                                    gx#import-set::t
                                                    '#f)
                                                   '#t)
                                                  '#!void))
                                            (let ((_$e11735_
                                                   (##structure-instance-of?
                                                    _hd11733_
                                                    'gx#module-context::t)))
                                              (if _$e11735_
                                                  (values _$e11735_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Unexpected import"
                                                   _stx11676_
                                                   _hd11733_)))))
                                    (_lp11707_
                                     _rest11732_
                                     (cons _hd11733_ _body11710_))))))
                          (if (##pair? _rest1171111719_)
                              (let ((_hd1171611741_ (##car _rest1171111719_))
                                    (_tl1171711743_ (##cdr _rest1171111719_)))
                                (let* ((_hd11746_ _hd1171611741_)
                                       (_rest11748_ _tl1171711743_))
                                  (_K1171511738_ _rest11748_ _hd11746_)))
                              (_else1171311729_)))))))
                 (_expanded-import?11689_
                  (lambda (_e11693_)
                    (let ((_$e11695_
                           (##structure-direct-instance-of?
                            _e11693_
                            'gx#import-set::t)))
                      (if _$e11695_
                          _$e11695_
                          (let ((_$e11698_
                                 (##structure-direct-instance-of?
                                  _e11693_
                                  'gx#module-import::t)))
                            (if _$e11698_
                                _$e11698_
                                (##structure-instance-of?
                                 _e11693_
                                 'gx#module-context::t))))))))
          (let ((_rbody11691_
                 (gx#core-expand-import/export
                  _stx11676_
                  _expanded-import?11689_
                  'apply-import-expander
                  gx#current-import-expander-phi
                  _expand111679_)))
            (if _internal-expand?11677_
                (reverse _rbody11691_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#import (_import!11688_ _rbody11691_))
                 (gx#stx-source _stx11676_)))))))
    (begin
      (define gx#core-expand-import%__0
        (lambda (_stx12129_)
          (let ((_internal-expand?12131_ '#f))
            (gx#core-expand-import%__% _stx12129_ _internal-expand?12131_))))
      (define gx#core-expand-import%
        (lambda _g14583_
          (let ((_g14582_ (length _g14583_)))
            (cond ((##fx= _g14582_ 1)
                   (apply gx#core-expand-import%__0 _g14583_))
                  ((##fx= _g14582_ 2)
                   (apply gx#core-expand-import%__% _g14583_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-expand-import%
                    _g14583_))))))))
  (define gx#core-import-nested-module
    (lambda (_spath11603_ _where11604_)
      (let* ((_e1160511612_ _spath11603_)
             (_E1160711616_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1160511612_)))
             (_E1160611671_
              (lambda ()
                (if (gx#stx-pair? _e1160511612_)
                    (let ((_e1160811620_ (gx#syntax-e _e1160511612_)))
                      (let ((_hd1160911623_ (##car _e1160811620_))
                            (_tl1161011625_ (##cdr _e1160811620_)))
                        (let* ((_origin11628_ _hd1160911623_)
                               (_sub11630_ _tl1161011625_))
                          (if '#t
                              (let ((_origin-ctx11632_
                                     (if (gx#stx-false? _origin11628_)
                                         (gx#current-expander-context)
                                         (gx#import-module__0 _origin11628_))))
                                (let _lp11634_ ((_rest11636_ _sub11630_)
                                                (_ctx11637_ _origin-ctx11632_))
                                  (let* ((_e1163811645_ _rest11636_)
                                         (_E1164011649_ (lambda () _ctx11637_))
                                         (_E1163911667_
                                          (lambda ()
                                            (if (gx#stx-pair? _e1163811645_)
                                                (let ((_e1164111653_
                                                       (gx#syntax-e
                                                        _e1163811645_)))
                                                  (let ((_hd1164211656_
                                                         (##car _e1164111653_))
                                                        (_tl1164311658_
                                                         (##cdr _e1164111653_)))
                                                    (let* ((_id11661_
                                                            _hd1164211656_)
                                                           (_rest11663_
                                                            _tl1164311658_))
                                                      (if '#t
                                                          (let ((_bind11665_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#resolve-identifier__% _id11661_ '0 _ctx11637_)))
                    (begin
                      (if (if (##structure-direct-instance-of?
                               _bind11665_
                               'gx#syntax-binding::t)
                              (##structure-instance-of?
                               (##direct-structure-ref
                                _bind11665_
                                '4
                                gx#syntax-binding::t
                                '#f)
                               'gx#module-context::t)
                              '#f)
                          '#!void
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; not bound as module"
                           _where11604_
                           _spath11603_
                           _id11661_))
                      (_lp11634_
                       _rest11663_
                       (##direct-structure-ref
                        _bind11665_
                        '4
                        gx#syntax-binding::t
                        '#f))))
                  (_E1164011649_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E1164011649_)))))
                                    (_E1163911667_))))
                              (_E1160711616_)))))
                    (_E1160711616_)))))
        (_E1160611671_))))
  (define gx#core-expand-import-source
    (lambda (_hd11601_)
      (gx#core-expand-import%__%
       (cons 'import-internal% (cons _hd11601_ '()))
       '#t)))
  (begin
    (define gx#core-expand-export%__%
      (lambda (_stx11112_ _internal-expand?11113_)
        (letrec* ((_make-export__1453714538_
                   (lambda (_bind11549_ _phi11550_ _ctx11551_ _name11552_)
                     (let* ((_key11554_
                             (##structure-ref
                              _bind11549_
                              '2
                              gx#binding::t
                              '#f))
                            (_export-key11556_
                             (if _name11552_
                                 (gx#core-identifier-key _name11552_)
                                 _key11554_)))
                       (##structure
                        gx#module-export::t
                        _ctx11551_
                        _key11554_
                        _phi11550_
                        _export-key11556_
                        (let ((_$e11559_
                               (##structure-instance-of?
                                _bind11549_
                                'gx#extern-binding::t)))
                          (if _$e11559_
                              _$e11559_
                              (##structure-direct-instance-of?
                               _bind11549_
                               'gx#import-binding::t)))))))
                  (_make-export__0__1453914542_
                   (lambda (_bind11565_)
                     (let* ((_phi11567_ (gx#current-export-expander-phi))
                            (_ctx11569_ (gx#current-expander-context))
                            (_name11571_ '#f))
                       (_make-export__1453714538_
                        _bind11565_
                        _phi11567_
                        _ctx11569_
                        _name11571_))))
                  (_make-export__1__1454014543_
                   (lambda (_bind11573_ _phi11574_)
                     (let* ((_ctx11576_ (gx#current-expander-context))
                            (_name11578_ '#f))
                       (_make-export__1453714538_
                        _bind11573_
                        _phi11574_
                        _ctx11576_
                        _name11578_))))
                  (_make-export__2__1454114544_
                   (lambda (_bind11580_ _phi11581_ _ctx11582_)
                     (let ((_name11584_ '#f))
                       (_make-export__1453714538_
                        _bind11580_
                        _phi11581_
                        _ctx11582_
                        _name11584_))))
                  (_make-export11115_
                   (lambda _g14585_
                     (let ((_g14584_ (length _g14585_)))
                       (cond ((##fx= _g14584_ 1)
                              (apply _make-export__0__1453914542_ _g14585_))
                             ((##fx= _g14584_ 2)
                              (apply _make-export__1__1454014543_ _g14585_))
                             ((##fx= _g14584_ 3)
                              (apply _make-export__2__1454114544_ _g14585_))
                             ((##fx= _g14584_ 4)
                              (apply _make-export__1453714538_ _g14585_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g14585_))))))
                  (_expand111116_
                   (lambda (_hd11262_ _K11263_ _rest11264_ _r11265_)
                     (let* ((_e1126611298_ _hd11262_)
                            (_E1129311302_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal export"
                                _stx11112_
                                _hd11262_)))
                            (_E1128311381_
                             (lambda ()
                               (if (gx#stx-pair? _e1126611298_)
                                   (let ((_e1129411306_
                                          (gx#syntax-e _e1126611298_)))
                                     (let ((_hd1129511309_
                                            (##car _e1129411306_))
                                           (_tl1129611311_
                                            (##cdr _e1129411306_)))
                                       (if (eq? (gx#stx-e _hd1129511309_)
                                                'import:)
                                           (let ((_in11314_ _tl1129611311_))
                                             (if (gx#stx-list? _in11314_)
                                                 (let _lp11316_ ((_in-rest11318_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _in11314_)
                         (_r11319_ _r11265_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_e1132011327_
                                                           _in-rest11318_)
                                                          (_E1132211331_
                                                           (lambda ()
                                                             (_K11263_
                                                              _rest11264_
                                                              _r11319_)))
                                                          (_E1132111377_
                                                           (lambda ()
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _e1132011327_)
                         (let ((_e1132311335_ (gx#syntax-e _e1132011327_)))
                           (let ((_hd1132411338_ (##car _e1132311335_))
                                 (_tl1132511340_ (##cdr _e1132311335_)))
                             (let* ((_hd11343_ _hd1132411338_)
                                    (_in-rest11345_ _tl1132511340_))
                               (if '#t
                                   (let ((_src11375_
                                          (if (gx#core-bound-module? _hd11343_)
                                              (gx#syntax-local-e__0 _hd11343_)
                                              (if (gx#core-library-module-path?
                                                   _hd11343_)
                                                  (gx#import-module__0
                                                   (gx#core-resolve-library-module-path
                                                    _hd11343_))
                                                  (if (gx#stx-string?
                                                       _hd11343_)
                                                      (gx#import-module__0
                                                       (gx#core-resolve-module-path__%
                                                        _hd11343_
                                                        (gx#stx-source
                                                         _stx11112_)))
                                                      (let* ((_e1134611353_
                                                              _hd11343_)
                                                             (_E1134811357_
                                                              (lambda ()
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; illegal re-export"
                         _stx11112_
                         _hd11343_)))
                     (_E1134711371_
                      (lambda ()
                        (if (gx#stx-pair? _e1134611353_)
                            (let ((_e1134911361_ (gx#syntax-e _e1134611353_)))
                              (let ((_hd1135011364_ (##car _e1134911361_))
                                    (_tl1135111366_ (##cdr _e1134911361_)))
                                (if (eq? (gx#stx-e _hd1135011364_) 'in:)
                                    (let ((_spath11369_ _tl1135111366_))
                                      (if '#t
                                          (gx#core-import-nested-module
                                           _spath11369_
                                           _stx11112_)
                                          (_E1134811357_)))
                                    (_E1134811357_))))
                            (_E1134811357_)))))
                (_E1134711371_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_lp11316_
                                      _in-rest11345_
                                      (_export-imports11117_
                                       _src11375_
                                       _r11319_)))
                                   (_E1132211331_)))))
                         (_E1132211331_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E1132111377_)))
                                                 (_E1129311302_)))
                                           (_E1129311302_))))
                                   (_E1129311302_))))
                            (_E1127011420_
                             (lambda ()
                               (if (gx#stx-pair? _e1126611298_)
                                   (let ((_e1128411385_
                                          (gx#syntax-e _e1126611298_)))
                                     (let ((_hd1128511388_
                                            (##car _e1128411385_))
                                           (_tl1128611390_
                                            (##cdr _e1128411385_)))
                                       (if (eq? (gx#stx-e _hd1128511388_)
                                                'rename:)
                                           (if (gx#stx-pair? _tl1128611390_)
                                               (let ((_e1128711393_
                                                      (gx#syntax-e
                                                       _tl1128611390_)))
                                                 (let ((_hd1128811396_
                                                        (##car _e1128711393_))
                                                       (_tl1128911398_
                                                        (##cdr _e1128711393_)))
                                                   (let ((_id11401_
                                                          _hd1128811396_))
                                                     (if (gx#stx-pair?
                                                          _tl1128911398_)
                                                         (let ((_e1129011403_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1128911398_)))
                   (let ((_hd1129111406_ (##car _e1129011403_))
                         (_tl1129211408_ (##cdr _e1129011403_)))
                     (let ((_name11411_ _hd1129111406_))
                       (if (gx#stx-null? _tl1129211408_)
                           (if '#t
                               (let* ((_phi11413_
                                       (gx#current-export-expander-phi))
                                      (_$e11415_
                                       (gx#core-resolve-identifier__1
                                        _id11401_
                                        _phi11413_)))
                                 (if _$e11415_
                                     ((lambda (_bind11418_)
                                        (_K11263_
                                         _rest11264_
                                         (cons (_make-export__1453714538_
                                                _bind11418_
                                                _phi11413_
                                                (gx#current-expander-context)
                                                _name11411_)
                                               _r11265_)))
                                      _$e11415_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Reference to unbound identifier"
                                      _stx11112_
                                      _hd11262_
                                      _id11401_)))
                               (_E1128311381_))
                           (_E1128311381_)))))
                 (_E1128311381_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E1128311381_))
                                           (_E1128311381_))))
                                   (_E1128311381_))))
                            (_E1126911469_
                             (lambda ()
                               (if (gx#stx-pair? _e1126611298_)
                                   (let ((_e1127111424_
                                          (gx#syntax-e _e1126611298_)))
                                     (let ((_hd1127211427_
                                            (##car _e1127111424_))
                                           (_tl1127311429_
                                            (##cdr _e1127111424_)))
                                       (if (eq? (gx#stx-e _hd1127211427_)
                                                'spec:)
                                           (if (gx#stx-pair? _tl1127311429_)
                                               (let ((_e1127411432_
                                                      (gx#syntax-e
                                                       _tl1127311429_)))
                                                 (let ((_hd1127511435_
                                                        (##car _e1127411432_))
                                                       (_tl1127611437_
                                                        (##cdr _e1127411432_)))
                                                   (let ((_phi11440_
                                                          _hd1127511435_))
                                                     (if (gx#stx-pair?
                                                          _tl1127611437_)
                                                         (let ((_e1127711442_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1127611437_)))
                   (let ((_hd1127811445_ (##car _e1127711442_))
                         (_tl1127911447_ (##cdr _e1127711442_)))
                     (let ((_id11450_ _hd1127811445_))
                       (if (gx#stx-pair? _tl1127911447_)
                           (let ((_e1128011452_ (gx#syntax-e _tl1127911447_)))
                             (let ((_hd1128111455_ (##car _e1128011452_))
                                   (_tl1128211457_ (##cdr _e1128011452_)))
                               (let ((_name11460_ _hd1128111455_))
                                 (if (gx#stx-null? _tl1128211457_)
                                     (if (if (gx#stx-fixnum? _phi11440_)
                                             (if (gx#identifier? _id11450_)
                                                 (gx#identifier? _name11460_)
                                                 '#f)
                                             '#f)
                                         (let* ((_phi11462_
                                                 (gx#stx-e _phi11440_))
                                                (_$e11464_
                                                 (gx#core-resolve-identifier__1
                                                  _id11450_
                                                  _phi11462_)))
                                           (if _$e11464_
                                               ((lambda (_bind11467_)
                                                  (_K11263_
                                                   _rest11264_
                                                   (cons (_make-export__1453714538_
                                                          _bind11467_
                                                          _phi11462_
                                                          (gx#current-expander-context)
                                                          _name11460_)
                                                         _r11265_)))
                                                _$e11464_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Reference to unbound identifier"
                                                _stx11112_
                                                _hd11262_
                                                _id11450_)))
                                         (_E1127011420_))
                                     (_E1127011420_)))))
                           (_E1127011420_)))))
                 (_E1127011420_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E1127011420_))
                                           (_E1127011420_))))
                                   (_E1127011420_))))
                            (_E1126811480_
                             (lambda ()
                               (let ((_id11473_ _e1126611298_))
                                 (if (gx#identifier? _id11473_)
                                     (let ((_$e11475_
                                            (gx#core-resolve-identifier__1
                                             _id11473_
                                             (gx#current-export-expander-phi))))
                                       (if _$e11475_
                                           ((lambda (_bind11478_)
                                              (_K11263_
                                               _rest11264_
                                               (cons (_make-export__0__1453914542_
                                                      _bind11478_)
                                                     _r11265_)))
                                            _$e11475_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Reference to unbound identifier"
                                            _stx11112_
                                            _hd11262_)))
                                     (_E1126911469_)))))
                            (_E1126711544_
                             (lambda ()
                               (if (eq? (gx#stx-e _e1126611298_) '#t)
                                   (if '#t
                                       (let* ((_current-ctx11484_
                                               (gx#current-expander-context))
                                              (_current-phi11486_
                                               (gx#current-export-expander-phi))
                                              (_phi-ctx11488_
                                               (gx#core-context-shift
                                                _current-ctx11484_
                                                _current-phi11486_))
                                              (_phi-bind11490_
                                               (table->list
                                                (##structure-ref
                                                 _phi-ctx11488_
                                                 '2
                                                 gx#expander-context::t
                                                 '#f))))
                                         (let _lp11493_ ((_bind-rest11495_
                                                          _phi-bind11490_)
                                                         (_set11496_ '()))
                                           (let* ((_bind-rest1149711507_
                                                   _bind-rest11495_)
                                                  (_else1149911515_
                                                   (lambda ()
                                                     (_K11263_
                                                      _rest11264_
                                                      (cons (##structure
                                                             gx#export-set::t
                                                             '#f
                                                             _current-phi11486_
                                                             _set11496_)
                                                            _r11265_))))
                                                  (_K1150111525_
                                                   (lambda (_bind-rest11518_
                                                            _bind11519_
                                                            _key11520_)
                                                     (if (let ((_$e11522_
                                                                (##structure-direct-instance-of?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _bind11519_
                         'gx#import-binding::t)))
                   (if _$e11522_
                       _$e11522_
                       (gx#private-feature-binding? _bind11519_)))
                 (_lp11493_ _bind-rest11518_ _set11496_)
                 (_lp11493_
                  _bind-rest11518_
                  (cons (_make-export__2__1454114544_
                         _bind11519_
                         _current-phi11486_
                         _current-ctx11484_)
                        _set11496_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (##pair? _bind-rest1149711507_)
                                                 (let ((_hd1150211528_
                                                        (##car _bind-rest1149711507_))
                                                       (_tl1150311530_
                                                        (##cdr _bind-rest1149711507_)))
                                                   (if (##pair? _hd1150211528_)
                                                       (let ((_hd1150411533_
                                                              (##car _hd1150211528_))
                                                             (_tl1150511535_
                                                              (##cdr _hd1150211528_)))
                                                         (let* ((_key11538_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1150411533_)
                        (_bind11540_ _tl1150511535_)
                        (_bind-rest11542_ _tl1150311530_))
                   (_K1150111525_ _bind-rest11542_ _bind11540_ _key11538_)))
               (_else1149911515_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_else1149911515_)))))
                                       (_E1126811480_))
                                   (_E1126811480_)))))
                       (_E1126711544_))))
                  (_export-imports11117_
                   (lambda (_src11138_ _r11139_)
                     (letrec* ((_current-ctx11141_
                                (gx#current-expander-context))
                               (_current-phi11142_
                                (gx#current-export-expander-phi))
                               (_import->export11143_
                                (lambda (_in11224_)
                                  (let* ((_in1122511233_ _in11224_)
                                         (_E1122711237_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _in1122511233_)))
                                         (_K1122811244_
                                          (lambda (_phi11240_
                                                   _key11241_
                                                   _out11242_)
                                            (##structure
                                             gx#module-export::t
                                             _current-ctx11141_
                                             _key11241_
                                             _phi11240_
                                             _key11241_
                                             '#t))))
                                    (if (##structure-direct-instance-of?
                                         _in1122511233_
                                         'gx#module-import::t)
                                        (let* ((_e1122911247_
                                                (##vector-ref
                                                 _in1122511233_
                                                 '1))
                                               (_out11250_ _e1122911247_)
                                               (_e1123011252_
                                                (##vector-ref
                                                 _in1122511233_
                                                 '2))
                                               (_key11255_ _e1123011252_)
                                               (_e1123111257_
                                                (##vector-ref
                                                 _in1122511233_
                                                 '3))
                                               (_phi11260_ _e1123111257_))
                                          (_K1122811244_
                                           _phi11260_
                                           _key11255_
                                           _out11250_))
                                        (_E1122711237_)))))
                               (_fold-e11144_
                                (lambda (_in11146_ _r11147_)
                                  (let* ((_in1114811162_ _in11146_)
                                         (_else1115111170_
                                          (lambda () _r11147_)))
                                    (let ((_K1115711206_
                                           (lambda (_phi11202_
                                                    _key11203_
                                                    _out11204_)
                                             (if (if (fx= _phi11202_
                                                          _current-phi11142_)
                                                     (eq? _src11138_
                                                          (##direct-structure-ref
                                                           _out11204_
                                                           '1
                                                           gx#module-export::t
                                                           '#f))
                                                     '#f)
                                                 (cons (_import->export11143_
                                                        _in11146_)
                                                       _r11147_)
                                                 _r11147_)))
                                          (_K1115311181_
                                           (lambda (_imports11174_
                                                    _phi11175_
                                                    _ctx11176_)
                                             (if (if (fx= _phi11175_
                                                          _current-phi11142_)
                                                     (eq? _src11138_
                                                          _ctx11176_)
                                                     '#f)
                                                 (foldl1 (lambda (_in11178_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _r11179_)
                   (cons (_import->export11143_ _in11178_) _r11179_))
                 _r11147_
                 _imports11174_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _r11147_))))
                                      (let ((_try-match1115011199_
                                             (lambda ()
                                               (if (##structure-direct-instance-of?
                                                    _in1114811162_
                                                    'gx#import-set::t)
                                                   (let* ((_e1115411184_
                                                           (##vector-ref
                                                            _in1114811162_
                                                            '1))
                                                          (_e1115511189_
                                                           (##vector-ref
                                                            _in1114811162_
                                                            '2))
                                                          (_e1115611194_
                                                           (##vector-ref
                                                            _in1114811162_
                                                            '3)))
                                                     (let ((_ctx11187_
                                                            _e1115411184_)
                                                           (_phi11192_
                                                            _e1115511189_)
                                                           (_imports11197_
                                                            _e1115611194_))
                                                       (_K1115311181_
                                                        _imports11197_
                                                        _phi11192_
                                                        _ctx11187_)))
                                                   (_else1115111170_)))))
                                        (if (##structure-direct-instance-of?
                                             _in1114811162_
                                             'gx#module-import::t)
                                            (let* ((_e1115811209_
                                                    (##vector-ref
                                                     _in1114811162_
                                                     '1))
                                                   (_e1115911214_
                                                    (##vector-ref
                                                     _in1114811162_
                                                     '2))
                                                   (_e1116011219_
                                                    (##vector-ref
                                                     _in1114811162_
                                                     '3)))
                                              (let ((_out11212_ _e1115811209_)
                                                    (_key11217_ _e1115911214_)
                                                    (_phi11222_ _e1116011219_))
                                                (_K1115711206_
                                                 _phi11222_
                                                 _key11217_
                                                 _out11212_)))
                                            (_try-match1115011199_))))))))
                       (cons (##structure
                              gx#export-set::t
                              _src11138_
                              _current-phi11142_
                              (foldl1 _fold-e11144_
                                      '()
                                      (##structure-ref
                                       _current-ctx11141_
                                       '8
                                       gx#module-context::t
                                       '#f)))
                             _r11139_))))
                  (_export!11118_
                   (lambda (_rbody11128_)
                     (letrec* ((_current-ctx11130_
                                (gx#current-expander-context))
                               (_fold-e11131_
                                (lambda (_out11135_ _r11136_)
                                  (if (##structure-direct-instance-of?
                                       _out11135_
                                       'gx#module-export::t)
                                      (cons _out11135_ _r11136_)
                                      (if (##structure-direct-instance-of?
                                           _out11135_
                                           'gx#export-set::t)
                                          (foldl1 cons
                                                  _r11136_
                                                  (##direct-structure-ref
                                                   _out11135_
                                                   '3
                                                   gx#export-set::t
                                                   '#f))
                                          _r11136_)))))
                       (let ((_body11133_ (reverse _rbody11128_)))
                         (begin
                           (##structure-set!
                            _current-ctx11130_
                            (foldl1 _fold-e11131_
                                    (##structure-ref
                                     _current-ctx11130_
                                     '9
                                     gx#module-context::t
                                     '#f)
                                    _body11133_)
                            '9
                            gx#module-context::t
                            '#f)
                           _body11133_)))))
                  (_expanded-export?11119_
                   (lambda (_e11123_)
                     (let ((_$e11125_
                            (##structure-direct-instance-of?
                             _e11123_
                             'gx#module-export::t)))
                       (if _$e11125_
                           _$e11125_
                           (##structure-direct-instance-of?
                            _e11123_
                            'gx#export-set::t))))))
          (let ((_rbody11121_
                 (gx#core-expand-import/export
                  _stx11112_
                  _expanded-export?11119_
                  'apply-export-expander
                  gx#current-export-expander-phi
                  _expand111116_)))
            (if _internal-expand?11113_
                (reverse _rbody11121_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#export (_export!11118_ _rbody11121_))
                 (gx#stx-source _stx11112_)))))))
    (begin
      (define gx#core-expand-export%__0
        (lambda (_stx11594_)
          (let ((_internal-expand?11596_ '#f))
            (gx#core-expand-export%__% _stx11594_ _internal-expand?11596_))))
      (define gx#core-expand-export%
        (lambda _g14587_
          (let ((_g14586_ (length _g14587_)))
            (cond ((##fx= _g14586_ 1)
                   (apply gx#core-expand-export%__0 _g14587_))
                  ((##fx= _g14586_ 2)
                   (apply gx#core-expand-export%__% _g14587_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-expand-export%
                    _g14587_))))))))
  (define gx#core-expand-export-source
    (lambda (_hd11109_)
      (gx#core-expand-export%__%
       (cons 'export-macro% (cons _hd11109_ '()))
       '#t)))
  (define gx#core-expand-provide%
    (lambda (_stx11079_)
      (let* ((_e1108011087_ _stx11079_)
             (_E1108211091_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1108011087_)))
             (_E1108111105_
              (lambda ()
                (if (gx#stx-pair? _e1108011087_)
                    (let ((_e1108311095_ (gx#syntax-e _e1108011087_)))
                      (let ((_hd1108411098_ (##car _e1108311095_))
                            (_tl1108511100_ (##cdr _e1108311095_)))
                        (let ((_body11103_ _tl1108511100_))
                          (if (gx#identifier-list? _body11103_)
                              (begin
                                (gx#stx-for-each1
                                 gx#core-bind-feature!
                                 _body11103_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#provide
                                  (gx#stx-map1
                                   gx#core-quote-syntax
                                   _body11103_))
                                 (gx#stx-source _stx11079_)))
                              (_E1108211091_)))))
                    (_E1108211091_)))))
        (_E1108111105_))))
  (begin
    (define gx#core-bind-feature!__%
      (lambda (_id11045_ _private?11046_ _phi11047_ _ctx11048_)
        (gx#core-bind-syntax!__%
         _id11045_
         ((if _private?11046_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _id11045_))
         _private?11046_
         _phi11047_
         _ctx11048_)))
    (begin
      (define gx#core-bind-feature!__0
        (lambda (_id11053_)
          (let* ((_private?11055_ '#f)
                 (_phi11057_ (gx#current-expander-phi))
                 (_ctx11059_ (gx#current-expander-context)))
            (gx#core-bind-feature!__%
             _id11053_
             _private?11055_
             _phi11057_
             _ctx11059_))))
      (define gx#core-bind-feature!__1
        (lambda (_id11061_ _private?11062_)
          (let* ((_phi11064_ (gx#current-expander-phi))
                 (_ctx11066_ (gx#current-expander-context)))
            (gx#core-bind-feature!__%
             _id11061_
             _private?11062_
             _phi11064_
             _ctx11066_))))
      (define gx#core-bind-feature!__2
        (lambda (_id11068_ _private?11069_ _phi11070_)
          (let ((_ctx11072_ (gx#current-expander-context)))
            (gx#core-bind-feature!__%
             _id11068_
             _private?11069_
             _phi11070_
             _ctx11072_))))
      (define gx#core-bind-feature!
        (lambda _g14589_
          (let ((_g14588_ (length _g14589_)))
            (cond ((##fx= _g14588_ 1)
                   (apply gx#core-bind-feature!__0 _g14589_))
                  ((##fx= _g14588_ 2)
                   (apply gx#core-bind-feature!__1 _g14589_))
                  ((##fx= _g14588_ 3)
                   (apply gx#core-bind-feature!__2 _g14589_))
                  ((##fx= _g14588_ 4)
                   (apply gx#core-bind-feature!__% _g14589_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-feature!
                    _g14589_)))))))))
