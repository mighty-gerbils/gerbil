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
    (lambda _$args15967_
      (apply make-struct-instance gx#module-import::t _$args15967_)))
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
    (lambda _$args15964_
      (apply make-struct-instance gx#module-export::t _$args15964_)))
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
    (lambda _$args15961_
      (apply make-struct-instance gx#import-set::t _$args15961_)))
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
    (lambda _$args15958_
      (apply make-struct-instance gx#export-set::t _$args15958_)))
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
    (lambda _$args15955_
      (apply make-class-instance gx#import-expander::t _$args15955_)))
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
    (lambda _$args15952_
      (apply make-class-instance gx#export-expander::t _$args15952_)))
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
    (lambda _$args15949_
      (apply make-class-instance gx#import-export-expander::t _$args15949_)))
  (define gx#current-import-expander-phi (make-parameter '#f))
  (define gx#current-export-expander-phi (make-parameter '#f))
  (define gx#current-module-reader-path (make-parameter '#f))
  (define gx#current-module-reader-args (make-parameter '#f))
  (define gx#module-context:::init!
    (lambda (_self15943_ _id15944_ _super15945_ _ns15946_ _path15947_)
      (struct-instance-init!
       _self15943_
       _id15944_
       (make-table 'test: eq?)
       _super15945_
       '#f
       '#f
       _ns15946_
       _path15947_
       '()
       '()
       '#f
       '#f)))
  (bind-method! gx#module-context::t ':init! gx#module-context:::init! '#f)
  (begin
    (define gx#prelude-context:::init!__%
      (lambda (_self15787_ _ctx15788_ _root15789_)
        (let ((_super15797_
               (let ((_$e15791_ _root15789_))
                 (if _$e15791_
                     _$e15791_
                     (let ((_$e15794_ (gx#core-context-root__0)))
                       (if _$e15794_
                           _$e15794_
                           (make-struct-instance gx#root-context::t)))))))
          (if _ctx15788_
              (let ((_id15800_
                     (##structure-ref
                      _ctx15788_
                      '1
                      gx#expander-context::t
                      '#f))
                    (_path15801_
                     (##structure-ref _ctx15788_ '7 gx#module-context::t '#f))
                    (_in15802_
                     (map gx#core-module-export->import
                          (##structure-ref
                           _ctx15788_
                           '9
                           gx#module-context::t
                           '#f)))
                    (_e15803_
                     (##make-promise (lambda () (gx#eval-module _ctx15788_)))))
                (begin
                  (struct-instance-init!
                   _self15787_
                   _id15800_
                   (make-table 'test: eq?)
                   _super15797_
                   '#f
                   '#f
                   _path15801_
                   _in15802_
                   _e15803_)
                  (for-each
                   (lambda (_g1580415806_)
                     (gx#core-bind-weak-import!__% _g1580415806_ _self15787_))
                   _in15802_)))
              (struct-instance-init!
               _self15787_
               '#f
               (make-table 'test: eq?)
               _super15797_
               '#f
               '#f
               '#f
               '()
               '#f)))))
    (begin
      (define gx#prelude-context:::init!__0
        (lambda (_self15812_ _ctx15813_)
          (let ((_root15815_ '#f))
            (gx#prelude-context:::init!__%
             _self15812_
             _ctx15813_
             _root15815_))))
      (define gx#prelude-context:::init!
        (lambda _g16007_
          (let ((_g16006_ (length _g16007_)))
            (cond ((##fx= _g16006_ 2)
                   (apply gx#prelude-context:::init!__0 _g16007_))
                  ((##fx= _g16006_ 3)
                   (apply gx#prelude-context:::init!__% _g16007_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#prelude-context:::init!
                    _g16007_))))))))
  (bind-method! gx#prelude-context::t ':init! gx#prelude-context:::init! '#f)
  (define gx#import-export-expander-init!
    (lambda (_self15661_ _e15662_)
      (struct-instance-init!
       _self15661_
       _e15662_
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
    (lambda (_g1528715290_ _g1528815292_)
      (gx#core-apply-user-expander__%
       _g1528715290_
       _g1528815292_
       'apply-import-expander)))
  (bind-method!
   gx#import-expander::t
   'apply-import-expander
   gx#import-expander::apply-import-expander
   '#f)
  (define gx#export-expander::apply-export-expander
    (lambda (_g1515815161_ _g1515915163_)
      (gx#core-apply-user-expander__%
       _g1515815161_
       _g1515915163_
       'apply-export-expander)))
  (bind-method!
   gx#export-expander::t
   'apply-export-expander
   gx#export-expander::apply-export-expander
   '#f)
  (define gx#module-source-path
    (lambda (_ctx15029_)
      (let* ((_path15031_
              (##structure-ref _ctx15029_ '7 gx#module-context::t '#f))
             (_path15033_
              (if (pair? _path15031_) (last _path15031_) _path15031_)))
        (if (string? _path15033_) _path15033_ '#f))))
  (begin
    (define gx#import-module__%
      (lambda (_path15005_ _reload?15006_ _eval?15007_)
        (let ((_ctx15009_
               ((gx#current-expander-module-import)
                _path15005_
                _reload?15006_)))
          (begin
            (if (if _ctx15009_ _eval?15007_ '#f)
                (gx#eval-module _ctx15009_)
                '#!void)
            _ctx15009_))))
    (begin
      (define gx#import-module__0
        (lambda (_path15014_)
          (let* ((_reload?15016_ '#f) (_eval?15018_ '#f))
            (gx#import-module__% _path15014_ _reload?15016_ _eval?15018_))))
      (define gx#import-module__1
        (lambda (_path15020_ _reload?15021_)
          (let ((_eval?15023_ '#f))
            (gx#import-module__% _path15020_ _reload?15021_ _eval?15023_))))
      (define gx#import-module
        (lambda _g16009_
          (let ((_g16008_ (length _g16009_)))
            (cond ((##fx= _g16008_ 1) (apply gx#import-module__0 _g16009_))
                  ((##fx= _g16008_ 2) (apply gx#import-module__1 _g16009_))
                  ((##fx= _g16008_ 3) (apply gx#import-module__% _g16009_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#import-module
                    _g16009_))))))))
  (define gx#eval-module
    (lambda (_mod15002_) ((gx#current-expander-module-eval) _mod15002_)))
  (define gx#core-eval-module
    (lambda (_obj14987_)
      (letrec ((_force-e14989_
                (lambda (_getf14998_ _e14999_)
                  (call-with-parameters
                   (lambda () (force (_getf14998_ _e14999_)))
                   gx#current-expander-context
                   _e14999_
                   gx#current-expander-phi
                   '0))))
        (let _recur14991_ ((_e14993_ _obj14987_))
          (if (##structure-instance-of? _e14993_ 'gx#module-context::t)
              (begin
                (let ((_$e14995_ (gx#core-context-prelude__% _e14993_)))
                  (if _$e14995_ (_recur14991_ _$e14995_) '#!void))
                (_force-e14989_ gx#module-context-e _e14993_))
              (if (##structure-instance-of? _e14993_ 'gx#prelude-context::t)
                  (_force-e14989_ gx#prelude-context-e _e14993_)
                  (if (gx#stx-string? _e14993_)
                      (_recur14991_
                       (gx#import-module__0
                        (gx#core-resolve-module-path__0 _e14993_)))
                      (if (gx#core-library-module-path? _e14993_)
                          (_recur14991_
                           (gx#import-module__0
                            (gx#core-resolve-library-module-path _e14993_)))
                          (error '"Cannot eval module" _obj14987_)))))))))
  (begin
    (define gx#core-context-prelude__%
      (lambda (_ctx14970_)
        (let _lp14972_ ((_e14974_ _ctx14970_))
          (if (let ((_$e14976_
                     (##structure-instance-of?
                      _e14974_
                      'gx#module-context::t)))
                (if _$e14976_
                    _$e14976_
                    (##structure-instance-of? _e14974_ 'gx#local-context::t)))
              (_lp14972_ (##structure-ref _e14974_ '3 gx#phi-context::t '#f))
              (if (##structure-instance-of? _e14974_ 'gx#prelude-context::t)
                  _e14974_
                  '#f)))))
    (begin
      (define gx#core-context-prelude__0
        (lambda ()
          (let ((_ctx14983_ (gx#current-expander-context)))
            (gx#core-context-prelude__% _ctx14983_))))
      (define gx#core-context-prelude
        (lambda _g16011_
          (let ((_g16010_ (length _g16011_)))
            (cond ((##fx= _g16010_ 0)
                   (apply gx#core-context-prelude__0 _g16011_))
                  ((##fx= _g16010_ 1)
                   (apply gx#core-context-prelude__% _g16011_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-context-prelude
                    _g16011_))))))))
  (define gx#core-module->prelude-context
    (lambda (_ctx14960_)
      (let* ((_ht14962_ (gx#current-expander-module-registry))
             (_$e14964_ (table-ref _ht14962_ _ctx14960_ '#f)))
        (if _$e14964_
            (values _$e14964_)
            (let ((_pre14967_
                   (let ((__obj16002 (make-object gx#prelude-context::t '8)))
                     (begin
                       (gx#prelude-context:::init!__0 __obj16002 _ctx14960_)
                       __obj16002))))
              (begin
                (table-set! _ht14962_ _ctx14960_ _pre14967_)
                _pre14967_))))))
  (begin
    (define gx#core-import-module__%
      (lambda (_rpath14841_ _reload?14842_)
        (letrec ((_import-source14844_
                  (lambda (_path14929_)
                    (begin
                      (if (member _path14929_ (gx#current-expander-path))
                          (error '"Cyclic expansion" _path14929_)
                          '#!void)
                      (call-with-parameters
                       (lambda ()
                         (let ((_g16012_ (gx#core-read-module _path14929_)))
                           (begin
                             (let ((_g16013_
                                    (if (##values? _g16012_)
                                        (##vector-length _g16012_)
                                        1)))
                               (if (not (##fx= _g16013_ 4))
                                   (error "Context expects 4 values"
                                          _g16013_)))
                             (let ((_pre14932_ (##vector-ref _g16012_ 0))
                                   (_id14933_ (##vector-ref _g16012_ 1))
                                   (_ns14934_ (##vector-ref _g16012_ 2))
                                   (_body14935_ (##vector-ref _g16012_ 3)))
                               (let* ((_prelude14940_
                                       (if (##structure-instance-of?
                                            _pre14932_
                                            'gx#prelude-context::t)
                                           _pre14932_
                                           (if (##structure-instance-of?
                                                _pre14932_
                                                'gx#module-context::t)
                                               (gx#core-module->prelude-context
                                                _pre14932_)
                                               (if (string? _pre14932_)
                                                   (gx#core-module->prelude-context
                                                    (gx#core-import-module__0
                                                     _pre14932_))
                                                   (if (not _pre14932_)
                                                       (let ((_$e14937_
                                                              (gx#current-expander-module-prelude)))
                                                         (if _$e14937_
                                                             _$e14937_
                                                             (let ((__obj16003
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (make-object gx#prelude-context::t '8)))
                       (begin
                         (gx#prelude-context:::init!__0 __obj16003 '#f)
                         __obj16003))))
               (error '"Cannot import module; unknown prelude"
                      _rpath14841_
                      _pre14932_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_ctx14942_
                                       (let ((__obj16004
                                              (make-object
                                               gx#module-context::t
                                               '11)))
                                         (begin
                                           (gx#module-context:::init!
                                            __obj16004
                                            _id14933_
                                            _prelude14940_
                                            _ns14934_
                                            _path14929_)
                                           __obj16004)))
                                      (_body14944_
                                       (gx#core-expand-module-begin
                                        _body14935_
                                        _ctx14942_))
                                      (_body14946_
                                       (gx#core-quote-syntax__%
                                        (gx#core-cons '%#begin _body14944_)
                                        _path14929_
                                        _ctx14942_
                                        '())))
                                 (begin
                                   (##structure-set!
                                    _ctx14942_
                                    (##make-promise
                                     (lambda () (gx#eval-syntax* _body14946_)))
                                    '10
                                    gx#module-context::t
                                    '#f)
                                   (##structure-set!
                                    _ctx14942_
                                    _body14946_
                                    '11
                                    gx#module-context::t
                                    '#f)
                                   (table-set!
                                    (gx#current-expander-module-registry)
                                    _path14929_
                                    _ctx14942_)
                                   (table-set!
                                    (gx#current-expander-module-registry)
                                    _id14933_
                                    _ctx14942_)
                                   _ctx14942_))))))
                       gx#current-expander-context
                       (gx#core-context-root__0)
                       gx#current-expander-marks
                       '()
                       gx#current-expander-phi
                       '0
                       gx#current-expander-path
                       (cons _path14929_ (gx#current-expander-path))
                       gx#current-import-expander-phi
                       '#f
                       gx#current-export-expander-phi
                       '#f))))
                 (_import-submodule14845_
                  (lambda (_rpath14857_)
                    (let* ((_rpath1485814865_ _rpath14857_)
                           (_E1486014869_
                            (lambda ()
                              (error '"No clause matching" _rpath1485814865_)))
                           (_K1486114917_
                            (lambda (_refs14872_ _origin14873_)
                              (let ((_ctx14875_
                                     (if _origin14873_
                                         (gx#core-import-module__%
                                          _origin14873_
                                          _reload?14842_)
                                         (gx#current-expander-context))))
                                (let _lp14877_ ((_rest14879_ _refs14872_)
                                                (_ctx14880_ _ctx14875_))
                                  (let* ((_rest1488114889_ _rest14879_)
                                         (_else1488314897_
                                          (lambda () _ctx14880_))
                                         (_K1488514905_
                                          (lambda (_rest14900_ _id14901_)
                                            (let ((_bind14903_
                                                   (gx#resolve-identifier__%
                                                    _id14901_
                                                    '0
                                                    _ctx14880_)))
                                              (if (if (##structure-direct-instance-of?
                                                       _bind14903_
                                                       'gx#syntax-binding::t)
                                                      (##structure-instance-of?
                                                       (##direct-structure-ref
                                                        _bind14903_
                                                        '4
                                                        gx#syntax-binding::t
                                                        '#f)
                                                       'gx#module-context::t)
                                                      '#f)
                                                  (_lp14877_
                                                   _rest14900_
                                                   (##direct-structure-ref
                                                    _bind14903_
                                                    '4
                                                    gx#syntax-binding::t
                                                    '#f))
                                                  (error '"Cannot import submodule; not bound as a module"
                                                         _rpath14857_
                                                         _id14901_
                                                         _bind14903_))))))
                                    (if (##pair? _rest1488114889_)
                                        (let ((_hd1488614908_
                                               (##car _rest1488114889_))
                                              (_tl1488714910_
                                               (##cdr _rest1488114889_)))
                                          (let* ((_id14913_ _hd1488614908_)
                                                 (_rest14915_ _tl1488714910_))
                                            (_K1488514905_
                                             _rest14915_
                                             _id14913_)))
                                        (_else1488314897_))))))))
                      (if (##pair? _rpath1485814865_)
                          (let ((_hd1486214920_ (##car _rpath1485814865_))
                                (_tl1486314922_ (##cdr _rpath1485814865_)))
                            (let* ((_origin14925_ _hd1486214920_)
                                   (_refs14927_ _tl1486314922_))
                              (_K1486114917_ _refs14927_ _origin14925_)))
                          (_E1486014869_))))))
          (let ((_$e14847_
                 (if (not _reload?14842_)
                     (table-ref
                      (gx#current-expander-module-registry)
                      _rpath14841_
                      '#f)
                     '#f)))
            (if _$e14847_
                (values _$e14847_)
                (if (list? _rpath14841_)
                    (_import-submodule14845_ _rpath14841_)
                    (if (gx#core-library-module-path? _rpath14841_)
                        (let ((_ctx14850_
                               (gx#core-import-module__%
                                (gx#core-resolve-library-module-path
                                 _rpath14841_)
                                _reload?14842_)))
                          (begin
                            (table-set!
                             (gx#current-expander-module-registry)
                             _rpath14841_
                             _ctx14850_)
                            _ctx14850_))
                        (let* ((_npath14852_ (path-normalize _rpath14841_))
                               (_$e14854_
                                (if (not _reload?14842_)
                                    (table-ref
                                     (gx#current-expander-module-registry)
                                     _npath14852_
                                     '#f)
                                    '#f)))
                          (if _$e14854_
                              (values _$e14854_)
                              (_import-source14844_ _npath14852_))))))))))
    (begin
      (define gx#core-import-module__0
        (lambda (_rpath14953_)
          (let ((_reload?14955_ '#f))
            (gx#core-import-module__% _rpath14953_ _reload?14955_))))
      (define gx#core-import-module
        (lambda _g16015_
          (let ((_g16014_ (length _g16015_)))
            (cond ((##fx= _g16014_ 1)
                   (apply gx#core-import-module__0 _g16015_))
                  ((##fx= _g16014_ 2)
                   (apply gx#core-import-module__% _g16015_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-import-module
                    _g16015_))))))))
  (define gx#core-read-module
    (lambda (_path14835_)
      (with-exception-catcher
       (lambda (_exn14837_)
         (if (if (datum-parsing-exception? _exn14837_)
                 (eq? (datum-parsing-exception-filepos _exn14837_) '0)
                 '#f)
             (gx#core-read-module/lang _path14835_)
             (raise _exn14837_)))
       (lambda () (gx#core-read-module/sexp _path14835_)))))
  (define gx#core-read-module/sexp
    (lambda (_path14695_)
      (let _lp14697_ ((_body14699_ (read-syntax-from-file _path14695_))
                      (_pre14700_ '#f)
                      (_ns14701_ '#f)
                      (_pkg14702_ '#f))
        (let* ((_e1470314727_ _body14699_)
               (_E1471914749_
                (lambda ()
                  (let ((_g16016_
                         (if _pkg14702_
                             (values _pre14700_ _ns14701_ _pkg14702_)
                             (gx#core-read-module-package
                              _path14695_
                              _pre14700_
                              _ns14701_))))
                    (begin
                      (let ((_g16017_
                             (if (##values? _g16016_)
                                 (##vector-length _g16016_)
                                 1)))
                        (if (not (##fx= _g16017_ 3))
                            (error "Context expects 3 values" _g16017_)))
                      (let ((_pre14731_ (##vector-ref _g16016_ 0))
                            (_ns14732_ (##vector-ref _g16016_ 1))
                            (_pkg14733_ (##vector-ref _g16016_ 2)))
                        (let* ((_prelude14735_
                                (if (gx#core-bound-module-prelude? _pre14731_)
                                    (gx#syntax-local-e__0 _pre14731_)
                                    (if (gx#core-library-module-path?
                                         _pre14731_)
                                        (gx#core-resolve-library-module-path
                                         _pre14731_)
                                        (if (gx#stx-string? _pre14731_)
                                            (gx#core-resolve-module-path__%
                                             _pre14731_
                                             _path14695_)
                                            (gx#stx-e _pre14731_)))))
                               (_path-id14737_
                                (gx#core-module-path->namespace _path14695_))
                               (_pkg-id14739_
                                (if _pkg14733_
                                    (string-append
                                     _pkg14733_
                                     '"/"
                                     _path-id14737_)
                                    _path-id14737_))
                               (_module-id14741_
                                (string->symbol _pkg-id14739_))
                               (_module-ns14746_
                                (let ((_$e14743_ _ns14732_))
                                  (if _$e14743_ _$e14743_ _pkg-id14739_))))
                          (values _prelude14735_
                                  _module-id14741_
                                  _module-ns14746_
                                  _body14699_)))))))
               (_E1471214778_
                (lambda ()
                  (if (gx#stx-pair? _e1470314727_)
                      (let ((_e1472014753_ (gx#syntax-e _e1470314727_)))
                        (let ((_hd1472114756_ (##car _e1472014753_))
                              (_tl1472214758_ (##cdr _e1472014753_)))
                          (if (eq? (gx#stx-e _hd1472114756_) 'package:)
                              (if (gx#stx-pair? _tl1472214758_)
                                  (let ((_e1472314761_
                                         (gx#syntax-e _tl1472214758_)))
                                    (let ((_hd1472414764_
                                           (##car _e1472314761_))
                                          (_tl1472514766_
                                           (##cdr _e1472314761_)))
                                      (let* ((_pkg14769_ _hd1472414764_)
                                             (_rest14771_ _tl1472514766_))
                                        (if '#t
                                            (let ((_pkg14776_
                                                   (if (gx#identifier?
                                                        _pkg14769_)
                                                       (symbol->string
                                                        (gx#stx-e _pkg14769_))
                                                       (if (let ((_$e14773_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-string? _pkg14769_)))
                     (if _$e14773_ _$e14773_ (gx#stx-false? _pkg14769_)))
                   (gx#stx-e _pkg14769_)
                   (gx#raise-syntax-error
                    'import
                    '"Bad syntax; Illegal package name"
                    _pkg14769_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_lp14697_
                                               _rest14771_
                                               _pre14700_
                                               _ns14701_
                                               _pkg14776_))
                                            (_E1471914749_)))))
                                  (_E1471914749_))
                              (_E1471914749_))))
                      (_E1471914749_))))
               (_E1470514807_
                (lambda ()
                  (if (gx#stx-pair? _e1470314727_)
                      (let ((_e1471314782_ (gx#syntax-e _e1470314727_)))
                        (let ((_hd1471414785_ (##car _e1471314782_))
                              (_tl1471514787_ (##cdr _e1471314782_)))
                          (if (eq? (gx#stx-e _hd1471414785_) 'namespace:)
                              (if (gx#stx-pair? _tl1471514787_)
                                  (let ((_e1471614790_
                                         (gx#syntax-e _tl1471514787_)))
                                    (let ((_hd1471714793_
                                           (##car _e1471614790_))
                                          (_tl1471814795_
                                           (##cdr _e1471614790_)))
                                      (let* ((_ns14798_ _hd1471714793_)
                                             (_rest14800_ _tl1471814795_))
                                        (if '#t
                                            (let ((_ns14805_
                                                   (if (gx#identifier?
                                                        _ns14798_)
                                                       (symbol->string
                                                        (gx#stx-e _ns14798_))
                                                       (if (let ((_$e14802_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-string? _ns14798_)))
                     (if _$e14802_ _$e14802_ (gx#stx-false? _ns14798_)))
                   (gx#stx-e _ns14798_)
                   (gx#raise-syntax-error
                    'import
                    '"Bad syntax; illegal namespace"
                    _ns14798_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_lp14697_
                                               _rest14800_
                                               _pre14700_
                                               _ns14805_
                                               _pkg14702_))
                                            (_E1471214778_)))))
                                  (_E1471214778_))
                              (_E1471214778_))))
                      (_E1471214778_))))
               (_E1470414831_
                (lambda ()
                  (if (gx#stx-pair? _e1470314727_)
                      (let ((_e1470614811_ (gx#syntax-e _e1470314727_)))
                        (let ((_hd1470714814_ (##car _e1470614811_))
                              (_tl1470814816_ (##cdr _e1470614811_)))
                          (if (eq? (gx#stx-e _hd1470714814_) 'prelude:)
                              (if (gx#stx-pair? _tl1470814816_)
                                  (let ((_e1470914819_
                                         (gx#syntax-e _tl1470814816_)))
                                    (let ((_hd1471014822_
                                           (##car _e1470914819_))
                                          (_tl1471114824_
                                           (##cdr _e1470914819_)))
                                      (let* ((_prelude14827_ _hd1471014822_)
                                             (_rest14829_ _tl1471114824_))
                                        (if '#t
                                            (_lp14697_
                                             _rest14829_
                                             _prelude14827_
                                             _ns14701_
                                             _pkg14702_)
                                            (_E1470514807_)))))
                                  (_E1470514807_))
                              (_E1470514807_))))
                      (_E1470514807_)))))
          (_E1470414831_)))))
  (define gx#core-read-module/lang
    (lambda (_path14522_)
      (letrec ((_default-read-module-body14524_
                (lambda (_inp14687_)
                  (let _lp14689_ ((_body14691_ '()))
                    (let ((_next14693_ (read-syntax _inp14687_)))
                      (if (eof-object? _next14693_)
                          (reverse _body14691_)
                          (_lp14689_ (cons _next14693_ _body14691_)))))))
               (_read-body14525_
                (lambda (_inp14606_
                         _pre14607_
                         _ns14608_
                         _pkg14609_
                         _args14610_)
                  (let ((_g16018_
                         (if _pkg14609_
                             (values _pre14607_ _ns14608_ _pkg14609_)
                             (gx#core-read-module-package
                              _path14522_
                              _pre14607_
                              _ns14608_))))
                    (begin
                      (let ((_g16019_
                             (if (##values? _g16018_)
                                 (##vector-length _g16018_)
                                 1)))
                        (if (not (##fx= _g16019_ 3))
                            (error "Context expects 3 values" _g16019_)))
                      (let ((_pre14612_ (##vector-ref _g16018_ 0))
                            (_ns14613_ (##vector-ref _g16018_ 1))
                            (_pkg14614_ (##vector-ref _g16018_ 2)))
                        (let* ((_prelude14616_
                                (gx#import-module__0 _pre14612_))
                               (_read-module-body14670_
                                (let ((_$e14662_
                                       (find (lambda (_e1461714619_)
                                               (let* ((_g1462114631_
                                                       _e1461714619_)
                                                      (_else1462314639_
                                                       (lambda () '#f))
                                                      (_K1462514643_
                                                       (lambda () '#t)))
                                                 (if (##structure-direct-instance-of?
                                                      _g1462114631_
                                                      'gx#module-export::t)
                                                     (let* ((_e1462614646_
                                                             (##vector-ref
                                                              _g1462114631_
                                                              '1))
                                                            (_e1462714649_
                                                             (##vector-ref
                                                              _g1462114631_
                                                              '2))
                                                            (_e1462814652_
                                                             (##vector-ref
                                                              _g1462114631_
                                                              '3)))
                                                       (if (##eq? _e1462814652_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '1)
                   (let ((_e1462914655_ (##vector-ref _g1462114631_ '4)))
                     (if ((lambda (_g1465714659_)
                            (eq? _g1465714659_ 'read-module-body))
                          _e1462914655_)
                         (_K1462514643_)
                         (_else1462314639_)))
                   (_else1462314639_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_else1462314639_))))
                                             (##structure-ref
                                              _prelude14616_
                                              '9
                                              gx#module-context::t
                                              '#f))))
                                  (if _$e14662_
                                      ((lambda (_xport14665_)
                                         (let ((_proc14668_
                                                (with-exception-catcher
                                                 void
                                                 (lambda ()
                                                   (gx#eval-syntax__0
                                                    (##structure-ref
                                                     (gx#core-resolve-module-export
                                                      _xport14665_)
                                                     '1
                                                     gx#binding::t
                                                     '#f))))))
                                           (if (procedure? _proc14668_)
                                               _proc14668_
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Illegal #lang prelude; read-module-body is not a procedure"
                                                _path14522_
                                                _pre14612_
                                                _proc14668_))))
                                       _$e14662_)
                                      _default-read-module-body14524_)))
                               (_path-id14672_
                                (gx#core-module-path->namespace _path14522_))
                               (_pkg-id14674_
                                (if _pkg14614_
                                    (string-append
                                     _pkg14614_
                                     '"/"
                                     _path-id14672_)
                                    _path-id14672_))
                               (_module-id14676_
                                (string->symbol _pkg-id14674_))
                               (_module-ns14681_
                                (let ((_$e14678_ _ns14613_))
                                  (if _$e14678_ _$e14678_ _pkg-id14674_)))
                               (_body14684_
                                (call-with-parameters
                                 (lambda ()
                                   (_read-module-body14670_ _inp14606_))
                                 gx#current-module-reader-path
                                 _path14522_
                                 gx#current-module-reader-args
                                 _args14610_)))
                          (values _prelude14616_
                                  _module-id14676_
                                  _module-ns14681_
                                  _body14684_)))))))
               (_string-e14526_
                (lambda (_obj14603_ _what14604_)
                  (if (string? _obj14603_)
                      _obj14603_
                      (if (symbol? _obj14603_)
                          (symbol->string _obj14603_)
                          (gx#raise-syntax-error
                           '#f
                           (string-append '"Illegal module " _what14604_)
                           _path14522_
                           _obj14603_)))))
               (_read-lang-args14527_
                (lambda (_inp14558_ _args14559_)
                  (let* ((_args1456014568_ _args14559_)
                         (_else1456214576_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Illegal #lang arguments; missing prelude"
                             _path14522_)))
                         (_K1456414591_
                          (lambda (_args14579_ _prelude14580_)
                            (let* ((_pkg14582_ (pgetq 'package: _args14579_))
                                   (_pkg14584_
                                    (if _pkg14582_
                                        (_string-e14526_ _pkg14582_ '"package")
                                        '#f))
                                   (_ns14586_ (pgetq 'namespace: _args14579_))
                                   (_ns14588_
                                    (if _ns14586_
                                        (_string-e14526_
                                         _ns14586_
                                         '"namespace")
                                        '#f)))
                              (_read-body14525_
                               _inp14558_
                               _prelude14580_
                               _ns14588_
                               _pkg14584_
                               _args14579_)))))
                    (if (##pair? _args1456014568_)
                        (let ((_hd1456514594_ (##car _args1456014568_))
                              (_tl1456614596_ (##cdr _args1456014568_)))
                          (let* ((_prelude14599_ _hd1456514594_)
                                 (_args14601_ _tl1456614596_))
                            (_K1456414591_ _args14601_ _prelude14599_)))
                        (_else1456214576_)))))
               (_read-lang14528_
                (lambda (_inp14533_)
                  (let* ((_head14535_ (read-line _inp14533_))
                         (_$e14537_ (string-index _head14535_ '#\space)))
                    (if _$e14537_
                        ((lambda (_ix14540_)
                           (let ((_lang14542_
                                  (substring _head14535_ '0 _ix14540_)))
                             (if (equal? _lang14542_ '"#lang")
                                 (let* ((_rest14544_
                                         (substring
                                          _head14535_
                                          (fx+ _ix14540_ '1)
                                          (string-length _head14535_)))
                                        (_args14555_
                                         (with-exception-catcher
                                          (lambda (_g1454514547_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Illegal #lang arguments"
                                             _path14522_
                                             _g1454514547_))
                                          (lambda ()
                                            (call-with-input-string
                                             _rest14544_
                                             (lambda (_g1455014552_)
                                               (read-all
                                                _g1455014552_
                                                read)))))))
                                   (_read-lang-args14527_
                                    _inp14533_
                                    _args14555_))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Illegal module syntax"
                                  _path14522_))))
                         _$e14537_)
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module syntax"
                         _path14522_)))))
               (_read-e14529_
                (lambda (_inp14531_)
                  (if (eq? (peek-char _inp14531_) '#\#)
                      (_read-lang14528_ _inp14531_)
                      (gx#raise-syntax-error
                       '#f
                       '"Illegal module syntax"
                       _path14522_)))))
        (call-with-input-file _path14522_ _read-e14529_))))
  (define gx#core-read-module-package
    (lambda (_path14476_ _pre14477_ _ns14478_)
      (letrec ((_string-e14480_
                (lambda (_e14520_)
                  (if (symbol? _e14520_)
                      (symbol->string _e14520_)
                      (if (string? _e14520_)
                          _e14520_
                          (gx#raise-syntax-error
                           '#f
                           '"Malformed package info; unexpected datum"
                           _e14520_))))))
        (let _lp14482_ ((_dir14484_ (path-directory _path14476_))
                        (_pkg-path14485_ '()))
          (let ((_gerbil.pkg14487_ (path-expand '"gerbil.pkg" _dir14484_)))
            (if (file-exists? _gerbil.pkg14487_)
                (let ((_plist14489_
                       (gx#core-library-package-plist__% _dir14484_ '#t)))
                  (if (null? _plist14489_)
                      (let ((_pkg14491_
                             (if (not (null? _pkg-path14485_))
                                 (string-join _pkg-path14485_ '"/")
                                 '#f)))
                        (values _pre14477_ _ns14478_ _pkg14491_))
                      (if (list? _plist14489_)
                          (let* ((_root14493_ (pgetq 'package: _plist14489_))
                                 (_pkg14497_
                                  (let ((_pkg-path14495_
                                         (if _root14493_
                                             (cons (_string-e14480_
                                                    _root14493_)
                                                   _pkg-path14485_)
                                             _pkg-path14485_)))
                                    (if (not (null? _pkg-path14495_))
                                        (string-join _pkg-path14495_ '"/")
                                        '#f)))
                                 (_ns14504_
                                  (let ((_ns14502_
                                         (let ((_$e14499_ _ns14478_))
                                           (if _$e14499_
                                               _$e14499_
                                               (pgetq 'namespace:
                                                      _plist14489_)))))
                                    (if _ns14502_
                                        (_string-e14480_ _ns14502_)
                                        '#f)))
                                 (_pre14509_
                                  (let ((_$e14506_ _pre14477_))
                                    (if _$e14506_
                                        _$e14506_
                                        (pgetq 'prelude: _plist14489_)))))
                            (values _pre14509_ _ns14504_ _pkg14497_))
                          (gx#raise-syntax-error
                           '#f
                           '"Malformed package info; unexpected datum"
                           _plist14489_))))
                (let ((_dir*14512_
                       (path-strip-trailing-directory-separator _dir14484_)))
                  (if (let ((_$e14514_ (string-empty? _dir*14512_)))
                        (if _$e14514_
                            _$e14514_
                            (equal? _dir14484_ _dir*14512_)))
                      (values _pre14477_ _ns14478_ '#f)
                      (let ((_xpath14517_ (path-strip-directory _dir*14512_))
                            (_xdir14518_ (path-directory _dir*14512_)))
                        (_lp14482_
                         _xdir14518_
                         (cons _xpath14517_ _pkg-path14485_)))))))))))
  (define gx#core-module-path->namespace
    (lambda (_path14474_)
      (path-strip-extension (path-strip-directory _path14474_))))
  (define gx#core-module-path->id
    (lambda (_path14472_)
      (string->symbol (gx#core-module-path->namespace _path14472_))))
  (begin
    (define gx#core-resolve-module-path__%
      (lambda (_stx-path14451_ _rel14452_)
        (let* ((_path14454_ (gx#stx-e _stx-path14451_))
               (_path14456_
                (if (string-empty? (path-extension _path14454_))
                    (string-append _path14454_ '".ss")
                    _path14454_)))
          (gx#core-resolve-path__%
           _path14456_
           (let ((_$e14459_ (gx#stx-source _stx-path14451_)))
             (if _$e14459_ _$e14459_ _rel14452_))))))
    (begin
      (define gx#core-resolve-module-path__0
        (lambda (_stx-path14465_)
          (let ((_rel14467_ '#f))
            (gx#core-resolve-module-path__% _stx-path14465_ _rel14467_))))
      (define gx#core-resolve-module-path
        (lambda _g16021_
          (let ((_g16020_ (length _g16021_)))
            (cond ((##fx= _g16020_ 1)
                   (apply gx#core-resolve-module-path__0 _g16021_))
                  ((##fx= _g16020_ 2)
                   (apply gx#core-resolve-module-path__% _g16021_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-resolve-module-path
                    _g16021_))))))))
  (define gx#core-resolve-library-module-path
    (lambda (_libpath14378_)
      (let* ((_spath14380_ (symbol->string (gx#stx-e _libpath14378_)))
             (_spath14382_
              (substring _spath14380_ '1 (string-length _spath14380_)))
             (_ext14384_ (path-extension _spath14382_))
             (_ssi14386_
              (if (string-empty? _ext14384_)
                  (string-append _spath14382_ '".ssi")
                  (string-append (path-strip-extension _spath14382_) '".ssi")))
             (_src14388_
              (if (string-empty? _ext14384_)
                  (string-append _spath14382_ '".ss")
                  _spath14382_)))
        (let _lp14391_ ((_rest14393_
                         (gx#current-expander-module-library-path)))
          (let* ((_rest1439414403_ _rest14393_)
                 (_E1439714407_
                  (lambda () (error '"No clause matching" _rest1439414403_))))
            (let ((_K1439914438_
                   (lambda (_rest14418_ _dir14419_)
                     (letrec ((_resolve14421_
                               (lambda (_ssi14431_ _src14432_)
                                 (let ((_compiled-path14434_
                                        (path-expand _ssi14431_ _dir14419_)))
                                   (if (file-exists? _compiled-path14434_)
                                       (path-normalize _compiled-path14434_)
                                       (let ((_src-path14436_
                                              (path-expand
                                               _src14432_
                                               _dir14419_)))
                                         (if (file-exists? _src-path14436_)
                                             (path-normalize _src-path14436_)
                                             (_lp14391_ _rest14418_))))))))
                       (let ((_$e14423_
                              (gx#core-library-package-path-prefix
                               _dir14419_)))
                         (if _$e14423_
                             ((lambda (_prefix14426_)
                                (if (string-prefix? _spath14382_ _prefix14426_)
                                    (let ((_ssi14428_
                                           (substring
                                            _ssi14386_
                                            (string-length _prefix14426_)
                                            (string-length _ssi14386_)))
                                          (_src14429_
                                           (substring
                                            _src14388_
                                            (string-length _prefix14426_)
                                            (string-length _src14388_))))
                                      (_resolve14421_ _ssi14428_ _src14429_))
                                    (_lp14391_ _rest14418_)))
                              _$e14423_)
                             (_resolve14421_ _ssi14386_ _src14388_))))))
                  (_K1439814412_
                   (lambda ()
                     (gx#raise-syntax-error
                      '#f
                      '"Cannot find library module"
                      _libpath14378_))))
              (let ((_try-match1439614415_
                     (lambda ()
                       (if (##null? _rest1439414403_)
                           (_K1439814412_)
                           (_E1439714407_)))))
                (if (##pair? _rest1439414403_)
                    (let ((_tl1440114443_ (##cdr _rest1439414403_))
                          (_hd1440014441_ (##car _rest1439414403_)))
                      (let ((_dir14446_ _hd1440014441_)
                            (_rest14448_ _tl1440114443_))
                        (_K1439914438_ _rest14448_ _dir14446_)))
                    (_try-match1439614415_)))))))))
  (define gx#core-library-package-path-prefix
    (lambda (_dir14371_)
      (let ((_$e14373_
             (pgetq 'package: (gx#core-library-package-plist__0 _dir14371_))))
        (if _$e14373_
            ((lambda (_pkg14376_)
               (string-append (symbol->string _pkg14376_) '"/"))
             _$e14373_)
            '#f))))
  (begin
    (define gx#core-library-package-plist__%
      (lambda (_dir14343_ _exists?14344_)
        (let* ((_cache14346_ (gx#core-library-package-cache))
               (_$e14348_ (table-ref _cache14346_ _dir14343_ '#f)))
          (if _$e14348_
              (values _$e14348_)
              (let* ((_gerbil.pkg14351_ (path-expand '"gerbil.pkg" _dir14343_))
                     (_plist14358_
                      (if (let ((_$e14353_ _exists?14344_))
                            (if _$e14353_
                                _$e14353_
                                (file-exists? _gerbil.pkg14351_)))
                          (let ((_e14356_
                                 (call-with-input-file
                                  _gerbil.pkg14351_
                                  read)))
                            (if (eof-object? _e14356_)
                                '()
                                (if (list? _e14356_)
                                    _e14356_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Malformed package info; unexpected datum"
                                     _gerbil.pkg14351_
                                     _e14356_))))
                          '())))
                (begin
                  (table-set! _cache14346_ _dir14343_ _plist14358_)
                  _plist14358_))))))
    (begin
      (define gx#core-library-package-plist__0
        (lambda (_dir14364_)
          (let ((_exists?14366_ '#f))
            (gx#core-library-package-plist__% _dir14364_ _exists?14366_))))
      (define gx#core-library-package-plist
        (lambda _g16023_
          (let ((_g16022_ (length _g16023_)))
            (cond ((##fx= _g16022_ 1)
                   (apply gx#core-library-package-plist__0 _g16023_))
                  ((##fx= _g16022_ 2)
                   (apply gx#core-library-package-plist__% _g16023_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-library-package-plist
                    _g16023_))))))))
  (define gx#core-library-package-cache
    (lambda ()
      (let ((_$e14337_ (gx#current-expander-module-library-package-cache)))
        (if _$e14337_
            (values _$e14337_)
            (let ((_cache14340_ (make-table)))
              (begin
                (gx#current-expander-module-library-package-cache _cache14340_)
                _cache14340_))))))
  (define gx#core-library-module-path?
    (lambda (_stx14334_) (gx#core-special-module-path? _stx14334_ '#\:)))
  (define gx#core-special-module-path?
    (lambda (_stx14329_ _char14330_)
      (if (gx#identifier? _stx14329_)
          (if (interned-symbol? (gx#stx-e _stx14329_))
              (let ((_str14332_ (symbol->string (gx#stx-e _stx14329_))))
                (if (fx> (string-length _str14332_) '1)
                    (eq? (string-ref _str14332_ '0) _char14330_)
                    '#f))
              '#f)
          '#f)))
  (define gx#core-bound-prelude?
    (lambda (_stx14323_)
      (gx#core-bound-identifier?__%
       _stx14323_
       (lambda (_g1432414326_)
         (gx#expander-binding?__% _g1432414326_ gx#prelude-context?)))))
  (define gx#core-bound-module?
    (lambda (_stx14317_)
      (gx#core-bound-identifier?__%
       _stx14317_
       (lambda (_g1431814320_)
         (gx#expander-binding?__% _g1431814320_ gx#module-context?)))))
  (define gx#core-bound-module-prelude?
    (lambda (_stx14304_)
      (letrec ((_module-prelude?14306_
                (lambda (_e14312_)
                  (let ((_$e14314_
                         (##structure-instance-of?
                          _e14312_
                          'gx#module-context::t)))
                    (if _$e14314_
                        _$e14314_
                        (##structure-instance-of?
                         _e14312_
                         'gx#prelude-context::t))))))
        (gx#core-bound-identifier?__%
         _stx14304_
         (lambda (_g1430714309_)
           (gx#expander-binding?__% _g1430714309_ _module-prelude?14306_))))))
  (begin
    (define gx#core-bind-import!__%
      (lambda (_in14234_ _ctx14235_ _force-weak?14236_)
        (let* ((_in1423714246_ _in14234_)
               (_E1423914250_
                (lambda () (error '"No clause matching" _in1423714246_)))
               (_K1424014263_
                (lambda (_weak?14253_ _phi14254_ _key14255_ _source14256_)
                  (gx#core-bind!__%
                   _key14255_
                   (let ((_e14258_
                          (gx#core-resolve-module-export _source14256_)))
                     (##structure
                      gx#import-binding::t
                      (##structure-ref _e14258_ '1 gx#binding::t '#f)
                      _key14255_
                      _phi14254_
                      _e14258_
                      (##direct-structure-ref
                       _source14256_
                       '1
                       gx#module-export::t
                       '#f)
                      (let ((_$e14260_ _force-weak?14236_))
                        (if _$e14260_ _$e14260_ _weak?14253_))))
                   gx#core-context-rebind?
                   _phi14254_
                   _ctx14235_))))
          (if (##structure-direct-instance-of?
               _in1423714246_
               'gx#module-import::t)
              (let* ((_e1424114266_ (##vector-ref _in1423714246_ '1))
                     (_source14269_ _e1424114266_)
                     (_e1424214271_ (##vector-ref _in1423714246_ '2))
                     (_key14274_ _e1424214271_)
                     (_e1424314276_ (##vector-ref _in1423714246_ '3))
                     (_phi14279_ _e1424314276_)
                     (_e1424414281_ (##vector-ref _in1423714246_ '4))
                     (_weak?14284_ _e1424414281_))
                (_K1424014263_
                 _weak?14284_
                 _phi14279_
                 _key14274_
                 _source14269_))
              (_E1423914250_)))))
    (begin
      (define gx#core-bind-import!__0
        (lambda (_in14289_)
          (let* ((_ctx14291_ (gx#current-expander-context))
                 (_force-weak?14293_ '#f))
            (gx#core-bind-import!__%
             _in14289_
             _ctx14291_
             _force-weak?14293_))))
      (define gx#core-bind-import!__1
        (lambda (_in14295_ _ctx14296_)
          (let ((_force-weak?14298_ '#f))
            (gx#core-bind-import!__%
             _in14295_
             _ctx14296_
             _force-weak?14298_))))
      (define gx#core-bind-import!
        (lambda _g16025_
          (let ((_g16024_ (length _g16025_)))
            (cond ((##fx= _g16024_ 1) (apply gx#core-bind-import!__0 _g16025_))
                  ((##fx= _g16024_ 2) (apply gx#core-bind-import!__1 _g16025_))
                  ((##fx= _g16024_ 3) (apply gx#core-bind-import!__% _g16025_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-import!
                    _g16025_))))))))
  (begin
    (define gx#core-bind-weak-import!__%
      (lambda (_in14220_ _ctx14221_)
        (gx#core-bind-import!__% _in14220_ _ctx14221_ '#t)))
    (begin
      (define gx#core-bind-weak-import!__0
        (lambda (_in14226_)
          (let ((_ctx14228_ (gx#current-expander-context)))
            (gx#core-bind-weak-import!__% _in14226_ _ctx14228_))))
      (define gx#core-bind-weak-import!
        (lambda _g16027_
          (let ((_g16026_ (length _g16027_)))
            (cond ((##fx= _g16026_ 1)
                   (apply gx#core-bind-weak-import!__0 _g16027_))
                  ((##fx= _g16026_ 2)
                   (apply gx#core-bind-weak-import!__% _g16027_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-weak-import!
                    _g16027_))))))))
  (define gx#core-resolve-module-export
    (lambda (_out14111_)
      (letrec ((_subst14113_
                (lambda (_key14159_)
                  (let* ((_key1416014168_ _key14159_)
                         (_else1416214176_ (lambda () _key14159_))
                         (_K1416414207_
                          (lambda (_mark14179_ _id14180_)
                            (let* ((_mark1418114187_ _mark14179_)
                                   (_E1418314191_
                                    (lambda ()
                                      (error '"No clause matching"
                                             _mark1418114187_)))
                                   (_K1418414199_
                                    (lambda (_subst14194_)
                                      (let ((_$e14196_
                                             (if _subst14194_
                                                 (table-ref
                                                  _subst14194_
                                                  _id14180_
                                                  '#f)
                                                 '#f)))
                                        (if _$e14196_
                                            _$e14196_
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Illegal key; missing substitution"
                                             _key14159_))))))
                              (if (##structure-instance-of?
                                   _mark1418114187_
                                   'gx#expander-mark::t)
                                  (let* ((_e1418514202_
                                          (##vector-ref _mark1418114187_ '1))
                                         (_subst14205_ _e1418514202_))
                                    (_K1418414199_ _subst14205_))
                                  (_E1418314191_))))))
                    (if (##pair? _key1416014168_)
                        (let ((_hd1416514210_ (##car _key1416014168_))
                              (_tl1416614212_ (##cdr _key1416014168_)))
                          (let* ((_id14215_ _hd1416514210_)
                                 (_mark14217_ _tl1416614212_))
                            (_K1416414207_ _mark14217_ _id14215_)))
                        (_else1416214176_))))))
        (let* ((_out1411414124_ _out14111_)
               (_E1411614128_
                (lambda () (error '"No clause matching" _out1411414124_)))
               (_K1411714135_
                (lambda (_phi14131_ _key14132_ _ctx14133_)
                  (gx#core-context-resolve
                   (gx#core-context-shift _ctx14133_ _phi14131_)
                   (_subst14113_ _key14132_)))))
          (if (##structure-direct-instance-of?
               _out1411414124_
               'gx#module-export::t)
              (let* ((_e1411814138_ (##vector-ref _out1411414124_ '1))
                     (_ctx14141_ _e1411814138_)
                     (_e1411914143_ (##vector-ref _out1411414124_ '2))
                     (_key14146_ _e1411914143_)
                     (_e1412014148_ (##vector-ref _out1411414124_ '3))
                     (_phi14151_ _e1412014148_)
                     (_e1412114153_ (##vector-ref _out1411414124_ '4))
                     (_e1412214156_ (##vector-ref _out1411414124_ '5)))
                (_K1411714135_ _phi14151_ _key14146_ _ctx14141_))
              (_E1411614128_))))))
  (begin
    (define gx#core-module-export->import__%
      (lambda (_out14036_ _rename14037_ _dphi14038_)
        (let* ((_out1403914049_ _out14036_)
               (_E1404114053_
                (lambda () (error '"No clause matching" _out1403914049_)))
               (_K1404214065_
                (lambda (_weak?14056_
                         _name14057_
                         _phi14058_
                         _key14059_
                         _ctx14060_)
                  (##structure
                   gx#module-import::t
                   _out14036_
                   (let ((_$e14062_ _rename14037_))
                     (if _$e14062_ _$e14062_ _name14057_))
                   (fx+ _phi14058_ _dphi14038_)
                   _weak?14056_))))
          (if (##structure-direct-instance-of?
               _out1403914049_
               'gx#module-export::t)
              (let* ((_e1404314068_ (##vector-ref _out1403914049_ '1))
                     (_ctx14071_ _e1404314068_)
                     (_e1404414073_ (##vector-ref _out1403914049_ '2))
                     (_key14076_ _e1404414073_)
                     (_e1404514078_ (##vector-ref _out1403914049_ '3))
                     (_phi14081_ _e1404514078_)
                     (_e1404614083_ (##vector-ref _out1403914049_ '4))
                     (_name14086_ _e1404614083_)
                     (_e1404714088_ (##vector-ref _out1403914049_ '5))
                     (_weak?14091_ _e1404714088_))
                (_K1404214065_
                 _weak?14091_
                 _name14086_
                 _phi14081_
                 _key14076_
                 _ctx14071_))
              (_E1404114053_)))))
    (begin
      (define gx#core-module-export->import__0
        (lambda (_out14096_)
          (let* ((_rename14098_ '#f) (_dphi14100_ '0))
            (gx#core-module-export->import__%
             _out14096_
             _rename14098_
             _dphi14100_))))
      (define gx#core-module-export->import__1
        (lambda (_out14102_ _rename14103_)
          (let ((_dphi14105_ '0))
            (gx#core-module-export->import__%
             _out14102_
             _rename14103_
             _dphi14105_))))
      (define gx#core-module-export->import
        (lambda _g16029_
          (let ((_g16028_ (length _g16029_)))
            (cond ((##fx= _g16028_ 1)
                   (apply gx#core-module-export->import__0 _g16029_))
                  ((##fx= _g16028_ 2)
                   (apply gx#core-module-export->import__1 _g16029_))
                  ((##fx= _g16028_ 3)
                   (apply gx#core-module-export->import__% _g16029_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-module-export->import
                    _g16029_))))))))
  (define gx#core-expand-module%
    (lambda (_stx13964_)
      (letrec ((_make-context13966_
                (lambda (_id14017_)
                  (let* ((_super14019_ (gx#current-expander-context))
                         (_bind-id14021_ (gx#stx-e _id14017_))
                         (_mod-id14023_
                          (if (##structure-instance-of?
                               _super14019_
                               'gx#module-context::t)
                              (make-symbol
                               (##structure-ref
                                _super14019_
                                '1
                                gx#expander-context::t
                                '#f)
                               '"$"
                               _bind-id14021_)
                              _bind-id14021_))
                         (_ns14025_ (symbol->string _mod-id14023_))
                         (_path14032_
                          (if (##structure-instance-of?
                               _super14019_
                               'gx#module-context::t)
                              (let ((_path14027_
                                     (##structure-ref
                                      _super14019_
                                      '7
                                      gx#module-context::t
                                      '#f)))
                                (if (let ((_$e14029_ (pair? _path14027_)))
                                      (if _$e14029_
                                          _$e14029_
                                          (null? _path14027_)))
                                    (cons _bind-id14021_ _path14027_)
                                    (if (not _path14027_)
                                        _bind-id14021_
                                        (cons _bind-id14021_
                                              (cons _path14027_ '())))))
                              _bind-id14021_)))
                    (let ((__obj16005 (make-object gx#module-context::t '11)))
                      (begin
                        (gx#module-context:::init!
                         __obj16005
                         _mod-id14023_
                         _super14019_
                         _ns14025_
                         _path14032_)
                        __obj16005))))))
        (let* ((_e1396713977_ _stx13964_)
               (_E1396913981_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1396713977_)))
               (_E1396814013_
                (lambda ()
                  (if (gx#stx-pair? _e1396713977_)
                      (let ((_e1397013985_ (gx#syntax-e _e1396713977_)))
                        (let ((_hd1397113988_ (##car _e1397013985_))
                              (_tl1397213990_ (##cdr _e1397013985_)))
                          (if (gx#stx-pair? _tl1397213990_)
                              (let ((_e1397313993_
                                     (gx#syntax-e _tl1397213990_)))
                                (let ((_hd1397413996_ (##car _e1397313993_))
                                      (_tl1397513998_ (##cdr _e1397313993_)))
                                  (let* ((_id14001_ _hd1397413996_)
                                         (_body14003_ _tl1397513998_))
                                    (if (if (gx#identifier? _id14001_)
                                            (gx#stx-list? _body14003_)
                                            '#f)
                                        (let* ((_ctx14005_
                                                (_make-context13966_
                                                 _id14001_))
                                               (_body14007_
                                                (gx#core-expand-module-begin
                                                 _body14003_
                                                 _ctx14005_))
                                               (_body14009_
                                                (gx#core-quote-syntax__1
                                                 (gx#core-cons
                                                  '%#begin
                                                  _body14007_)
                                                 (gx#stx-source _stx13964_))))
                                          (begin
                                            (##structure-set!
                                             _ctx14005_
                                             (##make-promise
                                              (lambda ()
                                                (gx#eval-syntax* _body14009_)))
                                             '10
                                             gx#module-context::t
                                             '#f)
                                            (##structure-set!
                                             _ctx14005_
                                             _body14009_
                                             '11
                                             gx#module-context::t
                                             '#f)
                                            (gx#core-bind-syntax!__0
                                             _id14001_
                                             _ctx14005_)
                                            (gx#core-quote-syntax__1
                                             (gx#core-list
                                              '%#module
                                              (gx#core-quote-syntax__0
                                               _id14001_)
                                              _body14009_)
                                             (gx#stx-source _stx13964_))))
                                        (_E1396913981_)))))
                              (_E1396913981_))))
                      (_E1396913981_)))))
          (_E1396814013_)))))
  (define gx#core-expand-module-begin
    (lambda (_body13930_ _ctx13931_)
      (call-with-parameters
       (lambda ()
         (begin
           (gx#core-bind-feature!__1 'gerbil-module '#t)
           (let* ((_stx13934_
                   (gx#core-expand-head (cons '%%begin-module _body13930_)))
                  (_e1393513942_ _stx13934_)
                  (_E1393713946_
                   (lambda ()
                     (gx#raise-syntax-error
                      '#f
                      '"Illegal module body expansion"
                      _stx13934_)))
                  (_E1393613960_
                   (lambda ()
                     (if (gx#stx-pair? _e1393513942_)
                         (let ((_e1393813950_ (gx#syntax-e _e1393513942_)))
                           (let ((_hd1393913953_ (##car _e1393813950_))
                                 (_tl1394013955_ (##cdr _e1393813950_)))
                             (if (if (gx#identifier? _hd1393913953_)
                                     (gx#core-identifier=?
                                      _hd1393913953_
                                      '%#begin-module)
                                     '#f)
                                 (let ((_body13958_ _tl1394013955_))
                                   (if '#t
                                       (if (gx#sealed-syntax? _stx13934_)
                                           _body13958_
                                           (gx#core-expand-module-body
                                            _body13958_))
                                       (_E1393713946_)))
                                 (_E1393713946_))))
                         (_E1393713946_)))))
             (_E1393613960_))))
       gx#current-expander-context
       _ctx13931_
       gx#current-expander-phi
       '0)))
  (define gx#core-expand-module-body
    (lambda (_body13726_)
      (letrec ((_expand-special13728_
                (lambda (_hd13857_ _K13858_ _rest13859_ _r13860_)
                  (let* ((_e1386113878_ _hd13857_)
                         (_E1387313882_
                          (lambda ()
                            (_K13858_
                             _rest13859_
                             (cons (gx#core-expand-top _hd13857_) _r13860_))))
                         (_E1386313894_
                          (lambda ()
                            (if (gx#stx-pair? _e1386113878_)
                                (let ((_e1387413886_
                                       (gx#syntax-e _e1386113878_)))
                                  (let ((_hd1387513889_ (##car _e1387413886_))
                                        (_tl1387613891_ (##cdr _e1387413886_)))
                                    (if (if (gx#identifier? _hd1387513889_)
                                            (gx#core-identifier=?
                                             _hd1387513889_
                                             '%#export)
                                            '#f)
                                        (if '#t
                                            (_K13858_
                                             _rest13859_
                                             (cons _hd13857_ _r13860_))
                                            (_E1387313882_))
                                        (_E1387313882_))))
                                (_E1387313882_))))
                         (_E1386213926_
                          (lambda ()
                            (if (gx#stx-pair? _e1386113878_)
                                (let ((_e1386413898_
                                       (gx#syntax-e _e1386113878_)))
                                  (let ((_hd1386513901_ (##car _e1386413898_))
                                        (_tl1386613903_ (##cdr _e1386413898_)))
                                    (if (if (gx#identifier? _hd1386513901_)
                                            (gx#core-identifier=?
                                             _hd1386513901_
                                             '%#define-values)
                                            '#f)
                                        (if (gx#stx-pair? _tl1386613903_)
                                            (let ((_e1386713906_
                                                   (gx#syntax-e
                                                    _tl1386613903_)))
                                              (let ((_hd1386813909_
                                                     (##car _e1386713906_))
                                                    (_tl1386913911_
                                                     (##cdr _e1386713906_)))
                                                (let ((_hd-bind13914_
                                                       _hd1386813909_))
                                                  (if (gx#stx-pair?
                                                       _tl1386913911_)
                                                      (let ((_e1387013916_
                                                             (gx#syntax-e
                                                              _tl1386913911_)))
                                                        (let ((_hd1387113919_
                                                               (##car _e1387013916_))
                                                              (_tl1387213921_
                                                               (##cdr _e1387013916_)))
                                                          (let ((_expr13924_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1387113919_))
                    (if (gx#stx-null? _tl1387213921_)
                        (if (gx#core-bind-values? _hd-bind13914_)
                            (begin
                              (gx#core-bind-values!__0 _hd-bind13914_)
                              (_K13858_ _rest13859_ (cons _hd13857_ _r13860_)))
                            (_E1386313894_))
                        (_E1386313894_)))))
              (_E1386313894_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E1386313894_))
                                        (_E1386313894_))))
                                (_E1386313894_)))))
                    (_E1386213926_))))
               (_expand-body13729_
                (lambda (_rbody13731_)
                  (let _lp13733_ ((_rest13735_ _rbody13731_) (_body13736_ '()))
                    (let* ((_rest1373713745_ _rest13735_)
                           (_else1373913753_ (lambda () _body13736_))
                           (_K1374113845_
                            (lambda (_rest13756_ _hd13757_)
                              (let* ((_e1375813779_ _hd13757_)
                                     (_E1377413783_
                                      (lambda ()
                                        (_lp13733_
                                         _rest13756_
                                         (cons (gx#core-expand-expression
                                                _hd13757_)
                                               _body13736_))))
                                     (_E1377013797_
                                      (lambda ()
                                        (if (gx#stx-pair? _e1375813779_)
                                            (let ((_e1377513787_
                                                   (gx#syntax-e
                                                    _e1375813779_)))
                                              (let ((_hd1377613790_
                                                     (##car _e1377513787_))
                                                    (_tl1377713792_
                                                     (##cdr _e1377513787_)))
                                                (let ((_form13795_
                                                       _hd1377613790_))
                                                  (if (gx#core-bound-identifier?__%
                                                       _form13795_
                                                       gx#special-form-binding?)
                                                      (_lp13733_
                                                       _rest13756_
                                                       (cons _hd13757_
                                                             _body13736_))
                                                      (_E1377413783_)))))
                                            (_E1377413783_))))
                                     (_E1376013809_
                                      (lambda ()
                                        (if (gx#stx-pair? _e1375813779_)
                                            (let ((_e1377113801_
                                                   (gx#syntax-e
                                                    _e1375813779_)))
                                              (let ((_hd1377213804_
                                                     (##car _e1377113801_))
                                                    (_tl1377313806_
                                                     (##cdr _e1377113801_)))
                                                (if (if (gx#identifier?
                                                         _hd1377213804_)
                                                        (gx#core-identifier=?
                                                         _hd1377213804_
                                                         '%#export)
                                                        '#f)
                                                    (if '#t
                                                        (_lp13733_
                                                         _rest13756_
                                                         (cons (gx#core-expand-export%__0
                                                                _hd13757_)
                                                               _body13736_))
                                                        (_E1377013797_))
                                                    (_E1377013797_))))
                                            (_E1377013797_))))
                                     (_E1375913841_
                                      (lambda ()
                                        (if (gx#stx-pair? _e1375813779_)
                                            (let ((_e1376113813_
                                                   (gx#syntax-e
                                                    _e1375813779_)))
                                              (let ((_hd1376213816_
                                                     (##car _e1376113813_))
                                                    (_tl1376313818_
                                                     (##cdr _e1376113813_)))
                                                (if (if (gx#identifier?
                                                         _hd1376213816_)
                                                        (gx#core-identifier=?
                                                         _hd1376213816_
                                                         '%#define-values)
                                                        '#f)
                                                    (if (gx#stx-pair?
                                                         _tl1376313818_)
                                                        (let ((_e1376413821_
                                                               (gx#syntax-e
                                                                _tl1376313818_)))
                                                          (let ((_hd1376513824_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1376413821_))
                        (_tl1376613826_ (##cdr _e1376413821_)))
                    (let ((_hd-bind13829_ _hd1376513824_))
                      (if (gx#stx-pair? _tl1376613826_)
                          (let ((_e1376713831_ (gx#syntax-e _tl1376613826_)))
                            (let ((_hd1376813834_ (##car _e1376713831_))
                                  (_tl1376913836_ (##cdr _e1376713831_)))
                              (let ((_expr13839_ _hd1376813834_))
                                (if (gx#stx-null? _tl1376913836_)
                                    (if '#t
                                        (_lp13733_
                                         _rest13756_
                                         (cons (gx#core-quote-syntax__1
                                                (gx#core-list
                                                 '%#define-values
                                                 (gx#core-quote-bind-values
                                                  _hd-bind13829_)
                                                 (gx#core-expand-expression
                                                  _expr13839_))
                                                (gx#stx-source _hd13757_))
                                               _body13736_))
                                        (_E1376013809_))
                                    (_E1376013809_)))))
                          (_E1376013809_)))))
                (_E1376013809_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1376013809_))))
                                            (_E1376013809_)))))
                                (_E1375913841_)))))
                      (if (##pair? _rest1373713745_)
                          (let ((_hd1374213848_ (##car _rest1373713745_))
                                (_tl1374313850_ (##cdr _rest1373713745_)))
                            (let* ((_hd13853_ _hd1374213848_)
                                   (_rest13855_ _tl1374313850_))
                              (_K1374113845_ _rest13855_ _hd13853_)))
                          (_else1373913753_)))))))
        (_expand-body13729_
         (gx#core-expand-block__%
          (cons '%#begin-module _body13726_)
          _expand-special13728_
          '#f
          values)))))
  (define gx#core-expand-import/export
    (lambda (_stx13569_
             _expanded?13570_
             _method13571_
             _current-phi13572_
             _expand113573_)
      (letrec ((_K13575_
                (lambda (_rest13693_ _r13694_)
                  (let* ((_e1369513702_ _rest13693_)
                         (_E1369713706_ (lambda () _r13694_))
                         (_E1369613722_
                          (lambda ()
                            (if (gx#stx-pair? _e1369513702_)
                                (let ((_e1369813710_
                                       (gx#syntax-e _e1369513702_)))
                                  (let ((_hd1369913713_ (##car _e1369813710_))
                                        (_tl1370013715_ (##cdr _e1369813710_)))
                                    (let* ((_hd13718_ _hd1369913713_)
                                           (_rest13720_ _tl1370013715_))
                                      (if '#t
                                          (_step13576_
                                           _hd13718_
                                           _rest13720_
                                           _r13694_)
                                          (_E1369713706_)))))
                                (_E1369713706_)))))
                    (_E1369613722_))))
               (_step13576_
                (lambda (_hd13607_ _rest13608_ _r13609_)
                  (let* ((_e1361013628_ _hd13607_)
                         (_E1362313632_
                          (lambda ()
                            (if (_expanded?13570_ (gx#stx-e _hd13607_))
                                (_K13575_
                                 _rest13608_
                                 (cons (gx#stx-e _hd13607_) _r13609_))
                                (_expand113573_
                                 _hd13607_
                                 _K13575_
                                 _rest13608_
                                 _r13609_))))
                         (_E1361913648_
                          (lambda ()
                            (if (gx#stx-pair? _e1361013628_)
                                (let ((_e1362413636_
                                       (gx#syntax-e _e1361013628_)))
                                  (let ((_hd1362513639_ (##car _e1362413636_))
                                        (_tl1362613641_ (##cdr _e1362413636_)))
                                    (let* ((_macro13644_ _hd1362513639_)
                                           (_body13646_ _tl1362613641_))
                                      (if (gx#core-bound-identifier?__%
                                           _macro13644_
                                           gx#syntax-binding?)
                                          (_K13575_
                                           (cons (gx#core-apply-expander__%
                                                  (gx#syntax-local-e__0
                                                   _macro13644_)
                                                  _hd13607_
                                                  _method13571_)
                                                 _rest13608_)
                                           _r13609_)
                                          (_E1362313632_)))))
                                (_E1362313632_))))
                         (_E1361213662_
                          (lambda ()
                            (if (gx#stx-pair? _e1361013628_)
                                (let ((_e1362013652_
                                       (gx#syntax-e _e1361013628_)))
                                  (let ((_hd1362113655_ (##car _e1362013652_))
                                        (_tl1362213657_ (##cdr _e1362013652_)))
                                    (if (eq? (gx#stx-e _hd1362113655_) 'begin:)
                                        (let ((_body13660_ _tl1362213657_))
                                          (if '#t
                                              (_K13575_
                                               (gx#stx-foldr
                                                cons
                                                _rest13608_
                                                _body13660_)
                                               _r13609_)
                                              (_E1361913648_)))
                                        (_E1361913648_))))
                                (_E1361913648_))))
                         (_E1361113689_
                          (lambda ()
                            (if (gx#stx-pair? _e1361013628_)
                                (let ((_e1361313666_
                                       (gx#syntax-e _e1361013628_)))
                                  (let ((_hd1361413669_ (##car _e1361313666_))
                                        (_tl1361513671_ (##cdr _e1361313666_)))
                                    (if (eq? (gx#stx-e _hd1361413669_) 'phi:)
                                        (if (gx#stx-pair? _tl1361513671_)
                                            (let ((_e1361613674_
                                                   (gx#syntax-e
                                                    _tl1361513671_)))
                                              (let ((_hd1361713677_
                                                     (##car _e1361613674_))
                                                    (_tl1361813679_
                                                     (##cdr _e1361613674_)))
                                                (let* ((_dphi13682_
                                                        _hd1361713677_)
                                                       (_body13684_
                                                        _tl1361813679_))
                                                  (if (gx#stx-fixnum?
                                                       _dphi13682_)
                                                      (let ((_rbody13687_
                                                             (call-with-parameters
                                                              (lambda ()
                                                                (_K13575_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _body13684_
                         '()))
                      _current-phi13572_
                      (fx+ (gx#stx-e _dphi13682_) (_current-phi13572_)))))
                (_K13575_ _rest13608_ (foldr1 cons _r13609_ _rbody13687_)))
              (_E1361213662_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E1361213662_))
                                        (_E1361213662_))))
                                (_E1361213662_)))))
                    (_E1361113689_)))))
        (let* ((_e1357713584_ _stx13569_)
               (_E1357913588_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1357713584_)))
               (_E1357813603_
                (lambda ()
                  (if (gx#stx-pair? _e1357713584_)
                      (let ((_e1358013592_ (gx#syntax-e _e1357713584_)))
                        (let ((_hd1358113595_ (##car _e1358013592_))
                              (_tl1358213597_ (##cdr _e1358013592_)))
                          (let ((_body13600_ _tl1358213597_))
                            (if '#t
                                (if (_current-phi13572_)
                                    (_K13575_ _body13600_ '())
                                    (call-with-parameters
                                     (lambda () (_K13575_ _body13600_ '()))
                                     _current-phi13572_
                                     (gx#current-expander-phi)))
                                (_E1357913588_)))))
                      (_E1357913588_)))))
          (_E1357813603_)))))
  (begin
    (define gx#core-expand-import%__%
      (lambda (_stx13109_ _internal-expand?13110_)
        (letrec ((_expand113112_
                  (lambda (_hd13554_ _K13555_ _rest13556_ _r13557_)
                    (if (gx#core-bound-module? _hd13554_)
                        (_import113113_
                         (gx#syntax-local-e__0 _hd13554_)
                         _K13555_
                         _rest13556_
                         _r13557_)
                        (if (gx#core-library-module-path? _hd13554_)
                            (_import113113_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path _hd13554_))
                             _K13555_
                             _rest13556_
                             _r13557_)
                            (if (gx#stx-string? _hd13554_)
                                (_import113113_
                                 (gx#import-module__0
                                  (gx#core-resolve-module-path__%
                                   _hd13554_
                                   (gx#stx-source _stx13109_)))
                                 _K13555_
                                 _rest13556_
                                 _r13557_)
                                (if (##structure-instance-of?
                                     (gx#stx-e _hd13554_)
                                     'gx#module-context::t)
                                    (_K13555_
                                     _rest13556_
                                     (cons (gx#stx-e _hd13554_) _r13557_))
                                    (if (_import-spec?13114_ _hd13554_)
                                        (_import-spec13119_
                                         _hd13554_
                                         _K13555_
                                         _rest13556_
                                         _r13557_)
                                        (if (_import-submodule?13115_
                                             _hd13554_)
                                            (_import-submodule13117_
                                             _hd13554_
                                             _K13555_
                                             _rest13556_
                                             _r13557_)
                                            (if (_import-runtime?13116_
                                                 _hd13554_)
                                                (_import-runtime13118_
                                                 _hd13554_
                                                 _K13555_
                                                 _rest13556_
                                                 _r13557_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; illegal import"
                                                 _stx13109_
                                                 _hd13554_))))))))))
                 (_import113113_
                  (lambda (_ctx13543_ _K13544_ _rest13545_ _r13546_)
                    (let ((_dphi13548_
                           (fx- (gx#current-import-expander-phi)
                                (gx#current-expander-phi))))
                      (_K13544_
                       _rest13545_
                       (cons (##structure
                              gx#import-set::t
                              _ctx13543_
                              _dphi13548_
                              (map (lambda (_g1354913551_)
                                     (gx#core-module-export->import__%
                                      _g1354913551_
                                      '#f
                                      _dphi13548_))
                                   (##structure-ref
                                    _ctx13543_
                                    '9
                                    gx#module-context::t
                                    '#f)))
                             _r13546_)))))
                 (_import-spec?13114_
                  (lambda (_hd13500_)
                    (let* ((_e1350113511_ _hd13500_)
                           (_E1350313515_ (lambda () '#f))
                           (_E1350213539_
                            (lambda ()
                              (if (gx#stx-pair? _e1350113511_)
                                  (let ((_e1350413519_
                                         (gx#syntax-e _e1350113511_)))
                                    (let ((_hd1350513522_
                                           (##car _e1350413519_))
                                          (_tl1350613524_
                                           (##cdr _e1350413519_)))
                                      (if (eq? (gx#stx-e _hd1350513522_)
                                               'spec:)
                                          (if (gx#stx-pair? _tl1350613524_)
                                              (let ((_e1350713527_
                                                     (gx#syntax-e
                                                      _tl1350613524_)))
                                                (let ((_hd1350813530_
                                                       (##car _e1350713527_))
                                                      (_tl1350913532_
                                                       (##cdr _e1350713527_)))
                                                  (let* ((_spath13535_
                                                          _hd1350813530_)
                                                         (_specs13537_
                                                          _tl1350913532_))
                                                    (if '#t
                                                        '#t
                                                        (_E1350313515_)))))
                                              (_E1350313515_))
                                          (_E1350313515_))))
                                  (_E1350313515_)))))
                      (_E1350213539_))))
                 (_import-submodule?13115_
                  (lambda (_hd13457_)
                    (let* ((_e1345813468_ _hd13457_)
                           (_E1346013472_ (lambda () '#f))
                           (_E1345913496_
                            (lambda ()
                              (if (gx#stx-pair? _e1345813468_)
                                  (let ((_e1346113476_
                                         (gx#syntax-e _e1345813468_)))
                                    (let ((_hd1346213479_
                                           (##car _e1346113476_))
                                          (_tl1346313481_
                                           (##cdr _e1346113476_)))
                                      (if (eq? (gx#stx-e _hd1346213479_) 'in:)
                                          (if (gx#stx-pair? _tl1346313481_)
                                              (let ((_e1346413484_
                                                     (gx#syntax-e
                                                      _tl1346313481_)))
                                                (let ((_hd1346513487_
                                                       (##car _e1346413484_))
                                                      (_tl1346613489_
                                                       (##cdr _e1346413484_)))
                                                  (let* ((_top13492_
                                                          _hd1346513487_)
                                                         (_sub13494_
                                                          _tl1346613489_))
                                                    (if '#t
                                                        '#t
                                                        (_E1346013472_)))))
                                              (_E1346013472_))
                                          (_E1346013472_))))
                                  (_E1346013472_)))))
                      (_E1345913496_))))
                 (_import-runtime?13116_
                  (lambda (_hd13414_)
                    (let* ((_e1341513425_ _hd13414_)
                           (_E1341713429_ (lambda () '#f))
                           (_E1341613453_
                            (lambda ()
                              (if (gx#stx-pair? _e1341513425_)
                                  (let ((_e1341813433_
                                         (gx#syntax-e _e1341513425_)))
                                    (let ((_hd1341913436_
                                           (##car _e1341813433_))
                                          (_tl1342013438_
                                           (##cdr _e1341813433_)))
                                      (if (eq? (gx#stx-e _hd1341913436_)
                                               'runtime:)
                                          (if (gx#stx-pair? _tl1342013438_)
                                              (let ((_e1342113441_
                                                     (gx#syntax-e
                                                      _tl1342013438_)))
                                                (let ((_hd1342213444_
                                                       (##car _e1342113441_))
                                                      (_tl1342313446_
                                                       (##cdr _e1342113441_)))
                                                  (let* ((_top13449_
                                                          _hd1342213444_)
                                                         (_spath13451_
                                                          _tl1342313446_))
                                                    (if '#t
                                                        '#t
                                                        (_E1341713429_)))))
                                              (_E1341713429_))
                                          (_E1341713429_))))
                                  (_E1341713429_)))))
                      (_E1341613453_))))
                 (_import-submodule13117_
                  (lambda (_hd13381_ _K13382_ _rest13383_ _r13384_)
                    (let* ((_e1338513392_ _hd13381_)
                           (_E1338713396_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _e1338513392_)))
                           (_E1338613410_
                            (lambda ()
                              (if (gx#stx-pair? _e1338513392_)
                                  (let ((_e1338813400_
                                         (gx#syntax-e _e1338513392_)))
                                    (let ((_hd1338913403_
                                           (##car _e1338813400_))
                                          (_tl1339013405_
                                           (##cdr _e1338813400_)))
                                      (let ((_spath13408_ _tl1339013405_))
                                        (if '#t
                                            (_import113113_
                                             (_import-spec-source13120_
                                              _spath13408_)
                                             _K13382_
                                             _rest13383_
                                             _r13384_)
                                            (_E1338713396_)))))
                                  (_E1338713396_)))))
                      (_E1338613410_))))
                 (_import-runtime13118_
                  (lambda (_hd13348_ _K13349_ _rest13350_ _r13351_)
                    (let* ((_e1335213359_ _hd13348_)
                           (_E1335413363_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _e1335213359_)))
                           (_E1335313377_
                            (lambda ()
                              (if (gx#stx-pair? _e1335213359_)
                                  (let ((_e1335513367_
                                         (gx#syntax-e _e1335213359_)))
                                    (let ((_hd1335613370_
                                           (##car _e1335513367_))
                                          (_tl1335713372_
                                           (##cdr _e1335513367_)))
                                      (let ((_spath13375_ _tl1335713372_))
                                        (if '#t
                                            (_K13349_
                                             _rest13350_
                                             (cons (_import-spec-source13120_
                                                    _spath13375_)
                                                   _r13351_))
                                            (_E1335413363_)))))
                                  (_E1335413363_)))))
                      (_E1335313377_))))
                 (_import-spec13119_
                  (lambda (_hd13187_ _K13188_ _rest13189_ _r13190_)
                    (let* ((_e1319113208_ _hd13187_)
                           (_E1320013212_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _e1319113208_)))
                           (_E1319313322_
                            (lambda ()
                              (if (gx#stx-pair? _e1319113208_)
                                  (let ((_e1320113216_
                                         (gx#syntax-e _e1319113208_)))
                                    (let ((_hd1320213219_
                                           (##car _e1320113216_))
                                          (_tl1320313221_
                                           (##cdr _e1320113216_)))
                                      (if (gx#stx-pair? _tl1320313221_)
                                          (let ((_e1320413224_
                                                 (gx#syntax-e _tl1320313221_)))
                                            (let ((_hd1320513227_
                                                   (##car _e1320413224_))
                                                  (_tl1320613229_
                                                   (##cdr _e1320413224_)))
                                              (let* ((_path13232_
                                                      _hd1320513227_)
                                                     (_specs13234_
                                                      _tl1320613229_))
                                                (if '#t
                                                    (let ((_src-ctx13236_
                                                           (_import-spec-source13120_
                                                            _path13232_))
                                                          (_exports13237_
                                                           (make-table))
                                                          (_specs13238_
                                                           (gx#syntax->list
                                                            _specs13234_)))
                                                      (begin
                                                        (for-each
                                                         (lambda (_out13240_)
                                                           (table-set!
                                                            _exports13237_
                                                            (cons (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _out13240_
                           '3
                           gx#module-export::t
                           '#f)
                          (##direct-structure-ref
                           _out13240_
                           '4
                           gx#module-export::t
                           '#f))
                    _out13240_))
                 (##structure-ref _src-ctx13236_ '9 gx#module-context::t '#f))
                (_K13188_
                 _rest13189_
                 (foldl1 (lambda (_spec13242_ _r13243_)
                           (let* ((_e1324413260_ _spec13242_)
                                  (_E1324613264_
                                   (lambda ()
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _e1324413260_)))
                                  (_E1324513318_
                                   (lambda ()
                                     (if (gx#stx-pair? _e1324413260_)
                                         (let ((_e1324713268_
                                                (gx#syntax-e _e1324413260_)))
                                           (let ((_hd1324813271_
                                                  (##car _e1324713268_))
                                                 (_tl1324913273_
                                                  (##cdr _e1324713268_)))
                                             (let ((_phi13276_ _hd1324813271_))
                                               (if (gx#stx-pair?
                                                    _tl1324913273_)
                                                   (let ((_e1325013278_
                                                          (gx#syntax-e
                                                           _tl1324913273_)))
                                                     (let ((_hd1325113281_
                                                            (##car _e1325013278_))
                                                           (_tl1325213283_
                                                            (##cdr _e1325013278_)))
                                                       (let ((_name13286_
                                                              _hd1325113281_))
                                                         (if (gx#stx-pair?
                                                              _tl1325213283_)
                                                             (let ((_e1325313288_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _tl1325213283_)))
                       (let ((_hd1325413291_ (##car _e1325313288_))
                             (_tl1325513293_ (##cdr _e1325313288_)))
                         (let ((_src-phi13296_ _hd1325413291_))
                           (if (gx#stx-pair? _tl1325513293_)
                               (let ((_e1325613298_
                                      (gx#syntax-e _tl1325513293_)))
                                 (let ((_hd1325713301_ (##car _e1325613298_))
                                       (_tl1325813303_ (##cdr _e1325613298_)))
                                   (let ((_src-name13306_ _hd1325713301_))
                                     (if (gx#stx-null? _tl1325813303_)
                                         (if (if (gx#stx-fixnum?
                                                  _src-phi13296_)
                                                 (if (gx#identifier?
                                                      _src-name13306_)
                                                     (if (gx#stx-fixnum?
                                                          _phi13276_)
                                                         (gx#identifier?
                                                          _name13286_)
                                                         '#f)
                                                     '#f)
                                                 '#f)
                                             (let ((_src-phi13308_
                                                    (gx#stx-e _src-phi13296_))
                                                   (_src-name13309_
                                                    (gx#core-identifier-key
                                                     _src-name13306_))
                                                   (_phi13310_
                                                    (gx#stx-e _phi13276_))
                                                   (_name13311_
                                                    (gx#core-identifier-key
                                                     _name13286_)))
                                               (let ((_$e13313_
                                                      (table-ref
                                                       _exports13237_
                                                       (cons _src-phi13308_
                                                             _src-name13309_)
                                                       '#f)))
                                                 (if _$e13313_
                                                     ((lambda (_out13316_)
                                                        (cons (gx#core-module-export->import__%
                                                               _out13316_
                                                               _name13311_
                                                               (fx- _phi13310_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _src-phi13308_))
                      _r13243_))
              _$e13313_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; no matching export"
                                                      _stx13109_
                                                      _hd13187_))))
                                             (_E1324613264_))
                                         (_E1324613264_)))))
                               (_E1324613264_)))))
                     (_E1324613264_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1324613264_)))))
                                         (_E1324613264_)))))
                             (_E1324513318_)))
                         _r13190_
                         _specs13238_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1320013212_)))))
                                          (_E1320013212_))))
                                  (_E1320013212_))))
                           (_E1319213344_
                            (lambda ()
                              (if (gx#stx-pair? _e1319113208_)
                                  (let ((_e1319413326_
                                         (gx#syntax-e _e1319113208_)))
                                    (let ((_hd1319513329_
                                           (##car _e1319413326_))
                                          (_tl1319613331_
                                           (##cdr _e1319413326_)))
                                      (if (gx#stx-pair? _tl1319613331_)
                                          (let ((_e1319713334_
                                                 (gx#syntax-e _tl1319613331_)))
                                            (let ((_hd1319813337_
                                                   (##car _e1319713334_))
                                                  (_tl1319913339_
                                                   (##cdr _e1319713334_)))
                                              (let ((_path13342_
                                                     _hd1319813337_))
                                                (if (gx#stx-null?
                                                     _tl1319913339_)
                                                    (if '#t
                                                        (_K13188_
                                                         _rest13189_
                                                         (cons (_import-spec-source13120_
                                                                _path13342_)
                                                               _r13190_))
                                                        (_E1319313322_))
                                                    (_E1319313322_)))))
                                          (_E1319313322_))))
                                  (_E1319313322_)))))
                      (_E1319213344_))))
                 (_import-spec-source13120_
                  (lambda (_spath13185_)
                    (gx#core-import-nested-module _spath13185_ _stx13109_)))
                 (_import!13121_
                  (lambda (_rbody13134_)
                    (letrec* ((_current-ctx13136_
                               (gx#current-expander-context))
                              (_deps13137_ (make-table 'test: eq?))
                              (_bind!13138_
                               (lambda (_hd13183_)
                                 (gx#core-bind-import!__1
                                  _hd13183_
                                  _current-ctx13136_))))
                      (let _lp13140_ ((_rest13142_ _rbody13134_)
                                      (_body13143_ '()))
                        (let* ((_rest1314413152_ _rest13142_)
                               (_else1314613162_
                                (lambda ()
                                  (begin
                                    (if (##structure-instance-of?
                                         _current-ctx13136_
                                         'gx#module-context::t)
                                        (##structure-set!
                                         _current-ctx13136_
                                         (foldl1 cons
                                                 (##structure-ref
                                                  _current-ctx13136_
                                                  '8
                                                  gx#module-context::t
                                                  '#f)
                                                 _body13143_)
                                         '8
                                         gx#module-context::t
                                         '#f)
                                        '#!void)
                                    (table-for-each
                                     (lambda (_ctx13160_ _g16030_)
                                       (gx#eval-module _ctx13160_))
                                     _deps13137_)
                                    _body13143_)))
                               (_K1314813171_
                                (lambda (_rest13165_ _hd13166_)
                                  (begin
                                    (if (##structure-direct-instance-of?
                                         _hd13166_
                                         'gx#module-import::t)
                                        (begin
                                          (_bind!13138_ _hd13166_)
                                          (if (if (fxpositive?
                                                   (##direct-structure-ref
                                                    _hd13166_
                                                    '3
                                                    gx#module-import::t
                                                    '#f))
                                                  (fxzero? (##direct-structure-ref
                                                            (##direct-structure-ref
                                                             _hd13166_
                                                             '1
                                                             gx#module-import::t
                                                             '#f)
                                                            '3
                                                            gx#module-export::t
                                                            '#f))
                                                  '#f)
                                              (table-set!
                                               _deps13137_
                                               (##direct-structure-ref
                                                (##direct-structure-ref
                                                 _hd13166_
                                                 '1
                                                 gx#module-import::t
                                                 '#f)
                                                '1
                                                gx#module-export::t
                                                '#f)
                                               '#t)
                                              '#!void))
                                        (if (##structure-direct-instance-of?
                                             _hd13166_
                                             'gx#import-set::t)
                                            (begin
                                              (for-each
                                               _bind!13138_
                                               (##direct-structure-ref
                                                _hd13166_
                                                '3
                                                gx#import-set::t
                                                '#f))
                                              (if (fxpositive?
                                                   (##direct-structure-ref
                                                    _hd13166_
                                                    '2
                                                    gx#import-set::t
                                                    '#f))
                                                  (table-set!
                                                   _deps13137_
                                                   (##direct-structure-ref
                                                    _hd13166_
                                                    '1
                                                    gx#import-set::t
                                                    '#f)
                                                   '#t)
                                                  '#!void))
                                            (let ((_$e13168_
                                                   (##structure-instance-of?
                                                    _hd13166_
                                                    'gx#module-context::t)))
                                              (if _$e13168_
                                                  _$e13168_
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Unexpected import"
                                                   _stx13109_
                                                   _hd13166_)))))
                                    (_lp13140_
                                     _rest13165_
                                     (cons _hd13166_ _body13143_))))))
                          (if (##pair? _rest1314413152_)
                              (let ((_hd1314913174_ (##car _rest1314413152_))
                                    (_tl1315013176_ (##cdr _rest1314413152_)))
                                (let* ((_hd13179_ _hd1314913174_)
                                       (_rest13181_ _tl1315013176_))
                                  (_K1314813171_ _rest13181_ _hd13179_)))
                              (_else1314613162_)))))))
                 (_expanded-import?13122_
                  (lambda (_e13126_)
                    (let ((_$e13128_
                           (##structure-direct-instance-of?
                            _e13126_
                            'gx#import-set::t)))
                      (if _$e13128_
                          _$e13128_
                          (let ((_$e13131_
                                 (##structure-direct-instance-of?
                                  _e13126_
                                  'gx#module-import::t)))
                            (if _$e13131_
                                _$e13131_
                                (##structure-instance-of?
                                 _e13126_
                                 'gx#module-context::t))))))))
          (let ((_rbody13124_
                 (gx#core-expand-import/export
                  _stx13109_
                  _expanded-import?13122_
                  'apply-import-expander
                  gx#current-import-expander-phi
                  _expand113112_)))
            (if _internal-expand?13110_
                (reverse _rbody13124_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#import (_import!13121_ _rbody13124_))
                 (gx#stx-source _stx13109_)))))))
    (begin
      (define gx#core-expand-import%__0
        (lambda (_stx13562_)
          (let ((_internal-expand?13564_ '#f))
            (gx#core-expand-import%__% _stx13562_ _internal-expand?13564_))))
      (define gx#core-expand-import%
        (lambda _g16032_
          (let ((_g16031_ (length _g16032_)))
            (cond ((##fx= _g16031_ 1)
                   (apply gx#core-expand-import%__0 _g16032_))
                  ((##fx= _g16031_ 2)
                   (apply gx#core-expand-import%__% _g16032_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-expand-import%
                    _g16032_))))))))
  (define gx#core-import-nested-module
    (lambda (_spath13036_ _where13037_)
      (let* ((_e1303813045_ _spath13036_)
             (_E1304013049_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1303813045_)))
             (_E1303913104_
              (lambda ()
                (if (gx#stx-pair? _e1303813045_)
                    (let ((_e1304113053_ (gx#syntax-e _e1303813045_)))
                      (let ((_hd1304213056_ (##car _e1304113053_))
                            (_tl1304313058_ (##cdr _e1304113053_)))
                        (let* ((_origin13061_ _hd1304213056_)
                               (_sub13063_ _tl1304313058_))
                          (if '#t
                              (let ((_origin-ctx13065_
                                     (if (gx#stx-false? _origin13061_)
                                         (gx#current-expander-context)
                                         (gx#import-module__0 _origin13061_))))
                                (let _lp13067_ ((_rest13069_ _sub13063_)
                                                (_ctx13070_ _origin-ctx13065_))
                                  (let* ((_e1307113078_ _rest13069_)
                                         (_E1307313082_ (lambda () _ctx13070_))
                                         (_E1307213100_
                                          (lambda ()
                                            (if (gx#stx-pair? _e1307113078_)
                                                (let ((_e1307413086_
                                                       (gx#syntax-e
                                                        _e1307113078_)))
                                                  (let ((_hd1307513089_
                                                         (##car _e1307413086_))
                                                        (_tl1307613091_
                                                         (##cdr _e1307413086_)))
                                                    (let* ((_id13094_
                                                            _hd1307513089_)
                                                           (_rest13096_
                                                            _tl1307613091_))
                                                      (if '#t
                                                          (let ((_bind13098_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#resolve-identifier__% _id13094_ '0 _ctx13070_)))
                    (begin
                      (if (if (##structure-direct-instance-of?
                               _bind13098_
                               'gx#syntax-binding::t)
                              (##structure-instance-of?
                               (##direct-structure-ref
                                _bind13098_
                                '4
                                gx#syntax-binding::t
                                '#f)
                               'gx#module-context::t)
                              '#f)
                          '#!void
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; not bound as module"
                           _where13037_
                           _spath13036_
                           _id13094_))
                      (_lp13067_
                       _rest13096_
                       (##direct-structure-ref
                        _bind13098_
                        '4
                        gx#syntax-binding::t
                        '#f))))
                  (_E1307313082_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E1307313082_)))))
                                    (_E1307213100_))))
                              (_E1304013049_)))))
                    (_E1304013049_)))))
        (_E1303913104_))))
  (define gx#core-expand-import-source
    (lambda (_hd13034_)
      (gx#core-expand-import%__%
       (cons 'import-internal% (cons _hd13034_ '()))
       '#t)))
  (begin
    (define gx#core-expand-export%__%
      (lambda (_stx12545_ _internal-expand?12546_)
        (letrec* ((_make-export__1597015971_
                   (lambda (_bind12982_ _phi12983_ _ctx12984_ _name12985_)
                     (let* ((_key12987_
                             (##structure-ref
                              _bind12982_
                              '2
                              gx#binding::t
                              '#f))
                            (_export-key12989_
                             (if _name12985_
                                 (gx#core-identifier-key _name12985_)
                                 _key12987_)))
                       (##structure
                        gx#module-export::t
                        _ctx12984_
                        _key12987_
                        _phi12983_
                        _export-key12989_
                        (let ((_$e12992_
                               (##structure-instance-of?
                                _bind12982_
                                'gx#extern-binding::t)))
                          (if _$e12992_
                              _$e12992_
                              (##structure-direct-instance-of?
                               _bind12982_
                               'gx#import-binding::t)))))))
                  (_make-export__0__1597215975_
                   (lambda (_bind12998_)
                     (let* ((_phi13000_ (gx#current-export-expander-phi))
                            (_ctx13002_ (gx#current-expander-context))
                            (_name13004_ '#f))
                       (_make-export__1597015971_
                        _bind12998_
                        _phi13000_
                        _ctx13002_
                        _name13004_))))
                  (_make-export__1__1597315976_
                   (lambda (_bind13006_ _phi13007_)
                     (let* ((_ctx13009_ (gx#current-expander-context))
                            (_name13011_ '#f))
                       (_make-export__1597015971_
                        _bind13006_
                        _phi13007_
                        _ctx13009_
                        _name13011_))))
                  (_make-export__2__1597415977_
                   (lambda (_bind13013_ _phi13014_ _ctx13015_)
                     (let ((_name13017_ '#f))
                       (_make-export__1597015971_
                        _bind13013_
                        _phi13014_
                        _ctx13015_
                        _name13017_))))
                  (_make-export12548_
                   (lambda _g16034_
                     (let ((_g16033_ (length _g16034_)))
                       (cond ((##fx= _g16033_ 1)
                              (apply _make-export__0__1597215975_ _g16034_))
                             ((##fx= _g16033_ 2)
                              (apply _make-export__1__1597315976_ _g16034_))
                             ((##fx= _g16033_ 3)
                              (apply _make-export__2__1597415977_ _g16034_))
                             ((##fx= _g16033_ 4)
                              (apply _make-export__1597015971_ _g16034_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g16034_))))))
                  (_expand112549_
                   (lambda (_hd12695_ _K12696_ _rest12697_ _r12698_)
                     (let* ((_e1269912731_ _hd12695_)
                            (_E1272612735_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal export"
                                _stx12545_
                                _hd12695_)))
                            (_E1271612814_
                             (lambda ()
                               (if (gx#stx-pair? _e1269912731_)
                                   (let ((_e1272712739_
                                          (gx#syntax-e _e1269912731_)))
                                     (let ((_hd1272812742_
                                            (##car _e1272712739_))
                                           (_tl1272912744_
                                            (##cdr _e1272712739_)))
                                       (if (eq? (gx#stx-e _hd1272812742_)
                                                'import:)
                                           (let ((_in12747_ _tl1272912744_))
                                             (if (gx#stx-list? _in12747_)
                                                 (let _lp12749_ ((_in-rest12751_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _in12747_)
                         (_r12752_ _r12698_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_e1275312760_
                                                           _in-rest12751_)
                                                          (_E1275512764_
                                                           (lambda ()
                                                             (_K12696_
                                                              _rest12697_
                                                              _r12752_)))
                                                          (_E1275412810_
                                                           (lambda ()
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _e1275312760_)
                         (let ((_e1275612768_ (gx#syntax-e _e1275312760_)))
                           (let ((_hd1275712771_ (##car _e1275612768_))
                                 (_tl1275812773_ (##cdr _e1275612768_)))
                             (let* ((_hd12776_ _hd1275712771_)
                                    (_in-rest12778_ _tl1275812773_))
                               (if '#t
                                   (let ((_src12808_
                                          (if (gx#core-bound-module? _hd12776_)
                                              (gx#syntax-local-e__0 _hd12776_)
                                              (if (gx#core-library-module-path?
                                                   _hd12776_)
                                                  (gx#import-module__0
                                                   (gx#core-resolve-library-module-path
                                                    _hd12776_))
                                                  (if (gx#stx-string?
                                                       _hd12776_)
                                                      (gx#import-module__0
                                                       (gx#core-resolve-module-path__%
                                                        _hd12776_
                                                        (gx#stx-source
                                                         _stx12545_)))
                                                      (let* ((_e1277912786_
                                                              _hd12776_)
                                                             (_E1278112790_
                                                              (lambda ()
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; illegal re-export"
                         _stx12545_
                         _hd12776_)))
                     (_E1278012804_
                      (lambda ()
                        (if (gx#stx-pair? _e1277912786_)
                            (let ((_e1278212794_ (gx#syntax-e _e1277912786_)))
                              (let ((_hd1278312797_ (##car _e1278212794_))
                                    (_tl1278412799_ (##cdr _e1278212794_)))
                                (if (eq? (gx#stx-e _hd1278312797_) 'in:)
                                    (let ((_spath12802_ _tl1278412799_))
                                      (if '#t
                                          (gx#core-import-nested-module
                                           _spath12802_
                                           _stx12545_)
                                          (_E1278112790_)))
                                    (_E1278112790_))))
                            (_E1278112790_)))))
                (_E1278012804_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_lp12749_
                                      _in-rest12778_
                                      (_export-imports12550_
                                       _src12808_
                                       _r12752_)))
                                   (_E1275512764_)))))
                         (_E1275512764_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E1275412810_)))
                                                 (_E1272612735_)))
                                           (_E1272612735_))))
                                   (_E1272612735_))))
                            (_E1270312853_
                             (lambda ()
                               (if (gx#stx-pair? _e1269912731_)
                                   (let ((_e1271712818_
                                          (gx#syntax-e _e1269912731_)))
                                     (let ((_hd1271812821_
                                            (##car _e1271712818_))
                                           (_tl1271912823_
                                            (##cdr _e1271712818_)))
                                       (if (eq? (gx#stx-e _hd1271812821_)
                                                'rename:)
                                           (if (gx#stx-pair? _tl1271912823_)
                                               (let ((_e1272012826_
                                                      (gx#syntax-e
                                                       _tl1271912823_)))
                                                 (let ((_hd1272112829_
                                                        (##car _e1272012826_))
                                                       (_tl1272212831_
                                                        (##cdr _e1272012826_)))
                                                   (let ((_id12834_
                                                          _hd1272112829_))
                                                     (if (gx#stx-pair?
                                                          _tl1272212831_)
                                                         (let ((_e1272312836_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1272212831_)))
                   (let ((_hd1272412839_ (##car _e1272312836_))
                         (_tl1272512841_ (##cdr _e1272312836_)))
                     (let ((_name12844_ _hd1272412839_))
                       (if (gx#stx-null? _tl1272512841_)
                           (if '#t
                               (let* ((_phi12846_
                                       (gx#current-export-expander-phi))
                                      (_$e12848_
                                       (gx#core-resolve-identifier__1
                                        _id12834_
                                        _phi12846_)))
                                 (if _$e12848_
                                     ((lambda (_bind12851_)
                                        (_K12696_
                                         _rest12697_
                                         (cons (_make-export__1597015971_
                                                _bind12851_
                                                _phi12846_
                                                (gx#current-expander-context)
                                                _name12844_)
                                               _r12698_)))
                                      _$e12848_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Reference to unbound identifier"
                                      _stx12545_
                                      _hd12695_
                                      _id12834_)))
                               (_E1271612814_))
                           (_E1271612814_)))))
                 (_E1271612814_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E1271612814_))
                                           (_E1271612814_))))
                                   (_E1271612814_))))
                            (_E1270212902_
                             (lambda ()
                               (if (gx#stx-pair? _e1269912731_)
                                   (let ((_e1270412857_
                                          (gx#syntax-e _e1269912731_)))
                                     (let ((_hd1270512860_
                                            (##car _e1270412857_))
                                           (_tl1270612862_
                                            (##cdr _e1270412857_)))
                                       (if (eq? (gx#stx-e _hd1270512860_)
                                                'spec:)
                                           (if (gx#stx-pair? _tl1270612862_)
                                               (let ((_e1270712865_
                                                      (gx#syntax-e
                                                       _tl1270612862_)))
                                                 (let ((_hd1270812868_
                                                        (##car _e1270712865_))
                                                       (_tl1270912870_
                                                        (##cdr _e1270712865_)))
                                                   (let ((_phi12873_
                                                          _hd1270812868_))
                                                     (if (gx#stx-pair?
                                                          _tl1270912870_)
                                                         (let ((_e1271012875_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1270912870_)))
                   (let ((_hd1271112878_ (##car _e1271012875_))
                         (_tl1271212880_ (##cdr _e1271012875_)))
                     (let ((_id12883_ _hd1271112878_))
                       (if (gx#stx-pair? _tl1271212880_)
                           (let ((_e1271312885_ (gx#syntax-e _tl1271212880_)))
                             (let ((_hd1271412888_ (##car _e1271312885_))
                                   (_tl1271512890_ (##cdr _e1271312885_)))
                               (let ((_name12893_ _hd1271412888_))
                                 (if (gx#stx-null? _tl1271512890_)
                                     (if (if (gx#stx-fixnum? _phi12873_)
                                             (if (gx#identifier? _id12883_)
                                                 (gx#identifier? _name12893_)
                                                 '#f)
                                             '#f)
                                         (let* ((_phi12895_
                                                 (gx#stx-e _phi12873_))
                                                (_$e12897_
                                                 (gx#core-resolve-identifier__1
                                                  _id12883_
                                                  _phi12895_)))
                                           (if _$e12897_
                                               ((lambda (_bind12900_)
                                                  (_K12696_
                                                   _rest12697_
                                                   (cons (_make-export__1597015971_
                                                          _bind12900_
                                                          _phi12895_
                                                          (gx#current-expander-context)
                                                          _name12893_)
                                                         _r12698_)))
                                                _$e12897_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Reference to unbound identifier"
                                                _stx12545_
                                                _hd12695_
                                                _id12883_)))
                                         (_E1270312853_))
                                     (_E1270312853_)))))
                           (_E1270312853_)))))
                 (_E1270312853_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E1270312853_))
                                           (_E1270312853_))))
                                   (_E1270312853_))))
                            (_E1270112913_
                             (lambda ()
                               (let ((_id12906_ _e1269912731_))
                                 (if (gx#identifier? _id12906_)
                                     (let ((_$e12908_
                                            (gx#core-resolve-identifier__1
                                             _id12906_
                                             (gx#current-export-expander-phi))))
                                       (if _$e12908_
                                           ((lambda (_bind12911_)
                                              (_K12696_
                                               _rest12697_
                                               (cons (_make-export__0__1597215975_
                                                      _bind12911_)
                                                     _r12698_)))
                                            _$e12908_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Reference to unbound identifier"
                                            _stx12545_
                                            _hd12695_)))
                                     (_E1270212902_)))))
                            (_E1270012977_
                             (lambda ()
                               (if (eq? (gx#stx-e _e1269912731_) '#t)
                                   (if '#t
                                       (let* ((_current-ctx12917_
                                               (gx#current-expander-context))
                                              (_current-phi12919_
                                               (gx#current-export-expander-phi))
                                              (_phi-ctx12921_
                                               (gx#core-context-shift
                                                _current-ctx12917_
                                                _current-phi12919_))
                                              (_phi-bind12923_
                                               (table->list
                                                (##structure-ref
                                                 _phi-ctx12921_
                                                 '2
                                                 gx#expander-context::t
                                                 '#f))))
                                         (let _lp12926_ ((_bind-rest12928_
                                                          _phi-bind12923_)
                                                         (_set12929_ '()))
                                           (let* ((_bind-rest1293012940_
                                                   _bind-rest12928_)
                                                  (_else1293212948_
                                                   (lambda ()
                                                     (_K12696_
                                                      _rest12697_
                                                      (cons (##structure
                                                             gx#export-set::t
                                                             '#f
                                                             _current-phi12919_
                                                             _set12929_)
                                                            _r12698_))))
                                                  (_K1293412958_
                                                   (lambda (_bind-rest12951_
                                                            _bind12952_
                                                            _key12953_)
                                                     (if (let ((_$e12955_
                                                                (##structure-direct-instance-of?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _bind12952_
                         'gx#import-binding::t)))
                   (if _$e12955_
                       _$e12955_
                       (gx#private-feature-binding? _bind12952_)))
                 (_lp12926_ _bind-rest12951_ _set12929_)
                 (_lp12926_
                  _bind-rest12951_
                  (cons (_make-export__2__1597415977_
                         _bind12952_
                         _current-phi12919_
                         _current-ctx12917_)
                        _set12929_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (##pair? _bind-rest1293012940_)
                                                 (let ((_hd1293512961_
                                                        (##car _bind-rest1293012940_))
                                                       (_tl1293612963_
                                                        (##cdr _bind-rest1293012940_)))
                                                   (if (##pair? _hd1293512961_)
                                                       (let ((_hd1293712966_
                                                              (##car _hd1293512961_))
                                                             (_tl1293812968_
                                                              (##cdr _hd1293512961_)))
                                                         (let* ((_key12971_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1293712966_)
                        (_bind12973_ _tl1293812968_)
                        (_bind-rest12975_ _tl1293612963_))
                   (_K1293412958_ _bind-rest12975_ _bind12973_ _key12971_)))
               (_else1293212948_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_else1293212948_)))))
                                       (_E1270112913_))
                                   (_E1270112913_)))))
                       (_E1270012977_))))
                  (_export-imports12550_
                   (lambda (_src12571_ _r12572_)
                     (letrec* ((_current-ctx12574_
                                (gx#current-expander-context))
                               (_current-phi12575_
                                (gx#current-export-expander-phi))
                               (_import->export12576_
                                (lambda (_in12657_)
                                  (let* ((_in1265812666_ _in12657_)
                                         (_E1266012670_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _in1265812666_)))
                                         (_K1266112677_
                                          (lambda (_phi12673_
                                                   _key12674_
                                                   _out12675_)
                                            (##structure
                                             gx#module-export::t
                                             _current-ctx12574_
                                             _key12674_
                                             _phi12673_
                                             _key12674_
                                             '#t))))
                                    (if (##structure-direct-instance-of?
                                         _in1265812666_
                                         'gx#module-import::t)
                                        (let* ((_e1266212680_
                                                (##vector-ref
                                                 _in1265812666_
                                                 '1))
                                               (_out12683_ _e1266212680_)
                                               (_e1266312685_
                                                (##vector-ref
                                                 _in1265812666_
                                                 '2))
                                               (_key12688_ _e1266312685_)
                                               (_e1266412690_
                                                (##vector-ref
                                                 _in1265812666_
                                                 '3))
                                               (_phi12693_ _e1266412690_))
                                          (_K1266112677_
                                           _phi12693_
                                           _key12688_
                                           _out12683_))
                                        (_E1266012670_)))))
                               (_fold-e12577_
                                (lambda (_in12579_ _r12580_)
                                  (let* ((_in1258112595_ _in12579_)
                                         (_else1258412603_
                                          (lambda () _r12580_)))
                                    (let ((_K1259012639_
                                           (lambda (_phi12635_
                                                    _key12636_
                                                    _out12637_)
                                             (if (if (fx= _phi12635_
                                                          _current-phi12575_)
                                                     (eq? _src12571_
                                                          (##direct-structure-ref
                                                           _out12637_
                                                           '1
                                                           gx#module-export::t
                                                           '#f))
                                                     '#f)
                                                 (cons (_import->export12576_
                                                        _in12579_)
                                                       _r12580_)
                                                 _r12580_)))
                                          (_K1258612614_
                                           (lambda (_imports12607_
                                                    _phi12608_
                                                    _ctx12609_)
                                             (if (if (fx= _phi12608_
                                                          _current-phi12575_)
                                                     (eq? _src12571_
                                                          _ctx12609_)
                                                     '#f)
                                                 (foldl1 (lambda (_in12611_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _r12612_)
                   (cons (_import->export12576_ _in12611_) _r12612_))
                 _r12580_
                 _imports12607_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _r12580_))))
                                      (let ((_try-match1258312632_
                                             (lambda ()
                                               (if (##structure-direct-instance-of?
                                                    _in1258112595_
                                                    'gx#import-set::t)
                                                   (let* ((_e1258712617_
                                                           (##vector-ref
                                                            _in1258112595_
                                                            '1))
                                                          (_e1258812622_
                                                           (##vector-ref
                                                            _in1258112595_
                                                            '2))
                                                          (_e1258912627_
                                                           (##vector-ref
                                                            _in1258112595_
                                                            '3)))
                                                     (let ((_ctx12620_
                                                            _e1258712617_)
                                                           (_phi12625_
                                                            _e1258812622_)
                                                           (_imports12630_
                                                            _e1258912627_))
                                                       (_K1258612614_
                                                        _imports12630_
                                                        _phi12625_
                                                        _ctx12620_)))
                                                   (_else1258412603_)))))
                                        (if (##structure-direct-instance-of?
                                             _in1258112595_
                                             'gx#module-import::t)
                                            (let* ((_e1259112642_
                                                    (##vector-ref
                                                     _in1258112595_
                                                     '1))
                                                   (_e1259212647_
                                                    (##vector-ref
                                                     _in1258112595_
                                                     '2))
                                                   (_e1259312652_
                                                    (##vector-ref
                                                     _in1258112595_
                                                     '3)))
                                              (let ((_out12645_ _e1259112642_)
                                                    (_key12650_ _e1259212647_)
                                                    (_phi12655_ _e1259312652_))
                                                (_K1259012639_
                                                 _phi12655_
                                                 _key12650_
                                                 _out12645_)))
                                            (_try-match1258312632_))))))))
                       (cons (##structure
                              gx#export-set::t
                              _src12571_
                              _current-phi12575_
                              (foldl1 _fold-e12577_
                                      '()
                                      (##structure-ref
                                       _current-ctx12574_
                                       '8
                                       gx#module-context::t
                                       '#f)))
                             _r12572_))))
                  (_export!12551_
                   (lambda (_rbody12561_)
                     (letrec* ((_current-ctx12563_
                                (gx#current-expander-context))
                               (_fold-e12564_
                                (lambda (_out12568_ _r12569_)
                                  (if (##structure-direct-instance-of?
                                       _out12568_
                                       'gx#module-export::t)
                                      (cons _out12568_ _r12569_)
                                      (if (##structure-direct-instance-of?
                                           _out12568_
                                           'gx#export-set::t)
                                          (foldl1 cons
                                                  _r12569_
                                                  (##direct-structure-ref
                                                   _out12568_
                                                   '3
                                                   gx#export-set::t
                                                   '#f))
                                          _r12569_)))))
                       (let ((_body12566_ (reverse _rbody12561_)))
                         (begin
                           (##structure-set!
                            _current-ctx12563_
                            (foldl1 _fold-e12564_
                                    (##structure-ref
                                     _current-ctx12563_
                                     '9
                                     gx#module-context::t
                                     '#f)
                                    _body12566_)
                            '9
                            gx#module-context::t
                            '#f)
                           _body12566_)))))
                  (_expanded-export?12552_
                   (lambda (_e12556_)
                     (let ((_$e12558_
                            (##structure-direct-instance-of?
                             _e12556_
                             'gx#module-export::t)))
                       (if _$e12558_
                           _$e12558_
                           (##structure-direct-instance-of?
                            _e12556_
                            'gx#export-set::t))))))
          (let ((_rbody12554_
                 (gx#core-expand-import/export
                  _stx12545_
                  _expanded-export?12552_
                  'apply-export-expander
                  gx#current-export-expander-phi
                  _expand112549_)))
            (if _internal-expand?12546_
                (reverse _rbody12554_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#export (_export!12551_ _rbody12554_))
                 (gx#stx-source _stx12545_)))))))
    (begin
      (define gx#core-expand-export%__0
        (lambda (_stx13027_)
          (let ((_internal-expand?13029_ '#f))
            (gx#core-expand-export%__% _stx13027_ _internal-expand?13029_))))
      (define gx#core-expand-export%
        (lambda _g16036_
          (let ((_g16035_ (length _g16036_)))
            (cond ((##fx= _g16035_ 1)
                   (apply gx#core-expand-export%__0 _g16036_))
                  ((##fx= _g16035_ 2)
                   (apply gx#core-expand-export%__% _g16036_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-expand-export%
                    _g16036_))))))))
  (define gx#core-expand-export-source
    (lambda (_hd12542_)
      (gx#core-expand-export%__%
       (cons 'export-macro% (cons _hd12542_ '()))
       '#t)))
  (define gx#core-expand-provide%
    (lambda (_stx12512_)
      (let* ((_e1251312520_ _stx12512_)
             (_E1251512524_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1251312520_)))
             (_E1251412538_
              (lambda ()
                (if (gx#stx-pair? _e1251312520_)
                    (let ((_e1251612528_ (gx#syntax-e _e1251312520_)))
                      (let ((_hd1251712531_ (##car _e1251612528_))
                            (_tl1251812533_ (##cdr _e1251612528_)))
                        (let ((_body12536_ _tl1251812533_))
                          (if (gx#identifier-list? _body12536_)
                              (begin
                                (gx#stx-for-each1
                                 gx#core-bind-feature!
                                 _body12536_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#provide
                                  (gx#stx-map1
                                   gx#core-quote-syntax
                                   _body12536_))
                                 (gx#stx-source _stx12512_)))
                              (_E1251512524_)))))
                    (_E1251512524_)))))
        (_E1251412538_))))
  (begin
    (define gx#core-bind-feature!__%
      (lambda (_id12478_ _private?12479_ _phi12480_ _ctx12481_)
        (gx#core-bind-syntax!__%
         _id12478_
         ((if _private?12479_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _id12478_))
         _private?12479_
         _phi12480_
         _ctx12481_)))
    (begin
      (define gx#core-bind-feature!__0
        (lambda (_id12486_)
          (let* ((_private?12488_ '#f)
                 (_phi12490_ (gx#current-expander-phi))
                 (_ctx12492_ (gx#current-expander-context)))
            (gx#core-bind-feature!__%
             _id12486_
             _private?12488_
             _phi12490_
             _ctx12492_))))
      (define gx#core-bind-feature!__1
        (lambda (_id12494_ _private?12495_)
          (let* ((_phi12497_ (gx#current-expander-phi))
                 (_ctx12499_ (gx#current-expander-context)))
            (gx#core-bind-feature!__%
             _id12494_
             _private?12495_
             _phi12497_
             _ctx12499_))))
      (define gx#core-bind-feature!__2
        (lambda (_id12501_ _private?12502_ _phi12503_)
          (let ((_ctx12505_ (gx#current-expander-context)))
            (gx#core-bind-feature!__%
             _id12501_
             _private?12502_
             _phi12503_
             _ctx12505_))))
      (define gx#core-bind-feature!
        (lambda _g16038_
          (let ((_g16037_ (length _g16038_)))
            (cond ((##fx= _g16037_ 1)
                   (apply gx#core-bind-feature!__0 _g16038_))
                  ((##fx= _g16037_ 2)
                   (apply gx#core-bind-feature!__1 _g16038_))
                  ((##fx= _g16037_ 3)
                   (apply gx#core-bind-feature!__2 _g16038_))
                  ((##fx= _g16037_ 4)
                   (apply gx#core-bind-feature!__% _g16038_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-feature!
                    _g16038_)))))))))
