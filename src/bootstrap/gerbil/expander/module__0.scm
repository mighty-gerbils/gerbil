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
    (lambda _$args15969_
      (apply make-struct-instance gx#module-import::t _$args15969_)))
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
    (lambda _$args15966_
      (apply make-struct-instance gx#module-export::t _$args15966_)))
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
    (lambda _$args15963_
      (apply make-struct-instance gx#import-set::t _$args15963_)))
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
    (lambda _$args15960_
      (apply make-struct-instance gx#export-set::t _$args15960_)))
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
    (lambda _$args15957_
      (apply make-class-instance gx#import-expander::t _$args15957_)))
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
    (lambda _$args15954_
      (apply make-class-instance gx#export-expander::t _$args15954_)))
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
    (lambda _$args15951_
      (apply make-class-instance gx#import-export-expander::t _$args15951_)))
  (define gx#current-import-expander-phi (make-parameter '#f))
  (define gx#current-export-expander-phi (make-parameter '#f))
  (define gx#current-module-reader-path (make-parameter '#f))
  (define gx#current-module-reader-args (make-parameter '#f))
  (define gx#module-context:::init!
    (lambda (_self15945_ _id15946_ _super15947_ _ns15948_ _path15949_)
      (struct-instance-init!
       _self15945_
       _id15946_
       (make-table 'test: eq?)
       _super15947_
       '#f
       '#f
       _ns15948_
       _path15949_
       '()
       '()
       '#f
       '#f)))
  (bind-method! gx#module-context::t ':init! gx#module-context:::init! '#f)
  (begin
    (define gx#prelude-context:::init!__%
      (lambda (_self15789_ _ctx15790_ _root15791_)
        (let ((_super15799_
               (let ((_$e15793_ _root15791_))
                 (if _$e15793_
                     _$e15793_
                     (let ((_$e15796_ (gx#core-context-root__0)))
                       (if _$e15796_
                           _$e15796_
                           (make-struct-instance gx#root-context::t)))))))
          (if _ctx15790_
              (let ((_id15802_
                     (##structure-ref
                      _ctx15790_
                      '1
                      gx#expander-context::t
                      '#f))
                    (_path15803_
                     (##structure-ref _ctx15790_ '7 gx#module-context::t '#f))
                    (_in15804_
                     (map gx#core-module-export->import
                          (##structure-ref
                           _ctx15790_
                           '9
                           gx#module-context::t
                           '#f)))
                    (_e15805_
                     (##make-promise (lambda () (gx#eval-module _ctx15790_)))))
                (begin
                  (struct-instance-init!
                   _self15789_
                   _id15802_
                   (make-table 'test: eq?)
                   _super15799_
                   '#f
                   '#f
                   _path15803_
                   _in15804_
                   _e15805_)
                  (for-each
                   (lambda (_g1580615808_)
                     (gx#core-bind-weak-import!__% _g1580615808_ _self15789_))
                   _in15804_)))
              (struct-instance-init!
               _self15789_
               '#f
               (make-table 'test: eq?)
               _super15799_
               '#f
               '#f
               '#f
               '()
               '#f)))))
    (begin
      (define gx#prelude-context:::init!__0
        (lambda (_self15814_ _ctx15815_)
          (let ((_root15817_ '#f))
            (gx#prelude-context:::init!__%
             _self15814_
             _ctx15815_
             _root15817_))))
      (define gx#prelude-context:::init!
        (lambda _g16009_
          (let ((_g16008_ (length _g16009_)))
            (cond ((##fx= _g16008_ 2)
                   (apply gx#prelude-context:::init!__0 _g16009_))
                  ((##fx= _g16008_ 3)
                   (apply gx#prelude-context:::init!__% _g16009_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#prelude-context:::init!
                    _g16009_))))))))
  (bind-method! gx#prelude-context::t ':init! gx#prelude-context:::init! '#f)
  (define gx#import-export-expander-init!
    (lambda (_self15663_ _e15664_)
      (struct-instance-init!
       _self15663_
       _e15664_
       (gx#current-expander-context)
       (fx- (gx#current-expander-phi) '1))))
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
    (lambda (_g1528915292_ _g1529015294_)
      (gx#core-apply-user-expander__%
       _g1528915292_
       _g1529015294_
       'apply-import-expander)))
  (bind-method!
   gx#import-expander::t
   'apply-import-expander
   gx#import-expander::apply-import-expander
   '#f)
  (define gx#export-expander::apply-export-expander
    (lambda (_g1516015163_ _g1516115165_)
      (gx#core-apply-user-expander__%
       _g1516015163_
       _g1516115165_
       'apply-export-expander)))
  (bind-method!
   gx#export-expander::t
   'apply-export-expander
   gx#export-expander::apply-export-expander
   '#f)
  (define gx#module-source-path
    (lambda (_ctx15031_)
      (let* ((_path15033_
              (##structure-ref _ctx15031_ '7 gx#module-context::t '#f))
             (_path15035_
              (if (pair? _path15033_) (last _path15033_) _path15033_)))
        (if (string? _path15035_) _path15035_ '#f))))
  (begin
    (define gx#import-module__%
      (lambda (_path15007_ _reload?15008_ _eval?15009_)
        (let ((_ctx15011_
               ((gx#current-expander-module-import)
                _path15007_
                _reload?15008_)))
          (begin
            (if (if _ctx15011_ _eval?15009_ '#f)
                (gx#eval-module _ctx15011_)
                '#!void)
            _ctx15011_))))
    (begin
      (define gx#import-module__0
        (lambda (_path15016_)
          (let* ((_reload?15018_ '#f) (_eval?15020_ '#f))
            (gx#import-module__% _path15016_ _reload?15018_ _eval?15020_))))
      (define gx#import-module__1
        (lambda (_path15022_ _reload?15023_)
          (let ((_eval?15025_ '#f))
            (gx#import-module__% _path15022_ _reload?15023_ _eval?15025_))))
      (define gx#import-module
        (lambda _g16011_
          (let ((_g16010_ (length _g16011_)))
            (cond ((##fx= _g16010_ 1) (apply gx#import-module__0 _g16011_))
                  ((##fx= _g16010_ 2) (apply gx#import-module__1 _g16011_))
                  ((##fx= _g16010_ 3) (apply gx#import-module__% _g16011_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#import-module
                    _g16011_))))))))
  (define gx#eval-module
    (lambda (_mod15004_) ((gx#current-expander-module-eval) _mod15004_)))
  (define gx#core-eval-module
    (lambda (_obj14989_)
      (letrec ((_force-e14991_
                (lambda (_getf15000_ _e15001_)
                  (call-with-parameters
                   (lambda () (force (_getf15000_ _e15001_)))
                   gx#current-expander-context
                   _e15001_
                   gx#current-expander-phi
                   '0))))
        (let _recur14993_ ((_e14995_ _obj14989_))
          (if (##structure-instance-of? _e14995_ 'gx#module-context::t)
              (begin
                (let ((_$e14997_ (gx#core-context-prelude__% _e14995_)))
                  (if _$e14997_ (_recur14993_ _$e14997_) '#!void))
                (_force-e14991_ gx#module-context-e _e14995_))
              (if (##structure-instance-of? _e14995_ 'gx#prelude-context::t)
                  (_force-e14991_ gx#prelude-context-e _e14995_)
                  (if (gx#stx-string? _e14995_)
                      (_recur14993_
                       (gx#import-module__0
                        (gx#core-resolve-module-path__0 _e14995_)))
                      (if (gx#core-library-module-path? _e14995_)
                          (_recur14993_
                           (gx#import-module__0
                            (gx#core-resolve-library-module-path _e14995_)))
                          (error '"Cannot eval module" _obj14989_)))))))))
  (begin
    (define gx#core-context-prelude__%
      (lambda (_ctx14972_)
        (let _lp14974_ ((_e14976_ _ctx14972_))
          (if (let ((_$e14978_
                     (##structure-instance-of?
                      _e14976_
                      'gx#module-context::t)))
                (if _$e14978_
                    _$e14978_
                    (##structure-instance-of? _e14976_ 'gx#local-context::t)))
              (_lp14974_ (##structure-ref _e14976_ '3 gx#phi-context::t '#f))
              (if (##structure-instance-of? _e14976_ 'gx#prelude-context::t)
                  _e14976_
                  '#f)))))
    (begin
      (define gx#core-context-prelude__0
        (lambda ()
          (let ((_ctx14985_ (gx#current-expander-context)))
            (gx#core-context-prelude__% _ctx14985_))))
      (define gx#core-context-prelude
        (lambda _g16013_
          (let ((_g16012_ (length _g16013_)))
            (cond ((##fx= _g16012_ 0)
                   (apply gx#core-context-prelude__0 _g16013_))
                  ((##fx= _g16012_ 1)
                   (apply gx#core-context-prelude__% _g16013_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-context-prelude
                    _g16013_))))))))
  (define gx#core-module->prelude-context
    (lambda (_ctx14962_)
      (let* ((_ht14964_ (gx#current-expander-module-registry))
             (_$e14966_ (table-ref _ht14964_ _ctx14962_ '#f)))
        (if _$e14966_
            (values _$e14966_)
            (let ((_pre14969_
                   (let ((__obj16004 (make-object gx#prelude-context::t '8)))
                     (begin
                       (gx#prelude-context:::init!__0 __obj16004 _ctx14962_)
                       __obj16004))))
              (begin
                (table-set! _ht14964_ _ctx14962_ _pre14969_)
                _pre14969_))))))
  (begin
    (define gx#core-import-module__%
      (lambda (_rpath14843_ _reload?14844_)
        (letrec ((_import-source14846_
                  (lambda (_path14931_)
                    (begin
                      (if (member _path14931_ (gx#current-expander-path))
                          (error '"Cyclic expansion" _path14931_)
                          '#!void)
                      (call-with-parameters
                       (lambda ()
                         (let ((_g16014_ (gx#core-read-module _path14931_)))
                           (begin
                             (let ((_g16015_
                                    (if (##values? _g16014_)
                                        (##vector-length _g16014_)
                                        1)))
                               (if (not (##fx= _g16015_ 4))
                                   (error "Context expects 4 values"
                                          _g16015_)))
                             (let ((_pre14934_ (##vector-ref _g16014_ 0))
                                   (_id14935_ (##vector-ref _g16014_ 1))
                                   (_ns14936_ (##vector-ref _g16014_ 2))
                                   (_body14937_ (##vector-ref _g16014_ 3)))
                               (let* ((_prelude14942_
                                       (if (##structure-instance-of?
                                            _pre14934_
                                            'gx#prelude-context::t)
                                           _pre14934_
                                           (if (##structure-instance-of?
                                                _pre14934_
                                                'gx#module-context::t)
                                               (gx#core-module->prelude-context
                                                _pre14934_)
                                               (if (string? _pre14934_)
                                                   (gx#core-module->prelude-context
                                                    (gx#core-import-module__0
                                                     _pre14934_))
                                                   (if (not _pre14934_)
                                                       (let ((_$e14939_
                                                              (gx#current-expander-module-prelude)))
                                                         (if _$e14939_
                                                             _$e14939_
                                                             (let ((__obj16005
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (make-object gx#prelude-context::t '8)))
                       (begin
                         (gx#prelude-context:::init!__0 __obj16005 '#f)
                         __obj16005))))
               (error '"Cannot import module; unknown prelude"
                      _rpath14843_
                      _pre14934_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_ctx14944_
                                       (let ((__obj16006
                                              (make-object
                                               gx#module-context::t
                                               '11)))
                                         (begin
                                           (gx#module-context:::init!
                                            __obj16006
                                            _id14935_
                                            _prelude14942_
                                            _ns14936_
                                            _path14931_)
                                           __obj16006)))
                                      (_body14946_
                                       (gx#core-expand-module-begin
                                        _body14937_
                                        _ctx14944_))
                                      (_body14948_
                                       (gx#core-quote-syntax__%
                                        (gx#core-cons '%#begin _body14946_)
                                        _path14931_
                                        _ctx14944_
                                        '())))
                                 (begin
                                   (##structure-set!
                                    _ctx14944_
                                    (##make-promise
                                     (lambda () (gx#eval-syntax* _body14948_)))
                                    '10
                                    gx#module-context::t
                                    '#f)
                                   (##structure-set!
                                    _ctx14944_
                                    _body14948_
                                    '11
                                    gx#module-context::t
                                    '#f)
                                   (table-set!
                                    (gx#current-expander-module-registry)
                                    _path14931_
                                    _ctx14944_)
                                   (table-set!
                                    (gx#current-expander-module-registry)
                                    _id14935_
                                    _ctx14944_)
                                   _ctx14944_))))))
                       gx#current-expander-context
                       (gx#core-context-root__0)
                       gx#current-expander-marks
                       '()
                       gx#current-expander-phi
                       '0
                       gx#current-expander-path
                       (cons _path14931_ (gx#current-expander-path))
                       gx#current-import-expander-phi
                       '#f
                       gx#current-export-expander-phi
                       '#f))))
                 (_import-submodule14847_
                  (lambda (_rpath14859_)
                    (let* ((_rpath1486014867_ _rpath14859_)
                           (_E1486214871_
                            (lambda ()
                              (error '"No clause matching" _rpath1486014867_)))
                           (_K1486314919_
                            (lambda (_refs14874_ _origin14875_)
                              (let ((_ctx14877_
                                     (if _origin14875_
                                         (gx#core-import-module__%
                                          _origin14875_
                                          _reload?14844_)
                                         (gx#current-expander-context))))
                                (let _lp14879_ ((_rest14881_ _refs14874_)
                                                (_ctx14882_ _ctx14877_))
                                  (let* ((_rest1488314891_ _rest14881_)
                                         (_else1488514899_
                                          (lambda () _ctx14882_))
                                         (_K1488714907_
                                          (lambda (_rest14902_ _id14903_)
                                            (let ((_bind14905_
                                                   (gx#resolve-identifier__%
                                                    _id14903_
                                                    '0
                                                    _ctx14882_)))
                                              (if (if (##structure-direct-instance-of?
                                                       _bind14905_
                                                       'gx#syntax-binding::t)
                                                      (##structure-instance-of?
                                                       (##direct-structure-ref
                                                        _bind14905_
                                                        '4
                                                        gx#syntax-binding::t
                                                        '#f)
                                                       'gx#module-context::t)
                                                      '#f)
                                                  (_lp14879_
                                                   _rest14902_
                                                   (##direct-structure-ref
                                                    _bind14905_
                                                    '4
                                                    gx#syntax-binding::t
                                                    '#f))
                                                  (error '"Cannot import submodule; not bound as a module"
                                                         _rpath14859_
                                                         _id14903_
                                                         _bind14905_))))))
                                    (if (##pair? _rest1488314891_)
                                        (let ((_hd1488814910_
                                               (##car _rest1488314891_))
                                              (_tl1488914912_
                                               (##cdr _rest1488314891_)))
                                          (let* ((_id14915_ _hd1488814910_)
                                                 (_rest14917_ _tl1488914912_))
                                            (_K1488714907_
                                             _rest14917_
                                             _id14915_)))
                                        (_else1488514899_))))))))
                      (if (##pair? _rpath1486014867_)
                          (let ((_hd1486414922_ (##car _rpath1486014867_))
                                (_tl1486514924_ (##cdr _rpath1486014867_)))
                            (let* ((_origin14927_ _hd1486414922_)
                                   (_refs14929_ _tl1486514924_))
                              (_K1486314919_ _refs14929_ _origin14927_)))
                          (_E1486214871_))))))
          (let ((_$e14849_
                 (if (not _reload?14844_)
                     (table-ref
                      (gx#current-expander-module-registry)
                      _rpath14843_
                      '#f)
                     '#f)))
            (if _$e14849_
                (values _$e14849_)
                (if (list? _rpath14843_)
                    (_import-submodule14847_ _rpath14843_)
                    (if (gx#core-library-module-path? _rpath14843_)
                        (let ((_ctx14852_
                               (gx#core-import-module__%
                                (gx#core-resolve-library-module-path
                                 _rpath14843_)
                                _reload?14844_)))
                          (begin
                            (table-set!
                             (gx#current-expander-module-registry)
                             _rpath14843_
                             _ctx14852_)
                            _ctx14852_))
                        (let* ((_npath14854_ (path-normalize _rpath14843_))
                               (_$e14856_
                                (if (not _reload?14844_)
                                    (table-ref
                                     (gx#current-expander-module-registry)
                                     _npath14854_
                                     '#f)
                                    '#f)))
                          (if _$e14856_
                              (values _$e14856_)
                              (_import-source14846_ _npath14854_))))))))))
    (begin
      (define gx#core-import-module__0
        (lambda (_rpath14955_)
          (let ((_reload?14957_ '#f))
            (gx#core-import-module__% _rpath14955_ _reload?14957_))))
      (define gx#core-import-module
        (lambda _g16017_
          (let ((_g16016_ (length _g16017_)))
            (cond ((##fx= _g16016_ 1)
                   (apply gx#core-import-module__0 _g16017_))
                  ((##fx= _g16016_ 2)
                   (apply gx#core-import-module__% _g16017_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-import-module
                    _g16017_))))))))
  (define gx#core-read-module
    (lambda (_path14837_)
      (with-exception-catcher
       (lambda (_exn14839_)
         (if (if (datum-parsing-exception? _exn14839_)
                 (eq? (datum-parsing-exception-filepos _exn14839_) '0)
                 '#f)
             (gx#core-read-module/lang _path14837_)
             (raise _exn14839_)))
       (lambda () (gx#core-read-module/sexp _path14837_)))))
  (define gx#core-read-module/sexp
    (lambda (_path14697_)
      (let _lp14699_ ((_body14701_ (read-syntax-from-file _path14697_))
                      (_pre14702_ '#f)
                      (_ns14703_ '#f)
                      (_pkg14704_ '#f))
        (let* ((_e1470514729_ _body14701_)
               (_E1472114751_
                (lambda ()
                  (let ((_g16018_
                         (if _pkg14704_
                             (values _pre14702_ _ns14703_ _pkg14704_)
                             (gx#core-read-module-package
                              _path14697_
                              _pre14702_
                              _ns14703_))))
                    (begin
                      (let ((_g16019_
                             (if (##values? _g16018_)
                                 (##vector-length _g16018_)
                                 1)))
                        (if (not (##fx= _g16019_ 3))
                            (error "Context expects 3 values" _g16019_)))
                      (let ((_pre14733_ (##vector-ref _g16018_ 0))
                            (_ns14734_ (##vector-ref _g16018_ 1))
                            (_pkg14735_ (##vector-ref _g16018_ 2)))
                        (let* ((_prelude14737_
                                (if (gx#core-bound-module-prelude? _pre14733_)
                                    (gx#syntax-local-e__0 _pre14733_)
                                    (if (gx#core-library-module-path?
                                         _pre14733_)
                                        (gx#core-resolve-library-module-path
                                         _pre14733_)
                                        (if (gx#stx-string? _pre14733_)
                                            (gx#core-resolve-module-path__%
                                             _pre14733_
                                             _path14697_)
                                            (gx#stx-e _pre14733_)))))
                               (_path-id14739_
                                (gx#core-module-path->namespace _path14697_))
                               (_pkg-id14741_
                                (if _pkg14735_
                                    (string-append
                                     _pkg14735_
                                     '"/"
                                     _path-id14739_)
                                    _path-id14739_))
                               (_module-id14743_
                                (string->symbol _pkg-id14741_))
                               (_module-ns14748_
                                (let ((_$e14745_ _ns14734_))
                                  (if _$e14745_ _$e14745_ _pkg-id14741_))))
                          (values _prelude14737_
                                  _module-id14743_
                                  _module-ns14748_
                                  _body14701_)))))))
               (_E1471414780_
                (lambda ()
                  (if (gx#stx-pair? _e1470514729_)
                      (let ((_e1472214755_ (gx#syntax-e _e1470514729_)))
                        (let ((_hd1472314758_ (##car _e1472214755_))
                              (_tl1472414760_ (##cdr _e1472214755_)))
                          (if (eq? (gx#stx-e _hd1472314758_) 'package:)
                              (if (gx#stx-pair? _tl1472414760_)
                                  (let ((_e1472514763_
                                         (gx#syntax-e _tl1472414760_)))
                                    (let ((_hd1472614766_
                                           (##car _e1472514763_))
                                          (_tl1472714768_
                                           (##cdr _e1472514763_)))
                                      (let* ((_pkg14771_ _hd1472614766_)
                                             (_rest14773_ _tl1472714768_))
                                        (if '#t
                                            (let ((_pkg14778_
                                                   (if (gx#identifier?
                                                        _pkg14771_)
                                                       (symbol->string
                                                        (gx#stx-e _pkg14771_))
                                                       (if (let ((_$e14775_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-string? _pkg14771_)))
                     (if _$e14775_ _$e14775_ (gx#stx-false? _pkg14771_)))
                   (gx#stx-e _pkg14771_)
                   (gx#raise-syntax-error
                    'import
                    '"Bad syntax; Illegal package name"
                    _pkg14771_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_lp14699_
                                               _rest14773_
                                               _pre14702_
                                               _ns14703_
                                               _pkg14778_))
                                            (_E1472114751_)))))
                                  (_E1472114751_))
                              (_E1472114751_))))
                      (_E1472114751_))))
               (_E1470714809_
                (lambda ()
                  (if (gx#stx-pair? _e1470514729_)
                      (let ((_e1471514784_ (gx#syntax-e _e1470514729_)))
                        (let ((_hd1471614787_ (##car _e1471514784_))
                              (_tl1471714789_ (##cdr _e1471514784_)))
                          (if (eq? (gx#stx-e _hd1471614787_) 'namespace:)
                              (if (gx#stx-pair? _tl1471714789_)
                                  (let ((_e1471814792_
                                         (gx#syntax-e _tl1471714789_)))
                                    (let ((_hd1471914795_
                                           (##car _e1471814792_))
                                          (_tl1472014797_
                                           (##cdr _e1471814792_)))
                                      (let* ((_ns14800_ _hd1471914795_)
                                             (_rest14802_ _tl1472014797_))
                                        (if '#t
                                            (let ((_ns14807_
                                                   (if (gx#identifier?
                                                        _ns14800_)
                                                       (symbol->string
                                                        (gx#stx-e _ns14800_))
                                                       (if (let ((_$e14804_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-string? _ns14800_)))
                     (if _$e14804_ _$e14804_ (gx#stx-false? _ns14800_)))
                   (gx#stx-e _ns14800_)
                   (gx#raise-syntax-error
                    'import
                    '"Bad syntax; illegal namespace"
                    _ns14800_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_lp14699_
                                               _rest14802_
                                               _pre14702_
                                               _ns14807_
                                               _pkg14704_))
                                            (_E1471414780_)))))
                                  (_E1471414780_))
                              (_E1471414780_))))
                      (_E1471414780_))))
               (_E1470614833_
                (lambda ()
                  (if (gx#stx-pair? _e1470514729_)
                      (let ((_e1470814813_ (gx#syntax-e _e1470514729_)))
                        (let ((_hd1470914816_ (##car _e1470814813_))
                              (_tl1471014818_ (##cdr _e1470814813_)))
                          (if (eq? (gx#stx-e _hd1470914816_) 'prelude:)
                              (if (gx#stx-pair? _tl1471014818_)
                                  (let ((_e1471114821_
                                         (gx#syntax-e _tl1471014818_)))
                                    (let ((_hd1471214824_
                                           (##car _e1471114821_))
                                          (_tl1471314826_
                                           (##cdr _e1471114821_)))
                                      (let* ((_prelude14829_ _hd1471214824_)
                                             (_rest14831_ _tl1471314826_))
                                        (if '#t
                                            (_lp14699_
                                             _rest14831_
                                             _prelude14829_
                                             _ns14703_
                                             _pkg14704_)
                                            (_E1470714809_)))))
                                  (_E1470714809_))
                              (_E1470714809_))))
                      (_E1470714809_)))))
          (_E1470614833_)))))
  (define gx#core-read-module/lang
    (lambda (_path14524_)
      (letrec ((_default-read-module-body14526_
                (lambda (_inp14689_)
                  (let _lp14691_ ((_body14693_ '()))
                    (let ((_next14695_ (read-syntax _inp14689_)))
                      (if (eof-object? _next14695_)
                          (reverse _body14693_)
                          (_lp14691_ (cons _next14695_ _body14693_)))))))
               (_read-body14527_
                (lambda (_inp14608_
                         _pre14609_
                         _ns14610_
                         _pkg14611_
                         _args14612_)
                  (let ((_g16020_
                         (if _pkg14611_
                             (values _pre14609_ _ns14610_ _pkg14611_)
                             (gx#core-read-module-package
                              _path14524_
                              _pre14609_
                              _ns14610_))))
                    (begin
                      (let ((_g16021_
                             (if (##values? _g16020_)
                                 (##vector-length _g16020_)
                                 1)))
                        (if (not (##fx= _g16021_ 3))
                            (error "Context expects 3 values" _g16021_)))
                      (let ((_pre14614_ (##vector-ref _g16020_ 0))
                            (_ns14615_ (##vector-ref _g16020_ 1))
                            (_pkg14616_ (##vector-ref _g16020_ 2)))
                        (let* ((_prelude14618_
                                (gx#import-module__0 _pre14614_))
                               (_read-module-body14672_
                                (let ((_$e14664_
                                       (find (lambda (_e1461914621_)
                                               (let* ((_g1462314633_
                                                       _e1461914621_)
                                                      (_else1462514641_
                                                       (lambda () '#f))
                                                      (_K1462714645_
                                                       (lambda () '#t)))
                                                 (if (##structure-direct-instance-of?
                                                      _g1462314633_
                                                      'gx#module-export::t)
                                                     (let* ((_e1462814648_
                                                             (##vector-ref
                                                              _g1462314633_
                                                              '1))
                                                            (_e1462914651_
                                                             (##vector-ref
                                                              _g1462314633_
                                                              '2))
                                                            (_e1463014654_
                                                             (##vector-ref
                                                              _g1462314633_
                                                              '3)))
                                                       (if (##eq? _e1463014654_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '1)
                   (let ((_e1463114657_ (##vector-ref _g1462314633_ '4)))
                     (if ((lambda (_g1465914661_)
                            (eq? _g1465914661_ 'read-module-body))
                          _e1463114657_)
                         (_K1462714645_)
                         (_else1462514641_)))
                   (_else1462514641_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_else1462514641_))))
                                             (##structure-ref
                                              _prelude14618_
                                              '9
                                              gx#module-context::t
                                              '#f))))
                                  (if _$e14664_
                                      ((lambda (_xport14667_)
                                         (let ((_proc14670_
                                                (with-exception-catcher
                                                 void
                                                 (lambda ()
                                                   (gx#eval-syntax__0
                                                    (##structure-ref
                                                     (gx#core-resolve-module-export
                                                      _xport14667_)
                                                     '1
                                                     gx#binding::t
                                                     '#f))))))
                                           (if (procedure? _proc14670_)
                                               _proc14670_
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Illegal #lang prelude; read-module-body is not a procedure"
                                                _path14524_
                                                _pre14614_
                                                _proc14670_))))
                                       _$e14664_)
                                      _default-read-module-body14526_)))
                               (_path-id14674_
                                (gx#core-module-path->namespace _path14524_))
                               (_pkg-id14676_
                                (if _pkg14616_
                                    (string-append
                                     _pkg14616_
                                     '"/"
                                     _path-id14674_)
                                    _path-id14674_))
                               (_module-id14678_
                                (string->symbol _pkg-id14676_))
                               (_module-ns14683_
                                (let ((_$e14680_ _ns14615_))
                                  (if _$e14680_ _$e14680_ _pkg-id14676_)))
                               (_body14686_
                                (call-with-parameters
                                 (lambda ()
                                   (_read-module-body14672_ _inp14608_))
                                 gx#current-module-reader-path
                                 _path14524_
                                 gx#current-module-reader-args
                                 _args14612_)))
                          (values _prelude14618_
                                  _module-id14678_
                                  _module-ns14683_
                                  _body14686_)))))))
               (_string-e14528_
                (lambda (_obj14605_ _what14606_)
                  (if (string? _obj14605_)
                      _obj14605_
                      (if (symbol? _obj14605_)
                          (symbol->string _obj14605_)
                          (gx#raise-syntax-error
                           '#f
                           (string-append '"Illegal module " _what14606_)
                           _path14524_
                           _obj14605_)))))
               (_read-lang-args14529_
                (lambda (_inp14560_ _args14561_)
                  (let* ((_args1456214570_ _args14561_)
                         (_else1456414578_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Illegal #lang arguments; missing prelude"
                             _path14524_)))
                         (_K1456614593_
                          (lambda (_args14581_ _prelude14582_)
                            (let* ((_pkg14584_ (pgetq 'package: _args14581_))
                                   (_pkg14586_
                                    (if _pkg14584_
                                        (_string-e14528_ _pkg14584_ '"package")
                                        '#f))
                                   (_ns14588_ (pgetq 'namespace: _args14581_))
                                   (_ns14590_
                                    (if _ns14588_
                                        (_string-e14528_
                                         _ns14588_
                                         '"namespace")
                                        '#f)))
                              (_read-body14527_
                               _inp14560_
                               _prelude14582_
                               _ns14590_
                               _pkg14586_
                               _args14581_)))))
                    (if (##pair? _args1456214570_)
                        (let ((_hd1456714596_ (##car _args1456214570_))
                              (_tl1456814598_ (##cdr _args1456214570_)))
                          (let* ((_prelude14601_ _hd1456714596_)
                                 (_args14603_ _tl1456814598_))
                            (_K1456614593_ _args14603_ _prelude14601_)))
                        (_else1456414578_)))))
               (_read-lang14530_
                (lambda (_inp14535_)
                  (let* ((_head14537_ (read-line _inp14535_))
                         (_$e14539_ (string-index _head14537_ '#\space)))
                    (if _$e14539_
                        ((lambda (_ix14542_)
                           (let ((_lang14544_
                                  (substring _head14537_ '0 _ix14542_)))
                             (if (equal? _lang14544_ '"#lang")
                                 (let* ((_rest14546_
                                         (substring
                                          _head14537_
                                          (fx+ _ix14542_ '1)
                                          (string-length _head14537_)))
                                        (_args14557_
                                         (with-exception-catcher
                                          (lambda (_g1454714549_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Illegal #lang arguments"
                                             _path14524_
                                             _g1454714549_))
                                          (lambda ()
                                            (call-with-input-string
                                             _rest14546_
                                             (lambda (_g1455214554_)
                                               (read-all
                                                _g1455214554_
                                                read)))))))
                                   (_read-lang-args14529_
                                    _inp14535_
                                    _args14557_))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Illegal module syntax"
                                  _path14524_))))
                         _$e14539_)
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module syntax"
                         _path14524_)))))
               (_read-e14531_
                (lambda (_inp14533_)
                  (if (eq? (peek-char _inp14533_) '#\#)
                      (_read-lang14530_ _inp14533_)
                      (gx#raise-syntax-error
                       '#f
                       '"Illegal module syntax"
                       _path14524_)))))
        (call-with-input-file _path14524_ _read-e14531_))))
  (define gx#core-read-module-package
    (lambda (_path14478_ _pre14479_ _ns14480_)
      (letrec ((_string-e14482_
                (lambda (_e14522_)
                  (if (symbol? _e14522_)
                      (symbol->string _e14522_)
                      (if (string? _e14522_)
                          _e14522_
                          (gx#raise-syntax-error
                           '#f
                           '"Malformed package info; unexpected datum"
                           _e14522_))))))
        (let _lp14484_ ((_dir14486_ (path-directory _path14478_))
                        (_pkg-path14487_ '()))
          (let ((_gerbil.pkg14489_ (path-expand '"gerbil.pkg" _dir14486_)))
            (if (file-exists? _gerbil.pkg14489_)
                (let ((_plist14491_
                       (gx#core-library-package-plist__% _dir14486_ '#t)))
                  (if (null? _plist14491_)
                      (let ((_pkg14493_
                             (if (not (null? _pkg-path14487_))
                                 (string-join _pkg-path14487_ '"/")
                                 '#f)))
                        (values _pre14479_ _ns14480_ _pkg14493_))
                      (if (list? _plist14491_)
                          (let* ((_root14495_ (pgetq 'package: _plist14491_))
                                 (_pkg14499_
                                  (let ((_pkg-path14497_
                                         (if _root14495_
                                             (cons (_string-e14482_
                                                    _root14495_)
                                                   _pkg-path14487_)
                                             _pkg-path14487_)))
                                    (if (not (null? _pkg-path14497_))
                                        (string-join _pkg-path14497_ '"/")
                                        '#f)))
                                 (_ns14506_
                                  (let ((_ns14504_
                                         (let ((_$e14501_ _ns14480_))
                                           (if _$e14501_
                                               _$e14501_
                                               (pgetq 'namespace:
                                                      _plist14491_)))))
                                    (if _ns14504_
                                        (_string-e14482_ _ns14504_)
                                        '#f)))
                                 (_pre14511_
                                  (let ((_$e14508_ _pre14479_))
                                    (if _$e14508_
                                        _$e14508_
                                        (pgetq 'prelude: _plist14491_)))))
                            (values _pre14511_ _ns14506_ _pkg14499_))
                          (gx#raise-syntax-error
                           '#f
                           '"Malformed package info; unexpected datum"
                           _plist14491_))))
                (let ((_dir*14514_
                       (path-strip-trailing-directory-separator _dir14486_)))
                  (if (let ((_$e14516_ (string-empty? _dir*14514_)))
                        (if _$e14516_
                            _$e14516_
                            (equal? _dir14486_ _dir*14514_)))
                      (values _pre14479_ _ns14480_ '#f)
                      (let ((_xpath14519_ (path-strip-directory _dir*14514_))
                            (_xdir14520_ (path-directory _dir*14514_)))
                        (_lp14484_
                         _xdir14520_
                         (cons _xpath14519_ _pkg-path14487_)))))))))))
  (define gx#core-module-path->namespace
    (lambda (_path14476_)
      (path-strip-extension (path-strip-directory _path14476_))))
  (define gx#core-module-path->id
    (lambda (_path14474_)
      (string->symbol (gx#core-module-path->namespace _path14474_))))
  (begin
    (define gx#core-resolve-module-path__%
      (lambda (_stx-path14453_ _rel14454_)
        (let* ((_path14456_ (gx#stx-e _stx-path14453_))
               (_path14458_
                (if (string-empty? (path-extension _path14456_))
                    (string-append _path14456_ '".ss")
                    _path14456_)))
          (gx#core-resolve-path__%
           _path14458_
           (let ((_$e14461_ (gx#stx-source _stx-path14453_)))
             (if _$e14461_ _$e14461_ _rel14454_))))))
    (begin
      (define gx#core-resolve-module-path__0
        (lambda (_stx-path14467_)
          (let ((_rel14469_ '#f))
            (gx#core-resolve-module-path__% _stx-path14467_ _rel14469_))))
      (define gx#core-resolve-module-path
        (lambda _g16023_
          (let ((_g16022_ (length _g16023_)))
            (cond ((##fx= _g16022_ 1)
                   (apply gx#core-resolve-module-path__0 _g16023_))
                  ((##fx= _g16022_ 2)
                   (apply gx#core-resolve-module-path__% _g16023_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-resolve-module-path
                    _g16023_))))))))
  (define gx#core-resolve-library-module-path
    (lambda (_libpath14380_)
      (let* ((_spath14382_ (symbol->string (gx#stx-e _libpath14380_)))
             (_spath14384_
              (substring _spath14382_ '1 (string-length _spath14382_)))
             (_ext14386_ (path-extension _spath14384_))
             (_ssi14388_
              (if (string-empty? _ext14386_)
                  (string-append _spath14384_ '".ssi")
                  (string-append (path-strip-extension _spath14384_) '".ssi")))
             (_src14390_
              (if (string-empty? _ext14386_)
                  (string-append _spath14384_ '".ss")
                  _spath14384_)))
        (let _lp14393_ ((_rest14395_
                         (gx#current-expander-module-library-path)))
          (let* ((_rest1439614405_ _rest14395_)
                 (_E1439914409_
                  (lambda () (error '"No clause matching" _rest1439614405_))))
            (let ((_K1440114440_
                   (lambda (_rest14420_ _dir14421_)
                     (letrec ((_resolve14423_
                               (lambda (_ssi14433_ _src14434_)
                                 (let ((_compiled-path14436_
                                        (path-expand _ssi14433_ _dir14421_)))
                                   (if (file-exists? _compiled-path14436_)
                                       (path-normalize _compiled-path14436_)
                                       (let ((_src-path14438_
                                              (path-expand
                                               _src14434_
                                               _dir14421_)))
                                         (if (file-exists? _src-path14438_)
                                             (path-normalize _src-path14438_)
                                             (_lp14393_ _rest14420_))))))))
                       (let ((_$e14425_
                              (gx#core-library-package-path-prefix
                               _dir14421_)))
                         (if _$e14425_
                             ((lambda (_prefix14428_)
                                (if (string-prefix? _spath14384_ _prefix14428_)
                                    (let ((_ssi14430_
                                           (substring
                                            _ssi14388_
                                            (string-length _prefix14428_)
                                            (string-length _ssi14388_)))
                                          (_src14431_
                                           (substring
                                            _src14390_
                                            (string-length _prefix14428_)
                                            (string-length _src14390_))))
                                      (_resolve14423_ _ssi14430_ _src14431_))
                                    (_lp14393_ _rest14420_)))
                              _$e14425_)
                             (_resolve14423_ _ssi14388_ _src14390_))))))
                  (_K1440014414_
                   (lambda ()
                     (gx#raise-syntax-error
                      '#f
                      '"Cannot find library module"
                      _libpath14380_))))
              (let ((_try-match1439814417_
                     (lambda ()
                       (if (##null? _rest1439614405_)
                           (_K1440014414_)
                           (_E1439914409_)))))
                (if (##pair? _rest1439614405_)
                    (let ((_tl1440314445_ (##cdr _rest1439614405_))
                          (_hd1440214443_ (##car _rest1439614405_)))
                      (let ((_dir14448_ _hd1440214443_)
                            (_rest14450_ _tl1440314445_))
                        (_K1440114440_ _rest14450_ _dir14448_)))
                    (_try-match1439814417_)))))))))
  (define gx#core-library-package-path-prefix
    (lambda (_dir14373_)
      (let ((_$e14375_
             (pgetq 'package: (gx#core-library-package-plist__0 _dir14373_))))
        (if _$e14375_
            ((lambda (_pkg14378_)
               (string-append (symbol->string _pkg14378_) '"/"))
             _$e14375_)
            '#f))))
  (begin
    (define gx#core-library-package-plist__%
      (lambda (_dir14345_ _exists?14346_)
        (let* ((_cache14348_ (gx#core-library-package-cache))
               (_$e14350_ (table-ref _cache14348_ _dir14345_ '#f)))
          (if _$e14350_
              (values _$e14350_)
              (let* ((_gerbil.pkg14353_ (path-expand '"gerbil.pkg" _dir14345_))
                     (_plist14360_
                      (if (let ((_$e14355_ _exists?14346_))
                            (if _$e14355_
                                _$e14355_
                                (file-exists? _gerbil.pkg14353_)))
                          (let ((_e14358_
                                 (call-with-input-file
                                  _gerbil.pkg14353_
                                  read)))
                            (if (eof-object? _e14358_)
                                '()
                                (if (list? _e14358_)
                                    _e14358_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Malformed package info; unexpected datum"
                                     _gerbil.pkg14353_
                                     _e14358_))))
                          '())))
                (begin
                  (table-set! _cache14348_ _dir14345_ _plist14360_)
                  _plist14360_))))))
    (begin
      (define gx#core-library-package-plist__0
        (lambda (_dir14366_)
          (let ((_exists?14368_ '#f))
            (gx#core-library-package-plist__% _dir14366_ _exists?14368_))))
      (define gx#core-library-package-plist
        (lambda _g16025_
          (let ((_g16024_ (length _g16025_)))
            (cond ((##fx= _g16024_ 1)
                   (apply gx#core-library-package-plist__0 _g16025_))
                  ((##fx= _g16024_ 2)
                   (apply gx#core-library-package-plist__% _g16025_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-library-package-plist
                    _g16025_))))))))
  (define gx#core-library-package-cache
    (lambda ()
      (let ((_$e14339_ (gx#current-expander-module-library-package-cache)))
        (if _$e14339_
            (values _$e14339_)
            (let ((_cache14342_ (make-table)))
              (begin
                (gx#current-expander-module-library-package-cache _cache14342_)
                _cache14342_))))))
  (define gx#core-library-module-path?
    (lambda (_stx14336_) (gx#core-special-module-path? _stx14336_ '#\:)))
  (define gx#core-special-module-path?
    (lambda (_stx14331_ _char14332_)
      (if (gx#identifier? _stx14331_)
          (if (interned-symbol? (gx#stx-e _stx14331_))
              (let ((_str14334_ (symbol->string (gx#stx-e _stx14331_))))
                (if (fx> (string-length _str14334_) '1)
                    (eq? (string-ref _str14334_ '0) _char14332_)
                    '#f))
              '#f)
          '#f)))
  (define gx#core-bound-prelude?
    (lambda (_stx14325_)
      (gx#core-bound-identifier?__%
       _stx14325_
       (lambda (_g1432614328_)
         (gx#expander-binding?__% _g1432614328_ gx#prelude-context?)))))
  (define gx#core-bound-module?
    (lambda (_stx14319_)
      (gx#core-bound-identifier?__%
       _stx14319_
       (lambda (_g1432014322_)
         (gx#expander-binding?__% _g1432014322_ gx#module-context?)))))
  (define gx#core-bound-module-prelude?
    (lambda (_stx14306_)
      (letrec ((_module-prelude?14308_
                (lambda (_e14314_)
                  (let ((_$e14316_
                         (##structure-instance-of?
                          _e14314_
                          'gx#module-context::t)))
                    (if _$e14316_
                        _$e14316_
                        (##structure-instance-of?
                         _e14314_
                         'gx#prelude-context::t))))))
        (gx#core-bound-identifier?__%
         _stx14306_
         (lambda (_g1430914311_)
           (gx#expander-binding?__% _g1430914311_ _module-prelude?14308_))))))
  (begin
    (define gx#core-bind-import!__%
      (lambda (_in14236_ _ctx14237_ _force-weak?14238_)
        (let* ((_in1423914248_ _in14236_)
               (_E1424114252_
                (lambda () (error '"No clause matching" _in1423914248_)))
               (_K1424214265_
                (lambda (_weak?14255_ _phi14256_ _key14257_ _source14258_)
                  (gx#core-bind!__%
                   _key14257_
                   (let ((_e14260_
                          (gx#core-resolve-module-export _source14258_)))
                     (##structure
                      gx#import-binding::t
                      (##structure-ref _e14260_ '1 gx#binding::t '#f)
                      _key14257_
                      _phi14256_
                      _e14260_
                      (##direct-structure-ref
                       _source14258_
                       '1
                       gx#module-export::t
                       '#f)
                      (let ((_$e14262_ _force-weak?14238_))
                        (if _$e14262_ _$e14262_ _weak?14255_))))
                   gx#core-context-rebind?
                   _phi14256_
                   _ctx14237_))))
          (if (##structure-direct-instance-of?
               _in1423914248_
               'gx#module-import::t)
              (let* ((_e1424314268_ (##vector-ref _in1423914248_ '1))
                     (_source14271_ _e1424314268_)
                     (_e1424414273_ (##vector-ref _in1423914248_ '2))
                     (_key14276_ _e1424414273_)
                     (_e1424514278_ (##vector-ref _in1423914248_ '3))
                     (_phi14281_ _e1424514278_)
                     (_e1424614283_ (##vector-ref _in1423914248_ '4))
                     (_weak?14286_ _e1424614283_))
                (_K1424214265_
                 _weak?14286_
                 _phi14281_
                 _key14276_
                 _source14271_))
              (_E1424114252_)))))
    (begin
      (define gx#core-bind-import!__0
        (lambda (_in14291_)
          (let* ((_ctx14293_ (gx#current-expander-context))
                 (_force-weak?14295_ '#f))
            (gx#core-bind-import!__%
             _in14291_
             _ctx14293_
             _force-weak?14295_))))
      (define gx#core-bind-import!__1
        (lambda (_in14297_ _ctx14298_)
          (let ((_force-weak?14300_ '#f))
            (gx#core-bind-import!__%
             _in14297_
             _ctx14298_
             _force-weak?14300_))))
      (define gx#core-bind-import!
        (lambda _g16027_
          (let ((_g16026_ (length _g16027_)))
            (cond ((##fx= _g16026_ 1) (apply gx#core-bind-import!__0 _g16027_))
                  ((##fx= _g16026_ 2) (apply gx#core-bind-import!__1 _g16027_))
                  ((##fx= _g16026_ 3) (apply gx#core-bind-import!__% _g16027_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-import!
                    _g16027_))))))))
  (begin
    (define gx#core-bind-weak-import!__%
      (lambda (_in14222_ _ctx14223_)
        (gx#core-bind-import!__% _in14222_ _ctx14223_ '#t)))
    (begin
      (define gx#core-bind-weak-import!__0
        (lambda (_in14228_)
          (let ((_ctx14230_ (gx#current-expander-context)))
            (gx#core-bind-weak-import!__% _in14228_ _ctx14230_))))
      (define gx#core-bind-weak-import!
        (lambda _g16029_
          (let ((_g16028_ (length _g16029_)))
            (cond ((##fx= _g16028_ 1)
                   (apply gx#core-bind-weak-import!__0 _g16029_))
                  ((##fx= _g16028_ 2)
                   (apply gx#core-bind-weak-import!__% _g16029_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-weak-import!
                    _g16029_))))))))
  (define gx#core-resolve-module-export
    (lambda (_out14113_)
      (letrec ((_subst14115_
                (lambda (_key14161_)
                  (let* ((_key1416214170_ _key14161_)
                         (_else1416414178_ (lambda () _key14161_))
                         (_K1416614209_
                          (lambda (_mark14181_ _id14182_)
                            (let* ((_mark1418314189_ _mark14181_)
                                   (_E1418514193_
                                    (lambda ()
                                      (error '"No clause matching"
                                             _mark1418314189_)))
                                   (_K1418614201_
                                    (lambda (_subst14196_)
                                      (let ((_$e14198_
                                             (if _subst14196_
                                                 (table-ref
                                                  _subst14196_
                                                  _id14182_
                                                  '#f)
                                                 '#f)))
                                        (if _$e14198_
                                            _$e14198_
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Illegal key; missing substitution"
                                             _key14161_))))))
                              (if (##structure-instance-of?
                                   _mark1418314189_
                                   'gx#expander-mark::t)
                                  (let* ((_e1418714204_
                                          (##vector-ref _mark1418314189_ '1))
                                         (_subst14207_ _e1418714204_))
                                    (_K1418614201_ _subst14207_))
                                  (_E1418514193_))))))
                    (if (##pair? _key1416214170_)
                        (let ((_hd1416714212_ (##car _key1416214170_))
                              (_tl1416814214_ (##cdr _key1416214170_)))
                          (let* ((_id14217_ _hd1416714212_)
                                 (_mark14219_ _tl1416814214_))
                            (_K1416614209_ _mark14219_ _id14217_)))
                        (_else1416414178_))))))
        (let* ((_out1411614126_ _out14113_)
               (_E1411814130_
                (lambda () (error '"No clause matching" _out1411614126_)))
               (_K1411914137_
                (lambda (_phi14133_ _key14134_ _ctx14135_)
                  (gx#core-context-resolve
                   (gx#core-context-shift _ctx14135_ _phi14133_)
                   (_subst14115_ _key14134_)))))
          (if (##structure-direct-instance-of?
               _out1411614126_
               'gx#module-export::t)
              (let* ((_e1412014140_ (##vector-ref _out1411614126_ '1))
                     (_ctx14143_ _e1412014140_)
                     (_e1412114145_ (##vector-ref _out1411614126_ '2))
                     (_key14148_ _e1412114145_)
                     (_e1412214150_ (##vector-ref _out1411614126_ '3))
                     (_phi14153_ _e1412214150_)
                     (_e1412314155_ (##vector-ref _out1411614126_ '4))
                     (_e1412414158_ (##vector-ref _out1411614126_ '5)))
                (_K1411914137_ _phi14153_ _key14148_ _ctx14143_))
              (_E1411814130_))))))
  (begin
    (define gx#core-module-export->import__%
      (lambda (_out14038_ _rename14039_ _dphi14040_)
        (let* ((_out1404114051_ _out14038_)
               (_E1404314055_
                (lambda () (error '"No clause matching" _out1404114051_)))
               (_K1404414067_
                (lambda (_weak?14058_
                         _name14059_
                         _phi14060_
                         _key14061_
                         _ctx14062_)
                  (##structure
                   gx#module-import::t
                   _out14038_
                   (let ((_$e14064_ _rename14039_))
                     (if _$e14064_ _$e14064_ _name14059_))
                   (fx+ _phi14060_ _dphi14040_)
                   _weak?14058_))))
          (if (##structure-direct-instance-of?
               _out1404114051_
               'gx#module-export::t)
              (let* ((_e1404514070_ (##vector-ref _out1404114051_ '1))
                     (_ctx14073_ _e1404514070_)
                     (_e1404614075_ (##vector-ref _out1404114051_ '2))
                     (_key14078_ _e1404614075_)
                     (_e1404714080_ (##vector-ref _out1404114051_ '3))
                     (_phi14083_ _e1404714080_)
                     (_e1404814085_ (##vector-ref _out1404114051_ '4))
                     (_name14088_ _e1404814085_)
                     (_e1404914090_ (##vector-ref _out1404114051_ '5))
                     (_weak?14093_ _e1404914090_))
                (_K1404414067_
                 _weak?14093_
                 _name14088_
                 _phi14083_
                 _key14078_
                 _ctx14073_))
              (_E1404314055_)))))
    (begin
      (define gx#core-module-export->import__0
        (lambda (_out14098_)
          (let* ((_rename14100_ '#f) (_dphi14102_ '0))
            (gx#core-module-export->import__%
             _out14098_
             _rename14100_
             _dphi14102_))))
      (define gx#core-module-export->import__1
        (lambda (_out14104_ _rename14105_)
          (let ((_dphi14107_ '0))
            (gx#core-module-export->import__%
             _out14104_
             _rename14105_
             _dphi14107_))))
      (define gx#core-module-export->import
        (lambda _g16031_
          (let ((_g16030_ (length _g16031_)))
            (cond ((##fx= _g16030_ 1)
                   (apply gx#core-module-export->import__0 _g16031_))
                  ((##fx= _g16030_ 2)
                   (apply gx#core-module-export->import__1 _g16031_))
                  ((##fx= _g16030_ 3)
                   (apply gx#core-module-export->import__% _g16031_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-module-export->import
                    _g16031_))))))))
  (define gx#core-expand-module%
    (lambda (_stx13966_)
      (letrec ((_make-context13968_
                (lambda (_id14019_)
                  (let* ((_super14021_ (gx#current-expander-context))
                         (_bind-id14023_ (gx#stx-e _id14019_))
                         (_mod-id14025_
                          (if (##structure-instance-of?
                               _super14021_
                               'gx#module-context::t)
                              (make-symbol
                               (##structure-ref
                                _super14021_
                                '1
                                gx#expander-context::t
                                '#f)
                               '"$"
                               _bind-id14023_)
                              _bind-id14023_))
                         (_ns14027_ (symbol->string _mod-id14025_))
                         (_path14034_
                          (if (##structure-instance-of?
                               _super14021_
                               'gx#module-context::t)
                              (let ((_path14029_
                                     (##structure-ref
                                      _super14021_
                                      '7
                                      gx#module-context::t
                                      '#f)))
                                (if (let ((_$e14031_ (pair? _path14029_)))
                                      (if _$e14031_
                                          _$e14031_
                                          (null? _path14029_)))
                                    (cons _bind-id14023_ _path14029_)
                                    (if (not _path14029_)
                                        _bind-id14023_
                                        (cons _bind-id14023_
                                              (cons _path14029_ '())))))
                              _bind-id14023_)))
                    (let ((__obj16007 (make-object gx#module-context::t '11)))
                      (begin
                        (gx#module-context:::init!
                         __obj16007
                         _mod-id14025_
                         _super14021_
                         _ns14027_
                         _path14034_)
                        __obj16007))))))
        (let* ((_e1396913979_ _stx13966_)
               (_E1397113983_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1396913979_)))
               (_E1397014015_
                (lambda ()
                  (if (gx#stx-pair? _e1396913979_)
                      (let ((_e1397213987_ (gx#syntax-e _e1396913979_)))
                        (let ((_hd1397313990_ (##car _e1397213987_))
                              (_tl1397413992_ (##cdr _e1397213987_)))
                          (if (gx#stx-pair? _tl1397413992_)
                              (let ((_e1397513995_
                                     (gx#syntax-e _tl1397413992_)))
                                (let ((_hd1397613998_ (##car _e1397513995_))
                                      (_tl1397714000_ (##cdr _e1397513995_)))
                                  (let* ((_id14003_ _hd1397613998_)
                                         (_body14005_ _tl1397714000_))
                                    (if (if (gx#identifier? _id14003_)
                                            (gx#stx-list? _body14005_)
                                            '#f)
                                        (let* ((_ctx14007_
                                                (_make-context13968_
                                                 _id14003_))
                                               (_body14009_
                                                (gx#core-expand-module-begin
                                                 _body14005_
                                                 _ctx14007_))
                                               (_body14011_
                                                (gx#core-quote-syntax__1
                                                 (gx#core-cons
                                                  '%#begin
                                                  _body14009_)
                                                 (gx#stx-source _stx13966_))))
                                          (begin
                                            (##structure-set!
                                             _ctx14007_
                                             (##make-promise
                                              (lambda ()
                                                (gx#eval-syntax* _body14011_)))
                                             '10
                                             gx#module-context::t
                                             '#f)
                                            (##structure-set!
                                             _ctx14007_
                                             _body14011_
                                             '11
                                             gx#module-context::t
                                             '#f)
                                            (gx#core-bind-syntax!__0
                                             _id14003_
                                             _ctx14007_)
                                            (gx#core-quote-syntax__1
                                             (gx#core-list
                                              '%#module
                                              (gx#core-quote-syntax__0
                                               _id14003_)
                                              _body14011_)
                                             (gx#stx-source _stx13966_))))
                                        (_E1397113983_)))))
                              (_E1397113983_))))
                      (_E1397113983_)))))
          (_E1397014015_)))))
  (define gx#core-expand-module-begin
    (lambda (_body13932_ _ctx13933_)
      (call-with-parameters
       (lambda ()
         (begin
           (gx#core-bind-feature!__1 'gerbil-module '#t)
           (let* ((_stx13936_
                   (gx#core-expand-head (cons '%%begin-module _body13932_)))
                  (_e1393713944_ _stx13936_)
                  (_E1393913948_
                   (lambda ()
                     (gx#raise-syntax-error
                      '#f
                      '"Illegal module body expansion"
                      _stx13936_)))
                  (_E1393813962_
                   (lambda ()
                     (if (gx#stx-pair? _e1393713944_)
                         (let ((_e1394013952_ (gx#syntax-e _e1393713944_)))
                           (let ((_hd1394113955_ (##car _e1394013952_))
                                 (_tl1394213957_ (##cdr _e1394013952_)))
                             (if (if (gx#identifier? _hd1394113955_)
                                     (gx#core-identifier=?
                                      _hd1394113955_
                                      '%#begin-module)
                                     '#f)
                                 (let ((_body13960_ _tl1394213957_))
                                   (if '#t
                                       (if (gx#sealed-syntax? _stx13936_)
                                           _body13960_
                                           (gx#core-expand-module-body
                                            _body13960_))
                                       (_E1393913948_)))
                                 (_E1393913948_))))
                         (_E1393913948_)))))
             (_E1393813962_))))
       gx#current-expander-context
       _ctx13933_
       gx#current-expander-phi
       '0)))
  (define gx#core-expand-module-body
    (lambda (_body13728_)
      (letrec ((_expand-special13730_
                (lambda (_hd13859_ _K13860_ _rest13861_ _r13862_)
                  (let* ((_e1386313880_ _hd13859_)
                         (_E1387513884_
                          (lambda ()
                            (_K13860_
                             _rest13861_
                             (cons (gx#core-expand-top _hd13859_) _r13862_))))
                         (_E1386513896_
                          (lambda ()
                            (if (gx#stx-pair? _e1386313880_)
                                (let ((_e1387613888_
                                       (gx#syntax-e _e1386313880_)))
                                  (let ((_hd1387713891_ (##car _e1387613888_))
                                        (_tl1387813893_ (##cdr _e1387613888_)))
                                    (if (if (gx#identifier? _hd1387713891_)
                                            (gx#core-identifier=?
                                             _hd1387713891_
                                             '%#export)
                                            '#f)
                                        (if '#t
                                            (_K13860_
                                             _rest13861_
                                             (cons _hd13859_ _r13862_))
                                            (_E1387513884_))
                                        (_E1387513884_))))
                                (_E1387513884_))))
                         (_E1386413928_
                          (lambda ()
                            (if (gx#stx-pair? _e1386313880_)
                                (let ((_e1386613900_
                                       (gx#syntax-e _e1386313880_)))
                                  (let ((_hd1386713903_ (##car _e1386613900_))
                                        (_tl1386813905_ (##cdr _e1386613900_)))
                                    (if (if (gx#identifier? _hd1386713903_)
                                            (gx#core-identifier=?
                                             _hd1386713903_
                                             '%#define-values)
                                            '#f)
                                        (if (gx#stx-pair? _tl1386813905_)
                                            (let ((_e1386913908_
                                                   (gx#syntax-e
                                                    _tl1386813905_)))
                                              (let ((_hd1387013911_
                                                     (##car _e1386913908_))
                                                    (_tl1387113913_
                                                     (##cdr _e1386913908_)))
                                                (let ((_hd-bind13916_
                                                       _hd1387013911_))
                                                  (if (gx#stx-pair?
                                                       _tl1387113913_)
                                                      (let ((_e1387213918_
                                                             (gx#syntax-e
                                                              _tl1387113913_)))
                                                        (let ((_hd1387313921_
                                                               (##car _e1387213918_))
                                                              (_tl1387413923_
                                                               (##cdr _e1387213918_)))
                                                          (let ((_expr13926_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1387313921_))
                    (if (gx#stx-null? _tl1387413923_)
                        (if (gx#core-bind-values? _hd-bind13916_)
                            (begin
                              (gx#core-bind-values!__0 _hd-bind13916_)
                              (_K13860_ _rest13861_ (cons _hd13859_ _r13862_)))
                            (_E1386513896_))
                        (_E1386513896_)))))
              (_E1386513896_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E1386513896_))
                                        (_E1386513896_))))
                                (_E1386513896_)))))
                    (_E1386413928_))))
               (_expand-body13731_
                (lambda (_rbody13733_)
                  (let _lp13735_ ((_rest13737_ _rbody13733_) (_body13738_ '()))
                    (let* ((_rest1373913747_ _rest13737_)
                           (_else1374113755_ (lambda () _body13738_))
                           (_K1374313847_
                            (lambda (_rest13758_ _hd13759_)
                              (let* ((_e1376013781_ _hd13759_)
                                     (_E1377613785_
                                      (lambda ()
                                        (_lp13735_
                                         _rest13758_
                                         (cons (gx#core-expand-expression
                                                _hd13759_)
                                               _body13738_))))
                                     (_E1377213799_
                                      (lambda ()
                                        (if (gx#stx-pair? _e1376013781_)
                                            (let ((_e1377713789_
                                                   (gx#syntax-e
                                                    _e1376013781_)))
                                              (let ((_hd1377813792_
                                                     (##car _e1377713789_))
                                                    (_tl1377913794_
                                                     (##cdr _e1377713789_)))
                                                (let ((_form13797_
                                                       _hd1377813792_))
                                                  (if (gx#core-bound-identifier?__%
                                                       _form13797_
                                                       gx#special-form-binding?)
                                                      (_lp13735_
                                                       _rest13758_
                                                       (cons _hd13759_
                                                             _body13738_))
                                                      (_E1377613785_)))))
                                            (_E1377613785_))))
                                     (_E1376213811_
                                      (lambda ()
                                        (if (gx#stx-pair? _e1376013781_)
                                            (let ((_e1377313803_
                                                   (gx#syntax-e
                                                    _e1376013781_)))
                                              (let ((_hd1377413806_
                                                     (##car _e1377313803_))
                                                    (_tl1377513808_
                                                     (##cdr _e1377313803_)))
                                                (if (if (gx#identifier?
                                                         _hd1377413806_)
                                                        (gx#core-identifier=?
                                                         _hd1377413806_
                                                         '%#export)
                                                        '#f)
                                                    (if '#t
                                                        (_lp13735_
                                                         _rest13758_
                                                         (cons (gx#core-expand-export%__0
                                                                _hd13759_)
                                                               _body13738_))
                                                        (_E1377213799_))
                                                    (_E1377213799_))))
                                            (_E1377213799_))))
                                     (_E1376113843_
                                      (lambda ()
                                        (if (gx#stx-pair? _e1376013781_)
                                            (let ((_e1376313815_
                                                   (gx#syntax-e
                                                    _e1376013781_)))
                                              (let ((_hd1376413818_
                                                     (##car _e1376313815_))
                                                    (_tl1376513820_
                                                     (##cdr _e1376313815_)))
                                                (if (if (gx#identifier?
                                                         _hd1376413818_)
                                                        (gx#core-identifier=?
                                                         _hd1376413818_
                                                         '%#define-values)
                                                        '#f)
                                                    (if (gx#stx-pair?
                                                         _tl1376513820_)
                                                        (let ((_e1376613823_
                                                               (gx#syntax-e
                                                                _tl1376513820_)))
                                                          (let ((_hd1376713826_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1376613823_))
                        (_tl1376813828_ (##cdr _e1376613823_)))
                    (let ((_hd-bind13831_ _hd1376713826_))
                      (if (gx#stx-pair? _tl1376813828_)
                          (let ((_e1376913833_ (gx#syntax-e _tl1376813828_)))
                            (let ((_hd1377013836_ (##car _e1376913833_))
                                  (_tl1377113838_ (##cdr _e1376913833_)))
                              (let ((_expr13841_ _hd1377013836_))
                                (if (gx#stx-null? _tl1377113838_)
                                    (if '#t
                                        (_lp13735_
                                         _rest13758_
                                         (cons (gx#core-quote-syntax__1
                                                (gx#core-list
                                                 '%#define-values
                                                 (gx#core-quote-bind-values
                                                  _hd-bind13831_)
                                                 (gx#core-expand-expression
                                                  _expr13841_))
                                                (gx#stx-source _hd13759_))
                                               _body13738_))
                                        (_E1376213811_))
                                    (_E1376213811_)))))
                          (_E1376213811_)))))
                (_E1376213811_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1376213811_))))
                                            (_E1376213811_)))))
                                (_E1376113843_)))))
                      (if (##pair? _rest1373913747_)
                          (let ((_hd1374413850_ (##car _rest1373913747_))
                                (_tl1374513852_ (##cdr _rest1373913747_)))
                            (let* ((_hd13855_ _hd1374413850_)
                                   (_rest13857_ _tl1374513852_))
                              (_K1374313847_ _rest13857_ _hd13855_)))
                          (_else1374113755_)))))))
        (_expand-body13731_
         (gx#core-expand-block__%
          (cons '%#begin-module _body13728_)
          _expand-special13730_
          '#f
          values)))))
  (define gx#core-expand-import/export
    (lambda (_stx13571_
             _expanded?13572_
             _method13573_
             _current-phi13574_
             _expand113575_)
      (letrec ((_K13577_
                (lambda (_rest13695_ _r13696_)
                  (let* ((_e1369713704_ _rest13695_)
                         (_E1369913708_ (lambda () _r13696_))
                         (_E1369813724_
                          (lambda ()
                            (if (gx#stx-pair? _e1369713704_)
                                (let ((_e1370013712_
                                       (gx#syntax-e _e1369713704_)))
                                  (let ((_hd1370113715_ (##car _e1370013712_))
                                        (_tl1370213717_ (##cdr _e1370013712_)))
                                    (let* ((_hd13720_ _hd1370113715_)
                                           (_rest13722_ _tl1370213717_))
                                      (if '#t
                                          (_step13578_
                                           _hd13720_
                                           _rest13722_
                                           _r13696_)
                                          (_E1369913708_)))))
                                (_E1369913708_)))))
                    (_E1369813724_))))
               (_step13578_
                (lambda (_hd13609_ _rest13610_ _r13611_)
                  (let* ((_e1361213630_ _hd13609_)
                         (_E1362513634_
                          (lambda ()
                            (if (_expanded?13572_ (gx#stx-e _hd13609_))
                                (_K13577_
                                 _rest13610_
                                 (cons (gx#stx-e _hd13609_) _r13611_))
                                (_expand113575_
                                 _hd13609_
                                 _K13577_
                                 _rest13610_
                                 _r13611_))))
                         (_E1362113650_
                          (lambda ()
                            (if (gx#stx-pair? _e1361213630_)
                                (let ((_e1362613638_
                                       (gx#syntax-e _e1361213630_)))
                                  (let ((_hd1362713641_ (##car _e1362613638_))
                                        (_tl1362813643_ (##cdr _e1362613638_)))
                                    (let* ((_macro13646_ _hd1362713641_)
                                           (_body13648_ _tl1362813643_))
                                      (if (gx#core-bound-identifier?__%
                                           _macro13646_
                                           gx#syntax-binding?)
                                          (_K13577_
                                           (cons (gx#core-apply-expander__%
                                                  (gx#syntax-local-e__0
                                                   _macro13646_)
                                                  _hd13609_
                                                  _method13573_)
                                                 _rest13610_)
                                           _r13611_)
                                          (_E1362513634_)))))
                                (_E1362513634_))))
                         (_E1361413664_
                          (lambda ()
                            (if (gx#stx-pair? _e1361213630_)
                                (let ((_e1362213654_
                                       (gx#syntax-e _e1361213630_)))
                                  (let ((_hd1362313657_ (##car _e1362213654_))
                                        (_tl1362413659_ (##cdr _e1362213654_)))
                                    (if (eq? (gx#stx-e _hd1362313657_) 'begin:)
                                        (let ((_body13662_ _tl1362413659_))
                                          (if '#t
                                              (_K13577_
                                               (gx#stx-foldr
                                                cons
                                                _rest13610_
                                                _body13662_)
                                               _r13611_)
                                              (_E1362113650_)))
                                        (_E1362113650_))))
                                (_E1362113650_))))
                         (_E1361313691_
                          (lambda ()
                            (if (gx#stx-pair? _e1361213630_)
                                (let ((_e1361513668_
                                       (gx#syntax-e _e1361213630_)))
                                  (let ((_hd1361613671_ (##car _e1361513668_))
                                        (_tl1361713673_ (##cdr _e1361513668_)))
                                    (if (eq? (gx#stx-e _hd1361613671_) 'phi:)
                                        (if (gx#stx-pair? _tl1361713673_)
                                            (let ((_e1361813676_
                                                   (gx#syntax-e
                                                    _tl1361713673_)))
                                              (let ((_hd1361913679_
                                                     (##car _e1361813676_))
                                                    (_tl1362013681_
                                                     (##cdr _e1361813676_)))
                                                (let* ((_dphi13684_
                                                        _hd1361913679_)
                                                       (_body13686_
                                                        _tl1362013681_))
                                                  (if (gx#stx-fixnum?
                                                       _dphi13684_)
                                                      (let ((_rbody13689_
                                                             (call-with-parameters
                                                              (lambda ()
                                                                (_K13577_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _body13686_
                         '()))
                      _current-phi13574_
                      (fx+ (gx#stx-e _dphi13684_) (_current-phi13574_)))))
                (_K13577_ _rest13610_ (foldr1 cons _r13611_ _rbody13689_)))
              (_E1361413664_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E1361413664_))
                                        (_E1361413664_))))
                                (_E1361413664_)))))
                    (_E1361313691_)))))
        (let* ((_e1357913586_ _stx13571_)
               (_E1358113590_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1357913586_)))
               (_E1358013605_
                (lambda ()
                  (if (gx#stx-pair? _e1357913586_)
                      (let ((_e1358213594_ (gx#syntax-e _e1357913586_)))
                        (let ((_hd1358313597_ (##car _e1358213594_))
                              (_tl1358413599_ (##cdr _e1358213594_)))
                          (let ((_body13602_ _tl1358413599_))
                            (if '#t
                                (if (_current-phi13574_)
                                    (_K13577_ _body13602_ '())
                                    (call-with-parameters
                                     (lambda () (_K13577_ _body13602_ '()))
                                     _current-phi13574_
                                     (gx#current-expander-phi)))
                                (_E1358113590_)))))
                      (_E1358113590_)))))
          (_E1358013605_)))))
  (begin
    (define gx#core-expand-import%__%
      (lambda (_stx13111_ _internal-expand?13112_)
        (letrec ((_expand113114_
                  (lambda (_hd13556_ _K13557_ _rest13558_ _r13559_)
                    (if (gx#core-bound-module? _hd13556_)
                        (_import113115_
                         (gx#syntax-local-e__0 _hd13556_)
                         _K13557_
                         _rest13558_
                         _r13559_)
                        (if (gx#core-library-module-path? _hd13556_)
                            (_import113115_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path _hd13556_))
                             _K13557_
                             _rest13558_
                             _r13559_)
                            (if (gx#stx-string? _hd13556_)
                                (_import113115_
                                 (gx#import-module__0
                                  (gx#core-resolve-module-path__%
                                   _hd13556_
                                   (gx#stx-source _stx13111_)))
                                 _K13557_
                                 _rest13558_
                                 _r13559_)
                                (if (##structure-instance-of?
                                     (gx#stx-e _hd13556_)
                                     'gx#module-context::t)
                                    (_K13557_
                                     _rest13558_
                                     (cons (gx#stx-e _hd13556_) _r13559_))
                                    (if (_import-spec?13116_ _hd13556_)
                                        (_import-spec13121_
                                         _hd13556_
                                         _K13557_
                                         _rest13558_
                                         _r13559_)
                                        (if (_import-submodule?13117_
                                             _hd13556_)
                                            (_import-submodule13119_
                                             _hd13556_
                                             _K13557_
                                             _rest13558_
                                             _r13559_)
                                            (if (_import-runtime?13118_
                                                 _hd13556_)
                                                (_import-runtime13120_
                                                 _hd13556_
                                                 _K13557_
                                                 _rest13558_
                                                 _r13559_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; illegal import"
                                                 _stx13111_
                                                 _hd13556_))))))))))
                 (_import113115_
                  (lambda (_ctx13545_ _K13546_ _rest13547_ _r13548_)
                    (let ((_dphi13550_
                           (fx- (gx#current-import-expander-phi)
                                (gx#current-expander-phi))))
                      (_K13546_
                       _rest13547_
                       (cons (##structure
                              gx#import-set::t
                              _ctx13545_
                              _dphi13550_
                              (map (lambda (_g1355113553_)
                                     (gx#core-module-export->import__%
                                      _g1355113553_
                                      '#f
                                      _dphi13550_))
                                   (##structure-ref
                                    _ctx13545_
                                    '9
                                    gx#module-context::t
                                    '#f)))
                             _r13548_)))))
                 (_import-spec?13116_
                  (lambda (_hd13502_)
                    (let* ((_e1350313513_ _hd13502_)
                           (_E1350513517_ (lambda () '#f))
                           (_E1350413541_
                            (lambda ()
                              (if (gx#stx-pair? _e1350313513_)
                                  (let ((_e1350613521_
                                         (gx#syntax-e _e1350313513_)))
                                    (let ((_hd1350713524_
                                           (##car _e1350613521_))
                                          (_tl1350813526_
                                           (##cdr _e1350613521_)))
                                      (if (eq? (gx#stx-e _hd1350713524_)
                                               'spec:)
                                          (if (gx#stx-pair? _tl1350813526_)
                                              (let ((_e1350913529_
                                                     (gx#syntax-e
                                                      _tl1350813526_)))
                                                (let ((_hd1351013532_
                                                       (##car _e1350913529_))
                                                      (_tl1351113534_
                                                       (##cdr _e1350913529_)))
                                                  (let* ((_spath13537_
                                                          _hd1351013532_)
                                                         (_specs13539_
                                                          _tl1351113534_))
                                                    (if '#t
                                                        '#t
                                                        (_E1350513517_)))))
                                              (_E1350513517_))
                                          (_E1350513517_))))
                                  (_E1350513517_)))))
                      (_E1350413541_))))
                 (_import-submodule?13117_
                  (lambda (_hd13459_)
                    (let* ((_e1346013470_ _hd13459_)
                           (_E1346213474_ (lambda () '#f))
                           (_E1346113498_
                            (lambda ()
                              (if (gx#stx-pair? _e1346013470_)
                                  (let ((_e1346313478_
                                         (gx#syntax-e _e1346013470_)))
                                    (let ((_hd1346413481_
                                           (##car _e1346313478_))
                                          (_tl1346513483_
                                           (##cdr _e1346313478_)))
                                      (if (eq? (gx#stx-e _hd1346413481_) 'in:)
                                          (if (gx#stx-pair? _tl1346513483_)
                                              (let ((_e1346613486_
                                                     (gx#syntax-e
                                                      _tl1346513483_)))
                                                (let ((_hd1346713489_
                                                       (##car _e1346613486_))
                                                      (_tl1346813491_
                                                       (##cdr _e1346613486_)))
                                                  (let* ((_top13494_
                                                          _hd1346713489_)
                                                         (_sub13496_
                                                          _tl1346813491_))
                                                    (if '#t
                                                        '#t
                                                        (_E1346213474_)))))
                                              (_E1346213474_))
                                          (_E1346213474_))))
                                  (_E1346213474_)))))
                      (_E1346113498_))))
                 (_import-runtime?13118_
                  (lambda (_hd13416_)
                    (let* ((_e1341713427_ _hd13416_)
                           (_E1341913431_ (lambda () '#f))
                           (_E1341813455_
                            (lambda ()
                              (if (gx#stx-pair? _e1341713427_)
                                  (let ((_e1342013435_
                                         (gx#syntax-e _e1341713427_)))
                                    (let ((_hd1342113438_
                                           (##car _e1342013435_))
                                          (_tl1342213440_
                                           (##cdr _e1342013435_)))
                                      (if (eq? (gx#stx-e _hd1342113438_)
                                               'runtime:)
                                          (if (gx#stx-pair? _tl1342213440_)
                                              (let ((_e1342313443_
                                                     (gx#syntax-e
                                                      _tl1342213440_)))
                                                (let ((_hd1342413446_
                                                       (##car _e1342313443_))
                                                      (_tl1342513448_
                                                       (##cdr _e1342313443_)))
                                                  (let* ((_top13451_
                                                          _hd1342413446_)
                                                         (_spath13453_
                                                          _tl1342513448_))
                                                    (if '#t
                                                        '#t
                                                        (_E1341913431_)))))
                                              (_E1341913431_))
                                          (_E1341913431_))))
                                  (_E1341913431_)))))
                      (_E1341813455_))))
                 (_import-submodule13119_
                  (lambda (_hd13383_ _K13384_ _rest13385_ _r13386_)
                    (let* ((_e1338713394_ _hd13383_)
                           (_E1338913398_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _e1338713394_)))
                           (_E1338813412_
                            (lambda ()
                              (if (gx#stx-pair? _e1338713394_)
                                  (let ((_e1339013402_
                                         (gx#syntax-e _e1338713394_)))
                                    (let ((_hd1339113405_
                                           (##car _e1339013402_))
                                          (_tl1339213407_
                                           (##cdr _e1339013402_)))
                                      (let ((_spath13410_ _tl1339213407_))
                                        (if '#t
                                            (_import113115_
                                             (_import-spec-source13122_
                                              _spath13410_)
                                             _K13384_
                                             _rest13385_
                                             _r13386_)
                                            (_E1338913398_)))))
                                  (_E1338913398_)))))
                      (_E1338813412_))))
                 (_import-runtime13120_
                  (lambda (_hd13350_ _K13351_ _rest13352_ _r13353_)
                    (let* ((_e1335413361_ _hd13350_)
                           (_E1335613365_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _e1335413361_)))
                           (_E1335513379_
                            (lambda ()
                              (if (gx#stx-pair? _e1335413361_)
                                  (let ((_e1335713369_
                                         (gx#syntax-e _e1335413361_)))
                                    (let ((_hd1335813372_
                                           (##car _e1335713369_))
                                          (_tl1335913374_
                                           (##cdr _e1335713369_)))
                                      (let ((_spath13377_ _tl1335913374_))
                                        (if '#t
                                            (_K13351_
                                             _rest13352_
                                             (cons (_import-spec-source13122_
                                                    _spath13377_)
                                                   _r13353_))
                                            (_E1335613365_)))))
                                  (_E1335613365_)))))
                      (_E1335513379_))))
                 (_import-spec13121_
                  (lambda (_hd13189_ _K13190_ _rest13191_ _r13192_)
                    (let* ((_e1319313210_ _hd13189_)
                           (_E1320213214_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _e1319313210_)))
                           (_E1319513324_
                            (lambda ()
                              (if (gx#stx-pair? _e1319313210_)
                                  (let ((_e1320313218_
                                         (gx#syntax-e _e1319313210_)))
                                    (let ((_hd1320413221_
                                           (##car _e1320313218_))
                                          (_tl1320513223_
                                           (##cdr _e1320313218_)))
                                      (if (gx#stx-pair? _tl1320513223_)
                                          (let ((_e1320613226_
                                                 (gx#syntax-e _tl1320513223_)))
                                            (let ((_hd1320713229_
                                                   (##car _e1320613226_))
                                                  (_tl1320813231_
                                                   (##cdr _e1320613226_)))
                                              (let* ((_path13234_
                                                      _hd1320713229_)
                                                     (_specs13236_
                                                      _tl1320813231_))
                                                (if '#t
                                                    (let ((_src-ctx13238_
                                                           (_import-spec-source13122_
                                                            _path13234_))
                                                          (_exports13239_
                                                           (make-table))
                                                          (_specs13240_
                                                           (gx#syntax->list
                                                            _specs13236_)))
                                                      (begin
                                                        (for-each
                                                         (lambda (_out13242_)
                                                           (table-set!
                                                            _exports13239_
                                                            (cons (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _out13242_
                           '3
                           gx#module-export::t
                           '#f)
                          (##direct-structure-ref
                           _out13242_
                           '4
                           gx#module-export::t
                           '#f))
                    _out13242_))
                 (##structure-ref _src-ctx13238_ '9 gx#module-context::t '#f))
                (_K13190_
                 _rest13191_
                 (foldl1 (lambda (_spec13244_ _r13245_)
                           (let* ((_e1324613262_ _spec13244_)
                                  (_E1324813266_
                                   (lambda ()
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _e1324613262_)))
                                  (_E1324713320_
                                   (lambda ()
                                     (if (gx#stx-pair? _e1324613262_)
                                         (let ((_e1324913270_
                                                (gx#syntax-e _e1324613262_)))
                                           (let ((_hd1325013273_
                                                  (##car _e1324913270_))
                                                 (_tl1325113275_
                                                  (##cdr _e1324913270_)))
                                             (let ((_phi13278_ _hd1325013273_))
                                               (if (gx#stx-pair?
                                                    _tl1325113275_)
                                                   (let ((_e1325213280_
                                                          (gx#syntax-e
                                                           _tl1325113275_)))
                                                     (let ((_hd1325313283_
                                                            (##car _e1325213280_))
                                                           (_tl1325413285_
                                                            (##cdr _e1325213280_)))
                                                       (let ((_name13288_
                                                              _hd1325313283_))
                                                         (if (gx#stx-pair?
                                                              _tl1325413285_)
                                                             (let ((_e1325513290_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _tl1325413285_)))
                       (let ((_hd1325613293_ (##car _e1325513290_))
                             (_tl1325713295_ (##cdr _e1325513290_)))
                         (let ((_src-phi13298_ _hd1325613293_))
                           (if (gx#stx-pair? _tl1325713295_)
                               (let ((_e1325813300_
                                      (gx#syntax-e _tl1325713295_)))
                                 (let ((_hd1325913303_ (##car _e1325813300_))
                                       (_tl1326013305_ (##cdr _e1325813300_)))
                                   (let ((_src-name13308_ _hd1325913303_))
                                     (if (gx#stx-null? _tl1326013305_)
                                         (if (if (gx#stx-fixnum?
                                                  _src-phi13298_)
                                                 (if (gx#identifier?
                                                      _src-name13308_)
                                                     (if (gx#stx-fixnum?
                                                          _phi13278_)
                                                         (gx#identifier?
                                                          _name13288_)
                                                         '#f)
                                                     '#f)
                                                 '#f)
                                             (let ((_src-phi13310_
                                                    (gx#stx-e _src-phi13298_))
                                                   (_src-name13311_
                                                    (gx#core-identifier-key
                                                     _src-name13308_))
                                                   (_phi13312_
                                                    (gx#stx-e _phi13278_))
                                                   (_name13313_
                                                    (gx#core-identifier-key
                                                     _name13288_)))
                                               (let ((_$e13315_
                                                      (table-ref
                                                       _exports13239_
                                                       (cons _src-phi13310_
                                                             _src-name13311_)
                                                       '#f)))
                                                 (if _$e13315_
                                                     ((lambda (_out13318_)
                                                        (cons (gx#core-module-export->import__%
                                                               _out13318_
                                                               _name13313_
                                                               (fx- _phi13312_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _src-phi13310_))
                      _r13245_))
              _$e13315_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; no matching export"
                                                      _stx13111_
                                                      _hd13189_))))
                                             (_E1324813266_))
                                         (_E1324813266_)))))
                               (_E1324813266_)))))
                     (_E1324813266_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1324813266_)))))
                                         (_E1324813266_)))))
                             (_E1324713320_)))
                         _r13192_
                         _specs13240_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1320213214_)))))
                                          (_E1320213214_))))
                                  (_E1320213214_))))
                           (_E1319413346_
                            (lambda ()
                              (if (gx#stx-pair? _e1319313210_)
                                  (let ((_e1319613328_
                                         (gx#syntax-e _e1319313210_)))
                                    (let ((_hd1319713331_
                                           (##car _e1319613328_))
                                          (_tl1319813333_
                                           (##cdr _e1319613328_)))
                                      (if (gx#stx-pair? _tl1319813333_)
                                          (let ((_e1319913336_
                                                 (gx#syntax-e _tl1319813333_)))
                                            (let ((_hd1320013339_
                                                   (##car _e1319913336_))
                                                  (_tl1320113341_
                                                   (##cdr _e1319913336_)))
                                              (let ((_path13344_
                                                     _hd1320013339_))
                                                (if (gx#stx-null?
                                                     _tl1320113341_)
                                                    (if '#t
                                                        (_K13190_
                                                         _rest13191_
                                                         (cons (_import-spec-source13122_
                                                                _path13344_)
                                                               _r13192_))
                                                        (_E1319513324_))
                                                    (_E1319513324_)))))
                                          (_E1319513324_))))
                                  (_E1319513324_)))))
                      (_E1319413346_))))
                 (_import-spec-source13122_
                  (lambda (_spath13187_)
                    (gx#core-import-nested-module _spath13187_ _stx13111_)))
                 (_import!13123_
                  (lambda (_rbody13136_)
                    (letrec* ((_current-ctx13138_
                               (gx#current-expander-context))
                              (_deps13139_ (make-table 'test: eq?))
                              (_bind!13140_
                               (lambda (_hd13185_)
                                 (gx#core-bind-import!__1
                                  _hd13185_
                                  _current-ctx13138_))))
                      (let _lp13142_ ((_rest13144_ _rbody13136_)
                                      (_body13145_ '()))
                        (let* ((_rest1314613154_ _rest13144_)
                               (_else1314813164_
                                (lambda ()
                                  (begin
                                    (if (##structure-instance-of?
                                         _current-ctx13138_
                                         'gx#module-context::t)
                                        (##structure-set!
                                         _current-ctx13138_
                                         (foldl1 cons
                                                 (##structure-ref
                                                  _current-ctx13138_
                                                  '8
                                                  gx#module-context::t
                                                  '#f)
                                                 _body13145_)
                                         '8
                                         gx#module-context::t
                                         '#f)
                                        '#!void)
                                    (table-for-each
                                     (lambda (_ctx13162_ _g16032_)
                                       (gx#eval-module _ctx13162_))
                                     _deps13139_)
                                    _body13145_)))
                               (_K1315013173_
                                (lambda (_rest13167_ _hd13168_)
                                  (begin
                                    (if (##structure-direct-instance-of?
                                         _hd13168_
                                         'gx#module-import::t)
                                        (begin
                                          (_bind!13140_ _hd13168_)
                                          (if (if (fxpositive?
                                                   (##direct-structure-ref
                                                    _hd13168_
                                                    '3
                                                    gx#module-import::t
                                                    '#f))
                                                  (fxzero? (##direct-structure-ref
                                                            (##direct-structure-ref
                                                             _hd13168_
                                                             '1
                                                             gx#module-import::t
                                                             '#f)
                                                            '3
                                                            gx#module-export::t
                                                            '#f))
                                                  '#f)
                                              (table-set!
                                               _deps13139_
                                               (##direct-structure-ref
                                                (##direct-structure-ref
                                                 _hd13168_
                                                 '1
                                                 gx#module-import::t
                                                 '#f)
                                                '1
                                                gx#module-export::t
                                                '#f)
                                               '#t)
                                              '#!void))
                                        (if (##structure-direct-instance-of?
                                             _hd13168_
                                             'gx#import-set::t)
                                            (begin
                                              (for-each
                                               _bind!13140_
                                               (##direct-structure-ref
                                                _hd13168_
                                                '3
                                                gx#import-set::t
                                                '#f))
                                              (if (fxpositive?
                                                   (##direct-structure-ref
                                                    _hd13168_
                                                    '2
                                                    gx#import-set::t
                                                    '#f))
                                                  (table-set!
                                                   _deps13139_
                                                   (##direct-structure-ref
                                                    _hd13168_
                                                    '1
                                                    gx#import-set::t
                                                    '#f)
                                                   '#t)
                                                  '#!void))
                                            (let ((_$e13170_
                                                   (##structure-instance-of?
                                                    _hd13168_
                                                    'gx#module-context::t)))
                                              (if _$e13170_
                                                  _$e13170_
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Unexpected import"
                                                   _stx13111_
                                                   _hd13168_)))))
                                    (_lp13142_
                                     _rest13167_
                                     (cons _hd13168_ _body13145_))))))
                          (if (##pair? _rest1314613154_)
                              (let ((_hd1315113176_ (##car _rest1314613154_))
                                    (_tl1315213178_ (##cdr _rest1314613154_)))
                                (let* ((_hd13181_ _hd1315113176_)
                                       (_rest13183_ _tl1315213178_))
                                  (_K1315013173_ _rest13183_ _hd13181_)))
                              (_else1314813164_)))))))
                 (_expanded-import?13124_
                  (lambda (_e13128_)
                    (let ((_$e13130_
                           (##structure-direct-instance-of?
                            _e13128_
                            'gx#import-set::t)))
                      (if _$e13130_
                          _$e13130_
                          (let ((_$e13133_
                                 (##structure-direct-instance-of?
                                  _e13128_
                                  'gx#module-import::t)))
                            (if _$e13133_
                                _$e13133_
                                (##structure-instance-of?
                                 _e13128_
                                 'gx#module-context::t))))))))
          (let ((_rbody13126_
                 (gx#core-expand-import/export
                  _stx13111_
                  _expanded-import?13124_
                  'apply-import-expander
                  gx#current-import-expander-phi
                  _expand113114_)))
            (if _internal-expand?13112_
                (reverse _rbody13126_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#import (_import!13123_ _rbody13126_))
                 (gx#stx-source _stx13111_)))))))
    (begin
      (define gx#core-expand-import%__0
        (lambda (_stx13564_)
          (let ((_internal-expand?13566_ '#f))
            (gx#core-expand-import%__% _stx13564_ _internal-expand?13566_))))
      (define gx#core-expand-import%
        (lambda _g16034_
          (let ((_g16033_ (length _g16034_)))
            (cond ((##fx= _g16033_ 1)
                   (apply gx#core-expand-import%__0 _g16034_))
                  ((##fx= _g16033_ 2)
                   (apply gx#core-expand-import%__% _g16034_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-expand-import%
                    _g16034_))))))))
  (define gx#core-import-nested-module
    (lambda (_spath13038_ _where13039_)
      (let* ((_e1304013047_ _spath13038_)
             (_E1304213051_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1304013047_)))
             (_E1304113106_
              (lambda ()
                (if (gx#stx-pair? _e1304013047_)
                    (let ((_e1304313055_ (gx#syntax-e _e1304013047_)))
                      (let ((_hd1304413058_ (##car _e1304313055_))
                            (_tl1304513060_ (##cdr _e1304313055_)))
                        (let* ((_origin13063_ _hd1304413058_)
                               (_sub13065_ _tl1304513060_))
                          (if '#t
                              (let ((_origin-ctx13067_
                                     (if (gx#stx-false? _origin13063_)
                                         (gx#current-expander-context)
                                         (gx#import-module__0 _origin13063_))))
                                (let _lp13069_ ((_rest13071_ _sub13065_)
                                                (_ctx13072_ _origin-ctx13067_))
                                  (let* ((_e1307313080_ _rest13071_)
                                         (_E1307513084_ (lambda () _ctx13072_))
                                         (_E1307413102_
                                          (lambda ()
                                            (if (gx#stx-pair? _e1307313080_)
                                                (let ((_e1307613088_
                                                       (gx#syntax-e
                                                        _e1307313080_)))
                                                  (let ((_hd1307713091_
                                                         (##car _e1307613088_))
                                                        (_tl1307813093_
                                                         (##cdr _e1307613088_)))
                                                    (let* ((_id13096_
                                                            _hd1307713091_)
                                                           (_rest13098_
                                                            _tl1307813093_))
                                                      (if '#t
                                                          (let ((_bind13100_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#resolve-identifier__% _id13096_ '0 _ctx13072_)))
                    (begin
                      (if (if (##structure-direct-instance-of?
                               _bind13100_
                               'gx#syntax-binding::t)
                              (##structure-instance-of?
                               (##direct-structure-ref
                                _bind13100_
                                '4
                                gx#syntax-binding::t
                                '#f)
                               'gx#module-context::t)
                              '#f)
                          '#!void
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; not bound as module"
                           _where13039_
                           _spath13038_
                           _id13096_))
                      (_lp13069_
                       _rest13098_
                       (##direct-structure-ref
                        _bind13100_
                        '4
                        gx#syntax-binding::t
                        '#f))))
                  (_E1307513084_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E1307513084_)))))
                                    (_E1307413102_))))
                              (_E1304213051_)))))
                    (_E1304213051_)))))
        (_E1304113106_))))
  (define gx#core-expand-import-source
    (lambda (_hd13036_)
      (gx#core-expand-import%__%
       (cons 'import-internal% (cons _hd13036_ '()))
       '#t)))
  (begin
    (define gx#core-expand-export%__%
      (lambda (_stx12547_ _internal-expand?12548_)
        (letrec* ((_make-export__1597215973_
                   (lambda (_bind12984_ _phi12985_ _ctx12986_ _name12987_)
                     (let* ((_key12989_
                             (##structure-ref
                              _bind12984_
                              '2
                              gx#binding::t
                              '#f))
                            (_export-key12991_
                             (if _name12987_
                                 (gx#core-identifier-key _name12987_)
                                 _key12989_)))
                       (##structure
                        gx#module-export::t
                        _ctx12986_
                        _key12989_
                        _phi12985_
                        _export-key12991_
                        (let ((_$e12994_
                               (##structure-instance-of?
                                _bind12984_
                                'gx#extern-binding::t)))
                          (if _$e12994_
                              _$e12994_
                              (##structure-direct-instance-of?
                               _bind12984_
                               'gx#import-binding::t)))))))
                  (_make-export__0__1597415977_
                   (lambda (_bind13000_)
                     (let* ((_phi13002_ (gx#current-export-expander-phi))
                            (_ctx13004_ (gx#current-expander-context))
                            (_name13006_ '#f))
                       (_make-export__1597215973_
                        _bind13000_
                        _phi13002_
                        _ctx13004_
                        _name13006_))))
                  (_make-export__1__1597515978_
                   (lambda (_bind13008_ _phi13009_)
                     (let* ((_ctx13011_ (gx#current-expander-context))
                            (_name13013_ '#f))
                       (_make-export__1597215973_
                        _bind13008_
                        _phi13009_
                        _ctx13011_
                        _name13013_))))
                  (_make-export__2__1597615979_
                   (lambda (_bind13015_ _phi13016_ _ctx13017_)
                     (let ((_name13019_ '#f))
                       (_make-export__1597215973_
                        _bind13015_
                        _phi13016_
                        _ctx13017_
                        _name13019_))))
                  (_make-export12550_
                   (lambda _g16036_
                     (let ((_g16035_ (length _g16036_)))
                       (cond ((##fx= _g16035_ 1)
                              (apply _make-export__0__1597415977_ _g16036_))
                             ((##fx= _g16035_ 2)
                              (apply _make-export__1__1597515978_ _g16036_))
                             ((##fx= _g16035_ 3)
                              (apply _make-export__2__1597615979_ _g16036_))
                             ((##fx= _g16035_ 4)
                              (apply _make-export__1597215973_ _g16036_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g16036_))))))
                  (_expand112551_
                   (lambda (_hd12697_ _K12698_ _rest12699_ _r12700_)
                     (let* ((_e1270112733_ _hd12697_)
                            (_E1272812737_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal export"
                                _stx12547_
                                _hd12697_)))
                            (_E1271812816_
                             (lambda ()
                               (if (gx#stx-pair? _e1270112733_)
                                   (let ((_e1272912741_
                                          (gx#syntax-e _e1270112733_)))
                                     (let ((_hd1273012744_
                                            (##car _e1272912741_))
                                           (_tl1273112746_
                                            (##cdr _e1272912741_)))
                                       (if (eq? (gx#stx-e _hd1273012744_)
                                                'import:)
                                           (let ((_in12749_ _tl1273112746_))
                                             (if (gx#stx-list? _in12749_)
                                                 (let _lp12751_ ((_in-rest12753_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _in12749_)
                         (_r12754_ _r12700_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_e1275512762_
                                                           _in-rest12753_)
                                                          (_E1275712766_
                                                           (lambda ()
                                                             (_K12698_
                                                              _rest12699_
                                                              _r12754_)))
                                                          (_E1275612812_
                                                           (lambda ()
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _e1275512762_)
                         (let ((_e1275812770_ (gx#syntax-e _e1275512762_)))
                           (let ((_hd1275912773_ (##car _e1275812770_))
                                 (_tl1276012775_ (##cdr _e1275812770_)))
                             (let* ((_hd12778_ _hd1275912773_)
                                    (_in-rest12780_ _tl1276012775_))
                               (if '#t
                                   (let ((_src12810_
                                          (if (gx#core-bound-module? _hd12778_)
                                              (gx#syntax-local-e__0 _hd12778_)
                                              (if (gx#core-library-module-path?
                                                   _hd12778_)
                                                  (gx#import-module__0
                                                   (gx#core-resolve-library-module-path
                                                    _hd12778_))
                                                  (if (gx#stx-string?
                                                       _hd12778_)
                                                      (gx#import-module__0
                                                       (gx#core-resolve-module-path__%
                                                        _hd12778_
                                                        (gx#stx-source
                                                         _stx12547_)))
                                                      (let* ((_e1278112788_
                                                              _hd12778_)
                                                             (_E1278312792_
                                                              (lambda ()
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; illegal re-export"
                         _stx12547_
                         _hd12778_)))
                     (_E1278212806_
                      (lambda ()
                        (if (gx#stx-pair? _e1278112788_)
                            (let ((_e1278412796_ (gx#syntax-e _e1278112788_)))
                              (let ((_hd1278512799_ (##car _e1278412796_))
                                    (_tl1278612801_ (##cdr _e1278412796_)))
                                (if (eq? (gx#stx-e _hd1278512799_) 'in:)
                                    (let ((_spath12804_ _tl1278612801_))
                                      (if '#t
                                          (gx#core-import-nested-module
                                           _spath12804_
                                           _stx12547_)
                                          (_E1278312792_)))
                                    (_E1278312792_))))
                            (_E1278312792_)))))
                (_E1278212806_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_lp12751_
                                      _in-rest12780_
                                      (_export-imports12552_
                                       _src12810_
                                       _r12754_)))
                                   (_E1275712766_)))))
                         (_E1275712766_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E1275612812_)))
                                                 (_E1272812737_)))
                                           (_E1272812737_))))
                                   (_E1272812737_))))
                            (_E1270512855_
                             (lambda ()
                               (if (gx#stx-pair? _e1270112733_)
                                   (let ((_e1271912820_
                                          (gx#syntax-e _e1270112733_)))
                                     (let ((_hd1272012823_
                                            (##car _e1271912820_))
                                           (_tl1272112825_
                                            (##cdr _e1271912820_)))
                                       (if (eq? (gx#stx-e _hd1272012823_)
                                                'rename:)
                                           (if (gx#stx-pair? _tl1272112825_)
                                               (let ((_e1272212828_
                                                      (gx#syntax-e
                                                       _tl1272112825_)))
                                                 (let ((_hd1272312831_
                                                        (##car _e1272212828_))
                                                       (_tl1272412833_
                                                        (##cdr _e1272212828_)))
                                                   (let ((_id12836_
                                                          _hd1272312831_))
                                                     (if (gx#stx-pair?
                                                          _tl1272412833_)
                                                         (let ((_e1272512838_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1272412833_)))
                   (let ((_hd1272612841_ (##car _e1272512838_))
                         (_tl1272712843_ (##cdr _e1272512838_)))
                     (let ((_name12846_ _hd1272612841_))
                       (if (gx#stx-null? _tl1272712843_)
                           (if '#t
                               (let* ((_phi12848_
                                       (gx#current-export-expander-phi))
                                      (_$e12850_
                                       (gx#core-resolve-identifier__1
                                        _id12836_
                                        _phi12848_)))
                                 (if _$e12850_
                                     ((lambda (_bind12853_)
                                        (_K12698_
                                         _rest12699_
                                         (cons (_make-export__1597215973_
                                                _bind12853_
                                                _phi12848_
                                                (gx#current-expander-context)
                                                _name12846_)
                                               _r12700_)))
                                      _$e12850_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Reference to unbound identifier"
                                      _stx12547_
                                      _hd12697_
                                      _id12836_)))
                               (_E1271812816_))
                           (_E1271812816_)))))
                 (_E1271812816_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E1271812816_))
                                           (_E1271812816_))))
                                   (_E1271812816_))))
                            (_E1270412904_
                             (lambda ()
                               (if (gx#stx-pair? _e1270112733_)
                                   (let ((_e1270612859_
                                          (gx#syntax-e _e1270112733_)))
                                     (let ((_hd1270712862_
                                            (##car _e1270612859_))
                                           (_tl1270812864_
                                            (##cdr _e1270612859_)))
                                       (if (eq? (gx#stx-e _hd1270712862_)
                                                'spec:)
                                           (if (gx#stx-pair? _tl1270812864_)
                                               (let ((_e1270912867_
                                                      (gx#syntax-e
                                                       _tl1270812864_)))
                                                 (let ((_hd1271012870_
                                                        (##car _e1270912867_))
                                                       (_tl1271112872_
                                                        (##cdr _e1270912867_)))
                                                   (let ((_phi12875_
                                                          _hd1271012870_))
                                                     (if (gx#stx-pair?
                                                          _tl1271112872_)
                                                         (let ((_e1271212877_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1271112872_)))
                   (let ((_hd1271312880_ (##car _e1271212877_))
                         (_tl1271412882_ (##cdr _e1271212877_)))
                     (let ((_id12885_ _hd1271312880_))
                       (if (gx#stx-pair? _tl1271412882_)
                           (let ((_e1271512887_ (gx#syntax-e _tl1271412882_)))
                             (let ((_hd1271612890_ (##car _e1271512887_))
                                   (_tl1271712892_ (##cdr _e1271512887_)))
                               (let ((_name12895_ _hd1271612890_))
                                 (if (gx#stx-null? _tl1271712892_)
                                     (if (if (gx#stx-fixnum? _phi12875_)
                                             (if (gx#identifier? _id12885_)
                                                 (gx#identifier? _name12895_)
                                                 '#f)
                                             '#f)
                                         (let* ((_phi12897_
                                                 (gx#stx-e _phi12875_))
                                                (_$e12899_
                                                 (gx#core-resolve-identifier__1
                                                  _id12885_
                                                  _phi12897_)))
                                           (if _$e12899_
                                               ((lambda (_bind12902_)
                                                  (_K12698_
                                                   _rest12699_
                                                   (cons (_make-export__1597215973_
                                                          _bind12902_
                                                          _phi12897_
                                                          (gx#current-expander-context)
                                                          _name12895_)
                                                         _r12700_)))
                                                _$e12899_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Reference to unbound identifier"
                                                _stx12547_
                                                _hd12697_
                                                _id12885_)))
                                         (_E1270512855_))
                                     (_E1270512855_)))))
                           (_E1270512855_)))))
                 (_E1270512855_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E1270512855_))
                                           (_E1270512855_))))
                                   (_E1270512855_))))
                            (_E1270312915_
                             (lambda ()
                               (let ((_id12908_ _e1270112733_))
                                 (if (gx#identifier? _id12908_)
                                     (let ((_$e12910_
                                            (gx#core-resolve-identifier__1
                                             _id12908_
                                             (gx#current-export-expander-phi))))
                                       (if _$e12910_
                                           ((lambda (_bind12913_)
                                              (_K12698_
                                               _rest12699_
                                               (cons (_make-export__0__1597415977_
                                                      _bind12913_)
                                                     _r12700_)))
                                            _$e12910_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Reference to unbound identifier"
                                            _stx12547_
                                            _hd12697_)))
                                     (_E1270412904_)))))
                            (_E1270212979_
                             (lambda ()
                               (if (eq? (gx#stx-e _e1270112733_) '#t)
                                   (if '#t
                                       (let* ((_current-ctx12919_
                                               (gx#current-expander-context))
                                              (_current-phi12921_
                                               (gx#current-export-expander-phi))
                                              (_phi-ctx12923_
                                               (gx#core-context-shift
                                                _current-ctx12919_
                                                _current-phi12921_))
                                              (_phi-bind12925_
                                               (table->list
                                                (##structure-ref
                                                 _phi-ctx12923_
                                                 '2
                                                 gx#expander-context::t
                                                 '#f))))
                                         (let _lp12928_ ((_bind-rest12930_
                                                          _phi-bind12925_)
                                                         (_set12931_ '()))
                                           (let* ((_bind-rest1293212942_
                                                   _bind-rest12930_)
                                                  (_else1293412950_
                                                   (lambda ()
                                                     (_K12698_
                                                      _rest12699_
                                                      (cons (##structure
                                                             gx#export-set::t
                                                             '#f
                                                             _current-phi12921_
                                                             _set12931_)
                                                            _r12700_))))
                                                  (_K1293612960_
                                                   (lambda (_bind-rest12953_
                                                            _bind12954_
                                                            _key12955_)
                                                     (if (let ((_$e12957_
                                                                (##structure-direct-instance-of?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _bind12954_
                         'gx#import-binding::t)))
                   (if _$e12957_
                       _$e12957_
                       (gx#private-feature-binding? _bind12954_)))
                 (_lp12928_ _bind-rest12953_ _set12931_)
                 (_lp12928_
                  _bind-rest12953_
                  (cons (_make-export__2__1597615979_
                         _bind12954_
                         _current-phi12921_
                         _current-ctx12919_)
                        _set12931_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (##pair? _bind-rest1293212942_)
                                                 (let ((_hd1293712963_
                                                        (##car _bind-rest1293212942_))
                                                       (_tl1293812965_
                                                        (##cdr _bind-rest1293212942_)))
                                                   (if (##pair? _hd1293712963_)
                                                       (let ((_hd1293912968_
                                                              (##car _hd1293712963_))
                                                             (_tl1294012970_
                                                              (##cdr _hd1293712963_)))
                                                         (let* ((_key12973_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1293912968_)
                        (_bind12975_ _tl1294012970_)
                        (_bind-rest12977_ _tl1293812965_))
                   (_K1293612960_ _bind-rest12977_ _bind12975_ _key12973_)))
               (_else1293412950_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_else1293412950_)))))
                                       (_E1270312915_))
                                   (_E1270312915_)))))
                       (_E1270212979_))))
                  (_export-imports12552_
                   (lambda (_src12573_ _r12574_)
                     (letrec* ((_current-ctx12576_
                                (gx#current-expander-context))
                               (_current-phi12577_
                                (gx#current-export-expander-phi))
                               (_import->export12578_
                                (lambda (_in12659_)
                                  (let* ((_in1266012668_ _in12659_)
                                         (_E1266212672_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _in1266012668_)))
                                         (_K1266312679_
                                          (lambda (_phi12675_
                                                   _key12676_
                                                   _out12677_)
                                            (##structure
                                             gx#module-export::t
                                             _current-ctx12576_
                                             _key12676_
                                             _phi12675_
                                             _key12676_
                                             '#t))))
                                    (if (##structure-direct-instance-of?
                                         _in1266012668_
                                         'gx#module-import::t)
                                        (let* ((_e1266412682_
                                                (##vector-ref
                                                 _in1266012668_
                                                 '1))
                                               (_out12685_ _e1266412682_)
                                               (_e1266512687_
                                                (##vector-ref
                                                 _in1266012668_
                                                 '2))
                                               (_key12690_ _e1266512687_)
                                               (_e1266612692_
                                                (##vector-ref
                                                 _in1266012668_
                                                 '3))
                                               (_phi12695_ _e1266612692_))
                                          (_K1266312679_
                                           _phi12695_
                                           _key12690_
                                           _out12685_))
                                        (_E1266212672_)))))
                               (_fold-e12579_
                                (lambda (_in12581_ _r12582_)
                                  (let* ((_in1258312597_ _in12581_)
                                         (_else1258612605_
                                          (lambda () _r12582_)))
                                    (let ((_K1259212641_
                                           (lambda (_phi12637_
                                                    _key12638_
                                                    _out12639_)
                                             (if (if (fx= _phi12637_
                                                          _current-phi12577_)
                                                     (eq? _src12573_
                                                          (##direct-structure-ref
                                                           _out12639_
                                                           '1
                                                           gx#module-export::t
                                                           '#f))
                                                     '#f)
                                                 (cons (_import->export12578_
                                                        _in12581_)
                                                       _r12582_)
                                                 _r12582_)))
                                          (_K1258812616_
                                           (lambda (_imports12609_
                                                    _phi12610_
                                                    _ctx12611_)
                                             (if (if (fx= _phi12610_
                                                          _current-phi12577_)
                                                     (eq? _src12573_
                                                          _ctx12611_)
                                                     '#f)
                                                 (foldl1 (lambda (_in12613_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _r12614_)
                   (cons (_import->export12578_ _in12613_) _r12614_))
                 _r12582_
                 _imports12609_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _r12582_))))
                                      (let ((_try-match1258512634_
                                             (lambda ()
                                               (if (##structure-direct-instance-of?
                                                    _in1258312597_
                                                    'gx#import-set::t)
                                                   (let* ((_e1258912619_
                                                           (##vector-ref
                                                            _in1258312597_
                                                            '1))
                                                          (_e1259012624_
                                                           (##vector-ref
                                                            _in1258312597_
                                                            '2))
                                                          (_e1259112629_
                                                           (##vector-ref
                                                            _in1258312597_
                                                            '3)))
                                                     (let ((_ctx12622_
                                                            _e1258912619_)
                                                           (_phi12627_
                                                            _e1259012624_)
                                                           (_imports12632_
                                                            _e1259112629_))
                                                       (_K1258812616_
                                                        _imports12632_
                                                        _phi12627_
                                                        _ctx12622_)))
                                                   (_else1258612605_)))))
                                        (if (##structure-direct-instance-of?
                                             _in1258312597_
                                             'gx#module-import::t)
                                            (let* ((_e1259312644_
                                                    (##vector-ref
                                                     _in1258312597_
                                                     '1))
                                                   (_e1259412649_
                                                    (##vector-ref
                                                     _in1258312597_
                                                     '2))
                                                   (_e1259512654_
                                                    (##vector-ref
                                                     _in1258312597_
                                                     '3)))
                                              (let ((_out12647_ _e1259312644_)
                                                    (_key12652_ _e1259412649_)
                                                    (_phi12657_ _e1259512654_))
                                                (_K1259212641_
                                                 _phi12657_
                                                 _key12652_
                                                 _out12647_)))
                                            (_try-match1258512634_))))))))
                       (cons (##structure
                              gx#export-set::t
                              _src12573_
                              _current-phi12577_
                              (foldl1 _fold-e12579_
                                      '()
                                      (##structure-ref
                                       _current-ctx12576_
                                       '8
                                       gx#module-context::t
                                       '#f)))
                             _r12574_))))
                  (_export!12553_
                   (lambda (_rbody12563_)
                     (letrec* ((_current-ctx12565_
                                (gx#current-expander-context))
                               (_fold-e12566_
                                (lambda (_out12570_ _r12571_)
                                  (if (##structure-direct-instance-of?
                                       _out12570_
                                       'gx#module-export::t)
                                      (cons _out12570_ _r12571_)
                                      (if (##structure-direct-instance-of?
                                           _out12570_
                                           'gx#export-set::t)
                                          (foldl1 cons
                                                  _r12571_
                                                  (##direct-structure-ref
                                                   _out12570_
                                                   '3
                                                   gx#export-set::t
                                                   '#f))
                                          _r12571_)))))
                       (let ((_body12568_ (reverse _rbody12563_)))
                         (begin
                           (##structure-set!
                            _current-ctx12565_
                            (foldl1 _fold-e12566_
                                    (##structure-ref
                                     _current-ctx12565_
                                     '9
                                     gx#module-context::t
                                     '#f)
                                    _body12568_)
                            '9
                            gx#module-context::t
                            '#f)
                           _body12568_)))))
                  (_expanded-export?12554_
                   (lambda (_e12558_)
                     (let ((_$e12560_
                            (##structure-direct-instance-of?
                             _e12558_
                             'gx#module-export::t)))
                       (if _$e12560_
                           _$e12560_
                           (##structure-direct-instance-of?
                            _e12558_
                            'gx#export-set::t))))))
          (let ((_rbody12556_
                 (gx#core-expand-import/export
                  _stx12547_
                  _expanded-export?12554_
                  'apply-export-expander
                  gx#current-export-expander-phi
                  _expand112551_)))
            (if _internal-expand?12548_
                (reverse _rbody12556_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#export (_export!12553_ _rbody12556_))
                 (gx#stx-source _stx12547_)))))))
    (begin
      (define gx#core-expand-export%__0
        (lambda (_stx13029_)
          (let ((_internal-expand?13031_ '#f))
            (gx#core-expand-export%__% _stx13029_ _internal-expand?13031_))))
      (define gx#core-expand-export%
        (lambda _g16038_
          (let ((_g16037_ (length _g16038_)))
            (cond ((##fx= _g16037_ 1)
                   (apply gx#core-expand-export%__0 _g16038_))
                  ((##fx= _g16037_ 2)
                   (apply gx#core-expand-export%__% _g16038_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-expand-export%
                    _g16038_))))))))
  (define gx#core-expand-export-source
    (lambda (_hd12544_)
      (gx#core-expand-export%__%
       (cons 'export-macro% (cons _hd12544_ '()))
       '#t)))
  (define gx#core-expand-provide%
    (lambda (_stx12514_)
      (let* ((_e1251512522_ _stx12514_)
             (_E1251712526_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1251512522_)))
             (_E1251612540_
              (lambda ()
                (if (gx#stx-pair? _e1251512522_)
                    (let ((_e1251812530_ (gx#syntax-e _e1251512522_)))
                      (let ((_hd1251912533_ (##car _e1251812530_))
                            (_tl1252012535_ (##cdr _e1251812530_)))
                        (let ((_body12538_ _tl1252012535_))
                          (if (gx#identifier-list? _body12538_)
                              (begin
                                (gx#stx-for-each1
                                 gx#core-bind-feature!
                                 _body12538_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#provide
                                  (gx#stx-map1
                                   gx#core-quote-syntax
                                   _body12538_))
                                 (gx#stx-source _stx12514_)))
                              (_E1251712526_)))))
                    (_E1251712526_)))))
        (_E1251612540_))))
  (begin
    (define gx#core-bind-feature!__%
      (lambda (_id12480_ _private?12481_ _phi12482_ _ctx12483_)
        (gx#core-bind-syntax!__%
         _id12480_
         ((if _private?12481_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _id12480_))
         _private?12481_
         _phi12482_
         _ctx12483_)))
    (begin
      (define gx#core-bind-feature!__0
        (lambda (_id12488_)
          (let* ((_private?12490_ '#f)
                 (_phi12492_ (gx#current-expander-phi))
                 (_ctx12494_ (gx#current-expander-context)))
            (gx#core-bind-feature!__%
             _id12488_
             _private?12490_
             _phi12492_
             _ctx12494_))))
      (define gx#core-bind-feature!__1
        (lambda (_id12496_ _private?12497_)
          (let* ((_phi12499_ (gx#current-expander-phi))
                 (_ctx12501_ (gx#current-expander-context)))
            (gx#core-bind-feature!__%
             _id12496_
             _private?12497_
             _phi12499_
             _ctx12501_))))
      (define gx#core-bind-feature!__2
        (lambda (_id12503_ _private?12504_ _phi12505_)
          (let ((_ctx12507_ (gx#current-expander-context)))
            (gx#core-bind-feature!__%
             _id12503_
             _private?12504_
             _phi12505_
             _ctx12507_))))
      (define gx#core-bind-feature!
        (lambda _g16040_
          (let ((_g16039_ (length _g16040_)))
            (cond ((##fx= _g16039_ 1)
                   (apply gx#core-bind-feature!__0 _g16040_))
                  ((##fx= _g16039_ 2)
                   (apply gx#core-bind-feature!__1 _g16040_))
                  ((##fx= _g16039_ 3)
                   (apply gx#core-bind-feature!__2 _g16040_))
                  ((##fx= _g16039_ 4)
                   (apply gx#core-bind-feature!__% _g16040_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-feature!
                    _g16040_)))))))))
