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
    (lambda _$args14686_
      (apply make-struct-instance gx#module-import::t _$args14686_)))
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
    (lambda _$args14683_
      (apply make-struct-instance gx#module-export::t _$args14683_)))
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
    (lambda _$args14680_
      (apply make-struct-instance gx#import-set::t _$args14680_)))
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
    (lambda _$args14677_
      (apply make-struct-instance gx#export-set::t _$args14677_)))
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
    (lambda _$args14674_
      (apply make-class-instance gx#import-expander::t _$args14674_)))
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
    (lambda _$args14671_
      (apply make-class-instance gx#export-expander::t _$args14671_)))
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
    (lambda _$args14668_
      (apply make-class-instance gx#import-export-expander::t _$args14668_)))
  (define gx#current-import-expander-phi (make-parameter '#f))
  (define gx#current-export-expander-phi (make-parameter '#f))
  (define gx#current-module-reader-path (make-parameter '#f))
  (define gx#current-module-reader-args (make-parameter '#f))
  (define gx#module-context:::init!
    (lambda (_self14662_ _id14663_ _super14664_ _ns14665_ _path14666_)
      (if (##fx< '11 (##vector-length _self14662_))
          (begin
            (##vector-set! _self14662_ '1 _id14663_)
            (##vector-set! _self14662_ '2 (make-hash-table-eq))
            (##vector-set! _self14662_ '3 _super14664_)
            (##vector-set! _self14662_ '4 '#f)
            (##vector-set! _self14662_ '5 '#f)
            (##vector-set! _self14662_ '6 _ns14665_)
            (##vector-set! _self14662_ '7 _path14666_)
            (##vector-set! _self14662_ '8 '())
            (##vector-set! _self14662_ '9 '())
            (##vector-set! _self14662_ '10 '#f)
            (##vector-set! _self14662_ '11 '#f))
          (error '"struct-instance-init!: too many arguments for struct"
                 _self14662_))))
  (bind-method! gx#module-context::t ':init! gx#module-context:::init! '#f)
  (begin
    (define gx#prelude-context:::init!__%
      (lambda (_self14506_ _ctx14507_ _root14508_)
        (let ((_super14516_
               (let ((_$e14510_ _root14508_))
                 (if _$e14510_
                     _$e14510_
                     (let ((_$e14513_ (gx#core-context-root__0)))
                       (if _$e14513_
                           _$e14513_
                           (make-struct-instance gx#root-context::t)))))))
          (if _ctx14507_
              (let ((_id14519_
                     (##structure-ref
                      _ctx14507_
                      '1
                      gx#expander-context::t
                      '#f))
                    (_path14520_
                     (##structure-ref _ctx14507_ '7 gx#module-context::t '#f))
                    (_in14521_
                     (map gx#core-module-export->import
                          (##structure-ref
                           _ctx14507_
                           '9
                           gx#module-context::t
                           '#f)))
                    (_e14522_
                     (make-promise (lambda () (gx#eval-module _ctx14507_)))))
                (begin
                  (if (##fx< '8 (##vector-length _self14506_))
                      (begin
                        (##vector-set! _self14506_ '1 _id14519_)
                        (##vector-set! _self14506_ '2 (make-hash-table-eq))
                        (##vector-set! _self14506_ '3 _super14516_)
                        (##vector-set! _self14506_ '4 '#f)
                        (##vector-set! _self14506_ '5 '#f)
                        (##vector-set! _self14506_ '6 _path14520_)
                        (##vector-set! _self14506_ '7 _in14521_)
                        (##vector-set! _self14506_ '8 _e14522_))
                      (error '"struct-instance-init!: too many arguments for struct"
                             _self14506_))
                  (for-each
                   (lambda (_g1452314525_)
                     (gx#core-bind-weak-import!__% _g1452314525_ _self14506_))
                   _in14521_)))
              (if (##fx< '8 (##vector-length _self14506_))
                  (begin
                    (##vector-set! _self14506_ '1 '#f)
                    (##vector-set! _self14506_ '2 (make-hash-table-eq))
                    (##vector-set! _self14506_ '3 _super14516_)
                    (##vector-set! _self14506_ '4 '#f)
                    (##vector-set! _self14506_ '5 '#f)
                    (##vector-set! _self14506_ '6 '#f)
                    (##vector-set! _self14506_ '7 '())
                    (##vector-set! _self14506_ '8 '#f))
                  (error '"struct-instance-init!: too many arguments for struct"
                         _self14506_))))))
    (begin
      (define gx#prelude-context:::init!__0
        (lambda (_self14531_ _ctx14532_)
          (let ((_root14534_ '#f))
            (gx#prelude-context:::init!__%
             _self14531_
             _ctx14532_
             _root14534_))))
      (define gx#prelude-context:::init!
        (lambda _g14726_
          (let ((_g14725_ (length _g14726_)))
            (cond ((##fx= _g14725_ 2)
                   (apply gx#prelude-context:::init!__0 _g14726_))
                  ((##fx= _g14725_ 3)
                   (apply gx#prelude-context:::init!__% _g14726_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#prelude-context:::init!
                    _g14726_))))))))
  (bind-method! gx#prelude-context::t ':init! gx#prelude-context:::init! '#f)
  (define gx#import-export-expander-init!
    (lambda (_self14380_ _e14381_)
      (if (##fx< '3 (##vector-length _self14380_))
          (begin
            (##vector-set! _self14380_ '1 _e14381_)
            (##vector-set! _self14380_ '2 (gx#current-expander-context))
            (##vector-set! _self14380_ '3 (fx- (gx#current-expander-phi) '1)))
          (error '"struct-instance-init!: too many arguments for struct"
                 _self14380_))))
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
    (lambda (_g1400614009_ _g1400714011_)
      (gx#core-apply-user-expander__%
       _g1400614009_
       _g1400714011_
       'apply-import-expander)))
  (bind-method!
   gx#import-expander::t
   'apply-import-expander
   gx#import-expander::apply-import-expander
   '#f)
  (define gx#export-expander::apply-export-expander
    (lambda (_g1387713880_ _g1387813882_)
      (gx#core-apply-user-expander__%
       _g1387713880_
       _g1387813882_
       'apply-export-expander)))
  (bind-method!
   gx#export-expander::t
   'apply-export-expander
   gx#export-expander::apply-export-expander
   '#f)
  (define gx#module-source-path
    (lambda (_ctx13748_)
      (let* ((_path13750_
              (##structure-ref _ctx13748_ '7 gx#module-context::t '#f))
             (_path13752_
              (if (pair? _path13750_) (last _path13750_) _path13750_)))
        (if (string? _path13752_) _path13752_ '#f))))
  (begin
    (define gx#import-module__%
      (lambda (_path13724_ _reload?13725_ _eval?13726_)
        (let ((_ctx13728_
               ((gx#current-expander-module-import)
                _path13724_
                _reload?13725_)))
          (begin
            (if (if _ctx13728_ _eval?13726_ '#f)
                (gx#eval-module _ctx13728_)
                '#!void)
            _ctx13728_))))
    (begin
      (define gx#import-module__0
        (lambda (_path13733_)
          (let* ((_reload?13735_ '#f) (_eval?13737_ '#f))
            (gx#import-module__% _path13733_ _reload?13735_ _eval?13737_))))
      (define gx#import-module__1
        (lambda (_path13739_ _reload?13740_)
          (let ((_eval?13742_ '#f))
            (gx#import-module__% _path13739_ _reload?13740_ _eval?13742_))))
      (define gx#import-module
        (lambda _g14728_
          (let ((_g14727_ (length _g14728_)))
            (cond ((##fx= _g14727_ 1) (apply gx#import-module__0 _g14728_))
                  ((##fx= _g14727_ 2) (apply gx#import-module__1 _g14728_))
                  ((##fx= _g14727_ 3) (apply gx#import-module__% _g14728_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#import-module
                    _g14728_))))))))
  (define gx#eval-module
    (lambda (_mod13721_) ((gx#current-expander-module-eval) _mod13721_)))
  (define gx#core-eval-module
    (lambda (_obj13706_)
      (letrec ((_force-e13708_
                (lambda (_getf13717_ _e13718_)
                  (call-with-parameters
                   (lambda () (force (_getf13717_ _e13718_)))
                   gx#current-expander-context
                   _e13718_
                   gx#current-expander-phi
                   '0))))
        (let _recur13710_ ((_e13712_ _obj13706_))
          (if (##structure-instance-of? _e13712_ 'gx#module-context::t)
              (begin
                (let ((_$e13714_ (gx#core-context-prelude__% _e13712_)))
                  (if _$e13714_ (_recur13710_ _$e13714_) '#!void))
                (_force-e13708_ gx#module-context-e _e13712_))
              (if (##structure-instance-of? _e13712_ 'gx#prelude-context::t)
                  (_force-e13708_ gx#prelude-context-e _e13712_)
                  (if (gx#stx-string? _e13712_)
                      (_recur13710_
                       (gx#import-module__0
                        (gx#core-resolve-module-path__0 _e13712_)))
                      (if (gx#core-library-module-path? _e13712_)
                          (_recur13710_
                           (gx#import-module__0
                            (gx#core-resolve-library-module-path _e13712_)))
                          (error '"Cannot eval module" _obj13706_)))))))))
  (begin
    (define gx#core-context-prelude__%
      (lambda (_ctx13689_)
        (let _lp13691_ ((_e13693_ _ctx13689_))
          (if (if (##structure-instance-of? _e13693_ 'gx#module-context::t)
                  '#t
                  (##structure-instance-of? _e13693_ 'gx#local-context::t))
              (_lp13691_ (##structure-ref _e13693_ '3 gx#phi-context::t '#f))
              (if (##structure-instance-of? _e13693_ 'gx#prelude-context::t)
                  _e13693_
                  '#f)))))
    (begin
      (define gx#core-context-prelude__0
        (lambda ()
          (let ((_ctx13702_ (gx#current-expander-context)))
            (gx#core-context-prelude__% _ctx13702_))))
      (define gx#core-context-prelude
        (lambda _g14730_
          (let ((_g14729_ (length _g14730_)))
            (cond ((##fx= _g14729_ 0)
                   (apply gx#core-context-prelude__0 _g14730_))
                  ((##fx= _g14729_ 1)
                   (apply gx#core-context-prelude__% _g14730_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-context-prelude
                    _g14730_))))))))
  (define gx#core-module->prelude-context
    (lambda (_ctx13679_)
      (let* ((_ht13681_ (gx#current-expander-module-registry))
             (_$e13683_ (table-ref _ht13681_ _ctx13679_ '#f)))
        (if _$e13683_
            (values _$e13683_)
            (let ((_pre13686_
                   (let ((__obj14721 (make-object gx#prelude-context::t '8)))
                     (begin
                       (gx#prelude-context:::init!__0 __obj14721 _ctx13679_)
                       __obj14721))))
              (begin
                (table-set! _ht13681_ _ctx13679_ _pre13686_)
                _pre13686_))))))
  (begin
    (define gx#core-import-module__%
      (lambda (_rpath13560_ _reload?13561_)
        (letrec ((_import-source13563_
                  (lambda (_path13648_)
                    (begin
                      (if (member _path13648_ (gx#current-expander-path))
                          (error '"Cyclic expansion" _path13648_)
                          '#!void)
                      (call-with-parameters
                       (lambda ()
                         (let ((_g14731_ (gx#core-read-module _path13648_)))
                           (begin
                             (let ((_g14732_
                                    (if (##values? _g14731_)
                                        (##vector-length _g14731_)
                                        1)))
                               (if (not (##fx= _g14732_ 4))
                                   (error "Context expects 4 values"
                                          _g14732_)))
                             (let ((_pre13651_ (##vector-ref _g14731_ 0))
                                   (_id13652_ (##vector-ref _g14731_ 1))
                                   (_ns13653_ (##vector-ref _g14731_ 2))
                                   (_body13654_ (##vector-ref _g14731_ 3)))
                               (let* ((_prelude13659_
                                       (if (##structure-instance-of?
                                            _pre13651_
                                            'gx#prelude-context::t)
                                           _pre13651_
                                           (if (##structure-instance-of?
                                                _pre13651_
                                                'gx#module-context::t)
                                               (gx#core-module->prelude-context
                                                _pre13651_)
                                               (if (string? _pre13651_)
                                                   (gx#core-module->prelude-context
                                                    (gx#core-import-module__0
                                                     _pre13651_))
                                                   (if (not _pre13651_)
                                                       (let ((_$e13656_
                                                              (gx#current-expander-module-prelude)))
                                                         (if _$e13656_
                                                             _$e13656_
                                                             (let ((__obj14722
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (make-object gx#prelude-context::t '8)))
                       (begin
                         (gx#prelude-context:::init!__0 __obj14722 '#f)
                         __obj14722))))
               (error '"Cannot import module; unknown prelude"
                      _rpath13560_
                      _pre13651_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_ctx13661_
                                       (let ((__obj14723
                                              (make-object
                                               gx#module-context::t
                                               '11)))
                                         (begin
                                           (gx#module-context:::init!
                                            __obj14723
                                            _id13652_
                                            _prelude13659_
                                            _ns13653_
                                            _path13648_)
                                           __obj14723)))
                                      (_body13663_
                                       (gx#core-expand-module-begin
                                        _body13654_
                                        _ctx13661_))
                                      (_body13665_
                                       (gx#core-quote-syntax__%
                                        (gx#core-cons '%#begin _body13663_)
                                        _path13648_
                                        _ctx13661_
                                        '())))
                                 (begin
                                   (##structure-set!
                                    _ctx13661_
                                    (make-promise
                                     (lambda () (gx#eval-syntax* _body13665_)))
                                    '10
                                    gx#module-context::t
                                    '#f)
                                   (##structure-set!
                                    _ctx13661_
                                    _body13665_
                                    '11
                                    gx#module-context::t
                                    '#f)
                                   (table-set!
                                    (gx#current-expander-module-registry)
                                    _path13648_
                                    _ctx13661_)
                                   (table-set!
                                    (gx#current-expander-module-registry)
                                    _id13652_
                                    _ctx13661_)
                                   _ctx13661_))))))
                       gx#current-expander-context
                       (gx#core-context-root__0)
                       gx#current-expander-marks
                       '()
                       gx#current-expander-phi
                       '0
                       gx#current-expander-path
                       (cons _path13648_ (gx#current-expander-path))
                       gx#current-import-expander-phi
                       '#f
                       gx#current-export-expander-phi
                       '#f))))
                 (_import-submodule13564_
                  (lambda (_rpath13576_)
                    (let* ((_rpath1357713584_ _rpath13576_)
                           (_E1357913588_
                            (lambda ()
                              (error '"No clause matching" _rpath1357713584_)))
                           (_K1358013636_
                            (lambda (_refs13591_ _origin13592_)
                              (let ((_ctx13594_
                                     (if _origin13592_
                                         (gx#core-import-module__%
                                          _origin13592_
                                          _reload?13561_)
                                         (gx#current-expander-context))))
                                (let _lp13596_ ((_rest13598_ _refs13591_)
                                                (_ctx13599_ _ctx13594_))
                                  (let* ((_rest1360013608_ _rest13598_)
                                         (_else1360213616_
                                          (lambda () _ctx13599_))
                                         (_K1360413624_
                                          (lambda (_rest13619_ _id13620_)
                                            (let ((_bind13622_
                                                   (gx#resolve-identifier__%
                                                    _id13620_
                                                    '0
                                                    _ctx13599_)))
                                              (if (if (##structure-direct-instance-of?
                                                       _bind13622_
                                                       'gx#syntax-binding::t)
                                                      (##structure-instance-of?
                                                       (##direct-structure-ref
                                                        _bind13622_
                                                        '4
                                                        gx#syntax-binding::t
                                                        '#f)
                                                       'gx#module-context::t)
                                                      '#f)
                                                  (_lp13596_
                                                   _rest13619_
                                                   (##direct-structure-ref
                                                    _bind13622_
                                                    '4
                                                    gx#syntax-binding::t
                                                    '#f))
                                                  (error '"Cannot import submodule; not bound as a module"
                                                         _rpath13576_
                                                         _id13620_
                                                         _bind13622_))))))
                                    (if (##pair? _rest1360013608_)
                                        (let ((_hd1360513627_
                                               (##car _rest1360013608_))
                                              (_tl1360613629_
                                               (##cdr _rest1360013608_)))
                                          (let* ((_id13632_ _hd1360513627_)
                                                 (_rest13634_ _tl1360613629_))
                                            (_K1360413624_
                                             _rest13634_
                                             _id13632_)))
                                        (_else1360213616_))))))))
                      (if (##pair? _rpath1357713584_)
                          (let ((_hd1358113639_ (##car _rpath1357713584_))
                                (_tl1358213641_ (##cdr _rpath1357713584_)))
                            (let* ((_origin13644_ _hd1358113639_)
                                   (_refs13646_ _tl1358213641_))
                              (_K1358013636_ _refs13646_ _origin13644_)))
                          (_E1357913588_))))))
          (let ((_$e13566_
                 (if (not _reload?13561_)
                     (table-ref
                      (gx#current-expander-module-registry)
                      _rpath13560_
                      '#f)
                     '#f)))
            (if _$e13566_
                (values _$e13566_)
                (if (list? _rpath13560_)
                    (_import-submodule13564_ _rpath13560_)
                    (if (gx#core-library-module-path? _rpath13560_)
                        (let ((_ctx13569_
                               (gx#core-import-module__%
                                (gx#core-resolve-library-module-path
                                 _rpath13560_)
                                _reload?13561_)))
                          (begin
                            (table-set!
                             (gx#current-expander-module-registry)
                             _rpath13560_
                             _ctx13569_)
                            _ctx13569_))
                        (let* ((_npath13571_ (path-normalize _rpath13560_))
                               (_$e13573_
                                (if (not _reload?13561_)
                                    (table-ref
                                     (gx#current-expander-module-registry)
                                     _npath13571_
                                     '#f)
                                    '#f)))
                          (if _$e13573_
                              (values _$e13573_)
                              (_import-source13563_ _npath13571_))))))))))
    (begin
      (define gx#core-import-module__0
        (lambda (_rpath13672_)
          (let ((_reload?13674_ '#f))
            (gx#core-import-module__% _rpath13672_ _reload?13674_))))
      (define gx#core-import-module
        (lambda _g14734_
          (let ((_g14733_ (length _g14734_)))
            (cond ((##fx= _g14733_ 1)
                   (apply gx#core-import-module__0 _g14734_))
                  ((##fx= _g14733_ 2)
                   (apply gx#core-import-module__% _g14734_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-import-module
                    _g14734_))))))))
  (define gx#core-read-module
    (lambda (_path13554_)
      (with-exception-catcher
       (lambda (_exn13556_)
         (if (if (datum-parsing-exception? _exn13556_)
                 (eq? (datum-parsing-exception-filepos _exn13556_) '0)
                 '#f)
             (gx#core-read-module/lang _path13554_)
             (raise _exn13556_)))
       (lambda () (gx#core-read-module/sexp _path13554_)))))
  (define gx#core-read-module/sexp
    (lambda (_path13414_)
      (let _lp13416_ ((_body13418_ (read-syntax-from-file _path13414_))
                      (_pre13419_ '#f)
                      (_ns13420_ '#f)
                      (_pkg13421_ '#f))
        (let* ((_e1342213446_ _body13418_)
               (_E1343813468_
                (lambda ()
                  (let ((_g14735_
                         (if _pkg13421_
                             (values _pre13419_ _ns13420_ _pkg13421_)
                             (gx#core-read-module-package
                              _path13414_
                              _pre13419_
                              _ns13420_))))
                    (begin
                      (let ((_g14736_
                             (if (##values? _g14735_)
                                 (##vector-length _g14735_)
                                 1)))
                        (if (not (##fx= _g14736_ 3))
                            (error "Context expects 3 values" _g14736_)))
                      (let ((_pre13450_ (##vector-ref _g14735_ 0))
                            (_ns13451_ (##vector-ref _g14735_ 1))
                            (_pkg13452_ (##vector-ref _g14735_ 2)))
                        (let* ((_prelude13454_
                                (if (gx#core-bound-module-prelude? _pre13450_)
                                    (gx#syntax-local-e__0 _pre13450_)
                                    (if (gx#core-library-module-path?
                                         _pre13450_)
                                        (gx#core-resolve-library-module-path
                                         _pre13450_)
                                        (if (gx#stx-string? _pre13450_)
                                            (gx#core-resolve-module-path__%
                                             _pre13450_
                                             _path13414_)
                                            (gx#stx-e _pre13450_)))))
                               (_path-id13456_
                                (gx#core-module-path->namespace _path13414_))
                               (_pkg-id13458_
                                (if _pkg13452_
                                    (string-append
                                     _pkg13452_
                                     '"/"
                                     _path-id13456_)
                                    _path-id13456_))
                               (_module-id13460_
                                (string->symbol _pkg-id13458_))
                               (_module-ns13465_
                                (let ((_$e13462_ _ns13451_))
                                  (if _$e13462_ _$e13462_ _pkg-id13458_))))
                          (values _prelude13454_
                                  _module-id13460_
                                  _module-ns13465_
                                  _body13418_)))))))
               (_E1343113497_
                (lambda ()
                  (if (gx#stx-pair? _e1342213446_)
                      (let ((_e1343913472_ (gx#syntax-e _e1342213446_)))
                        (let ((_hd1344013475_ (##car _e1343913472_))
                              (_tl1344113477_ (##cdr _e1343913472_)))
                          (if (eq? (gx#stx-e _hd1344013475_) 'package:)
                              (if (gx#stx-pair? _tl1344113477_)
                                  (let ((_e1344213480_
                                         (gx#syntax-e _tl1344113477_)))
                                    (let ((_hd1344313483_
                                           (##car _e1344213480_))
                                          (_tl1344413485_
                                           (##cdr _e1344213480_)))
                                      (let* ((_pkg13488_ _hd1344313483_)
                                             (_rest13490_ _tl1344413485_))
                                        (if '#t
                                            (let ((_pkg13495_
                                                   (if (gx#identifier?
                                                        _pkg13488_)
                                                       (symbol->string
                                                        (gx#stx-e _pkg13488_))
                                                       (if (if (gx#stx-string?
                                                                _pkg13488_)
                                                               '#t
                                                               (gx#stx-false?
                                                                _pkg13488_))
                                                           (gx#stx-e
                                                            _pkg13488_)
                                                           (gx#raise-syntax-error
                                                            'import
                                                            '"Bad syntax; Illegal package name"
                                                            _pkg13488_)))))
                                              (_lp13416_
                                               _rest13490_
                                               _pre13419_
                                               _ns13420_
                                               _pkg13495_))
                                            (_E1343813468_)))))
                                  (_E1343813468_))
                              (_E1343813468_))))
                      (_E1343813468_))))
               (_E1342413526_
                (lambda ()
                  (if (gx#stx-pair? _e1342213446_)
                      (let ((_e1343213501_ (gx#syntax-e _e1342213446_)))
                        (let ((_hd1343313504_ (##car _e1343213501_))
                              (_tl1343413506_ (##cdr _e1343213501_)))
                          (if (eq? (gx#stx-e _hd1343313504_) 'namespace:)
                              (if (gx#stx-pair? _tl1343413506_)
                                  (let ((_e1343513509_
                                         (gx#syntax-e _tl1343413506_)))
                                    (let ((_hd1343613512_
                                           (##car _e1343513509_))
                                          (_tl1343713514_
                                           (##cdr _e1343513509_)))
                                      (let* ((_ns13517_ _hd1343613512_)
                                             (_rest13519_ _tl1343713514_))
                                        (if '#t
                                            (let ((_ns13524_
                                                   (if (gx#identifier?
                                                        _ns13517_)
                                                       (symbol->string
                                                        (gx#stx-e _ns13517_))
                                                       (if (if (gx#stx-string?
                                                                _ns13517_)
                                                               '#t
                                                               (gx#stx-false?
                                                                _ns13517_))
                                                           (gx#stx-e _ns13517_)
                                                           (gx#raise-syntax-error
                                                            'import
                                                            '"Bad syntax; illegal namespace"
                                                            _ns13517_)))))
                                              (_lp13416_
                                               _rest13519_
                                               _pre13419_
                                               _ns13524_
                                               _pkg13421_))
                                            (_E1343113497_)))))
                                  (_E1343113497_))
                              (_E1343113497_))))
                      (_E1343113497_))))
               (_E1342313550_
                (lambda ()
                  (if (gx#stx-pair? _e1342213446_)
                      (let ((_e1342513530_ (gx#syntax-e _e1342213446_)))
                        (let ((_hd1342613533_ (##car _e1342513530_))
                              (_tl1342713535_ (##cdr _e1342513530_)))
                          (if (eq? (gx#stx-e _hd1342613533_) 'prelude:)
                              (if (gx#stx-pair? _tl1342713535_)
                                  (let ((_e1342813538_
                                         (gx#syntax-e _tl1342713535_)))
                                    (let ((_hd1342913541_
                                           (##car _e1342813538_))
                                          (_tl1343013543_
                                           (##cdr _e1342813538_)))
                                      (let* ((_prelude13546_ _hd1342913541_)
                                             (_rest13548_ _tl1343013543_))
                                        (if '#t
                                            (_lp13416_
                                             _rest13548_
                                             _prelude13546_
                                             _ns13420_
                                             _pkg13421_)
                                            (_E1342413526_)))))
                                  (_E1342413526_))
                              (_E1342413526_))))
                      (_E1342413526_)))))
          (_E1342313550_)))))
  (define gx#core-read-module/lang
    (lambda (_path13241_)
      (letrec ((_default-read-module-body13243_
                (lambda (_inp13406_)
                  (let _lp13408_ ((_body13410_ '()))
                    (let ((_next13412_ (read-syntax _inp13406_)))
                      (if (eof-object? _next13412_)
                          (reverse _body13410_)
                          (_lp13408_ (cons _next13412_ _body13410_)))))))
               (_read-body13244_
                (lambda (_inp13325_
                         _pre13326_
                         _ns13327_
                         _pkg13328_
                         _args13329_)
                  (let ((_g14737_
                         (if _pkg13328_
                             (values _pre13326_ _ns13327_ _pkg13328_)
                             (gx#core-read-module-package
                              _path13241_
                              _pre13326_
                              _ns13327_))))
                    (begin
                      (let ((_g14738_
                             (if (##values? _g14737_)
                                 (##vector-length _g14737_)
                                 1)))
                        (if (not (##fx= _g14738_ 3))
                            (error "Context expects 3 values" _g14738_)))
                      (let ((_pre13331_ (##vector-ref _g14737_ 0))
                            (_ns13332_ (##vector-ref _g14737_ 1))
                            (_pkg13333_ (##vector-ref _g14737_ 2)))
                        (let* ((_prelude13335_
                                (gx#import-module__0 _pre13331_))
                               (_read-module-body13389_
                                (let ((_$e13381_
                                       (find (lambda (_e1333613338_)
                                               (let* ((_g1334013350_
                                                       _e1333613338_)
                                                      (_else1334213358_
                                                       (lambda () '#f))
                                                      (_K1334413362_
                                                       (lambda () '#t)))
                                                 (if (##structure-direct-instance-of?
                                                      _g1334013350_
                                                      'gx#module-export::t)
                                                     (let* ((_e1334513365_
                                                             (##vector-ref
                                                              _g1334013350_
                                                              '1))
                                                            (_e1334613368_
                                                             (##vector-ref
                                                              _g1334013350_
                                                              '2))
                                                            (_e1334713371_
                                                             (##vector-ref
                                                              _g1334013350_
                                                              '3)))
                                                       (if (##eq? _e1334713371_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '1)
                   (let ((_e1334813374_ (##vector-ref _g1334013350_ '4)))
                     (if ((lambda (_g1337613378_)
                            (eq? _g1337613378_ 'read-module-body))
                          _e1334813374_)
                         (_K1334413362_)
                         (_else1334213358_)))
                   (_else1334213358_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_else1334213358_))))
                                             (##structure-ref
                                              _prelude13335_
                                              '9
                                              gx#module-context::t
                                              '#f))))
                                  (if _$e13381_
                                      ((lambda (_xport13384_)
                                         (let ((_proc13387_
                                                (with-exception-catcher
                                                 void
                                                 (lambda ()
                                                   (gx#eval-syntax__0
                                                    (##structure-ref
                                                     (gx#core-resolve-module-export
                                                      _xport13384_)
                                                     '1
                                                     gx#binding::t
                                                     '#f))))))
                                           (if (procedure? _proc13387_)
                                               _proc13387_
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Illegal #lang prelude; read-module-body is not a procedure"
                                                _path13241_
                                                _pre13331_
                                                _proc13387_))))
                                       _$e13381_)
                                      _default-read-module-body13243_)))
                               (_path-id13391_
                                (gx#core-module-path->namespace _path13241_))
                               (_pkg-id13393_
                                (if _pkg13333_
                                    (string-append
                                     _pkg13333_
                                     '"/"
                                     _path-id13391_)
                                    _path-id13391_))
                               (_module-id13395_
                                (string->symbol _pkg-id13393_))
                               (_module-ns13400_
                                (let ((_$e13397_ _ns13332_))
                                  (if _$e13397_ _$e13397_ _pkg-id13393_)))
                               (_body13403_
                                (call-with-parameters
                                 (lambda ()
                                   (_read-module-body13389_ _inp13325_))
                                 gx#current-module-reader-path
                                 _path13241_
                                 gx#current-module-reader-args
                                 _args13329_)))
                          (values _prelude13335_
                                  _module-id13395_
                                  _module-ns13400_
                                  _body13403_)))))))
               (_string-e13245_
                (lambda (_obj13322_ _what13323_)
                  (if (string? _obj13322_)
                      _obj13322_
                      (if (symbol? _obj13322_)
                          (symbol->string _obj13322_)
                          (gx#raise-syntax-error
                           '#f
                           (string-append '"Illegal module " _what13323_)
                           _path13241_
                           _obj13322_)))))
               (_read-lang-args13246_
                (lambda (_inp13277_ _args13278_)
                  (let* ((_args1327913287_ _args13278_)
                         (_else1328113295_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Illegal #lang arguments; missing prelude"
                             _path13241_)))
                         (_K1328313310_
                          (lambda (_args13298_ _prelude13299_)
                            (let* ((_pkg13301_ (pgetq 'package: _args13298_))
                                   (_pkg13303_
                                    (if _pkg13301_
                                        (_string-e13245_ _pkg13301_ '"package")
                                        '#f))
                                   (_ns13305_ (pgetq 'namespace: _args13298_))
                                   (_ns13307_
                                    (if _ns13305_
                                        (_string-e13245_
                                         _ns13305_
                                         '"namespace")
                                        '#f)))
                              (_read-body13244_
                               _inp13277_
                               _prelude13299_
                               _ns13307_
                               _pkg13303_
                               _args13298_)))))
                    (if (##pair? _args1327913287_)
                        (let ((_hd1328413313_ (##car _args1327913287_))
                              (_tl1328513315_ (##cdr _args1327913287_)))
                          (let* ((_prelude13318_ _hd1328413313_)
                                 (_args13320_ _tl1328513315_))
                            (_K1328313310_ _args13320_ _prelude13318_)))
                        (_else1328113295_)))))
               (_read-lang13247_
                (lambda (_inp13252_)
                  (let* ((_head13254_ (read-line _inp13252_))
                         (_$e13256_ (string-index _head13254_ '#\space)))
                    (if _$e13256_
                        ((lambda (_ix13259_)
                           (let ((_lang13261_
                                  (substring _head13254_ '0 _ix13259_)))
                             (if (equal? _lang13261_ '"#lang")
                                 (let* ((_rest13263_
                                         (substring
                                          _head13254_
                                          (fx+ _ix13259_ '1)
                                          (string-length _head13254_)))
                                        (_args13274_
                                         (with-exception-catcher
                                          (lambda (_g1326413266_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Illegal #lang arguments"
                                             _path13241_
                                             _g1326413266_))
                                          (lambda ()
                                            (call-with-input-string
                                             _rest13263_
                                             (lambda (_g1326913271_)
                                               (read-all
                                                _g1326913271_
                                                read)))))))
                                   (_read-lang-args13246_
                                    _inp13252_
                                    _args13274_))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Illegal module syntax"
                                  _path13241_))))
                         _$e13256_)
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module syntax"
                         _path13241_)))))
               (_read-e13248_
                (lambda (_inp13250_)
                  (if (eq? (peek-char _inp13250_) '#\#)
                      (_read-lang13247_ _inp13250_)
                      (gx#raise-syntax-error
                       '#f
                       '"Illegal module syntax"
                       _path13241_)))))
        (call-with-input-file _path13241_ _read-e13248_))))
  (define gx#core-read-module-package
    (lambda (_path13195_ _pre13196_ _ns13197_)
      (letrec ((_string-e13199_
                (lambda (_e13239_)
                  (if (symbol? _e13239_)
                      (symbol->string _e13239_)
                      (if (string? _e13239_)
                          _e13239_
                          (gx#raise-syntax-error
                           '#f
                           '"Malformed package info; unexpected datum"
                           _e13239_))))))
        (let _lp13201_ ((_dir13203_ (path-directory _path13195_))
                        (_pkg-path13204_ '()))
          (let ((_gerbil.pkg13206_ (path-expand '"gerbil.pkg" _dir13203_)))
            (if (file-exists? _gerbil.pkg13206_)
                (let ((_plist13208_
                       (gx#core-library-package-plist__% _dir13203_ '#t)))
                  (if (null? _plist13208_)
                      (let ((_pkg13210_
                             (if (not (null? _pkg-path13204_))
                                 (string-join _pkg-path13204_ '"/")
                                 '#f)))
                        (values _pre13196_ _ns13197_ _pkg13210_))
                      (if (list? _plist13208_)
                          (let* ((_root13212_ (pgetq 'package: _plist13208_))
                                 (_pkg13216_
                                  (let ((_pkg-path13214_
                                         (if _root13212_
                                             (cons (_string-e13199_
                                                    _root13212_)
                                                   _pkg-path13204_)
                                             _pkg-path13204_)))
                                    (if (not (null? _pkg-path13214_))
                                        (string-join _pkg-path13214_ '"/")
                                        '#f)))
                                 (_ns13223_
                                  (let ((_ns13221_
                                         (let ((_$e13218_ _ns13197_))
                                           (if _$e13218_
                                               _$e13218_
                                               (pgetq 'namespace:
                                                      _plist13208_)))))
                                    (if _ns13221_
                                        (_string-e13199_ _ns13221_)
                                        '#f)))
                                 (_pre13228_
                                  (let ((_$e13225_ _pre13196_))
                                    (if _$e13225_
                                        _$e13225_
                                        (pgetq 'prelude: _plist13208_)))))
                            (values _pre13228_ _ns13223_ _pkg13216_))
                          (gx#raise-syntax-error
                           '#f
                           '"Malformed package info; unexpected datum"
                           _plist13208_))))
                (let ((_dir*13231_
                       (path-strip-trailing-directory-separator _dir13203_)))
                  (if (if (string-empty? _dir*13231_)
                          '#t
                          (equal? _dir13203_ _dir*13231_))
                      (values _pre13196_ _ns13197_ '#f)
                      (let ((_xpath13236_ (path-strip-directory _dir*13231_))
                            (_xdir13237_ (path-directory _dir*13231_)))
                        (_lp13201_
                         _xdir13237_
                         (cons _xpath13236_ _pkg-path13204_)))))))))))
  (define gx#core-module-path->namespace
    (lambda (_path13193_)
      (path-strip-extension (path-strip-directory _path13193_))))
  (define gx#core-module-path->id
    (lambda (_path13191_)
      (string->symbol (gx#core-module-path->namespace _path13191_))))
  (begin
    (define gx#core-resolve-module-path__%
      (lambda (_stx-path13170_ _rel13171_)
        (let* ((_path13173_ (gx#stx-e _stx-path13170_))
               (_path13175_
                (if (string-empty? (path-extension _path13173_))
                    (string-append _path13173_ '".ss")
                    _path13173_)))
          (gx#core-resolve-path__%
           _path13175_
           (let ((_$e13178_ (gx#stx-source _stx-path13170_)))
             (if _$e13178_ _$e13178_ _rel13171_))))))
    (begin
      (define gx#core-resolve-module-path__0
        (lambda (_stx-path13184_)
          (let ((_rel13186_ '#f))
            (gx#core-resolve-module-path__% _stx-path13184_ _rel13186_))))
      (define gx#core-resolve-module-path
        (lambda _g14740_
          (let ((_g14739_ (length _g14740_)))
            (cond ((##fx= _g14739_ 1)
                   (apply gx#core-resolve-module-path__0 _g14740_))
                  ((##fx= _g14739_ 2)
                   (apply gx#core-resolve-module-path__% _g14740_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-resolve-module-path
                    _g14740_))))))))
  (define gx#core-resolve-library-module-path
    (lambda (_libpath13097_)
      (let* ((_spath13099_ (symbol->string (gx#stx-e _libpath13097_)))
             (_spath13101_
              (substring _spath13099_ '1 (string-length _spath13099_)))
             (_ext13103_ (path-extension _spath13101_))
             (_ssi13105_
              (if (string-empty? _ext13103_)
                  (string-append _spath13101_ '".ssi")
                  (string-append (path-strip-extension _spath13101_) '".ssi")))
             (_src13107_
              (if (string-empty? _ext13103_)
                  (string-append _spath13101_ '".ss")
                  _spath13101_)))
        (let _lp13110_ ((_rest13112_
                         (gx#current-expander-module-library-path)))
          (let* ((_rest1311313122_ _rest13112_)
                 (_E1311613126_
                  (lambda () (error '"No clause matching" _rest1311313122_))))
            (let ((_K1311813157_
                   (lambda (_rest13137_ _dir13138_)
                     (letrec ((_resolve13140_
                               (lambda (_ssi13150_ _src13151_)
                                 (let ((_compiled-path13153_
                                        (path-expand _ssi13150_ _dir13138_)))
                                   (if (file-exists? _compiled-path13153_)
                                       (path-normalize _compiled-path13153_)
                                       (let ((_src-path13155_
                                              (path-expand
                                               _src13151_
                                               _dir13138_)))
                                         (if (file-exists? _src-path13155_)
                                             (path-normalize _src-path13155_)
                                             (_lp13110_ _rest13137_))))))))
                       (let ((_$e13142_
                              (gx#core-library-package-path-prefix
                               _dir13138_)))
                         (if _$e13142_
                             ((lambda (_prefix13145_)
                                (if (string-prefix? _spath13101_ _prefix13145_)
                                    (let ((_ssi13147_
                                           (substring
                                            _ssi13105_
                                            (string-length _prefix13145_)
                                            (string-length _ssi13105_)))
                                          (_src13148_
                                           (substring
                                            _src13107_
                                            (string-length _prefix13145_)
                                            (string-length _src13107_))))
                                      (_resolve13140_ _ssi13147_ _src13148_))
                                    (_lp13110_ _rest13137_)))
                              _$e13142_)
                             (_resolve13140_ _ssi13105_ _src13107_))))))
                  (_K1311713131_
                   (lambda ()
                     (gx#raise-syntax-error
                      '#f
                      '"Cannot find library module"
                      _libpath13097_))))
              (let ((_try-match1311513134_
                     (lambda ()
                       (if (##null? _rest1311313122_)
                           (_K1311713131_)
                           (_E1311613126_)))))
                (if (##pair? _rest1311313122_)
                    (let ((_tl1312013162_ (##cdr _rest1311313122_))
                          (_hd1311913160_ (##car _rest1311313122_)))
                      (let ((_dir13165_ _hd1311913160_)
                            (_rest13167_ _tl1312013162_))
                        (_K1311813157_ _rest13167_ _dir13165_)))
                    (_try-match1311513134_)))))))))
  (define gx#core-library-package-path-prefix
    (lambda (_dir13090_)
      (let ((_$e13092_
             (pgetq 'package: (gx#core-library-package-plist__0 _dir13090_))))
        (if _$e13092_
            ((lambda (_pkg13095_)
               (string-append (symbol->string _pkg13095_) '"/"))
             _$e13092_)
            '#f))))
  (begin
    (define gx#core-library-package-plist__%
      (lambda (_dir13062_ _exists?13063_)
        (let* ((_cache13065_ (gx#core-library-package-cache))
               (_$e13067_ (table-ref _cache13065_ _dir13062_ '#f)))
          (if _$e13067_
              (values _$e13067_)
              (let* ((_gerbil.pkg13070_ (path-expand '"gerbil.pkg" _dir13062_))
                     (_plist13077_
                      (if (if _exists?13063_
                              '#t
                              (file-exists? _gerbil.pkg13070_))
                          (let ((_e13075_
                                 (call-with-input-file
                                  _gerbil.pkg13070_
                                  read)))
                            (if (eof-object? _e13075_)
                                '()
                                (if (list? _e13075_)
                                    _e13075_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Malformed package info; unexpected datum"
                                     _gerbil.pkg13070_
                                     _e13075_))))
                          '())))
                (begin
                  (table-set! _cache13065_ _dir13062_ _plist13077_)
                  _plist13077_))))))
    (begin
      (define gx#core-library-package-plist__0
        (lambda (_dir13083_)
          (let ((_exists?13085_ '#f))
            (gx#core-library-package-plist__% _dir13083_ _exists?13085_))))
      (define gx#core-library-package-plist
        (lambda _g14742_
          (let ((_g14741_ (length _g14742_)))
            (cond ((##fx= _g14741_ 1)
                   (apply gx#core-library-package-plist__0 _g14742_))
                  ((##fx= _g14741_ 2)
                   (apply gx#core-library-package-plist__% _g14742_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-library-package-plist
                    _g14742_))))))))
  (define gx#core-library-package-cache
    (lambda ()
      (let ((_$e13056_ (gx#current-expander-module-library-package-cache)))
        (if _$e13056_
            (values _$e13056_)
            (let ((_cache13059_ (make-table)))
              (begin
                (gx#current-expander-module-library-package-cache _cache13059_)
                _cache13059_))))))
  (define gx#core-library-module-path?
    (lambda (_stx13053_) (gx#core-special-module-path? _stx13053_ '#\:)))
  (define gx#core-special-module-path?
    (lambda (_stx13048_ _char13049_)
      (if (gx#identifier? _stx13048_)
          (if (interned-symbol? (gx#stx-e _stx13048_))
              (let ((_str13051_ (symbol->string (gx#stx-e _stx13048_))))
                (if (fx> (string-length _str13051_) '1)
                    (eq? (string-ref _str13051_ '0) _char13049_)
                    '#f))
              '#f)
          '#f)))
  (define gx#core-bound-prelude?
    (lambda (_stx13042_)
      (gx#core-bound-identifier?__%
       _stx13042_
       (lambda (_g1304313045_)
         (gx#expander-binding?__% _g1304313045_ gx#prelude-context?)))))
  (define gx#core-bound-module?
    (lambda (_stx13036_)
      (gx#core-bound-identifier?__%
       _stx13036_
       (lambda (_g1303713039_)
         (gx#expander-binding?__% _g1303713039_ gx#module-context?)))))
  (define gx#core-bound-module-prelude?
    (lambda (_stx13023_)
      (letrec ((_module-prelude?13025_
                (lambda (_e13031_)
                  (let ((_$e13033_
                         (##structure-instance-of?
                          _e13031_
                          'gx#module-context::t)))
                    (if _$e13033_
                        _$e13033_
                        (##structure-instance-of?
                         _e13031_
                         'gx#prelude-context::t))))))
        (gx#core-bound-identifier?__%
         _stx13023_
         (lambda (_g1302613028_)
           (gx#expander-binding?__% _g1302613028_ _module-prelude?13025_))))))
  (begin
    (define gx#core-bind-import!__%
      (lambda (_in12953_ _ctx12954_ _force-weak?12955_)
        (let* ((_in1295612965_ _in12953_)
               (_E1295812969_
                (lambda () (error '"No clause matching" _in1295612965_)))
               (_K1295912982_
                (lambda (_weak?12972_ _phi12973_ _key12974_ _source12975_)
                  (gx#core-bind!__%
                   _key12974_
                   (let ((_e12977_
                          (gx#core-resolve-module-export _source12975_)))
                     (##structure
                      gx#import-binding::t
                      (##structure-ref _e12977_ '1 gx#binding::t '#f)
                      _key12974_
                      _phi12973_
                      _e12977_
                      (##direct-structure-ref
                       _source12975_
                       '1
                       gx#module-export::t
                       '#f)
                      (let ((_$e12979_ _force-weak?12955_))
                        (if _$e12979_ _$e12979_ _weak?12972_))))
                   gx#core-context-rebind?
                   _phi12973_
                   _ctx12954_))))
          (if (##structure-direct-instance-of?
               _in1295612965_
               'gx#module-import::t)
              (let* ((_e1296012985_ (##vector-ref _in1295612965_ '1))
                     (_source12988_ _e1296012985_)
                     (_e1296112990_ (##vector-ref _in1295612965_ '2))
                     (_key12993_ _e1296112990_)
                     (_e1296212995_ (##vector-ref _in1295612965_ '3))
                     (_phi12998_ _e1296212995_)
                     (_e1296313000_ (##vector-ref _in1295612965_ '4))
                     (_weak?13003_ _e1296313000_))
                (_K1295912982_
                 _weak?13003_
                 _phi12998_
                 _key12993_
                 _source12988_))
              (_E1295812969_)))))
    (begin
      (define gx#core-bind-import!__0
        (lambda (_in13008_)
          (let* ((_ctx13010_ (gx#current-expander-context))
                 (_force-weak?13012_ '#f))
            (gx#core-bind-import!__%
             _in13008_
             _ctx13010_
             _force-weak?13012_))))
      (define gx#core-bind-import!__1
        (lambda (_in13014_ _ctx13015_)
          (let ((_force-weak?13017_ '#f))
            (gx#core-bind-import!__%
             _in13014_
             _ctx13015_
             _force-weak?13017_))))
      (define gx#core-bind-import!
        (lambda _g14744_
          (let ((_g14743_ (length _g14744_)))
            (cond ((##fx= _g14743_ 1) (apply gx#core-bind-import!__0 _g14744_))
                  ((##fx= _g14743_ 2) (apply gx#core-bind-import!__1 _g14744_))
                  ((##fx= _g14743_ 3) (apply gx#core-bind-import!__% _g14744_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-import!
                    _g14744_))))))))
  (begin
    (define gx#core-bind-weak-import!__%
      (lambda (_in12939_ _ctx12940_)
        (gx#core-bind-import!__% _in12939_ _ctx12940_ '#t)))
    (begin
      (define gx#core-bind-weak-import!__0
        (lambda (_in12945_)
          (let ((_ctx12947_ (gx#current-expander-context)))
            (gx#core-bind-weak-import!__% _in12945_ _ctx12947_))))
      (define gx#core-bind-weak-import!
        (lambda _g14746_
          (let ((_g14745_ (length _g14746_)))
            (cond ((##fx= _g14745_ 1)
                   (apply gx#core-bind-weak-import!__0 _g14746_))
                  ((##fx= _g14745_ 2)
                   (apply gx#core-bind-weak-import!__% _g14746_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-weak-import!
                    _g14746_))))))))
  (define gx#core-resolve-module-export
    (lambda (_out12830_)
      (letrec ((_subst12832_
                (lambda (_key12878_)
                  (let* ((_key1287912887_ _key12878_)
                         (_else1288112895_ (lambda () _key12878_))
                         (_K1288312926_
                          (lambda (_mark12898_ _id12899_)
                            (let* ((_mark1290012906_ _mark12898_)
                                   (_E1290212910_
                                    (lambda ()
                                      (error '"No clause matching"
                                             _mark1290012906_)))
                                   (_K1290312918_
                                    (lambda (_subst12913_)
                                      (let ((_$e12915_
                                             (if _subst12913_
                                                 (table-ref
                                                  _subst12913_
                                                  _id12899_
                                                  '#f)
                                                 '#f)))
                                        (if _$e12915_
                                            _$e12915_
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Illegal key; missing substitution"
                                             _key12878_))))))
                              (if (##structure-instance-of?
                                   _mark1290012906_
                                   'gx#expander-mark::t)
                                  (let* ((_e1290412921_
                                          (##vector-ref _mark1290012906_ '1))
                                         (_subst12924_ _e1290412921_))
                                    (_K1290312918_ _subst12924_))
                                  (_E1290212910_))))))
                    (if (##pair? _key1287912887_)
                        (let ((_hd1288412929_ (##car _key1287912887_))
                              (_tl1288512931_ (##cdr _key1287912887_)))
                          (let* ((_id12934_ _hd1288412929_)
                                 (_mark12936_ _tl1288512931_))
                            (_K1288312926_ _mark12936_ _id12934_)))
                        (_else1288112895_))))))
        (let* ((_out1283312843_ _out12830_)
               (_E1283512847_
                (lambda () (error '"No clause matching" _out1283312843_)))
               (_K1283612854_
                (lambda (_phi12850_ _key12851_ _ctx12852_)
                  (gx#core-context-resolve
                   (gx#core-context-shift _ctx12852_ _phi12850_)
                   (_subst12832_ _key12851_)))))
          (if (##structure-direct-instance-of?
               _out1283312843_
               'gx#module-export::t)
              (let* ((_e1283712857_ (##vector-ref _out1283312843_ '1))
                     (_ctx12860_ _e1283712857_)
                     (_e1283812862_ (##vector-ref _out1283312843_ '2))
                     (_key12865_ _e1283812862_)
                     (_e1283912867_ (##vector-ref _out1283312843_ '3))
                     (_phi12870_ _e1283912867_)
                     (_e1284012872_ (##vector-ref _out1283312843_ '4))
                     (_e1284112875_ (##vector-ref _out1283312843_ '5)))
                (_K1283612854_ _phi12870_ _key12865_ _ctx12860_))
              (_E1283512847_))))))
  (begin
    (define gx#core-module-export->import__%
      (lambda (_out12755_ _rename12756_ _dphi12757_)
        (let* ((_out1275812768_ _out12755_)
               (_E1276012772_
                (lambda () (error '"No clause matching" _out1275812768_)))
               (_K1276112784_
                (lambda (_weak?12775_
                         _name12776_
                         _phi12777_
                         _key12778_
                         _ctx12779_)
                  (##structure
                   gx#module-import::t
                   _out12755_
                   (let ((_$e12781_ _rename12756_))
                     (if _$e12781_ _$e12781_ _name12776_))
                   (fx+ _phi12777_ _dphi12757_)
                   _weak?12775_))))
          (if (##structure-direct-instance-of?
               _out1275812768_
               'gx#module-export::t)
              (let* ((_e1276212787_ (##vector-ref _out1275812768_ '1))
                     (_ctx12790_ _e1276212787_)
                     (_e1276312792_ (##vector-ref _out1275812768_ '2))
                     (_key12795_ _e1276312792_)
                     (_e1276412797_ (##vector-ref _out1275812768_ '3))
                     (_phi12800_ _e1276412797_)
                     (_e1276512802_ (##vector-ref _out1275812768_ '4))
                     (_name12805_ _e1276512802_)
                     (_e1276612807_ (##vector-ref _out1275812768_ '5))
                     (_weak?12810_ _e1276612807_))
                (_K1276112784_
                 _weak?12810_
                 _name12805_
                 _phi12800_
                 _key12795_
                 _ctx12790_))
              (_E1276012772_)))))
    (begin
      (define gx#core-module-export->import__0
        (lambda (_out12815_)
          (let* ((_rename12817_ '#f) (_dphi12819_ '0))
            (gx#core-module-export->import__%
             _out12815_
             _rename12817_
             _dphi12819_))))
      (define gx#core-module-export->import__1
        (lambda (_out12821_ _rename12822_)
          (let ((_dphi12824_ '0))
            (gx#core-module-export->import__%
             _out12821_
             _rename12822_
             _dphi12824_))))
      (define gx#core-module-export->import
        (lambda _g14748_
          (let ((_g14747_ (length _g14748_)))
            (cond ((##fx= _g14747_ 1)
                   (apply gx#core-module-export->import__0 _g14748_))
                  ((##fx= _g14747_ 2)
                   (apply gx#core-module-export->import__1 _g14748_))
                  ((##fx= _g14747_ 3)
                   (apply gx#core-module-export->import__% _g14748_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-module-export->import
                    _g14748_))))))))
  (define gx#core-expand-module%
    (lambda (_stx12683_)
      (letrec ((_make-context12685_
                (lambda (_id12736_)
                  (let* ((_super12738_ (gx#current-expander-context))
                         (_bind-id12740_ (gx#stx-e _id12736_))
                         (_mod-id12742_
                          (if (##structure-instance-of?
                               _super12738_
                               'gx#module-context::t)
                              (make-symbol
                               (##structure-ref
                                _super12738_
                                '1
                                gx#expander-context::t
                                '#f)
                               '"$"
                               _bind-id12740_)
                              _bind-id12740_))
                         (_ns12744_ (symbol->string _mod-id12742_))
                         (_path12751_
                          (if (##structure-instance-of?
                               _super12738_
                               'gx#module-context::t)
                              (let ((_path12746_
                                     (##structure-ref
                                      _super12738_
                                      '7
                                      gx#module-context::t
                                      '#f)))
                                (if (if (pair? _path12746_)
                                        '#t
                                        (null? _path12746_))
                                    (cons _bind-id12740_ _path12746_)
                                    (if (not _path12746_)
                                        _bind-id12740_
                                        (cons _bind-id12740_
                                              (cons _path12746_ '())))))
                              _bind-id12740_)))
                    (let ((__obj14724 (make-object gx#module-context::t '11)))
                      (begin
                        (gx#module-context:::init!
                         __obj14724
                         _mod-id12742_
                         _super12738_
                         _ns12744_
                         _path12751_)
                        __obj14724))))))
        (let* ((_e1268612696_ _stx12683_)
               (_E1268812700_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1268612696_)))
               (_E1268712732_
                (lambda ()
                  (if (gx#stx-pair? _e1268612696_)
                      (let ((_e1268912704_ (gx#syntax-e _e1268612696_)))
                        (let ((_hd1269012707_ (##car _e1268912704_))
                              (_tl1269112709_ (##cdr _e1268912704_)))
                          (if (gx#stx-pair? _tl1269112709_)
                              (let ((_e1269212712_
                                     (gx#syntax-e _tl1269112709_)))
                                (let ((_hd1269312715_ (##car _e1269212712_))
                                      (_tl1269412717_ (##cdr _e1269212712_)))
                                  (let* ((_id12720_ _hd1269312715_)
                                         (_body12722_ _tl1269412717_))
                                    (if (if (gx#identifier? _id12720_)
                                            (gx#stx-list? _body12722_)
                                            '#f)
                                        (let* ((_ctx12724_
                                                (_make-context12685_
                                                 _id12720_))
                                               (_body12726_
                                                (gx#core-expand-module-begin
                                                 _body12722_
                                                 _ctx12724_))
                                               (_body12728_
                                                (gx#core-quote-syntax__1
                                                 (gx#core-cons
                                                  '%#begin
                                                  _body12726_)
                                                 (gx#stx-source _stx12683_))))
                                          (begin
                                            (##structure-set!
                                             _ctx12724_
                                             (make-promise
                                              (lambda ()
                                                (gx#eval-syntax* _body12728_)))
                                             '10
                                             gx#module-context::t
                                             '#f)
                                            (##structure-set!
                                             _ctx12724_
                                             _body12728_
                                             '11
                                             gx#module-context::t
                                             '#f)
                                            (gx#core-bind-syntax!__0
                                             _id12720_
                                             _ctx12724_)
                                            (gx#core-quote-syntax__1
                                             (gx#core-list
                                              '%#module
                                              (gx#core-quote-syntax__0
                                               _id12720_)
                                              _body12728_)
                                             (gx#stx-source _stx12683_))))
                                        (_E1268812700_)))))
                              (_E1268812700_))))
                      (_E1268812700_)))))
          (_E1268712732_)))))
  (define gx#core-expand-module-begin
    (lambda (_body12649_ _ctx12650_)
      (call-with-parameters
       (lambda ()
         (begin
           (gx#core-bind-feature!__1 'gerbil-module '#t)
           (let* ((_stx12653_
                   (gx#core-expand-head (cons '%%begin-module _body12649_)))
                  (_e1265412661_ _stx12653_)
                  (_E1265612665_
                   (lambda ()
                     (gx#raise-syntax-error
                      '#f
                      '"Illegal module body expansion"
                      _stx12653_)))
                  (_E1265512679_
                   (lambda ()
                     (if (gx#stx-pair? _e1265412661_)
                         (let ((_e1265712669_ (gx#syntax-e _e1265412661_)))
                           (let ((_hd1265812672_ (##car _e1265712669_))
                                 (_tl1265912674_ (##cdr _e1265712669_)))
                             (if (if (gx#identifier? _hd1265812672_)
                                     (gx#core-identifier=?
                                      _hd1265812672_
                                      '%#begin-module)
                                     '#f)
                                 (let ((_body12677_ _tl1265912674_))
                                   (if '#t
                                       (if (gx#sealed-syntax? _stx12653_)
                                           _body12677_
                                           (gx#core-expand-module-body
                                            _body12677_))
                                       (_E1265612665_)))
                                 (_E1265612665_))))
                         (_E1265612665_)))))
             (_E1265512679_))))
       gx#current-expander-context
       _ctx12650_
       gx#current-expander-phi
       '0)))
  (define gx#core-expand-module-body
    (lambda (_body12445_)
      (letrec ((_expand-special12447_
                (lambda (_hd12576_ _K12577_ _rest12578_ _r12579_)
                  (let* ((_e1258012597_ _hd12576_)
                         (_E1259212601_
                          (lambda ()
                            (_K12577_
                             _rest12578_
                             (cons (gx#core-expand-top _hd12576_) _r12579_))))
                         (_E1258212613_
                          (lambda ()
                            (if (gx#stx-pair? _e1258012597_)
                                (let ((_e1259312605_
                                       (gx#syntax-e _e1258012597_)))
                                  (let ((_hd1259412608_ (##car _e1259312605_))
                                        (_tl1259512610_ (##cdr _e1259312605_)))
                                    (if (if (gx#identifier? _hd1259412608_)
                                            (gx#core-identifier=?
                                             _hd1259412608_
                                             '%#export)
                                            '#f)
                                        (if '#t
                                            (_K12577_
                                             _rest12578_
                                             (cons _hd12576_ _r12579_))
                                            (_E1259212601_))
                                        (_E1259212601_))))
                                (_E1259212601_))))
                         (_E1258112645_
                          (lambda ()
                            (if (gx#stx-pair? _e1258012597_)
                                (let ((_e1258312617_
                                       (gx#syntax-e _e1258012597_)))
                                  (let ((_hd1258412620_ (##car _e1258312617_))
                                        (_tl1258512622_ (##cdr _e1258312617_)))
                                    (if (if (gx#identifier? _hd1258412620_)
                                            (gx#core-identifier=?
                                             _hd1258412620_
                                             '%#define-values)
                                            '#f)
                                        (if (gx#stx-pair? _tl1258512622_)
                                            (let ((_e1258612625_
                                                   (gx#syntax-e
                                                    _tl1258512622_)))
                                              (let ((_hd1258712628_
                                                     (##car _e1258612625_))
                                                    (_tl1258812630_
                                                     (##cdr _e1258612625_)))
                                                (let ((_hd-bind12633_
                                                       _hd1258712628_))
                                                  (if (gx#stx-pair?
                                                       _tl1258812630_)
                                                      (let ((_e1258912635_
                                                             (gx#syntax-e
                                                              _tl1258812630_)))
                                                        (let ((_hd1259012638_
                                                               (##car _e1258912635_))
                                                              (_tl1259112640_
                                                               (##cdr _e1258912635_)))
                                                          (let ((_expr12643_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1259012638_))
                    (if (gx#stx-null? _tl1259112640_)
                        (if (gx#core-bind-values? _hd-bind12633_)
                            (begin
                              (gx#core-bind-values!__0 _hd-bind12633_)
                              (_K12577_ _rest12578_ (cons _hd12576_ _r12579_)))
                            (_E1258212613_))
                        (_E1258212613_)))))
              (_E1258212613_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E1258212613_))
                                        (_E1258212613_))))
                                (_E1258212613_)))))
                    (_E1258112645_))))
               (_expand-body12448_
                (lambda (_rbody12450_)
                  (let _lp12452_ ((_rest12454_ _rbody12450_) (_body12455_ '()))
                    (let* ((_rest1245612464_ _rest12454_)
                           (_else1245812472_ (lambda () _body12455_))
                           (_K1246012564_
                            (lambda (_rest12475_ _hd12476_)
                              (let* ((_e1247712498_ _hd12476_)
                                     (_E1249312502_
                                      (lambda ()
                                        (_lp12452_
                                         _rest12475_
                                         (cons (gx#core-expand-expression
                                                _hd12476_)
                                               _body12455_))))
                                     (_E1248912516_
                                      (lambda ()
                                        (if (gx#stx-pair? _e1247712498_)
                                            (let ((_e1249412506_
                                                   (gx#syntax-e
                                                    _e1247712498_)))
                                              (let ((_hd1249512509_
                                                     (##car _e1249412506_))
                                                    (_tl1249612511_
                                                     (##cdr _e1249412506_)))
                                                (let ((_form12514_
                                                       _hd1249512509_))
                                                  (if (gx#core-bound-identifier?__%
                                                       _form12514_
                                                       gx#special-form-binding?)
                                                      (_lp12452_
                                                       _rest12475_
                                                       (cons _hd12476_
                                                             _body12455_))
                                                      (_E1249312502_)))))
                                            (_E1249312502_))))
                                     (_E1247912528_
                                      (lambda ()
                                        (if (gx#stx-pair? _e1247712498_)
                                            (let ((_e1249012520_
                                                   (gx#syntax-e
                                                    _e1247712498_)))
                                              (let ((_hd1249112523_
                                                     (##car _e1249012520_))
                                                    (_tl1249212525_
                                                     (##cdr _e1249012520_)))
                                                (if (if (gx#identifier?
                                                         _hd1249112523_)
                                                        (gx#core-identifier=?
                                                         _hd1249112523_
                                                         '%#export)
                                                        '#f)
                                                    (if '#t
                                                        (_lp12452_
                                                         _rest12475_
                                                         (cons (gx#core-expand-export%__0
                                                                _hd12476_)
                                                               _body12455_))
                                                        (_E1248912516_))
                                                    (_E1248912516_))))
                                            (_E1248912516_))))
                                     (_E1247812560_
                                      (lambda ()
                                        (if (gx#stx-pair? _e1247712498_)
                                            (let ((_e1248012532_
                                                   (gx#syntax-e
                                                    _e1247712498_)))
                                              (let ((_hd1248112535_
                                                     (##car _e1248012532_))
                                                    (_tl1248212537_
                                                     (##cdr _e1248012532_)))
                                                (if (if (gx#identifier?
                                                         _hd1248112535_)
                                                        (gx#core-identifier=?
                                                         _hd1248112535_
                                                         '%#define-values)
                                                        '#f)
                                                    (if (gx#stx-pair?
                                                         _tl1248212537_)
                                                        (let ((_e1248312540_
                                                               (gx#syntax-e
                                                                _tl1248212537_)))
                                                          (let ((_hd1248412543_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1248312540_))
                        (_tl1248512545_ (##cdr _e1248312540_)))
                    (let ((_hd-bind12548_ _hd1248412543_))
                      (if (gx#stx-pair? _tl1248512545_)
                          (let ((_e1248612550_ (gx#syntax-e _tl1248512545_)))
                            (let ((_hd1248712553_ (##car _e1248612550_))
                                  (_tl1248812555_ (##cdr _e1248612550_)))
                              (let ((_expr12558_ _hd1248712553_))
                                (if (gx#stx-null? _tl1248812555_)
                                    (if '#t
                                        (_lp12452_
                                         _rest12475_
                                         (cons (gx#core-quote-syntax__1
                                                (gx#core-list
                                                 '%#define-values
                                                 (gx#core-quote-bind-values
                                                  _hd-bind12548_)
                                                 (gx#core-expand-expression
                                                  _expr12558_))
                                                (gx#stx-source _hd12476_))
                                               _body12455_))
                                        (_E1247912528_))
                                    (_E1247912528_)))))
                          (_E1247912528_)))))
                (_E1247912528_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1247912528_))))
                                            (_E1247912528_)))))
                                (_E1247812560_)))))
                      (if (##pair? _rest1245612464_)
                          (let ((_hd1246112567_ (##car _rest1245612464_))
                                (_tl1246212569_ (##cdr _rest1245612464_)))
                            (let* ((_hd12572_ _hd1246112567_)
                                   (_rest12574_ _tl1246212569_))
                              (_K1246012564_ _rest12574_ _hd12572_)))
                          (_else1245812472_)))))))
        (_expand-body12448_
         (gx#core-expand-block__%
          (cons '%#begin-module _body12445_)
          _expand-special12447_
          '#f
          values)))))
  (define gx#core-expand-import/export
    (lambda (_stx12288_
             _expanded?12289_
             _method12290_
             _current-phi12291_
             _expand112292_)
      (letrec ((_K12294_
                (lambda (_rest12412_ _r12413_)
                  (let* ((_e1241412421_ _rest12412_)
                         (_E1241612425_ (lambda () _r12413_))
                         (_E1241512441_
                          (lambda ()
                            (if (gx#stx-pair? _e1241412421_)
                                (let ((_e1241712429_
                                       (gx#syntax-e _e1241412421_)))
                                  (let ((_hd1241812432_ (##car _e1241712429_))
                                        (_tl1241912434_ (##cdr _e1241712429_)))
                                    (let* ((_hd12437_ _hd1241812432_)
                                           (_rest12439_ _tl1241912434_))
                                      (if '#t
                                          (_step12295_
                                           _hd12437_
                                           _rest12439_
                                           _r12413_)
                                          (_E1241612425_)))))
                                (_E1241612425_)))))
                    (_E1241512441_))))
               (_step12295_
                (lambda (_hd12326_ _rest12327_ _r12328_)
                  (let* ((_e1232912347_ _hd12326_)
                         (_E1234212351_
                          (lambda ()
                            (if (_expanded?12289_ (gx#stx-e _hd12326_))
                                (_K12294_
                                 _rest12327_
                                 (cons (gx#stx-e _hd12326_) _r12328_))
                                (_expand112292_
                                 _hd12326_
                                 _K12294_
                                 _rest12327_
                                 _r12328_))))
                         (_E1233812367_
                          (lambda ()
                            (if (gx#stx-pair? _e1232912347_)
                                (let ((_e1234312355_
                                       (gx#syntax-e _e1232912347_)))
                                  (let ((_hd1234412358_ (##car _e1234312355_))
                                        (_tl1234512360_ (##cdr _e1234312355_)))
                                    (let* ((_macro12363_ _hd1234412358_)
                                           (_body12365_ _tl1234512360_))
                                      (if (gx#core-bound-identifier?__%
                                           _macro12363_
                                           gx#syntax-binding?)
                                          (_K12294_
                                           (cons (gx#core-apply-expander__%
                                                  (gx#syntax-local-e__0
                                                   _macro12363_)
                                                  _hd12326_
                                                  _method12290_)
                                                 _rest12327_)
                                           _r12328_)
                                          (_E1234212351_)))))
                                (_E1234212351_))))
                         (_E1233112381_
                          (lambda ()
                            (if (gx#stx-pair? _e1232912347_)
                                (let ((_e1233912371_
                                       (gx#syntax-e _e1232912347_)))
                                  (let ((_hd1234012374_ (##car _e1233912371_))
                                        (_tl1234112376_ (##cdr _e1233912371_)))
                                    (if (eq? (gx#stx-e _hd1234012374_) 'begin:)
                                        (let ((_body12379_ _tl1234112376_))
                                          (if '#t
                                              (_K12294_
                                               (gx#stx-foldr
                                                cons
                                                _rest12327_
                                                _body12379_)
                                               _r12328_)
                                              (_E1233812367_)))
                                        (_E1233812367_))))
                                (_E1233812367_))))
                         (_E1233012408_
                          (lambda ()
                            (if (gx#stx-pair? _e1232912347_)
                                (let ((_e1233212385_
                                       (gx#syntax-e _e1232912347_)))
                                  (let ((_hd1233312388_ (##car _e1233212385_))
                                        (_tl1233412390_ (##cdr _e1233212385_)))
                                    (if (eq? (gx#stx-e _hd1233312388_) 'phi:)
                                        (if (gx#stx-pair? _tl1233412390_)
                                            (let ((_e1233512393_
                                                   (gx#syntax-e
                                                    _tl1233412390_)))
                                              (let ((_hd1233612396_
                                                     (##car _e1233512393_))
                                                    (_tl1233712398_
                                                     (##cdr _e1233512393_)))
                                                (let* ((_dphi12401_
                                                        _hd1233612396_)
                                                       (_body12403_
                                                        _tl1233712398_))
                                                  (if (gx#stx-fixnum?
                                                       _dphi12401_)
                                                      (let ((_rbody12406_
                                                             (call-with-parameters
                                                              (lambda ()
                                                                (_K12294_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _body12403_
                         '()))
                      _current-phi12291_
                      (fx+ (gx#stx-e _dphi12401_) (_current-phi12291_)))))
                (_K12294_ _rest12327_ (foldr1 cons _r12328_ _rbody12406_)))
              (_E1233112381_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E1233112381_))
                                        (_E1233112381_))))
                                (_E1233112381_)))))
                    (_E1233012408_)))))
        (let* ((_e1229612303_ _stx12288_)
               (_E1229812307_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1229612303_)))
               (_E1229712322_
                (lambda ()
                  (if (gx#stx-pair? _e1229612303_)
                      (let ((_e1229912311_ (gx#syntax-e _e1229612303_)))
                        (let ((_hd1230012314_ (##car _e1229912311_))
                              (_tl1230112316_ (##cdr _e1229912311_)))
                          (let ((_body12319_ _tl1230112316_))
                            (if '#t
                                (if (_current-phi12291_)
                                    (_K12294_ _body12319_ '())
                                    (call-with-parameters
                                     (lambda () (_K12294_ _body12319_ '()))
                                     _current-phi12291_
                                     (gx#current-expander-phi)))
                                (_E1229812307_)))))
                      (_E1229812307_)))))
          (_E1229712322_)))))
  (begin
    (define gx#core-expand-import%__%
      (lambda (_stx11828_ _internal-expand?11829_)
        (letrec ((_expand111831_
                  (lambda (_hd12273_ _K12274_ _rest12275_ _r12276_)
                    (if (gx#core-bound-module? _hd12273_)
                        (_import111832_
                         (gx#syntax-local-e__0 _hd12273_)
                         _K12274_
                         _rest12275_
                         _r12276_)
                        (if (gx#core-library-module-path? _hd12273_)
                            (_import111832_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path _hd12273_))
                             _K12274_
                             _rest12275_
                             _r12276_)
                            (if (gx#stx-string? _hd12273_)
                                (_import111832_
                                 (gx#import-module__0
                                  (gx#core-resolve-module-path__%
                                   _hd12273_
                                   (gx#stx-source _stx11828_)))
                                 _K12274_
                                 _rest12275_
                                 _r12276_)
                                (if (##structure-instance-of?
                                     (gx#stx-e _hd12273_)
                                     'gx#module-context::t)
                                    (_K12274_
                                     _rest12275_
                                     (cons (gx#stx-e _hd12273_) _r12276_))
                                    (if (_import-spec?11833_ _hd12273_)
                                        (_import-spec11838_
                                         _hd12273_
                                         _K12274_
                                         _rest12275_
                                         _r12276_)
                                        (if (_import-submodule?11834_
                                             _hd12273_)
                                            (_import-submodule11836_
                                             _hd12273_
                                             _K12274_
                                             _rest12275_
                                             _r12276_)
                                            (if (_import-runtime?11835_
                                                 _hd12273_)
                                                (_import-runtime11837_
                                                 _hd12273_
                                                 _K12274_
                                                 _rest12275_
                                                 _r12276_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; illegal import"
                                                 _stx11828_
                                                 _hd12273_))))))))))
                 (_import111832_
                  (lambda (_ctx12262_ _K12263_ _rest12264_ _r12265_)
                    (let ((_dphi12267_
                           (fx- (gx#current-import-expander-phi)
                                (gx#current-expander-phi))))
                      (_K12263_
                       _rest12264_
                       (cons (##structure
                              gx#import-set::t
                              _ctx12262_
                              _dphi12267_
                              (map (lambda (_g1226812270_)
                                     (gx#core-module-export->import__%
                                      _g1226812270_
                                      '#f
                                      _dphi12267_))
                                   (##structure-ref
                                    _ctx12262_
                                    '9
                                    gx#module-context::t
                                    '#f)))
                             _r12265_)))))
                 (_import-spec?11833_
                  (lambda (_hd12219_)
                    (let* ((_e1222012230_ _hd12219_)
                           (_E1222212234_ (lambda () '#f))
                           (_E1222112258_
                            (lambda ()
                              (if (gx#stx-pair? _e1222012230_)
                                  (let ((_e1222312238_
                                         (gx#syntax-e _e1222012230_)))
                                    (let ((_hd1222412241_
                                           (##car _e1222312238_))
                                          (_tl1222512243_
                                           (##cdr _e1222312238_)))
                                      (if (eq? (gx#stx-e _hd1222412241_)
                                               'spec:)
                                          (if (gx#stx-pair? _tl1222512243_)
                                              (let ((_e1222612246_
                                                     (gx#syntax-e
                                                      _tl1222512243_)))
                                                (let ((_hd1222712249_
                                                       (##car _e1222612246_))
                                                      (_tl1222812251_
                                                       (##cdr _e1222612246_)))
                                                  (let* ((_spath12254_
                                                          _hd1222712249_)
                                                         (_specs12256_
                                                          _tl1222812251_))
                                                    (if '#t
                                                        '#t
                                                        (_E1222212234_)))))
                                              (_E1222212234_))
                                          (_E1222212234_))))
                                  (_E1222212234_)))))
                      (_E1222112258_))))
                 (_import-submodule?11834_
                  (lambda (_hd12176_)
                    (let* ((_e1217712187_ _hd12176_)
                           (_E1217912191_ (lambda () '#f))
                           (_E1217812215_
                            (lambda ()
                              (if (gx#stx-pair? _e1217712187_)
                                  (let ((_e1218012195_
                                         (gx#syntax-e _e1217712187_)))
                                    (let ((_hd1218112198_
                                           (##car _e1218012195_))
                                          (_tl1218212200_
                                           (##cdr _e1218012195_)))
                                      (if (eq? (gx#stx-e _hd1218112198_) 'in:)
                                          (if (gx#stx-pair? _tl1218212200_)
                                              (let ((_e1218312203_
                                                     (gx#syntax-e
                                                      _tl1218212200_)))
                                                (let ((_hd1218412206_
                                                       (##car _e1218312203_))
                                                      (_tl1218512208_
                                                       (##cdr _e1218312203_)))
                                                  (let* ((_top12211_
                                                          _hd1218412206_)
                                                         (_sub12213_
                                                          _tl1218512208_))
                                                    (if '#t
                                                        '#t
                                                        (_E1217912191_)))))
                                              (_E1217912191_))
                                          (_E1217912191_))))
                                  (_E1217912191_)))))
                      (_E1217812215_))))
                 (_import-runtime?11835_
                  (lambda (_hd12133_)
                    (let* ((_e1213412144_ _hd12133_)
                           (_E1213612148_ (lambda () '#f))
                           (_E1213512172_
                            (lambda ()
                              (if (gx#stx-pair? _e1213412144_)
                                  (let ((_e1213712152_
                                         (gx#syntax-e _e1213412144_)))
                                    (let ((_hd1213812155_
                                           (##car _e1213712152_))
                                          (_tl1213912157_
                                           (##cdr _e1213712152_)))
                                      (if (eq? (gx#stx-e _hd1213812155_)
                                               'runtime:)
                                          (if (gx#stx-pair? _tl1213912157_)
                                              (let ((_e1214012160_
                                                     (gx#syntax-e
                                                      _tl1213912157_)))
                                                (let ((_hd1214112163_
                                                       (##car _e1214012160_))
                                                      (_tl1214212165_
                                                       (##cdr _e1214012160_)))
                                                  (let* ((_top12168_
                                                          _hd1214112163_)
                                                         (_spath12170_
                                                          _tl1214212165_))
                                                    (if '#t
                                                        '#t
                                                        (_E1213612148_)))))
                                              (_E1213612148_))
                                          (_E1213612148_))))
                                  (_E1213612148_)))))
                      (_E1213512172_))))
                 (_import-submodule11836_
                  (lambda (_hd12100_ _K12101_ _rest12102_ _r12103_)
                    (let* ((_e1210412111_ _hd12100_)
                           (_E1210612115_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _e1210412111_)))
                           (_E1210512129_
                            (lambda ()
                              (if (gx#stx-pair? _e1210412111_)
                                  (let ((_e1210712119_
                                         (gx#syntax-e _e1210412111_)))
                                    (let ((_hd1210812122_
                                           (##car _e1210712119_))
                                          (_tl1210912124_
                                           (##cdr _e1210712119_)))
                                      (let ((_spath12127_ _tl1210912124_))
                                        (if '#t
                                            (_import111832_
                                             (_import-spec-source11839_
                                              _spath12127_)
                                             _K12101_
                                             _rest12102_
                                             _r12103_)
                                            (_E1210612115_)))))
                                  (_E1210612115_)))))
                      (_E1210512129_))))
                 (_import-runtime11837_
                  (lambda (_hd12067_ _K12068_ _rest12069_ _r12070_)
                    (let* ((_e1207112078_ _hd12067_)
                           (_E1207312082_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _e1207112078_)))
                           (_E1207212096_
                            (lambda ()
                              (if (gx#stx-pair? _e1207112078_)
                                  (let ((_e1207412086_
                                         (gx#syntax-e _e1207112078_)))
                                    (let ((_hd1207512089_
                                           (##car _e1207412086_))
                                          (_tl1207612091_
                                           (##cdr _e1207412086_)))
                                      (let ((_spath12094_ _tl1207612091_))
                                        (if '#t
                                            (_K12068_
                                             _rest12069_
                                             (cons (_import-spec-source11839_
                                                    _spath12094_)
                                                   _r12070_))
                                            (_E1207312082_)))))
                                  (_E1207312082_)))))
                      (_E1207212096_))))
                 (_import-spec11838_
                  (lambda (_hd11906_ _K11907_ _rest11908_ _r11909_)
                    (let* ((_e1191011927_ _hd11906_)
                           (_E1191911931_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _e1191011927_)))
                           (_E1191212041_
                            (lambda ()
                              (if (gx#stx-pair? _e1191011927_)
                                  (let ((_e1192011935_
                                         (gx#syntax-e _e1191011927_)))
                                    (let ((_hd1192111938_
                                           (##car _e1192011935_))
                                          (_tl1192211940_
                                           (##cdr _e1192011935_)))
                                      (if (gx#stx-pair? _tl1192211940_)
                                          (let ((_e1192311943_
                                                 (gx#syntax-e _tl1192211940_)))
                                            (let ((_hd1192411946_
                                                   (##car _e1192311943_))
                                                  (_tl1192511948_
                                                   (##cdr _e1192311943_)))
                                              (let* ((_path11951_
                                                      _hd1192411946_)
                                                     (_specs11953_
                                                      _tl1192511948_))
                                                (if '#t
                                                    (let ((_src-ctx11955_
                                                           (_import-spec-source11839_
                                                            _path11951_))
                                                          (_exports11956_
                                                           (make-table))
                                                          (_specs11957_
                                                           (gx#syntax->list
                                                            _specs11953_)))
                                                      (begin
                                                        (for-each
                                                         (lambda (_out11959_)
                                                           (table-set!
                                                            _exports11956_
                                                            (cons (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _out11959_
                           '3
                           gx#module-export::t
                           '#f)
                          (##direct-structure-ref
                           _out11959_
                           '4
                           gx#module-export::t
                           '#f))
                    _out11959_))
                 (##structure-ref _src-ctx11955_ '9 gx#module-context::t '#f))
                (_K11907_
                 _rest11908_
                 (foldl1 (lambda (_spec11961_ _r11962_)
                           (let* ((_e1196311979_ _spec11961_)
                                  (_E1196511983_
                                   (lambda ()
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _e1196311979_)))
                                  (_E1196412037_
                                   (lambda ()
                                     (if (gx#stx-pair? _e1196311979_)
                                         (let ((_e1196611987_
                                                (gx#syntax-e _e1196311979_)))
                                           (let ((_hd1196711990_
                                                  (##car _e1196611987_))
                                                 (_tl1196811992_
                                                  (##cdr _e1196611987_)))
                                             (let ((_phi11995_ _hd1196711990_))
                                               (if (gx#stx-pair?
                                                    _tl1196811992_)
                                                   (let ((_e1196911997_
                                                          (gx#syntax-e
                                                           _tl1196811992_)))
                                                     (let ((_hd1197012000_
                                                            (##car _e1196911997_))
                                                           (_tl1197112002_
                                                            (##cdr _e1196911997_)))
                                                       (let ((_name12005_
                                                              _hd1197012000_))
                                                         (if (gx#stx-pair?
                                                              _tl1197112002_)
                                                             (let ((_e1197212007_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _tl1197112002_)))
                       (let ((_hd1197312010_ (##car _e1197212007_))
                             (_tl1197412012_ (##cdr _e1197212007_)))
                         (let ((_src-phi12015_ _hd1197312010_))
                           (if (gx#stx-pair? _tl1197412012_)
                               (let ((_e1197512017_
                                      (gx#syntax-e _tl1197412012_)))
                                 (let ((_hd1197612020_ (##car _e1197512017_))
                                       (_tl1197712022_ (##cdr _e1197512017_)))
                                   (let ((_src-name12025_ _hd1197612020_))
                                     (if (gx#stx-null? _tl1197712022_)
                                         (if (if (gx#stx-fixnum?
                                                  _src-phi12015_)
                                                 (if (gx#identifier?
                                                      _src-name12025_)
                                                     (if (gx#stx-fixnum?
                                                          _phi11995_)
                                                         (gx#identifier?
                                                          _name12005_)
                                                         '#f)
                                                     '#f)
                                                 '#f)
                                             (let ((_src-phi12027_
                                                    (gx#stx-e _src-phi12015_))
                                                   (_src-name12028_
                                                    (gx#core-identifier-key
                                                     _src-name12025_))
                                                   (_phi12029_
                                                    (gx#stx-e _phi11995_))
                                                   (_name12030_
                                                    (gx#core-identifier-key
                                                     _name12005_)))
                                               (let ((_$e12032_
                                                      (table-ref
                                                       _exports11956_
                                                       (cons _src-phi12027_
                                                             _src-name12028_)
                                                       '#f)))
                                                 (if _$e12032_
                                                     ((lambda (_out12035_)
                                                        (cons (gx#core-module-export->import__%
                                                               _out12035_
                                                               _name12030_
                                                               (fx- _phi12029_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _src-phi12027_))
                      _r11962_))
              _$e12032_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; no matching export"
                                                      _stx11828_
                                                      _hd11906_))))
                                             (_E1196511983_))
                                         (_E1196511983_)))))
                               (_E1196511983_)))))
                     (_E1196511983_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1196511983_)))))
                                         (_E1196511983_)))))
                             (_E1196412037_)))
                         _r11909_
                         _specs11957_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1191911931_)))))
                                          (_E1191911931_))))
                                  (_E1191911931_))))
                           (_E1191112063_
                            (lambda ()
                              (if (gx#stx-pair? _e1191011927_)
                                  (let ((_e1191312045_
                                         (gx#syntax-e _e1191011927_)))
                                    (let ((_hd1191412048_
                                           (##car _e1191312045_))
                                          (_tl1191512050_
                                           (##cdr _e1191312045_)))
                                      (if (gx#stx-pair? _tl1191512050_)
                                          (let ((_e1191612053_
                                                 (gx#syntax-e _tl1191512050_)))
                                            (let ((_hd1191712056_
                                                   (##car _e1191612053_))
                                                  (_tl1191812058_
                                                   (##cdr _e1191612053_)))
                                              (let ((_path12061_
                                                     _hd1191712056_))
                                                (if (gx#stx-null?
                                                     _tl1191812058_)
                                                    (if '#t
                                                        (_K11907_
                                                         _rest11908_
                                                         (cons (_import-spec-source11839_
                                                                _path12061_)
                                                               _r11909_))
                                                        (_E1191212041_))
                                                    (_E1191212041_)))))
                                          (_E1191212041_))))
                                  (_E1191212041_)))))
                      (_E1191112063_))))
                 (_import-spec-source11839_
                  (lambda (_spath11904_)
                    (gx#core-import-nested-module _spath11904_ _stx11828_)))
                 (_import!11840_
                  (lambda (_rbody11853_)
                    (letrec* ((_current-ctx11855_
                               (gx#current-expander-context))
                              (_deps11856_ (make-hash-table-eq))
                              (_bind!11857_
                               (lambda (_hd11902_)
                                 (gx#core-bind-import!__1
                                  _hd11902_
                                  _current-ctx11855_))))
                      (let _lp11859_ ((_rest11861_ _rbody11853_)
                                      (_body11862_ '()))
                        (let* ((_rest1186311871_ _rest11861_)
                               (_else1186511881_
                                (lambda ()
                                  (begin
                                    (if (##structure-instance-of?
                                         _current-ctx11855_
                                         'gx#module-context::t)
                                        (##structure-set!
                                         _current-ctx11855_
                                         (foldl1 cons
                                                 (##structure-ref
                                                  _current-ctx11855_
                                                  '8
                                                  gx#module-context::t
                                                  '#f)
                                                 _body11862_)
                                         '8
                                         gx#module-context::t
                                         '#f)
                                        '#!void)
                                    (table-for-each
                                     (lambda (_ctx11879_ _g14749_)
                                       (gx#eval-module _ctx11879_))
                                     _deps11856_)
                                    _body11862_)))
                               (_K1186711890_
                                (lambda (_rest11884_ _hd11885_)
                                  (begin
                                    (if (##structure-direct-instance-of?
                                         _hd11885_
                                         'gx#module-import::t)
                                        (begin
                                          (_bind!11857_ _hd11885_)
                                          (if (if (fxpositive?
                                                   (##direct-structure-ref
                                                    _hd11885_
                                                    '3
                                                    gx#module-import::t
                                                    '#f))
                                                  (fxzero? (##direct-structure-ref
                                                            (##direct-structure-ref
                                                             _hd11885_
                                                             '1
                                                             gx#module-import::t
                                                             '#f)
                                                            '3
                                                            gx#module-export::t
                                                            '#f))
                                                  '#f)
                                              (table-set!
                                               _deps11856_
                                               (##direct-structure-ref
                                                (##direct-structure-ref
                                                 _hd11885_
                                                 '1
                                                 gx#module-import::t
                                                 '#f)
                                                '1
                                                gx#module-export::t
                                                '#f)
                                               '#t)
                                              '#!void))
                                        (if (##structure-direct-instance-of?
                                             _hd11885_
                                             'gx#import-set::t)
                                            (begin
                                              (for-each
                                               _bind!11857_
                                               (##direct-structure-ref
                                                _hd11885_
                                                '3
                                                gx#import-set::t
                                                '#f))
                                              (if (fxpositive?
                                                   (##direct-structure-ref
                                                    _hd11885_
                                                    '2
                                                    gx#import-set::t
                                                    '#f))
                                                  (table-set!
                                                   _deps11856_
                                                   (##direct-structure-ref
                                                    _hd11885_
                                                    '1
                                                    gx#import-set::t
                                                    '#f)
                                                   '#t)
                                                  '#!void))
                                            (let ((_$e11887_
                                                   (##structure-instance-of?
                                                    _hd11885_
                                                    'gx#module-context::t)))
                                              (if _$e11887_
                                                  _$e11887_
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Unexpected import"
                                                   _stx11828_
                                                   _hd11885_)))))
                                    (_lp11859_
                                     _rest11884_
                                     (cons _hd11885_ _body11862_))))))
                          (if (##pair? _rest1186311871_)
                              (let ((_hd1186811893_ (##car _rest1186311871_))
                                    (_tl1186911895_ (##cdr _rest1186311871_)))
                                (let* ((_hd11898_ _hd1186811893_)
                                       (_rest11900_ _tl1186911895_))
                                  (_K1186711890_ _rest11900_ _hd11898_)))
                              (_else1186511881_)))))))
                 (_expanded-import?11841_
                  (lambda (_e11845_)
                    (let ((_$e11847_
                           (##structure-direct-instance-of?
                            _e11845_
                            'gx#import-set::t)))
                      (if _$e11847_
                          _$e11847_
                          (let ((_$e11850_
                                 (##structure-direct-instance-of?
                                  _e11845_
                                  'gx#module-import::t)))
                            (if _$e11850_
                                _$e11850_
                                (##structure-instance-of?
                                 _e11845_
                                 'gx#module-context::t))))))))
          (let ((_rbody11843_
                 (gx#core-expand-import/export
                  _stx11828_
                  _expanded-import?11841_
                  'apply-import-expander
                  gx#current-import-expander-phi
                  _expand111831_)))
            (if _internal-expand?11829_
                (reverse _rbody11843_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#import (_import!11840_ _rbody11843_))
                 (gx#stx-source _stx11828_)))))))
    (begin
      (define gx#core-expand-import%__0
        (lambda (_stx12281_)
          (let ((_internal-expand?12283_ '#f))
            (gx#core-expand-import%__% _stx12281_ _internal-expand?12283_))))
      (define gx#core-expand-import%
        (lambda _g14751_
          (let ((_g14750_ (length _g14751_)))
            (cond ((##fx= _g14750_ 1)
                   (apply gx#core-expand-import%__0 _g14751_))
                  ((##fx= _g14750_ 2)
                   (apply gx#core-expand-import%__% _g14751_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-expand-import%
                    _g14751_))))))))
  (define gx#core-import-nested-module
    (lambda (_spath11755_ _where11756_)
      (let* ((_e1175711764_ _spath11755_)
             (_E1175911768_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1175711764_)))
             (_E1175811823_
              (lambda ()
                (if (gx#stx-pair? _e1175711764_)
                    (let ((_e1176011772_ (gx#syntax-e _e1175711764_)))
                      (let ((_hd1176111775_ (##car _e1176011772_))
                            (_tl1176211777_ (##cdr _e1176011772_)))
                        (let* ((_origin11780_ _hd1176111775_)
                               (_sub11782_ _tl1176211777_))
                          (if '#t
                              (let ((_origin-ctx11784_
                                     (if (gx#stx-false? _origin11780_)
                                         (gx#current-expander-context)
                                         (gx#import-module__0 _origin11780_))))
                                (let _lp11786_ ((_rest11788_ _sub11782_)
                                                (_ctx11789_ _origin-ctx11784_))
                                  (let* ((_e1179011797_ _rest11788_)
                                         (_E1179211801_ (lambda () _ctx11789_))
                                         (_E1179111819_
                                          (lambda ()
                                            (if (gx#stx-pair? _e1179011797_)
                                                (let ((_e1179311805_
                                                       (gx#syntax-e
                                                        _e1179011797_)))
                                                  (let ((_hd1179411808_
                                                         (##car _e1179311805_))
                                                        (_tl1179511810_
                                                         (##cdr _e1179311805_)))
                                                    (let* ((_id11813_
                                                            _hd1179411808_)
                                                           (_rest11815_
                                                            _tl1179511810_))
                                                      (if '#t
                                                          (let ((_bind11817_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#resolve-identifier__% _id11813_ '0 _ctx11789_)))
                    (begin
                      (if (if (##structure-direct-instance-of?
                               _bind11817_
                               'gx#syntax-binding::t)
                              (##structure-instance-of?
                               (##direct-structure-ref
                                _bind11817_
                                '4
                                gx#syntax-binding::t
                                '#f)
                               'gx#module-context::t)
                              '#f)
                          '#!void
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; not bound as module"
                           _where11756_
                           _spath11755_
                           _id11813_))
                      (_lp11786_
                       _rest11815_
                       (##direct-structure-ref
                        _bind11817_
                        '4
                        gx#syntax-binding::t
                        '#f))))
                  (_E1179211801_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E1179211801_)))))
                                    (_E1179111819_))))
                              (_E1175911768_)))))
                    (_E1175911768_)))))
        (_E1175811823_))))
  (define gx#core-expand-import-source
    (lambda (_hd11753_)
      (gx#core-expand-import%__%
       (cons 'import-internal% (cons _hd11753_ '()))
       '#t)))
  (begin
    (define gx#core-expand-export%__%
      (lambda (_stx11264_ _internal-expand?11265_)
        (letrec* ((_make-export__1468914690_
                   (lambda (_bind11701_ _phi11702_ _ctx11703_ _name11704_)
                     (let* ((_key11706_
                             (##structure-ref
                              _bind11701_
                              '2
                              gx#binding::t
                              '#f))
                            (_export-key11708_
                             (if _name11704_
                                 (gx#core-identifier-key _name11704_)
                                 _key11706_)))
                       (##structure
                        gx#module-export::t
                        _ctx11703_
                        _key11706_
                        _phi11702_
                        _export-key11708_
                        (let ((_$e11711_
                               (##structure-instance-of?
                                _bind11701_
                                'gx#extern-binding::t)))
                          (if _$e11711_
                              _$e11711_
                              (##structure-direct-instance-of?
                               _bind11701_
                               'gx#import-binding::t)))))))
                  (_make-export__0__1469114694_
                   (lambda (_bind11717_)
                     (let* ((_phi11719_ (gx#current-export-expander-phi))
                            (_ctx11721_ (gx#current-expander-context))
                            (_name11723_ '#f))
                       (_make-export__1468914690_
                        _bind11717_
                        _phi11719_
                        _ctx11721_
                        _name11723_))))
                  (_make-export__1__1469214695_
                   (lambda (_bind11725_ _phi11726_)
                     (let* ((_ctx11728_ (gx#current-expander-context))
                            (_name11730_ '#f))
                       (_make-export__1468914690_
                        _bind11725_
                        _phi11726_
                        _ctx11728_
                        _name11730_))))
                  (_make-export__2__1469314696_
                   (lambda (_bind11732_ _phi11733_ _ctx11734_)
                     (let ((_name11736_ '#f))
                       (_make-export__1468914690_
                        _bind11732_
                        _phi11733_
                        _ctx11734_
                        _name11736_))))
                  (_make-export11267_
                   (lambda _g14753_
                     (let ((_g14752_ (length _g14753_)))
                       (cond ((##fx= _g14752_ 1)
                              (apply _make-export__0__1469114694_ _g14753_))
                             ((##fx= _g14752_ 2)
                              (apply _make-export__1__1469214695_ _g14753_))
                             ((##fx= _g14752_ 3)
                              (apply _make-export__2__1469314696_ _g14753_))
                             ((##fx= _g14752_ 4)
                              (apply _make-export__1468914690_ _g14753_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g14753_))))))
                  (_expand111268_
                   (lambda (_hd11414_ _K11415_ _rest11416_ _r11417_)
                     (let* ((_e1141811450_ _hd11414_)
                            (_E1144511454_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal export"
                                _stx11264_
                                _hd11414_)))
                            (_E1143511533_
                             (lambda ()
                               (if (gx#stx-pair? _e1141811450_)
                                   (let ((_e1144611458_
                                          (gx#syntax-e _e1141811450_)))
                                     (let ((_hd1144711461_
                                            (##car _e1144611458_))
                                           (_tl1144811463_
                                            (##cdr _e1144611458_)))
                                       (if (eq? (gx#stx-e _hd1144711461_)
                                                'import:)
                                           (let ((_in11466_ _tl1144811463_))
                                             (if (gx#stx-list? _in11466_)
                                                 (let _lp11468_ ((_in-rest11470_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _in11466_)
                         (_r11471_ _r11417_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_e1147211479_
                                                           _in-rest11470_)
                                                          (_E1147411483_
                                                           (lambda ()
                                                             (_K11415_
                                                              _rest11416_
                                                              _r11471_)))
                                                          (_E1147311529_
                                                           (lambda ()
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _e1147211479_)
                         (let ((_e1147511487_ (gx#syntax-e _e1147211479_)))
                           (let ((_hd1147611490_ (##car _e1147511487_))
                                 (_tl1147711492_ (##cdr _e1147511487_)))
                             (let* ((_hd11495_ _hd1147611490_)
                                    (_in-rest11497_ _tl1147711492_))
                               (if '#t
                                   (let ((_src11527_
                                          (if (gx#core-bound-module? _hd11495_)
                                              (gx#syntax-local-e__0 _hd11495_)
                                              (if (gx#core-library-module-path?
                                                   _hd11495_)
                                                  (gx#import-module__0
                                                   (gx#core-resolve-library-module-path
                                                    _hd11495_))
                                                  (if (gx#stx-string?
                                                       _hd11495_)
                                                      (gx#import-module__0
                                                       (gx#core-resolve-module-path__%
                                                        _hd11495_
                                                        (gx#stx-source
                                                         _stx11264_)))
                                                      (let* ((_e1149811505_
                                                              _hd11495_)
                                                             (_E1150011509_
                                                              (lambda ()
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; illegal re-export"
                         _stx11264_
                         _hd11495_)))
                     (_E1149911523_
                      (lambda ()
                        (if (gx#stx-pair? _e1149811505_)
                            (let ((_e1150111513_ (gx#syntax-e _e1149811505_)))
                              (let ((_hd1150211516_ (##car _e1150111513_))
                                    (_tl1150311518_ (##cdr _e1150111513_)))
                                (if (eq? (gx#stx-e _hd1150211516_) 'in:)
                                    (let ((_spath11521_ _tl1150311518_))
                                      (if '#t
                                          (gx#core-import-nested-module
                                           _spath11521_
                                           _stx11264_)
                                          (_E1150011509_)))
                                    (_E1150011509_))))
                            (_E1150011509_)))))
                (_E1149911523_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_lp11468_
                                      _in-rest11497_
                                      (_export-imports11269_
                                       _src11527_
                                       _r11471_)))
                                   (_E1147411483_)))))
                         (_E1147411483_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E1147311529_)))
                                                 (_E1144511454_)))
                                           (_E1144511454_))))
                                   (_E1144511454_))))
                            (_E1142211572_
                             (lambda ()
                               (if (gx#stx-pair? _e1141811450_)
                                   (let ((_e1143611537_
                                          (gx#syntax-e _e1141811450_)))
                                     (let ((_hd1143711540_
                                            (##car _e1143611537_))
                                           (_tl1143811542_
                                            (##cdr _e1143611537_)))
                                       (if (eq? (gx#stx-e _hd1143711540_)
                                                'rename:)
                                           (if (gx#stx-pair? _tl1143811542_)
                                               (let ((_e1143911545_
                                                      (gx#syntax-e
                                                       _tl1143811542_)))
                                                 (let ((_hd1144011548_
                                                        (##car _e1143911545_))
                                                       (_tl1144111550_
                                                        (##cdr _e1143911545_)))
                                                   (let ((_id11553_
                                                          _hd1144011548_))
                                                     (if (gx#stx-pair?
                                                          _tl1144111550_)
                                                         (let ((_e1144211555_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1144111550_)))
                   (let ((_hd1144311558_ (##car _e1144211555_))
                         (_tl1144411560_ (##cdr _e1144211555_)))
                     (let ((_name11563_ _hd1144311558_))
                       (if (gx#stx-null? _tl1144411560_)
                           (if '#t
                               (let* ((_phi11565_
                                       (gx#current-export-expander-phi))
                                      (_$e11567_
                                       (gx#core-resolve-identifier__1
                                        _id11553_
                                        _phi11565_)))
                                 (if _$e11567_
                                     ((lambda (_bind11570_)
                                        (_K11415_
                                         _rest11416_
                                         (cons (_make-export__1468914690_
                                                _bind11570_
                                                _phi11565_
                                                (gx#current-expander-context)
                                                _name11563_)
                                               _r11417_)))
                                      _$e11567_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Reference to unbound identifier"
                                      _stx11264_
                                      _hd11414_
                                      _id11553_)))
                               (_E1143511533_))
                           (_E1143511533_)))))
                 (_E1143511533_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E1143511533_))
                                           (_E1143511533_))))
                                   (_E1143511533_))))
                            (_E1142111621_
                             (lambda ()
                               (if (gx#stx-pair? _e1141811450_)
                                   (let ((_e1142311576_
                                          (gx#syntax-e _e1141811450_)))
                                     (let ((_hd1142411579_
                                            (##car _e1142311576_))
                                           (_tl1142511581_
                                            (##cdr _e1142311576_)))
                                       (if (eq? (gx#stx-e _hd1142411579_)
                                                'spec:)
                                           (if (gx#stx-pair? _tl1142511581_)
                                               (let ((_e1142611584_
                                                      (gx#syntax-e
                                                       _tl1142511581_)))
                                                 (let ((_hd1142711587_
                                                        (##car _e1142611584_))
                                                       (_tl1142811589_
                                                        (##cdr _e1142611584_)))
                                                   (let ((_phi11592_
                                                          _hd1142711587_))
                                                     (if (gx#stx-pair?
                                                          _tl1142811589_)
                                                         (let ((_e1142911594_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1142811589_)))
                   (let ((_hd1143011597_ (##car _e1142911594_))
                         (_tl1143111599_ (##cdr _e1142911594_)))
                     (let ((_id11602_ _hd1143011597_))
                       (if (gx#stx-pair? _tl1143111599_)
                           (let ((_e1143211604_ (gx#syntax-e _tl1143111599_)))
                             (let ((_hd1143311607_ (##car _e1143211604_))
                                   (_tl1143411609_ (##cdr _e1143211604_)))
                               (let ((_name11612_ _hd1143311607_))
                                 (if (gx#stx-null? _tl1143411609_)
                                     (if (if (gx#stx-fixnum? _phi11592_)
                                             (if (gx#identifier? _id11602_)
                                                 (gx#identifier? _name11612_)
                                                 '#f)
                                             '#f)
                                         (let* ((_phi11614_
                                                 (gx#stx-e _phi11592_))
                                                (_$e11616_
                                                 (gx#core-resolve-identifier__1
                                                  _id11602_
                                                  _phi11614_)))
                                           (if _$e11616_
                                               ((lambda (_bind11619_)
                                                  (_K11415_
                                                   _rest11416_
                                                   (cons (_make-export__1468914690_
                                                          _bind11619_
                                                          _phi11614_
                                                          (gx#current-expander-context)
                                                          _name11612_)
                                                         _r11417_)))
                                                _$e11616_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Reference to unbound identifier"
                                                _stx11264_
                                                _hd11414_
                                                _id11602_)))
                                         (_E1142211572_))
                                     (_E1142211572_)))))
                           (_E1142211572_)))))
                 (_E1142211572_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E1142211572_))
                                           (_E1142211572_))))
                                   (_E1142211572_))))
                            (_E1142011632_
                             (lambda ()
                               (let ((_id11625_ _e1141811450_))
                                 (if (gx#identifier? _id11625_)
                                     (let ((_$e11627_
                                            (gx#core-resolve-identifier__1
                                             _id11625_
                                             (gx#current-export-expander-phi))))
                                       (if _$e11627_
                                           ((lambda (_bind11630_)
                                              (_K11415_
                                               _rest11416_
                                               (cons (_make-export__0__1469114694_
                                                      _bind11630_)
                                                     _r11417_)))
                                            _$e11627_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Reference to unbound identifier"
                                            _stx11264_
                                            _hd11414_)))
                                     (_E1142111621_)))))
                            (_E1141911696_
                             (lambda ()
                               (if (eq? (gx#stx-e _e1141811450_) '#t)
                                   (if '#t
                                       (let* ((_current-ctx11636_
                                               (gx#current-expander-context))
                                              (_current-phi11638_
                                               (gx#current-export-expander-phi))
                                              (_phi-ctx11640_
                                               (gx#core-context-shift
                                                _current-ctx11636_
                                                _current-phi11638_))
                                              (_phi-bind11642_
                                               (table->list
                                                (##structure-ref
                                                 _phi-ctx11640_
                                                 '2
                                                 gx#expander-context::t
                                                 '#f))))
                                         (let _lp11645_ ((_bind-rest11647_
                                                          _phi-bind11642_)
                                                         (_set11648_ '()))
                                           (let* ((_bind-rest1164911659_
                                                   _bind-rest11647_)
                                                  (_else1165111667_
                                                   (lambda ()
                                                     (_K11415_
                                                      _rest11416_
                                                      (cons (##structure
                                                             gx#export-set::t
                                                             '#f
                                                             _current-phi11638_
                                                             _set11648_)
                                                            _r11417_))))
                                                  (_K1165311677_
                                                   (lambda (_bind-rest11670_
                                                            _bind11671_
                                                            _key11672_)
                                                     (if (if (##structure-direct-instance-of?
                                                              _bind11671_
                                                              'gx#import-binding::t)
                                                             '#t
                                                             (gx#private-feature-binding?
                                                              _bind11671_))
                                                         (_lp11645_
                                                          _bind-rest11670_
                                                          _set11648_)
                                                         (_lp11645_
                                                          _bind-rest11670_
                                                          (cons (_make-export__2__1469314696_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _bind11671_
                         _current-phi11638_
                         _current-ctx11636_)
                        _set11648_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (##pair? _bind-rest1164911659_)
                                                 (let ((_hd1165411680_
                                                        (##car _bind-rest1164911659_))
                                                       (_tl1165511682_
                                                        (##cdr _bind-rest1164911659_)))
                                                   (if (##pair? _hd1165411680_)
                                                       (let ((_hd1165611685_
                                                              (##car _hd1165411680_))
                                                             (_tl1165711687_
                                                              (##cdr _hd1165411680_)))
                                                         (let* ((_key11690_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1165611685_)
                        (_bind11692_ _tl1165711687_)
                        (_bind-rest11694_ _tl1165511682_))
                   (_K1165311677_ _bind-rest11694_ _bind11692_ _key11690_)))
               (_else1165111667_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_else1165111667_)))))
                                       (_E1142011632_))
                                   (_E1142011632_)))))
                       (_E1141911696_))))
                  (_export-imports11269_
                   (lambda (_src11290_ _r11291_)
                     (letrec* ((_current-ctx11293_
                                (gx#current-expander-context))
                               (_current-phi11294_
                                (gx#current-export-expander-phi))
                               (_import->export11295_
                                (lambda (_in11376_)
                                  (let* ((_in1137711385_ _in11376_)
                                         (_E1137911389_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _in1137711385_)))
                                         (_K1138011396_
                                          (lambda (_phi11392_
                                                   _key11393_
                                                   _out11394_)
                                            (##structure
                                             gx#module-export::t
                                             _current-ctx11293_
                                             _key11393_
                                             _phi11392_
                                             _key11393_
                                             '#t))))
                                    (if (##structure-direct-instance-of?
                                         _in1137711385_
                                         'gx#module-import::t)
                                        (let* ((_e1138111399_
                                                (##vector-ref
                                                 _in1137711385_
                                                 '1))
                                               (_out11402_ _e1138111399_)
                                               (_e1138211404_
                                                (##vector-ref
                                                 _in1137711385_
                                                 '2))
                                               (_key11407_ _e1138211404_)
                                               (_e1138311409_
                                                (##vector-ref
                                                 _in1137711385_
                                                 '3))
                                               (_phi11412_ _e1138311409_))
                                          (_K1138011396_
                                           _phi11412_
                                           _key11407_
                                           _out11402_))
                                        (_E1137911389_)))))
                               (_fold-e11296_
                                (lambda (_in11298_ _r11299_)
                                  (let* ((_in1130011314_ _in11298_)
                                         (_else1130311322_
                                          (lambda () _r11299_)))
                                    (let ((_K1130911358_
                                           (lambda (_phi11354_
                                                    _key11355_
                                                    _out11356_)
                                             (if (if (fx= _phi11354_
                                                          _current-phi11294_)
                                                     (eq? _src11290_
                                                          (##direct-structure-ref
                                                           _out11356_
                                                           '1
                                                           gx#module-export::t
                                                           '#f))
                                                     '#f)
                                                 (cons (_import->export11295_
                                                        _in11298_)
                                                       _r11299_)
                                                 _r11299_)))
                                          (_K1130511333_
                                           (lambda (_imports11326_
                                                    _phi11327_
                                                    _ctx11328_)
                                             (if (if (fx= _phi11327_
                                                          _current-phi11294_)
                                                     (eq? _src11290_
                                                          _ctx11328_)
                                                     '#f)
                                                 (foldl1 (lambda (_in11330_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _r11331_)
                   (cons (_import->export11295_ _in11330_) _r11331_))
                 _r11299_
                 _imports11326_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _r11299_))))
                                      (let ((_try-match1130211351_
                                             (lambda ()
                                               (if (##structure-direct-instance-of?
                                                    _in1130011314_
                                                    'gx#import-set::t)
                                                   (let* ((_e1130611336_
                                                           (##vector-ref
                                                            _in1130011314_
                                                            '1))
                                                          (_e1130711341_
                                                           (##vector-ref
                                                            _in1130011314_
                                                            '2))
                                                          (_e1130811346_
                                                           (##vector-ref
                                                            _in1130011314_
                                                            '3)))
                                                     (let ((_ctx11339_
                                                            _e1130611336_)
                                                           (_phi11344_
                                                            _e1130711341_)
                                                           (_imports11349_
                                                            _e1130811346_))
                                                       (_K1130511333_
                                                        _imports11349_
                                                        _phi11344_
                                                        _ctx11339_)))
                                                   (_else1130311322_)))))
                                        (if (##structure-direct-instance-of?
                                             _in1130011314_
                                             'gx#module-import::t)
                                            (let* ((_e1131011361_
                                                    (##vector-ref
                                                     _in1130011314_
                                                     '1))
                                                   (_e1131111366_
                                                    (##vector-ref
                                                     _in1130011314_
                                                     '2))
                                                   (_e1131211371_
                                                    (##vector-ref
                                                     _in1130011314_
                                                     '3)))
                                              (let ((_out11364_ _e1131011361_)
                                                    (_key11369_ _e1131111366_)
                                                    (_phi11374_ _e1131211371_))
                                                (_K1130911358_
                                                 _phi11374_
                                                 _key11369_
                                                 _out11364_)))
                                            (_try-match1130211351_))))))))
                       (cons (##structure
                              gx#export-set::t
                              _src11290_
                              _current-phi11294_
                              (foldl1 _fold-e11296_
                                      '()
                                      (##structure-ref
                                       _current-ctx11293_
                                       '8
                                       gx#module-context::t
                                       '#f)))
                             _r11291_))))
                  (_export!11270_
                   (lambda (_rbody11280_)
                     (letrec* ((_current-ctx11282_
                                (gx#current-expander-context))
                               (_fold-e11283_
                                (lambda (_out11287_ _r11288_)
                                  (if (##structure-direct-instance-of?
                                       _out11287_
                                       'gx#module-export::t)
                                      (cons _out11287_ _r11288_)
                                      (if (##structure-direct-instance-of?
                                           _out11287_
                                           'gx#export-set::t)
                                          (foldl1 cons
                                                  _r11288_
                                                  (##direct-structure-ref
                                                   _out11287_
                                                   '3
                                                   gx#export-set::t
                                                   '#f))
                                          _r11288_)))))
                       (let ((_body11285_ (reverse _rbody11280_)))
                         (begin
                           (##structure-set!
                            _current-ctx11282_
                            (foldl1 _fold-e11283_
                                    (##structure-ref
                                     _current-ctx11282_
                                     '9
                                     gx#module-context::t
                                     '#f)
                                    _body11285_)
                            '9
                            gx#module-context::t
                            '#f)
                           _body11285_)))))
                  (_expanded-export?11271_
                   (lambda (_e11275_)
                     (let ((_$e11277_
                            (##structure-direct-instance-of?
                             _e11275_
                             'gx#module-export::t)))
                       (if _$e11277_
                           _$e11277_
                           (##structure-direct-instance-of?
                            _e11275_
                            'gx#export-set::t))))))
          (let ((_rbody11273_
                 (gx#core-expand-import/export
                  _stx11264_
                  _expanded-export?11271_
                  'apply-export-expander
                  gx#current-export-expander-phi
                  _expand111268_)))
            (if _internal-expand?11265_
                (reverse _rbody11273_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#export (_export!11270_ _rbody11273_))
                 (gx#stx-source _stx11264_)))))))
    (begin
      (define gx#core-expand-export%__0
        (lambda (_stx11746_)
          (let ((_internal-expand?11748_ '#f))
            (gx#core-expand-export%__% _stx11746_ _internal-expand?11748_))))
      (define gx#core-expand-export%
        (lambda _g14755_
          (let ((_g14754_ (length _g14755_)))
            (cond ((##fx= _g14754_ 1)
                   (apply gx#core-expand-export%__0 _g14755_))
                  ((##fx= _g14754_ 2)
                   (apply gx#core-expand-export%__% _g14755_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-expand-export%
                    _g14755_))))))))
  (define gx#core-expand-export-source
    (lambda (_hd11261_)
      (gx#core-expand-export%__%
       (cons 'export-macro% (cons _hd11261_ '()))
       '#t)))
  (define gx#core-expand-provide%
    (lambda (_stx11231_)
      (let* ((_e1123211239_ _stx11231_)
             (_E1123411243_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1123211239_)))
             (_E1123311257_
              (lambda ()
                (if (gx#stx-pair? _e1123211239_)
                    (let ((_e1123511247_ (gx#syntax-e _e1123211239_)))
                      (let ((_hd1123611250_ (##car _e1123511247_))
                            (_tl1123711252_ (##cdr _e1123511247_)))
                        (let ((_body11255_ _tl1123711252_))
                          (if (gx#identifier-list? _body11255_)
                              (begin
                                (gx#stx-for-each1
                                 gx#core-bind-feature!
                                 _body11255_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#provide
                                  (gx#stx-map1
                                   gx#core-quote-syntax
                                   _body11255_))
                                 (gx#stx-source _stx11231_)))
                              (_E1123411243_)))))
                    (_E1123411243_)))))
        (_E1123311257_))))
  (begin
    (define gx#core-bind-feature!__%
      (lambda (_id11197_ _private?11198_ _phi11199_ _ctx11200_)
        (gx#core-bind-syntax!__%
         _id11197_
         ((if _private?11198_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _id11197_))
         _private?11198_
         _phi11199_
         _ctx11200_)))
    (begin
      (define gx#core-bind-feature!__0
        (lambda (_id11205_)
          (let* ((_private?11207_ '#f)
                 (_phi11209_ (gx#current-expander-phi))
                 (_ctx11211_ (gx#current-expander-context)))
            (gx#core-bind-feature!__%
             _id11205_
             _private?11207_
             _phi11209_
             _ctx11211_))))
      (define gx#core-bind-feature!__1
        (lambda (_id11213_ _private?11214_)
          (let* ((_phi11216_ (gx#current-expander-phi))
                 (_ctx11218_ (gx#current-expander-context)))
            (gx#core-bind-feature!__%
             _id11213_
             _private?11214_
             _phi11216_
             _ctx11218_))))
      (define gx#core-bind-feature!__2
        (lambda (_id11220_ _private?11221_ _phi11222_)
          (let ((_ctx11224_ (gx#current-expander-context)))
            (gx#core-bind-feature!__%
             _id11220_
             _private?11221_
             _phi11222_
             _ctx11224_))))
      (define gx#core-bind-feature!
        (lambda _g14757_
          (let ((_g14756_ (length _g14757_)))
            (cond ((##fx= _g14756_ 1)
                   (apply gx#core-bind-feature!__0 _g14757_))
                  ((##fx= _g14756_ 2)
                   (apply gx#core-bind-feature!__1 _g14757_))
                  ((##fx= _g14756_ 3)
                   (apply gx#core-bind-feature!__2 _g14757_))
                  ((##fx= _g14756_ 4)
                   (apply gx#core-bind-feature!__% _g14757_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-feature!
                    _g14757_)))))))))
