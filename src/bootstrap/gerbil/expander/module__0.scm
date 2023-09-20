(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/module::timestamp 1695199285)
  (begin
    (declare (not safe))
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
      (lambda _$args16023_
        (apply make-struct-instance gx#module-import::t _$args16023_)))
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
    (define gx#&module-import-source
      (make-struct-field-unchecked-accessor gx#module-import::t '0))
    (define gx#&module-import-name
      (make-struct-field-unchecked-accessor gx#module-import::t '1))
    (define gx#&module-import-phi
      (make-struct-field-unchecked-accessor gx#module-import::t '2))
    (define gx#&module-import-weak?
      (make-struct-field-unchecked-accessor gx#module-import::t '3))
    (define gx#&module-import-source-set!
      (make-struct-field-unchecked-mutator gx#module-import::t '0))
    (define gx#&module-import-name-set!
      (make-struct-field-unchecked-mutator gx#module-import::t '1))
    (define gx#&module-import-phi-set!
      (make-struct-field-unchecked-mutator gx#module-import::t '2))
    (define gx#&module-import-weak?-set!
      (make-struct-field-unchecked-mutator gx#module-import::t '3))
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
      (lambda _$args16020_
        (apply make-struct-instance gx#module-export::t _$args16020_)))
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
    (define gx#&module-export-context
      (make-struct-field-unchecked-accessor gx#module-export::t '0))
    (define gx#&module-export-key
      (make-struct-field-unchecked-accessor gx#module-export::t '1))
    (define gx#&module-export-phi
      (make-struct-field-unchecked-accessor gx#module-export::t '2))
    (define gx#&module-export-name
      (make-struct-field-unchecked-accessor gx#module-export::t '3))
    (define gx#&module-export-weak?
      (make-struct-field-unchecked-accessor gx#module-export::t '4))
    (define gx#&module-export-context-set!
      (make-struct-field-unchecked-mutator gx#module-export::t '0))
    (define gx#&module-export-key-set!
      (make-struct-field-unchecked-mutator gx#module-export::t '1))
    (define gx#&module-export-phi-set!
      (make-struct-field-unchecked-mutator gx#module-export::t '2))
    (define gx#&module-export-name-set!
      (make-struct-field-unchecked-mutator gx#module-export::t '3))
    (define gx#&module-export-weak?-set!
      (make-struct-field-unchecked-mutator gx#module-export::t '4))
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
      (lambda _$args16017_
        (apply make-struct-instance gx#import-set::t _$args16017_)))
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
    (define gx#&import-set-source
      (make-struct-field-unchecked-accessor gx#import-set::t '0))
    (define gx#&import-set-phi
      (make-struct-field-unchecked-accessor gx#import-set::t '1))
    (define gx#&import-set-imports
      (make-struct-field-unchecked-accessor gx#import-set::t '2))
    (define gx#&import-set-source-set!
      (make-struct-field-unchecked-mutator gx#import-set::t '0))
    (define gx#&import-set-phi-set!
      (make-struct-field-unchecked-mutator gx#import-set::t '1))
    (define gx#&import-set-imports-set!
      (make-struct-field-unchecked-mutator gx#import-set::t '2))
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
      (lambda _$args16014_
        (apply make-struct-instance gx#export-set::t _$args16014_)))
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
    (define gx#&export-set-source
      (make-struct-field-unchecked-accessor gx#export-set::t '0))
    (define gx#&export-set-phi
      (make-struct-field-unchecked-accessor gx#export-set::t '1))
    (define gx#&export-set-exports
      (make-struct-field-unchecked-accessor gx#export-set::t '2))
    (define gx#&export-set-source-set!
      (make-struct-field-unchecked-mutator gx#export-set::t '0))
    (define gx#&export-set-phi-set!
      (make-struct-field-unchecked-mutator gx#export-set::t '1))
    (define gx#&export-set-exports-set!
      (make-struct-field-unchecked-mutator gx#export-set::t '2))
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
      (lambda _$args16011_
        (apply make-class-instance gx#import-expander::t _$args16011_)))
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
      (lambda _$args16008_
        (apply make-class-instance gx#export-expander::t _$args16008_)))
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
      (lambda _$args16005_
        (apply make-class-instance gx#import-export-expander::t _$args16005_)))
    (define gx#current-import-expander-phi (make-parameter '#f))
    (define gx#current-export-expander-phi (make-parameter '#f))
    (define gx#current-module-reader-path (make-parameter '#f))
    (define gx#current-module-reader-args (make-parameter '#f))
    (define gx#source-file-settings '(char-encoding: UTF-8 eol-encoding: lf))
    (define gx#call-with-input-source-file
      (lambda (_path16002_ _fun16003_)
        (call-with-input-file
         (cons 'path: (cons _path16002_ gx#source-file-settings))
         _fun16003_)))
    (define gx#module-context:::init!
      (lambda (_self15996_ _id15997_ _super15998_ _ns15999_ _path16000_)
        (if (##fx< '11 (##vector-length _self15996_))
            (begin
              (##vector-set! _self15996_ '1 _id15997_)
              (##vector-set! _self15996_ '2 (make-table 'test: eq?))
              (##vector-set! _self15996_ '3 _super15998_)
              (##vector-set! _self15996_ '4 '#f)
              (##vector-set! _self15996_ '5 '#f)
              (##vector-set! _self15996_ '6 _ns15999_)
              (##vector-set! _self15996_ '7 _path16000_)
              (##vector-set! _self15996_ '8 '())
              (##vector-set! _self15996_ '9 '())
              (##vector-set! _self15996_ '10 '#f)
              (##vector-set! _self15996_ '11 '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self15996_))))
    (bind-method! gx#module-context::t ':init! gx#module-context:::init! '#f)
    (define gx#prelude-context:::init!__%
      (lambda (_self15840_ _ctx15841_ _root15842_)
        (let ((_super15850_
               (let ((_$e15844_ _root15842_))
                 (if _$e15844_
                     _$e15844_
                     (let ((_$e15847_ (gx#core-context-root__0)))
                       (if _$e15847_
                           _$e15847_
                           (make-struct-instance gx#root-context::t)))))))
          (if _ctx15841_
              (let ((_id15853_
                     (##structure-ref
                      _ctx15841_
                      '1
                      gx#expander-context::t
                      '#f))
                    (_path15854_
                     (##structure-ref _ctx15841_ '7 gx#module-context::t '#f))
                    (_in15855_
                     (map gx#core-module-export->import
                          (##structure-ref
                           _ctx15841_
                           '9
                           gx#module-context::t
                           '#f)))
                    (_e15856_
                     (make-promise (lambda () (gx#eval-module _ctx15841_)))))
                (if (##fx< '8 (##vector-length _self15840_))
                    (begin
                      (##vector-set! _self15840_ '1 _id15853_)
                      (##vector-set!
                       _self15840_
                       '2
                       (make-table 'test: eq? 'size: (length _in15855_)))
                      (##vector-set! _self15840_ '3 _super15850_)
                      (##vector-set! _self15840_ '4 '#f)
                      (##vector-set! _self15840_ '5 '#f)
                      (##vector-set! _self15840_ '6 _path15854_)
                      (##vector-set! _self15840_ '7 _in15855_)
                      (##vector-set! _self15840_ '8 _e15856_))
                    (error '"struct-instance-init!: too many arguments for struct"
                           _self15840_))
                (for-each
                 (lambda (_g1585715859_)
                   (gx#core-bind-weak-import!__% _g1585715859_ _self15840_))
                 _in15855_))
              (if (##fx< '8 (##vector-length _self15840_))
                  (begin
                    (##vector-set! _self15840_ '1 '#f)
                    (##vector-set! _self15840_ '2 (make-table 'test: eq?))
                    (##vector-set! _self15840_ '3 _super15850_)
                    (##vector-set! _self15840_ '4 '#f)
                    (##vector-set! _self15840_ '5 '#f)
                    (##vector-set! _self15840_ '6 '#f)
                    (##vector-set! _self15840_ '7 '())
                    (##vector-set! _self15840_ '8 '#f))
                  (error '"struct-instance-init!: too many arguments for struct"
                         _self15840_))))))
    (define gx#prelude-context:::init!__0
      (lambda (_self15865_ _ctx15866_)
        (let ((_root15868_ '#f))
          (gx#prelude-context:::init!__% _self15865_ _ctx15866_ _root15868_))))
    (define gx#prelude-context:::init!
      (lambda _g16063_
        (let ((_g16062_ (##length _g16063_)))
          (cond ((##fx= _g16062_ 2)
                 (apply gx#prelude-context:::init!__0 _g16063_))
                ((##fx= _g16062_ 3)
                 (apply gx#prelude-context:::init!__% _g16063_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#prelude-context:::init!
                  _g16063_))))))
    (bind-method! gx#prelude-context::t ':init! gx#prelude-context:::init! '#f)
    (define gx#import-export-expander-init!
      (lambda (_self15714_ _e15715_)
        (if (##fx< '3 (##vector-length _self15714_))
            (begin
              (##vector-set! _self15714_ '1 _e15715_)
              (##vector-set! _self15714_ '2 (gx#current-expander-context))
              (##vector-set!
               _self15714_
               '3
               (fx- (gx#current-expander-phi) '1)))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self15714_))))
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
      (lambda (_g1534015343_ _g1534115345_)
        (gx#core-apply-user-expander__%
         _g1534015343_
         _g1534115345_
         'apply-import-expander)))
    (bind-method!
     gx#import-expander::t
     'apply-import-expander
     gx#import-expander::apply-import-expander
     '#f)
    (define gx#export-expander::apply-export-expander
      (lambda (_g1521115214_ _g1521215216_)
        (gx#core-apply-user-expander__%
         _g1521115214_
         _g1521215216_
         'apply-export-expander)))
    (bind-method!
     gx#export-expander::t
     'apply-export-expander
     gx#export-expander::apply-export-expander
     '#f)
    (define gx#module-source-path
      (lambda (_ctx15082_)
        (let* ((_path15084_
                (##structure-ref _ctx15082_ '7 gx#module-context::t '#f))
               (_path15086_
                (if (pair? _path15084_) (last _path15084_) _path15084_)))
          (if (string? _path15086_) _path15086_ '#f))))
    (define gx#import-module__%
      (lambda (_path15058_ _reload?15059_ _eval?15060_)
        (let ((_ctx15062_
               ((gx#current-expander-module-import)
                _path15058_
                _reload?15059_)))
          (if (and _ctx15062_ _eval?15060_)
              (gx#eval-module _ctx15062_)
              '#!void)
          _ctx15062_)))
    (define gx#import-module__0
      (lambda (_path15067_)
        (let* ((_reload?15069_ '#f) (_eval?15071_ '#f))
          (gx#import-module__% _path15067_ _reload?15069_ _eval?15071_))))
    (define gx#import-module__1
      (lambda (_path15073_ _reload?15074_)
        (let ((_eval?15076_ '#f))
          (gx#import-module__% _path15073_ _reload?15074_ _eval?15076_))))
    (define gx#import-module
      (lambda _g16065_
        (let ((_g16064_ (##length _g16065_)))
          (cond ((##fx= _g16064_ 1) (apply gx#import-module__0 _g16065_))
                ((##fx= _g16064_ 2) (apply gx#import-module__1 _g16065_))
                ((##fx= _g16064_ 3) (apply gx#import-module__% _g16065_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#import-module
                  _g16065_))))))
    (define gx#eval-module
      (lambda (_mod15055_) ((gx#current-expander-module-eval) _mod15055_)))
    (define gx#core-eval-module
      (lambda (_obj15040_)
        (letrec ((_force-e15042_
                  (lambda (_getf15051_ _e15052_)
                    (call-with-parameters
                     (lambda () (force (_getf15051_ _e15052_)))
                     gx#current-expander-context
                     _e15052_
                     gx#current-expander-phi
                     '0))))
          (let _recur15044_ ((_e15046_ _obj15040_))
            (if (##structure-instance-of? _e15046_ 'gx#module-context::t)
                (begin
                  (let ((_$e15048_ (gx#core-context-prelude__% _e15046_)))
                    (if _$e15048_ (_recur15044_ _$e15048_) '#!void))
                  (_force-e15042_ gx#module-context-e _e15046_))
                (if (##structure-instance-of? _e15046_ 'gx#prelude-context::t)
                    (_force-e15042_ gx#prelude-context-e _e15046_)
                    (if (gx#stx-string? _e15046_)
                        (_recur15044_
                         (gx#import-module__0
                          (gx#core-resolve-module-path__0 _e15046_)))
                        (if (gx#core-library-module-path? _e15046_)
                            (_recur15044_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path _e15046_)))
                            (error '"Cannot eval module" _obj15040_)))))))))
    (define gx#core-context-prelude__%
      (lambda (_ctx15023_)
        (let _lp15025_ ((_e15027_ _ctx15023_))
          (if (or (##structure-instance-of? _e15027_ 'gx#module-context::t)
                  (##structure-instance-of? _e15027_ 'gx#local-context::t))
              (_lp15025_
               (##unchecked-structure-ref _e15027_ '3 gx#phi-context::t '#f))
              (if (##structure-instance-of? _e15027_ 'gx#prelude-context::t)
                  _e15027_
                  '#f)))))
    (define gx#core-context-prelude__0
      (lambda ()
        (let ((_ctx15036_ (gx#current-expander-context)))
          (gx#core-context-prelude__% _ctx15036_))))
    (define gx#core-context-prelude
      (lambda _g16067_
        (let ((_g16066_ (##length _g16067_)))
          (cond ((##fx= _g16066_ 0)
                 (apply gx#core-context-prelude__0 _g16067_))
                ((##fx= _g16066_ 1)
                 (apply gx#core-context-prelude__% _g16067_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-prelude
                  _g16067_))))))
    (define gx#core-module->prelude-context
      (lambda (_ctx15013_)
        (let* ((_ht15015_ (gx#current-expander-module-registry))
               (_$e15017_ (table-ref _ht15015_ _ctx15013_ '#f)))
          (if _$e15017_
              (values _$e15017_)
              (let ((_pre15020_
                     (let ((__obj16058 (make-object gx#prelude-context::t '8)))
                       (gx#prelude-context:::init!__0 __obj16058 _ctx15013_)
                       __obj16058)))
                (table-set! _ht15015_ _ctx15013_ _pre15020_)
                _pre15020_)))))
    (define gx#core-import-module__%
      (lambda (_rpath14894_ _reload?14895_)
        (letrec ((_import-source14897_
                  (lambda (_path14982_)
                    (if (member _path14982_ (gx#current-expander-path))
                        (error '"Cyclic expansion" _path14982_)
                        '#!void)
                    (call-with-parameters
                     (lambda ()
                       (let ((_g16068_ (gx#core-read-module _path14982_)))
                         (begin
                           (let ((_g16069_
                                  (if (##values? _g16068_)
                                      (##vector-length _g16068_)
                                      1)))
                             (if (not (##fx= _g16069_ 4))
                                 (error "Context expects 4 values" _g16069_)))
                           (let ((_pre14985_ (##vector-ref _g16068_ 0))
                                 (_id14986_ (##vector-ref _g16068_ 1))
                                 (_ns14987_ (##vector-ref _g16068_ 2))
                                 (_body14988_ (##vector-ref _g16068_ 3)))
                             (let* ((_prelude14993_
                                     (if (##structure-instance-of?
                                          _pre14985_
                                          'gx#prelude-context::t)
                                         _pre14985_
                                         (if (##structure-instance-of?
                                              _pre14985_
                                              'gx#module-context::t)
                                             (gx#core-module->prelude-context
                                              _pre14985_)
                                             (if (string? _pre14985_)
                                                 (gx#core-module->prelude-context
                                                  (gx#core-import-module__0
                                                   _pre14985_))
                                                 (if (not _pre14985_)
                                                     (let ((_$e14990_
                                                            (gx#current-expander-module-prelude)))
                                                       (if _$e14990_
                                                           _$e14990_
                                                           (let ((__obj16059
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (make-object gx#prelude-context::t '8)))
                     (gx#prelude-context:::init!__0 __obj16059 '#f)
                     __obj16059)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error '"Cannot import module; unknown prelude"
                                                            _rpath14894_
                                                            _pre14985_))))))
                                    (_ctx14995_
                                     (let ((__obj16060
                                            (make-object
                                             gx#module-context::t
                                             '11)))
                                       (gx#module-context:::init!
                                        __obj16060
                                        _id14986_
                                        _prelude14993_
                                        _ns14987_
                                        _path14982_)
                                       __obj16060))
                                    (_body14997_
                                     (gx#core-expand-module-begin
                                      _body14988_
                                      _ctx14995_))
                                    (_body14999_
                                     (gx#core-quote-syntax__%
                                      (gx#core-cons '%#begin _body14997_)
                                      _path14982_
                                      _ctx14995_
                                      '())))
                               (##unchecked-structure-set!
                                _ctx14995_
                                (make-promise
                                 (lambda () (gx#eval-syntax* _body14999_)))
                                '10
                                gx#module-context::t
                                '#f)
                               (##unchecked-structure-set!
                                _ctx14995_
                                _body14999_
                                '11
                                gx#module-context::t
                                '#f)
                               (table-set!
                                (gx#current-expander-module-registry)
                                _path14982_
                                _ctx14995_)
                               (table-set!
                                (gx#current-expander-module-registry)
                                _id14986_
                                _ctx14995_)
                               _ctx14995_)))))
                     gx#current-expander-context
                     (gx#core-context-root__0)
                     gx#current-expander-marks
                     '()
                     gx#current-expander-phi
                     '0
                     gx#current-expander-path
                     (cons _path14982_ (gx#current-expander-path))
                     gx#current-import-expander-phi
                     '#f
                     gx#current-export-expander-phi
                     '#f)))
                 (_import-submodule14898_
                  (lambda (_rpath14910_)
                    (let* ((_rpath1491114918_ _rpath14910_)
                           (_E1491314922_
                            (lambda ()
                              (error '"No clause matching" _rpath1491114918_)))
                           (_K1491414970_
                            (lambda (_refs14925_ _origin14926_)
                              (let ((_ctx14928_
                                     (if _origin14926_
                                         (gx#core-import-module__%
                                          _origin14926_
                                          _reload?14895_)
                                         (gx#current-expander-context))))
                                (let _lp14930_ ((_rest14932_ _refs14925_)
                                                (_ctx14933_ _ctx14928_))
                                  (let* ((_rest1493414942_ _rest14932_)
                                         (_else1493614950_
                                          (lambda () _ctx14933_))
                                         (_K1493814958_
                                          (lambda (_rest14953_ _id14954_)
                                            (let ((_bind14956_
                                                   (gx#resolve-identifier__%
                                                    _id14954_
                                                    '0
                                                    _ctx14933_)))
                                              (if (and (##structure-direct-instance-of?
                                                        _bind14956_
                                                        'gx#syntax-binding::t)
                                                       (##structure-instance-of?
                                                        (##unchecked-structure-ref
                                                         _bind14956_
                                                         '4
                                                         gx#syntax-binding::t
                                                         '#f)
                                                        'gx#module-context::t))
                                                  (_lp14930_
                                                   _rest14953_
                                                   (##unchecked-structure-ref
                                                    _bind14956_
                                                    '4
                                                    gx#syntax-binding::t
                                                    '#f))
                                                  (error '"Cannot import submodule; not bound as a module"
                                                         _rpath14910_
                                                         _id14954_
                                                         _bind14956_))))))
                                    (if (##pair? _rest1493414942_)
                                        (let ((_hd1493914961_
                                               (##car _rest1493414942_))
                                              (_tl1494014963_
                                               (##cdr _rest1493414942_)))
                                          (let* ((_id14966_ _hd1493914961_)
                                                 (_rest14968_ _tl1494014963_))
                                            (_K1493814958_
                                             _rest14968_
                                             _id14966_)))
                                        (_else1493614950_))))))))
                      (if (##pair? _rpath1491114918_)
                          (let ((_hd1491514973_ (##car _rpath1491114918_))
                                (_tl1491614975_ (##cdr _rpath1491114918_)))
                            (let* ((_origin14978_ _hd1491514973_)
                                   (_refs14980_ _tl1491614975_))
                              (_K1491414970_ _refs14980_ _origin14978_)))
                          (_E1491314922_))))))
          (let ((_$e14900_
                 (if (not _reload?14895_)
                     (table-ref
                      (gx#current-expander-module-registry)
                      _rpath14894_
                      '#f)
                     '#f)))
            (if _$e14900_
                (values _$e14900_)
                (if (list? _rpath14894_)
                    (_import-submodule14898_ _rpath14894_)
                    (if (gx#core-library-module-path? _rpath14894_)
                        (let ((_ctx14903_
                               (gx#core-import-module__%
                                (gx#core-resolve-library-module-path
                                 _rpath14894_)
                                _reload?14895_)))
                          (table-set!
                           (gx#current-expander-module-registry)
                           _rpath14894_
                           _ctx14903_)
                          _ctx14903_)
                        (let* ((_npath14905_ (path-normalize _rpath14894_))
                               (_$e14907_
                                (if (not _reload?14895_)
                                    (table-ref
                                     (gx#current-expander-module-registry)
                                     _npath14905_
                                     '#f)
                                    '#f)))
                          (if _$e14907_
                              (values _$e14907_)
                              (_import-source14897_ _npath14905_))))))))))
    (define gx#core-import-module__0
      (lambda (_rpath15006_)
        (let ((_reload?15008_ '#f))
          (gx#core-import-module__% _rpath15006_ _reload?15008_))))
    (define gx#core-import-module
      (lambda _g16071_
        (let ((_g16070_ (##length _g16071_)))
          (cond ((##fx= _g16070_ 1) (apply gx#core-import-module__0 _g16071_))
                ((##fx= _g16070_ 2) (apply gx#core-import-module__% _g16071_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-import-module
                  _g16071_))))))
    (define gx#core-read-module
      (lambda (_path14888_)
        (with-exception-catcher
         (lambda (_exn14890_)
           (if (and (datum-parsing-exception? _exn14890_)
                    (eq? (datum-parsing-exception-filepos _exn14890_) '0))
               (gx#core-read-module/lang _path14888_)
               (raise _exn14890_)))
         (lambda () (gx#core-read-module/sexp _path14888_)))))
    (define gx#core-read-module/sexp
      (lambda (_path14751_)
        (let _lp14753_ ((_body14755_ (read-syntax-from-file _path14751_))
                        (_pre14756_ '#f)
                        (_ns14757_ '#f)
                        (_pkg14758_ '#f))
          (let* ((_e1475914783_ _body14755_)
                 (_E1477514805_
                  (lambda ()
                    (let ((_g16072_
                           (if _pkg14758_
                               (values _pre14756_ _ns14757_ _pkg14758_)
                               (gx#core-read-module-package
                                _path14751_
                                _pre14756_
                                _ns14757_))))
                      (begin
                        (let ((_g16073_
                               (if (##values? _g16072_)
                                   (##vector-length _g16072_)
                                   1)))
                          (if (not (##fx= _g16073_ 3))
                              (error "Context expects 3 values" _g16073_)))
                        (let ((_pre14787_ (##vector-ref _g16072_ 0))
                              (_ns14788_ (##vector-ref _g16072_ 1))
                              (_pkg14789_ (##vector-ref _g16072_ 2)))
                          (let* ((_prelude14791_
                                  (if (gx#core-bound-module-prelude?
                                       _pre14787_)
                                      (gx#syntax-local-e__0 _pre14787_)
                                      (if (gx#core-library-module-path?
                                           _pre14787_)
                                          (gx#core-resolve-library-module-path
                                           _pre14787_)
                                          (if (gx#stx-string? _pre14787_)
                                              (gx#core-resolve-module-path__%
                                               _pre14787_
                                               _path14751_)
                                              (gx#stx-e _pre14787_)))))
                                 (_path-id14793_
                                  (gx#core-module-path->namespace _path14751_))
                                 (_pkg-id14795_
                                  (if _pkg14789_
                                      (string-append
                                       _pkg14789_
                                       '"/"
                                       _path-id14793_)
                                      _path-id14793_))
                                 (_module-id14797_
                                  (string->symbol _pkg-id14795_))
                                 (_module-ns14802_
                                  (if (eq? _ns14788_ '#!void)
                                      '#f
                                      (let ((_$e14799_ _ns14788_))
                                        (if _$e14799_
                                            _$e14799_
                                            _pkg-id14795_)))))
                            (values _prelude14791_
                                    _module-id14797_
                                    _module-ns14802_
                                    _body14755_)))))))
                 (_E1476814834_
                  (lambda ()
                    (if (gx#stx-pair? _e1475914783_)
                        (let ((_e1477614809_ (gx#syntax-e _e1475914783_)))
                          (let ((_hd1477714812_ (##car _e1477614809_))
                                (_tl1477814814_ (##cdr _e1477614809_)))
                            (if (eq? (gx#stx-e _hd1477714812_) 'package:)
                                (if (gx#stx-pair? _tl1477814814_)
                                    (let ((_e1477914817_
                                           (gx#syntax-e _tl1477814814_)))
                                      (let ((_hd1478014820_
                                             (##car _e1477914817_))
                                            (_tl1478114822_
                                             (##cdr _e1477914817_)))
                                        (let* ((_pkg14825_ _hd1478014820_)
                                               (_rest14827_ _tl1478114822_))
                                          (if '#t
                                              (let ((_pkg14832_
                                                     (if (gx#identifier?
                                                          _pkg14825_)
                                                         (symbol->string
                                                          (gx#stx-e
                                                           _pkg14825_))
                                                         (if (or (gx#stx-string?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _pkg14825_)
                         (gx#stx-false? _pkg14825_))
                     (gx#stx-e _pkg14825_)
                     (gx#raise-syntax-error
                      'import
                      '"Bad syntax; Illegal package name"
                      _pkg14825_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_lp14753_
                                                 _rest14827_
                                                 _pre14756_
                                                 _ns14757_
                                                 _pkg14832_))
                                              (_E1477514805_)))))
                                    (_E1477514805_))
                                (_E1477514805_))))
                        (_E1477514805_))))
                 (_E1476114860_
                  (lambda ()
                    (if (gx#stx-pair? _e1475914783_)
                        (let ((_e1476914838_ (gx#syntax-e _e1475914783_)))
                          (let ((_hd1477014841_ (##car _e1476914838_))
                                (_tl1477114843_ (##cdr _e1476914838_)))
                            (if (eq? (gx#stx-e _hd1477014841_) 'namespace:)
                                (if (gx#stx-pair? _tl1477114843_)
                                    (let ((_e1477214846_
                                           (gx#syntax-e _tl1477114843_)))
                                      (let ((_hd1477314849_
                                             (##car _e1477214846_))
                                            (_tl1477414851_
                                             (##cdr _e1477214846_)))
                                        (let* ((_ns14854_ _hd1477314849_)
                                               (_rest14856_ _tl1477414851_))
                                          (if '#t
                                              (let ((_ns14858_
                                                     (if (gx#identifier?
                                                          _ns14854_)
                                                         (symbol->string
                                                          (gx#stx-e _ns14854_))
                                                         (if (gx#stx-string?
                                                              _ns14854_)
                                                             (gx#stx-e
                                                              _ns14854_)
                                                             (if (gx#stx-false?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _ns14854_)
                         '#!void
                         (gx#raise-syntax-error
                          'import
                          '"Bad syntax; illegal namespace"
                          _ns14854_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_lp14753_
                                                 _rest14856_
                                                 _pre14756_
                                                 _ns14858_
                                                 _pkg14758_))
                                              (_E1476814834_)))))
                                    (_E1476814834_))
                                (_E1476814834_))))
                        (_E1476814834_))))
                 (_E1476014884_
                  (lambda ()
                    (if (gx#stx-pair? _e1475914783_)
                        (let ((_e1476214864_ (gx#syntax-e _e1475914783_)))
                          (let ((_hd1476314867_ (##car _e1476214864_))
                                (_tl1476414869_ (##cdr _e1476214864_)))
                            (if (eq? (gx#stx-e _hd1476314867_) 'prelude:)
                                (if (gx#stx-pair? _tl1476414869_)
                                    (let ((_e1476514872_
                                           (gx#syntax-e _tl1476414869_)))
                                      (let ((_hd1476614875_
                                             (##car _e1476514872_))
                                            (_tl1476714877_
                                             (##cdr _e1476514872_)))
                                        (let* ((_prelude14880_ _hd1476614875_)
                                               (_rest14882_ _tl1476714877_))
                                          (if '#t
                                              (_lp14753_
                                               _rest14882_
                                               _prelude14880_
                                               _ns14757_
                                               _pkg14758_)
                                              (_E1476114860_)))))
                                    (_E1476114860_))
                                (_E1476114860_))))
                        (_E1476114860_)))))
            (_E1476014884_)))))
    (define gx#core-read-module/lang
      (lambda (_path14578_)
        (letrec ((_default-read-module-body14580_
                  (lambda (_inp14743_)
                    (let _lp14745_ ((_body14747_ '()))
                      (let ((_next14749_ (read-syntax _inp14743_)))
                        (if (eof-object? _next14749_)
                            (reverse _body14747_)
                            (_lp14745_ (cons _next14749_ _body14747_)))))))
                 (_read-body14581_
                  (lambda (_inp14662_
                           _pre14663_
                           _ns14664_
                           _pkg14665_
                           _args14666_)
                    (let ((_g16074_
                           (if _pkg14665_
                               (values _pre14663_ _ns14664_ _pkg14665_)
                               (gx#core-read-module-package
                                _path14578_
                                _pre14663_
                                _ns14664_))))
                      (begin
                        (let ((_g16075_
                               (if (##values? _g16074_)
                                   (##vector-length _g16074_)
                                   1)))
                          (if (not (##fx= _g16075_ 3))
                              (error "Context expects 3 values" _g16075_)))
                        (let ((_pre14668_ (##vector-ref _g16074_ 0))
                              (_ns14669_ (##vector-ref _g16074_ 1))
                              (_pkg14670_ (##vector-ref _g16074_ 2)))
                          (let* ((_prelude14672_
                                  (gx#import-module__0 _pre14668_))
                                 (_read-module-body14726_
                                  (let ((_$e14718_
                                         (find (lambda (_e1467314675_)
                                                 (let* ((_g1467714687_
                                                         _e1467314675_)
                                                        (_else1467914695_
                                                         (lambda () '#f))
                                                        (_K1468114699_
                                                         (lambda () '#t)))
                                                   (if (##structure-direct-instance-of?
                                                        _g1467714687_
                                                        'gx#module-export::t)
                                                       (let* ((_e1468214702_
                                                               (##vector-ref
                                                                _g1467714687_
                                                                '1))
                                                              (_e1468314705_
                                                               (##vector-ref
                                                                _g1467714687_
                                                                '2))
                                                              (_e1468414708_
                                                               (##vector-ref
                                                                _g1467714687_
                                                                '3)))
                                                         (if (##eq? _e1468414708_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '1)
                     (let ((_e1468514711_ (##vector-ref _g1467714687_ '4)))
                       (if ((lambda (_g1471314715_)
                              (eq? _g1471314715_ 'read-module-body))
                            _e1468514711_)
                           (_K1468114699_)
                           (_else1467914695_)))
                     (_else1467914695_)))
               (_else1467914695_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (##unchecked-structure-ref
                                                _prelude14672_
                                                '9
                                                gx#module-context::t
                                                '#f))))
                                    (if _$e14718_
                                        ((lambda (_xport14721_)
                                           (let ((_proc14724_
                                                  (with-exception-catcher
                                                   void
                                                   (lambda ()
                                                     (gx#eval-syntax__0
                                                      (##structure-ref
                                                       (gx#core-resolve-module-export
                                                        _xport14721_)
                                                       '1
                                                       gx#binding::t
                                                       '#f))))))
                                             (if (procedure? _proc14724_)
                                                 _proc14724_
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Illegal #lang prelude; read-module-body is not a procedure"
                                                  _path14578_
                                                  _pre14668_
                                                  _proc14724_))))
                                         _$e14718_)
                                        _default-read-module-body14580_)))
                                 (_path-id14728_
                                  (gx#core-module-path->namespace _path14578_))
                                 (_pkg-id14730_
                                  (if _pkg14670_
                                      (string-append
                                       _pkg14670_
                                       '"/"
                                       _path-id14728_)
                                      _path-id14728_))
                                 (_module-id14732_
                                  (string->symbol _pkg-id14730_))
                                 (_module-ns14737_
                                  (let ((_$e14734_ _ns14669_))
                                    (if _$e14734_ _$e14734_ _pkg-id14730_)))
                                 (_body14740_
                                  (call-with-parameters
                                   (lambda ()
                                     (_read-module-body14726_ _inp14662_))
                                   gx#current-module-reader-path
                                   _path14578_
                                   gx#current-module-reader-args
                                   _args14666_)))
                            (values _prelude14672_
                                    _module-id14732_
                                    _module-ns14737_
                                    _body14740_)))))))
                 (_string-e14582_
                  (lambda (_obj14659_ _what14660_)
                    (if (string? _obj14659_)
                        _obj14659_
                        (if (symbol? _obj14659_)
                            (symbol->string _obj14659_)
                            (gx#raise-syntax-error
                             '#f
                             (string-append '"Illegal module " _what14660_)
                             _path14578_
                             _obj14659_)))))
                 (_read-lang-args14583_
                  (lambda (_inp14614_ _args14615_)
                    (let* ((_args1461614624_ _args14615_)
                           (_else1461814632_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Illegal #lang arguments; missing prelude"
                               _path14578_)))
                           (_K1462014647_
                            (lambda (_args14635_ _prelude14636_)
                              (let* ((_pkg14638_ (pgetq 'package: _args14635_))
                                     (_pkg14640_
                                      (if _pkg14638_
                                          (_string-e14582_
                                           _pkg14638_
                                           '"package")
                                          '#f))
                                     (_ns14642_
                                      (pgetq 'namespace: _args14635_))
                                     (_ns14644_
                                      (if _ns14642_
                                          (_string-e14582_
                                           _ns14642_
                                           '"namespace")
                                          '#f)))
                                (_read-body14581_
                                 _inp14614_
                                 _prelude14636_
                                 _ns14644_
                                 _pkg14640_
                                 _args14635_)))))
                      (if (##pair? _args1461614624_)
                          (let ((_hd1462114650_ (##car _args1461614624_))
                                (_tl1462214652_ (##cdr _args1461614624_)))
                            (let* ((_prelude14655_ _hd1462114650_)
                                   (_args14657_ _tl1462214652_))
                              (_K1462014647_ _args14657_ _prelude14655_)))
                          (_else1461814632_)))))
                 (_read-lang14584_
                  (lambda (_inp14589_)
                    (let* ((_head14591_ (read-line _inp14589_))
                           (_$e14593_ (string-index _head14591_ '#\space)))
                      (if _$e14593_
                          ((lambda (_ix14596_)
                             (let ((_lang14598_
                                    (substring _head14591_ '0 _ix14596_)))
                               (if (equal? _lang14598_ '"#lang")
                                   (let* ((_rest14600_
                                           (substring
                                            _head14591_
                                            (fx+ _ix14596_ '1)
                                            (string-length _head14591_)))
                                          (_args14611_
                                           (with-exception-catcher
                                            (lambda (_g1460114603_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal #lang arguments"
                                               _path14578_
                                               _g1460114603_))
                                            (lambda ()
                                              (call-with-input-string
                                               _rest14600_
                                               (lambda (_g1460614608_)
                                                 (read-all
                                                  _g1460614608_
                                                  read)))))))
                                     (_read-lang-args14583_
                                      _inp14589_
                                      _args14611_))
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Illegal module syntax"
                                    _path14578_))))
                           _$e14593_)
                          (gx#raise-syntax-error
                           '#f
                           '"Illegal module syntax"
                           _path14578_)))))
                 (_read-e14585_
                  (lambda (_inp14587_)
                    (if (eq? (peek-char _inp14587_) '#\#)
                        (_read-lang14584_ _inp14587_)
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module syntax"
                         _path14578_)))))
          (gx#call-with-input-source-file _path14578_ _read-e14585_))))
    (define gx#core-read-module-package
      (lambda (_path14532_ _pre14533_ _ns14534_)
        (letrec ((_string-e14536_
                  (lambda (_e14576_)
                    (if (symbol? _e14576_)
                        (symbol->string _e14576_)
                        (if (string? _e14576_)
                            _e14576_
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _e14576_))))))
          (let _lp14538_ ((_dir14540_ (path-directory _path14532_))
                          (_pkg-path14541_ '()))
            (let ((_gerbil.pkg14543_ (path-expand '"gerbil.pkg" _dir14540_)))
              (if (file-exists? _gerbil.pkg14543_)
                  (let ((_plist14545_
                         (gx#core-library-package-plist__% _dir14540_ '#t)))
                    (if (null? _plist14545_)
                        (let ((_pkg14547_
                               (if (not (null? _pkg-path14541_))
                                   (string-join _pkg-path14541_ '"/")
                                   '#f)))
                          (values _pre14533_ _ns14534_ _pkg14547_))
                        (if (list? _plist14545_)
                            (let* ((_root14549_ (pgetq 'package: _plist14545_))
                                   (_pkg14553_
                                    (let ((_pkg-path14551_
                                           (if _root14549_
                                               (cons (_string-e14536_
                                                      _root14549_)
                                                     _pkg-path14541_)
                                               _pkg-path14541_)))
                                      (if (not (null? _pkg-path14551_))
                                          (string-join _pkg-path14551_ '"/")
                                          '#f)))
                                   (_ns14560_
                                    (let ((_ns14558_
                                           (let ((_$e14555_ _ns14534_))
                                             (if _$e14555_
                                                 _$e14555_
                                                 (pgetq 'namespace:
                                                        _plist14545_)))))
                                      (if _ns14558_
                                          (_string-e14536_ _ns14558_)
                                          '#f)))
                                   (_pre14565_
                                    (let ((_$e14562_ _pre14533_))
                                      (if _$e14562_
                                          _$e14562_
                                          (pgetq 'prelude: _plist14545_)))))
                              (values _pre14565_ _ns14560_ _pkg14553_))
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _plist14545_))))
                  (let ((_dir*14568_
                         (path-strip-trailing-directory-separator _dir14540_)))
                    (if (or (string-empty? _dir*14568_)
                            (equal? _dir14540_ _dir*14568_))
                        (values _pre14533_ _ns14534_ '#f)
                        (let ((_xpath14573_ (path-strip-directory _dir*14568_))
                              (_xdir14574_ (path-directory _dir*14568_)))
                          (_lp14538_
                           _xdir14574_
                           (cons _xpath14573_ _pkg-path14541_)))))))))))
    (define gx#core-module-path->namespace
      (lambda (_path14530_)
        (path-strip-extension (path-strip-directory _path14530_))))
    (define gx#core-module-path->id
      (lambda (_path14528_)
        (string->symbol (gx#core-module-path->namespace _path14528_))))
    (define gx#core-resolve-module-path__%
      (lambda (_stx-path14507_ _rel14508_)
        (let* ((_path14510_ (gx#stx-e _stx-path14507_))
               (_path14512_
                (if (string-empty? (path-extension _path14510_))
                    (string-append _path14510_ '".ss")
                    _path14510_)))
          (gx#core-resolve-path__%
           _path14512_
           (let ((_$e14515_ (gx#stx-source _stx-path14507_)))
             (if _$e14515_ _$e14515_ _rel14508_))))))
    (define gx#core-resolve-module-path__0
      (lambda (_stx-path14521_)
        (let ((_rel14523_ '#f))
          (gx#core-resolve-module-path__% _stx-path14521_ _rel14523_))))
    (define gx#core-resolve-module-path
      (lambda _g16077_
        (let ((_g16076_ (##length _g16077_)))
          (cond ((##fx= _g16076_ 1)
                 (apply gx#core-resolve-module-path__0 _g16077_))
                ((##fx= _g16076_ 2)
                 (apply gx#core-resolve-module-path__% _g16077_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-module-path
                  _g16077_))))))
    (define gx#core-resolve-library-module-path
      (lambda (_libpath14393_)
        (let* ((_spath14395_ (symbol->string (gx#stx-e _libpath14393_)))
               (_spath14397_
                (substring _spath14395_ '1 (string-length _spath14395_)))
               (_ext14399_ (path-extension _spath14397_))
               (_ssi14401_
                (if (string-empty? _ext14399_)
                    (string-append _spath14397_ '".ssi")
                    (string-append
                     (path-strip-extension _spath14397_)
                     '".ssi")))
               (_srcs14405_
                (if (string-empty? _ext14399_)
                    (map (lambda (_ext14403_)
                           (string-append _spath14397_ _ext14403_))
                         '(".ss" ".sld" ".scm"))
                    (cons _spath14397_ '()))))
          (let _lp14408_ ((_rest14410_
                           (gx#current-expander-module-library-path)))
            (let* ((_rest1441114420_ _rest14410_)
                   (_E1441414424_
                    (lambda ()
                      (error '"No clause matching" _rest1441114420_))))
              (let ((_K1441614494_
                     (lambda (_rest14435_ _dir14436_)
                       (letrec ((_resolve14438_
                                 (lambda (_ssi14450_ _srcs14451_)
                                   (let ((_compiled-path14453_
                                          (path-expand _ssi14450_ _dir14436_)))
                                     (if (file-exists? _compiled-path14453_)
                                         (path-normalize _compiled-path14453_)
                                         (let _lpr14455_ ((_rest-src14457_
                                                           _srcs14451_))
                                           (let* ((_rest-src1445814466_
                                                   _rest-src14457_)
                                                  (_else1446014474_
                                                   (lambda ()
                                                     (_lp14408_ _rest14435_)))
                                                  (_K1446214482_
                                                   (lambda (_rest-src14477_
                                                            _src14478_)
                                                     (let ((_src-path14480_
                                                            (path-expand
                                                             _src14478_
                                                             _dir14436_)))
                                                       (if (file-exists?
                                                            _src-path14480_)
                                                           (path-normalize
                                                            _src-path14480_)
                                                           (_lpr14455_
                                                            _rest-src14477_))))))
                                             (if (##pair? _rest-src1445814466_)
                                                 (let ((_hd1446314485_
                                                        (##car _rest-src1445814466_))
                                                       (_tl1446414487_
                                                        (##cdr _rest-src1445814466_)))
                                                   (let* ((_src14490_
                                                           _hd1446314485_)
                                                          (_rest-src14492_
                                                           _tl1446414487_))
                                                     (_K1446214482_
                                                      _rest-src14492_
                                                      _src14490_)))
                                                 (_else1446014474_)))))))))
                         (let ((_$e14440_
                                (gx#core-library-package-path-prefix
                                 _dir14436_)))
                           (if _$e14440_
                               ((lambda (_prefix14443_)
                                  (if (string-prefix?
                                       _prefix14443_
                                       _spath14397_)
                                      (let ((_ssi14447_
                                             (substring
                                              _ssi14401_
                                              (string-length _prefix14443_)
                                              (string-length _ssi14401_)))
                                            (_srcs14448_
                                             (map (lambda (_src14445_)
                                                    (substring
                                                     _src14445_
                                                     (string-length
                                                      _prefix14443_)
                                                     (string-length
                                                      _src14445_)))
                                                  _srcs14405_)))
                                        (_resolve14438_
                                         _ssi14447_
                                         _srcs14448_))
                                      (_lp14408_ _rest14435_)))
                                _$e14440_)
                               (_resolve14438_ _ssi14401_ _srcs14405_))))))
                    (_K1441514429_
                     (lambda ()
                       (gx#raise-syntax-error
                        '#f
                        '"Cannot find library module"
                        _libpath14393_))))
                (let ((_try-match1441314432_
                       (lambda ()
                         (if (##null? _rest1441114420_)
                             (_K1441514429_)
                             (_E1441414424_)))))
                  (if (##pair? _rest1441114420_)
                      (let ((_tl1441814499_ (##cdr _rest1441114420_))
                            (_hd1441714497_ (##car _rest1441114420_)))
                        (let ((_dir14502_ _hd1441714497_)
                              (_rest14504_ _tl1441814499_))
                          (_K1441614494_ _rest14504_ _dir14502_)))
                      (_try-match1441314432_)))))))))
    (define gx#core-resolve-library-relative-module-path
      (lambda (_modpath14366_)
        (letrec ((_resolve14368_
                  (lambda (_path14385_ _base14386_)
                    (let ((_$e14388_ (string-rindex _base14386_ '#\/)))
                      (if _$e14388_
                          ((lambda (_idx14391_)
                             (gx#core-resolve-library-module-path
                              (string->symbol
                               (string-append
                                '":"
                                (substring _base14386_ '0 _idx14391_)
                                '"/"
                                _path14385_))))
                           _$e14388_)
                          (gx#core-resolve-library-module-path
                           (string->symbol
                            (string-append '":" _path14385_))))))))
          (let ((_spath14370_ (symbol->string (gx#stx-e _modpath14366_)))
                (_mod14371_
                 (gx#core-context-top__%
                  (gx#current-expander-context)
                  gx#module-context?)))
            (if _mod14371_
                '#!void
                (gx#raise-syntax-error
                 '#f
                 '"Cannot resolve relative module path; not in module context"
                 _modpath14366_))
            (let ((_mpath14373_
                   (symbol->string
                    (##structure-ref
                     _mod14371_
                     '1
                     gx#expander-context::t
                     '#f))))
              (let _lp14375_ ((_spath14377_ _spath14370_)
                              (_mpath14378_ _mpath14373_))
                (if (string-prefix? '"../" _spath14377_)
                    (let ((_$e14380_ (string-rindex _mpath14378_ '#\/)))
                      (if _$e14380_
                          ((lambda (_idx14383_)
                             (_lp14375_
                              (substring
                               _spath14377_
                               '3
                               (string-length _spath14377_))
                              (substring _mpath14378_ '0 _idx14383_)))
                           _$e14380_)
                          (gx#raise-syntax-error
                           '#f
                           '"Cannot resolve relative module path; illegal traversal"
                           _modpath14366_)))
                    (if (string-prefix? '"./" _spath14377_)
                        (_lp14375_
                         (substring
                          _spath14377_
                          '2
                          (string-length _spath14377_))
                         _mpath14378_)
                        (_resolve14368_ _spath14377_ _mpath14378_)))))))))
    (define gx#core-library-package-path-prefix
      (lambda (_dir14359_)
        (let ((_$e14361_
               (pgetq 'package:
                      (gx#core-library-package-plist__0 _dir14359_))))
          (if _$e14361_
              ((lambda (_pkg14364_)
                 (string-append (symbol->string _pkg14364_) '"/"))
               _$e14361_)
              '#f))))
    (define gx#core-library-package-plist__%
      (lambda (_dir14331_ _exists?14332_)
        (let* ((_cache14334_ (gx#core-library-package-cache))
               (_$e14336_ (table-ref _cache14334_ _dir14331_ '#f)))
          (if _$e14336_
              (values _$e14336_)
              (let* ((_gerbil.pkg14339_ (path-expand '"gerbil.pkg" _dir14331_))
                     (_plist14346_
                      (if (or _exists?14332_ (file-exists? _gerbil.pkg14339_))
                          (let ((_e14344_
                                 (gx#call-with-input-source-file
                                  _gerbil.pkg14339_
                                  read)))
                            (if (eof-object? _e14344_)
                                '()
                                (if (list? _e14344_)
                                    _e14344_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Malformed package info; unexpected datum"
                                     _gerbil.pkg14339_
                                     _e14344_))))
                          '())))
                (table-set! _cache14334_ _dir14331_ _plist14346_)
                _plist14346_)))))
    (define gx#core-library-package-plist__0
      (lambda (_dir14352_)
        (let ((_exists?14354_ '#f))
          (gx#core-library-package-plist__% _dir14352_ _exists?14354_))))
    (define gx#core-library-package-plist
      (lambda _g16079_
        (let ((_g16078_ (##length _g16079_)))
          (cond ((##fx= _g16078_ 1)
                 (apply gx#core-library-package-plist__0 _g16079_))
                ((##fx= _g16078_ 2)
                 (apply gx#core-library-package-plist__% _g16079_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-library-package-plist
                  _g16079_))))))
    (define gx#core-library-package-cache
      (lambda ()
        (let ((_$e14325_ (gx#current-expander-module-library-package-cache)))
          (if _$e14325_
              (values _$e14325_)
              (let ((_cache14328_ (make-table)))
                (gx#current-expander-module-library-package-cache _cache14328_)
                _cache14328_)))))
    (define gx#core-library-module-path?
      (lambda (_stx14322_) (gx#core-special-module-path? _stx14322_ '#\:)))
    (define gx#core-library-relative-module-path?
      (lambda (_stx14320_) (gx#core-special-module-path? _stx14320_ '#\.)))
    (define gx#core-special-module-path?
      (lambda (_stx14315_ _char14316_)
        (if (gx#identifier? _stx14315_)
            (if (interned-symbol? (gx#stx-e _stx14315_))
                (let ((_str14318_ (symbol->string (gx#stx-e _stx14315_))))
                  (if (fx> (string-length _str14318_) '1)
                      (eq? (string-ref _str14318_ '0) _char14316_)
                      '#f))
                '#f)
            '#f)))
    (define gx#core-bound-prelude?
      (lambda (_stx14309_)
        (gx#core-bound-identifier?__%
         _stx14309_
         (lambda (_g1431014312_)
           (gx#expander-binding?__% _g1431014312_ gx#prelude-context?)))))
    (define gx#core-bound-module?
      (lambda (_stx14303_)
        (gx#core-bound-identifier?__%
         _stx14303_
         (lambda (_g1430414306_)
           (gx#expander-binding?__% _g1430414306_ gx#module-context?)))))
    (define gx#core-bound-module-prelude?
      (lambda (_stx14290_)
        (letrec ((_module-prelude?14292_
                  (lambda (_e14298_)
                    (let ((_$e14300_
                           (##structure-instance-of?
                            _e14298_
                            'gx#module-context::t)))
                      (if _$e14300_
                          _$e14300_
                          (##structure-instance-of?
                           _e14298_
                           'gx#prelude-context::t))))))
          (gx#core-bound-identifier?__%
           _stx14290_
           (lambda (_g1429314295_)
             (gx#expander-binding?__%
              _g1429314295_
              _module-prelude?14292_))))))
    (define gx#core-bind-import!__%
      (lambda (_in14220_ _ctx14221_ _force-weak?14222_)
        (let* ((_in1422314232_ _in14220_)
               (_E1422514236_
                (lambda () (error '"No clause matching" _in1422314232_)))
               (_K1422614249_
                (lambda (_weak?14239_ _phi14240_ _key14241_ _source14242_)
                  (gx#core-bind!__%
                   _key14241_
                   (let ((_e14244_
                          (gx#core-resolve-module-export _source14242_)))
                     (##structure
                      gx#import-binding::t
                      (##unchecked-structure-ref _e14244_ '1 gx#binding::t '#f)
                      _key14241_
                      _phi14240_
                      _e14244_
                      (##unchecked-structure-ref
                       _source14242_
                       '1
                       gx#module-export::t
                       '#f)
                      (let ((_$e14246_ _force-weak?14222_))
                        (if _$e14246_ _$e14246_ _weak?14239_))))
                   gx#core-context-rebind?
                   _phi14240_
                   _ctx14221_))))
          (if (##structure-direct-instance-of?
               _in1422314232_
               'gx#module-import::t)
              (let* ((_e1422714252_ (##vector-ref _in1422314232_ '1))
                     (_source14255_ _e1422714252_)
                     (_e1422814257_ (##vector-ref _in1422314232_ '2))
                     (_key14260_ _e1422814257_)
                     (_e1422914262_ (##vector-ref _in1422314232_ '3))
                     (_phi14265_ _e1422914262_)
                     (_e1423014267_ (##vector-ref _in1422314232_ '4))
                     (_weak?14270_ _e1423014267_))
                (_K1422614249_
                 _weak?14270_
                 _phi14265_
                 _key14260_
                 _source14255_))
              (_E1422514236_)))))
    (define gx#core-bind-import!__0
      (lambda (_in14275_)
        (let* ((_ctx14277_ (gx#current-expander-context))
               (_force-weak?14279_ '#f))
          (gx#core-bind-import!__% _in14275_ _ctx14277_ _force-weak?14279_))))
    (define gx#core-bind-import!__1
      (lambda (_in14281_ _ctx14282_)
        (let ((_force-weak?14284_ '#f))
          (gx#core-bind-import!__% _in14281_ _ctx14282_ _force-weak?14284_))))
    (define gx#core-bind-import!
      (lambda _g16081_
        (let ((_g16080_ (##length _g16081_)))
          (cond ((##fx= _g16080_ 1) (apply gx#core-bind-import!__0 _g16081_))
                ((##fx= _g16080_ 2) (apply gx#core-bind-import!__1 _g16081_))
                ((##fx= _g16080_ 3) (apply gx#core-bind-import!__% _g16081_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-import!
                  _g16081_))))))
    (define gx#core-bind-weak-import!__%
      (lambda (_in14206_ _ctx14207_)
        (gx#core-bind-import!__% _in14206_ _ctx14207_ '#t)))
    (define gx#core-bind-weak-import!__0
      (lambda (_in14212_)
        (let ((_ctx14214_ (gx#current-expander-context)))
          (gx#core-bind-weak-import!__% _in14212_ _ctx14214_))))
    (define gx#core-bind-weak-import!
      (lambda _g16083_
        (let ((_g16082_ (##length _g16083_)))
          (cond ((##fx= _g16082_ 1)
                 (apply gx#core-bind-weak-import!__0 _g16083_))
                ((##fx= _g16082_ 2)
                 (apply gx#core-bind-weak-import!__% _g16083_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-weak-import!
                  _g16083_))))))
    (define gx#core-resolve-module-export
      (lambda (_out14097_)
        (letrec ((_subst14099_
                  (lambda (_key14145_)
                    (let* ((_key1414614154_ _key14145_)
                           (_else1414814162_ (lambda () _key14145_))
                           (_K1415014193_
                            (lambda (_mark14165_ _id14166_)
                              (let* ((_mark1416714173_ _mark14165_)
                                     (_E1416914177_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _mark1416714173_)))
                                     (_K1417014185_
                                      (lambda (_subst14180_)
                                        (let ((_$e14182_
                                               (if _subst14180_
                                                   (table-ref
                                                    _subst14180_
                                                    _id14166_
                                                    '#f)
                                                   '#f)))
                                          (if _$e14182_
                                              _$e14182_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal key; missing substitution"
                                               _key14145_))))))
                                (if (##structure-instance-of?
                                     _mark1416714173_
                                     'gx#expander-mark::t)
                                    (let* ((_e1417114188_
                                            (##vector-ref _mark1416714173_ '1))
                                           (_subst14191_ _e1417114188_))
                                      (_K1417014185_ _subst14191_))
                                    (_E1416914177_))))))
                      (if (##pair? _key1414614154_)
                          (let ((_hd1415114196_ (##car _key1414614154_))
                                (_tl1415214198_ (##cdr _key1414614154_)))
                            (let* ((_id14201_ _hd1415114196_)
                                   (_mark14203_ _tl1415214198_))
                              (_K1415014193_ _mark14203_ _id14201_)))
                          (_else1414814162_))))))
          (let* ((_out1410014110_ _out14097_)
                 (_E1410214114_
                  (lambda () (error '"No clause matching" _out1410014110_)))
                 (_K1410314121_
                  (lambda (_phi14117_ _key14118_ _ctx14119_)
                    (gx#core-context-resolve
                     (gx#core-context-shift _ctx14119_ _phi14117_)
                     (_subst14099_ _key14118_)))))
            (if (##structure-direct-instance-of?
                 _out1410014110_
                 'gx#module-export::t)
                (let* ((_e1410414124_ (##vector-ref _out1410014110_ '1))
                       (_ctx14127_ _e1410414124_)
                       (_e1410514129_ (##vector-ref _out1410014110_ '2))
                       (_key14132_ _e1410514129_)
                       (_e1410614134_ (##vector-ref _out1410014110_ '3))
                       (_phi14137_ _e1410614134_)
                       (_e1410714139_ (##vector-ref _out1410014110_ '4))
                       (_e1410814142_ (##vector-ref _out1410014110_ '5)))
                  (_K1410314121_ _phi14137_ _key14132_ _ctx14127_))
                (_E1410214114_))))))
    (define gx#core-module-export->import__%
      (lambda (_out14022_ _rename14023_ _dphi14024_)
        (let* ((_out1402514035_ _out14022_)
               (_E1402714039_
                (lambda () (error '"No clause matching" _out1402514035_)))
               (_K1402814051_
                (lambda (_weak?14042_
                         _name14043_
                         _phi14044_
                         _key14045_
                         _ctx14046_)
                  (##structure
                   gx#module-import::t
                   _out14022_
                   (let ((_$e14048_ _rename14023_))
                     (if _$e14048_ _$e14048_ _name14043_))
                   (fx+ _phi14044_ _dphi14024_)
                   _weak?14042_))))
          (if (##structure-direct-instance-of?
               _out1402514035_
               'gx#module-export::t)
              (let* ((_e1402914054_ (##vector-ref _out1402514035_ '1))
                     (_ctx14057_ _e1402914054_)
                     (_e1403014059_ (##vector-ref _out1402514035_ '2))
                     (_key14062_ _e1403014059_)
                     (_e1403114064_ (##vector-ref _out1402514035_ '3))
                     (_phi14067_ _e1403114064_)
                     (_e1403214069_ (##vector-ref _out1402514035_ '4))
                     (_name14072_ _e1403214069_)
                     (_e1403314074_ (##vector-ref _out1402514035_ '5))
                     (_weak?14077_ _e1403314074_))
                (_K1402814051_
                 _weak?14077_
                 _name14072_
                 _phi14067_
                 _key14062_
                 _ctx14057_))
              (_E1402714039_)))))
    (define gx#core-module-export->import__0
      (lambda (_out14082_)
        (let* ((_rename14084_ '#f) (_dphi14086_ '0))
          (gx#core-module-export->import__%
           _out14082_
           _rename14084_
           _dphi14086_))))
    (define gx#core-module-export->import__1
      (lambda (_out14088_ _rename14089_)
        (let ((_dphi14091_ '0))
          (gx#core-module-export->import__%
           _out14088_
           _rename14089_
           _dphi14091_))))
    (define gx#core-module-export->import
      (lambda _g16085_
        (let ((_g16084_ (##length _g16085_)))
          (cond ((##fx= _g16084_ 1)
                 (apply gx#core-module-export->import__0 _g16085_))
                ((##fx= _g16084_ 2)
                 (apply gx#core-module-export->import__1 _g16085_))
                ((##fx= _g16084_ 3)
                 (apply gx#core-module-export->import__% _g16085_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-module-export->import
                  _g16085_))))))
    (define gx#core-expand-module%
      (lambda (_stx13950_)
        (letrec ((_make-context13952_
                  (lambda (_id14003_)
                    (let* ((_super14005_ (gx#current-expander-context))
                           (_bind-id14007_ (gx#stx-e _id14003_))
                           (_mod-id14009_
                            (if (##structure-instance-of?
                                 _super14005_
                                 'gx#module-context::t)
                                (make-symbol
                                 (##structure-ref
                                  _super14005_
                                  '1
                                  gx#expander-context::t
                                  '#f)
                                 '"$"
                                 _bind-id14007_)
                                _bind-id14007_))
                           (_ns14011_ (symbol->string _mod-id14009_))
                           (_path14018_
                            (if (##structure-instance-of?
                                 _super14005_
                                 'gx#module-context::t)
                                (let ((_path14013_
                                       (##unchecked-structure-ref
                                        _super14005_
                                        '7
                                        gx#module-context::t
                                        '#f)))
                                  (if (or (pair? _path14013_)
                                          (null? _path14013_))
                                      (cons _bind-id14007_ _path14013_)
                                      (if (not _path14013_)
                                          _bind-id14007_
                                          (cons _bind-id14007_
                                                (cons _path14013_ '())))))
                                _bind-id14007_)))
                      (let ((__obj16061
                             (make-object gx#module-context::t '11)))
                        (gx#module-context:::init!
                         __obj16061
                         _mod-id14009_
                         _super14005_
                         _ns14011_
                         _path14018_)
                        __obj16061)))))
          (let* ((_e1395313963_ _stx13950_)
                 (_E1395513967_
                  (lambda ()
                    (gx#raise-syntax-error '#f '"Bad syntax" _e1395313963_)))
                 (_E1395413999_
                  (lambda ()
                    (if (gx#stx-pair? _e1395313963_)
                        (let ((_e1395613971_ (gx#syntax-e _e1395313963_)))
                          (let ((_hd1395713974_ (##car _e1395613971_))
                                (_tl1395813976_ (##cdr _e1395613971_)))
                            (if (gx#stx-pair? _tl1395813976_)
                                (let ((_e1395913979_
                                       (gx#syntax-e _tl1395813976_)))
                                  (let ((_hd1396013982_ (##car _e1395913979_))
                                        (_tl1396113984_ (##cdr _e1395913979_)))
                                    (let* ((_id13987_ _hd1396013982_)
                                           (_body13989_ _tl1396113984_))
                                      (if (and (gx#identifier? _id13987_)
                                               (gx#stx-list? _body13989_))
                                          (let* ((_ctx13991_
                                                  (_make-context13952_
                                                   _id13987_))
                                                 (_body13993_
                                                  (gx#core-expand-module-begin
                                                   _body13989_
                                                   _ctx13991_))
                                                 (_body13995_
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _body13993_)
                                                   (gx#stx-source
                                                    _stx13950_))))
                                            (##unchecked-structure-set!
                                             _ctx13991_
                                             (make-promise
                                              (lambda ()
                                                (gx#eval-syntax* _body13995_)))
                                             '10
                                             gx#module-context::t
                                             '#f)
                                            (##unchecked-structure-set!
                                             _ctx13991_
                                             _body13995_
                                             '11
                                             gx#module-context::t
                                             '#f)
                                            (gx#core-bind-syntax!__0
                                             _id13987_
                                             _ctx13991_)
                                            (gx#core-quote-syntax__1
                                             (gx#core-list
                                              '%#module
                                              (gx#core-quote-syntax__0
                                               _id13987_)
                                              _body13995_)
                                             (gx#stx-source _stx13950_)))
                                          (_E1395513967_)))))
                                (_E1395513967_))))
                        (_E1395513967_)))))
            (_E1395413999_)))))
    (define gx#core-expand-module-begin
      (lambda (_body13916_ _ctx13917_)
        (call-with-parameters
         (lambda ()
           (gx#core-bind-feature!__1 'gerbil-module '#t)
           (let* ((_stx13920_
                   (gx#core-expand-head (cons '%%begin-module _body13916_)))
                  (_e1392113928_ _stx13920_)
                  (_E1392313932_
                   (lambda ()
                     (gx#raise-syntax-error
                      '#f
                      '"Illegal module body expansion"
                      _stx13920_)))
                  (_E1392213946_
                   (lambda ()
                     (if (gx#stx-pair? _e1392113928_)
                         (let ((_e1392413936_ (gx#syntax-e _e1392113928_)))
                           (let ((_hd1392513939_ (##car _e1392413936_))
                                 (_tl1392613941_ (##cdr _e1392413936_)))
                             (if (and (gx#identifier? _hd1392513939_)
                                      (gx#core-identifier=?
                                       _hd1392513939_
                                       '%#begin-module))
                                 (let ((_body13944_ _tl1392613941_))
                                   (if '#t
                                       (if (gx#sealed-syntax? _stx13920_)
                                           _body13944_
                                           (gx#core-expand-module-body
                                            _body13944_))
                                       (_E1392313932_)))
                                 (_E1392313932_))))
                         (_E1392313932_)))))
             (_E1392213946_)))
         gx#current-expander-context
         _ctx13917_
         gx#current-expander-phi
         '0)))
    (define gx#core-expand-module-body
      (lambda (_body13712_)
        (letrec ((_expand-special13714_
                  (lambda (_hd13843_ _K13844_ _rest13845_ _r13846_)
                    (let* ((_e1384713864_ _hd13843_)
                           (_E1385913868_
                            (lambda ()
                              (_K13844_
                               _rest13845_
                               (cons (gx#core-expand-top _hd13843_)
                                     _r13846_))))
                           (_E1384913880_
                            (lambda ()
                              (if (gx#stx-pair? _e1384713864_)
                                  (let ((_e1386013872_
                                         (gx#syntax-e _e1384713864_)))
                                    (let ((_hd1386113875_
                                           (##car _e1386013872_))
                                          (_tl1386213877_
                                           (##cdr _e1386013872_)))
                                      (if (and (gx#identifier? _hd1386113875_)
                                               (gx#core-identifier=?
                                                _hd1386113875_
                                                '%#export))
                                          (if '#t
                                              (_K13844_
                                               _rest13845_
                                               (cons _hd13843_ _r13846_))
                                              (_E1385913868_))
                                          (_E1385913868_))))
                                  (_E1385913868_))))
                           (_E1384813912_
                            (lambda ()
                              (if (gx#stx-pair? _e1384713864_)
                                  (let ((_e1385013884_
                                         (gx#syntax-e _e1384713864_)))
                                    (let ((_hd1385113887_
                                           (##car _e1385013884_))
                                          (_tl1385213889_
                                           (##cdr _e1385013884_)))
                                      (if (and (gx#identifier? _hd1385113887_)
                                               (gx#core-identifier=?
                                                _hd1385113887_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl1385213889_)
                                              (let ((_e1385313892_
                                                     (gx#syntax-e
                                                      _tl1385213889_)))
                                                (let ((_hd1385413895_
                                                       (##car _e1385313892_))
                                                      (_tl1385513897_
                                                       (##cdr _e1385313892_)))
                                                  (let ((_hd-bind13900_
                                                         _hd1385413895_))
                                                    (if (gx#stx-pair?
                                                         _tl1385513897_)
                                                        (let ((_e1385613902_
                                                               (gx#syntax-e
                                                                _tl1385513897_)))
                                                          (let ((_hd1385713905_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1385613902_))
                        (_tl1385813907_ (##cdr _e1385613902_)))
                    (let ((_expr13910_ _hd1385713905_))
                      (if (gx#stx-null? _tl1385813907_)
                          (if (gx#core-bind-values? _hd-bind13900_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind13900_)
                                (_K13844_
                                 _rest13845_
                                 (cons _hd13843_ _r13846_)))
                              (_E1384913880_))
                          (_E1384913880_)))))
                (_E1384913880_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E1384913880_))
                                          (_E1384913880_))))
                                  (_E1384913880_)))))
                      (_E1384813912_))))
                 (_expand-body13715_
                  (lambda (_rbody13717_)
                    (let _lp13719_ ((_rest13721_ _rbody13717_)
                                    (_body13722_ '()))
                      (let* ((_rest1372313731_ _rest13721_)
                             (_else1372513739_ (lambda () _body13722_))
                             (_K1372713831_
                              (lambda (_rest13742_ _hd13743_)
                                (let* ((_e1374413765_ _hd13743_)
                                       (_E1376013769_
                                        (lambda ()
                                          (_lp13719_
                                           _rest13742_
                                           (cons (gx#core-expand-expression
                                                  _hd13743_)
                                                 _body13722_))))
                                       (_E1375613783_
                                        (lambda ()
                                          (if (gx#stx-pair? _e1374413765_)
                                              (let ((_e1376113773_
                                                     (gx#syntax-e
                                                      _e1374413765_)))
                                                (let ((_hd1376213776_
                                                       (##car _e1376113773_))
                                                      (_tl1376313778_
                                                       (##cdr _e1376113773_)))
                                                  (let ((_form13781_
                                                         _hd1376213776_))
                                                    (if (gx#core-bound-identifier?__%
                                                         _form13781_
                                                         gx#special-form-binding?)
                                                        (_lp13719_
                                                         _rest13742_
                                                         (cons _hd13743_
                                                               _body13722_))
                                                        (_E1376013769_)))))
                                              (_E1376013769_))))
                                       (_E1374613795_
                                        (lambda ()
                                          (if (gx#stx-pair? _e1374413765_)
                                              (let ((_e1375713787_
                                                     (gx#syntax-e
                                                      _e1374413765_)))
                                                (let ((_hd1375813790_
                                                       (##car _e1375713787_))
                                                      (_tl1375913792_
                                                       (##cdr _e1375713787_)))
                                                  (if (and (gx#identifier?
                                                            _hd1375813790_)
                                                           (gx#core-identifier=?
                                                            _hd1375813790_
                                                            '%#export))
                                                      (if '#t
                                                          (_lp13719_
                                                           _rest13742_
                                                           (cons (gx#core-expand-export%__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd13743_)
                         _body13722_))
                  (_E1375613783_))
              (_E1375613783_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E1375613783_))))
                                       (_E1374513827_
                                        (lambda ()
                                          (if (gx#stx-pair? _e1374413765_)
                                              (let ((_e1374713799_
                                                     (gx#syntax-e
                                                      _e1374413765_)))
                                                (let ((_hd1374813802_
                                                       (##car _e1374713799_))
                                                      (_tl1374913804_
                                                       (##cdr _e1374713799_)))
                                                  (if (and (gx#identifier?
                                                            _hd1374813802_)
                                                           (gx#core-identifier=?
                                                            _hd1374813802_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _tl1374913804_)
                                                          (let ((_e1375013807_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl1374913804_)))
                    (let ((_hd1375113810_ (##car _e1375013807_))
                          (_tl1375213812_ (##cdr _e1375013807_)))
                      (let ((_hd-bind13815_ _hd1375113810_))
                        (if (gx#stx-pair? _tl1375213812_)
                            (let ((_e1375313817_ (gx#syntax-e _tl1375213812_)))
                              (let ((_hd1375413820_ (##car _e1375313817_))
                                    (_tl1375513822_ (##cdr _e1375313817_)))
                                (let ((_expr13825_ _hd1375413820_))
                                  (if (gx#stx-null? _tl1375513822_)
                                      (if '#t
                                          (_lp13719_
                                           _rest13742_
                                           (cons (gx#core-quote-syntax__1
                                                  (gx#core-list
                                                   '%#define-values
                                                   (gx#core-quote-bind-values
                                                    _hd-bind13815_)
                                                   (gx#core-expand-expression
                                                    _expr13825_))
                                                  (gx#stx-source _hd13743_))
                                                 _body13722_))
                                          (_E1374613795_))
                                      (_E1374613795_)))))
                            (_E1374613795_)))))
                  (_E1374613795_))
              (_E1374613795_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E1374613795_)))))
                                  (_E1374513827_)))))
                        (if (##pair? _rest1372313731_)
                            (let ((_hd1372813834_ (##car _rest1372313731_))
                                  (_tl1372913836_ (##cdr _rest1372313731_)))
                              (let* ((_hd13839_ _hd1372813834_)
                                     (_rest13841_ _tl1372913836_))
                                (_K1372713831_ _rest13841_ _hd13839_)))
                            (_else1372513739_)))))))
          (_expand-body13715_
           (gx#core-expand-block__%
            (cons '%#begin-module _body13712_)
            _expand-special13714_
            '#f
            values)))))
    (define gx#core-expand-import/export
      (lambda (_stx13555_
               _expanded?13556_
               _method13557_
               _current-phi13558_
               _expand113559_)
        (letrec ((_K13561_
                  (lambda (_rest13679_ _r13680_)
                    (let* ((_e1368113688_ _rest13679_)
                           (_E1368313692_ (lambda () _r13680_))
                           (_E1368213708_
                            (lambda ()
                              (if (gx#stx-pair? _e1368113688_)
                                  (let ((_e1368413696_
                                         (gx#syntax-e _e1368113688_)))
                                    (let ((_hd1368513699_
                                           (##car _e1368413696_))
                                          (_tl1368613701_
                                           (##cdr _e1368413696_)))
                                      (let* ((_hd13704_ _hd1368513699_)
                                             (_rest13706_ _tl1368613701_))
                                        (if '#t
                                            (_step13562_
                                             _hd13704_
                                             _rest13706_
                                             _r13680_)
                                            (_E1368313692_)))))
                                  (_E1368313692_)))))
                      (_E1368213708_))))
                 (_step13562_
                  (lambda (_hd13593_ _rest13594_ _r13595_)
                    (let* ((_e1359613614_ _hd13593_)
                           (_E1360913618_
                            (lambda ()
                              (if (_expanded?13556_ (gx#stx-e _hd13593_))
                                  (_K13561_
                                   _rest13594_
                                   (cons (gx#stx-e _hd13593_) _r13595_))
                                  (_expand113559_
                                   _hd13593_
                                   _K13561_
                                   _rest13594_
                                   _r13595_))))
                           (_E1360513634_
                            (lambda ()
                              (if (gx#stx-pair? _e1359613614_)
                                  (let ((_e1361013622_
                                         (gx#syntax-e _e1359613614_)))
                                    (let ((_hd1361113625_
                                           (##car _e1361013622_))
                                          (_tl1361213627_
                                           (##cdr _e1361013622_)))
                                      (let* ((_macro13630_ _hd1361113625_)
                                             (_body13632_ _tl1361213627_))
                                        (if (gx#core-bound-identifier?__%
                                             _macro13630_
                                             gx#syntax-binding?)
                                            (_K13561_
                                             (cons (gx#core-apply-expander__%
                                                    (gx#syntax-local-e__0
                                                     _macro13630_)
                                                    _hd13593_
                                                    _method13557_)
                                                   _rest13594_)
                                             _r13595_)
                                            (_E1360913618_)))))
                                  (_E1360913618_))))
                           (_E1359813648_
                            (lambda ()
                              (if (gx#stx-pair? _e1359613614_)
                                  (let ((_e1360613638_
                                         (gx#syntax-e _e1359613614_)))
                                    (let ((_hd1360713641_
                                           (##car _e1360613638_))
                                          (_tl1360813643_
                                           (##cdr _e1360613638_)))
                                      (if (eq? (gx#stx-e _hd1360713641_)
                                               'begin:)
                                          (let ((_body13646_ _tl1360813643_))
                                            (if '#t
                                                (_K13561_
                                                 (gx#stx-foldr
                                                  cons
                                                  _rest13594_
                                                  _body13646_)
                                                 _r13595_)
                                                (_E1360513634_)))
                                          (_E1360513634_))))
                                  (_E1360513634_))))
                           (_E1359713675_
                            (lambda ()
                              (if (gx#stx-pair? _e1359613614_)
                                  (let ((_e1359913652_
                                         (gx#syntax-e _e1359613614_)))
                                    (let ((_hd1360013655_
                                           (##car _e1359913652_))
                                          (_tl1360113657_
                                           (##cdr _e1359913652_)))
                                      (if (eq? (gx#stx-e _hd1360013655_) 'phi:)
                                          (if (gx#stx-pair? _tl1360113657_)
                                              (let ((_e1360213660_
                                                     (gx#syntax-e
                                                      _tl1360113657_)))
                                                (let ((_hd1360313663_
                                                       (##car _e1360213660_))
                                                      (_tl1360413665_
                                                       (##cdr _e1360213660_)))
                                                  (let* ((_dphi13668_
                                                          _hd1360313663_)
                                                         (_body13670_
                                                          _tl1360413665_))
                                                    (if (gx#stx-fixnum?
                                                         _dphi13668_)
                                                        (let ((_rbody13673_
                                                               (call-with-parameters
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_K13561_ _body13670_ '()))
                        _current-phi13558_
                        (fx+ (gx#stx-e _dphi13668_) (_current-phi13558_)))))
                  (_K13561_ _rest13594_ (foldr1 cons _r13595_ _rbody13673_)))
                (_E1359813648_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E1359813648_))
                                          (_E1359813648_))))
                                  (_E1359813648_)))))
                      (_E1359713675_)))))
          (let* ((_e1356313570_ _stx13555_)
                 (_E1356513574_
                  (lambda ()
                    (gx#raise-syntax-error '#f '"Bad syntax" _e1356313570_)))
                 (_E1356413589_
                  (lambda ()
                    (if (gx#stx-pair? _e1356313570_)
                        (let ((_e1356613578_ (gx#syntax-e _e1356313570_)))
                          (let ((_hd1356713581_ (##car _e1356613578_))
                                (_tl1356813583_ (##cdr _e1356613578_)))
                            (let ((_body13586_ _tl1356813583_))
                              (if '#t
                                  (if (_current-phi13558_)
                                      (_K13561_ _body13586_ '())
                                      (call-with-parameters
                                       (lambda () (_K13561_ _body13586_ '()))
                                       _current-phi13558_
                                       (gx#current-expander-phi)))
                                  (_E1356513574_)))))
                        (_E1356513574_)))))
            (_E1356413589_)))))
    (define gx#core-expand-import%__%
      (lambda (_stx13222_ _internal-expand?13223_)
        (letrec ((_expand113225_
                  (lambda (_hd13535_ _K13536_ _rest13537_ _r13538_)
                    (if (gx#core-bound-module? _hd13535_)
                        (_import113226_
                         (gx#syntax-local-e__0 _hd13535_)
                         _K13536_
                         _rest13537_
                         _r13538_)
                        (if (gx#core-library-module-path? _hd13535_)
                            (_import113226_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path _hd13535_))
                             _K13536_
                             _rest13537_
                             _r13538_)
                            (if (gx#core-library-relative-module-path?
                                 _hd13535_)
                                (_import113226_
                                 (gx#import-module__0
                                  (gx#core-resolve-library-relative-module-path
                                   _hd13535_))
                                 _K13536_
                                 _rest13537_
                                 _r13538_)
                                (let ((_e13540_ (gx#stx-e _hd13535_)))
                                  (if (pair? _e13540_)
                                      (let ((_$e13542_
                                             (gx#stx-e (car _e13540_))))
                                        (if (eq? 'spec: _$e13542_)
                                            (_import-spec13229_
                                             _hd13535_
                                             _K13536_
                                             _rest13537_
                                             _r13538_)
                                            (if (eq? 'in: _$e13542_)
                                                (_import-submodule13227_
                                                 _hd13535_
                                                 _K13536_
                                                 _rest13537_
                                                 _r13538_)
                                                (if (eq? 'runtime: _$e13542_)
                                                    (_import-runtime13228_
                                                     _hd13535_
                                                     _K13536_
                                                     _rest13537_
                                                     _r13538_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; illegal import"
                                                     _stx13222_
                                                     _hd13535_)))))
                                      (if (string? _e13540_)
                                          (_import113226_
                                           (gx#import-module__0
                                            (gx#core-resolve-module-path__%
                                             _hd13535_
                                             (gx#stx-source _stx13222_)))
                                           _K13536_
                                           _rest13537_
                                           _r13538_)
                                          (if (##structure-instance-of?
                                               _e13540_
                                               'gx#module-context::t)
                                              (_K13536_
                                               _rest13537_
                                               (cons _e13540_ _r13538_))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; illegal import"
                                               _stx13222_
                                               _hd13535_))))))))))
                 (_import113226_
                  (lambda (_ctx13524_ _K13525_ _rest13526_ _r13527_)
                    (let ((_dphi13529_
                           (fx- (gx#current-import-expander-phi)
                                (gx#current-expander-phi))))
                      (_K13525_
                       _rest13526_
                       (cons (##structure
                              gx#import-set::t
                              _ctx13524_
                              _dphi13529_
                              (map (lambda (_g1353013532_)
                                     (gx#core-module-export->import__%
                                      _g1353013532_
                                      '#f
                                      _dphi13529_))
                                   (##unchecked-structure-ref
                                    _ctx13524_
                                    '9
                                    gx#module-context::t
                                    '#f)))
                             _r13527_)))))
                 (_import-submodule13227_
                  (lambda (_hd13491_ _K13492_ _rest13493_ _r13494_)
                    (let* ((_e1349513502_ _hd13491_)
                           (_E1349713506_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _e1349513502_)))
                           (_E1349613520_
                            (lambda ()
                              (if (gx#stx-pair? _e1349513502_)
                                  (let ((_e1349813510_
                                         (gx#syntax-e _e1349513502_)))
                                    (let ((_hd1349913513_
                                           (##car _e1349813510_))
                                          (_tl1350013515_
                                           (##cdr _e1349813510_)))
                                      (let ((_spath13518_ _tl1350013515_))
                                        (if '#t
                                            (_import113226_
                                             (_import-spec-source13230_
                                              _spath13518_)
                                             _K13492_
                                             _rest13493_
                                             _r13494_)
                                            (_E1349713506_)))))
                                  (_E1349713506_)))))
                      (_E1349613520_))))
                 (_import-runtime13228_
                  (lambda (_hd13458_ _K13459_ _rest13460_ _r13461_)
                    (let* ((_e1346213469_ _hd13458_)
                           (_E1346413473_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _e1346213469_)))
                           (_E1346313487_
                            (lambda ()
                              (if (gx#stx-pair? _e1346213469_)
                                  (let ((_e1346513477_
                                         (gx#syntax-e _e1346213469_)))
                                    (let ((_hd1346613480_
                                           (##car _e1346513477_))
                                          (_tl1346713482_
                                           (##cdr _e1346513477_)))
                                      (let ((_spath13485_ _tl1346713482_))
                                        (if '#t
                                            (_K13459_
                                             _rest13460_
                                             (cons (_import-spec-source13230_
                                                    _spath13485_)
                                                   _r13461_))
                                            (_E1346413473_)))))
                                  (_E1346413473_)))))
                      (_E1346313487_))))
                 (_import-spec13229_
                  (lambda (_hd13297_ _K13298_ _rest13299_ _r13300_)
                    (let* ((_e1330113318_ _hd13297_)
                           (_E1331013322_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _e1330113318_)))
                           (_E1330313432_
                            (lambda ()
                              (if (gx#stx-pair? _e1330113318_)
                                  (let ((_e1331113326_
                                         (gx#syntax-e _e1330113318_)))
                                    (let ((_hd1331213329_
                                           (##car _e1331113326_))
                                          (_tl1331313331_
                                           (##cdr _e1331113326_)))
                                      (if (gx#stx-pair? _tl1331313331_)
                                          (let ((_e1331413334_
                                                 (gx#syntax-e _tl1331313331_)))
                                            (let ((_hd1331513337_
                                                   (##car _e1331413334_))
                                                  (_tl1331613339_
                                                   (##cdr _e1331413334_)))
                                              (let* ((_path13342_
                                                      _hd1331513337_)
                                                     (_specs13344_
                                                      _tl1331613339_))
                                                (if '#t
                                                    (let ((_src-ctx13346_
                                                           (_import-spec-source13230_
                                                            _path13342_))
                                                          (_exports13347_
                                                           (make-table))
                                                          (_specs13348_
                                                           (gx#syntax->list
                                                            _specs13344_)))
                                                      (for-each
                                                       (lambda (_out13350_)
                                                         (table-set!
                                                          _exports13347_
                                                          (cons (##unchecked-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _out13350_
                         '3
                         gx#module-export::t
                         '#f)
                        (##unchecked-structure-ref
                         _out13350_
                         '4
                         gx#module-export::t
                         '#f))
                  _out13350_))
               (##unchecked-structure-ref
                _src-ctx13346_
                '9
                gx#module-context::t
                '#f))
              (_K13298_
               _rest13299_
               (foldl1 (lambda (_spec13352_ _r13353_)
                         (let* ((_e1335413370_ _spec13352_)
                                (_E1335613374_
                                 (lambda ()
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _e1335413370_)))
                                (_E1335513428_
                                 (lambda ()
                                   (if (gx#stx-pair? _e1335413370_)
                                       (let ((_e1335713378_
                                              (gx#syntax-e _e1335413370_)))
                                         (let ((_hd1335813381_
                                                (##car _e1335713378_))
                                               (_tl1335913383_
                                                (##cdr _e1335713378_)))
                                           (let ((_phi13386_ _hd1335813381_))
                                             (if (gx#stx-pair? _tl1335913383_)
                                                 (let ((_e1336013388_
                                                        (gx#syntax-e
                                                         _tl1335913383_)))
                                                   (let ((_hd1336113391_
                                                          (##car _e1336013388_))
                                                         (_tl1336213393_
                                                          (##cdr _e1336013388_)))
                                                     (let ((_name13396_
                                                            _hd1336113391_))
                                                       (if (gx#stx-pair?
                                                            _tl1336213393_)
                                                           (let ((_e1336313398_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl1336213393_)))
                     (let ((_hd1336413401_ (##car _e1336313398_))
                           (_tl1336513403_ (##cdr _e1336313398_)))
                       (let ((_src-phi13406_ _hd1336413401_))
                         (if (gx#stx-pair? _tl1336513403_)
                             (let ((_e1336613408_
                                    (gx#syntax-e _tl1336513403_)))
                               (let ((_hd1336713411_ (##car _e1336613408_))
                                     (_tl1336813413_ (##cdr _e1336613408_)))
                                 (let ((_src-name13416_ _hd1336713411_))
                                   (if (gx#stx-null? _tl1336813413_)
                                       (if (and (gx#stx-fixnum? _src-phi13406_)
                                                (gx#identifier?
                                                 _src-name13416_)
                                                (gx#stx-fixnum? _phi13386_)
                                                (gx#identifier? _name13396_))
                                           (let ((_src-phi13418_
                                                  (gx#stx-e _src-phi13406_))
                                                 (_src-name13419_
                                                  (gx#core-identifier-key
                                                   _src-name13416_))
                                                 (_phi13420_
                                                  (gx#stx-e _phi13386_))
                                                 (_name13421_
                                                  (gx#core-identifier-key
                                                   _name13396_)))
                                             (let ((_$e13423_
                                                    (table-ref
                                                     _exports13347_
                                                     (cons _src-phi13418_
                                                           _src-name13419_)
                                                     '#f)))
                                               (if _$e13423_
                                                   ((lambda (_out13426_)
                                                      (cons (gx#core-module-export->import__%
                                                             _out13426_
                                                             _name13421_
                                                             (fx- _phi13420_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _src-phi13418_))
                    _r13353_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _$e13423_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; no matching export"
                                                    _stx13222_
                                                    _hd13297_))))
                                           (_E1335613374_))
                                       (_E1335613374_)))))
                             (_E1335613374_)))))
                   (_E1335613374_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_E1335613374_)))))
                                       (_E1335613374_)))))
                           (_E1335513428_)))
                       _r13300_
                       _specs13348_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1331013322_)))))
                                          (_E1331013322_))))
                                  (_E1331013322_))))
                           (_E1330213454_
                            (lambda ()
                              (if (gx#stx-pair? _e1330113318_)
                                  (let ((_e1330413436_
                                         (gx#syntax-e _e1330113318_)))
                                    (let ((_hd1330513439_
                                           (##car _e1330413436_))
                                          (_tl1330613441_
                                           (##cdr _e1330413436_)))
                                      (if (gx#stx-pair? _tl1330613441_)
                                          (let ((_e1330713444_
                                                 (gx#syntax-e _tl1330613441_)))
                                            (let ((_hd1330813447_
                                                   (##car _e1330713444_))
                                                  (_tl1330913449_
                                                   (##cdr _e1330713444_)))
                                              (let ((_path13452_
                                                     _hd1330813447_))
                                                (if (gx#stx-null?
                                                     _tl1330913449_)
                                                    (if '#t
                                                        (_K13298_
                                                         _rest13299_
                                                         (cons (_import-spec-source13230_
                                                                _path13452_)
                                                               _r13300_))
                                                        (_E1330313432_))
                                                    (_E1330313432_)))))
                                          (_E1330313432_))))
                                  (_E1330313432_)))))
                      (_E1330213454_))))
                 (_import-spec-source13230_
                  (lambda (_spath13295_)
                    (gx#core-import-nested-module _spath13295_ _stx13222_)))
                 (_import!13231_
                  (lambda (_rbody13244_)
                    (letrec* ((_current-ctx13246_
                               (gx#current-expander-context))
                              (_deps13247_ (make-table 'test: eq?))
                              (_bind!13248_
                               (lambda (_hd13293_)
                                 (gx#core-bind-import!__1
                                  _hd13293_
                                  _current-ctx13246_))))
                      (let _lp13250_ ((_rest13252_ _rbody13244_)
                                      (_body13253_ '()))
                        (let* ((_rest1325413262_ _rest13252_)
                               (_else1325613272_
                                (lambda ()
                                  (if (##structure-instance-of?
                                       _current-ctx13246_
                                       'gx#module-context::t)
                                      (##unchecked-structure-set!
                                       _current-ctx13246_
                                       (foldl1 cons
                                               (##unchecked-structure-ref
                                                _current-ctx13246_
                                                '8
                                                gx#module-context::t
                                                '#f)
                                               _body13253_)
                                       '8
                                       gx#module-context::t
                                       '#f)
                                      '#!void)
                                  (table-for-each
                                   (lambda (_ctx13270_ _g16086_)
                                     (gx#eval-module _ctx13270_))
                                   _deps13247_)
                                  _body13253_))
                               (_K1325813281_
                                (lambda (_rest13275_ _hd13276_)
                                  (if (##structure-direct-instance-of?
                                       _hd13276_
                                       'gx#module-import::t)
                                      (begin
                                        (_bind!13248_ _hd13276_)
                                        (if (and (fxpositive?
                                                  (##unchecked-structure-ref
                                                   _hd13276_
                                                   '3
                                                   gx#module-import::t
                                                   '#f))
                                                 (fxzero? (##unchecked-structure-ref
                                                           (##unchecked-structure-ref
                                                            _hd13276_
                                                            '1
                                                            gx#module-import::t
                                                            '#f)
                                                           '3
                                                           gx#module-export::t
                                                           '#f)))
                                            (table-set!
                                             _deps13247_
                                             (##unchecked-structure-ref
                                              (##unchecked-structure-ref
                                               _hd13276_
                                               '1
                                               gx#module-import::t
                                               '#f)
                                              '1
                                              gx#module-export::t
                                              '#f)
                                             '#t)
                                            '#!void))
                                      (if (##structure-direct-instance-of?
                                           _hd13276_
                                           'gx#import-set::t)
                                          (begin
                                            (for-each
                                             _bind!13248_
                                             (##unchecked-structure-ref
                                              _hd13276_
                                              '3
                                              gx#import-set::t
                                              '#f))
                                            (if (fxpositive?
                                                 (##unchecked-structure-ref
                                                  _hd13276_
                                                  '2
                                                  gx#import-set::t
                                                  '#f))
                                                (table-set!
                                                 _deps13247_
                                                 (##unchecked-structure-ref
                                                  _hd13276_
                                                  '1
                                                  gx#import-set::t
                                                  '#f)
                                                 '#t)
                                                '#!void))
                                          (let ((_$e13278_
                                                 (##structure-instance-of?
                                                  _hd13276_
                                                  'gx#module-context::t)))
                                            (if _$e13278_
                                                _$e13278_
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Unexpected import"
                                                 _stx13222_
                                                 _hd13276_)))))
                                  (_lp13250_
                                   _rest13275_
                                   (cons _hd13276_ _body13253_)))))
                          (if (##pair? _rest1325413262_)
                              (let ((_hd1325913284_ (##car _rest1325413262_))
                                    (_tl1326013286_ (##cdr _rest1325413262_)))
                                (let* ((_hd13289_ _hd1325913284_)
                                       (_rest13291_ _tl1326013286_))
                                  (_K1325813281_ _rest13291_ _hd13289_)))
                              (_else1325613272_)))))))
                 (_expanded-import?13232_
                  (lambda (_e13236_)
                    (let ((_$e13238_
                           (##structure-direct-instance-of?
                            _e13236_
                            'gx#import-set::t)))
                      (if _$e13238_
                          _$e13238_
                          (let ((_$e13241_
                                 (##structure-direct-instance-of?
                                  _e13236_
                                  'gx#module-import::t)))
                            (if _$e13241_
                                _$e13241_
                                (##structure-instance-of?
                                 _e13236_
                                 'gx#module-context::t))))))))
          (let ((_rbody13234_
                 (gx#core-expand-import/export
                  _stx13222_
                  _expanded-import?13232_
                  'apply-import-expander
                  gx#current-import-expander-phi
                  _expand113225_)))
            (if _internal-expand?13223_
                (reverse _rbody13234_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#import (_import!13231_ _rbody13234_))
                 (gx#stx-source _stx13222_)))))))
    (define gx#core-expand-import%__0
      (lambda (_stx13548_)
        (let ((_internal-expand?13550_ '#f))
          (gx#core-expand-import%__% _stx13548_ _internal-expand?13550_))))
    (define gx#core-expand-import%
      (lambda _g16088_
        (let ((_g16087_ (##length _g16088_)))
          (cond ((##fx= _g16087_ 1) (apply gx#core-expand-import%__0 _g16088_))
                ((##fx= _g16087_ 2) (apply gx#core-expand-import%__% _g16088_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-import%
                  _g16088_))))))
    (define gx#core-import-nested-module
      (lambda (_spath13149_ _where13150_)
        (let* ((_e1315113158_ _spath13149_)
               (_E1315313162_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1315113158_)))
               (_E1315213217_
                (lambda ()
                  (if (gx#stx-pair? _e1315113158_)
                      (let ((_e1315413166_ (gx#syntax-e _e1315113158_)))
                        (let ((_hd1315513169_ (##car _e1315413166_))
                              (_tl1315613171_ (##cdr _e1315413166_)))
                          (let* ((_origin13174_ _hd1315513169_)
                                 (_sub13176_ _tl1315613171_))
                            (if '#t
                                (let ((_origin-ctx13178_
                                       (if (gx#stx-false? _origin13174_)
                                           (gx#current-expander-context)
                                           (gx#import-module__0
                                            _origin13174_))))
                                  (let _lp13180_ ((_rest13182_ _sub13176_)
                                                  (_ctx13183_
                                                   _origin-ctx13178_))
                                    (let* ((_e1318413191_ _rest13182_)
                                           (_E1318613195_
                                            (lambda () _ctx13183_))
                                           (_E1318513213_
                                            (lambda ()
                                              (if (gx#stx-pair? _e1318413191_)
                                                  (let ((_e1318713199_
                                                         (gx#syntax-e
                                                          _e1318413191_)))
                                                    (let ((_hd1318813202_
                                                           (##car _e1318713199_))
                                                          (_tl1318913204_
                                                           (##cdr _e1318713199_)))
                                                      (let* ((_id13207_
                                                              _hd1318813202_)
                                                             (_rest13209_
                                                              _tl1318913204_))
                                                        (if '#t
                                                            (let ((_bind13211_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#resolve-identifier__% _id13207_ '0 _ctx13183_)))
                      (if (and (##structure-direct-instance-of?
                                _bind13211_
                                'gx#syntax-binding::t)
                               (##structure-instance-of?
                                (##unchecked-structure-ref
                                 _bind13211_
                                 '4
                                 gx#syntax-binding::t
                                 '#f)
                                'gx#module-context::t))
                          '#!void
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; not bound as module"
                           _where13150_
                           _spath13149_
                           _id13207_))
                      (_lp13180_
                       _rest13209_
                       (##unchecked-structure-ref
                        _bind13211_
                        '4
                        gx#syntax-binding::t
                        '#f)))
                    (_E1318613195_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1318613195_)))))
                                      (_E1318513213_))))
                                (_E1315313162_)))))
                      (_E1315313162_)))))
          (_E1315213217_))))
    (define gx#core-expand-import-source
      (lambda (_hd13147_)
        (gx#core-expand-import%__%
         (cons 'import-internal% (cons _hd13147_ '()))
         '#t)))
    (define gx#core-expand-export%__%
      (lambda (_stx12655_ _internal-expand?12656_)
        (letrec* ((_make-export__1602616027_
                   (lambda (_bind13095_ _phi13096_ _ctx13097_ _name13098_)
                     (let* ((_key13100_
                             (##unchecked-structure-ref
                              _bind13095_
                              '2
                              gx#binding::t
                              '#f))
                            (_export-key13102_
                             (if _name13098_
                                 (gx#core-identifier-key _name13098_)
                                 _key13100_)))
                       (##structure
                        gx#module-export::t
                        _ctx13097_
                        _key13100_
                        _phi13096_
                        _export-key13102_
                        (let ((_$e13105_
                               (##structure-instance-of?
                                _bind13095_
                                'gx#extern-binding::t)))
                          (if _$e13105_
                              _$e13105_
                              (##structure-direct-instance-of?
                               _bind13095_
                               'gx#import-binding::t)))))))
                  (_make-export__0__1602816031_
                   (lambda (_bind13111_)
                     (let* ((_phi13113_ (gx#current-export-expander-phi))
                            (_ctx13115_ (gx#current-expander-context))
                            (_name13117_ '#f))
                       (_make-export__1602616027_
                        _bind13111_
                        _phi13113_
                        _ctx13115_
                        _name13117_))))
                  (_make-export__1__1602916032_
                   (lambda (_bind13119_ _phi13120_)
                     (let* ((_ctx13122_ (gx#current-expander-context))
                            (_name13124_ '#f))
                       (_make-export__1602616027_
                        _bind13119_
                        _phi13120_
                        _ctx13122_
                        _name13124_))))
                  (_make-export__2__1603016033_
                   (lambda (_bind13126_ _phi13127_ _ctx13128_)
                     (let ((_name13130_ '#f))
                       (_make-export__1602616027_
                        _bind13126_
                        _phi13127_
                        _ctx13128_
                        _name13130_))))
                  (_make-export12658_
                   (lambda _g16090_
                     (let ((_g16089_ (##length _g16090_)))
                       (cond ((##fx= _g16089_ 1)
                              (apply _make-export__0__1602816031_ _g16090_))
                             ((##fx= _g16089_ 2)
                              (apply _make-export__1__1602916032_ _g16090_))
                             ((##fx= _g16089_ 3)
                              (apply _make-export__2__1603016033_ _g16090_))
                             ((##fx= _g16089_ 4)
                              (apply _make-export__1602616027_ _g16090_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g16090_))))))
                  (_expand112659_
                   (lambda (_hd12808_ _K12809_ _rest12810_ _r12811_)
                     (let* ((_e1281212844_ _hd12808_)
                            (_E1283912848_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal export"
                                _stx12655_
                                _hd12808_)))
                            (_E1282912927_
                             (lambda ()
                               (if (gx#stx-pair? _e1281212844_)
                                   (let ((_e1284012852_
                                          (gx#syntax-e _e1281212844_)))
                                     (let ((_hd1284112855_
                                            (##car _e1284012852_))
                                           (_tl1284212857_
                                            (##cdr _e1284012852_)))
                                       (if (eq? (gx#stx-e _hd1284112855_)
                                                'import:)
                                           (let ((_in12860_ _tl1284212857_))
                                             (if (gx#stx-list? _in12860_)
                                                 (let _lp12862_ ((_in-rest12864_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _in12860_)
                         (_r12865_ _r12811_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_e1286612873_
                                                           _in-rest12864_)
                                                          (_E1286812877_
                                                           (lambda ()
                                                             (_K12809_
                                                              _rest12810_
                                                              _r12865_)))
                                                          (_E1286712923_
                                                           (lambda ()
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _e1286612873_)
                         (let ((_e1286912881_ (gx#syntax-e _e1286612873_)))
                           (let ((_hd1287012884_ (##car _e1286912881_))
                                 (_tl1287112886_ (##cdr _e1286912881_)))
                             (let* ((_hd12889_ _hd1287012884_)
                                    (_in-rest12891_ _tl1287112886_))
                               (if '#t
                                   (let ((_src12921_
                                          (if (gx#core-bound-module? _hd12889_)
                                              (gx#syntax-local-e__0 _hd12889_)
                                              (if (gx#core-library-module-path?
                                                   _hd12889_)
                                                  (gx#import-module__0
                                                   (gx#core-resolve-library-module-path
                                                    _hd12889_))
                                                  (if (gx#core-library-relative-module-path?
                                                       _hd12889_)
                                                      (gx#import-module__0
                                                       (gx#core-resolve-library-relative-module-path
                                                        _hd12889_))
                                                      (if (gx#stx-string?
                                                           _hd12889_)
                                                          (gx#import-module__0
                                                           (gx#core-resolve-module-path__%
                                                            _hd12889_
                                                            (gx#stx-source
                                                             _stx12655_)))
                                                          (let* ((_e1289212899_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd12889_)
                         (_E1289412903_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; illegal re-export"
                             _stx12655_
                             _hd12889_)))
                         (_E1289312917_
                          (lambda ()
                            (if (gx#stx-pair? _e1289212899_)
                                (let ((_e1289512907_
                                       (gx#syntax-e _e1289212899_)))
                                  (let ((_hd1289612910_ (##car _e1289512907_))
                                        (_tl1289712912_ (##cdr _e1289512907_)))
                                    (if (eq? (gx#stx-e _hd1289612910_) 'in:)
                                        (let ((_spath12915_ _tl1289712912_))
                                          (if '#t
                                              (gx#core-import-nested-module
                                               _spath12915_
                                               _stx12655_)
                                              (_E1289412903_)))
                                        (_E1289412903_))))
                                (_E1289412903_)))))
                    (_E1289312917_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_lp12862_
                                      _in-rest12891_
                                      (_export-imports12660_
                                       _src12921_
                                       _r12865_)))
                                   (_E1286812877_)))))
                         (_E1286812877_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E1286712923_)))
                                                 (_E1283912848_)))
                                           (_E1283912848_))))
                                   (_E1283912848_))))
                            (_E1281612966_
                             (lambda ()
                               (if (gx#stx-pair? _e1281212844_)
                                   (let ((_e1283012931_
                                          (gx#syntax-e _e1281212844_)))
                                     (let ((_hd1283112934_
                                            (##car _e1283012931_))
                                           (_tl1283212936_
                                            (##cdr _e1283012931_)))
                                       (if (eq? (gx#stx-e _hd1283112934_)
                                                'rename:)
                                           (if (gx#stx-pair? _tl1283212936_)
                                               (let ((_e1283312939_
                                                      (gx#syntax-e
                                                       _tl1283212936_)))
                                                 (let ((_hd1283412942_
                                                        (##car _e1283312939_))
                                                       (_tl1283512944_
                                                        (##cdr _e1283312939_)))
                                                   (let ((_id12947_
                                                          _hd1283412942_))
                                                     (if (gx#stx-pair?
                                                          _tl1283512944_)
                                                         (let ((_e1283612949_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1283512944_)))
                   (let ((_hd1283712952_ (##car _e1283612949_))
                         (_tl1283812954_ (##cdr _e1283612949_)))
                     (let ((_name12957_ _hd1283712952_))
                       (if (gx#stx-null? _tl1283812954_)
                           (if '#t
                               (let* ((_phi12959_
                                       (gx#current-export-expander-phi))
                                      (_$e12961_
                                       (gx#core-resolve-identifier__1
                                        _id12947_
                                        _phi12959_)))
                                 (if _$e12961_
                                     ((lambda (_bind12964_)
                                        (_K12809_
                                         _rest12810_
                                         (cons (_make-export__1602616027_
                                                _bind12964_
                                                _phi12959_
                                                (gx#current-expander-context)
                                                _name12957_)
                                               _r12811_)))
                                      _$e12961_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Reference to unbound identifier"
                                      _stx12655_
                                      _hd12808_
                                      _id12947_)))
                               (_E1282912927_))
                           (_E1282912927_)))))
                 (_E1282912927_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E1282912927_))
                                           (_E1282912927_))))
                                   (_E1282912927_))))
                            (_E1281513015_
                             (lambda ()
                               (if (gx#stx-pair? _e1281212844_)
                                   (let ((_e1281712970_
                                          (gx#syntax-e _e1281212844_)))
                                     (let ((_hd1281812973_
                                            (##car _e1281712970_))
                                           (_tl1281912975_
                                            (##cdr _e1281712970_)))
                                       (if (eq? (gx#stx-e _hd1281812973_)
                                                'spec:)
                                           (if (gx#stx-pair? _tl1281912975_)
                                               (let ((_e1282012978_
                                                      (gx#syntax-e
                                                       _tl1281912975_)))
                                                 (let ((_hd1282112981_
                                                        (##car _e1282012978_))
                                                       (_tl1282212983_
                                                        (##cdr _e1282012978_)))
                                                   (let ((_phi12986_
                                                          _hd1282112981_))
                                                     (if (gx#stx-pair?
                                                          _tl1282212983_)
                                                         (let ((_e1282312988_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1282212983_)))
                   (let ((_hd1282412991_ (##car _e1282312988_))
                         (_tl1282512993_ (##cdr _e1282312988_)))
                     (let ((_id12996_ _hd1282412991_))
                       (if (gx#stx-pair? _tl1282512993_)
                           (let ((_e1282612998_ (gx#syntax-e _tl1282512993_)))
                             (let ((_hd1282713001_ (##car _e1282612998_))
                                   (_tl1282813003_ (##cdr _e1282612998_)))
                               (let ((_name13006_ _hd1282713001_))
                                 (if (gx#stx-null? _tl1282813003_)
                                     (if (and (gx#stx-fixnum? _phi12986_)
                                              (gx#identifier? _id12996_)
                                              (gx#identifier? _name13006_))
                                         (let* ((_phi13008_
                                                 (gx#stx-e _phi12986_))
                                                (_$e13010_
                                                 (gx#core-resolve-identifier__1
                                                  _id12996_
                                                  _phi13008_)))
                                           (if _$e13010_
                                               ((lambda (_bind13013_)
                                                  (_K12809_
                                                   _rest12810_
                                                   (cons (_make-export__1602616027_
                                                          _bind13013_
                                                          _phi13008_
                                                          (gx#current-expander-context)
                                                          _name13006_)
                                                         _r12811_)))
                                                _$e13010_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Reference to unbound identifier"
                                                _stx12655_
                                                _hd12808_
                                                _id12996_)))
                                         (_E1281612966_))
                                     (_E1281612966_)))))
                           (_E1281612966_)))))
                 (_E1281612966_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E1281612966_))
                                           (_E1281612966_))))
                                   (_E1281612966_))))
                            (_E1281413026_
                             (lambda ()
                               (let ((_id13019_ _e1281212844_))
                                 (if (gx#identifier? _id13019_)
                                     (let ((_$e13021_
                                            (gx#core-resolve-identifier__1
                                             _id13019_
                                             (gx#current-export-expander-phi))))
                                       (if _$e13021_
                                           ((lambda (_bind13024_)
                                              (_K12809_
                                               _rest12810_
                                               (cons (_make-export__0__1602816031_
                                                      _bind13024_)
                                                     _r12811_)))
                                            _$e13021_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Reference to unbound identifier"
                                            _stx12655_
                                            _hd12808_)))
                                     (_E1281513015_)))))
                            (_E1281313090_
                             (lambda ()
                               (if (eq? (gx#stx-e _e1281212844_) '#t)
                                   (if '#t
                                       (let* ((_current-ctx13030_
                                               (gx#current-expander-context))
                                              (_current-phi13032_
                                               (gx#current-export-expander-phi))
                                              (_phi-ctx13034_
                                               (gx#core-context-shift
                                                _current-ctx13030_
                                                _current-phi13032_))
                                              (_phi-bind13036_
                                               (table->list
                                                (##unchecked-structure-ref
                                                 _phi-ctx13034_
                                                 '2
                                                 gx#expander-context::t
                                                 '#f))))
                                         (let _lp13039_ ((_bind-rest13041_
                                                          _phi-bind13036_)
                                                         (_set13042_ '()))
                                           (let* ((_bind-rest1304313053_
                                                   _bind-rest13041_)
                                                  (_else1304513061_
                                                   (lambda ()
                                                     (_K12809_
                                                      _rest12810_
                                                      (cons (##structure
                                                             gx#export-set::t
                                                             '#f
                                                             _current-phi13032_
                                                             _set13042_)
                                                            _r12811_))))
                                                  (_K1304713071_
                                                   (lambda (_bind-rest13064_
                                                            _bind13065_
                                                            _key13066_)
                                                     (if (or (##structure-direct-instance-of?
                                                              _bind13065_
                                                              'gx#import-binding::t)
                                                             (gx#private-feature-binding?
                                                              _bind13065_))
                                                         (_lp13039_
                                                          _bind-rest13064_
                                                          _set13042_)
                                                         (_lp13039_
                                                          _bind-rest13064_
                                                          (cons (_make-export__2__1603016033_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _bind13065_
                         _current-phi13032_
                         _current-ctx13030_)
                        _set13042_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (##pair? _bind-rest1304313053_)
                                                 (let ((_hd1304813074_
                                                        (##car _bind-rest1304313053_))
                                                       (_tl1304913076_
                                                        (##cdr _bind-rest1304313053_)))
                                                   (if (##pair? _hd1304813074_)
                                                       (let ((_hd1305013079_
                                                              (##car _hd1304813074_))
                                                             (_tl1305113081_
                                                              (##cdr _hd1304813074_)))
                                                         (let* ((_key13084_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1305013079_)
                        (_bind13086_ _tl1305113081_)
                        (_bind-rest13088_ _tl1304913076_))
                   (_K1304713071_ _bind-rest13088_ _bind13086_ _key13084_)))
               (_else1304513061_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_else1304513061_)))))
                                       (_E1281413026_))
                                   (_E1281413026_)))))
                       (_E1281313090_))))
                  (_export-imports12660_
                   (lambda (_src12684_ _r12685_)
                     (letrec* ((_current-ctx12687_
                                (gx#current-expander-context))
                               (_current-phi12688_
                                (gx#current-export-expander-phi))
                               (_import->export12689_
                                (lambda (_in12770_)
                                  (let* ((_in1277112779_ _in12770_)
                                         (_E1277312783_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _in1277112779_)))
                                         (_K1277412790_
                                          (lambda (_phi12786_
                                                   _key12787_
                                                   _out12788_)
                                            (##structure
                                             gx#module-export::t
                                             _current-ctx12687_
                                             _key12787_
                                             _phi12786_
                                             _key12787_
                                             '#t))))
                                    (if (##structure-direct-instance-of?
                                         _in1277112779_
                                         'gx#module-import::t)
                                        (let* ((_e1277512793_
                                                (##vector-ref
                                                 _in1277112779_
                                                 '1))
                                               (_out12796_ _e1277512793_)
                                               (_e1277612798_
                                                (##vector-ref
                                                 _in1277112779_
                                                 '2))
                                               (_key12801_ _e1277612798_)
                                               (_e1277712803_
                                                (##vector-ref
                                                 _in1277112779_
                                                 '3))
                                               (_phi12806_ _e1277712803_))
                                          (_K1277412790_
                                           _phi12806_
                                           _key12801_
                                           _out12796_))
                                        (_E1277312783_)))))
                               (_fold-e12690_
                                (lambda (_in12692_ _r12693_)
                                  (let* ((_in1269412708_ _in12692_)
                                         (_else1269712716_
                                          (lambda () _r12693_)))
                                    (let ((_K1270312752_
                                           (lambda (_phi12748_
                                                    _key12749_
                                                    _out12750_)
                                             (if (and (fx= _phi12748_
                                                           _current-phi12688_)
                                                      (eq? _src12684_
                                                           (##unchecked-structure-ref
                                                            _out12750_
                                                            '1
                                                            gx#module-export::t
                                                            '#f)))
                                                 (cons (_import->export12689_
                                                        _in12692_)
                                                       _r12693_)
                                                 _r12693_)))
                                          (_K1269912727_
                                           (lambda (_imports12720_
                                                    _phi12721_
                                                    _ctx12722_)
                                             (if (and (fx= _phi12721_
                                                           _current-phi12688_)
                                                      (eq? _src12684_
                                                           _ctx12722_))
                                                 (foldl1 (lambda (_in12724_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _r12725_)
                   (cons (_import->export12689_ _in12724_) _r12725_))
                 _r12693_
                 _imports12720_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _r12693_))))
                                      (let ((_try-match1269612745_
                                             (lambda ()
                                               (if (##structure-direct-instance-of?
                                                    _in1269412708_
                                                    'gx#import-set::t)
                                                   (let* ((_e1270012730_
                                                           (##vector-ref
                                                            _in1269412708_
                                                            '1))
                                                          (_e1270112735_
                                                           (##vector-ref
                                                            _in1269412708_
                                                            '2))
                                                          (_e1270212740_
                                                           (##vector-ref
                                                            _in1269412708_
                                                            '3)))
                                                     (let ((_ctx12733_
                                                            _e1270012730_)
                                                           (_phi12738_
                                                            _e1270112735_)
                                                           (_imports12743_
                                                            _e1270212740_))
                                                       (_K1269912727_
                                                        _imports12743_
                                                        _phi12738_
                                                        _ctx12733_)))
                                                   (_else1269712716_)))))
                                        (if (##structure-direct-instance-of?
                                             _in1269412708_
                                             'gx#module-import::t)
                                            (let* ((_e1270412755_
                                                    (##vector-ref
                                                     _in1269412708_
                                                     '1))
                                                   (_e1270512760_
                                                    (##vector-ref
                                                     _in1269412708_
                                                     '2))
                                                   (_e1270612765_
                                                    (##vector-ref
                                                     _in1269412708_
                                                     '3)))
                                              (let ((_out12758_ _e1270412755_)
                                                    (_key12763_ _e1270512760_)
                                                    (_phi12768_ _e1270612765_))
                                                (_K1270312752_
                                                 _phi12768_
                                                 _key12763_
                                                 _out12758_)))
                                            (_try-match1269612745_))))))))
                       (cons (##structure
                              gx#export-set::t
                              _src12684_
                              _current-phi12688_
                              (foldl1 _fold-e12690_
                                      '()
                                      (##unchecked-structure-ref
                                       _current-ctx12687_
                                       '8
                                       gx#module-context::t
                                       '#f)))
                             _r12685_))))
                  (_export!12661_
                   (lambda (_rbody12674_)
                     (letrec* ((_current-ctx12676_
                                (gx#current-expander-context))
                               (_fold-e12677_
                                (lambda (_out12681_ _r12682_)
                                  (if (##structure-direct-instance-of?
                                       _out12681_
                                       'gx#module-export::t)
                                      (cons _out12681_ _r12682_)
                                      (if (##structure-direct-instance-of?
                                           _out12681_
                                           'gx#export-set::t)
                                          (foldl1 cons
                                                  _r12682_
                                                  (##unchecked-structure-ref
                                                   _out12681_
                                                   '3
                                                   gx#export-set::t
                                                   '#f))
                                          _r12682_)))))
                       (let ((_body12679_ (reverse _rbody12674_)))
                         (##unchecked-structure-set!
                          _current-ctx12676_
                          (foldl1 _fold-e12677_
                                  (##unchecked-structure-ref
                                   _current-ctx12676_
                                   '9
                                   gx#module-context::t
                                   '#f)
                                  _body12679_)
                          '9
                          gx#module-context::t
                          '#f)
                         _body12679_))))
                  (_expanded-export?12662_
                   (lambda (_e12669_)
                     (let ((_$e12671_
                            (##structure-direct-instance-of?
                             _e12669_
                             'gx#module-export::t)))
                       (if _$e12671_
                           _$e12671_
                           (##structure-direct-instance-of?
                            _e12669_
                            'gx#export-set::t))))))
          (if (or (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#module-context::t)
                  _internal-expand?12656_)
              (let ((_rbody12667_
                     (gx#core-expand-import/export
                      _stx12655_
                      _expanded-export?12662_
                      'apply-export-expander
                      gx#current-export-expander-phi
                      _expand112659_)))
                (if _internal-expand?12656_
                    (reverse _rbody12667_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons '%#export (_export!12661_ _rbody12667_))
                     (gx#stx-source _stx12655_))))
              (if (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#top-context::t)
                  (gx#core-quote-syntax__1
                   (gx#core-cons '%#begin '())
                   (gx#stx-source _stx12655_))
                  (gx#raise-syntax-error
                   '#f
                   '"Illegal context"
                   _stx12655_))))))
    (define gx#core-expand-export%__0
      (lambda (_stx13140_)
        (let ((_internal-expand?13142_ '#f))
          (gx#core-expand-export%__% _stx13140_ _internal-expand?13142_))))
    (define gx#core-expand-export%
      (lambda _g16092_
        (let ((_g16091_ (##length _g16092_)))
          (cond ((##fx= _g16091_ 1) (apply gx#core-expand-export%__0 _g16092_))
                ((##fx= _g16091_ 2) (apply gx#core-expand-export%__% _g16092_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-export%
                  _g16092_))))))
    (define gx#core-expand-export-source
      (lambda (_hd12652_)
        (gx#core-expand-export%__%
         (cons 'export-macro% (cons _hd12652_ '()))
         '#t)))
    (define gx#core-expand-provide%
      (lambda (_stx12622_)
        (let* ((_e1262312630_ _stx12622_)
               (_E1262512634_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1262312630_)))
               (_E1262412648_
                (lambda ()
                  (if (gx#stx-pair? _e1262312630_)
                      (let ((_e1262612638_ (gx#syntax-e _e1262312630_)))
                        (let ((_hd1262712641_ (##car _e1262612638_))
                              (_tl1262812643_ (##cdr _e1262612638_)))
                          (let ((_body12646_ _tl1262812643_))
                            (if (gx#identifier-list? _body12646_)
                                (begin
                                  (gx#stx-for-each1
                                   gx#core-bind-feature!
                                   _body12646_)
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    '%#provide
                                    (gx#stx-map1
                                     gx#core-quote-syntax
                                     _body12646_))
                                   (gx#stx-source _stx12622_)))
                                (_E1262512634_)))))
                      (_E1262512634_)))))
          (_E1262412648_))))
    (define gx#core-bind-feature!__%
      (lambda (_id12588_ _private?12589_ _phi12590_ _ctx12591_)
        (gx#core-bind-syntax!__%
         _id12588_
         ((if _private?12589_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _id12588_))
         _private?12589_
         _phi12590_
         _ctx12591_)))
    (define gx#core-bind-feature!__0
      (lambda (_id12596_)
        (let* ((_private?12598_ '#f)
               (_phi12600_ (gx#current-expander-phi))
               (_ctx12602_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id12596_
           _private?12598_
           _phi12600_
           _ctx12602_))))
    (define gx#core-bind-feature!__1
      (lambda (_id12604_ _private?12605_)
        (let* ((_phi12607_ (gx#current-expander-phi))
               (_ctx12609_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id12604_
           _private?12605_
           _phi12607_
           _ctx12609_))))
    (define gx#core-bind-feature!__2
      (lambda (_id12611_ _private?12612_ _phi12613_)
        (let ((_ctx12615_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id12611_
           _private?12612_
           _phi12613_
           _ctx12615_))))
    (define gx#core-bind-feature!
      (lambda _g16094_
        (let ((_g16093_ (##length _g16094_)))
          (cond ((##fx= _g16093_ 1) (apply gx#core-bind-feature!__0 _g16094_))
                ((##fx= _g16093_ 2) (apply gx#core-bind-feature!__1 _g16094_))
                ((##fx= _g16093_ 3) (apply gx#core-bind-feature!__2 _g16094_))
                ((##fx= _g16093_ 4) (apply gx#core-bind-feature!__% _g16094_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-feature!
                  _g16094_))))))))
