(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/module::timestamp 1693679894)
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
      (lambda _$args16032_
        (apply make-struct-instance gx#module-import::t _$args16032_)))
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
      (lambda _$args16029_
        (apply make-struct-instance gx#module-export::t _$args16029_)))
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
      (lambda _$args16026_
        (apply make-struct-instance gx#import-set::t _$args16026_)))
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
      (lambda _$args16023_
        (apply make-struct-instance gx#export-set::t _$args16023_)))
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
      (lambda _$args16020_
        (apply make-class-instance gx#import-expander::t _$args16020_)))
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
      (lambda _$args16017_
        (apply make-class-instance gx#export-expander::t _$args16017_)))
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
      (lambda _$args16014_
        (apply make-class-instance gx#import-export-expander::t _$args16014_)))
    (define gx#current-import-expander-phi (make-parameter '#f))
    (define gx#current-export-expander-phi (make-parameter '#f))
    (define gx#current-module-reader-path (make-parameter '#f))
    (define gx#current-module-reader-args (make-parameter '#f))
    (define gx#source-file-settings '(char-encoding: UTF-8 eol-encoding: lf))
    (define gx#call-with-input-source-file
      (lambda (_path16011_ _fun16012_)
        (call-with-input-file
         (cons 'path: (cons _path16011_ gx#source-file-settings))
         _fun16012_)))
    (define gx#module-context:::init!
      (lambda (_self16005_ _id16006_ _super16007_ _ns16008_ _path16009_)
        (if (##fx< '11 (##vector-length _self16005_))
            (begin
              (##vector-set! _self16005_ '1 _id16006_)
              (##vector-set! _self16005_ '2 (make-table 'test: eq?))
              (##vector-set! _self16005_ '3 _super16007_)
              (##vector-set! _self16005_ '4 '#f)
              (##vector-set! _self16005_ '5 '#f)
              (##vector-set! _self16005_ '6 _ns16008_)
              (##vector-set! _self16005_ '7 _path16009_)
              (##vector-set! _self16005_ '8 '())
              (##vector-set! _self16005_ '9 '())
              (##vector-set! _self16005_ '10 '#f)
              (##vector-set! _self16005_ '11 '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self16005_))))
    (bind-method! gx#module-context::t ':init! gx#module-context:::init! '#f)
    (define gx#prelude-context:::init!__%
      (lambda (_self15849_ _ctx15850_ _root15851_)
        (let ((_super15859_
               (let ((_$e15853_ _root15851_))
                 (if _$e15853_
                     _$e15853_
                     (let ((_$e15856_ (gx#core-context-root__0)))
                       (if _$e15856_
                           _$e15856_
                           (make-struct-instance gx#root-context::t)))))))
          (if _ctx15850_
              (let ((_id15862_
                     (##structure-ref
                      _ctx15850_
                      '1
                      gx#expander-context::t
                      '#f))
                    (_path15863_
                     (##structure-ref _ctx15850_ '7 gx#module-context::t '#f))
                    (_in15864_
                     (map gx#core-module-export->import
                          (##structure-ref
                           _ctx15850_
                           '9
                           gx#module-context::t
                           '#f)))
                    (_e15865_
                     (make-promise (lambda () (gx#eval-module _ctx15850_)))))
                (if (##fx< '8 (##vector-length _self15849_))
                    (begin
                      (##vector-set! _self15849_ '1 _id15862_)
                      (##vector-set!
                       _self15849_
                       '2
                       (make-table 'test: eq? 'size: (length _in15864_)))
                      (##vector-set! _self15849_ '3 _super15859_)
                      (##vector-set! _self15849_ '4 '#f)
                      (##vector-set! _self15849_ '5 '#f)
                      (##vector-set! _self15849_ '6 _path15863_)
                      (##vector-set! _self15849_ '7 _in15864_)
                      (##vector-set! _self15849_ '8 _e15865_))
                    (error '"struct-instance-init!: too many arguments for struct"
                           _self15849_))
                (for-each
                 (lambda (_g1586615868_)
                   (gx#core-bind-weak-import!__% _g1586615868_ _self15849_))
                 _in15864_))
              (if (##fx< '8 (##vector-length _self15849_))
                  (begin
                    (##vector-set! _self15849_ '1 '#f)
                    (##vector-set! _self15849_ '2 (make-table 'test: eq?))
                    (##vector-set! _self15849_ '3 _super15859_)
                    (##vector-set! _self15849_ '4 '#f)
                    (##vector-set! _self15849_ '5 '#f)
                    (##vector-set! _self15849_ '6 '#f)
                    (##vector-set! _self15849_ '7 '())
                    (##vector-set! _self15849_ '8 '#f))
                  (error '"struct-instance-init!: too many arguments for struct"
                         _self15849_))))))
    (define gx#prelude-context:::init!__0
      (lambda (_self15874_ _ctx15875_)
        (let ((_root15877_ '#f))
          (gx#prelude-context:::init!__% _self15874_ _ctx15875_ _root15877_))))
    (define gx#prelude-context:::init!
      (lambda _g16072_
        (let ((_g16071_ (##length _g16072_)))
          (cond ((##fx= _g16071_ 2)
                 (apply gx#prelude-context:::init!__0 _g16072_))
                ((##fx= _g16071_ 3)
                 (apply gx#prelude-context:::init!__% _g16072_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#prelude-context:::init!
                  _g16072_))))))
    (bind-method! gx#prelude-context::t ':init! gx#prelude-context:::init! '#f)
    (define gx#import-export-expander-init!
      (lambda (_self15723_ _e15724_)
        (if (##fx< '3 (##vector-length _self15723_))
            (begin
              (##vector-set! _self15723_ '1 _e15724_)
              (##vector-set! _self15723_ '2 (gx#current-expander-context))
              (##vector-set!
               _self15723_
               '3
               (fx- (gx#current-expander-phi) '1)))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self15723_))))
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
      (lambda (_g1534915352_ _g1535015354_)
        (gx#core-apply-user-expander__%
         _g1534915352_
         _g1535015354_
         'apply-import-expander)))
    (bind-method!
     gx#import-expander::t
     'apply-import-expander
     gx#import-expander::apply-import-expander
     '#f)
    (define gx#export-expander::apply-export-expander
      (lambda (_g1522015223_ _g1522115225_)
        (gx#core-apply-user-expander__%
         _g1522015223_
         _g1522115225_
         'apply-export-expander)))
    (bind-method!
     gx#export-expander::t
     'apply-export-expander
     gx#export-expander::apply-export-expander
     '#f)
    (define gx#module-source-path
      (lambda (_ctx15091_)
        (let* ((_path15093_
                (##structure-ref _ctx15091_ '7 gx#module-context::t '#f))
               (_path15095_
                (if (pair? _path15093_) (last _path15093_) _path15093_)))
          (if (string? _path15095_) _path15095_ '#f))))
    (define gx#import-module__%
      (lambda (_path15067_ _reload?15068_ _eval?15069_)
        (let ((_ctx15071_
               ((gx#current-expander-module-import)
                _path15067_
                _reload?15068_)))
          (if (and _ctx15071_ _eval?15069_)
              (gx#eval-module _ctx15071_)
              '#!void)
          _ctx15071_)))
    (define gx#import-module__0
      (lambda (_path15076_)
        (let* ((_reload?15078_ '#f) (_eval?15080_ '#f))
          (gx#import-module__% _path15076_ _reload?15078_ _eval?15080_))))
    (define gx#import-module__1
      (lambda (_path15082_ _reload?15083_)
        (let ((_eval?15085_ '#f))
          (gx#import-module__% _path15082_ _reload?15083_ _eval?15085_))))
    (define gx#import-module
      (lambda _g16074_
        (let ((_g16073_ (##length _g16074_)))
          (cond ((##fx= _g16073_ 1) (apply gx#import-module__0 _g16074_))
                ((##fx= _g16073_ 2) (apply gx#import-module__1 _g16074_))
                ((##fx= _g16073_ 3) (apply gx#import-module__% _g16074_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#import-module
                  _g16074_))))))
    (define gx#eval-module
      (lambda (_mod15064_) ((gx#current-expander-module-eval) _mod15064_)))
    (define gx#core-eval-module
      (lambda (_obj15049_)
        (letrec ((_force-e15051_
                  (lambda (_getf15060_ _e15061_)
                    (call-with-parameters
                     (lambda () (force (_getf15060_ _e15061_)))
                     gx#current-expander-context
                     _e15061_
                     gx#current-expander-phi
                     '0))))
          (let _recur15053_ ((_e15055_ _obj15049_))
            (if (##structure-instance-of? _e15055_ 'gx#module-context::t)
                (begin
                  (let ((_$e15057_ (gx#core-context-prelude__% _e15055_)))
                    (if _$e15057_ (_recur15053_ _$e15057_) '#!void))
                  (_force-e15051_ gx#module-context-e _e15055_))
                (if (##structure-instance-of? _e15055_ 'gx#prelude-context::t)
                    (_force-e15051_ gx#prelude-context-e _e15055_)
                    (if (gx#stx-string? _e15055_)
                        (_recur15053_
                         (gx#import-module__0
                          (gx#core-resolve-module-path__0 _e15055_)))
                        (if (gx#core-library-module-path? _e15055_)
                            (_recur15053_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path _e15055_)))
                            (error '"Cannot eval module" _obj15049_)))))))))
    (define gx#core-context-prelude__%
      (lambda (_ctx15032_)
        (let _lp15034_ ((_e15036_ _ctx15032_))
          (if (or (##structure-instance-of? _e15036_ 'gx#module-context::t)
                  (##structure-instance-of? _e15036_ 'gx#local-context::t))
              (_lp15034_
               (##unchecked-structure-ref _e15036_ '3 gx#phi-context::t '#f))
              (if (##structure-instance-of? _e15036_ 'gx#prelude-context::t)
                  _e15036_
                  '#f)))))
    (define gx#core-context-prelude__0
      (lambda ()
        (let ((_ctx15045_ (gx#current-expander-context)))
          (gx#core-context-prelude__% _ctx15045_))))
    (define gx#core-context-prelude
      (lambda _g16076_
        (let ((_g16075_ (##length _g16076_)))
          (cond ((##fx= _g16075_ 0)
                 (apply gx#core-context-prelude__0 _g16076_))
                ((##fx= _g16075_ 1)
                 (apply gx#core-context-prelude__% _g16076_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-prelude
                  _g16076_))))))
    (define gx#core-module->prelude-context
      (lambda (_ctx15022_)
        (let* ((_ht15024_ (gx#current-expander-module-registry))
               (_$e15026_ (table-ref _ht15024_ _ctx15022_ '#f)))
          (if _$e15026_
              (values _$e15026_)
              (let ((_pre15029_
                     (let ((__obj16067 (make-object gx#prelude-context::t '8)))
                       (gx#prelude-context:::init!__0 __obj16067 _ctx15022_)
                       __obj16067)))
                (table-set! _ht15024_ _ctx15022_ _pre15029_)
                _pre15029_)))))
    (define gx#core-import-module__%
      (lambda (_rpath14903_ _reload?14904_)
        (letrec ((_import-source14906_
                  (lambda (_path14991_)
                    (if (member _path14991_ (gx#current-expander-path))
                        (error '"Cyclic expansion" _path14991_)
                        '#!void)
                    (call-with-parameters
                     (lambda ()
                       (let ((_g16077_ (gx#core-read-module _path14991_)))
                         (begin
                           (let ((_g16078_
                                  (if (##values? _g16077_)
                                      (##vector-length _g16077_)
                                      1)))
                             (if (not (##fx= _g16078_ 4))
                                 (error "Context expects 4 values" _g16078_)))
                           (let ((_pre14994_ (##vector-ref _g16077_ 0))
                                 (_id14995_ (##vector-ref _g16077_ 1))
                                 (_ns14996_ (##vector-ref _g16077_ 2))
                                 (_body14997_ (##vector-ref _g16077_ 3)))
                             (let* ((_prelude15002_
                                     (if (##structure-instance-of?
                                          _pre14994_
                                          'gx#prelude-context::t)
                                         _pre14994_
                                         (if (##structure-instance-of?
                                              _pre14994_
                                              'gx#module-context::t)
                                             (gx#core-module->prelude-context
                                              _pre14994_)
                                             (if (string? _pre14994_)
                                                 (gx#core-module->prelude-context
                                                  (gx#core-import-module__0
                                                   _pre14994_))
                                                 (if (not _pre14994_)
                                                     (let ((_$e14999_
                                                            (gx#current-expander-module-prelude)))
                                                       (if _$e14999_
                                                           _$e14999_
                                                           (let ((__obj16068
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (make-object gx#prelude-context::t '8)))
                     (gx#prelude-context:::init!__0 __obj16068 '#f)
                     __obj16068)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error '"Cannot import module; unknown prelude"
                                                            _rpath14903_
                                                            _pre14994_))))))
                                    (_ctx15004_
                                     (let ((__obj16069
                                            (make-object
                                             gx#module-context::t
                                             '11)))
                                       (gx#module-context:::init!
                                        __obj16069
                                        _id14995_
                                        _prelude15002_
                                        _ns14996_
                                        _path14991_)
                                       __obj16069))
                                    (_body15006_
                                     (gx#core-expand-module-begin
                                      _body14997_
                                      _ctx15004_))
                                    (_body15008_
                                     (gx#core-quote-syntax__%
                                      (gx#core-cons '%#begin _body15006_)
                                      _path14991_
                                      _ctx15004_
                                      '())))
                               (##unchecked-structure-set!
                                _ctx15004_
                                (make-promise
                                 (lambda () (gx#eval-syntax* _body15008_)))
                                '10
                                gx#module-context::t
                                '#f)
                               (##unchecked-structure-set!
                                _ctx15004_
                                _body15008_
                                '11
                                gx#module-context::t
                                '#f)
                               (table-set!
                                (gx#current-expander-module-registry)
                                _path14991_
                                _ctx15004_)
                               (table-set!
                                (gx#current-expander-module-registry)
                                _id14995_
                                _ctx15004_)
                               _ctx15004_)))))
                     gx#current-expander-context
                     (gx#core-context-root__0)
                     gx#current-expander-marks
                     '()
                     gx#current-expander-phi
                     '0
                     gx#current-expander-path
                     (cons _path14991_ (gx#current-expander-path))
                     gx#current-import-expander-phi
                     '#f
                     gx#current-export-expander-phi
                     '#f)))
                 (_import-submodule14907_
                  (lambda (_rpath14919_)
                    (let* ((_rpath1492014927_ _rpath14919_)
                           (_E1492214931_
                            (lambda ()
                              (error '"No clause matching" _rpath1492014927_)))
                           (_K1492314979_
                            (lambda (_refs14934_ _origin14935_)
                              (let ((_ctx14937_
                                     (if _origin14935_
                                         (gx#core-import-module__%
                                          _origin14935_
                                          _reload?14904_)
                                         (gx#current-expander-context))))
                                (let _lp14939_ ((_rest14941_ _refs14934_)
                                                (_ctx14942_ _ctx14937_))
                                  (let* ((_rest1494314951_ _rest14941_)
                                         (_else1494514959_
                                          (lambda () _ctx14942_))
                                         (_K1494714967_
                                          (lambda (_rest14962_ _id14963_)
                                            (let ((_bind14965_
                                                   (gx#resolve-identifier__%
                                                    _id14963_
                                                    '0
                                                    _ctx14942_)))
                                              (if (and (##structure-direct-instance-of?
                                                        _bind14965_
                                                        'gx#syntax-binding::t)
                                                       (##structure-instance-of?
                                                        (##unchecked-structure-ref
                                                         _bind14965_
                                                         '4
                                                         gx#syntax-binding::t
                                                         '#f)
                                                        'gx#module-context::t))
                                                  (_lp14939_
                                                   _rest14962_
                                                   (##unchecked-structure-ref
                                                    _bind14965_
                                                    '4
                                                    gx#syntax-binding::t
                                                    '#f))
                                                  (error '"Cannot import submodule; not bound as a module"
                                                         _rpath14919_
                                                         _id14963_
                                                         _bind14965_))))))
                                    (if (##pair? _rest1494314951_)
                                        (let ((_hd1494814970_
                                               (##car _rest1494314951_))
                                              (_tl1494914972_
                                               (##cdr _rest1494314951_)))
                                          (let* ((_id14975_ _hd1494814970_)
                                                 (_rest14977_ _tl1494914972_))
                                            (_K1494714967_
                                             _rest14977_
                                             _id14975_)))
                                        (_else1494514959_))))))))
                      (if (##pair? _rpath1492014927_)
                          (let ((_hd1492414982_ (##car _rpath1492014927_))
                                (_tl1492514984_ (##cdr _rpath1492014927_)))
                            (let* ((_origin14987_ _hd1492414982_)
                                   (_refs14989_ _tl1492514984_))
                              (_K1492314979_ _refs14989_ _origin14987_)))
                          (_E1492214931_))))))
          (let ((_$e14909_
                 (if (not _reload?14904_)
                     (table-ref
                      (gx#current-expander-module-registry)
                      _rpath14903_
                      '#f)
                     '#f)))
            (if _$e14909_
                (values _$e14909_)
                (if (list? _rpath14903_)
                    (_import-submodule14907_ _rpath14903_)
                    (if (gx#core-library-module-path? _rpath14903_)
                        (let ((_ctx14912_
                               (gx#core-import-module__%
                                (gx#core-resolve-library-module-path
                                 _rpath14903_)
                                _reload?14904_)))
                          (table-set!
                           (gx#current-expander-module-registry)
                           _rpath14903_
                           _ctx14912_)
                          _ctx14912_)
                        (let* ((_npath14914_ (path-normalize _rpath14903_))
                               (_$e14916_
                                (if (not _reload?14904_)
                                    (table-ref
                                     (gx#current-expander-module-registry)
                                     _npath14914_
                                     '#f)
                                    '#f)))
                          (if _$e14916_
                              (values _$e14916_)
                              (_import-source14906_ _npath14914_))))))))))
    (define gx#core-import-module__0
      (lambda (_rpath15015_)
        (let ((_reload?15017_ '#f))
          (gx#core-import-module__% _rpath15015_ _reload?15017_))))
    (define gx#core-import-module
      (lambda _g16080_
        (let ((_g16079_ (##length _g16080_)))
          (cond ((##fx= _g16079_ 1) (apply gx#core-import-module__0 _g16080_))
                ((##fx= _g16079_ 2) (apply gx#core-import-module__% _g16080_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-import-module
                  _g16080_))))))
    (define gx#core-read-module
      (lambda (_path14897_)
        (with-exception-catcher
         (lambda (_exn14899_)
           (if (and (datum-parsing-exception? _exn14899_)
                    (eq? (datum-parsing-exception-filepos _exn14899_) '0))
               (gx#core-read-module/lang _path14897_)
               (raise _exn14899_)))
         (lambda () (gx#core-read-module/sexp _path14897_)))))
    (define gx#core-read-module/sexp
      (lambda (_path14757_)
        (let _lp14759_ ((_body14761_ (read-syntax-from-file _path14757_))
                        (_pre14762_ '#f)
                        (_ns14763_ '#f)
                        (_pkg14764_ '#f))
          (let* ((_e1476514789_ _body14761_)
                 (_E1478114811_
                  (lambda ()
                    (let ((_g16081_
                           (if _pkg14764_
                               (values _pre14762_ _ns14763_ _pkg14764_)
                               (gx#core-read-module-package
                                _path14757_
                                _pre14762_
                                _ns14763_))))
                      (begin
                        (let ((_g16082_
                               (if (##values? _g16081_)
                                   (##vector-length _g16081_)
                                   1)))
                          (if (not (##fx= _g16082_ 3))
                              (error "Context expects 3 values" _g16082_)))
                        (let ((_pre14793_ (##vector-ref _g16081_ 0))
                              (_ns14794_ (##vector-ref _g16081_ 1))
                              (_pkg14795_ (##vector-ref _g16081_ 2)))
                          (let* ((_prelude14797_
                                  (if (gx#core-bound-module-prelude?
                                       _pre14793_)
                                      (gx#syntax-local-e__0 _pre14793_)
                                      (if (gx#core-library-module-path?
                                           _pre14793_)
                                          (gx#core-resolve-library-module-path
                                           _pre14793_)
                                          (if (gx#stx-string? _pre14793_)
                                              (gx#core-resolve-module-path__%
                                               _pre14793_
                                               _path14757_)
                                              (gx#stx-e _pre14793_)))))
                                 (_path-id14799_
                                  (gx#core-module-path->namespace _path14757_))
                                 (_pkg-id14801_
                                  (if _pkg14795_
                                      (string-append
                                       _pkg14795_
                                       '"/"
                                       _path-id14799_)
                                      _path-id14799_))
                                 (_module-id14803_
                                  (string->symbol _pkg-id14801_))
                                 (_module-ns14808_
                                  (let ((_$e14805_ _ns14794_))
                                    (if _$e14805_ _$e14805_ _pkg-id14801_))))
                            (values _prelude14797_
                                    _module-id14803_
                                    _module-ns14808_
                                    _body14761_)))))))
                 (_E1477414840_
                  (lambda ()
                    (if (gx#stx-pair? _e1476514789_)
                        (let ((_e1478214815_ (gx#syntax-e _e1476514789_)))
                          (let ((_hd1478314818_ (##car _e1478214815_))
                                (_tl1478414820_ (##cdr _e1478214815_)))
                            (if (eq? (gx#stx-e _hd1478314818_) 'package:)
                                (if (gx#stx-pair? _tl1478414820_)
                                    (let ((_e1478514823_
                                           (gx#syntax-e _tl1478414820_)))
                                      (let ((_hd1478614826_
                                             (##car _e1478514823_))
                                            (_tl1478714828_
                                             (##cdr _e1478514823_)))
                                        (let* ((_pkg14831_ _hd1478614826_)
                                               (_rest14833_ _tl1478714828_))
                                          (if '#t
                                              (let ((_pkg14838_
                                                     (if (gx#identifier?
                                                          _pkg14831_)
                                                         (symbol->string
                                                          (gx#stx-e
                                                           _pkg14831_))
                                                         (if (or (gx#stx-string?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _pkg14831_)
                         (gx#stx-false? _pkg14831_))
                     (gx#stx-e _pkg14831_)
                     (gx#raise-syntax-error
                      'import
                      '"Bad syntax; Illegal package name"
                      _pkg14831_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_lp14759_
                                                 _rest14833_
                                                 _pre14762_
                                                 _ns14763_
                                                 _pkg14838_))
                                              (_E1478114811_)))))
                                    (_E1478114811_))
                                (_E1478114811_))))
                        (_E1478114811_))))
                 (_E1476714869_
                  (lambda ()
                    (if (gx#stx-pair? _e1476514789_)
                        (let ((_e1477514844_ (gx#syntax-e _e1476514789_)))
                          (let ((_hd1477614847_ (##car _e1477514844_))
                                (_tl1477714849_ (##cdr _e1477514844_)))
                            (if (eq? (gx#stx-e _hd1477614847_) 'namespace:)
                                (if (gx#stx-pair? _tl1477714849_)
                                    (let ((_e1477814852_
                                           (gx#syntax-e _tl1477714849_)))
                                      (let ((_hd1477914855_
                                             (##car _e1477814852_))
                                            (_tl1478014857_
                                             (##cdr _e1477814852_)))
                                        (let* ((_ns14860_ _hd1477914855_)
                                               (_rest14862_ _tl1478014857_))
                                          (if '#t
                                              (let ((_ns14867_
                                                     (if (gx#identifier?
                                                          _ns14860_)
                                                         (symbol->string
                                                          (gx#stx-e _ns14860_))
                                                         (if (or (gx#stx-string?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _ns14860_)
                         (gx#stx-false? _ns14860_))
                     (gx#stx-e _ns14860_)
                     (gx#raise-syntax-error
                      'import
                      '"Bad syntax; illegal namespace"
                      _ns14860_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_lp14759_
                                                 _rest14862_
                                                 _pre14762_
                                                 _ns14867_
                                                 _pkg14764_))
                                              (_E1477414840_)))))
                                    (_E1477414840_))
                                (_E1477414840_))))
                        (_E1477414840_))))
                 (_E1476614893_
                  (lambda ()
                    (if (gx#stx-pair? _e1476514789_)
                        (let ((_e1476814873_ (gx#syntax-e _e1476514789_)))
                          (let ((_hd1476914876_ (##car _e1476814873_))
                                (_tl1477014878_ (##cdr _e1476814873_)))
                            (if (eq? (gx#stx-e _hd1476914876_) 'prelude:)
                                (if (gx#stx-pair? _tl1477014878_)
                                    (let ((_e1477114881_
                                           (gx#syntax-e _tl1477014878_)))
                                      (let ((_hd1477214884_
                                             (##car _e1477114881_))
                                            (_tl1477314886_
                                             (##cdr _e1477114881_)))
                                        (let* ((_prelude14889_ _hd1477214884_)
                                               (_rest14891_ _tl1477314886_))
                                          (if '#t
                                              (_lp14759_
                                               _rest14891_
                                               _prelude14889_
                                               _ns14763_
                                               _pkg14764_)
                                              (_E1476714869_)))))
                                    (_E1476714869_))
                                (_E1476714869_))))
                        (_E1476714869_)))))
            (_E1476614893_)))))
    (define gx#core-read-module/lang
      (lambda (_path14584_)
        (letrec ((_default-read-module-body14586_
                  (lambda (_inp14749_)
                    (let _lp14751_ ((_body14753_ '()))
                      (let ((_next14755_ (read-syntax _inp14749_)))
                        (if (eof-object? _next14755_)
                            (reverse _body14753_)
                            (_lp14751_ (cons _next14755_ _body14753_)))))))
                 (_read-body14587_
                  (lambda (_inp14668_
                           _pre14669_
                           _ns14670_
                           _pkg14671_
                           _args14672_)
                    (let ((_g16083_
                           (if _pkg14671_
                               (values _pre14669_ _ns14670_ _pkg14671_)
                               (gx#core-read-module-package
                                _path14584_
                                _pre14669_
                                _ns14670_))))
                      (begin
                        (let ((_g16084_
                               (if (##values? _g16083_)
                                   (##vector-length _g16083_)
                                   1)))
                          (if (not (##fx= _g16084_ 3))
                              (error "Context expects 3 values" _g16084_)))
                        (let ((_pre14674_ (##vector-ref _g16083_ 0))
                              (_ns14675_ (##vector-ref _g16083_ 1))
                              (_pkg14676_ (##vector-ref _g16083_ 2)))
                          (let* ((_prelude14678_
                                  (gx#import-module__0 _pre14674_))
                                 (_read-module-body14732_
                                  (let ((_$e14724_
                                         (find (lambda (_e1467914681_)
                                                 (let* ((_g1468314693_
                                                         _e1467914681_)
                                                        (_else1468514701_
                                                         (lambda () '#f))
                                                        (_K1468714705_
                                                         (lambda () '#t)))
                                                   (if (##structure-direct-instance-of?
                                                        _g1468314693_
                                                        'gx#module-export::t)
                                                       (let* ((_e1468814708_
                                                               (##vector-ref
                                                                _g1468314693_
                                                                '1))
                                                              (_e1468914711_
                                                               (##vector-ref
                                                                _g1468314693_
                                                                '2))
                                                              (_e1469014714_
                                                               (##vector-ref
                                                                _g1468314693_
                                                                '3)))
                                                         (if (##eq? _e1469014714_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '1)
                     (let ((_e1469114717_ (##vector-ref _g1468314693_ '4)))
                       (if ((lambda (_g1471914721_)
                              (eq? _g1471914721_ 'read-module-body))
                            _e1469114717_)
                           (_K1468714705_)
                           (_else1468514701_)))
                     (_else1468514701_)))
               (_else1468514701_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (##unchecked-structure-ref
                                                _prelude14678_
                                                '9
                                                gx#module-context::t
                                                '#f))))
                                    (if _$e14724_
                                        ((lambda (_xport14727_)
                                           (let ((_proc14730_
                                                  (with-exception-catcher
                                                   void
                                                   (lambda ()
                                                     (gx#eval-syntax__0
                                                      (##structure-ref
                                                       (gx#core-resolve-module-export
                                                        _xport14727_)
                                                       '1
                                                       gx#binding::t
                                                       '#f))))))
                                             (if (procedure? _proc14730_)
                                                 _proc14730_
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Illegal #lang prelude; read-module-body is not a procedure"
                                                  _path14584_
                                                  _pre14674_
                                                  _proc14730_))))
                                         _$e14724_)
                                        _default-read-module-body14586_)))
                                 (_path-id14734_
                                  (gx#core-module-path->namespace _path14584_))
                                 (_pkg-id14736_
                                  (if _pkg14676_
                                      (string-append
                                       _pkg14676_
                                       '"/"
                                       _path-id14734_)
                                      _path-id14734_))
                                 (_module-id14738_
                                  (string->symbol _pkg-id14736_))
                                 (_module-ns14743_
                                  (let ((_$e14740_ _ns14675_))
                                    (if _$e14740_ _$e14740_ _pkg-id14736_)))
                                 (_body14746_
                                  (call-with-parameters
                                   (lambda ()
                                     (_read-module-body14732_ _inp14668_))
                                   gx#current-module-reader-path
                                   _path14584_
                                   gx#current-module-reader-args
                                   _args14672_)))
                            (values _prelude14678_
                                    _module-id14738_
                                    _module-ns14743_
                                    _body14746_)))))))
                 (_string-e14588_
                  (lambda (_obj14665_ _what14666_)
                    (if (string? _obj14665_)
                        _obj14665_
                        (if (symbol? _obj14665_)
                            (symbol->string _obj14665_)
                            (gx#raise-syntax-error
                             '#f
                             (string-append '"Illegal module " _what14666_)
                             _path14584_
                             _obj14665_)))))
                 (_read-lang-args14589_
                  (lambda (_inp14620_ _args14621_)
                    (let* ((_args1462214630_ _args14621_)
                           (_else1462414638_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Illegal #lang arguments; missing prelude"
                               _path14584_)))
                           (_K1462614653_
                            (lambda (_args14641_ _prelude14642_)
                              (let* ((_pkg14644_ (pgetq 'package: _args14641_))
                                     (_pkg14646_
                                      (if _pkg14644_
                                          (_string-e14588_
                                           _pkg14644_
                                           '"package")
                                          '#f))
                                     (_ns14648_
                                      (pgetq 'namespace: _args14641_))
                                     (_ns14650_
                                      (if _ns14648_
                                          (_string-e14588_
                                           _ns14648_
                                           '"namespace")
                                          '#f)))
                                (_read-body14587_
                                 _inp14620_
                                 _prelude14642_
                                 _ns14650_
                                 _pkg14646_
                                 _args14641_)))))
                      (if (##pair? _args1462214630_)
                          (let ((_hd1462714656_ (##car _args1462214630_))
                                (_tl1462814658_ (##cdr _args1462214630_)))
                            (let* ((_prelude14661_ _hd1462714656_)
                                   (_args14663_ _tl1462814658_))
                              (_K1462614653_ _args14663_ _prelude14661_)))
                          (_else1462414638_)))))
                 (_read-lang14590_
                  (lambda (_inp14595_)
                    (let* ((_head14597_ (read-line _inp14595_))
                           (_$e14599_ (string-index _head14597_ '#\space)))
                      (if _$e14599_
                          ((lambda (_ix14602_)
                             (let ((_lang14604_
                                    (substring _head14597_ '0 _ix14602_)))
                               (if (equal? _lang14604_ '"#lang")
                                   (let* ((_rest14606_
                                           (substring
                                            _head14597_
                                            (fx+ _ix14602_ '1)
                                            (string-length _head14597_)))
                                          (_args14617_
                                           (with-exception-catcher
                                            (lambda (_g1460714609_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal #lang arguments"
                                               _path14584_
                                               _g1460714609_))
                                            (lambda ()
                                              (call-with-input-string
                                               _rest14606_
                                               (lambda (_g1461214614_)
                                                 (read-all
                                                  _g1461214614_
                                                  read)))))))
                                     (_read-lang-args14589_
                                      _inp14595_
                                      _args14617_))
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Illegal module syntax"
                                    _path14584_))))
                           _$e14599_)
                          (gx#raise-syntax-error
                           '#f
                           '"Illegal module syntax"
                           _path14584_)))))
                 (_read-e14591_
                  (lambda (_inp14593_)
                    (if (eq? (peek-char _inp14593_) '#\#)
                        (_read-lang14590_ _inp14593_)
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module syntax"
                         _path14584_)))))
          (gx#call-with-input-source-file _path14584_ _read-e14591_))))
    (define gx#core-read-module-package
      (lambda (_path14538_ _pre14539_ _ns14540_)
        (letrec ((_string-e14542_
                  (lambda (_e14582_)
                    (if (symbol? _e14582_)
                        (symbol->string _e14582_)
                        (if (string? _e14582_)
                            _e14582_
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _e14582_))))))
          (let _lp14544_ ((_dir14546_ (path-directory _path14538_))
                          (_pkg-path14547_ '()))
            (let ((_gerbil.pkg14549_ (path-expand '"gerbil.pkg" _dir14546_)))
              (if (file-exists? _gerbil.pkg14549_)
                  (let ((_plist14551_
                         (gx#core-library-package-plist__% _dir14546_ '#t)))
                    (if (null? _plist14551_)
                        (let ((_pkg14553_
                               (if (not (null? _pkg-path14547_))
                                   (string-join _pkg-path14547_ '"/")
                                   '#f)))
                          (values _pre14539_ _ns14540_ _pkg14553_))
                        (if (list? _plist14551_)
                            (let* ((_root14555_ (pgetq 'package: _plist14551_))
                                   (_pkg14559_
                                    (let ((_pkg-path14557_
                                           (if _root14555_
                                               (cons (_string-e14542_
                                                      _root14555_)
                                                     _pkg-path14547_)
                                               _pkg-path14547_)))
                                      (if (not (null? _pkg-path14557_))
                                          (string-join _pkg-path14557_ '"/")
                                          '#f)))
                                   (_ns14566_
                                    (let ((_ns14564_
                                           (let ((_$e14561_ _ns14540_))
                                             (if _$e14561_
                                                 _$e14561_
                                                 (pgetq 'namespace:
                                                        _plist14551_)))))
                                      (if _ns14564_
                                          (_string-e14542_ _ns14564_)
                                          '#f)))
                                   (_pre14571_
                                    (let ((_$e14568_ _pre14539_))
                                      (if _$e14568_
                                          _$e14568_
                                          (pgetq 'prelude: _plist14551_)))))
                              (values _pre14571_ _ns14566_ _pkg14559_))
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _plist14551_))))
                  (let ((_dir*14574_
                         (path-strip-trailing-directory-separator _dir14546_)))
                    (if (or (string-empty? _dir*14574_)
                            (equal? _dir14546_ _dir*14574_))
                        (values _pre14539_ _ns14540_ '#f)
                        (let ((_xpath14579_ (path-strip-directory _dir*14574_))
                              (_xdir14580_ (path-directory _dir*14574_)))
                          (_lp14544_
                           _xdir14580_
                           (cons _xpath14579_ _pkg-path14547_)))))))))))
    (define gx#core-module-path->namespace
      (lambda (_path14536_)
        (path-strip-extension (path-strip-directory _path14536_))))
    (define gx#core-module-path->id
      (lambda (_path14534_)
        (string->symbol (gx#core-module-path->namespace _path14534_))))
    (define gx#core-resolve-module-path__%
      (lambda (_stx-path14513_ _rel14514_)
        (let* ((_path14516_ (gx#stx-e _stx-path14513_))
               (_path14518_
                (if (string-empty? (path-extension _path14516_))
                    (string-append _path14516_ '".ss")
                    _path14516_)))
          (gx#core-resolve-path__%
           _path14518_
           (let ((_$e14521_ (gx#stx-source _stx-path14513_)))
             (if _$e14521_ _$e14521_ _rel14514_))))))
    (define gx#core-resolve-module-path__0
      (lambda (_stx-path14527_)
        (let ((_rel14529_ '#f))
          (gx#core-resolve-module-path__% _stx-path14527_ _rel14529_))))
    (define gx#core-resolve-module-path
      (lambda _g16086_
        (let ((_g16085_ (##length _g16086_)))
          (cond ((##fx= _g16085_ 1)
                 (apply gx#core-resolve-module-path__0 _g16086_))
                ((##fx= _g16085_ 2)
                 (apply gx#core-resolve-module-path__% _g16086_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-module-path
                  _g16086_))))))
    (define gx#core-resolve-library-module-path
      (lambda (_libpath14399_)
        (let* ((_spath14401_ (symbol->string (gx#stx-e _libpath14399_)))
               (_spath14403_
                (substring _spath14401_ '1 (string-length _spath14401_)))
               (_ext14405_ (path-extension _spath14403_))
               (_ssi14407_
                (if (string-empty? _ext14405_)
                    (string-append _spath14403_ '".ssi")
                    (string-append
                     (path-strip-extension _spath14403_)
                     '".ssi")))
               (_srcs14411_
                (if (string-empty? _ext14405_)
                    (map (lambda (_ext14409_)
                           (string-append _spath14403_ _ext14409_))
                         '(".ss" ".sld" ".scm"))
                    (cons _spath14403_ '()))))
          (let _lp14414_ ((_rest14416_
                           (gx#current-expander-module-library-path)))
            (let* ((_rest1441714426_ _rest14416_)
                   (_E1442014430_
                    (lambda ()
                      (error '"No clause matching" _rest1441714426_))))
              (let ((_K1442214500_
                     (lambda (_rest14441_ _dir14442_)
                       (letrec ((_resolve14444_
                                 (lambda (_ssi14456_ _srcs14457_)
                                   (let ((_compiled-path14459_
                                          (path-expand _ssi14456_ _dir14442_)))
                                     (if (file-exists? _compiled-path14459_)
                                         (path-normalize _compiled-path14459_)
                                         (let _lpr14461_ ((_rest-src14463_
                                                           _srcs14457_))
                                           (let* ((_rest-src1446414472_
                                                   _rest-src14463_)
                                                  (_else1446614480_
                                                   (lambda ()
                                                     (_lp14414_ _rest14441_)))
                                                  (_K1446814488_
                                                   (lambda (_rest-src14483_
                                                            _src14484_)
                                                     (let ((_src-path14486_
                                                            (path-expand
                                                             _src14484_
                                                             _dir14442_)))
                                                       (if (file-exists?
                                                            _src-path14486_)
                                                           (path-normalize
                                                            _src-path14486_)
                                                           (_lpr14461_
                                                            _rest-src14483_))))))
                                             (if (##pair? _rest-src1446414472_)
                                                 (let ((_hd1446914491_
                                                        (##car _rest-src1446414472_))
                                                       (_tl1447014493_
                                                        (##cdr _rest-src1446414472_)))
                                                   (let* ((_src14496_
                                                           _hd1446914491_)
                                                          (_rest-src14498_
                                                           _tl1447014493_))
                                                     (_K1446814488_
                                                      _rest-src14498_
                                                      _src14496_)))
                                                 (_else1446614480_)))))))))
                         (let ((_$e14446_
                                (gx#core-library-package-path-prefix
                                 _dir14442_)))
                           (if _$e14446_
                               ((lambda (_prefix14449_)
                                  (if (string-prefix?
                                       _prefix14449_
                                       _spath14403_)
                                      (let ((_ssi14453_
                                             (substring
                                              _ssi14407_
                                              (string-length _prefix14449_)
                                              (string-length _ssi14407_)))
                                            (_srcs14454_
                                             (map (lambda (_src14451_)
                                                    (substring
                                                     _src14451_
                                                     (string-length
                                                      _prefix14449_)
                                                     (string-length
                                                      _src14451_)))
                                                  _srcs14411_)))
                                        (_resolve14444_
                                         _ssi14453_
                                         _srcs14454_))
                                      (_lp14414_ _rest14441_)))
                                _$e14446_)
                               (_resolve14444_ _ssi14407_ _srcs14411_))))))
                    (_K1442114435_
                     (lambda ()
                       (gx#raise-syntax-error
                        '#f
                        '"Cannot find library module"
                        _libpath14399_))))
                (let ((_try-match1441914438_
                       (lambda ()
                         (if (##null? _rest1441714426_)
                             (_K1442114435_)
                             (_E1442014430_)))))
                  (if (##pair? _rest1441714426_)
                      (let ((_tl1442414505_ (##cdr _rest1441714426_))
                            (_hd1442314503_ (##car _rest1441714426_)))
                        (let ((_dir14508_ _hd1442314503_)
                              (_rest14510_ _tl1442414505_))
                          (_K1442214500_ _rest14510_ _dir14508_)))
                      (_try-match1441914438_)))))))))
    (define gx#core-resolve-library-relative-module-path
      (lambda (_modpath14372_)
        (letrec ((_resolve14374_
                  (lambda (_path14391_ _base14392_)
                    (let ((_$e14394_ (string-rindex _base14392_ '#\/)))
                      (if _$e14394_
                          ((lambda (_idx14397_)
                             (gx#core-resolve-library-module-path
                              (string->symbol
                               (string-append
                                '":"
                                (substring _base14392_ '0 _idx14397_)
                                '"/"
                                _path14391_))))
                           _$e14394_)
                          (gx#core-resolve-library-module-path
                           (string->symbol
                            (string-append '":" _path14391_))))))))
          (let ((_spath14376_ (symbol->string (gx#stx-e _modpath14372_)))
                (_mod14377_
                 (gx#core-context-top__%
                  (gx#current-expander-context)
                  gx#module-context?)))
            (if _mod14377_
                '#!void
                (gx#raise-syntax-error
                 '#f
                 '"Cannot resolve relative module path; not in module context"
                 _modpath14372_))
            (let ((_mpath14379_
                   (symbol->string
                    (##structure-ref
                     _mod14377_
                     '1
                     gx#expander-context::t
                     '#f))))
              (let _lp14381_ ((_spath14383_ _spath14376_)
                              (_mpath14384_ _mpath14379_))
                (if (string-prefix? '"../" _spath14383_)
                    (let ((_$e14386_ (string-rindex _mpath14384_ '#\/)))
                      (if _$e14386_
                          ((lambda (_idx14389_)
                             (_lp14381_
                              (substring
                               _spath14383_
                               '3
                               (string-length _spath14383_))
                              (substring _mpath14384_ '0 _idx14389_)))
                           _$e14386_)
                          (gx#raise-syntax-error
                           '#f
                           '"Cannot resolve relative module path; illegal traversal"
                           _modpath14372_)))
                    (if (string-prefix? '"./" _spath14383_)
                        (_lp14381_
                         (substring
                          _spath14383_
                          '2
                          (string-length _spath14383_))
                         _mpath14384_)
                        (_resolve14374_ _spath14383_ _mpath14384_)))))))))
    (define gx#core-library-package-path-prefix
      (lambda (_dir14365_)
        (let ((_$e14367_
               (pgetq 'package:
                      (gx#core-library-package-plist__0 _dir14365_))))
          (if _$e14367_
              ((lambda (_pkg14370_)
                 (string-append (symbol->string _pkg14370_) '"/"))
               _$e14367_)
              '#f))))
    (define gx#core-library-package-plist__%
      (lambda (_dir14337_ _exists?14338_)
        (let* ((_cache14340_ (gx#core-library-package-cache))
               (_$e14342_ (table-ref _cache14340_ _dir14337_ '#f)))
          (if _$e14342_
              (values _$e14342_)
              (let* ((_gerbil.pkg14345_ (path-expand '"gerbil.pkg" _dir14337_))
                     (_plist14352_
                      (if (or _exists?14338_ (file-exists? _gerbil.pkg14345_))
                          (let ((_e14350_
                                 (gx#call-with-input-source-file
                                  _gerbil.pkg14345_
                                  read)))
                            (if (eof-object? _e14350_)
                                '()
                                (if (list? _e14350_)
                                    _e14350_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Malformed package info; unexpected datum"
                                     _gerbil.pkg14345_
                                     _e14350_))))
                          '())))
                (table-set! _cache14340_ _dir14337_ _plist14352_)
                _plist14352_)))))
    (define gx#core-library-package-plist__0
      (lambda (_dir14358_)
        (let ((_exists?14360_ '#f))
          (gx#core-library-package-plist__% _dir14358_ _exists?14360_))))
    (define gx#core-library-package-plist
      (lambda _g16088_
        (let ((_g16087_ (##length _g16088_)))
          (cond ((##fx= _g16087_ 1)
                 (apply gx#core-library-package-plist__0 _g16088_))
                ((##fx= _g16087_ 2)
                 (apply gx#core-library-package-plist__% _g16088_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-library-package-plist
                  _g16088_))))))
    (define gx#core-library-package-cache
      (lambda ()
        (let ((_$e14331_ (gx#current-expander-module-library-package-cache)))
          (if _$e14331_
              (values _$e14331_)
              (let ((_cache14334_ (make-table)))
                (gx#current-expander-module-library-package-cache _cache14334_)
                _cache14334_)))))
    (define gx#core-library-module-path?
      (lambda (_stx14328_) (gx#core-special-module-path? _stx14328_ '#\:)))
    (define gx#core-library-relative-module-path?
      (lambda (_stx14326_) (gx#core-special-module-path? _stx14326_ '#\.)))
    (define gx#core-special-module-path?
      (lambda (_stx14321_ _char14322_)
        (if (gx#identifier? _stx14321_)
            (if (interned-symbol? (gx#stx-e _stx14321_))
                (let ((_str14324_ (symbol->string (gx#stx-e _stx14321_))))
                  (if (fx> (string-length _str14324_) '1)
                      (eq? (string-ref _str14324_ '0) _char14322_)
                      '#f))
                '#f)
            '#f)))
    (define gx#core-bound-prelude?
      (lambda (_stx14315_)
        (gx#core-bound-identifier?__%
         _stx14315_
         (lambda (_g1431614318_)
           (gx#expander-binding?__% _g1431614318_ gx#prelude-context?)))))
    (define gx#core-bound-module?
      (lambda (_stx14309_)
        (gx#core-bound-identifier?__%
         _stx14309_
         (lambda (_g1431014312_)
           (gx#expander-binding?__% _g1431014312_ gx#module-context?)))))
    (define gx#core-bound-module-prelude?
      (lambda (_stx14296_)
        (letrec ((_module-prelude?14298_
                  (lambda (_e14304_)
                    (let ((_$e14306_
                           (##structure-instance-of?
                            _e14304_
                            'gx#module-context::t)))
                      (if _$e14306_
                          _$e14306_
                          (##structure-instance-of?
                           _e14304_
                           'gx#prelude-context::t))))))
          (gx#core-bound-identifier?__%
           _stx14296_
           (lambda (_g1429914301_)
             (gx#expander-binding?__%
              _g1429914301_
              _module-prelude?14298_))))))
    (define gx#core-bind-import!__%
      (lambda (_in14226_ _ctx14227_ _force-weak?14228_)
        (let* ((_in1422914238_ _in14226_)
               (_E1423114242_
                (lambda () (error '"No clause matching" _in1422914238_)))
               (_K1423214255_
                (lambda (_weak?14245_ _phi14246_ _key14247_ _source14248_)
                  (gx#core-bind!__%
                   _key14247_
                   (let ((_e14250_
                          (gx#core-resolve-module-export _source14248_)))
                     (##structure
                      gx#import-binding::t
                      (##unchecked-structure-ref _e14250_ '1 gx#binding::t '#f)
                      _key14247_
                      _phi14246_
                      _e14250_
                      (##unchecked-structure-ref
                       _source14248_
                       '1
                       gx#module-export::t
                       '#f)
                      (let ((_$e14252_ _force-weak?14228_))
                        (if _$e14252_ _$e14252_ _weak?14245_))))
                   gx#core-context-rebind?
                   _phi14246_
                   _ctx14227_))))
          (if (##structure-direct-instance-of?
               _in1422914238_
               'gx#module-import::t)
              (let* ((_e1423314258_ (##vector-ref _in1422914238_ '1))
                     (_source14261_ _e1423314258_)
                     (_e1423414263_ (##vector-ref _in1422914238_ '2))
                     (_key14266_ _e1423414263_)
                     (_e1423514268_ (##vector-ref _in1422914238_ '3))
                     (_phi14271_ _e1423514268_)
                     (_e1423614273_ (##vector-ref _in1422914238_ '4))
                     (_weak?14276_ _e1423614273_))
                (_K1423214255_
                 _weak?14276_
                 _phi14271_
                 _key14266_
                 _source14261_))
              (_E1423114242_)))))
    (define gx#core-bind-import!__0
      (lambda (_in14281_)
        (let* ((_ctx14283_ (gx#current-expander-context))
               (_force-weak?14285_ '#f))
          (gx#core-bind-import!__% _in14281_ _ctx14283_ _force-weak?14285_))))
    (define gx#core-bind-import!__1
      (lambda (_in14287_ _ctx14288_)
        (let ((_force-weak?14290_ '#f))
          (gx#core-bind-import!__% _in14287_ _ctx14288_ _force-weak?14290_))))
    (define gx#core-bind-import!
      (lambda _g16090_
        (let ((_g16089_ (##length _g16090_)))
          (cond ((##fx= _g16089_ 1) (apply gx#core-bind-import!__0 _g16090_))
                ((##fx= _g16089_ 2) (apply gx#core-bind-import!__1 _g16090_))
                ((##fx= _g16089_ 3) (apply gx#core-bind-import!__% _g16090_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-import!
                  _g16090_))))))
    (define gx#core-bind-weak-import!__%
      (lambda (_in14212_ _ctx14213_)
        (gx#core-bind-import!__% _in14212_ _ctx14213_ '#t)))
    (define gx#core-bind-weak-import!__0
      (lambda (_in14218_)
        (let ((_ctx14220_ (gx#current-expander-context)))
          (gx#core-bind-weak-import!__% _in14218_ _ctx14220_))))
    (define gx#core-bind-weak-import!
      (lambda _g16092_
        (let ((_g16091_ (##length _g16092_)))
          (cond ((##fx= _g16091_ 1)
                 (apply gx#core-bind-weak-import!__0 _g16092_))
                ((##fx= _g16091_ 2)
                 (apply gx#core-bind-weak-import!__% _g16092_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-weak-import!
                  _g16092_))))))
    (define gx#core-resolve-module-export
      (lambda (_out14103_)
        (letrec ((_subst14105_
                  (lambda (_key14151_)
                    (let* ((_key1415214160_ _key14151_)
                           (_else1415414168_ (lambda () _key14151_))
                           (_K1415614199_
                            (lambda (_mark14171_ _id14172_)
                              (let* ((_mark1417314179_ _mark14171_)
                                     (_E1417514183_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _mark1417314179_)))
                                     (_K1417614191_
                                      (lambda (_subst14186_)
                                        (let ((_$e14188_
                                               (if _subst14186_
                                                   (table-ref
                                                    _subst14186_
                                                    _id14172_
                                                    '#f)
                                                   '#f)))
                                          (if _$e14188_
                                              _$e14188_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal key; missing substitution"
                                               _key14151_))))))
                                (if (##structure-instance-of?
                                     _mark1417314179_
                                     'gx#expander-mark::t)
                                    (let* ((_e1417714194_
                                            (##vector-ref _mark1417314179_ '1))
                                           (_subst14197_ _e1417714194_))
                                      (_K1417614191_ _subst14197_))
                                    (_E1417514183_))))))
                      (if (##pair? _key1415214160_)
                          (let ((_hd1415714202_ (##car _key1415214160_))
                                (_tl1415814204_ (##cdr _key1415214160_)))
                            (let* ((_id14207_ _hd1415714202_)
                                   (_mark14209_ _tl1415814204_))
                              (_K1415614199_ _mark14209_ _id14207_)))
                          (_else1415414168_))))))
          (let* ((_out1410614116_ _out14103_)
                 (_E1410814120_
                  (lambda () (error '"No clause matching" _out1410614116_)))
                 (_K1410914127_
                  (lambda (_phi14123_ _key14124_ _ctx14125_)
                    (gx#core-context-resolve
                     (gx#core-context-shift _ctx14125_ _phi14123_)
                     (_subst14105_ _key14124_)))))
            (if (##structure-direct-instance-of?
                 _out1410614116_
                 'gx#module-export::t)
                (let* ((_e1411014130_ (##vector-ref _out1410614116_ '1))
                       (_ctx14133_ _e1411014130_)
                       (_e1411114135_ (##vector-ref _out1410614116_ '2))
                       (_key14138_ _e1411114135_)
                       (_e1411214140_ (##vector-ref _out1410614116_ '3))
                       (_phi14143_ _e1411214140_)
                       (_e1411314145_ (##vector-ref _out1410614116_ '4))
                       (_e1411414148_ (##vector-ref _out1410614116_ '5)))
                  (_K1410914127_ _phi14143_ _key14138_ _ctx14133_))
                (_E1410814120_))))))
    (define gx#core-module-export->import__%
      (lambda (_out14028_ _rename14029_ _dphi14030_)
        (let* ((_out1403114041_ _out14028_)
               (_E1403314045_
                (lambda () (error '"No clause matching" _out1403114041_)))
               (_K1403414057_
                (lambda (_weak?14048_
                         _name14049_
                         _phi14050_
                         _key14051_
                         _ctx14052_)
                  (##structure
                   gx#module-import::t
                   _out14028_
                   (let ((_$e14054_ _rename14029_))
                     (if _$e14054_ _$e14054_ _name14049_))
                   (fx+ _phi14050_ _dphi14030_)
                   _weak?14048_))))
          (if (##structure-direct-instance-of?
               _out1403114041_
               'gx#module-export::t)
              (let* ((_e1403514060_ (##vector-ref _out1403114041_ '1))
                     (_ctx14063_ _e1403514060_)
                     (_e1403614065_ (##vector-ref _out1403114041_ '2))
                     (_key14068_ _e1403614065_)
                     (_e1403714070_ (##vector-ref _out1403114041_ '3))
                     (_phi14073_ _e1403714070_)
                     (_e1403814075_ (##vector-ref _out1403114041_ '4))
                     (_name14078_ _e1403814075_)
                     (_e1403914080_ (##vector-ref _out1403114041_ '5))
                     (_weak?14083_ _e1403914080_))
                (_K1403414057_
                 _weak?14083_
                 _name14078_
                 _phi14073_
                 _key14068_
                 _ctx14063_))
              (_E1403314045_)))))
    (define gx#core-module-export->import__0
      (lambda (_out14088_)
        (let* ((_rename14090_ '#f) (_dphi14092_ '0))
          (gx#core-module-export->import__%
           _out14088_
           _rename14090_
           _dphi14092_))))
    (define gx#core-module-export->import__1
      (lambda (_out14094_ _rename14095_)
        (let ((_dphi14097_ '0))
          (gx#core-module-export->import__%
           _out14094_
           _rename14095_
           _dphi14097_))))
    (define gx#core-module-export->import
      (lambda _g16094_
        (let ((_g16093_ (##length _g16094_)))
          (cond ((##fx= _g16093_ 1)
                 (apply gx#core-module-export->import__0 _g16094_))
                ((##fx= _g16093_ 2)
                 (apply gx#core-module-export->import__1 _g16094_))
                ((##fx= _g16093_ 3)
                 (apply gx#core-module-export->import__% _g16094_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-module-export->import
                  _g16094_))))))
    (define gx#core-expand-module%
      (lambda (_stx13956_)
        (letrec ((_make-context13958_
                  (lambda (_id14009_)
                    (let* ((_super14011_ (gx#current-expander-context))
                           (_bind-id14013_ (gx#stx-e _id14009_))
                           (_mod-id14015_
                            (if (##structure-instance-of?
                                 _super14011_
                                 'gx#module-context::t)
                                (make-symbol
                                 (##structure-ref
                                  _super14011_
                                  '1
                                  gx#expander-context::t
                                  '#f)
                                 '"$"
                                 _bind-id14013_)
                                _bind-id14013_))
                           (_ns14017_ (symbol->string _mod-id14015_))
                           (_path14024_
                            (if (##structure-instance-of?
                                 _super14011_
                                 'gx#module-context::t)
                                (let ((_path14019_
                                       (##unchecked-structure-ref
                                        _super14011_
                                        '7
                                        gx#module-context::t
                                        '#f)))
                                  (if (or (pair? _path14019_)
                                          (null? _path14019_))
                                      (cons _bind-id14013_ _path14019_)
                                      (if (not _path14019_)
                                          _bind-id14013_
                                          (cons _bind-id14013_
                                                (cons _path14019_ '())))))
                                _bind-id14013_)))
                      (let ((__obj16070
                             (make-object gx#module-context::t '11)))
                        (gx#module-context:::init!
                         __obj16070
                         _mod-id14015_
                         _super14011_
                         _ns14017_
                         _path14024_)
                        __obj16070)))))
          (let* ((_e1395913969_ _stx13956_)
                 (_E1396113973_
                  (lambda ()
                    (gx#raise-syntax-error '#f '"Bad syntax" _e1395913969_)))
                 (_E1396014005_
                  (lambda ()
                    (if (gx#stx-pair? _e1395913969_)
                        (let ((_e1396213977_ (gx#syntax-e _e1395913969_)))
                          (let ((_hd1396313980_ (##car _e1396213977_))
                                (_tl1396413982_ (##cdr _e1396213977_)))
                            (if (gx#stx-pair? _tl1396413982_)
                                (let ((_e1396513985_
                                       (gx#syntax-e _tl1396413982_)))
                                  (let ((_hd1396613988_ (##car _e1396513985_))
                                        (_tl1396713990_ (##cdr _e1396513985_)))
                                    (let* ((_id13993_ _hd1396613988_)
                                           (_body13995_ _tl1396713990_))
                                      (if (and (gx#identifier? _id13993_)
                                               (gx#stx-list? _body13995_))
                                          (let* ((_ctx13997_
                                                  (_make-context13958_
                                                   _id13993_))
                                                 (_body13999_
                                                  (gx#core-expand-module-begin
                                                   _body13995_
                                                   _ctx13997_))
                                                 (_body14001_
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _body13999_)
                                                   (gx#stx-source
                                                    _stx13956_))))
                                            (##unchecked-structure-set!
                                             _ctx13997_
                                             (make-promise
                                              (lambda ()
                                                (gx#eval-syntax* _body14001_)))
                                             '10
                                             gx#module-context::t
                                             '#f)
                                            (##unchecked-structure-set!
                                             _ctx13997_
                                             _body14001_
                                             '11
                                             gx#module-context::t
                                             '#f)
                                            (gx#core-bind-syntax!__0
                                             _id13993_
                                             _ctx13997_)
                                            (gx#core-quote-syntax__1
                                             (gx#core-list
                                              '%#module
                                              (gx#core-quote-syntax__0
                                               _id13993_)
                                              _body14001_)
                                             (gx#stx-source _stx13956_)))
                                          (_E1396113973_)))))
                                (_E1396113973_))))
                        (_E1396113973_)))))
            (_E1396014005_)))))
    (define gx#core-expand-module-begin
      (lambda (_body13922_ _ctx13923_)
        (call-with-parameters
         (lambda ()
           (gx#core-bind-feature!__1 'gerbil-module '#t)
           (let* ((_stx13926_
                   (gx#core-expand-head (cons '%%begin-module _body13922_)))
                  (_e1392713934_ _stx13926_)
                  (_E1392913938_
                   (lambda ()
                     (gx#raise-syntax-error
                      '#f
                      '"Illegal module body expansion"
                      _stx13926_)))
                  (_E1392813952_
                   (lambda ()
                     (if (gx#stx-pair? _e1392713934_)
                         (let ((_e1393013942_ (gx#syntax-e _e1392713934_)))
                           (let ((_hd1393113945_ (##car _e1393013942_))
                                 (_tl1393213947_ (##cdr _e1393013942_)))
                             (if (and (gx#identifier? _hd1393113945_)
                                      (gx#core-identifier=?
                                       _hd1393113945_
                                       '%#begin-module))
                                 (let ((_body13950_ _tl1393213947_))
                                   (if '#t
                                       (if (gx#sealed-syntax? _stx13926_)
                                           _body13950_
                                           (gx#core-expand-module-body
                                            _body13950_))
                                       (_E1392913938_)))
                                 (_E1392913938_))))
                         (_E1392913938_)))))
             (_E1392813952_)))
         gx#current-expander-context
         _ctx13923_
         gx#current-expander-phi
         '0)))
    (define gx#core-expand-module-body
      (lambda (_body13718_)
        (letrec ((_expand-special13720_
                  (lambda (_hd13849_ _K13850_ _rest13851_ _r13852_)
                    (let* ((_e1385313870_ _hd13849_)
                           (_E1386513874_
                            (lambda ()
                              (_K13850_
                               _rest13851_
                               (cons (gx#core-expand-top _hd13849_)
                                     _r13852_))))
                           (_E1385513886_
                            (lambda ()
                              (if (gx#stx-pair? _e1385313870_)
                                  (let ((_e1386613878_
                                         (gx#syntax-e _e1385313870_)))
                                    (let ((_hd1386713881_
                                           (##car _e1386613878_))
                                          (_tl1386813883_
                                           (##cdr _e1386613878_)))
                                      (if (and (gx#identifier? _hd1386713881_)
                                               (gx#core-identifier=?
                                                _hd1386713881_
                                                '%#export))
                                          (if '#t
                                              (_K13850_
                                               _rest13851_
                                               (cons _hd13849_ _r13852_))
                                              (_E1386513874_))
                                          (_E1386513874_))))
                                  (_E1386513874_))))
                           (_E1385413918_
                            (lambda ()
                              (if (gx#stx-pair? _e1385313870_)
                                  (let ((_e1385613890_
                                         (gx#syntax-e _e1385313870_)))
                                    (let ((_hd1385713893_
                                           (##car _e1385613890_))
                                          (_tl1385813895_
                                           (##cdr _e1385613890_)))
                                      (if (and (gx#identifier? _hd1385713893_)
                                               (gx#core-identifier=?
                                                _hd1385713893_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl1385813895_)
                                              (let ((_e1385913898_
                                                     (gx#syntax-e
                                                      _tl1385813895_)))
                                                (let ((_hd1386013901_
                                                       (##car _e1385913898_))
                                                      (_tl1386113903_
                                                       (##cdr _e1385913898_)))
                                                  (let ((_hd-bind13906_
                                                         _hd1386013901_))
                                                    (if (gx#stx-pair?
                                                         _tl1386113903_)
                                                        (let ((_e1386213908_
                                                               (gx#syntax-e
                                                                _tl1386113903_)))
                                                          (let ((_hd1386313911_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1386213908_))
                        (_tl1386413913_ (##cdr _e1386213908_)))
                    (let ((_expr13916_ _hd1386313911_))
                      (if (gx#stx-null? _tl1386413913_)
                          (if (gx#core-bind-values? _hd-bind13906_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind13906_)
                                (_K13850_
                                 _rest13851_
                                 (cons _hd13849_ _r13852_)))
                              (_E1385513886_))
                          (_E1385513886_)))))
                (_E1385513886_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E1385513886_))
                                          (_E1385513886_))))
                                  (_E1385513886_)))))
                      (_E1385413918_))))
                 (_expand-body13721_
                  (lambda (_rbody13723_)
                    (let _lp13725_ ((_rest13727_ _rbody13723_)
                                    (_body13728_ '()))
                      (let* ((_rest1372913737_ _rest13727_)
                             (_else1373113745_ (lambda () _body13728_))
                             (_K1373313837_
                              (lambda (_rest13748_ _hd13749_)
                                (let* ((_e1375013771_ _hd13749_)
                                       (_E1376613775_
                                        (lambda ()
                                          (_lp13725_
                                           _rest13748_
                                           (cons (gx#core-expand-expression
                                                  _hd13749_)
                                                 _body13728_))))
                                       (_E1376213789_
                                        (lambda ()
                                          (if (gx#stx-pair? _e1375013771_)
                                              (let ((_e1376713779_
                                                     (gx#syntax-e
                                                      _e1375013771_)))
                                                (let ((_hd1376813782_
                                                       (##car _e1376713779_))
                                                      (_tl1376913784_
                                                       (##cdr _e1376713779_)))
                                                  (let ((_form13787_
                                                         _hd1376813782_))
                                                    (if (gx#core-bound-identifier?__%
                                                         _form13787_
                                                         gx#special-form-binding?)
                                                        (_lp13725_
                                                         _rest13748_
                                                         (cons _hd13749_
                                                               _body13728_))
                                                        (_E1376613775_)))))
                                              (_E1376613775_))))
                                       (_E1375213801_
                                        (lambda ()
                                          (if (gx#stx-pair? _e1375013771_)
                                              (let ((_e1376313793_
                                                     (gx#syntax-e
                                                      _e1375013771_)))
                                                (let ((_hd1376413796_
                                                       (##car _e1376313793_))
                                                      (_tl1376513798_
                                                       (##cdr _e1376313793_)))
                                                  (if (and (gx#identifier?
                                                            _hd1376413796_)
                                                           (gx#core-identifier=?
                                                            _hd1376413796_
                                                            '%#export))
                                                      (if '#t
                                                          (_lp13725_
                                                           _rest13748_
                                                           (cons (gx#core-expand-export%__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd13749_)
                         _body13728_))
                  (_E1376213789_))
              (_E1376213789_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E1376213789_))))
                                       (_E1375113833_
                                        (lambda ()
                                          (if (gx#stx-pair? _e1375013771_)
                                              (let ((_e1375313805_
                                                     (gx#syntax-e
                                                      _e1375013771_)))
                                                (let ((_hd1375413808_
                                                       (##car _e1375313805_))
                                                      (_tl1375513810_
                                                       (##cdr _e1375313805_)))
                                                  (if (and (gx#identifier?
                                                            _hd1375413808_)
                                                           (gx#core-identifier=?
                                                            _hd1375413808_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _tl1375513810_)
                                                          (let ((_e1375613813_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl1375513810_)))
                    (let ((_hd1375713816_ (##car _e1375613813_))
                          (_tl1375813818_ (##cdr _e1375613813_)))
                      (let ((_hd-bind13821_ _hd1375713816_))
                        (if (gx#stx-pair? _tl1375813818_)
                            (let ((_e1375913823_ (gx#syntax-e _tl1375813818_)))
                              (let ((_hd1376013826_ (##car _e1375913823_))
                                    (_tl1376113828_ (##cdr _e1375913823_)))
                                (let ((_expr13831_ _hd1376013826_))
                                  (if (gx#stx-null? _tl1376113828_)
                                      (if '#t
                                          (_lp13725_
                                           _rest13748_
                                           (cons (gx#core-quote-syntax__1
                                                  (gx#core-list
                                                   '%#define-values
                                                   (gx#core-quote-bind-values
                                                    _hd-bind13821_)
                                                   (gx#core-expand-expression
                                                    _expr13831_))
                                                  (gx#stx-source _hd13749_))
                                                 _body13728_))
                                          (_E1375213801_))
                                      (_E1375213801_)))))
                            (_E1375213801_)))))
                  (_E1375213801_))
              (_E1375213801_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E1375213801_)))))
                                  (_E1375113833_)))))
                        (if (##pair? _rest1372913737_)
                            (let ((_hd1373413840_ (##car _rest1372913737_))
                                  (_tl1373513842_ (##cdr _rest1372913737_)))
                              (let* ((_hd13845_ _hd1373413840_)
                                     (_rest13847_ _tl1373513842_))
                                (_K1373313837_ _rest13847_ _hd13845_)))
                            (_else1373113745_)))))))
          (_expand-body13721_
           (gx#core-expand-block__%
            (cons '%#begin-module _body13718_)
            _expand-special13720_
            '#f
            values)))))
    (define gx#core-expand-import/export
      (lambda (_stx13561_
               _expanded?13562_
               _method13563_
               _current-phi13564_
               _expand113565_)
        (letrec ((_K13567_
                  (lambda (_rest13685_ _r13686_)
                    (let* ((_e1368713694_ _rest13685_)
                           (_E1368913698_ (lambda () _r13686_))
                           (_E1368813714_
                            (lambda ()
                              (if (gx#stx-pair? _e1368713694_)
                                  (let ((_e1369013702_
                                         (gx#syntax-e _e1368713694_)))
                                    (let ((_hd1369113705_
                                           (##car _e1369013702_))
                                          (_tl1369213707_
                                           (##cdr _e1369013702_)))
                                      (let* ((_hd13710_ _hd1369113705_)
                                             (_rest13712_ _tl1369213707_))
                                        (if '#t
                                            (_step13568_
                                             _hd13710_
                                             _rest13712_
                                             _r13686_)
                                            (_E1368913698_)))))
                                  (_E1368913698_)))))
                      (_E1368813714_))))
                 (_step13568_
                  (lambda (_hd13599_ _rest13600_ _r13601_)
                    (let* ((_e1360213620_ _hd13599_)
                           (_E1361513624_
                            (lambda ()
                              (if (_expanded?13562_ (gx#stx-e _hd13599_))
                                  (_K13567_
                                   _rest13600_
                                   (cons (gx#stx-e _hd13599_) _r13601_))
                                  (_expand113565_
                                   _hd13599_
                                   _K13567_
                                   _rest13600_
                                   _r13601_))))
                           (_E1361113640_
                            (lambda ()
                              (if (gx#stx-pair? _e1360213620_)
                                  (let ((_e1361613628_
                                         (gx#syntax-e _e1360213620_)))
                                    (let ((_hd1361713631_
                                           (##car _e1361613628_))
                                          (_tl1361813633_
                                           (##cdr _e1361613628_)))
                                      (let* ((_macro13636_ _hd1361713631_)
                                             (_body13638_ _tl1361813633_))
                                        (if (gx#core-bound-identifier?__%
                                             _macro13636_
                                             gx#syntax-binding?)
                                            (_K13567_
                                             (cons (gx#core-apply-expander__%
                                                    (gx#syntax-local-e__0
                                                     _macro13636_)
                                                    _hd13599_
                                                    _method13563_)
                                                   _rest13600_)
                                             _r13601_)
                                            (_E1361513624_)))))
                                  (_E1361513624_))))
                           (_E1360413654_
                            (lambda ()
                              (if (gx#stx-pair? _e1360213620_)
                                  (let ((_e1361213644_
                                         (gx#syntax-e _e1360213620_)))
                                    (let ((_hd1361313647_
                                           (##car _e1361213644_))
                                          (_tl1361413649_
                                           (##cdr _e1361213644_)))
                                      (if (eq? (gx#stx-e _hd1361313647_)
                                               'begin:)
                                          (let ((_body13652_ _tl1361413649_))
                                            (if '#t
                                                (_K13567_
                                                 (gx#stx-foldr
                                                  cons
                                                  _rest13600_
                                                  _body13652_)
                                                 _r13601_)
                                                (_E1361113640_)))
                                          (_E1361113640_))))
                                  (_E1361113640_))))
                           (_E1360313681_
                            (lambda ()
                              (if (gx#stx-pair? _e1360213620_)
                                  (let ((_e1360513658_
                                         (gx#syntax-e _e1360213620_)))
                                    (let ((_hd1360613661_
                                           (##car _e1360513658_))
                                          (_tl1360713663_
                                           (##cdr _e1360513658_)))
                                      (if (eq? (gx#stx-e _hd1360613661_) 'phi:)
                                          (if (gx#stx-pair? _tl1360713663_)
                                              (let ((_e1360813666_
                                                     (gx#syntax-e
                                                      _tl1360713663_)))
                                                (let ((_hd1360913669_
                                                       (##car _e1360813666_))
                                                      (_tl1361013671_
                                                       (##cdr _e1360813666_)))
                                                  (let* ((_dphi13674_
                                                          _hd1360913669_)
                                                         (_body13676_
                                                          _tl1361013671_))
                                                    (if (gx#stx-fixnum?
                                                         _dphi13674_)
                                                        (let ((_rbody13679_
                                                               (call-with-parameters
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_K13567_ _body13676_ '()))
                        _current-phi13564_
                        (fx+ (gx#stx-e _dphi13674_) (_current-phi13564_)))))
                  (_K13567_ _rest13600_ (foldr1 cons _r13601_ _rbody13679_)))
                (_E1360413654_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E1360413654_))
                                          (_E1360413654_))))
                                  (_E1360413654_)))))
                      (_E1360313681_)))))
          (let* ((_e1356913576_ _stx13561_)
                 (_E1357113580_
                  (lambda ()
                    (gx#raise-syntax-error '#f '"Bad syntax" _e1356913576_)))
                 (_E1357013595_
                  (lambda ()
                    (if (gx#stx-pair? _e1356913576_)
                        (let ((_e1357213584_ (gx#syntax-e _e1356913576_)))
                          (let ((_hd1357313587_ (##car _e1357213584_))
                                (_tl1357413589_ (##cdr _e1357213584_)))
                            (let ((_body13592_ _tl1357413589_))
                              (if '#t
                                  (if (_current-phi13564_)
                                      (_K13567_ _body13592_ '())
                                      (call-with-parameters
                                       (lambda () (_K13567_ _body13592_ '()))
                                       _current-phi13564_
                                       (gx#current-expander-phi)))
                                  (_E1357113580_)))))
                        (_E1357113580_)))))
            (_E1357013595_)))))
    (define gx#core-expand-import%__%
      (lambda (_stx13228_ _internal-expand?13229_)
        (letrec ((_expand113231_
                  (lambda (_hd13541_ _K13542_ _rest13543_ _r13544_)
                    (if (gx#core-bound-module? _hd13541_)
                        (_import113232_
                         (gx#syntax-local-e__0 _hd13541_)
                         _K13542_
                         _rest13543_
                         _r13544_)
                        (if (gx#core-library-module-path? _hd13541_)
                            (_import113232_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path _hd13541_))
                             _K13542_
                             _rest13543_
                             _r13544_)
                            (if (gx#core-library-relative-module-path?
                                 _hd13541_)
                                (_import113232_
                                 (gx#import-module__0
                                  (gx#core-resolve-library-relative-module-path
                                   _hd13541_))
                                 _K13542_
                                 _rest13543_
                                 _r13544_)
                                (let ((_e13546_ (gx#stx-e _hd13541_)))
                                  (if (pair? _e13546_)
                                      (let ((_$e13548_
                                             (gx#stx-e (car _e13546_))))
                                        (if (eq? 'spec: _$e13548_)
                                            (_import-spec13235_
                                             _hd13541_
                                             _K13542_
                                             _rest13543_
                                             _r13544_)
                                            (if (eq? 'in: _$e13548_)
                                                (_import-submodule13233_
                                                 _hd13541_
                                                 _K13542_
                                                 _rest13543_
                                                 _r13544_)
                                                (if (eq? 'runtime: _$e13548_)
                                                    (_import-runtime13234_
                                                     _hd13541_
                                                     _K13542_
                                                     _rest13543_
                                                     _r13544_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; illegal import"
                                                     _stx13228_
                                                     _hd13541_)))))
                                      (if (string? _e13546_)
                                          (_import113232_
                                           (gx#import-module__0
                                            (gx#core-resolve-module-path__%
                                             _hd13541_
                                             (gx#stx-source _stx13228_)))
                                           _K13542_
                                           _rest13543_
                                           _r13544_)
                                          (if (##structure-instance-of?
                                               _e13546_
                                               'gx#module-context::t)
                                              (_K13542_
                                               _rest13543_
                                               (cons _e13546_ _r13544_))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; illegal import"
                                               _stx13228_
                                               _hd13541_))))))))))
                 (_import113232_
                  (lambda (_ctx13530_ _K13531_ _rest13532_ _r13533_)
                    (let ((_dphi13535_
                           (fx- (gx#current-import-expander-phi)
                                (gx#current-expander-phi))))
                      (_K13531_
                       _rest13532_
                       (cons (##structure
                              gx#import-set::t
                              _ctx13530_
                              _dphi13535_
                              (map (lambda (_g1353613538_)
                                     (gx#core-module-export->import__%
                                      _g1353613538_
                                      '#f
                                      _dphi13535_))
                                   (##unchecked-structure-ref
                                    _ctx13530_
                                    '9
                                    gx#module-context::t
                                    '#f)))
                             _r13533_)))))
                 (_import-submodule13233_
                  (lambda (_hd13497_ _K13498_ _rest13499_ _r13500_)
                    (let* ((_e1350113508_ _hd13497_)
                           (_E1350313512_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _e1350113508_)))
                           (_E1350213526_
                            (lambda ()
                              (if (gx#stx-pair? _e1350113508_)
                                  (let ((_e1350413516_
                                         (gx#syntax-e _e1350113508_)))
                                    (let ((_hd1350513519_
                                           (##car _e1350413516_))
                                          (_tl1350613521_
                                           (##cdr _e1350413516_)))
                                      (let ((_spath13524_ _tl1350613521_))
                                        (if '#t
                                            (_import113232_
                                             (_import-spec-source13236_
                                              _spath13524_)
                                             _K13498_
                                             _rest13499_
                                             _r13500_)
                                            (_E1350313512_)))))
                                  (_E1350313512_)))))
                      (_E1350213526_))))
                 (_import-runtime13234_
                  (lambda (_hd13464_ _K13465_ _rest13466_ _r13467_)
                    (let* ((_e1346813475_ _hd13464_)
                           (_E1347013479_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _e1346813475_)))
                           (_E1346913493_
                            (lambda ()
                              (if (gx#stx-pair? _e1346813475_)
                                  (let ((_e1347113483_
                                         (gx#syntax-e _e1346813475_)))
                                    (let ((_hd1347213486_
                                           (##car _e1347113483_))
                                          (_tl1347313488_
                                           (##cdr _e1347113483_)))
                                      (let ((_spath13491_ _tl1347313488_))
                                        (if '#t
                                            (_K13465_
                                             _rest13466_
                                             (cons (_import-spec-source13236_
                                                    _spath13491_)
                                                   _r13467_))
                                            (_E1347013479_)))))
                                  (_E1347013479_)))))
                      (_E1346913493_))))
                 (_import-spec13235_
                  (lambda (_hd13303_ _K13304_ _rest13305_ _r13306_)
                    (let* ((_e1330713324_ _hd13303_)
                           (_E1331613328_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _e1330713324_)))
                           (_E1330913438_
                            (lambda ()
                              (if (gx#stx-pair? _e1330713324_)
                                  (let ((_e1331713332_
                                         (gx#syntax-e _e1330713324_)))
                                    (let ((_hd1331813335_
                                           (##car _e1331713332_))
                                          (_tl1331913337_
                                           (##cdr _e1331713332_)))
                                      (if (gx#stx-pair? _tl1331913337_)
                                          (let ((_e1332013340_
                                                 (gx#syntax-e _tl1331913337_)))
                                            (let ((_hd1332113343_
                                                   (##car _e1332013340_))
                                                  (_tl1332213345_
                                                   (##cdr _e1332013340_)))
                                              (let* ((_path13348_
                                                      _hd1332113343_)
                                                     (_specs13350_
                                                      _tl1332213345_))
                                                (if '#t
                                                    (let ((_src-ctx13352_
                                                           (_import-spec-source13236_
                                                            _path13348_))
                                                          (_exports13353_
                                                           (make-table))
                                                          (_specs13354_
                                                           (gx#syntax->list
                                                            _specs13350_)))
                                                      (for-each
                                                       (lambda (_out13356_)
                                                         (table-set!
                                                          _exports13353_
                                                          (cons (##unchecked-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _out13356_
                         '3
                         gx#module-export::t
                         '#f)
                        (##unchecked-structure-ref
                         _out13356_
                         '4
                         gx#module-export::t
                         '#f))
                  _out13356_))
               (##unchecked-structure-ref
                _src-ctx13352_
                '9
                gx#module-context::t
                '#f))
              (_K13304_
               _rest13305_
               (foldl1 (lambda (_spec13358_ _r13359_)
                         (let* ((_e1336013376_ _spec13358_)
                                (_E1336213380_
                                 (lambda ()
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _e1336013376_)))
                                (_E1336113434_
                                 (lambda ()
                                   (if (gx#stx-pair? _e1336013376_)
                                       (let ((_e1336313384_
                                              (gx#syntax-e _e1336013376_)))
                                         (let ((_hd1336413387_
                                                (##car _e1336313384_))
                                               (_tl1336513389_
                                                (##cdr _e1336313384_)))
                                           (let ((_phi13392_ _hd1336413387_))
                                             (if (gx#stx-pair? _tl1336513389_)
                                                 (let ((_e1336613394_
                                                        (gx#syntax-e
                                                         _tl1336513389_)))
                                                   (let ((_hd1336713397_
                                                          (##car _e1336613394_))
                                                         (_tl1336813399_
                                                          (##cdr _e1336613394_)))
                                                     (let ((_name13402_
                                                            _hd1336713397_))
                                                       (if (gx#stx-pair?
                                                            _tl1336813399_)
                                                           (let ((_e1336913404_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl1336813399_)))
                     (let ((_hd1337013407_ (##car _e1336913404_))
                           (_tl1337113409_ (##cdr _e1336913404_)))
                       (let ((_src-phi13412_ _hd1337013407_))
                         (if (gx#stx-pair? _tl1337113409_)
                             (let ((_e1337213414_
                                    (gx#syntax-e _tl1337113409_)))
                               (let ((_hd1337313417_ (##car _e1337213414_))
                                     (_tl1337413419_ (##cdr _e1337213414_)))
                                 (let ((_src-name13422_ _hd1337313417_))
                                   (if (gx#stx-null? _tl1337413419_)
                                       (if (and (gx#stx-fixnum? _src-phi13412_)
                                                (gx#identifier?
                                                 _src-name13422_)
                                                (gx#stx-fixnum? _phi13392_)
                                                (gx#identifier? _name13402_))
                                           (let ((_src-phi13424_
                                                  (gx#stx-e _src-phi13412_))
                                                 (_src-name13425_
                                                  (gx#core-identifier-key
                                                   _src-name13422_))
                                                 (_phi13426_
                                                  (gx#stx-e _phi13392_))
                                                 (_name13427_
                                                  (gx#core-identifier-key
                                                   _name13402_)))
                                             (let ((_$e13429_
                                                    (table-ref
                                                     _exports13353_
                                                     (cons _src-phi13424_
                                                           _src-name13425_)
                                                     '#f)))
                                               (if _$e13429_
                                                   ((lambda (_out13432_)
                                                      (cons (gx#core-module-export->import__%
                                                             _out13432_
                                                             _name13427_
                                                             (fx- _phi13426_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _src-phi13424_))
                    _r13359_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _$e13429_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; no matching export"
                                                    _stx13228_
                                                    _hd13303_))))
                                           (_E1336213380_))
                                       (_E1336213380_)))))
                             (_E1336213380_)))))
                   (_E1336213380_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_E1336213380_)))))
                                       (_E1336213380_)))))
                           (_E1336113434_)))
                       _r13306_
                       _specs13354_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1331613328_)))))
                                          (_E1331613328_))))
                                  (_E1331613328_))))
                           (_E1330813460_
                            (lambda ()
                              (if (gx#stx-pair? _e1330713324_)
                                  (let ((_e1331013442_
                                         (gx#syntax-e _e1330713324_)))
                                    (let ((_hd1331113445_
                                           (##car _e1331013442_))
                                          (_tl1331213447_
                                           (##cdr _e1331013442_)))
                                      (if (gx#stx-pair? _tl1331213447_)
                                          (let ((_e1331313450_
                                                 (gx#syntax-e _tl1331213447_)))
                                            (let ((_hd1331413453_
                                                   (##car _e1331313450_))
                                                  (_tl1331513455_
                                                   (##cdr _e1331313450_)))
                                              (let ((_path13458_
                                                     _hd1331413453_))
                                                (if (gx#stx-null?
                                                     _tl1331513455_)
                                                    (if '#t
                                                        (_K13304_
                                                         _rest13305_
                                                         (cons (_import-spec-source13236_
                                                                _path13458_)
                                                               _r13306_))
                                                        (_E1330913438_))
                                                    (_E1330913438_)))))
                                          (_E1330913438_))))
                                  (_E1330913438_)))))
                      (_E1330813460_))))
                 (_import-spec-source13236_
                  (lambda (_spath13301_)
                    (gx#core-import-nested-module _spath13301_ _stx13228_)))
                 (_import!13237_
                  (lambda (_rbody13250_)
                    (letrec* ((_current-ctx13252_
                               (gx#current-expander-context))
                              (_deps13253_ (make-table 'test: eq?))
                              (_bind!13254_
                               (lambda (_hd13299_)
                                 (gx#core-bind-import!__1
                                  _hd13299_
                                  _current-ctx13252_))))
                      (let _lp13256_ ((_rest13258_ _rbody13250_)
                                      (_body13259_ '()))
                        (let* ((_rest1326013268_ _rest13258_)
                               (_else1326213278_
                                (lambda ()
                                  (if (##structure-instance-of?
                                       _current-ctx13252_
                                       'gx#module-context::t)
                                      (##unchecked-structure-set!
                                       _current-ctx13252_
                                       (foldl1 cons
                                               (##unchecked-structure-ref
                                                _current-ctx13252_
                                                '8
                                                gx#module-context::t
                                                '#f)
                                               _body13259_)
                                       '8
                                       gx#module-context::t
                                       '#f)
                                      '#!void)
                                  (table-for-each
                                   (lambda (_ctx13276_ _g16095_)
                                     (gx#eval-module _ctx13276_))
                                   _deps13253_)
                                  _body13259_))
                               (_K1326413287_
                                (lambda (_rest13281_ _hd13282_)
                                  (if (##structure-direct-instance-of?
                                       _hd13282_
                                       'gx#module-import::t)
                                      (begin
                                        (_bind!13254_ _hd13282_)
                                        (if (and (fxpositive?
                                                  (##unchecked-structure-ref
                                                   _hd13282_
                                                   '3
                                                   gx#module-import::t
                                                   '#f))
                                                 (fxzero? (##unchecked-structure-ref
                                                           (##unchecked-structure-ref
                                                            _hd13282_
                                                            '1
                                                            gx#module-import::t
                                                            '#f)
                                                           '3
                                                           gx#module-export::t
                                                           '#f)))
                                            (table-set!
                                             _deps13253_
                                             (##unchecked-structure-ref
                                              (##unchecked-structure-ref
                                               _hd13282_
                                               '1
                                               gx#module-import::t
                                               '#f)
                                              '1
                                              gx#module-export::t
                                              '#f)
                                             '#t)
                                            '#!void))
                                      (if (##structure-direct-instance-of?
                                           _hd13282_
                                           'gx#import-set::t)
                                          (begin
                                            (for-each
                                             _bind!13254_
                                             (##unchecked-structure-ref
                                              _hd13282_
                                              '3
                                              gx#import-set::t
                                              '#f))
                                            (if (fxpositive?
                                                 (##unchecked-structure-ref
                                                  _hd13282_
                                                  '2
                                                  gx#import-set::t
                                                  '#f))
                                                (table-set!
                                                 _deps13253_
                                                 (##unchecked-structure-ref
                                                  _hd13282_
                                                  '1
                                                  gx#import-set::t
                                                  '#f)
                                                 '#t)
                                                '#!void))
                                          (let ((_$e13284_
                                                 (##structure-instance-of?
                                                  _hd13282_
                                                  'gx#module-context::t)))
                                            (if _$e13284_
                                                _$e13284_
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Unexpected import"
                                                 _stx13228_
                                                 _hd13282_)))))
                                  (_lp13256_
                                   _rest13281_
                                   (cons _hd13282_ _body13259_)))))
                          (if (##pair? _rest1326013268_)
                              (let ((_hd1326513290_ (##car _rest1326013268_))
                                    (_tl1326613292_ (##cdr _rest1326013268_)))
                                (let* ((_hd13295_ _hd1326513290_)
                                       (_rest13297_ _tl1326613292_))
                                  (_K1326413287_ _rest13297_ _hd13295_)))
                              (_else1326213278_)))))))
                 (_expanded-import?13238_
                  (lambda (_e13242_)
                    (let ((_$e13244_
                           (##structure-direct-instance-of?
                            _e13242_
                            'gx#import-set::t)))
                      (if _$e13244_
                          _$e13244_
                          (let ((_$e13247_
                                 (##structure-direct-instance-of?
                                  _e13242_
                                  'gx#module-import::t)))
                            (if _$e13247_
                                _$e13247_
                                (##structure-instance-of?
                                 _e13242_
                                 'gx#module-context::t))))))))
          (let ((_rbody13240_
                 (gx#core-expand-import/export
                  _stx13228_
                  _expanded-import?13238_
                  'apply-import-expander
                  gx#current-import-expander-phi
                  _expand113231_)))
            (if _internal-expand?13229_
                (reverse _rbody13240_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#import (_import!13237_ _rbody13240_))
                 (gx#stx-source _stx13228_)))))))
    (define gx#core-expand-import%__0
      (lambda (_stx13554_)
        (let ((_internal-expand?13556_ '#f))
          (gx#core-expand-import%__% _stx13554_ _internal-expand?13556_))))
    (define gx#core-expand-import%
      (lambda _g16097_
        (let ((_g16096_ (##length _g16097_)))
          (cond ((##fx= _g16096_ 1) (apply gx#core-expand-import%__0 _g16097_))
                ((##fx= _g16096_ 2) (apply gx#core-expand-import%__% _g16097_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-import%
                  _g16097_))))))
    (define gx#core-import-nested-module
      (lambda (_spath13155_ _where13156_)
        (let* ((_e1315713164_ _spath13155_)
               (_E1315913168_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1315713164_)))
               (_E1315813223_
                (lambda ()
                  (if (gx#stx-pair? _e1315713164_)
                      (let ((_e1316013172_ (gx#syntax-e _e1315713164_)))
                        (let ((_hd1316113175_ (##car _e1316013172_))
                              (_tl1316213177_ (##cdr _e1316013172_)))
                          (let* ((_origin13180_ _hd1316113175_)
                                 (_sub13182_ _tl1316213177_))
                            (if '#t
                                (let ((_origin-ctx13184_
                                       (if (gx#stx-false? _origin13180_)
                                           (gx#current-expander-context)
                                           (gx#import-module__0
                                            _origin13180_))))
                                  (let _lp13186_ ((_rest13188_ _sub13182_)
                                                  (_ctx13189_
                                                   _origin-ctx13184_))
                                    (let* ((_e1319013197_ _rest13188_)
                                           (_E1319213201_
                                            (lambda () _ctx13189_))
                                           (_E1319113219_
                                            (lambda ()
                                              (if (gx#stx-pair? _e1319013197_)
                                                  (let ((_e1319313205_
                                                         (gx#syntax-e
                                                          _e1319013197_)))
                                                    (let ((_hd1319413208_
                                                           (##car _e1319313205_))
                                                          (_tl1319513210_
                                                           (##cdr _e1319313205_)))
                                                      (let* ((_id13213_
                                                              _hd1319413208_)
                                                             (_rest13215_
                                                              _tl1319513210_))
                                                        (if '#t
                                                            (let ((_bind13217_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#resolve-identifier__% _id13213_ '0 _ctx13189_)))
                      (if (and (##structure-direct-instance-of?
                                _bind13217_
                                'gx#syntax-binding::t)
                               (##structure-instance-of?
                                (##unchecked-structure-ref
                                 _bind13217_
                                 '4
                                 gx#syntax-binding::t
                                 '#f)
                                'gx#module-context::t))
                          '#!void
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; not bound as module"
                           _where13156_
                           _spath13155_
                           _id13213_))
                      (_lp13186_
                       _rest13215_
                       (##unchecked-structure-ref
                        _bind13217_
                        '4
                        gx#syntax-binding::t
                        '#f)))
                    (_E1319213201_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1319213201_)))))
                                      (_E1319113219_))))
                                (_E1315913168_)))))
                      (_E1315913168_)))))
          (_E1315813223_))))
    (define gx#core-expand-import-source
      (lambda (_hd13153_)
        (gx#core-expand-import%__%
         (cons 'import-internal% (cons _hd13153_ '()))
         '#t)))
    (define gx#core-expand-export%__%
      (lambda (_stx12661_ _internal-expand?12662_)
        (letrec* ((_make-export__1603516036_
                   (lambda (_bind13101_ _phi13102_ _ctx13103_ _name13104_)
                     (let* ((_key13106_
                             (##unchecked-structure-ref
                              _bind13101_
                              '2
                              gx#binding::t
                              '#f))
                            (_export-key13108_
                             (if _name13104_
                                 (gx#core-identifier-key _name13104_)
                                 _key13106_)))
                       (##structure
                        gx#module-export::t
                        _ctx13103_
                        _key13106_
                        _phi13102_
                        _export-key13108_
                        (let ((_$e13111_
                               (##structure-instance-of?
                                _bind13101_
                                'gx#extern-binding::t)))
                          (if _$e13111_
                              _$e13111_
                              (##structure-direct-instance-of?
                               _bind13101_
                               'gx#import-binding::t)))))))
                  (_make-export__0__1603716040_
                   (lambda (_bind13117_)
                     (let* ((_phi13119_ (gx#current-export-expander-phi))
                            (_ctx13121_ (gx#current-expander-context))
                            (_name13123_ '#f))
                       (_make-export__1603516036_
                        _bind13117_
                        _phi13119_
                        _ctx13121_
                        _name13123_))))
                  (_make-export__1__1603816041_
                   (lambda (_bind13125_ _phi13126_)
                     (let* ((_ctx13128_ (gx#current-expander-context))
                            (_name13130_ '#f))
                       (_make-export__1603516036_
                        _bind13125_
                        _phi13126_
                        _ctx13128_
                        _name13130_))))
                  (_make-export__2__1603916042_
                   (lambda (_bind13132_ _phi13133_ _ctx13134_)
                     (let ((_name13136_ '#f))
                       (_make-export__1603516036_
                        _bind13132_
                        _phi13133_
                        _ctx13134_
                        _name13136_))))
                  (_make-export12664_
                   (lambda _g16099_
                     (let ((_g16098_ (##length _g16099_)))
                       (cond ((##fx= _g16098_ 1)
                              (apply _make-export__0__1603716040_ _g16099_))
                             ((##fx= _g16098_ 2)
                              (apply _make-export__1__1603816041_ _g16099_))
                             ((##fx= _g16098_ 3)
                              (apply _make-export__2__1603916042_ _g16099_))
                             ((##fx= _g16098_ 4)
                              (apply _make-export__1603516036_ _g16099_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g16099_))))))
                  (_expand112665_
                   (lambda (_hd12814_ _K12815_ _rest12816_ _r12817_)
                     (let* ((_e1281812850_ _hd12814_)
                            (_E1284512854_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal export"
                                _stx12661_
                                _hd12814_)))
                            (_E1283512933_
                             (lambda ()
                               (if (gx#stx-pair? _e1281812850_)
                                   (let ((_e1284612858_
                                          (gx#syntax-e _e1281812850_)))
                                     (let ((_hd1284712861_
                                            (##car _e1284612858_))
                                           (_tl1284812863_
                                            (##cdr _e1284612858_)))
                                       (if (eq? (gx#stx-e _hd1284712861_)
                                                'import:)
                                           (let ((_in12866_ _tl1284812863_))
                                             (if (gx#stx-list? _in12866_)
                                                 (let _lp12868_ ((_in-rest12870_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _in12866_)
                         (_r12871_ _r12817_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_e1287212879_
                                                           _in-rest12870_)
                                                          (_E1287412883_
                                                           (lambda ()
                                                             (_K12815_
                                                              _rest12816_
                                                              _r12871_)))
                                                          (_E1287312929_
                                                           (lambda ()
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _e1287212879_)
                         (let ((_e1287512887_ (gx#syntax-e _e1287212879_)))
                           (let ((_hd1287612890_ (##car _e1287512887_))
                                 (_tl1287712892_ (##cdr _e1287512887_)))
                             (let* ((_hd12895_ _hd1287612890_)
                                    (_in-rest12897_ _tl1287712892_))
                               (if '#t
                                   (let ((_src12927_
                                          (if (gx#core-bound-module? _hd12895_)
                                              (gx#syntax-local-e__0 _hd12895_)
                                              (if (gx#core-library-module-path?
                                                   _hd12895_)
                                                  (gx#import-module__0
                                                   (gx#core-resolve-library-module-path
                                                    _hd12895_))
                                                  (if (gx#core-library-relative-module-path?
                                                       _hd12895_)
                                                      (gx#import-module__0
                                                       (gx#core-resolve-library-relative-module-path
                                                        _hd12895_))
                                                      (if (gx#stx-string?
                                                           _hd12895_)
                                                          (gx#import-module__0
                                                           (gx#core-resolve-module-path__%
                                                            _hd12895_
                                                            (gx#stx-source
                                                             _stx12661_)))
                                                          (let* ((_e1289812905_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd12895_)
                         (_E1290012909_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; illegal re-export"
                             _stx12661_
                             _hd12895_)))
                         (_E1289912923_
                          (lambda ()
                            (if (gx#stx-pair? _e1289812905_)
                                (let ((_e1290112913_
                                       (gx#syntax-e _e1289812905_)))
                                  (let ((_hd1290212916_ (##car _e1290112913_))
                                        (_tl1290312918_ (##cdr _e1290112913_)))
                                    (if (eq? (gx#stx-e _hd1290212916_) 'in:)
                                        (let ((_spath12921_ _tl1290312918_))
                                          (if '#t
                                              (gx#core-import-nested-module
                                               _spath12921_
                                               _stx12661_)
                                              (_E1290012909_)))
                                        (_E1290012909_))))
                                (_E1290012909_)))))
                    (_E1289912923_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_lp12868_
                                      _in-rest12897_
                                      (_export-imports12666_
                                       _src12927_
                                       _r12871_)))
                                   (_E1287412883_)))))
                         (_E1287412883_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E1287312929_)))
                                                 (_E1284512854_)))
                                           (_E1284512854_))))
                                   (_E1284512854_))))
                            (_E1282212972_
                             (lambda ()
                               (if (gx#stx-pair? _e1281812850_)
                                   (let ((_e1283612937_
                                          (gx#syntax-e _e1281812850_)))
                                     (let ((_hd1283712940_
                                            (##car _e1283612937_))
                                           (_tl1283812942_
                                            (##cdr _e1283612937_)))
                                       (if (eq? (gx#stx-e _hd1283712940_)
                                                'rename:)
                                           (if (gx#stx-pair? _tl1283812942_)
                                               (let ((_e1283912945_
                                                      (gx#syntax-e
                                                       _tl1283812942_)))
                                                 (let ((_hd1284012948_
                                                        (##car _e1283912945_))
                                                       (_tl1284112950_
                                                        (##cdr _e1283912945_)))
                                                   (let ((_id12953_
                                                          _hd1284012948_))
                                                     (if (gx#stx-pair?
                                                          _tl1284112950_)
                                                         (let ((_e1284212955_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1284112950_)))
                   (let ((_hd1284312958_ (##car _e1284212955_))
                         (_tl1284412960_ (##cdr _e1284212955_)))
                     (let ((_name12963_ _hd1284312958_))
                       (if (gx#stx-null? _tl1284412960_)
                           (if '#t
                               (let* ((_phi12965_
                                       (gx#current-export-expander-phi))
                                      (_$e12967_
                                       (gx#core-resolve-identifier__1
                                        _id12953_
                                        _phi12965_)))
                                 (if _$e12967_
                                     ((lambda (_bind12970_)
                                        (_K12815_
                                         _rest12816_
                                         (cons (_make-export__1603516036_
                                                _bind12970_
                                                _phi12965_
                                                (gx#current-expander-context)
                                                _name12963_)
                                               _r12817_)))
                                      _$e12967_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Reference to unbound identifier"
                                      _stx12661_
                                      _hd12814_
                                      _id12953_)))
                               (_E1283512933_))
                           (_E1283512933_)))))
                 (_E1283512933_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E1283512933_))
                                           (_E1283512933_))))
                                   (_E1283512933_))))
                            (_E1282113021_
                             (lambda ()
                               (if (gx#stx-pair? _e1281812850_)
                                   (let ((_e1282312976_
                                          (gx#syntax-e _e1281812850_)))
                                     (let ((_hd1282412979_
                                            (##car _e1282312976_))
                                           (_tl1282512981_
                                            (##cdr _e1282312976_)))
                                       (if (eq? (gx#stx-e _hd1282412979_)
                                                'spec:)
                                           (if (gx#stx-pair? _tl1282512981_)
                                               (let ((_e1282612984_
                                                      (gx#syntax-e
                                                       _tl1282512981_)))
                                                 (let ((_hd1282712987_
                                                        (##car _e1282612984_))
                                                       (_tl1282812989_
                                                        (##cdr _e1282612984_)))
                                                   (let ((_phi12992_
                                                          _hd1282712987_))
                                                     (if (gx#stx-pair?
                                                          _tl1282812989_)
                                                         (let ((_e1282912994_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1282812989_)))
                   (let ((_hd1283012997_ (##car _e1282912994_))
                         (_tl1283112999_ (##cdr _e1282912994_)))
                     (let ((_id13002_ _hd1283012997_))
                       (if (gx#stx-pair? _tl1283112999_)
                           (let ((_e1283213004_ (gx#syntax-e _tl1283112999_)))
                             (let ((_hd1283313007_ (##car _e1283213004_))
                                   (_tl1283413009_ (##cdr _e1283213004_)))
                               (let ((_name13012_ _hd1283313007_))
                                 (if (gx#stx-null? _tl1283413009_)
                                     (if (and (gx#stx-fixnum? _phi12992_)
                                              (gx#identifier? _id13002_)
                                              (gx#identifier? _name13012_))
                                         (let* ((_phi13014_
                                                 (gx#stx-e _phi12992_))
                                                (_$e13016_
                                                 (gx#core-resolve-identifier__1
                                                  _id13002_
                                                  _phi13014_)))
                                           (if _$e13016_
                                               ((lambda (_bind13019_)
                                                  (_K12815_
                                                   _rest12816_
                                                   (cons (_make-export__1603516036_
                                                          _bind13019_
                                                          _phi13014_
                                                          (gx#current-expander-context)
                                                          _name13012_)
                                                         _r12817_)))
                                                _$e13016_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Reference to unbound identifier"
                                                _stx12661_
                                                _hd12814_
                                                _id13002_)))
                                         (_E1282212972_))
                                     (_E1282212972_)))))
                           (_E1282212972_)))))
                 (_E1282212972_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E1282212972_))
                                           (_E1282212972_))))
                                   (_E1282212972_))))
                            (_E1282013032_
                             (lambda ()
                               (let ((_id13025_ _e1281812850_))
                                 (if (gx#identifier? _id13025_)
                                     (let ((_$e13027_
                                            (gx#core-resolve-identifier__1
                                             _id13025_
                                             (gx#current-export-expander-phi))))
                                       (if _$e13027_
                                           ((lambda (_bind13030_)
                                              (_K12815_
                                               _rest12816_
                                               (cons (_make-export__0__1603716040_
                                                      _bind13030_)
                                                     _r12817_)))
                                            _$e13027_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Reference to unbound identifier"
                                            _stx12661_
                                            _hd12814_)))
                                     (_E1282113021_)))))
                            (_E1281913096_
                             (lambda ()
                               (if (eq? (gx#stx-e _e1281812850_) '#t)
                                   (if '#t
                                       (let* ((_current-ctx13036_
                                               (gx#current-expander-context))
                                              (_current-phi13038_
                                               (gx#current-export-expander-phi))
                                              (_phi-ctx13040_
                                               (gx#core-context-shift
                                                _current-ctx13036_
                                                _current-phi13038_))
                                              (_phi-bind13042_
                                               (table->list
                                                (##unchecked-structure-ref
                                                 _phi-ctx13040_
                                                 '2
                                                 gx#expander-context::t
                                                 '#f))))
                                         (let _lp13045_ ((_bind-rest13047_
                                                          _phi-bind13042_)
                                                         (_set13048_ '()))
                                           (let* ((_bind-rest1304913059_
                                                   _bind-rest13047_)
                                                  (_else1305113067_
                                                   (lambda ()
                                                     (_K12815_
                                                      _rest12816_
                                                      (cons (##structure
                                                             gx#export-set::t
                                                             '#f
                                                             _current-phi13038_
                                                             _set13048_)
                                                            _r12817_))))
                                                  (_K1305313077_
                                                   (lambda (_bind-rest13070_
                                                            _bind13071_
                                                            _key13072_)
                                                     (if (or (##structure-direct-instance-of?
                                                              _bind13071_
                                                              'gx#import-binding::t)
                                                             (gx#private-feature-binding?
                                                              _bind13071_))
                                                         (_lp13045_
                                                          _bind-rest13070_
                                                          _set13048_)
                                                         (_lp13045_
                                                          _bind-rest13070_
                                                          (cons (_make-export__2__1603916042_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _bind13071_
                         _current-phi13038_
                         _current-ctx13036_)
                        _set13048_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (##pair? _bind-rest1304913059_)
                                                 (let ((_hd1305413080_
                                                        (##car _bind-rest1304913059_))
                                                       (_tl1305513082_
                                                        (##cdr _bind-rest1304913059_)))
                                                   (if (##pair? _hd1305413080_)
                                                       (let ((_hd1305613085_
                                                              (##car _hd1305413080_))
                                                             (_tl1305713087_
                                                              (##cdr _hd1305413080_)))
                                                         (let* ((_key13090_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1305613085_)
                        (_bind13092_ _tl1305713087_)
                        (_bind-rest13094_ _tl1305513082_))
                   (_K1305313077_ _bind-rest13094_ _bind13092_ _key13090_)))
               (_else1305113067_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_else1305113067_)))))
                                       (_E1282013032_))
                                   (_E1282013032_)))))
                       (_E1281913096_))))
                  (_export-imports12666_
                   (lambda (_src12690_ _r12691_)
                     (letrec* ((_current-ctx12693_
                                (gx#current-expander-context))
                               (_current-phi12694_
                                (gx#current-export-expander-phi))
                               (_import->export12695_
                                (lambda (_in12776_)
                                  (let* ((_in1277712785_ _in12776_)
                                         (_E1277912789_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _in1277712785_)))
                                         (_K1278012796_
                                          (lambda (_phi12792_
                                                   _key12793_
                                                   _out12794_)
                                            (##structure
                                             gx#module-export::t
                                             _current-ctx12693_
                                             _key12793_
                                             _phi12792_
                                             _key12793_
                                             '#t))))
                                    (if (##structure-direct-instance-of?
                                         _in1277712785_
                                         'gx#module-import::t)
                                        (let* ((_e1278112799_
                                                (##vector-ref
                                                 _in1277712785_
                                                 '1))
                                               (_out12802_ _e1278112799_)
                                               (_e1278212804_
                                                (##vector-ref
                                                 _in1277712785_
                                                 '2))
                                               (_key12807_ _e1278212804_)
                                               (_e1278312809_
                                                (##vector-ref
                                                 _in1277712785_
                                                 '3))
                                               (_phi12812_ _e1278312809_))
                                          (_K1278012796_
                                           _phi12812_
                                           _key12807_
                                           _out12802_))
                                        (_E1277912789_)))))
                               (_fold-e12696_
                                (lambda (_in12698_ _r12699_)
                                  (let* ((_in1270012714_ _in12698_)
                                         (_else1270312722_
                                          (lambda () _r12699_)))
                                    (let ((_K1270912758_
                                           (lambda (_phi12754_
                                                    _key12755_
                                                    _out12756_)
                                             (if (and (fx= _phi12754_
                                                           _current-phi12694_)
                                                      (eq? _src12690_
                                                           (##unchecked-structure-ref
                                                            _out12756_
                                                            '1
                                                            gx#module-export::t
                                                            '#f)))
                                                 (cons (_import->export12695_
                                                        _in12698_)
                                                       _r12699_)
                                                 _r12699_)))
                                          (_K1270512733_
                                           (lambda (_imports12726_
                                                    _phi12727_
                                                    _ctx12728_)
                                             (if (and (fx= _phi12727_
                                                           _current-phi12694_)
                                                      (eq? _src12690_
                                                           _ctx12728_))
                                                 (foldl1 (lambda (_in12730_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _r12731_)
                   (cons (_import->export12695_ _in12730_) _r12731_))
                 _r12699_
                 _imports12726_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _r12699_))))
                                      (let ((_try-match1270212751_
                                             (lambda ()
                                               (if (##structure-direct-instance-of?
                                                    _in1270012714_
                                                    'gx#import-set::t)
                                                   (let* ((_e1270612736_
                                                           (##vector-ref
                                                            _in1270012714_
                                                            '1))
                                                          (_e1270712741_
                                                           (##vector-ref
                                                            _in1270012714_
                                                            '2))
                                                          (_e1270812746_
                                                           (##vector-ref
                                                            _in1270012714_
                                                            '3)))
                                                     (let ((_ctx12739_
                                                            _e1270612736_)
                                                           (_phi12744_
                                                            _e1270712741_)
                                                           (_imports12749_
                                                            _e1270812746_))
                                                       (_K1270512733_
                                                        _imports12749_
                                                        _phi12744_
                                                        _ctx12739_)))
                                                   (_else1270312722_)))))
                                        (if (##structure-direct-instance-of?
                                             _in1270012714_
                                             'gx#module-import::t)
                                            (let* ((_e1271012761_
                                                    (##vector-ref
                                                     _in1270012714_
                                                     '1))
                                                   (_e1271112766_
                                                    (##vector-ref
                                                     _in1270012714_
                                                     '2))
                                                   (_e1271212771_
                                                    (##vector-ref
                                                     _in1270012714_
                                                     '3)))
                                              (let ((_out12764_ _e1271012761_)
                                                    (_key12769_ _e1271112766_)
                                                    (_phi12774_ _e1271212771_))
                                                (_K1270912758_
                                                 _phi12774_
                                                 _key12769_
                                                 _out12764_)))
                                            (_try-match1270212751_))))))))
                       (cons (##structure
                              gx#export-set::t
                              _src12690_
                              _current-phi12694_
                              (foldl1 _fold-e12696_
                                      '()
                                      (##unchecked-structure-ref
                                       _current-ctx12693_
                                       '8
                                       gx#module-context::t
                                       '#f)))
                             _r12691_))))
                  (_export!12667_
                   (lambda (_rbody12680_)
                     (letrec* ((_current-ctx12682_
                                (gx#current-expander-context))
                               (_fold-e12683_
                                (lambda (_out12687_ _r12688_)
                                  (if (##structure-direct-instance-of?
                                       _out12687_
                                       'gx#module-export::t)
                                      (cons _out12687_ _r12688_)
                                      (if (##structure-direct-instance-of?
                                           _out12687_
                                           'gx#export-set::t)
                                          (foldl1 cons
                                                  _r12688_
                                                  (##unchecked-structure-ref
                                                   _out12687_
                                                   '3
                                                   gx#export-set::t
                                                   '#f))
                                          _r12688_)))))
                       (let ((_body12685_ (reverse _rbody12680_)))
                         (##unchecked-structure-set!
                          _current-ctx12682_
                          (foldl1 _fold-e12683_
                                  (##unchecked-structure-ref
                                   _current-ctx12682_
                                   '9
                                   gx#module-context::t
                                   '#f)
                                  _body12685_)
                          '9
                          gx#module-context::t
                          '#f)
                         _body12685_))))
                  (_expanded-export?12668_
                   (lambda (_e12675_)
                     (let ((_$e12677_
                            (##structure-direct-instance-of?
                             _e12675_
                             'gx#module-export::t)))
                       (if _$e12677_
                           _$e12677_
                           (##structure-direct-instance-of?
                            _e12675_
                            'gx#export-set::t))))))
          (if (or (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#module-context::t)
                  _internal-expand?12662_)
              (let ((_rbody12673_
                     (gx#core-expand-import/export
                      _stx12661_
                      _expanded-export?12668_
                      'apply-export-expander
                      gx#current-export-expander-phi
                      _expand112665_)))
                (if _internal-expand?12662_
                    (reverse _rbody12673_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons '%#export (_export!12667_ _rbody12673_))
                     (gx#stx-source _stx12661_))))
              (if (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#top-context::t)
                  (gx#core-quote-syntax__1
                   (gx#core-cons '%#begin '())
                   (gx#stx-source _stx12661_))
                  (gx#raise-syntax-error
                   '#f
                   '"Illegal context"
                   _stx12661_))))))
    (define gx#core-expand-export%__0
      (lambda (_stx13146_)
        (let ((_internal-expand?13148_ '#f))
          (gx#core-expand-export%__% _stx13146_ _internal-expand?13148_))))
    (define gx#core-expand-export%
      (lambda _g16101_
        (let ((_g16100_ (##length _g16101_)))
          (cond ((##fx= _g16100_ 1) (apply gx#core-expand-export%__0 _g16101_))
                ((##fx= _g16100_ 2) (apply gx#core-expand-export%__% _g16101_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-export%
                  _g16101_))))))
    (define gx#core-expand-export-source
      (lambda (_hd12658_)
        (gx#core-expand-export%__%
         (cons 'export-macro% (cons _hd12658_ '()))
         '#t)))
    (define gx#core-expand-provide%
      (lambda (_stx12628_)
        (let* ((_e1262912636_ _stx12628_)
               (_E1263112640_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1262912636_)))
               (_E1263012654_
                (lambda ()
                  (if (gx#stx-pair? _e1262912636_)
                      (let ((_e1263212644_ (gx#syntax-e _e1262912636_)))
                        (let ((_hd1263312647_ (##car _e1263212644_))
                              (_tl1263412649_ (##cdr _e1263212644_)))
                          (let ((_body12652_ _tl1263412649_))
                            (if (gx#identifier-list? _body12652_)
                                (begin
                                  (gx#stx-for-each1
                                   gx#core-bind-feature!
                                   _body12652_)
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    '%#provide
                                    (gx#stx-map1
                                     gx#core-quote-syntax
                                     _body12652_))
                                   (gx#stx-source _stx12628_)))
                                (_E1263112640_)))))
                      (_E1263112640_)))))
          (_E1263012654_))))
    (define gx#core-bind-feature!__%
      (lambda (_id12594_ _private?12595_ _phi12596_ _ctx12597_)
        (gx#core-bind-syntax!__%
         _id12594_
         ((if _private?12595_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _id12594_))
         _private?12595_
         _phi12596_
         _ctx12597_)))
    (define gx#core-bind-feature!__0
      (lambda (_id12602_)
        (let* ((_private?12604_ '#f)
               (_phi12606_ (gx#current-expander-phi))
               (_ctx12608_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id12602_
           _private?12604_
           _phi12606_
           _ctx12608_))))
    (define gx#core-bind-feature!__1
      (lambda (_id12610_ _private?12611_)
        (let* ((_phi12613_ (gx#current-expander-phi))
               (_ctx12615_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id12610_
           _private?12611_
           _phi12613_
           _ctx12615_))))
    (define gx#core-bind-feature!__2
      (lambda (_id12617_ _private?12618_ _phi12619_)
        (let ((_ctx12621_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _id12617_
           _private?12618_
           _phi12619_
           _ctx12621_))))
    (define gx#core-bind-feature!
      (lambda _g16103_
        (let ((_g16102_ (##length _g16103_)))
          (cond ((##fx= _g16102_ 1) (apply gx#core-bind-feature!__0 _g16103_))
                ((##fx= _g16102_ 2) (apply gx#core-bind-feature!__1 _g16103_))
                ((##fx= _g16102_ 3) (apply gx#core-bind-feature!__2 _g16103_))
                ((##fx= _g16102_ 4) (apply gx#core-bind-feature!__% _g16103_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-feature!
                  _g16103_))))))))
